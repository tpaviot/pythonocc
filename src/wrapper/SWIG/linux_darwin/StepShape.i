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
%module StepShape
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%pythoncode {
import GarbageCollector
};

%include StepShape_dependencies.i


%include StepShape_headers.i


enum StepShape_BooleanOperator {
	StepShape_boDifference,
	StepShape_boIntersection,
	StepShape_boUnion,
	};

enum StepShape_AngleRelator {
	StepShape_Equal,
	StepShape_Large,
	StepShape_Small,
	};



%nodefaultctor Handle_StepShape_TopologicalRepresentationItem;
class Handle_StepShape_TopologicalRepresentationItem : public Handle_StepRepr_RepresentationItem {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_TopologicalRepresentationItem();
		%feature("autodoc", "1");
		Handle_StepShape_TopologicalRepresentationItem(const Handle_StepShape_TopologicalRepresentationItem &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_TopologicalRepresentationItem(const StepShape_TopologicalRepresentationItem *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_TopologicalRepresentationItem & operator=(const Handle_StepShape_TopologicalRepresentationItem &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_TopologicalRepresentationItem & operator=(const StepShape_TopologicalRepresentationItem *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_TopologicalRepresentationItem const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_TopologicalRepresentationItem {
	StepShape_TopologicalRepresentationItem* GetObject() {
	return (StepShape_TopologicalRepresentationItem*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_TopologicalRepresentationItem::~Handle_StepShape_TopologicalRepresentationItem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_TopologicalRepresentationItem {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_ConnectedEdgeSet;
class Handle_StepShape_ConnectedEdgeSet : public Handle_StepShape_TopologicalRepresentationItem {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_ConnectedEdgeSet();
		%feature("autodoc", "1");
		Handle_StepShape_ConnectedEdgeSet(const Handle_StepShape_ConnectedEdgeSet &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_ConnectedEdgeSet(const StepShape_ConnectedEdgeSet *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_ConnectedEdgeSet & operator=(const Handle_StepShape_ConnectedEdgeSet &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_ConnectedEdgeSet & operator=(const StepShape_ConnectedEdgeSet *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_ConnectedEdgeSet const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_ConnectedEdgeSet {
	StepShape_ConnectedEdgeSet* GetObject() {
	return (StepShape_ConnectedEdgeSet*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_ConnectedEdgeSet::~Handle_StepShape_ConnectedEdgeSet %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_ConnectedEdgeSet {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_HArray1OfConnectedEdgeSet;
class Handle_StepShape_HArray1OfConnectedEdgeSet : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfConnectedEdgeSet();
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfConnectedEdgeSet(const Handle_StepShape_HArray1OfConnectedEdgeSet &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfConnectedEdgeSet(const StepShape_HArray1OfConnectedEdgeSet *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfConnectedEdgeSet & operator=(const Handle_StepShape_HArray1OfConnectedEdgeSet &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfConnectedEdgeSet & operator=(const StepShape_HArray1OfConnectedEdgeSet *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_HArray1OfConnectedEdgeSet const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_HArray1OfConnectedEdgeSet {
	StepShape_HArray1OfConnectedEdgeSet* GetObject() {
	return (StepShape_HArray1OfConnectedEdgeSet*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_HArray1OfConnectedEdgeSet::~Handle_StepShape_HArray1OfConnectedEdgeSet %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_HArray1OfConnectedEdgeSet {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_SolidModel;
class Handle_StepShape_SolidModel : public Handle_StepGeom_GeometricRepresentationItem {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_SolidModel();
		%feature("autodoc", "1");
		Handle_StepShape_SolidModel(const Handle_StepShape_SolidModel &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_SolidModel(const StepShape_SolidModel *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_SolidModel & operator=(const Handle_StepShape_SolidModel &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_SolidModel & operator=(const StepShape_SolidModel *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_SolidModel const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_SolidModel {
	StepShape_SolidModel* GetObject() {
	return (StepShape_SolidModel*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_SolidModel::~Handle_StepShape_SolidModel %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_SolidModel {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_SweptFaceSolid;
class Handle_StepShape_SweptFaceSolid : public Handle_StepShape_SolidModel {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_SweptFaceSolid();
		%feature("autodoc", "1");
		Handle_StepShape_SweptFaceSolid(const Handle_StepShape_SweptFaceSolid &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_SweptFaceSolid(const StepShape_SweptFaceSolid *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_SweptFaceSolid & operator=(const Handle_StepShape_SweptFaceSolid &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_SweptFaceSolid & operator=(const StepShape_SweptFaceSolid *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_SweptFaceSolid const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_SweptFaceSolid {
	StepShape_SweptFaceSolid* GetObject() {
	return (StepShape_SweptFaceSolid*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_SweptFaceSolid::~Handle_StepShape_SweptFaceSolid %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_SweptFaceSolid {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_RevolvedFaceSolid;
class Handle_StepShape_RevolvedFaceSolid : public Handle_StepShape_SweptFaceSolid {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_RevolvedFaceSolid();
		%feature("autodoc", "1");
		Handle_StepShape_RevolvedFaceSolid(const Handle_StepShape_RevolvedFaceSolid &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_RevolvedFaceSolid(const StepShape_RevolvedFaceSolid *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_RevolvedFaceSolid & operator=(const Handle_StepShape_RevolvedFaceSolid &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_RevolvedFaceSolid & operator=(const StepShape_RevolvedFaceSolid *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_RevolvedFaceSolid const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_RevolvedFaceSolid {
	StepShape_RevolvedFaceSolid* GetObject() {
	return (StepShape_RevolvedFaceSolid*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_RevolvedFaceSolid::~Handle_StepShape_RevolvedFaceSolid %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_RevolvedFaceSolid {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_ShapeRepresentation;
class Handle_StepShape_ShapeRepresentation : public Handle_StepRepr_Representation {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_ShapeRepresentation();
		%feature("autodoc", "1");
		Handle_StepShape_ShapeRepresentation(const Handle_StepShape_ShapeRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_ShapeRepresentation(const StepShape_ShapeRepresentation *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_ShapeRepresentation & operator=(const Handle_StepShape_ShapeRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_ShapeRepresentation & operator=(const StepShape_ShapeRepresentation *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_ShapeRepresentation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_ShapeRepresentation {
	StepShape_ShapeRepresentation* GetObject() {
	return (StepShape_ShapeRepresentation*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_ShapeRepresentation::~Handle_StepShape_ShapeRepresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_ShapeRepresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_FacetedBrepShapeRepresentation;
class Handle_StepShape_FacetedBrepShapeRepresentation : public Handle_StepShape_ShapeRepresentation {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_FacetedBrepShapeRepresentation();
		%feature("autodoc", "1");
		Handle_StepShape_FacetedBrepShapeRepresentation(const Handle_StepShape_FacetedBrepShapeRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_FacetedBrepShapeRepresentation(const StepShape_FacetedBrepShapeRepresentation *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_FacetedBrepShapeRepresentation & operator=(const Handle_StepShape_FacetedBrepShapeRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_FacetedBrepShapeRepresentation & operator=(const StepShape_FacetedBrepShapeRepresentation *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_FacetedBrepShapeRepresentation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_FacetedBrepShapeRepresentation {
	StepShape_FacetedBrepShapeRepresentation* GetObject() {
	return (StepShape_FacetedBrepShapeRepresentation*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_FacetedBrepShapeRepresentation::~Handle_StepShape_FacetedBrepShapeRepresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_FacetedBrepShapeRepresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_NonManifoldSurfaceShapeRepresentation;
class Handle_StepShape_NonManifoldSurfaceShapeRepresentation : public Handle_StepShape_ShapeRepresentation {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_NonManifoldSurfaceShapeRepresentation();
		%feature("autodoc", "1");
		Handle_StepShape_NonManifoldSurfaceShapeRepresentation(const Handle_StepShape_NonManifoldSurfaceShapeRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_NonManifoldSurfaceShapeRepresentation(const StepShape_NonManifoldSurfaceShapeRepresentation *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_NonManifoldSurfaceShapeRepresentation & operator=(const Handle_StepShape_NonManifoldSurfaceShapeRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_NonManifoldSurfaceShapeRepresentation & operator=(const StepShape_NonManifoldSurfaceShapeRepresentation *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_NonManifoldSurfaceShapeRepresentation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_NonManifoldSurfaceShapeRepresentation {
	StepShape_NonManifoldSurfaceShapeRepresentation* GetObject() {
	return (StepShape_NonManifoldSurfaceShapeRepresentation*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_NonManifoldSurfaceShapeRepresentation::~Handle_StepShape_NonManifoldSurfaceShapeRepresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_NonManifoldSurfaceShapeRepresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_RightCircularCone;
class Handle_StepShape_RightCircularCone : public Handle_StepGeom_GeometricRepresentationItem {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_RightCircularCone();
		%feature("autodoc", "1");
		Handle_StepShape_RightCircularCone(const Handle_StepShape_RightCircularCone &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_RightCircularCone(const StepShape_RightCircularCone *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_RightCircularCone & operator=(const Handle_StepShape_RightCircularCone &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_RightCircularCone & operator=(const StepShape_RightCircularCone *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_RightCircularCone const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_RightCircularCone {
	StepShape_RightCircularCone* GetObject() {
	return (StepShape_RightCircularCone*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_RightCircularCone::~Handle_StepShape_RightCircularCone %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_RightCircularCone {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_Edge;
class Handle_StepShape_Edge : public Handle_StepShape_TopologicalRepresentationItem {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_Edge();
		%feature("autodoc", "1");
		Handle_StepShape_Edge(const Handle_StepShape_Edge &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_Edge(const StepShape_Edge *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_Edge & operator=(const Handle_StepShape_Edge &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_Edge & operator=(const StepShape_Edge *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_Edge const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_Edge {
	StepShape_Edge* GetObject() {
	return (StepShape_Edge*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_Edge::~Handle_StepShape_Edge %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_Edge {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_OrientedEdge;
class Handle_StepShape_OrientedEdge : public Handle_StepShape_Edge {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_OrientedEdge();
		%feature("autodoc", "1");
		Handle_StepShape_OrientedEdge(const Handle_StepShape_OrientedEdge &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_OrientedEdge(const StepShape_OrientedEdge *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_OrientedEdge & operator=(const Handle_StepShape_OrientedEdge &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_OrientedEdge & operator=(const StepShape_OrientedEdge *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_OrientedEdge const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_OrientedEdge {
	StepShape_OrientedEdge* GetObject() {
	return (StepShape_OrientedEdge*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_OrientedEdge::~Handle_StepShape_OrientedEdge %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_OrientedEdge {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_SeamEdge;
class Handle_StepShape_SeamEdge : public Handle_StepShape_OrientedEdge {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_SeamEdge();
		%feature("autodoc", "1");
		Handle_StepShape_SeamEdge(const Handle_StepShape_SeamEdge &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_SeamEdge(const StepShape_SeamEdge *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_SeamEdge & operator=(const Handle_StepShape_SeamEdge &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_SeamEdge & operator=(const StepShape_SeamEdge *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_SeamEdge const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_SeamEdge {
	StepShape_SeamEdge* GetObject() {
	return (StepShape_SeamEdge*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_SeamEdge::~Handle_StepShape_SeamEdge %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_SeamEdge {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_ManifoldSurfaceShapeRepresentation;
class Handle_StepShape_ManifoldSurfaceShapeRepresentation : public Handle_StepShape_ShapeRepresentation {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_ManifoldSurfaceShapeRepresentation();
		%feature("autodoc", "1");
		Handle_StepShape_ManifoldSurfaceShapeRepresentation(const Handle_StepShape_ManifoldSurfaceShapeRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_ManifoldSurfaceShapeRepresentation(const StepShape_ManifoldSurfaceShapeRepresentation *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_ManifoldSurfaceShapeRepresentation & operator=(const Handle_StepShape_ManifoldSurfaceShapeRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_ManifoldSurfaceShapeRepresentation & operator=(const StepShape_ManifoldSurfaceShapeRepresentation *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_ManifoldSurfaceShapeRepresentation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_ManifoldSurfaceShapeRepresentation {
	StepShape_ManifoldSurfaceShapeRepresentation* GetObject() {
	return (StepShape_ManifoldSurfaceShapeRepresentation*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_ManifoldSurfaceShapeRepresentation::~Handle_StepShape_ManifoldSurfaceShapeRepresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_ManifoldSurfaceShapeRepresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_HArray1OfFaceBound;
class Handle_StepShape_HArray1OfFaceBound : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfFaceBound();
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfFaceBound(const Handle_StepShape_HArray1OfFaceBound &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfFaceBound(const StepShape_HArray1OfFaceBound *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfFaceBound & operator=(const Handle_StepShape_HArray1OfFaceBound &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfFaceBound & operator=(const StepShape_HArray1OfFaceBound *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_HArray1OfFaceBound const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_HArray1OfFaceBound {
	StepShape_HArray1OfFaceBound* GetObject() {
	return (StepShape_HArray1OfFaceBound*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_HArray1OfFaceBound::~Handle_StepShape_HArray1OfFaceBound %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_HArray1OfFaceBound {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_ConnectedFaceSet;
class Handle_StepShape_ConnectedFaceSet : public Handle_StepShape_TopologicalRepresentationItem {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_ConnectedFaceSet();
		%feature("autodoc", "1");
		Handle_StepShape_ConnectedFaceSet(const Handle_StepShape_ConnectedFaceSet &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_ConnectedFaceSet(const StepShape_ConnectedFaceSet *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_ConnectedFaceSet & operator=(const Handle_StepShape_ConnectedFaceSet &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_ConnectedFaceSet & operator=(const StepShape_ConnectedFaceSet *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_ConnectedFaceSet const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_ConnectedFaceSet {
	StepShape_ConnectedFaceSet* GetObject() {
	return (StepShape_ConnectedFaceSet*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_ConnectedFaceSet::~Handle_StepShape_ConnectedFaceSet %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_ConnectedFaceSet {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_OpenShell;
class Handle_StepShape_OpenShell : public Handle_StepShape_ConnectedFaceSet {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_OpenShell();
		%feature("autodoc", "1");
		Handle_StepShape_OpenShell(const Handle_StepShape_OpenShell &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_OpenShell(const StepShape_OpenShell *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_OpenShell & operator=(const Handle_StepShape_OpenShell &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_OpenShell & operator=(const StepShape_OpenShell *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_OpenShell const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_OpenShell {
	StepShape_OpenShell* GetObject() {
	return (StepShape_OpenShell*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_OpenShell::~Handle_StepShape_OpenShell %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_OpenShell {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_OrientedOpenShell;
class Handle_StepShape_OrientedOpenShell : public Handle_StepShape_OpenShell {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_OrientedOpenShell();
		%feature("autodoc", "1");
		Handle_StepShape_OrientedOpenShell(const Handle_StepShape_OrientedOpenShell &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_OrientedOpenShell(const StepShape_OrientedOpenShell *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_OrientedOpenShell & operator=(const Handle_StepShape_OrientedOpenShell &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_OrientedOpenShell & operator=(const StepShape_OrientedOpenShell *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_OrientedOpenShell const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_OrientedOpenShell {
	StepShape_OrientedOpenShell* GetObject() {
	return (StepShape_OrientedOpenShell*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_OrientedOpenShell::~Handle_StepShape_OrientedOpenShell %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_OrientedOpenShell {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_ExtrudedFaceSolid;
class Handle_StepShape_ExtrudedFaceSolid : public Handle_StepShape_SweptFaceSolid {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_ExtrudedFaceSolid();
		%feature("autodoc", "1");
		Handle_StepShape_ExtrudedFaceSolid(const Handle_StepShape_ExtrudedFaceSolid &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_ExtrudedFaceSolid(const StepShape_ExtrudedFaceSolid *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_ExtrudedFaceSolid & operator=(const Handle_StepShape_ExtrudedFaceSolid &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_ExtrudedFaceSolid & operator=(const StepShape_ExtrudedFaceSolid *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_ExtrudedFaceSolid const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_ExtrudedFaceSolid {
	StepShape_ExtrudedFaceSolid* GetObject() {
	return (StepShape_ExtrudedFaceSolid*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_ExtrudedFaceSolid::~Handle_StepShape_ExtrudedFaceSolid %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_ExtrudedFaceSolid {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_MeasureQualification;
class Handle_StepShape_MeasureQualification : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_MeasureQualification();
		%feature("autodoc", "1");
		Handle_StepShape_MeasureQualification(const Handle_StepShape_MeasureQualification &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_MeasureQualification(const StepShape_MeasureQualification *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_MeasureQualification & operator=(const Handle_StepShape_MeasureQualification &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_MeasureQualification & operator=(const StepShape_MeasureQualification *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_MeasureQualification const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_MeasureQualification {
	StepShape_MeasureQualification* GetObject() {
	return (StepShape_MeasureQualification*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_MeasureQualification::~Handle_StepShape_MeasureQualification %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_MeasureQualification {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_Loop;
class Handle_StepShape_Loop : public Handle_StepShape_TopologicalRepresentationItem {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_Loop();
		%feature("autodoc", "1");
		Handle_StepShape_Loop(const Handle_StepShape_Loop &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_Loop(const StepShape_Loop *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_Loop & operator=(const Handle_StepShape_Loop &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_Loop & operator=(const StepShape_Loop *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_Loop const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_Loop {
	StepShape_Loop* GetObject() {
	return (StepShape_Loop*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_Loop::~Handle_StepShape_Loop %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_Loop {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_PointRepresentation;
class Handle_StepShape_PointRepresentation : public Handle_StepShape_ShapeRepresentation {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_PointRepresentation();
		%feature("autodoc", "1");
		Handle_StepShape_PointRepresentation(const Handle_StepShape_PointRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_PointRepresentation(const StepShape_PointRepresentation *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_PointRepresentation & operator=(const Handle_StepShape_PointRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_PointRepresentation & operator=(const StepShape_PointRepresentation *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_PointRepresentation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_PointRepresentation {
	StepShape_PointRepresentation* GetObject() {
	return (StepShape_PointRepresentation*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_PointRepresentation::~Handle_StepShape_PointRepresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_PointRepresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_Face;
class Handle_StepShape_Face : public Handle_StepShape_TopologicalRepresentationItem {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_Face();
		%feature("autodoc", "1");
		Handle_StepShape_Face(const Handle_StepShape_Face &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_Face(const StepShape_Face *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_Face & operator=(const Handle_StepShape_Face &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_Face & operator=(const StepShape_Face *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_Face const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_Face {
	StepShape_Face* GetObject() {
	return (StepShape_Face*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_Face::~Handle_StepShape_Face %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_Face {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_Subface;
class Handle_StepShape_Subface : public Handle_StepShape_Face {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_Subface();
		%feature("autodoc", "1");
		Handle_StepShape_Subface(const Handle_StepShape_Subface &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_Subface(const StepShape_Subface *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_Subface & operator=(const Handle_StepShape_Subface &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_Subface & operator=(const StepShape_Subface *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_Subface const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_Subface {
	StepShape_Subface* GetObject() {
	return (StepShape_Subface*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_Subface::~Handle_StepShape_Subface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_Subface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_BooleanResult;
class Handle_StepShape_BooleanResult : public Handle_StepGeom_GeometricRepresentationItem {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_BooleanResult();
		%feature("autodoc", "1");
		Handle_StepShape_BooleanResult(const Handle_StepShape_BooleanResult &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_BooleanResult(const StepShape_BooleanResult *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_BooleanResult & operator=(const Handle_StepShape_BooleanResult &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_BooleanResult & operator=(const StepShape_BooleanResult *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_BooleanResult const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_BooleanResult {
	StepShape_BooleanResult* GetObject() {
	return (StepShape_BooleanResult*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_BooleanResult::~Handle_StepShape_BooleanResult %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_BooleanResult {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem;
class Handle_StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem : public Handle_StepRepr_RepresentationItem {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem();
		%feature("autodoc", "1");
		Handle_StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem(const Handle_StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem(const StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem & operator=(const Handle_StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem & operator=(const StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem {
	StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem* GetObject() {
	return (StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem::~Handle_StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_PolyLoop;
class Handle_StepShape_PolyLoop : public Handle_StepShape_Loop {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_PolyLoop();
		%feature("autodoc", "1");
		Handle_StepShape_PolyLoop(const Handle_StepShape_PolyLoop &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_PolyLoop(const StepShape_PolyLoop *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_PolyLoop & operator=(const Handle_StepShape_PolyLoop &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_PolyLoop & operator=(const StepShape_PolyLoop *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_PolyLoop const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_PolyLoop {
	StepShape_PolyLoop* GetObject() {
	return (StepShape_PolyLoop*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_PolyLoop::~Handle_StepShape_PolyLoop %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_PolyLoop {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_HArray1OfValueQualifier;
class Handle_StepShape_HArray1OfValueQualifier : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfValueQualifier();
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfValueQualifier(const Handle_StepShape_HArray1OfValueQualifier &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfValueQualifier(const StepShape_HArray1OfValueQualifier *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfValueQualifier & operator=(const Handle_StepShape_HArray1OfValueQualifier &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfValueQualifier & operator=(const StepShape_HArray1OfValueQualifier *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_HArray1OfValueQualifier const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_HArray1OfValueQualifier {
	StepShape_HArray1OfValueQualifier* GetObject() {
	return (StepShape_HArray1OfValueQualifier*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_HArray1OfValueQualifier::~Handle_StepShape_HArray1OfValueQualifier %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_HArray1OfValueQualifier {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_HalfSpaceSolid;
class Handle_StepShape_HalfSpaceSolid : public Handle_StepGeom_GeometricRepresentationItem {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_HalfSpaceSolid();
		%feature("autodoc", "1");
		Handle_StepShape_HalfSpaceSolid(const Handle_StepShape_HalfSpaceSolid &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_HalfSpaceSolid(const StepShape_HalfSpaceSolid *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_HalfSpaceSolid & operator=(const Handle_StepShape_HalfSpaceSolid &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_HalfSpaceSolid & operator=(const StepShape_HalfSpaceSolid *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_HalfSpaceSolid const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_HalfSpaceSolid {
	StepShape_HalfSpaceSolid* GetObject() {
	return (StepShape_HalfSpaceSolid*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_HalfSpaceSolid::~Handle_StepShape_HalfSpaceSolid %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_HalfSpaceSolid {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_BoxedHalfSpace;
class Handle_StepShape_BoxedHalfSpace : public Handle_StepShape_HalfSpaceSolid {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_BoxedHalfSpace();
		%feature("autodoc", "1");
		Handle_StepShape_BoxedHalfSpace(const Handle_StepShape_BoxedHalfSpace &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_BoxedHalfSpace(const StepShape_BoxedHalfSpace *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_BoxedHalfSpace & operator=(const Handle_StepShape_BoxedHalfSpace &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_BoxedHalfSpace & operator=(const StepShape_BoxedHalfSpace *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_BoxedHalfSpace const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_BoxedHalfSpace {
	StepShape_BoxedHalfSpace* GetObject() {
	return (StepShape_BoxedHalfSpace*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_BoxedHalfSpace::~Handle_StepShape_BoxedHalfSpace %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_BoxedHalfSpace {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_Path;
class Handle_StepShape_Path : public Handle_StepShape_TopologicalRepresentationItem {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_Path();
		%feature("autodoc", "1");
		Handle_StepShape_Path(const Handle_StepShape_Path &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_Path(const StepShape_Path *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_Path & operator=(const Handle_StepShape_Path &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_Path & operator=(const StepShape_Path *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_Path const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_Path {
	StepShape_Path* GetObject() {
	return (StepShape_Path*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_Path::~Handle_StepShape_Path %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_Path {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_OrientedPath;
class Handle_StepShape_OrientedPath : public Handle_StepShape_Path {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_OrientedPath();
		%feature("autodoc", "1");
		Handle_StepShape_OrientedPath(const Handle_StepShape_OrientedPath &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_OrientedPath(const StepShape_OrientedPath *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_OrientedPath & operator=(const Handle_StepShape_OrientedPath &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_OrientedPath & operator=(const StepShape_OrientedPath *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_OrientedPath const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_OrientedPath {
	StepShape_OrientedPath* GetObject() {
	return (StepShape_OrientedPath*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_OrientedPath::~Handle_StepShape_OrientedPath %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_OrientedPath {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_FaceBound;
class Handle_StepShape_FaceBound : public Handle_StepShape_TopologicalRepresentationItem {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_FaceBound();
		%feature("autodoc", "1");
		Handle_StepShape_FaceBound(const Handle_StepShape_FaceBound &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_FaceBound(const StepShape_FaceBound *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_FaceBound & operator=(const Handle_StepShape_FaceBound &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_FaceBound & operator=(const StepShape_FaceBound *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_FaceBound const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_FaceBound {
	StepShape_FaceBound* GetObject() {
	return (StepShape_FaceBound*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_FaceBound::~Handle_StepShape_FaceBound %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_FaceBound {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_FaceOuterBound;
class Handle_StepShape_FaceOuterBound : public Handle_StepShape_FaceBound {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_FaceOuterBound();
		%feature("autodoc", "1");
		Handle_StepShape_FaceOuterBound(const Handle_StepShape_FaceOuterBound &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_FaceOuterBound(const StepShape_FaceOuterBound *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_FaceOuterBound & operator=(const Handle_StepShape_FaceOuterBound &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_FaceOuterBound & operator=(const StepShape_FaceOuterBound *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_FaceOuterBound const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_FaceOuterBound {
	StepShape_FaceOuterBound* GetObject() {
	return (StepShape_FaceOuterBound*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_FaceOuterBound::~Handle_StepShape_FaceOuterBound %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_FaceOuterBound {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_HArray1OfOrientedClosedShell;
class Handle_StepShape_HArray1OfOrientedClosedShell : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfOrientedClosedShell();
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfOrientedClosedShell(const Handle_StepShape_HArray1OfOrientedClosedShell &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfOrientedClosedShell(const StepShape_HArray1OfOrientedClosedShell *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfOrientedClosedShell & operator=(const Handle_StepShape_HArray1OfOrientedClosedShell &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfOrientedClosedShell & operator=(const StepShape_HArray1OfOrientedClosedShell *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_HArray1OfOrientedClosedShell const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_HArray1OfOrientedClosedShell {
	StepShape_HArray1OfOrientedClosedShell* GetObject() {
	return (StepShape_HArray1OfOrientedClosedShell*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_HArray1OfOrientedClosedShell::~Handle_StepShape_HArray1OfOrientedClosedShell %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_HArray1OfOrientedClosedShell {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_SolidReplica;
class Handle_StepShape_SolidReplica : public Handle_StepShape_SolidModel {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_SolidReplica();
		%feature("autodoc", "1");
		Handle_StepShape_SolidReplica(const Handle_StepShape_SolidReplica &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_SolidReplica(const StepShape_SolidReplica *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_SolidReplica & operator=(const Handle_StepShape_SolidReplica &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_SolidReplica & operator=(const StepShape_SolidReplica *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_SolidReplica const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_SolidReplica {
	StepShape_SolidReplica* GetObject() {
	return (StepShape_SolidReplica*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_SolidReplica::~Handle_StepShape_SolidReplica %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_SolidReplica {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_HArray1OfGeometricSetSelect;
class Handle_StepShape_HArray1OfGeometricSetSelect : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfGeometricSetSelect();
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfGeometricSetSelect(const Handle_StepShape_HArray1OfGeometricSetSelect &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfGeometricSetSelect(const StepShape_HArray1OfGeometricSetSelect *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfGeometricSetSelect & operator=(const Handle_StepShape_HArray1OfGeometricSetSelect &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfGeometricSetSelect & operator=(const StepShape_HArray1OfGeometricSetSelect *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_HArray1OfGeometricSetSelect const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_HArray1OfGeometricSetSelect {
	StepShape_HArray1OfGeometricSetSelect* GetObject() {
	return (StepShape_HArray1OfGeometricSetSelect*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_HArray1OfGeometricSetSelect::~Handle_StepShape_HArray1OfGeometricSetSelect %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_HArray1OfGeometricSetSelect {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_HArray1OfFace;
class Handle_StepShape_HArray1OfFace : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfFace();
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfFace(const Handle_StepShape_HArray1OfFace &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfFace(const StepShape_HArray1OfFace *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfFace & operator=(const Handle_StepShape_HArray1OfFace &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfFace & operator=(const StepShape_HArray1OfFace *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_HArray1OfFace const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_HArray1OfFace {
	StepShape_HArray1OfFace* GetObject() {
	return (StepShape_HArray1OfFace*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_HArray1OfFace::~Handle_StepShape_HArray1OfFace %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_HArray1OfFace {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_ClosedShell;
class Handle_StepShape_ClosedShell : public Handle_StepShape_ConnectedFaceSet {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_ClosedShell();
		%feature("autodoc", "1");
		Handle_StepShape_ClosedShell(const Handle_StepShape_ClosedShell &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_ClosedShell(const StepShape_ClosedShell *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_ClosedShell & operator=(const Handle_StepShape_ClosedShell &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_ClosedShell & operator=(const StepShape_ClosedShell *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_ClosedShell const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_ClosedShell {
	StepShape_ClosedShell* GetObject() {
	return (StepShape_ClosedShell*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_ClosedShell::~Handle_StepShape_ClosedShell %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_ClosedShell {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_DimensionalCharacteristicRepresentation;
class Handle_StepShape_DimensionalCharacteristicRepresentation : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_DimensionalCharacteristicRepresentation();
		%feature("autodoc", "1");
		Handle_StepShape_DimensionalCharacteristicRepresentation(const Handle_StepShape_DimensionalCharacteristicRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_DimensionalCharacteristicRepresentation(const StepShape_DimensionalCharacteristicRepresentation *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_DimensionalCharacteristicRepresentation & operator=(const Handle_StepShape_DimensionalCharacteristicRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_DimensionalCharacteristicRepresentation & operator=(const StepShape_DimensionalCharacteristicRepresentation *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_DimensionalCharacteristicRepresentation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_DimensionalCharacteristicRepresentation {
	StepShape_DimensionalCharacteristicRepresentation* GetObject() {
	return (StepShape_DimensionalCharacteristicRepresentation*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_DimensionalCharacteristicRepresentation::~Handle_StepShape_DimensionalCharacteristicRepresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_DimensionalCharacteristicRepresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_FaceSurface;
class Handle_StepShape_FaceSurface : public Handle_StepShape_Face {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_FaceSurface();
		%feature("autodoc", "1");
		Handle_StepShape_FaceSurface(const Handle_StepShape_FaceSurface &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_FaceSurface(const StepShape_FaceSurface *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_FaceSurface & operator=(const Handle_StepShape_FaceSurface &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_FaceSurface & operator=(const StepShape_FaceSurface *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_FaceSurface const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_FaceSurface {
	StepShape_FaceSurface* GetObject() {
	return (StepShape_FaceSurface*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_FaceSurface::~Handle_StepShape_FaceSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_FaceSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_LimitsAndFits;
class Handle_StepShape_LimitsAndFits : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_LimitsAndFits();
		%feature("autodoc", "1");
		Handle_StepShape_LimitsAndFits(const Handle_StepShape_LimitsAndFits &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_LimitsAndFits(const StepShape_LimitsAndFits *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_LimitsAndFits & operator=(const Handle_StepShape_LimitsAndFits &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_LimitsAndFits & operator=(const StepShape_LimitsAndFits *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_LimitsAndFits const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_LimitsAndFits {
	StepShape_LimitsAndFits* GetObject() {
	return (StepShape_LimitsAndFits*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_LimitsAndFits::~Handle_StepShape_LimitsAndFits %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_LimitsAndFits {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_SweptAreaSolid;
class Handle_StepShape_SweptAreaSolid : public Handle_StepShape_SolidModel {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_SweptAreaSolid();
		%feature("autodoc", "1");
		Handle_StepShape_SweptAreaSolid(const Handle_StepShape_SweptAreaSolid &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_SweptAreaSolid(const StepShape_SweptAreaSolid *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_SweptAreaSolid & operator=(const Handle_StepShape_SweptAreaSolid &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_SweptAreaSolid & operator=(const StepShape_SweptAreaSolid *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_SweptAreaSolid const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_SweptAreaSolid {
	StepShape_SweptAreaSolid* GetObject() {
	return (StepShape_SweptAreaSolid*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_SweptAreaSolid::~Handle_StepShape_SweptAreaSolid %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_SweptAreaSolid {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_RevolvedAreaSolid;
class Handle_StepShape_RevolvedAreaSolid : public Handle_StepShape_SweptAreaSolid {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_RevolvedAreaSolid();
		%feature("autodoc", "1");
		Handle_StepShape_RevolvedAreaSolid(const Handle_StepShape_RevolvedAreaSolid &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_RevolvedAreaSolid(const StepShape_RevolvedAreaSolid *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_RevolvedAreaSolid & operator=(const Handle_StepShape_RevolvedAreaSolid &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_RevolvedAreaSolid & operator=(const StepShape_RevolvedAreaSolid *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_RevolvedAreaSolid const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_RevolvedAreaSolid {
	StepShape_RevolvedAreaSolid* GetObject() {
	return (StepShape_RevolvedAreaSolid*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_RevolvedAreaSolid::~Handle_StepShape_RevolvedAreaSolid %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_RevolvedAreaSolid {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_DimensionalSize;
class Handle_StepShape_DimensionalSize : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_DimensionalSize();
		%feature("autodoc", "1");
		Handle_StepShape_DimensionalSize(const Handle_StepShape_DimensionalSize &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_DimensionalSize(const StepShape_DimensionalSize *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_DimensionalSize & operator=(const Handle_StepShape_DimensionalSize &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_DimensionalSize & operator=(const StepShape_DimensionalSize *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_DimensionalSize const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_DimensionalSize {
	StepShape_DimensionalSize* GetObject() {
	return (StepShape_DimensionalSize*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_DimensionalSize::~Handle_StepShape_DimensionalSize %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_DimensionalSize {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_DimensionalSizeWithPath;
class Handle_StepShape_DimensionalSizeWithPath : public Handle_StepShape_DimensionalSize {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_DimensionalSizeWithPath();
		%feature("autodoc", "1");
		Handle_StepShape_DimensionalSizeWithPath(const Handle_StepShape_DimensionalSizeWithPath &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_DimensionalSizeWithPath(const StepShape_DimensionalSizeWithPath *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_DimensionalSizeWithPath & operator=(const Handle_StepShape_DimensionalSizeWithPath &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_DimensionalSizeWithPath & operator=(const StepShape_DimensionalSizeWithPath *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_DimensionalSizeWithPath const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_DimensionalSizeWithPath {
	StepShape_DimensionalSizeWithPath* GetObject() {
	return (StepShape_DimensionalSizeWithPath*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_DimensionalSizeWithPath::~Handle_StepShape_DimensionalSizeWithPath %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_DimensionalSizeWithPath {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_LoopAndPath;
class Handle_StepShape_LoopAndPath : public Handle_StepShape_TopologicalRepresentationItem {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_LoopAndPath();
		%feature("autodoc", "1");
		Handle_StepShape_LoopAndPath(const Handle_StepShape_LoopAndPath &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_LoopAndPath(const StepShape_LoopAndPath *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_LoopAndPath & operator=(const Handle_StepShape_LoopAndPath &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_LoopAndPath & operator=(const StepShape_LoopAndPath *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_LoopAndPath const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_LoopAndPath {
	StepShape_LoopAndPath* GetObject() {
	return (StepShape_LoopAndPath*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_LoopAndPath::~Handle_StepShape_LoopAndPath %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_LoopAndPath {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_HArray1OfConnectedFaceSet;
class Handle_StepShape_HArray1OfConnectedFaceSet : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfConnectedFaceSet();
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfConnectedFaceSet(const Handle_StepShape_HArray1OfConnectedFaceSet &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfConnectedFaceSet(const StepShape_HArray1OfConnectedFaceSet *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfConnectedFaceSet & operator=(const Handle_StepShape_HArray1OfConnectedFaceSet &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfConnectedFaceSet & operator=(const StepShape_HArray1OfConnectedFaceSet *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_HArray1OfConnectedFaceSet const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_HArray1OfConnectedFaceSet {
	StepShape_HArray1OfConnectedFaceSet* GetObject() {
	return (StepShape_HArray1OfConnectedFaceSet*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_HArray1OfConnectedFaceSet::~Handle_StepShape_HArray1OfConnectedFaceSet %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_HArray1OfConnectedFaceSet {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_DefinitionalRepresentationAndShapeRepresentation;
class Handle_StepShape_DefinitionalRepresentationAndShapeRepresentation : public Handle_StepRepr_DefinitionalRepresentation {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_DefinitionalRepresentationAndShapeRepresentation();
		%feature("autodoc", "1");
		Handle_StepShape_DefinitionalRepresentationAndShapeRepresentation(const Handle_StepShape_DefinitionalRepresentationAndShapeRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_DefinitionalRepresentationAndShapeRepresentation(const StepShape_DefinitionalRepresentationAndShapeRepresentation *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_DefinitionalRepresentationAndShapeRepresentation & operator=(const Handle_StepShape_DefinitionalRepresentationAndShapeRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_DefinitionalRepresentationAndShapeRepresentation & operator=(const StepShape_DefinitionalRepresentationAndShapeRepresentation *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_DefinitionalRepresentationAndShapeRepresentation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_DefinitionalRepresentationAndShapeRepresentation {
	StepShape_DefinitionalRepresentationAndShapeRepresentation* GetObject() {
	return (StepShape_DefinitionalRepresentationAndShapeRepresentation*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_DefinitionalRepresentationAndShapeRepresentation::~Handle_StepShape_DefinitionalRepresentationAndShapeRepresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_DefinitionalRepresentationAndShapeRepresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_HArray1OfShell;
class Handle_StepShape_HArray1OfShell : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfShell();
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfShell(const Handle_StepShape_HArray1OfShell &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfShell(const StepShape_HArray1OfShell *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfShell & operator=(const Handle_StepShape_HArray1OfShell &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfShell & operator=(const StepShape_HArray1OfShell *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_HArray1OfShell const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_HArray1OfShell {
	StepShape_HArray1OfShell* GetObject() {
	return (StepShape_HArray1OfShell*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_HArray1OfShell::~Handle_StepShape_HArray1OfShell %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_HArray1OfShell {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_DimensionalLocation;
class Handle_StepShape_DimensionalLocation : public Handle_StepRepr_ShapeAspectRelationship {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_DimensionalLocation();
		%feature("autodoc", "1");
		Handle_StepShape_DimensionalLocation(const Handle_StepShape_DimensionalLocation &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_DimensionalLocation(const StepShape_DimensionalLocation *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_DimensionalLocation & operator=(const Handle_StepShape_DimensionalLocation &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_DimensionalLocation & operator=(const StepShape_DimensionalLocation *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_DimensionalLocation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_DimensionalLocation {
	StepShape_DimensionalLocation* GetObject() {
	return (StepShape_DimensionalLocation*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_DimensionalLocation::~Handle_StepShape_DimensionalLocation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_DimensionalLocation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_TransitionalShapeRepresentation;
class Handle_StepShape_TransitionalShapeRepresentation : public Handle_StepShape_ShapeRepresentation {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_TransitionalShapeRepresentation();
		%feature("autodoc", "1");
		Handle_StepShape_TransitionalShapeRepresentation(const Handle_StepShape_TransitionalShapeRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_TransitionalShapeRepresentation(const StepShape_TransitionalShapeRepresentation *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_TransitionalShapeRepresentation & operator=(const Handle_StepShape_TransitionalShapeRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_TransitionalShapeRepresentation & operator=(const StepShape_TransitionalShapeRepresentation *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_TransitionalShapeRepresentation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_TransitionalShapeRepresentation {
	StepShape_TransitionalShapeRepresentation* GetObject() {
	return (StepShape_TransitionalShapeRepresentation*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_TransitionalShapeRepresentation::~Handle_StepShape_TransitionalShapeRepresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_TransitionalShapeRepresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_ManifoldSolidBrep;
class Handle_StepShape_ManifoldSolidBrep : public Handle_StepShape_SolidModel {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_ManifoldSolidBrep();
		%feature("autodoc", "1");
		Handle_StepShape_ManifoldSolidBrep(const Handle_StepShape_ManifoldSolidBrep &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_ManifoldSolidBrep(const StepShape_ManifoldSolidBrep *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_ManifoldSolidBrep & operator=(const Handle_StepShape_ManifoldSolidBrep &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_ManifoldSolidBrep & operator=(const StepShape_ManifoldSolidBrep *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_ManifoldSolidBrep const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_ManifoldSolidBrep {
	StepShape_ManifoldSolidBrep* GetObject() {
	return (StepShape_ManifoldSolidBrep*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_ManifoldSolidBrep::~Handle_StepShape_ManifoldSolidBrep %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_ManifoldSolidBrep {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_FaceBasedSurfaceModel;
class Handle_StepShape_FaceBasedSurfaceModel : public Handle_StepGeom_GeometricRepresentationItem {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_FaceBasedSurfaceModel();
		%feature("autodoc", "1");
		Handle_StepShape_FaceBasedSurfaceModel(const Handle_StepShape_FaceBasedSurfaceModel &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_FaceBasedSurfaceModel(const StepShape_FaceBasedSurfaceModel *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_FaceBasedSurfaceModel & operator=(const Handle_StepShape_FaceBasedSurfaceModel &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_FaceBasedSurfaceModel & operator=(const StepShape_FaceBasedSurfaceModel *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_FaceBasedSurfaceModel const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_FaceBasedSurfaceModel {
	StepShape_FaceBasedSurfaceModel* GetObject() {
	return (StepShape_FaceBasedSurfaceModel*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_FaceBasedSurfaceModel::~Handle_StepShape_FaceBasedSurfaceModel %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_FaceBasedSurfaceModel {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_CsgSolid;
class Handle_StepShape_CsgSolid : public Handle_StepShape_SolidModel {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_CsgSolid();
		%feature("autodoc", "1");
		Handle_StepShape_CsgSolid(const Handle_StepShape_CsgSolid &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_CsgSolid(const StepShape_CsgSolid *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_CsgSolid & operator=(const Handle_StepShape_CsgSolid &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_CsgSolid & operator=(const StepShape_CsgSolid *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_CsgSolid const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_CsgSolid {
	StepShape_CsgSolid* GetObject() {
	return (StepShape_CsgSolid*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_CsgSolid::~Handle_StepShape_CsgSolid %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_CsgSolid {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_GeometricSet;
class Handle_StepShape_GeometricSet : public Handle_StepGeom_GeometricRepresentationItem {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_GeometricSet();
		%feature("autodoc", "1");
		Handle_StepShape_GeometricSet(const Handle_StepShape_GeometricSet &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_GeometricSet(const StepShape_GeometricSet *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_GeometricSet & operator=(const Handle_StepShape_GeometricSet &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_GeometricSet & operator=(const StepShape_GeometricSet *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_GeometricSet const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_GeometricSet {
	StepShape_GeometricSet* GetObject() {
	return (StepShape_GeometricSet*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_GeometricSet::~Handle_StepShape_GeometricSet %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_GeometricSet {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_ExtrudedAreaSolid;
class Handle_StepShape_ExtrudedAreaSolid : public Handle_StepShape_SweptAreaSolid {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_ExtrudedAreaSolid();
		%feature("autodoc", "1");
		Handle_StepShape_ExtrudedAreaSolid(const Handle_StepShape_ExtrudedAreaSolid &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_ExtrudedAreaSolid(const StepShape_ExtrudedAreaSolid *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_ExtrudedAreaSolid & operator=(const Handle_StepShape_ExtrudedAreaSolid &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_ExtrudedAreaSolid & operator=(const StepShape_ExtrudedAreaSolid *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_ExtrudedAreaSolid const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_ExtrudedAreaSolid {
	StepShape_ExtrudedAreaSolid* GetObject() {
	return (StepShape_ExtrudedAreaSolid*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_ExtrudedAreaSolid::~Handle_StepShape_ExtrudedAreaSolid %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_ExtrudedAreaSolid {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_PrecisionQualifier;
class Handle_StepShape_PrecisionQualifier : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_PrecisionQualifier();
		%feature("autodoc", "1");
		Handle_StepShape_PrecisionQualifier(const Handle_StepShape_PrecisionQualifier &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_PrecisionQualifier(const StepShape_PrecisionQualifier *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_PrecisionQualifier & operator=(const Handle_StepShape_PrecisionQualifier &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_PrecisionQualifier & operator=(const StepShape_PrecisionQualifier *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_PrecisionQualifier const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_PrecisionQualifier {
	StepShape_PrecisionQualifier* GetObject() {
	return (StepShape_PrecisionQualifier*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_PrecisionQualifier::~Handle_StepShape_PrecisionQualifier %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_PrecisionQualifier {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_ToleranceValue;
class Handle_StepShape_ToleranceValue : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_ToleranceValue();
		%feature("autodoc", "1");
		Handle_StepShape_ToleranceValue(const Handle_StepShape_ToleranceValue &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_ToleranceValue(const StepShape_ToleranceValue *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_ToleranceValue & operator=(const Handle_StepShape_ToleranceValue &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_ToleranceValue & operator=(const StepShape_ToleranceValue *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_ToleranceValue const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_ToleranceValue {
	StepShape_ToleranceValue* GetObject() {
	return (StepShape_ToleranceValue*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_ToleranceValue::~Handle_StepShape_ToleranceValue %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_ToleranceValue {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_EdgeCurve;
class Handle_StepShape_EdgeCurve : public Handle_StepShape_Edge {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_EdgeCurve();
		%feature("autodoc", "1");
		Handle_StepShape_EdgeCurve(const Handle_StepShape_EdgeCurve &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_EdgeCurve(const StepShape_EdgeCurve *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_EdgeCurve & operator=(const Handle_StepShape_EdgeCurve &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_EdgeCurve & operator=(const StepShape_EdgeCurve *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_EdgeCurve const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_EdgeCurve {
	StepShape_EdgeCurve* GetObject() {
	return (StepShape_EdgeCurve*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_EdgeCurve::~Handle_StepShape_EdgeCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_EdgeCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_ConnectedFaceSubSet;
class Handle_StepShape_ConnectedFaceSubSet : public Handle_StepShape_ConnectedFaceSet {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_ConnectedFaceSubSet();
		%feature("autodoc", "1");
		Handle_StepShape_ConnectedFaceSubSet(const Handle_StepShape_ConnectedFaceSubSet &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_ConnectedFaceSubSet(const StepShape_ConnectedFaceSubSet *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_ConnectedFaceSubSet & operator=(const Handle_StepShape_ConnectedFaceSubSet &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_ConnectedFaceSubSet & operator=(const StepShape_ConnectedFaceSubSet *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_ConnectedFaceSubSet const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_ConnectedFaceSubSet {
	StepShape_ConnectedFaceSubSet* GetObject() {
	return (StepShape_ConnectedFaceSubSet*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_ConnectedFaceSubSet::~Handle_StepShape_ConnectedFaceSubSet %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_ConnectedFaceSubSet {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_ShapeRepresentationWithParameters;
class Handle_StepShape_ShapeRepresentationWithParameters : public Handle_StepShape_ShapeRepresentation {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_ShapeRepresentationWithParameters();
		%feature("autodoc", "1");
		Handle_StepShape_ShapeRepresentationWithParameters(const Handle_StepShape_ShapeRepresentationWithParameters &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_ShapeRepresentationWithParameters(const StepShape_ShapeRepresentationWithParameters *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_ShapeRepresentationWithParameters & operator=(const Handle_StepShape_ShapeRepresentationWithParameters &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_ShapeRepresentationWithParameters & operator=(const StepShape_ShapeRepresentationWithParameters *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_ShapeRepresentationWithParameters const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_ShapeRepresentationWithParameters {
	StepShape_ShapeRepresentationWithParameters* GetObject() {
	return (StepShape_ShapeRepresentationWithParameters*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_ShapeRepresentationWithParameters::~Handle_StepShape_ShapeRepresentationWithParameters %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_ShapeRepresentationWithParameters {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_DimensionalLocationWithPath;
class Handle_StepShape_DimensionalLocationWithPath : public Handle_StepShape_DimensionalLocation {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_DimensionalLocationWithPath();
		%feature("autodoc", "1");
		Handle_StepShape_DimensionalLocationWithPath(const Handle_StepShape_DimensionalLocationWithPath &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_DimensionalLocationWithPath(const StepShape_DimensionalLocationWithPath *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_DimensionalLocationWithPath & operator=(const Handle_StepShape_DimensionalLocationWithPath &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_DimensionalLocationWithPath & operator=(const StepShape_DimensionalLocationWithPath *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_DimensionalLocationWithPath const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_DimensionalLocationWithPath {
	StepShape_DimensionalLocationWithPath* GetObject() {
	return (StepShape_DimensionalLocationWithPath*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_DimensionalLocationWithPath::~Handle_StepShape_DimensionalLocationWithPath %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_DimensionalLocationWithPath {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_RightAngularWedge;
class Handle_StepShape_RightAngularWedge : public Handle_StepGeom_GeometricRepresentationItem {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_RightAngularWedge();
		%feature("autodoc", "1");
		Handle_StepShape_RightAngularWedge(const Handle_StepShape_RightAngularWedge &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_RightAngularWedge(const StepShape_RightAngularWedge *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_RightAngularWedge & operator=(const Handle_StepShape_RightAngularWedge &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_RightAngularWedge & operator=(const StepShape_RightAngularWedge *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_RightAngularWedge const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_RightAngularWedge {
	StepShape_RightAngularWedge* GetObject() {
	return (StepShape_RightAngularWedge*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_RightAngularWedge::~Handle_StepShape_RightAngularWedge %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_RightAngularWedge {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_CompoundShapeRepresentation;
class Handle_StepShape_CompoundShapeRepresentation : public Handle_StepShape_ShapeRepresentation {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_CompoundShapeRepresentation();
		%feature("autodoc", "1");
		Handle_StepShape_CompoundShapeRepresentation(const Handle_StepShape_CompoundShapeRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_CompoundShapeRepresentation(const StepShape_CompoundShapeRepresentation *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_CompoundShapeRepresentation & operator=(const Handle_StepShape_CompoundShapeRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_CompoundShapeRepresentation & operator=(const StepShape_CompoundShapeRepresentation *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_CompoundShapeRepresentation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_CompoundShapeRepresentation {
	StepShape_CompoundShapeRepresentation* GetObject() {
	return (StepShape_CompoundShapeRepresentation*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_CompoundShapeRepresentation::~Handle_StepShape_CompoundShapeRepresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_CompoundShapeRepresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_DirectedDimensionalLocation;
class Handle_StepShape_DirectedDimensionalLocation : public Handle_StepShape_DimensionalLocation {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_DirectedDimensionalLocation();
		%feature("autodoc", "1");
		Handle_StepShape_DirectedDimensionalLocation(const Handle_StepShape_DirectedDimensionalLocation &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_DirectedDimensionalLocation(const StepShape_DirectedDimensionalLocation *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_DirectedDimensionalLocation & operator=(const Handle_StepShape_DirectedDimensionalLocation &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_DirectedDimensionalLocation & operator=(const StepShape_DirectedDimensionalLocation *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_DirectedDimensionalLocation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_DirectedDimensionalLocation {
	StepShape_DirectedDimensionalLocation* GetObject() {
	return (StepShape_DirectedDimensionalLocation*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_DirectedDimensionalLocation::~Handle_StepShape_DirectedDimensionalLocation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_DirectedDimensionalLocation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_AdvancedBrepShapeRepresentation;
class Handle_StepShape_AdvancedBrepShapeRepresentation : public Handle_StepShape_ShapeRepresentation {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_AdvancedBrepShapeRepresentation();
		%feature("autodoc", "1");
		Handle_StepShape_AdvancedBrepShapeRepresentation(const Handle_StepShape_AdvancedBrepShapeRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_AdvancedBrepShapeRepresentation(const StepShape_AdvancedBrepShapeRepresentation *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_AdvancedBrepShapeRepresentation & operator=(const Handle_StepShape_AdvancedBrepShapeRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_AdvancedBrepShapeRepresentation & operator=(const StepShape_AdvancedBrepShapeRepresentation *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_AdvancedBrepShapeRepresentation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_AdvancedBrepShapeRepresentation {
	StepShape_AdvancedBrepShapeRepresentation* GetObject() {
	return (StepShape_AdvancedBrepShapeRepresentation*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_AdvancedBrepShapeRepresentation::~Handle_StepShape_AdvancedBrepShapeRepresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_AdvancedBrepShapeRepresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_TypeQualifier;
class Handle_StepShape_TypeQualifier : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_TypeQualifier();
		%feature("autodoc", "1");
		Handle_StepShape_TypeQualifier(const Handle_StepShape_TypeQualifier &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_TypeQualifier(const StepShape_TypeQualifier *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_TypeQualifier & operator=(const Handle_StepShape_TypeQualifier &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_TypeQualifier & operator=(const StepShape_TypeQualifier *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_TypeQualifier const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_TypeQualifier {
	StepShape_TypeQualifier* GetObject() {
	return (StepShape_TypeQualifier*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_TypeQualifier::~Handle_StepShape_TypeQualifier %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_TypeQualifier {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_ShapeDefinitionRepresentation;
class Handle_StepShape_ShapeDefinitionRepresentation : public Handle_StepRepr_PropertyDefinitionRepresentation {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_ShapeDefinitionRepresentation();
		%feature("autodoc", "1");
		Handle_StepShape_ShapeDefinitionRepresentation(const Handle_StepShape_ShapeDefinitionRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_ShapeDefinitionRepresentation(const StepShape_ShapeDefinitionRepresentation *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_ShapeDefinitionRepresentation & operator=(const Handle_StepShape_ShapeDefinitionRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_ShapeDefinitionRepresentation & operator=(const StepShape_ShapeDefinitionRepresentation *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_ShapeDefinitionRepresentation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_ShapeDefinitionRepresentation {
	StepShape_ShapeDefinitionRepresentation* GetObject() {
	return (StepShape_ShapeDefinitionRepresentation*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_ShapeDefinitionRepresentation::~Handle_StepShape_ShapeDefinitionRepresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_ShapeDefinitionRepresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_PlusMinusTolerance;
class Handle_StepShape_PlusMinusTolerance : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_PlusMinusTolerance();
		%feature("autodoc", "1");
		Handle_StepShape_PlusMinusTolerance(const Handle_StepShape_PlusMinusTolerance &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_PlusMinusTolerance(const StepShape_PlusMinusTolerance *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_PlusMinusTolerance & operator=(const Handle_StepShape_PlusMinusTolerance &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_PlusMinusTolerance & operator=(const StepShape_PlusMinusTolerance *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_PlusMinusTolerance const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_PlusMinusTolerance {
	StepShape_PlusMinusTolerance* GetObject() {
	return (StepShape_PlusMinusTolerance*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_PlusMinusTolerance::~Handle_StepShape_PlusMinusTolerance %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_PlusMinusTolerance {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_Torus;
class Handle_StepShape_Torus : public Handle_StepGeom_GeometricRepresentationItem {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_Torus();
		%feature("autodoc", "1");
		Handle_StepShape_Torus(const Handle_StepShape_Torus &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_Torus(const StepShape_Torus *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_Torus & operator=(const Handle_StepShape_Torus &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_Torus & operator=(const StepShape_Torus *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_Torus const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_Torus {
	StepShape_Torus* GetObject() {
	return (StepShape_Torus*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_Torus::~Handle_StepShape_Torus %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_Torus {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_OrientedFace;
class Handle_StepShape_OrientedFace : public Handle_StepShape_Face {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_OrientedFace();
		%feature("autodoc", "1");
		Handle_StepShape_OrientedFace(const Handle_StepShape_OrientedFace &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_OrientedFace(const StepShape_OrientedFace *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_OrientedFace & operator=(const Handle_StepShape_OrientedFace &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_OrientedFace & operator=(const StepShape_OrientedFace *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_OrientedFace const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_OrientedFace {
	StepShape_OrientedFace* GetObject() {
	return (StepShape_OrientedFace*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_OrientedFace::~Handle_StepShape_OrientedFace %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_OrientedFace {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_ConnectedFaceShapeRepresentation;
class Handle_StepShape_ConnectedFaceShapeRepresentation : public Handle_StepRepr_Representation {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_ConnectedFaceShapeRepresentation();
		%feature("autodoc", "1");
		Handle_StepShape_ConnectedFaceShapeRepresentation(const Handle_StepShape_ConnectedFaceShapeRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_ConnectedFaceShapeRepresentation(const StepShape_ConnectedFaceShapeRepresentation *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_ConnectedFaceShapeRepresentation & operator=(const Handle_StepShape_ConnectedFaceShapeRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_ConnectedFaceShapeRepresentation & operator=(const StepShape_ConnectedFaceShapeRepresentation *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_ConnectedFaceShapeRepresentation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_ConnectedFaceShapeRepresentation {
	StepShape_ConnectedFaceShapeRepresentation* GetObject() {
	return (StepShape_ConnectedFaceShapeRepresentation*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_ConnectedFaceShapeRepresentation::~Handle_StepShape_ConnectedFaceShapeRepresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_ConnectedFaceShapeRepresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_ShellBasedSurfaceModel;
class Handle_StepShape_ShellBasedSurfaceModel : public Handle_StepGeom_GeometricRepresentationItem {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_ShellBasedSurfaceModel();
		%feature("autodoc", "1");
		Handle_StepShape_ShellBasedSurfaceModel(const Handle_StepShape_ShellBasedSurfaceModel &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_ShellBasedSurfaceModel(const StepShape_ShellBasedSurfaceModel *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_ShellBasedSurfaceModel & operator=(const Handle_StepShape_ShellBasedSurfaceModel &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_ShellBasedSurfaceModel & operator=(const StepShape_ShellBasedSurfaceModel *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_ShellBasedSurfaceModel const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_ShellBasedSurfaceModel {
	StepShape_ShellBasedSurfaceModel* GetObject() {
	return (StepShape_ShellBasedSurfaceModel*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_ShellBasedSurfaceModel::~Handle_StepShape_ShellBasedSurfaceModel %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_ShellBasedSurfaceModel {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_BoxDomain;
class Handle_StepShape_BoxDomain : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_BoxDomain();
		%feature("autodoc", "1");
		Handle_StepShape_BoxDomain(const Handle_StepShape_BoxDomain &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_BoxDomain(const StepShape_BoxDomain *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_BoxDomain & operator=(const Handle_StepShape_BoxDomain &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_BoxDomain & operator=(const StepShape_BoxDomain *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_BoxDomain const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_BoxDomain {
	StepShape_BoxDomain* GetObject() {
	return (StepShape_BoxDomain*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_BoxDomain::~Handle_StepShape_BoxDomain %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_BoxDomain {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_Sphere;
class Handle_StepShape_Sphere : public Handle_StepGeom_GeometricRepresentationItem {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_Sphere();
		%feature("autodoc", "1");
		Handle_StepShape_Sphere(const Handle_StepShape_Sphere &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_Sphere(const StepShape_Sphere *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_Sphere & operator=(const Handle_StepShape_Sphere &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_Sphere & operator=(const StepShape_Sphere *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_Sphere const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_Sphere {
	StepShape_Sphere* GetObject() {
	return (StepShape_Sphere*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_Sphere::~Handle_StepShape_Sphere %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_Sphere {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_EdgeBasedWireframeShapeRepresentation;
class Handle_StepShape_EdgeBasedWireframeShapeRepresentation : public Handle_StepShape_ShapeRepresentation {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_EdgeBasedWireframeShapeRepresentation();
		%feature("autodoc", "1");
		Handle_StepShape_EdgeBasedWireframeShapeRepresentation(const Handle_StepShape_EdgeBasedWireframeShapeRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_EdgeBasedWireframeShapeRepresentation(const StepShape_EdgeBasedWireframeShapeRepresentation *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_EdgeBasedWireframeShapeRepresentation & operator=(const Handle_StepShape_EdgeBasedWireframeShapeRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_EdgeBasedWireframeShapeRepresentation & operator=(const StepShape_EdgeBasedWireframeShapeRepresentation *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_EdgeBasedWireframeShapeRepresentation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_EdgeBasedWireframeShapeRepresentation {
	StepShape_EdgeBasedWireframeShapeRepresentation* GetObject() {
	return (StepShape_EdgeBasedWireframeShapeRepresentation*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_EdgeBasedWireframeShapeRepresentation::~Handle_StepShape_EdgeBasedWireframeShapeRepresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_EdgeBasedWireframeShapeRepresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_Block;
class Handle_StepShape_Block : public Handle_StepGeom_GeometricRepresentationItem {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_Block();
		%feature("autodoc", "1");
		Handle_StepShape_Block(const Handle_StepShape_Block &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_Block(const StepShape_Block *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_Block & operator=(const Handle_StepShape_Block &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_Block & operator=(const StepShape_Block *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_Block const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_Block {
	StepShape_Block* GetObject() {
	return (StepShape_Block*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_Block::~Handle_StepShape_Block %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_Block {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_GeometricallyBoundedWireframeShapeRepresentation;
class Handle_StepShape_GeometricallyBoundedWireframeShapeRepresentation : public Handle_StepShape_ShapeRepresentation {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_GeometricallyBoundedWireframeShapeRepresentation();
		%feature("autodoc", "1");
		Handle_StepShape_GeometricallyBoundedWireframeShapeRepresentation(const Handle_StepShape_GeometricallyBoundedWireframeShapeRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_GeometricallyBoundedWireframeShapeRepresentation(const StepShape_GeometricallyBoundedWireframeShapeRepresentation *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_GeometricallyBoundedWireframeShapeRepresentation & operator=(const Handle_StepShape_GeometricallyBoundedWireframeShapeRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_GeometricallyBoundedWireframeShapeRepresentation & operator=(const StepShape_GeometricallyBoundedWireframeShapeRepresentation *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_GeometricallyBoundedWireframeShapeRepresentation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_GeometricallyBoundedWireframeShapeRepresentation {
	StepShape_GeometricallyBoundedWireframeShapeRepresentation* GetObject() {
	return (StepShape_GeometricallyBoundedWireframeShapeRepresentation*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_GeometricallyBoundedWireframeShapeRepresentation::~Handle_StepShape_GeometricallyBoundedWireframeShapeRepresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_GeometricallyBoundedWireframeShapeRepresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_CsgShapeRepresentation;
class Handle_StepShape_CsgShapeRepresentation : public Handle_StepShape_ShapeRepresentation {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_CsgShapeRepresentation();
		%feature("autodoc", "1");
		Handle_StepShape_CsgShapeRepresentation(const Handle_StepShape_CsgShapeRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_CsgShapeRepresentation(const StepShape_CsgShapeRepresentation *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_CsgShapeRepresentation & operator=(const Handle_StepShape_CsgShapeRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_CsgShapeRepresentation & operator=(const StepShape_CsgShapeRepresentation *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_CsgShapeRepresentation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_CsgShapeRepresentation {
	StepShape_CsgShapeRepresentation* GetObject() {
	return (StepShape_CsgShapeRepresentation*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_CsgShapeRepresentation::~Handle_StepShape_CsgShapeRepresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_CsgShapeRepresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_AngularLocation;
class Handle_StepShape_AngularLocation : public Handle_StepShape_DimensionalLocation {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_AngularLocation();
		%feature("autodoc", "1");
		Handle_StepShape_AngularLocation(const Handle_StepShape_AngularLocation &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_AngularLocation(const StepShape_AngularLocation *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_AngularLocation & operator=(const Handle_StepShape_AngularLocation &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_AngularLocation & operator=(const StepShape_AngularLocation *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_AngularLocation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_AngularLocation {
	StepShape_AngularLocation* GetObject() {
	return (StepShape_AngularLocation*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_AngularLocation::~Handle_StepShape_AngularLocation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_AngularLocation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_Subedge;
class Handle_StepShape_Subedge : public Handle_StepShape_Edge {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_Subedge();
		%feature("autodoc", "1");
		Handle_StepShape_Subedge(const Handle_StepShape_Subedge &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_Subedge(const StepShape_Subedge *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_Subedge & operator=(const Handle_StepShape_Subedge &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_Subedge & operator=(const StepShape_Subedge *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_Subedge const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_Subedge {
	StepShape_Subedge* GetObject() {
	return (StepShape_Subedge*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_Subedge::~Handle_StepShape_Subedge %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_Subedge {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_Vertex;
class Handle_StepShape_Vertex : public Handle_StepShape_TopologicalRepresentationItem {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_Vertex();
		%feature("autodoc", "1");
		Handle_StepShape_Vertex(const Handle_StepShape_Vertex &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_Vertex(const StepShape_Vertex *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_Vertex & operator=(const Handle_StepShape_Vertex &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_Vertex & operator=(const StepShape_Vertex *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_Vertex const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_Vertex {
	StepShape_Vertex* GetObject() {
	return (StepShape_Vertex*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_Vertex::~Handle_StepShape_Vertex %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_Vertex {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_HArray1OfOrientedEdge;
class Handle_StepShape_HArray1OfOrientedEdge : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfOrientedEdge();
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfOrientedEdge(const Handle_StepShape_HArray1OfOrientedEdge &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfOrientedEdge(const StepShape_HArray1OfOrientedEdge *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfOrientedEdge & operator=(const Handle_StepShape_HArray1OfOrientedEdge &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfOrientedEdge & operator=(const StepShape_HArray1OfOrientedEdge *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_HArray1OfOrientedEdge const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_HArray1OfOrientedEdge {
	StepShape_HArray1OfOrientedEdge* GetObject() {
	return (StepShape_HArray1OfOrientedEdge*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_HArray1OfOrientedEdge::~Handle_StepShape_HArray1OfOrientedEdge %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_HArray1OfOrientedEdge {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_RightCircularCylinder;
class Handle_StepShape_RightCircularCylinder : public Handle_StepGeom_GeometricRepresentationItem {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_RightCircularCylinder();
		%feature("autodoc", "1");
		Handle_StepShape_RightCircularCylinder(const Handle_StepShape_RightCircularCylinder &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_RightCircularCylinder(const StepShape_RightCircularCylinder *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_RightCircularCylinder & operator=(const Handle_StepShape_RightCircularCylinder &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_RightCircularCylinder & operator=(const StepShape_RightCircularCylinder *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_RightCircularCylinder const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_RightCircularCylinder {
	StepShape_RightCircularCylinder* GetObject() {
	return (StepShape_RightCircularCylinder*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_RightCircularCylinder::~Handle_StepShape_RightCircularCylinder %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_RightCircularCylinder {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_EdgeLoop;
class Handle_StepShape_EdgeLoop : public Handle_StepShape_Loop {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_EdgeLoop();
		%feature("autodoc", "1");
		Handle_StepShape_EdgeLoop(const Handle_StepShape_EdgeLoop &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_EdgeLoop(const StepShape_EdgeLoop *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_EdgeLoop & operator=(const Handle_StepShape_EdgeLoop &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_EdgeLoop & operator=(const StepShape_EdgeLoop *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_EdgeLoop const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_EdgeLoop {
	StepShape_EdgeLoop* GetObject() {
	return (StepShape_EdgeLoop*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_EdgeLoop::~Handle_StepShape_EdgeLoop %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_EdgeLoop {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_GeometricCurveSet;
class Handle_StepShape_GeometricCurveSet : public Handle_StepShape_GeometricSet {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_GeometricCurveSet();
		%feature("autodoc", "1");
		Handle_StepShape_GeometricCurveSet(const Handle_StepShape_GeometricCurveSet &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_GeometricCurveSet(const StepShape_GeometricCurveSet *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_GeometricCurveSet & operator=(const Handle_StepShape_GeometricCurveSet &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_GeometricCurveSet & operator=(const StepShape_GeometricCurveSet *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_GeometricCurveSet const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_GeometricCurveSet {
	StepShape_GeometricCurveSet* GetObject() {
	return (StepShape_GeometricCurveSet*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_GeometricCurveSet::~Handle_StepShape_GeometricCurveSet %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_GeometricCurveSet {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_EdgeBasedWireframeModel;
class Handle_StepShape_EdgeBasedWireframeModel : public Handle_StepGeom_GeometricRepresentationItem {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_EdgeBasedWireframeModel();
		%feature("autodoc", "1");
		Handle_StepShape_EdgeBasedWireframeModel(const Handle_StepShape_EdgeBasedWireframeModel &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_EdgeBasedWireframeModel(const StepShape_EdgeBasedWireframeModel *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_EdgeBasedWireframeModel & operator=(const Handle_StepShape_EdgeBasedWireframeModel &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_EdgeBasedWireframeModel & operator=(const StepShape_EdgeBasedWireframeModel *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_EdgeBasedWireframeModel const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_EdgeBasedWireframeModel {
	StepShape_EdgeBasedWireframeModel* GetObject() {
	return (StepShape_EdgeBasedWireframeModel*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_EdgeBasedWireframeModel::~Handle_StepShape_EdgeBasedWireframeModel %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_EdgeBasedWireframeModel {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_FacetedBrep;
class Handle_StepShape_FacetedBrep : public Handle_StepShape_ManifoldSolidBrep {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_FacetedBrep();
		%feature("autodoc", "1");
		Handle_StepShape_FacetedBrep(const Handle_StepShape_FacetedBrep &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_FacetedBrep(const StepShape_FacetedBrep *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_FacetedBrep & operator=(const Handle_StepShape_FacetedBrep &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_FacetedBrep & operator=(const StepShape_FacetedBrep *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_FacetedBrep const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_FacetedBrep {
	StepShape_FacetedBrep* GetObject() {
	return (StepShape_FacetedBrep*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_FacetedBrep::~Handle_StepShape_FacetedBrep %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_FacetedBrep {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_AngularSize;
class Handle_StepShape_AngularSize : public Handle_StepShape_DimensionalSize {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_AngularSize();
		%feature("autodoc", "1");
		Handle_StepShape_AngularSize(const Handle_StepShape_AngularSize &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_AngularSize(const StepShape_AngularSize *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_AngularSize & operator=(const Handle_StepShape_AngularSize &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_AngularSize & operator=(const StepShape_AngularSize *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_AngularSize const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_AngularSize {
	StepShape_AngularSize* GetObject() {
	return (StepShape_AngularSize*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_AngularSize::~Handle_StepShape_AngularSize %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_AngularSize {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_VertexPoint;
class Handle_StepShape_VertexPoint : public Handle_StepShape_Vertex {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_VertexPoint();
		%feature("autodoc", "1");
		Handle_StepShape_VertexPoint(const Handle_StepShape_VertexPoint &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_VertexPoint(const StepShape_VertexPoint *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_VertexPoint & operator=(const Handle_StepShape_VertexPoint &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_VertexPoint & operator=(const StepShape_VertexPoint *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_VertexPoint const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_VertexPoint {
	StepShape_VertexPoint* GetObject() {
	return (StepShape_VertexPoint*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_VertexPoint::~Handle_StepShape_VertexPoint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_VertexPoint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_VertexLoop;
class Handle_StepShape_VertexLoop : public Handle_StepShape_Loop {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_VertexLoop();
		%feature("autodoc", "1");
		Handle_StepShape_VertexLoop(const Handle_StepShape_VertexLoop &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_VertexLoop(const StepShape_VertexLoop *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_VertexLoop & operator=(const Handle_StepShape_VertexLoop &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_VertexLoop & operator=(const StepShape_VertexLoop *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_VertexLoop const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_VertexLoop {
	StepShape_VertexLoop* GetObject() {
	return (StepShape_VertexLoop*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_VertexLoop::~Handle_StepShape_VertexLoop %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_VertexLoop {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_GeometricallyBoundedSurfaceShapeRepresentation;
class Handle_StepShape_GeometricallyBoundedSurfaceShapeRepresentation : public Handle_StepShape_ShapeRepresentation {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_GeometricallyBoundedSurfaceShapeRepresentation();
		%feature("autodoc", "1");
		Handle_StepShape_GeometricallyBoundedSurfaceShapeRepresentation(const Handle_StepShape_GeometricallyBoundedSurfaceShapeRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_GeometricallyBoundedSurfaceShapeRepresentation(const StepShape_GeometricallyBoundedSurfaceShapeRepresentation *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_GeometricallyBoundedSurfaceShapeRepresentation & operator=(const Handle_StepShape_GeometricallyBoundedSurfaceShapeRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_GeometricallyBoundedSurfaceShapeRepresentation & operator=(const StepShape_GeometricallyBoundedSurfaceShapeRepresentation *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_GeometricallyBoundedSurfaceShapeRepresentation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_GeometricallyBoundedSurfaceShapeRepresentation {
	StepShape_GeometricallyBoundedSurfaceShapeRepresentation* GetObject() {
	return (StepShape_GeometricallyBoundedSurfaceShapeRepresentation*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_GeometricallyBoundedSurfaceShapeRepresentation::~Handle_StepShape_GeometricallyBoundedSurfaceShapeRepresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_GeometricallyBoundedSurfaceShapeRepresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_BrepWithVoids;
class Handle_StepShape_BrepWithVoids : public Handle_StepShape_ManifoldSolidBrep {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_BrepWithVoids();
		%feature("autodoc", "1");
		Handle_StepShape_BrepWithVoids(const Handle_StepShape_BrepWithVoids &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_BrepWithVoids(const StepShape_BrepWithVoids *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_BrepWithVoids & operator=(const Handle_StepShape_BrepWithVoids &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_BrepWithVoids & operator=(const StepShape_BrepWithVoids *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_BrepWithVoids const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_BrepWithVoids {
	StepShape_BrepWithVoids* GetObject() {
	return (StepShape_BrepWithVoids*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_BrepWithVoids::~Handle_StepShape_BrepWithVoids %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_BrepWithVoids {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_FacetedBrepAndBrepWithVoids;
class Handle_StepShape_FacetedBrepAndBrepWithVoids : public Handle_StepShape_ManifoldSolidBrep {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_FacetedBrepAndBrepWithVoids();
		%feature("autodoc", "1");
		Handle_StepShape_FacetedBrepAndBrepWithVoids(const Handle_StepShape_FacetedBrepAndBrepWithVoids &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_FacetedBrepAndBrepWithVoids(const StepShape_FacetedBrepAndBrepWithVoids *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_FacetedBrepAndBrepWithVoids & operator=(const Handle_StepShape_FacetedBrepAndBrepWithVoids &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_FacetedBrepAndBrepWithVoids & operator=(const StepShape_FacetedBrepAndBrepWithVoids *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_FacetedBrepAndBrepWithVoids const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_FacetedBrepAndBrepWithVoids {
	StepShape_FacetedBrepAndBrepWithVoids* GetObject() {
	return (StepShape_FacetedBrepAndBrepWithVoids*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_FacetedBrepAndBrepWithVoids::~Handle_StepShape_FacetedBrepAndBrepWithVoids %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_FacetedBrepAndBrepWithVoids {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_AdvancedFace;
class Handle_StepShape_AdvancedFace : public Handle_StepShape_FaceSurface {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_AdvancedFace();
		%feature("autodoc", "1");
		Handle_StepShape_AdvancedFace(const Handle_StepShape_AdvancedFace &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_AdvancedFace(const StepShape_AdvancedFace *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_AdvancedFace & operator=(const Handle_StepShape_AdvancedFace &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_AdvancedFace & operator=(const StepShape_AdvancedFace *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_AdvancedFace const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_AdvancedFace {
	StepShape_AdvancedFace* GetObject() {
	return (StepShape_AdvancedFace*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_AdvancedFace::~Handle_StepShape_AdvancedFace %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_AdvancedFace {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_QualifiedRepresentationItem;
class Handle_StepShape_QualifiedRepresentationItem : public Handle_StepRepr_RepresentationItem {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_QualifiedRepresentationItem();
		%feature("autodoc", "1");
		Handle_StepShape_QualifiedRepresentationItem(const Handle_StepShape_QualifiedRepresentationItem &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_QualifiedRepresentationItem(const StepShape_QualifiedRepresentationItem *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_QualifiedRepresentationItem & operator=(const Handle_StepShape_QualifiedRepresentationItem &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_QualifiedRepresentationItem & operator=(const StepShape_QualifiedRepresentationItem *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_QualifiedRepresentationItem const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_QualifiedRepresentationItem {
	StepShape_QualifiedRepresentationItem* GetObject() {
	return (StepShape_QualifiedRepresentationItem*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_QualifiedRepresentationItem::~Handle_StepShape_QualifiedRepresentationItem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_QualifiedRepresentationItem {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_OrientedClosedShell;
class Handle_StepShape_OrientedClosedShell : public Handle_StepShape_ClosedShell {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_OrientedClosedShell();
		%feature("autodoc", "1");
		Handle_StepShape_OrientedClosedShell(const Handle_StepShape_OrientedClosedShell &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_OrientedClosedShell(const StepShape_OrientedClosedShell *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_OrientedClosedShell & operator=(const Handle_StepShape_OrientedClosedShell &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_OrientedClosedShell & operator=(const StepShape_OrientedClosedShell *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_OrientedClosedShell const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_OrientedClosedShell {
	StepShape_OrientedClosedShell* GetObject() {
	return (StepShape_OrientedClosedShell*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_OrientedClosedShell::~Handle_StepShape_OrientedClosedShell %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_OrientedClosedShell {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_ShapeDimensionRepresentation;
class Handle_StepShape_ShapeDimensionRepresentation : public Handle_StepShape_ShapeRepresentation {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_ShapeDimensionRepresentation();
		%feature("autodoc", "1");
		Handle_StepShape_ShapeDimensionRepresentation(const Handle_StepShape_ShapeDimensionRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_ShapeDimensionRepresentation(const StepShape_ShapeDimensionRepresentation *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_ShapeDimensionRepresentation & operator=(const Handle_StepShape_ShapeDimensionRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_ShapeDimensionRepresentation & operator=(const StepShape_ShapeDimensionRepresentation *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_ShapeDimensionRepresentation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_ShapeDimensionRepresentation {
	StepShape_ShapeDimensionRepresentation* GetObject() {
	return (StepShape_ShapeDimensionRepresentation*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_ShapeDimensionRepresentation::~Handle_StepShape_ShapeDimensionRepresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_ShapeDimensionRepresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_HArray1OfEdge;
class Handle_StepShape_HArray1OfEdge : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfEdge();
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfEdge(const Handle_StepShape_HArray1OfEdge &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfEdge(const StepShape_HArray1OfEdge *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfEdge & operator=(const Handle_StepShape_HArray1OfEdge &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfEdge & operator=(const StepShape_HArray1OfEdge *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_HArray1OfEdge const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_HArray1OfEdge {
	StepShape_HArray1OfEdge* GetObject() {
	return (StepShape_HArray1OfEdge*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_HArray1OfEdge::~Handle_StepShape_HArray1OfEdge %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_HArray1OfEdge {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepShape_ContextDependentShapeRepresentation;
class Handle_StepShape_ContextDependentShapeRepresentation : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_ContextDependentShapeRepresentation();
		%feature("autodoc", "1");
		Handle_StepShape_ContextDependentShapeRepresentation(const Handle_StepShape_ContextDependentShapeRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_ContextDependentShapeRepresentation(const StepShape_ContextDependentShapeRepresentation *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_ContextDependentShapeRepresentation & operator=(const Handle_StepShape_ContextDependentShapeRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_ContextDependentShapeRepresentation & operator=(const StepShape_ContextDependentShapeRepresentation *anItem);
		%feature("autodoc", "1");
		static		Handle_StepShape_ContextDependentShapeRepresentation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_ContextDependentShapeRepresentation {
	StepShape_ContextDependentShapeRepresentation* GetObject() {
	return (StepShape_ContextDependentShapeRepresentation*)$self->Access();
	}
};
%feature("shadow") Handle_StepShape_ContextDependentShapeRepresentation::~Handle_StepShape_ContextDependentShapeRepresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepShape_ContextDependentShapeRepresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_BooleanOperand;
class StepShape_BooleanOperand {
	public:
		%feature("autodoc", "1");
		StepShape_BooleanOperand();
		%feature("autodoc", "1");
		void SetTypeOfContent(const Standard_Integer aTypeOfContent);
		%feature("autodoc", "1");
		Standard_Integer TypeOfContent() const;
		%feature("autodoc", "1");
		Handle_StepShape_SolidModel SolidModel() const;
		%feature("autodoc", "1");
		void SetSolidModel(const Handle_StepShape_SolidModel &aSolidModel);
		%feature("autodoc", "1");
		Handle_StepShape_HalfSpaceSolid HalfSpaceSolid() const;
		%feature("autodoc", "1");
		void SetHalfSpaceSolid(const Handle_StepShape_HalfSpaceSolid &aHalfSpaceSolid);
		%feature("autodoc", "1");
		StepShape_CsgPrimitive CsgPrimitive() const;
		%feature("autodoc", "1");
		void SetCsgPrimitive(const StepShape_CsgPrimitive &aCsgPrimitive);
		%feature("autodoc", "1");
		Handle_StepShape_BooleanResult BooleanResult() const;
		%feature("autodoc", "1");
		void SetBooleanResult(const Handle_StepShape_BooleanResult &aBooleanResult);

};
%feature("shadow") StepShape_BooleanOperand::~StepShape_BooleanOperand %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_BooleanOperand {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_SolidModel;
class StepShape_SolidModel : public StepGeom_GeometricRepresentationItem {
	public:
		%feature("autodoc", "1");
		StepShape_SolidModel();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_SolidModel {
	Handle_StepShape_SolidModel GetHandle() {
	return *(Handle_StepShape_SolidModel*) &$self;
	}
};
%extend StepShape_SolidModel {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_SolidModel::~StepShape_SolidModel %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_SolidModel {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_SweptFaceSolid;
class StepShape_SweptFaceSolid : public StepShape_SolidModel {
	public:
		%feature("autodoc", "1");
		StepShape_SweptFaceSolid();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepShape_FaceSurface &aSweptArea);
		%feature("autodoc", "1");
		virtual		void SetSweptFace(const Handle_StepShape_FaceSurface &aSweptArea);
		%feature("autodoc", "1");
		virtual		Handle_StepShape_FaceSurface SweptFace() const;

};
%extend StepShape_SweptFaceSolid {
	Handle_StepShape_SweptFaceSolid GetHandle() {
	return *(Handle_StepShape_SweptFaceSolid*) &$self;
	}
};
%extend StepShape_SweptFaceSolid {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_SweptFaceSolid::~StepShape_SweptFaceSolid %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_SweptFaceSolid {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_RevolvedFaceSolid;
class StepShape_RevolvedFaceSolid : public StepShape_SweptFaceSolid {
	public:
		%feature("autodoc", "1");
		StepShape_RevolvedFaceSolid();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepShape_FaceSurface &aSweptArea, const Handle_StepGeom_Axis1Placement &aAxis, const Standard_Real aAngle);
		%feature("autodoc", "1");
		void SetAxis(const Handle_StepGeom_Axis1Placement &aAxis);
		%feature("autodoc", "1");
		Handle_StepGeom_Axis1Placement Axis() const;
		%feature("autodoc", "1");
		void SetAngle(const Standard_Real aAngle);
		%feature("autodoc", "1");
		Standard_Real Angle() const;

};
%extend StepShape_RevolvedFaceSolid {
	Handle_StepShape_RevolvedFaceSolid GetHandle() {
	return *(Handle_StepShape_RevolvedFaceSolid*) &$self;
	}
};
%extend StepShape_RevolvedFaceSolid {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_RevolvedFaceSolid::~StepShape_RevolvedFaceSolid %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_RevolvedFaceSolid {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_HArray1OfFaceBound;
class StepShape_HArray1OfFaceBound : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepShape_HArray1OfFaceBound(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepShape_HArray1OfFaceBound(const Standard_Integer Low, const Standard_Integer Up, const Handle_StepShape_FaceBound &V);
		%feature("autodoc", "1");
		void Init(const Handle_StepShape_FaceBound &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StepShape_FaceBound &Value);
		%feature("autodoc", "1");
		const Handle_StepShape_FaceBound & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_StepShape_FaceBound & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const StepShape_Array1OfFaceBound & Array1() const;
		%feature("autodoc", "1");
		StepShape_Array1OfFaceBound & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_HArray1OfFaceBound {
	Handle_StepShape_HArray1OfFaceBound GetHandle() {
	return *(Handle_StepShape_HArray1OfFaceBound*) &$self;
	}
};
%extend StepShape_HArray1OfFaceBound {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_HArray1OfFaceBound::~StepShape_HArray1OfFaceBound %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_HArray1OfFaceBound {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_TopologicalRepresentationItem;
class StepShape_TopologicalRepresentationItem : public StepRepr_RepresentationItem {
	public:
		%feature("autodoc", "1");
		StepShape_TopologicalRepresentationItem();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_TopologicalRepresentationItem {
	Handle_StepShape_TopologicalRepresentationItem GetHandle() {
	return *(Handle_StepShape_TopologicalRepresentationItem*) &$self;
	}
};
%extend StepShape_TopologicalRepresentationItem {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_TopologicalRepresentationItem::~StepShape_TopologicalRepresentationItem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_TopologicalRepresentationItem {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_Loop;
class StepShape_Loop : public StepShape_TopologicalRepresentationItem {
	public:
		%feature("autodoc", "1");
		StepShape_Loop();

};
%extend StepShape_Loop {
	Handle_StepShape_Loop GetHandle() {
	return *(Handle_StepShape_Loop*) &$self;
	}
};
%extend StepShape_Loop {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_Loop::~StepShape_Loop %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_Loop {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_PolyLoop;
class StepShape_PolyLoop : public StepShape_Loop {
	public:
		%feature("autodoc", "1");
		StepShape_PolyLoop();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepGeom_HArray1OfCartesianPoint &aPolygon);
		%feature("autodoc", "1");
		void SetPolygon(const Handle_StepGeom_HArray1OfCartesianPoint &aPolygon);
		%feature("autodoc", "1");
		Handle_StepGeom_HArray1OfCartesianPoint Polygon() const;
		%feature("autodoc", "1");
		Handle_StepGeom_CartesianPoint PolygonValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer NbPolygon() const;

};
%extend StepShape_PolyLoop {
	Handle_StepShape_PolyLoop GetHandle() {
	return *(Handle_StepShape_PolyLoop*) &$self;
	}
};
%extend StepShape_PolyLoop {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_PolyLoop::~StepShape_PolyLoop %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_PolyLoop {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_ShapeRepresentation;
class StepShape_ShapeRepresentation : public StepRepr_Representation {
	public:
		%feature("autodoc", "1");
		StepShape_ShapeRepresentation();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_ShapeRepresentation {
	Handle_StepShape_ShapeRepresentation GetHandle() {
	return *(Handle_StepShape_ShapeRepresentation*) &$self;
	}
};
%extend StepShape_ShapeRepresentation {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_ShapeRepresentation::~StepShape_ShapeRepresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_ShapeRepresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_GeometricallyBoundedWireframeShapeRepresentation;
class StepShape_GeometricallyBoundedWireframeShapeRepresentation : public StepShape_ShapeRepresentation {
	public:
		%feature("autodoc", "1");
		StepShape_GeometricallyBoundedWireframeShapeRepresentation();

};
%extend StepShape_GeometricallyBoundedWireframeShapeRepresentation {
	Handle_StepShape_GeometricallyBoundedWireframeShapeRepresentation GetHandle() {
	return *(Handle_StepShape_GeometricallyBoundedWireframeShapeRepresentation*) &$self;
	}
};
%extend StepShape_GeometricallyBoundedWireframeShapeRepresentation {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_GeometricallyBoundedWireframeShapeRepresentation::~StepShape_GeometricallyBoundedWireframeShapeRepresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_GeometricallyBoundedWireframeShapeRepresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_Shell;
class StepShape_Shell : public StepData_SelectType {
	public:
		%feature("autodoc", "1");
		StepShape_Shell();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseNum(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Handle_StepShape_OpenShell OpenShell() const;
		%feature("autodoc", "1");
		Handle_StepShape_ClosedShell ClosedShell() const;

};
%feature("shadow") StepShape_Shell::~StepShape_Shell %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_Shell {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_Array1OfFaceBound;
class StepShape_Array1OfFaceBound {
	public:
		%feature("autodoc", "1");
		StepShape_Array1OfFaceBound(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepShape_Array1OfFaceBound(const Handle_StepShape_FaceBound &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Handle_StepShape_FaceBound &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepShape_Array1OfFaceBound & Assign(const StepShape_Array1OfFaceBound &Other);
		%feature("autodoc", "1");
		const StepShape_Array1OfFaceBound & operator=(const StepShape_Array1OfFaceBound &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StepShape_FaceBound &Value);
		%feature("autodoc", "1");
		const Handle_StepShape_FaceBound & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_StepShape_FaceBound & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_StepShape_FaceBound & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_StepShape_FaceBound & operator()(const Standard_Integer Index);

};
%feature("shadow") StepShape_Array1OfFaceBound::~StepShape_Array1OfFaceBound %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_Array1OfFaceBound {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_TransitionalShapeRepresentation;
class StepShape_TransitionalShapeRepresentation : public StepShape_ShapeRepresentation {
	public:
		%feature("autodoc", "1");
		StepShape_TransitionalShapeRepresentation();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_TransitionalShapeRepresentation {
	Handle_StepShape_TransitionalShapeRepresentation GetHandle() {
	return *(Handle_StepShape_TransitionalShapeRepresentation*) &$self;
	}
};
%extend StepShape_TransitionalShapeRepresentation {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_TransitionalShapeRepresentation::~StepShape_TransitionalShapeRepresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_TransitionalShapeRepresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_ExtrudedFaceSolid;
class StepShape_ExtrudedFaceSolid : public StepShape_SweptFaceSolid {
	public:
		%feature("autodoc", "1");
		StepShape_ExtrudedFaceSolid();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepShape_FaceSurface &aSweptArea);
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepShape_FaceSurface &aSweptArea, const Handle_StepGeom_Direction &aExtrudedDirection, const Standard_Real aDepth);
		%feature("autodoc", "1");
		void SetExtrudedDirection(const Handle_StepGeom_Direction &aExtrudedDirection);
		%feature("autodoc", "1");
		Handle_StepGeom_Direction ExtrudedDirection() const;
		%feature("autodoc", "1");
		void SetDepth(const Standard_Real aDepth);
		%feature("autodoc", "1");
		Standard_Real Depth() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_ExtrudedFaceSolid {
	Handle_StepShape_ExtrudedFaceSolid GetHandle() {
	return *(Handle_StepShape_ExtrudedFaceSolid*) &$self;
	}
};
%extend StepShape_ExtrudedFaceSolid {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_ExtrudedFaceSolid::~StepShape_ExtrudedFaceSolid %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_ExtrudedFaceSolid {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_Array1OfFace;
class StepShape_Array1OfFace {
	public:
		%feature("autodoc", "1");
		StepShape_Array1OfFace(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepShape_Array1OfFace(const Handle_StepShape_Face &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Handle_StepShape_Face &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepShape_Array1OfFace & Assign(const StepShape_Array1OfFace &Other);
		%feature("autodoc", "1");
		const StepShape_Array1OfFace & operator=(const StepShape_Array1OfFace &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StepShape_Face &Value);
		%feature("autodoc", "1");
		const Handle_StepShape_Face & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_StepShape_Face & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_StepShape_Face & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_StepShape_Face & operator()(const Standard_Integer Index);

};
%feature("shadow") StepShape_Array1OfFace::~StepShape_Array1OfFace %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_Array1OfFace {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_CompoundShapeRepresentation;
class StepShape_CompoundShapeRepresentation : public StepShape_ShapeRepresentation {
	public:
		%feature("autodoc", "1");
		StepShape_CompoundShapeRepresentation();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_CompoundShapeRepresentation {
	Handle_StepShape_CompoundShapeRepresentation GetHandle() {
	return *(Handle_StepShape_CompoundShapeRepresentation*) &$self;
	}
};
%extend StepShape_CompoundShapeRepresentation {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_CompoundShapeRepresentation::~StepShape_CompoundShapeRepresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_CompoundShapeRepresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_BoxDomain;
class StepShape_BoxDomain : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepShape_BoxDomain();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_StepGeom_CartesianPoint &aCorner, const Standard_Real aXlength, const Standard_Real aYlength, const Standard_Real aZlength);
		%feature("autodoc", "1");
		void SetCorner(const Handle_StepGeom_CartesianPoint &aCorner);
		%feature("autodoc", "1");
		Handle_StepGeom_CartesianPoint Corner() const;
		%feature("autodoc", "1");
		void SetXlength(const Standard_Real aXlength);
		%feature("autodoc", "1");
		Standard_Real Xlength() const;
		%feature("autodoc", "1");
		void SetYlength(const Standard_Real aYlength);
		%feature("autodoc", "1");
		Standard_Real Ylength() const;
		%feature("autodoc", "1");
		void SetZlength(const Standard_Real aZlength);
		%feature("autodoc", "1");
		Standard_Real Zlength() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_BoxDomain {
	Handle_StepShape_BoxDomain GetHandle() {
	return *(Handle_StepShape_BoxDomain*) &$self;
	}
};
%extend StepShape_BoxDomain {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_BoxDomain::~StepShape_BoxDomain %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_BoxDomain {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_ManifoldSolidBrep;
class StepShape_ManifoldSolidBrep : public StepShape_SolidModel {
	public:
		%feature("autodoc", "1");
		StepShape_ManifoldSolidBrep();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepShape_ClosedShell &aOuter);
		%feature("autodoc", "1");
		void SetOuter(const Handle_StepShape_ClosedShell &aOuter);
		%feature("autodoc", "1");
		Handle_StepShape_ClosedShell Outer() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_ManifoldSolidBrep {
	Handle_StepShape_ManifoldSolidBrep GetHandle() {
	return *(Handle_StepShape_ManifoldSolidBrep*) &$self;
	}
};
%extend StepShape_ManifoldSolidBrep {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_ManifoldSolidBrep::~StepShape_ManifoldSolidBrep %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_ManifoldSolidBrep {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_BrepWithVoids;
class StepShape_BrepWithVoids : public StepShape_ManifoldSolidBrep {
	public:
		%feature("autodoc", "1");
		StepShape_BrepWithVoids();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepShape_ClosedShell &aOuter, const Handle_StepShape_HArray1OfOrientedClosedShell &aVoids);
		%feature("autodoc", "1");
		void SetVoids(const Handle_StepShape_HArray1OfOrientedClosedShell &aVoids);
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfOrientedClosedShell Voids() const;
		%feature("autodoc", "1");
		Handle_StepShape_OrientedClosedShell VoidsValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer NbVoids() const;

};
%extend StepShape_BrepWithVoids {
	Handle_StepShape_BrepWithVoids GetHandle() {
	return *(Handle_StepShape_BrepWithVoids*) &$self;
	}
};
%extend StepShape_BrepWithVoids {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_BrepWithVoids::~StepShape_BrepWithVoids %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_BrepWithVoids {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_FacetedBrepShapeRepresentation;
class StepShape_FacetedBrepShapeRepresentation : public StepShape_ShapeRepresentation {
	public:
		%feature("autodoc", "1");
		StepShape_FacetedBrepShapeRepresentation();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_FacetedBrepShapeRepresentation {
	Handle_StepShape_FacetedBrepShapeRepresentation GetHandle() {
	return *(Handle_StepShape_FacetedBrepShapeRepresentation*) &$self;
	}
};
%extend StepShape_FacetedBrepShapeRepresentation {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_FacetedBrepShapeRepresentation::~StepShape_FacetedBrepShapeRepresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_FacetedBrepShapeRepresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_CsgSolid;
class StepShape_CsgSolid : public StepShape_SolidModel {
	public:
		%feature("autodoc", "1");
		StepShape_CsgSolid();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const StepShape_CsgSelect &aTreeRootExpression);
		%feature("autodoc", "1");
		void SetTreeRootExpression(const StepShape_CsgSelect &aTreeRootExpression);
		%feature("autodoc", "1");
		StepShape_CsgSelect TreeRootExpression() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_CsgSolid {
	Handle_StepShape_CsgSolid GetHandle() {
	return *(Handle_StepShape_CsgSolid*) &$self;
	}
};
%extend StepShape_CsgSolid {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_CsgSolid::~StepShape_CsgSolid %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_CsgSolid {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_PointRepresentation;
class StepShape_PointRepresentation : public StepShape_ShapeRepresentation {
	public:
		%feature("autodoc", "1");
		StepShape_PointRepresentation();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_PointRepresentation {
	Handle_StepShape_PointRepresentation GetHandle() {
	return *(Handle_StepShape_PointRepresentation*) &$self;
	}
};
%extend StepShape_PointRepresentation {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_PointRepresentation::~StepShape_PointRepresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_PointRepresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_GeometricSetSelect;
class StepShape_GeometricSetSelect : public StepData_SelectType {
	public:
		%feature("autodoc", "1");
		StepShape_GeometricSetSelect();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseNum(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Handle_StepGeom_Point Point() const;
		%feature("autodoc", "1");
		Handle_StepGeom_Curve Curve() const;
		%feature("autodoc", "1");
		Handle_StepGeom_Surface Surface() const;

};
%feature("shadow") StepShape_GeometricSetSelect::~StepShape_GeometricSetSelect %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_GeometricSetSelect {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_FaceBound;
class StepShape_FaceBound : public StepShape_TopologicalRepresentationItem {
	public:
		%feature("autodoc", "1");
		StepShape_FaceBound();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepShape_Loop &aBound, const Standard_Boolean aOrientation);
		%feature("autodoc", "1");
		void SetBound(const Handle_StepShape_Loop &aBound);
		%feature("autodoc", "1");
		Handle_StepShape_Loop Bound() const;
		%feature("autodoc", "1");
		void SetOrientation(const Standard_Boolean aOrientation);
		%feature("autodoc", "1");
		Standard_Boolean Orientation() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_FaceBound {
	Handle_StepShape_FaceBound GetHandle() {
	return *(Handle_StepShape_FaceBound*) &$self;
	}
};
%extend StepShape_FaceBound {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_FaceBound::~StepShape_FaceBound %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_FaceBound {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_ToleranceValue;
class StepShape_ToleranceValue : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepShape_ToleranceValue();
		%feature("autodoc", "1");
		void Init(const Handle_StepBasic_MeasureWithUnit &lower_bound, const Handle_StepBasic_MeasureWithUnit &upper_bound);
		%feature("autodoc", "1");
		Handle_StepBasic_MeasureWithUnit LowerBound() const;
		%feature("autodoc", "1");
		void SetLowerBound(const Handle_StepBasic_MeasureWithUnit &lower_bound);
		%feature("autodoc", "1");
		Handle_StepBasic_MeasureWithUnit UpperBound() const;
		%feature("autodoc", "1");
		void SetUpperBound(const Handle_StepBasic_MeasureWithUnit &upper_bound);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_ToleranceValue {
	Handle_StepShape_ToleranceValue GetHandle() {
	return *(Handle_StepShape_ToleranceValue*) &$self;
	}
};
%extend StepShape_ToleranceValue {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_ToleranceValue::~StepShape_ToleranceValue %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_ToleranceValue {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_PlusMinusTolerance;
class StepShape_PlusMinusTolerance : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepShape_PlusMinusTolerance();
		%feature("autodoc", "1");
		void Init(const StepShape_ToleranceMethodDefinition &range, const StepShape_DimensionalCharacteristic &toleranced_dimension);
		%feature("autodoc", "1");
		StepShape_ToleranceMethodDefinition Range() const;
		%feature("autodoc", "1");
		void SetRange(const StepShape_ToleranceMethodDefinition &range);
		%feature("autodoc", "1");
		StepShape_DimensionalCharacteristic TolerancedDimension() const;
		%feature("autodoc", "1");
		void SetTolerancedDimension(const StepShape_DimensionalCharacteristic &toleranced_dimension);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_PlusMinusTolerance {
	Handle_StepShape_PlusMinusTolerance GetHandle() {
	return *(Handle_StepShape_PlusMinusTolerance*) &$self;
	}
};
%extend StepShape_PlusMinusTolerance {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_PlusMinusTolerance::~StepShape_PlusMinusTolerance %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_PlusMinusTolerance {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_NonManifoldSurfaceShapeRepresentation;
class StepShape_NonManifoldSurfaceShapeRepresentation : public StepShape_ShapeRepresentation {
	public:
		%feature("autodoc", "1");
		StepShape_NonManifoldSurfaceShapeRepresentation();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_NonManifoldSurfaceShapeRepresentation {
	Handle_StepShape_NonManifoldSurfaceShapeRepresentation GetHandle() {
	return *(Handle_StepShape_NonManifoldSurfaceShapeRepresentation*) &$self;
	}
};
%extend StepShape_NonManifoldSurfaceShapeRepresentation {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_NonManifoldSurfaceShapeRepresentation::~StepShape_NonManifoldSurfaceShapeRepresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_NonManifoldSurfaceShapeRepresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_HalfSpaceSolid;
class StepShape_HalfSpaceSolid : public StepGeom_GeometricRepresentationItem {
	public:
		%feature("autodoc", "1");
		StepShape_HalfSpaceSolid();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepGeom_Surface &aBaseSurface, const Standard_Boolean aAgreementFlag);
		%feature("autodoc", "1");
		void SetBaseSurface(const Handle_StepGeom_Surface &aBaseSurface);
		%feature("autodoc", "1");
		Handle_StepGeom_Surface BaseSurface() const;
		%feature("autodoc", "1");
		void SetAgreementFlag(const Standard_Boolean aAgreementFlag);
		%feature("autodoc", "1");
		Standard_Boolean AgreementFlag() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_HalfSpaceSolid {
	Handle_StepShape_HalfSpaceSolid GetHandle() {
	return *(Handle_StepShape_HalfSpaceSolid*) &$self;
	}
};
%extend StepShape_HalfSpaceSolid {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_HalfSpaceSolid::~StepShape_HalfSpaceSolid %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_HalfSpaceSolid {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_Face;
class StepShape_Face : public StepShape_TopologicalRepresentationItem {
	public:
		%feature("autodoc", "1");
		StepShape_Face();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepShape_HArray1OfFaceBound &aBounds);
		%feature("autodoc", "1");
		virtual		void SetBounds(const Handle_StepShape_HArray1OfFaceBound &aBounds);
		%feature("autodoc", "1");
		virtual		Handle_StepShape_HArray1OfFaceBound Bounds() const;
		%feature("autodoc", "1");
		virtual		Handle_StepShape_FaceBound BoundsValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbBounds() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_Face {
	Handle_StepShape_Face GetHandle() {
	return *(Handle_StepShape_Face*) &$self;
	}
};
%extend StepShape_Face {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_Face::~StepShape_Face %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_Face {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_Subface;
class StepShape_Subface : public StepShape_Face {
	public:
		%feature("autodoc", "1");
		StepShape_Subface();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aRepresentationItem_Name, const Handle_StepShape_HArray1OfFaceBound &aFace_Bounds, const Handle_StepShape_Face &aParentFace);
		%feature("autodoc", "1");
		Handle_StepShape_Face ParentFace() const;
		%feature("autodoc", "1");
		void SetParentFace(const Handle_StepShape_Face &ParentFace);

};
%extend StepShape_Subface {
	Handle_StepShape_Subface GetHandle() {
	return *(Handle_StepShape_Subface*) &$self;
	}
};
%extend StepShape_Subface {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_Subface::~StepShape_Subface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_Subface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_DimensionalCharacteristicRepresentation;
class StepShape_DimensionalCharacteristicRepresentation : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepShape_DimensionalCharacteristicRepresentation();
		%feature("autodoc", "1");
		void Init(const StepShape_DimensionalCharacteristic &aDimension, const Handle_StepShape_ShapeDimensionRepresentation &aRepresentation);
		%feature("autodoc", "1");
		StepShape_DimensionalCharacteristic Dimension() const;
		%feature("autodoc", "1");
		void SetDimension(const StepShape_DimensionalCharacteristic &Dimension);
		%feature("autodoc", "1");
		Handle_StepShape_ShapeDimensionRepresentation Representation() const;
		%feature("autodoc", "1");
		void SetRepresentation(const Handle_StepShape_ShapeDimensionRepresentation &Representation);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_DimensionalCharacteristicRepresentation {
	Handle_StepShape_DimensionalCharacteristicRepresentation GetHandle() {
	return *(Handle_StepShape_DimensionalCharacteristicRepresentation*) &$self;
	}
};
%extend StepShape_DimensionalCharacteristicRepresentation {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_DimensionalCharacteristicRepresentation::~StepShape_DimensionalCharacteristicRepresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_DimensionalCharacteristicRepresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_EdgeBasedWireframeModel;
class StepShape_EdgeBasedWireframeModel : public StepGeom_GeometricRepresentationItem {
	public:
		%feature("autodoc", "1");
		StepShape_EdgeBasedWireframeModel();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aRepresentationItem_Name, const Handle_StepShape_HArray1OfConnectedEdgeSet &aEbwmBoundary);
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfConnectedEdgeSet EbwmBoundary() const;
		%feature("autodoc", "1");
		void SetEbwmBoundary(const Handle_StepShape_HArray1OfConnectedEdgeSet &EbwmBoundary);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_EdgeBasedWireframeModel {
	Handle_StepShape_EdgeBasedWireframeModel GetHandle() {
	return *(Handle_StepShape_EdgeBasedWireframeModel*) &$self;
	}
};
%extend StepShape_EdgeBasedWireframeModel {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_EdgeBasedWireframeModel::~StepShape_EdgeBasedWireframeModel %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_EdgeBasedWireframeModel {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_RightAngularWedge;
class StepShape_RightAngularWedge : public StepGeom_GeometricRepresentationItem {
	public:
		%feature("autodoc", "1");
		StepShape_RightAngularWedge();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepGeom_Axis2Placement3d &aPosition, const Standard_Real aX, const Standard_Real aY, const Standard_Real aZ, const Standard_Real aLtx);
		%feature("autodoc", "1");
		void SetPosition(const Handle_StepGeom_Axis2Placement3d &aPosition);
		%feature("autodoc", "1");
		Handle_StepGeom_Axis2Placement3d Position() const;
		%feature("autodoc", "1");
		void SetX(const Standard_Real aX);
		%feature("autodoc", "1");
		Standard_Real X() const;
		%feature("autodoc", "1");
		void SetY(const Standard_Real aY);
		%feature("autodoc", "1");
		Standard_Real Y() const;
		%feature("autodoc", "1");
		void SetZ(const Standard_Real aZ);
		%feature("autodoc", "1");
		Standard_Real Z() const;
		%feature("autodoc", "1");
		void SetLtx(const Standard_Real aLtx);
		%feature("autodoc", "1");
		Standard_Real Ltx() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_RightAngularWedge {
	Handle_StepShape_RightAngularWedge GetHandle() {
	return *(Handle_StepShape_RightAngularWedge*) &$self;
	}
};
%extend StepShape_RightAngularWedge {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_RightAngularWedge::~StepShape_RightAngularWedge %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_RightAngularWedge {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_ConnectedFaceSet;
class StepShape_ConnectedFaceSet : public StepShape_TopologicalRepresentationItem {
	public:
		%feature("autodoc", "1");
		StepShape_ConnectedFaceSet();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepShape_HArray1OfFace &aCfsFaces);
		%feature("autodoc", "1");
		virtual		void SetCfsFaces(const Handle_StepShape_HArray1OfFace &aCfsFaces);
		%feature("autodoc", "1");
		virtual		Handle_StepShape_HArray1OfFace CfsFaces() const;
		%feature("autodoc", "1");
		virtual		Handle_StepShape_Face CfsFacesValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbCfsFaces() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_ConnectedFaceSet {
	Handle_StepShape_ConnectedFaceSet GetHandle() {
	return *(Handle_StepShape_ConnectedFaceSet*) &$self;
	}
};
%extend StepShape_ConnectedFaceSet {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_ConnectedFaceSet::~StepShape_ConnectedFaceSet %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_ConnectedFaceSet {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_OpenShell;
class StepShape_OpenShell : public StepShape_ConnectedFaceSet {
	public:
		%feature("autodoc", "1");
		StepShape_OpenShell();

};
%extend StepShape_OpenShell {
	Handle_StepShape_OpenShell GetHandle() {
	return *(Handle_StepShape_OpenShell*) &$self;
	}
};
%extend StepShape_OpenShell {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_OpenShell::~StepShape_OpenShell %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_OpenShell {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_OrientedOpenShell;
class StepShape_OrientedOpenShell : public StepShape_OpenShell {
	public:
		%feature("autodoc", "1");
		StepShape_OrientedOpenShell();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepShape_OpenShell &aOpenShellElement, const Standard_Boolean aOrientation);
		%feature("autodoc", "1");
		void SetOpenShellElement(const Handle_StepShape_OpenShell &aOpenShellElement);
		%feature("autodoc", "1");
		Handle_StepShape_OpenShell OpenShellElement() const;
		%feature("autodoc", "1");
		void SetOrientation(const Standard_Boolean aOrientation);
		%feature("autodoc", "1");
		Standard_Boolean Orientation() const;

};
%extend StepShape_OrientedOpenShell {
	Handle_StepShape_OrientedOpenShell GetHandle() {
	return *(Handle_StepShape_OrientedOpenShell*) &$self;
	}
};
%extend StepShape_OrientedOpenShell {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_OrientedOpenShell::~StepShape_OrientedOpenShell %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_OrientedOpenShell {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_SweptAreaSolid;
class StepShape_SweptAreaSolid : public StepShape_SolidModel {
	public:
		%feature("autodoc", "1");
		StepShape_SweptAreaSolid();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepGeom_CurveBoundedSurface &aSweptArea);
		%feature("autodoc", "1");
		void SetSweptArea(const Handle_StepGeom_CurveBoundedSurface &aSweptArea);
		%feature("autodoc", "1");
		Handle_StepGeom_CurveBoundedSurface SweptArea() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_SweptAreaSolid {
	Handle_StepShape_SweptAreaSolid GetHandle() {
	return *(Handle_StepShape_SweptAreaSolid*) &$self;
	}
};
%extend StepShape_SweptAreaSolid {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_SweptAreaSolid::~StepShape_SweptAreaSolid %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_SweptAreaSolid {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_Array1OfConnectedEdgeSet;
class StepShape_Array1OfConnectedEdgeSet {
	public:
		%feature("autodoc", "1");
		StepShape_Array1OfConnectedEdgeSet(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepShape_Array1OfConnectedEdgeSet(const Handle_StepShape_ConnectedEdgeSet &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Handle_StepShape_ConnectedEdgeSet &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepShape_Array1OfConnectedEdgeSet & Assign(const StepShape_Array1OfConnectedEdgeSet &Other);
		%feature("autodoc", "1");
		const StepShape_Array1OfConnectedEdgeSet & operator=(const StepShape_Array1OfConnectedEdgeSet &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StepShape_ConnectedEdgeSet &Value);
		%feature("autodoc", "1");
		const Handle_StepShape_ConnectedEdgeSet & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_StepShape_ConnectedEdgeSet & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_StepShape_ConnectedEdgeSet & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_StepShape_ConnectedEdgeSet & operator()(const Standard_Integer Index);

};
%feature("shadow") StepShape_Array1OfConnectedEdgeSet::~StepShape_Array1OfConnectedEdgeSet %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_Array1OfConnectedEdgeSet {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_Path;
class StepShape_Path : public StepShape_TopologicalRepresentationItem {
	public:
		%feature("autodoc", "1");
		StepShape_Path();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepShape_HArray1OfOrientedEdge &aEdgeList);
		%feature("autodoc", "1");
		virtual		void SetEdgeList(const Handle_StepShape_HArray1OfOrientedEdge &aEdgeList);
		%feature("autodoc", "1");
		virtual		Handle_StepShape_HArray1OfOrientedEdge EdgeList() const;
		%feature("autodoc", "1");
		virtual		Handle_StepShape_OrientedEdge EdgeListValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbEdgeList() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_Path {
	Handle_StepShape_Path GetHandle() {
	return *(Handle_StepShape_Path*) &$self;
	}
};
%extend StepShape_Path {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_Path::~StepShape_Path %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_Path {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_CsgShapeRepresentation;
class StepShape_CsgShapeRepresentation : public StepShape_ShapeRepresentation {
	public:
		%feature("autodoc", "1");
		StepShape_CsgShapeRepresentation();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_CsgShapeRepresentation {
	Handle_StepShape_CsgShapeRepresentation GetHandle() {
	return *(Handle_StepShape_CsgShapeRepresentation*) &$self;
	}
};
%extend StepShape_CsgShapeRepresentation {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_CsgShapeRepresentation::~StepShape_CsgShapeRepresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_CsgShapeRepresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_Edge;
class StepShape_Edge : public StepShape_TopologicalRepresentationItem {
	public:
		%feature("autodoc", "1");
		StepShape_Edge();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepShape_Vertex &aEdgeStart, const Handle_StepShape_Vertex &aEdgeEnd);
		%feature("autodoc", "1");
		virtual		void SetEdgeStart(const Handle_StepShape_Vertex &aEdgeStart);
		%feature("autodoc", "1");
		virtual		Handle_StepShape_Vertex EdgeStart() const;
		%feature("autodoc", "1");
		virtual		void SetEdgeEnd(const Handle_StepShape_Vertex &aEdgeEnd);
		%feature("autodoc", "1");
		virtual		Handle_StepShape_Vertex EdgeEnd() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_Edge {
	Handle_StepShape_Edge GetHandle() {
	return *(Handle_StepShape_Edge*) &$self;
	}
};
%extend StepShape_Edge {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_Edge::~StepShape_Edge %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_Edge {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_Subedge;
class StepShape_Subedge : public StepShape_Edge {
	public:
		%feature("autodoc", "1");
		StepShape_Subedge();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aRepresentationItem_Name, const Handle_StepShape_Vertex &aEdge_EdgeStart, const Handle_StepShape_Vertex &aEdge_EdgeEnd, const Handle_StepShape_Edge &aParentEdge);
		%feature("autodoc", "1");
		Handle_StepShape_Edge ParentEdge() const;
		%feature("autodoc", "1");
		void SetParentEdge(const Handle_StepShape_Edge &ParentEdge);

};
%extend StepShape_Subedge {
	Handle_StepShape_Subedge GetHandle() {
	return *(Handle_StepShape_Subedge*) &$self;
	}
};
%extend StepShape_Subedge {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_Subedge::~StepShape_Subedge %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_Subedge {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_FaceSurface;
class StepShape_FaceSurface : public StepShape_Face {
	public:
		%feature("autodoc", "1");
		StepShape_FaceSurface();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepShape_HArray1OfFaceBound &aBounds);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepShape_HArray1OfFaceBound &aBounds, const Handle_StepGeom_Surface &aFaceGeometry, const Standard_Boolean aSameSense);
		%feature("autodoc", "1");
		void SetFaceGeometry(const Handle_StepGeom_Surface &aFaceGeometry);
		%feature("autodoc", "1");
		Handle_StepGeom_Surface FaceGeometry() const;
		%feature("autodoc", "1");
		void SetSameSense(const Standard_Boolean aSameSense);
		%feature("autodoc", "1");
		Standard_Boolean SameSense() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_FaceSurface {
	Handle_StepShape_FaceSurface GetHandle() {
	return *(Handle_StepShape_FaceSurface*) &$self;
	}
};
%extend StepShape_FaceSurface {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_FaceSurface::~StepShape_FaceSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_FaceSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_OrientedFace;
class StepShape_OrientedFace : public StepShape_Face {
	public:
		%feature("autodoc", "1");
		StepShape_OrientedFace();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepShape_HArray1OfFaceBound &aBounds);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepShape_Face &aFaceElement, const Standard_Boolean aOrientation);
		%feature("autodoc", "1");
		void SetFaceElement(const Handle_StepShape_Face &aFaceElement);
		%feature("autodoc", "1");
		Handle_StepShape_Face FaceElement() const;
		%feature("autodoc", "1");
		void SetOrientation(const Standard_Boolean aOrientation);
		%feature("autodoc", "1");
		Standard_Boolean Orientation() const;
		%feature("autodoc", "1");
		virtual		void SetBounds(const Handle_StepShape_HArray1OfFaceBound &aBounds);
		%feature("autodoc", "1");
		virtual		Handle_StepShape_HArray1OfFaceBound Bounds() const;
		%feature("autodoc", "1");
		virtual		Handle_StepShape_FaceBound BoundsValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbBounds() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_OrientedFace {
	Handle_StepShape_OrientedFace GetHandle() {
	return *(Handle_StepShape_OrientedFace*) &$self;
	}
};
%extend StepShape_OrientedFace {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_OrientedFace::~StepShape_OrientedFace %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_OrientedFace {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_LoopAndPath;
class StepShape_LoopAndPath : public StepShape_TopologicalRepresentationItem {
	public:
		%feature("autodoc", "1");
		StepShape_LoopAndPath();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepShape_Loop &aLoop, const Handle_StepShape_Path &aPath);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepShape_HArray1OfOrientedEdge &aEdgeList);
		%feature("autodoc", "1");
		void SetLoop(const Handle_StepShape_Loop &aLoop);
		%feature("autodoc", "1");
		Handle_StepShape_Loop Loop() const;
		%feature("autodoc", "1");
		void SetPath(const Handle_StepShape_Path &aPath);
		%feature("autodoc", "1");
		Handle_StepShape_Path Path() const;
		%feature("autodoc", "1");
		void SetEdgeList(const Handle_StepShape_HArray1OfOrientedEdge &aEdgeList);
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfOrientedEdge EdgeList() const;
		%feature("autodoc", "1");
		Handle_StepShape_OrientedEdge EdgeListValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer NbEdgeList() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_LoopAndPath {
	Handle_StepShape_LoopAndPath GetHandle() {
	return *(Handle_StepShape_LoopAndPath*) &$self;
	}
};
%extend StepShape_LoopAndPath {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_LoopAndPath::~StepShape_LoopAndPath %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_LoopAndPath {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_LimitsAndFits;
class StepShape_LimitsAndFits : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepShape_LimitsAndFits();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &form_variance, const Handle_TCollection_HAsciiString &zone_variance, const Handle_TCollection_HAsciiString &grade, const Handle_TCollection_HAsciiString &source);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString FormVariance() const;
		%feature("autodoc", "1");
		void SetFormVariance(const Handle_TCollection_HAsciiString &form_variance);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString ZoneVariance() const;
		%feature("autodoc", "1");
		void SetZoneVariance(const Handle_TCollection_HAsciiString &zone_variance);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Grade() const;
		%feature("autodoc", "1");
		void SetGrade(const Handle_TCollection_HAsciiString &grade);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Source() const;
		%feature("autodoc", "1");
		void SetSource(const Handle_TCollection_HAsciiString &source);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_LimitsAndFits {
	Handle_StepShape_LimitsAndFits GetHandle() {
	return *(Handle_StepShape_LimitsAndFits*) &$self;
	}
};
%extend StepShape_LimitsAndFits {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_LimitsAndFits::~StepShape_LimitsAndFits %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_LimitsAndFits {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_ConnectedEdgeSet;
class StepShape_ConnectedEdgeSet : public StepShape_TopologicalRepresentationItem {
	public:
		%feature("autodoc", "1");
		StepShape_ConnectedEdgeSet();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aRepresentationItem_Name, const Handle_StepShape_HArray1OfEdge &aCesEdges);
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfEdge CesEdges() const;
		%feature("autodoc", "1");
		void SetCesEdges(const Handle_StepShape_HArray1OfEdge &CesEdges);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_ConnectedEdgeSet {
	Handle_StepShape_ConnectedEdgeSet GetHandle() {
	return *(Handle_StepShape_ConnectedEdgeSet*) &$self;
	}
};
%extend StepShape_ConnectedEdgeSet {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_ConnectedEdgeSet::~StepShape_ConnectedEdgeSet %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_ConnectedEdgeSet {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_RevolvedAreaSolid;
class StepShape_RevolvedAreaSolid : public StepShape_SweptAreaSolid {
	public:
		%feature("autodoc", "1");
		StepShape_RevolvedAreaSolid();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepGeom_CurveBoundedSurface &aSweptArea);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepGeom_CurveBoundedSurface &aSweptArea, const Handle_StepGeom_Axis1Placement &aAxis, const Standard_Real aAngle);
		%feature("autodoc", "1");
		void SetAxis(const Handle_StepGeom_Axis1Placement &aAxis);
		%feature("autodoc", "1");
		Handle_StepGeom_Axis1Placement Axis() const;
		%feature("autodoc", "1");
		void SetAngle(const Standard_Real aAngle);
		%feature("autodoc", "1");
		Standard_Real Angle() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_RevolvedAreaSolid {
	Handle_StepShape_RevolvedAreaSolid GetHandle() {
	return *(Handle_StepShape_RevolvedAreaSolid*) &$self;
	}
};
%extend StepShape_RevolvedAreaSolid {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_RevolvedAreaSolid::~StepShape_RevolvedAreaSolid %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_RevolvedAreaSolid {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_DimensionalSize;
class StepShape_DimensionalSize : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepShape_DimensionalSize();
		%feature("autodoc", "1");
		void Init(const Handle_StepRepr_ShapeAspect &aAppliesTo, const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		Handle_StepRepr_ShapeAspect AppliesTo() const;
		%feature("autodoc", "1");
		void SetAppliesTo(const Handle_StepRepr_ShapeAspect &AppliesTo);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Name() const;
		%feature("autodoc", "1");
		void SetName(const Handle_TCollection_HAsciiString &Name);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_DimensionalSize {
	Handle_StepShape_DimensionalSize GetHandle() {
	return *(Handle_StepShape_DimensionalSize*) &$self;
	}
};
%extend StepShape_DimensionalSize {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_DimensionalSize::~StepShape_DimensionalSize %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_DimensionalSize {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_HArray1OfOrientedClosedShell;
class StepShape_HArray1OfOrientedClosedShell : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepShape_HArray1OfOrientedClosedShell(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepShape_HArray1OfOrientedClosedShell(const Standard_Integer Low, const Standard_Integer Up, const Handle_StepShape_OrientedClosedShell &V);
		%feature("autodoc", "1");
		void Init(const Handle_StepShape_OrientedClosedShell &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StepShape_OrientedClosedShell &Value);
		%feature("autodoc", "1");
		const Handle_StepShape_OrientedClosedShell & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_StepShape_OrientedClosedShell & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const StepShape_Array1OfOrientedClosedShell & Array1() const;
		%feature("autodoc", "1");
		StepShape_Array1OfOrientedClosedShell & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_HArray1OfOrientedClosedShell {
	Handle_StepShape_HArray1OfOrientedClosedShell GetHandle() {
	return *(Handle_StepShape_HArray1OfOrientedClosedShell*) &$self;
	}
};
%extend StepShape_HArray1OfOrientedClosedShell {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_HArray1OfOrientedClosedShell::~StepShape_HArray1OfOrientedClosedShell %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_HArray1OfOrientedClosedShell {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_ShapeDimensionRepresentation;
class StepShape_ShapeDimensionRepresentation : public StepShape_ShapeRepresentation {
	public:
		%feature("autodoc", "1");
		StepShape_ShapeDimensionRepresentation();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_ShapeDimensionRepresentation {
	Handle_StepShape_ShapeDimensionRepresentation GetHandle() {
	return *(Handle_StepShape_ShapeDimensionRepresentation*) &$self;
	}
};
%extend StepShape_ShapeDimensionRepresentation {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_ShapeDimensionRepresentation::~StepShape_ShapeDimensionRepresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_ShapeDimensionRepresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_OrientedEdge;
class StepShape_OrientedEdge : public StepShape_Edge {
	public:
		%feature("autodoc", "1");
		StepShape_OrientedEdge();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepShape_Edge &aEdgeElement, const Standard_Boolean aOrientation);
		%feature("autodoc", "1");
		void SetEdgeElement(const Handle_StepShape_Edge &aEdgeElement);
		%feature("autodoc", "1");
		Handle_StepShape_Edge EdgeElement() const;
		%feature("autodoc", "1");
		void SetOrientation(const Standard_Boolean aOrientation);
		%feature("autodoc", "1");
		Standard_Boolean Orientation() const;
		%feature("autodoc", "1");
		virtual		void SetEdgeStart(const Handle_StepShape_Vertex &aEdgeStart);
		%feature("autodoc", "1");
		virtual		Handle_StepShape_Vertex EdgeStart() const;
		%feature("autodoc", "1");
		virtual		void SetEdgeEnd(const Handle_StepShape_Vertex &aEdgeEnd);
		%feature("autodoc", "1");
		virtual		Handle_StepShape_Vertex EdgeEnd() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_OrientedEdge {
	Handle_StepShape_OrientedEdge GetHandle() {
	return *(Handle_StepShape_OrientedEdge*) &$self;
	}
};
%extend StepShape_OrientedEdge {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_OrientedEdge::~StepShape_OrientedEdge %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_OrientedEdge {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_DimensionalLocation;
class StepShape_DimensionalLocation : public StepRepr_ShapeAspectRelationship {
	public:
		%feature("autodoc", "1");
		StepShape_DimensionalLocation();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_DimensionalLocation {
	Handle_StepShape_DimensionalLocation GetHandle() {
	return *(Handle_StepShape_DimensionalLocation*) &$self;
	}
};
%extend StepShape_DimensionalLocation {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_DimensionalLocation::~StepShape_DimensionalLocation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_DimensionalLocation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_DirectedDimensionalLocation;
class StepShape_DirectedDimensionalLocation : public StepShape_DimensionalLocation {
	public:
		%feature("autodoc", "1");
		StepShape_DirectedDimensionalLocation();

};
%extend StepShape_DirectedDimensionalLocation {
	Handle_StepShape_DirectedDimensionalLocation GetHandle() {
	return *(Handle_StepShape_DirectedDimensionalLocation*) &$self;
	}
};
%extend StepShape_DirectedDimensionalLocation {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_DirectedDimensionalLocation::~StepShape_DirectedDimensionalLocation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_DirectedDimensionalLocation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_DimensionalCharacteristic;
class StepShape_DimensionalCharacteristic : public StepData_SelectType {
	public:
		%feature("autodoc", "1");
		StepShape_DimensionalCharacteristic();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseNum(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Handle_StepShape_DimensionalLocation DimensionalLocation() const;
		%feature("autodoc", "1");
		Handle_StepShape_DimensionalSize DimensionalSize() const;

};
%feature("shadow") StepShape_DimensionalCharacteristic::~StepShape_DimensionalCharacteristic %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_DimensionalCharacteristic {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_PrecisionQualifier;
class StepShape_PrecisionQualifier : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepShape_PrecisionQualifier();
		%feature("autodoc", "1");
		void Init(const Standard_Integer precision_value);
		%feature("autodoc", "1");
		Standard_Integer PrecisionValue() const;
		%feature("autodoc", "1");
		void SetPrecisionValue(const Standard_Integer precision_value);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_PrecisionQualifier {
	Handle_StepShape_PrecisionQualifier GetHandle() {
	return *(Handle_StepShape_PrecisionQualifier*) &$self;
	}
};
%extend StepShape_PrecisionQualifier {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_PrecisionQualifier::~StepShape_PrecisionQualifier %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_PrecisionQualifier {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_Sphere;
class StepShape_Sphere : public StepGeom_GeometricRepresentationItem {
	public:
		%feature("autodoc", "1");
		StepShape_Sphere();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Standard_Real aRadius, const Handle_StepGeom_Point &aCentre);
		%feature("autodoc", "1");
		void SetRadius(const Standard_Real aRadius);
		%feature("autodoc", "1");
		Standard_Real Radius() const;
		%feature("autodoc", "1");
		void SetCentre(const Handle_StepGeom_Point &aCentre);
		%feature("autodoc", "1");
		Handle_StepGeom_Point Centre() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_Sphere {
	Handle_StepShape_Sphere GetHandle() {
	return *(Handle_StepShape_Sphere*) &$self;
	}
};
%extend StepShape_Sphere {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_Sphere::~StepShape_Sphere %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_Sphere {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_ContextDependentShapeRepresentation;
class StepShape_ContextDependentShapeRepresentation : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepShape_ContextDependentShapeRepresentation();
		%feature("autodoc", "1");
		void Init(const Handle_StepRepr_ShapeRepresentationRelationship &aRepRel, const Handle_StepRepr_ProductDefinitionShape &aProRel);
		%feature("autodoc", "1");
		Handle_StepRepr_ShapeRepresentationRelationship RepresentationRelation() const;
		%feature("autodoc", "1");
		void SetRepresentationRelation(const Handle_StepRepr_ShapeRepresentationRelationship &aRepRel);
		%feature("autodoc", "1");
		Handle_StepRepr_ProductDefinitionShape RepresentedProductRelation() const;
		%feature("autodoc", "1");
		void SetRepresentedProductRelation(const Handle_StepRepr_ProductDefinitionShape &aProRel);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_ContextDependentShapeRepresentation {
	Handle_StepShape_ContextDependentShapeRepresentation GetHandle() {
	return *(Handle_StepShape_ContextDependentShapeRepresentation*) &$self;
	}
};
%extend StepShape_ContextDependentShapeRepresentation {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_ContextDependentShapeRepresentation::~StepShape_ContextDependentShapeRepresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_ContextDependentShapeRepresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_BooleanResult;
class StepShape_BooleanResult : public StepGeom_GeometricRepresentationItem {
	public:
		%feature("autodoc", "1");
		StepShape_BooleanResult();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const StepShape_BooleanOperator aOperator, const StepShape_BooleanOperand &aFirstOperand, const StepShape_BooleanOperand &aSecondOperand);
		%feature("autodoc", "1");
		void SetOperator(const StepShape_BooleanOperator aOperator);
		%feature("autodoc", "1");
		StepShape_BooleanOperator Operator() const;
		%feature("autodoc", "1");
		void SetFirstOperand(const StepShape_BooleanOperand &aFirstOperand);
		%feature("autodoc", "1");
		StepShape_BooleanOperand FirstOperand() const;
		%feature("autodoc", "1");
		void SetSecondOperand(const StepShape_BooleanOperand &aSecondOperand);
		%feature("autodoc", "1");
		StepShape_BooleanOperand SecondOperand() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_BooleanResult {
	Handle_StepShape_BooleanResult GetHandle() {
	return *(Handle_StepShape_BooleanResult*) &$self;
	}
};
%extend StepShape_BooleanResult {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_BooleanResult::~StepShape_BooleanResult %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_BooleanResult {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_ClosedShell;
class StepShape_ClosedShell : public StepShape_ConnectedFaceSet {
	public:
		%feature("autodoc", "1");
		StepShape_ClosedShell();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_ClosedShell {
	Handle_StepShape_ClosedShell GetHandle() {
	return *(Handle_StepShape_ClosedShell*) &$self;
	}
};
%extend StepShape_ClosedShell {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_ClosedShell::~StepShape_ClosedShell %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_ClosedShell {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_OrientedClosedShell;
class StepShape_OrientedClosedShell : public StepShape_ClosedShell {
	public:
		%feature("autodoc", "1");
		StepShape_OrientedClosedShell();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepShape_HArray1OfFace &aCfsFaces);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepShape_ClosedShell &aClosedShellElement, const Standard_Boolean aOrientation);
		%feature("autodoc", "1");
		void SetClosedShellElement(const Handle_StepShape_ClosedShell &aClosedShellElement);
		%feature("autodoc", "1");
		Handle_StepShape_ClosedShell ClosedShellElement() const;
		%feature("autodoc", "1");
		void SetOrientation(const Standard_Boolean aOrientation);
		%feature("autodoc", "1");
		Standard_Boolean Orientation() const;
		%feature("autodoc", "1");
		virtual		void SetCfsFaces(const Handle_StepShape_HArray1OfFace &aCfsFaces);
		%feature("autodoc", "1");
		virtual		Handle_StepShape_HArray1OfFace CfsFaces() const;
		%feature("autodoc", "1");
		virtual		Handle_StepShape_Face CfsFacesValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbCfsFaces() const;

};
%extend StepShape_OrientedClosedShell {
	Handle_StepShape_OrientedClosedShell GetHandle() {
	return *(Handle_StepShape_OrientedClosedShell*) &$self;
	}
};
%extend StepShape_OrientedClosedShell {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_OrientedClosedShell::~StepShape_OrientedClosedShell %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_OrientedClosedShell {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_CsgSelect;
class StepShape_CsgSelect {
	public:
		%feature("autodoc", "1");
		StepShape_CsgSelect();
		%feature("autodoc", "1");
		void SetTypeOfContent(const Standard_Integer aTypeOfContent);
		%feature("autodoc", "1");
		Standard_Integer TypeOfContent() const;
		%feature("autodoc", "1");
		Handle_StepShape_BooleanResult BooleanResult() const;
		%feature("autodoc", "1");
		void SetBooleanResult(const Handle_StepShape_BooleanResult &aBooleanResult);
		%feature("autodoc", "1");
		StepShape_CsgPrimitive CsgPrimitive() const;
		%feature("autodoc", "1");
		void SetCsgPrimitive(const StepShape_CsgPrimitive &aCsgPrimitive);

};
%feature("shadow") StepShape_CsgSelect::~StepShape_CsgSelect %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_CsgSelect {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_ValueQualifier;
class StepShape_ValueQualifier : public StepData_SelectType {
	public:
		%feature("autodoc", "1");
		StepShape_ValueQualifier();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseNum(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Handle_StepShape_PrecisionQualifier PrecisionQualifier() const;
		%feature("autodoc", "1");
		Handle_StepShape_TypeQualifier TypeQualifier() const;

};
%feature("shadow") StepShape_ValueQualifier::~StepShape_ValueQualifier %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_ValueQualifier {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_SurfaceModel;
class StepShape_SurfaceModel : public StepData_SelectType {
	public:
		%feature("autodoc", "1");
		StepShape_SurfaceModel();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseNum(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Handle_StepShape_ShellBasedSurfaceModel ShellBasedSurfaceModel() const;

};
%feature("shadow") StepShape_SurfaceModel::~StepShape_SurfaceModel %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_SurfaceModel {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_FacetedBrepAndBrepWithVoids;
class StepShape_FacetedBrepAndBrepWithVoids : public StepShape_ManifoldSolidBrep {
	public:
		%feature("autodoc", "1");
		StepShape_FacetedBrepAndBrepWithVoids();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepShape_ClosedShell &aOuter);
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepShape_ClosedShell &aOuter, const Handle_StepShape_FacetedBrep &aFacetedBrep, const Handle_StepShape_BrepWithVoids &aBrepWithVoids);
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepShape_ClosedShell &aOuter, const Handle_StepShape_HArray1OfOrientedClosedShell &aVoids);
		%feature("autodoc", "1");
		void SetFacetedBrep(const Handle_StepShape_FacetedBrep &aFacetedBrep);
		%feature("autodoc", "1");
		Handle_StepShape_FacetedBrep FacetedBrep() const;
		%feature("autodoc", "1");
		void SetBrepWithVoids(const Handle_StepShape_BrepWithVoids &aBrepWithVoids);
		%feature("autodoc", "1");
		Handle_StepShape_BrepWithVoids BrepWithVoids() const;
		%feature("autodoc", "1");
		void SetVoids(const Handle_StepShape_HArray1OfOrientedClosedShell &aVoids);
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfOrientedClosedShell Voids() const;
		%feature("autodoc", "1");
		Handle_StepShape_OrientedClosedShell VoidsValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer NbVoids() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_FacetedBrepAndBrepWithVoids {
	Handle_StepShape_FacetedBrepAndBrepWithVoids GetHandle() {
	return *(Handle_StepShape_FacetedBrepAndBrepWithVoids*) &$self;
	}
};
%extend StepShape_FacetedBrepAndBrepWithVoids {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_FacetedBrepAndBrepWithVoids::~StepShape_FacetedBrepAndBrepWithVoids %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_FacetedBrepAndBrepWithVoids {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_Vertex;
class StepShape_Vertex : public StepShape_TopologicalRepresentationItem {
	public:
		%feature("autodoc", "1");
		StepShape_Vertex();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_Vertex {
	Handle_StepShape_Vertex GetHandle() {
	return *(Handle_StepShape_Vertex*) &$self;
	}
};
%extend StepShape_Vertex {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_Vertex::~StepShape_Vertex %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_Vertex {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_EdgeCurve;
class StepShape_EdgeCurve : public StepShape_Edge {
	public:
		%feature("autodoc", "1");
		StepShape_EdgeCurve();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepShape_Vertex &aEdgeStart, const Handle_StepShape_Vertex &aEdgeEnd);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepShape_Vertex &aEdgeStart, const Handle_StepShape_Vertex &aEdgeEnd, const Handle_StepGeom_Curve &aEdgeGeometry, const Standard_Boolean aSameSense);
		%feature("autodoc", "1");
		void SetEdgeGeometry(const Handle_StepGeom_Curve &aEdgeGeometry);
		%feature("autodoc", "1");
		Handle_StepGeom_Curve EdgeGeometry() const;
		%feature("autodoc", "1");
		void SetSameSense(const Standard_Boolean aSameSense);
		%feature("autodoc", "1");
		Standard_Boolean SameSense() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_EdgeCurve {
	Handle_StepShape_EdgeCurve GetHandle() {
	return *(Handle_StepShape_EdgeCurve*) &$self;
	}
};
%extend StepShape_EdgeCurve {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_EdgeCurve::~StepShape_EdgeCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_EdgeCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_BoxedHalfSpace;
class StepShape_BoxedHalfSpace : public StepShape_HalfSpaceSolid {
	public:
		%feature("autodoc", "1");
		StepShape_BoxedHalfSpace();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepGeom_Surface &aBaseSurface, const Standard_Boolean aAgreementFlag);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepGeom_Surface &aBaseSurface, const Standard_Boolean aAgreementFlag, const Handle_StepShape_BoxDomain &aEnclosure);
		%feature("autodoc", "1");
		void SetEnclosure(const Handle_StepShape_BoxDomain &aEnclosure);
		%feature("autodoc", "1");
		Handle_StepShape_BoxDomain Enclosure() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_BoxedHalfSpace {
	Handle_StepShape_BoxedHalfSpace GetHandle() {
	return *(Handle_StepShape_BoxedHalfSpace*) &$self;
	}
};
%extend StepShape_BoxedHalfSpace {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_BoxedHalfSpace::~StepShape_BoxedHalfSpace %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_BoxedHalfSpace {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_GeometricSet;
class StepShape_GeometricSet : public StepGeom_GeometricRepresentationItem {
	public:
		%feature("autodoc", "1");
		StepShape_GeometricSet();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepShape_HArray1OfGeometricSetSelect &aElements);
		%feature("autodoc", "1");
		void SetElements(const Handle_StepShape_HArray1OfGeometricSetSelect &aElements);
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfGeometricSetSelect Elements() const;
		%feature("autodoc", "1");
		StepShape_GeometricSetSelect ElementsValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer NbElements() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_GeometricSet {
	Handle_StepShape_GeometricSet GetHandle() {
	return *(Handle_StepShape_GeometricSet*) &$self;
	}
};
%extend StepShape_GeometricSet {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_GeometricSet::~StepShape_GeometricSet %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_GeometricSet {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_HArray1OfFace;
class StepShape_HArray1OfFace : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepShape_HArray1OfFace(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepShape_HArray1OfFace(const Standard_Integer Low, const Standard_Integer Up, const Handle_StepShape_Face &V);
		%feature("autodoc", "1");
		void Init(const Handle_StepShape_Face &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StepShape_Face &Value);
		%feature("autodoc", "1");
		const Handle_StepShape_Face & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_StepShape_Face & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const StepShape_Array1OfFace & Array1() const;
		%feature("autodoc", "1");
		StepShape_Array1OfFace & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_HArray1OfFace {
	Handle_StepShape_HArray1OfFace GetHandle() {
	return *(Handle_StepShape_HArray1OfFace*) &$self;
	}
};
%extend StepShape_HArray1OfFace {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_HArray1OfFace::~StepShape_HArray1OfFace %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_HArray1OfFace {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_Array1OfValueQualifier;
class StepShape_Array1OfValueQualifier {
	public:
		%feature("autodoc", "1");
		StepShape_Array1OfValueQualifier(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepShape_Array1OfValueQualifier(const StepShape_ValueQualifier &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const StepShape_ValueQualifier &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepShape_Array1OfValueQualifier & Assign(const StepShape_Array1OfValueQualifier &Other);
		%feature("autodoc", "1");
		const StepShape_Array1OfValueQualifier & operator=(const StepShape_Array1OfValueQualifier &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepShape_ValueQualifier &Value);
		%feature("autodoc", "1");
		const StepShape_ValueQualifier & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const StepShape_ValueQualifier & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepShape_ValueQualifier & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		StepShape_ValueQualifier & operator()(const Standard_Integer Index);

};
%feature("shadow") StepShape_Array1OfValueQualifier::~StepShape_Array1OfValueQualifier %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_Array1OfValueQualifier {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_Array1OfOrientedClosedShell;
class StepShape_Array1OfOrientedClosedShell {
	public:
		%feature("autodoc", "1");
		StepShape_Array1OfOrientedClosedShell(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepShape_Array1OfOrientedClosedShell(const Handle_StepShape_OrientedClosedShell &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Handle_StepShape_OrientedClosedShell &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepShape_Array1OfOrientedClosedShell & Assign(const StepShape_Array1OfOrientedClosedShell &Other);
		%feature("autodoc", "1");
		const StepShape_Array1OfOrientedClosedShell & operator=(const StepShape_Array1OfOrientedClosedShell &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StepShape_OrientedClosedShell &Value);
		%feature("autodoc", "1");
		const Handle_StepShape_OrientedClosedShell & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_StepShape_OrientedClosedShell & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_StepShape_OrientedClosedShell & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_StepShape_OrientedClosedShell & operator()(const Standard_Integer Index);

};
%feature("shadow") StepShape_Array1OfOrientedClosedShell::~StepShape_Array1OfOrientedClosedShell %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_Array1OfOrientedClosedShell {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_HArray1OfValueQualifier;
class StepShape_HArray1OfValueQualifier : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepShape_HArray1OfValueQualifier(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepShape_HArray1OfValueQualifier(const Standard_Integer Low, const Standard_Integer Up, const StepShape_ValueQualifier &V);
		%feature("autodoc", "1");
		void Init(const StepShape_ValueQualifier &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepShape_ValueQualifier &Value);
		%feature("autodoc", "1");
		const StepShape_ValueQualifier & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepShape_ValueQualifier & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const StepShape_Array1OfValueQualifier & Array1() const;
		%feature("autodoc", "1");
		StepShape_Array1OfValueQualifier & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_HArray1OfValueQualifier {
	Handle_StepShape_HArray1OfValueQualifier GetHandle() {
	return *(Handle_StepShape_HArray1OfValueQualifier*) &$self;
	}
};
%extend StepShape_HArray1OfValueQualifier {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_HArray1OfValueQualifier::~StepShape_HArray1OfValueQualifier %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_HArray1OfValueQualifier {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_FaceBasedSurfaceModel;
class StepShape_FaceBasedSurfaceModel : public StepGeom_GeometricRepresentationItem {
	public:
		%feature("autodoc", "1");
		StepShape_FaceBasedSurfaceModel();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aRepresentationItem_Name, const Handle_StepShape_HArray1OfConnectedFaceSet &aFbsmFaces);
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfConnectedFaceSet FbsmFaces() const;
		%feature("autodoc", "1");
		void SetFbsmFaces(const Handle_StepShape_HArray1OfConnectedFaceSet &FbsmFaces);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_FaceBasedSurfaceModel {
	Handle_StepShape_FaceBasedSurfaceModel GetHandle() {
	return *(Handle_StepShape_FaceBasedSurfaceModel*) &$self;
	}
};
%extend StepShape_FaceBasedSurfaceModel {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_FaceBasedSurfaceModel::~StepShape_FaceBasedSurfaceModel %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_FaceBasedSurfaceModel {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_AdvancedFace;
class StepShape_AdvancedFace : public StepShape_FaceSurface {
	public:
		%feature("autodoc", "1");
		StepShape_AdvancedFace();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_AdvancedFace {
	Handle_StepShape_AdvancedFace GetHandle() {
	return *(Handle_StepShape_AdvancedFace*) &$self;
	}
};
%extend StepShape_AdvancedFace {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_AdvancedFace::~StepShape_AdvancedFace %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_AdvancedFace {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_ReversibleTopologyItem;
class StepShape_ReversibleTopologyItem : public StepData_SelectType {
	public:
		%feature("autodoc", "1");
		StepShape_ReversibleTopologyItem();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseNum(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Handle_StepShape_Edge Edge() const;
		%feature("autodoc", "1");
		Handle_StepShape_Path Path() const;
		%feature("autodoc", "1");
		Handle_StepShape_Face Face() const;
		%feature("autodoc", "1");
		Handle_StepShape_FaceBound FaceBound() const;
		%feature("autodoc", "1");
		Handle_StepShape_ClosedShell ClosedShell() const;
		%feature("autodoc", "1");
		Handle_StepShape_OpenShell OpenShell() const;

};
%feature("shadow") StepShape_ReversibleTopologyItem::~StepShape_ReversibleTopologyItem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_ReversibleTopologyItem {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_Array1OfShell;
class StepShape_Array1OfShell {
	public:
		%feature("autodoc", "1");
		StepShape_Array1OfShell(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepShape_Array1OfShell(const StepShape_Shell &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const StepShape_Shell &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepShape_Array1OfShell & Assign(const StepShape_Array1OfShell &Other);
		%feature("autodoc", "1");
		const StepShape_Array1OfShell & operator=(const StepShape_Array1OfShell &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepShape_Shell &Value);
		%feature("autodoc", "1");
		const StepShape_Shell & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const StepShape_Shell & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepShape_Shell & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		StepShape_Shell & operator()(const Standard_Integer Index);

};
%feature("shadow") StepShape_Array1OfShell::~StepShape_Array1OfShell %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_Array1OfShell {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_Array1OfOrientedEdge;
class StepShape_Array1OfOrientedEdge {
	public:
		%feature("autodoc", "1");
		StepShape_Array1OfOrientedEdge(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepShape_Array1OfOrientedEdge(const Handle_StepShape_OrientedEdge &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Handle_StepShape_OrientedEdge &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepShape_Array1OfOrientedEdge & Assign(const StepShape_Array1OfOrientedEdge &Other);
		%feature("autodoc", "1");
		const StepShape_Array1OfOrientedEdge & operator=(const StepShape_Array1OfOrientedEdge &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StepShape_OrientedEdge &Value);
		%feature("autodoc", "1");
		const Handle_StepShape_OrientedEdge & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_StepShape_OrientedEdge & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_StepShape_OrientedEdge & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_StepShape_OrientedEdge & operator()(const Standard_Integer Index);

};
%feature("shadow") StepShape_Array1OfOrientedEdge::~StepShape_Array1OfOrientedEdge %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_Array1OfOrientedEdge {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_QualifiedRepresentationItem;
class StepShape_QualifiedRepresentationItem : public StepRepr_RepresentationItem {
	public:
		%feature("autodoc", "1");
		StepShape_QualifiedRepresentationItem();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepShape_HArray1OfValueQualifier &qualifiers);
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfValueQualifier Qualifiers() const;
		%feature("autodoc", "1");
		Standard_Integer NbQualifiers() const;
		%feature("autodoc", "1");
		void SetQualifiers(const Handle_StepShape_HArray1OfValueQualifier &qualifiers);
		%feature("autodoc", "1");
		StepShape_ValueQualifier QualifiersValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		void SetQualifiersValue(const Standard_Integer num, const StepShape_ValueQualifier &aqualifier);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_QualifiedRepresentationItem {
	Handle_StepShape_QualifiedRepresentationItem GetHandle() {
	return *(Handle_StepShape_QualifiedRepresentationItem*) &$self;
	}
};
%extend StepShape_QualifiedRepresentationItem {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_QualifiedRepresentationItem::~StepShape_QualifiedRepresentationItem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_QualifiedRepresentationItem {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_ShapeRepresentationWithParameters;
class StepShape_ShapeRepresentationWithParameters : public StepShape_ShapeRepresentation {
	public:
		%feature("autodoc", "1");
		StepShape_ShapeRepresentationWithParameters();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_ShapeRepresentationWithParameters {
	Handle_StepShape_ShapeRepresentationWithParameters GetHandle() {
	return *(Handle_StepShape_ShapeRepresentationWithParameters*) &$self;
	}
};
%extend StepShape_ShapeRepresentationWithParameters {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_ShapeRepresentationWithParameters::~StepShape_ShapeRepresentationWithParameters %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_ShapeRepresentationWithParameters {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_RightCircularCone;
class StepShape_RightCircularCone : public StepGeom_GeometricRepresentationItem {
	public:
		%feature("autodoc", "1");
		StepShape_RightCircularCone();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepGeom_Axis1Placement &aPosition, const Standard_Real aHeight, const Standard_Real aRadius, const Standard_Real aSemiAngle);
		%feature("autodoc", "1");
		void SetPosition(const Handle_StepGeom_Axis1Placement &aPosition);
		%feature("autodoc", "1");
		Handle_StepGeom_Axis1Placement Position() const;
		%feature("autodoc", "1");
		void SetHeight(const Standard_Real aHeight);
		%feature("autodoc", "1");
		Standard_Real Height() const;
		%feature("autodoc", "1");
		void SetRadius(const Standard_Real aRadius);
		%feature("autodoc", "1");
		Standard_Real Radius() const;
		%feature("autodoc", "1");
		void SetSemiAngle(const Standard_Real aSemiAngle);
		%feature("autodoc", "1");
		Standard_Real SemiAngle() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_RightCircularCone {
	Handle_StepShape_RightCircularCone GetHandle() {
	return *(Handle_StepShape_RightCircularCone*) &$self;
	}
};
%extend StepShape_RightCircularCone {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_RightCircularCone::~StepShape_RightCircularCone %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_RightCircularCone {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_EdgeLoop;
class StepShape_EdgeLoop : public StepShape_Loop {
	public:
		%feature("autodoc", "1");
		StepShape_EdgeLoop();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepShape_HArray1OfOrientedEdge &aEdgeList);
		%feature("autodoc", "1");
		void SetEdgeList(const Handle_StepShape_HArray1OfOrientedEdge &aEdgeList);
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfOrientedEdge EdgeList() const;
		%feature("autodoc", "1");
		Handle_StepShape_OrientedEdge EdgeListValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer NbEdgeList() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_EdgeLoop {
	Handle_StepShape_EdgeLoop GetHandle() {
	return *(Handle_StepShape_EdgeLoop*) &$self;
	}
};
%extend StepShape_EdgeLoop {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_EdgeLoop::~StepShape_EdgeLoop %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_EdgeLoop {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_Array1OfEdge;
class StepShape_Array1OfEdge {
	public:
		%feature("autodoc", "1");
		StepShape_Array1OfEdge(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepShape_Array1OfEdge(const Handle_StepShape_Edge &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Handle_StepShape_Edge &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepShape_Array1OfEdge & Assign(const StepShape_Array1OfEdge &Other);
		%feature("autodoc", "1");
		const StepShape_Array1OfEdge & operator=(const StepShape_Array1OfEdge &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StepShape_Edge &Value);
		%feature("autodoc", "1");
		const Handle_StepShape_Edge & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_StepShape_Edge & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_StepShape_Edge & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_StepShape_Edge & operator()(const Standard_Integer Index);

};
%feature("shadow") StepShape_Array1OfEdge::~StepShape_Array1OfEdge %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_Array1OfEdge {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_GeometricallyBoundedSurfaceShapeRepresentation;
class StepShape_GeometricallyBoundedSurfaceShapeRepresentation : public StepShape_ShapeRepresentation {
	public:
		%feature("autodoc", "1");
		StepShape_GeometricallyBoundedSurfaceShapeRepresentation();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_GeometricallyBoundedSurfaceShapeRepresentation {
	Handle_StepShape_GeometricallyBoundedSurfaceShapeRepresentation GetHandle() {
	return *(Handle_StepShape_GeometricallyBoundedSurfaceShapeRepresentation*) &$self;
	}
};
%extend StepShape_GeometricallyBoundedSurfaceShapeRepresentation {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_GeometricallyBoundedSurfaceShapeRepresentation::~StepShape_GeometricallyBoundedSurfaceShapeRepresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_GeometricallyBoundedSurfaceShapeRepresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem;
class StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem : public StepRepr_RepresentationItem {
	public:
		%feature("autodoc", "1");
		StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepBasic_MeasureValueMember &aValueComponent, const StepBasic_Unit &aUnitComponent, const Handle_StepShape_HArray1OfValueQualifier &qualifiers);
		%feature("autodoc", "1");
		void SetMeasure(const Handle_StepBasic_MeasureWithUnit &Measure);
		%feature("autodoc", "1");
		Handle_StepBasic_MeasureWithUnit Measure() const;
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfValueQualifier Qualifiers() const;
		%feature("autodoc", "1");
		Standard_Integer NbQualifiers() const;
		%feature("autodoc", "1");
		void SetQualifiers(const Handle_StepShape_HArray1OfValueQualifier &qualifiers);
		%feature("autodoc", "1");
		StepShape_ValueQualifier QualifiersValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		void SetQualifiersValue(const Standard_Integer num, const StepShape_ValueQualifier &aqualifier);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem {
	Handle_StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem GetHandle() {
	return *(Handle_StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem*) &$self;
	}
};
%extend StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem::~StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_HArray1OfOrientedEdge;
class StepShape_HArray1OfOrientedEdge : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepShape_HArray1OfOrientedEdge(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepShape_HArray1OfOrientedEdge(const Standard_Integer Low, const Standard_Integer Up, const Handle_StepShape_OrientedEdge &V);
		%feature("autodoc", "1");
		void Init(const Handle_StepShape_OrientedEdge &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StepShape_OrientedEdge &Value);
		%feature("autodoc", "1");
		const Handle_StepShape_OrientedEdge & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_StepShape_OrientedEdge & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const StepShape_Array1OfOrientedEdge & Array1() const;
		%feature("autodoc", "1");
		StepShape_Array1OfOrientedEdge & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_HArray1OfOrientedEdge {
	Handle_StepShape_HArray1OfOrientedEdge GetHandle() {
	return *(Handle_StepShape_HArray1OfOrientedEdge*) &$self;
	}
};
%extend StepShape_HArray1OfOrientedEdge {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_HArray1OfOrientedEdge::~StepShape_HArray1OfOrientedEdge %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_HArray1OfOrientedEdge {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_ConnectedFaceShapeRepresentation;
class StepShape_ConnectedFaceShapeRepresentation : public StepRepr_Representation {
	public:
		%feature("autodoc", "1");
		StepShape_ConnectedFaceShapeRepresentation();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_ConnectedFaceShapeRepresentation {
	Handle_StepShape_ConnectedFaceShapeRepresentation GetHandle() {
	return *(Handle_StepShape_ConnectedFaceShapeRepresentation*) &$self;
	}
};
%extend StepShape_ConnectedFaceShapeRepresentation {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_ConnectedFaceShapeRepresentation::~StepShape_ConnectedFaceShapeRepresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_ConnectedFaceShapeRepresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_GeometricCurveSet;
class StepShape_GeometricCurveSet : public StepShape_GeometricSet {
	public:
		%feature("autodoc", "1");
		StepShape_GeometricCurveSet();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_GeometricCurveSet {
	Handle_StepShape_GeometricCurveSet GetHandle() {
	return *(Handle_StepShape_GeometricCurveSet*) &$self;
	}
};
%extend StepShape_GeometricCurveSet {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_GeometricCurveSet::~StepShape_GeometricCurveSet %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_GeometricCurveSet {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_AdvancedBrepShapeRepresentation;
class StepShape_AdvancedBrepShapeRepresentation : public StepShape_ShapeRepresentation {
	public:
		%feature("autodoc", "1");
		StepShape_AdvancedBrepShapeRepresentation();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_AdvancedBrepShapeRepresentation {
	Handle_StepShape_AdvancedBrepShapeRepresentation GetHandle() {
	return *(Handle_StepShape_AdvancedBrepShapeRepresentation*) &$self;
	}
};
%extend StepShape_AdvancedBrepShapeRepresentation {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_AdvancedBrepShapeRepresentation::~StepShape_AdvancedBrepShapeRepresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_AdvancedBrepShapeRepresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_AngularSize;
class StepShape_AngularSize : public StepShape_DimensionalSize {
	public:
		%feature("autodoc", "1");
		StepShape_AngularSize();
		%feature("autodoc", "1");
		void Init(const Handle_StepRepr_ShapeAspect &aDimensionalSize_AppliesTo, const Handle_TCollection_HAsciiString &aDimensionalSize_Name, const StepShape_AngleRelator aAngleSelection);
		%feature("autodoc", "1");
		StepShape_AngleRelator AngleSelection() const;
		%feature("autodoc", "1");
		void SetAngleSelection(const StepShape_AngleRelator AngleSelection);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_AngularSize {
	Handle_StepShape_AngularSize GetHandle() {
	return *(Handle_StepShape_AngularSize*) &$self;
	}
};
%extend StepShape_AngularSize {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_AngularSize::~StepShape_AngularSize %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_AngularSize {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_Array1OfConnectedFaceSet;
class StepShape_Array1OfConnectedFaceSet {
	public:
		%feature("autodoc", "1");
		StepShape_Array1OfConnectedFaceSet(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepShape_Array1OfConnectedFaceSet(const Handle_StepShape_ConnectedFaceSet &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Handle_StepShape_ConnectedFaceSet &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepShape_Array1OfConnectedFaceSet & Assign(const StepShape_Array1OfConnectedFaceSet &Other);
		%feature("autodoc", "1");
		const StepShape_Array1OfConnectedFaceSet & operator=(const StepShape_Array1OfConnectedFaceSet &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StepShape_ConnectedFaceSet &Value);
		%feature("autodoc", "1");
		const Handle_StepShape_ConnectedFaceSet & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_StepShape_ConnectedFaceSet & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_StepShape_ConnectedFaceSet & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_StepShape_ConnectedFaceSet & operator()(const Standard_Integer Index);

};
%feature("shadow") StepShape_Array1OfConnectedFaceSet::~StepShape_Array1OfConnectedFaceSet %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_Array1OfConnectedFaceSet {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_VertexLoop;
class StepShape_VertexLoop : public StepShape_Loop {
	public:
		%feature("autodoc", "1");
		StepShape_VertexLoop();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepShape_Vertex &aLoopVertex);
		%feature("autodoc", "1");
		void SetLoopVertex(const Handle_StepShape_Vertex &aLoopVertex);
		%feature("autodoc", "1");
		Handle_StepShape_Vertex LoopVertex() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_VertexLoop {
	Handle_StepShape_VertexLoop GetHandle() {
	return *(Handle_StepShape_VertexLoop*) &$self;
	}
};
%extend StepShape_VertexLoop {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_VertexLoop::~StepShape_VertexLoop %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_VertexLoop {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_HArray1OfGeometricSetSelect;
class StepShape_HArray1OfGeometricSetSelect : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepShape_HArray1OfGeometricSetSelect(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepShape_HArray1OfGeometricSetSelect(const Standard_Integer Low, const Standard_Integer Up, const StepShape_GeometricSetSelect &V);
		%feature("autodoc", "1");
		void Init(const StepShape_GeometricSetSelect &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepShape_GeometricSetSelect &Value);
		%feature("autodoc", "1");
		const StepShape_GeometricSetSelect & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepShape_GeometricSetSelect & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const StepShape_Array1OfGeometricSetSelect & Array1() const;
		%feature("autodoc", "1");
		StepShape_Array1OfGeometricSetSelect & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_HArray1OfGeometricSetSelect {
	Handle_StepShape_HArray1OfGeometricSetSelect GetHandle() {
	return *(Handle_StepShape_HArray1OfGeometricSetSelect*) &$self;
	}
};
%extend StepShape_HArray1OfGeometricSetSelect {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_HArray1OfGeometricSetSelect::~StepShape_HArray1OfGeometricSetSelect %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_HArray1OfGeometricSetSelect {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_ShapeDefinitionRepresentation;
class StepShape_ShapeDefinitionRepresentation : public StepRepr_PropertyDefinitionRepresentation {
	public:
		%feature("autodoc", "1");
		StepShape_ShapeDefinitionRepresentation();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_ShapeDefinitionRepresentation {
	Handle_StepShape_ShapeDefinitionRepresentation GetHandle() {
	return *(Handle_StepShape_ShapeDefinitionRepresentation*) &$self;
	}
};
%extend StepShape_ShapeDefinitionRepresentation {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_ShapeDefinitionRepresentation::~StepShape_ShapeDefinitionRepresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_ShapeDefinitionRepresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_HArray1OfShell;
class StepShape_HArray1OfShell : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepShape_HArray1OfShell(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepShape_HArray1OfShell(const Standard_Integer Low, const Standard_Integer Up, const StepShape_Shell &V);
		%feature("autodoc", "1");
		void Init(const StepShape_Shell &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepShape_Shell &Value);
		%feature("autodoc", "1");
		const StepShape_Shell & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepShape_Shell & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const StepShape_Array1OfShell & Array1() const;
		%feature("autodoc", "1");
		StepShape_Array1OfShell & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_HArray1OfShell {
	Handle_StepShape_HArray1OfShell GetHandle() {
	return *(Handle_StepShape_HArray1OfShell*) &$self;
	}
};
%extend StepShape_HArray1OfShell {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_HArray1OfShell::~StepShape_HArray1OfShell %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_HArray1OfShell {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_EdgeBasedWireframeShapeRepresentation;
class StepShape_EdgeBasedWireframeShapeRepresentation : public StepShape_ShapeRepresentation {
	public:
		%feature("autodoc", "1");
		StepShape_EdgeBasedWireframeShapeRepresentation();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_EdgeBasedWireframeShapeRepresentation {
	Handle_StepShape_EdgeBasedWireframeShapeRepresentation GetHandle() {
	return *(Handle_StepShape_EdgeBasedWireframeShapeRepresentation*) &$self;
	}
};
%extend StepShape_EdgeBasedWireframeShapeRepresentation {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_EdgeBasedWireframeShapeRepresentation::~StepShape_EdgeBasedWireframeShapeRepresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_EdgeBasedWireframeShapeRepresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_FacetedBrep;
class StepShape_FacetedBrep : public StepShape_ManifoldSolidBrep {
	public:
		%feature("autodoc", "1");
		StepShape_FacetedBrep();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_FacetedBrep {
	Handle_StepShape_FacetedBrep GetHandle() {
	return *(Handle_StepShape_FacetedBrep*) &$self;
	}
};
%extend StepShape_FacetedBrep {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_FacetedBrep::~StepShape_FacetedBrep %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_FacetedBrep {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_VertexPoint;
class StepShape_VertexPoint : public StepShape_Vertex {
	public:
		%feature("autodoc", "1");
		StepShape_VertexPoint();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepGeom_Point &aVertexGeometry);
		%feature("autodoc", "1");
		void SetVertexGeometry(const Handle_StepGeom_Point &aVertexGeometry);
		%feature("autodoc", "1");
		Handle_StepGeom_Point VertexGeometry() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_VertexPoint {
	Handle_StepShape_VertexPoint GetHandle() {
	return *(Handle_StepShape_VertexPoint*) &$self;
	}
};
%extend StepShape_VertexPoint {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_VertexPoint::~StepShape_VertexPoint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_VertexPoint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_HArray1OfConnectedEdgeSet;
class StepShape_HArray1OfConnectedEdgeSet : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepShape_HArray1OfConnectedEdgeSet(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepShape_HArray1OfConnectedEdgeSet(const Standard_Integer Low, const Standard_Integer Up, const Handle_StepShape_ConnectedEdgeSet &V);
		%feature("autodoc", "1");
		void Init(const Handle_StepShape_ConnectedEdgeSet &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StepShape_ConnectedEdgeSet &Value);
		%feature("autodoc", "1");
		const Handle_StepShape_ConnectedEdgeSet & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_StepShape_ConnectedEdgeSet & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const StepShape_Array1OfConnectedEdgeSet & Array1() const;
		%feature("autodoc", "1");
		StepShape_Array1OfConnectedEdgeSet & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_HArray1OfConnectedEdgeSet {
	Handle_StepShape_HArray1OfConnectedEdgeSet GetHandle() {
	return *(Handle_StepShape_HArray1OfConnectedEdgeSet*) &$self;
	}
};
%extend StepShape_HArray1OfConnectedEdgeSet {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_HArray1OfConnectedEdgeSet::~StepShape_HArray1OfConnectedEdgeSet %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_HArray1OfConnectedEdgeSet {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_CsgPrimitive;
class StepShape_CsgPrimitive : public StepData_SelectType {
	public:
		%feature("autodoc", "1");
		StepShape_CsgPrimitive();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseNum(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Handle_StepShape_Sphere Sphere() const;
		%feature("autodoc", "1");
		Handle_StepShape_Block Block() const;
		%feature("autodoc", "1");
		Handle_StepShape_RightAngularWedge RightAngularWedge() const;
		%feature("autodoc", "1");
		Handle_StepShape_Torus Torus() const;
		%feature("autodoc", "1");
		Handle_StepShape_RightCircularCone RightCircularCone() const;
		%feature("autodoc", "1");
		Handle_StepShape_RightCircularCylinder RightCircularCylinder() const;

};
%feature("shadow") StepShape_CsgPrimitive::~StepShape_CsgPrimitive %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_CsgPrimitive {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_ManifoldSurfaceShapeRepresentation;
class StepShape_ManifoldSurfaceShapeRepresentation : public StepShape_ShapeRepresentation {
	public:
		%feature("autodoc", "1");
		StepShape_ManifoldSurfaceShapeRepresentation();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_ManifoldSurfaceShapeRepresentation {
	Handle_StepShape_ManifoldSurfaceShapeRepresentation GetHandle() {
	return *(Handle_StepShape_ManifoldSurfaceShapeRepresentation*) &$self;
	}
};
%extend StepShape_ManifoldSurfaceShapeRepresentation {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_ManifoldSurfaceShapeRepresentation::~StepShape_ManifoldSurfaceShapeRepresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_ManifoldSurfaceShapeRepresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_Torus;
class StepShape_Torus : public StepGeom_GeometricRepresentationItem {
	public:
		%feature("autodoc", "1");
		StepShape_Torus();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepGeom_Axis1Placement &aPosition, const Standard_Real aMajorRadius, const Standard_Real aMinorRadius);
		%feature("autodoc", "1");
		void SetPosition(const Handle_StepGeom_Axis1Placement &aPosition);
		%feature("autodoc", "1");
		Handle_StepGeom_Axis1Placement Position() const;
		%feature("autodoc", "1");
		void SetMajorRadius(const Standard_Real aMajorRadius);
		%feature("autodoc", "1");
		Standard_Real MajorRadius() const;
		%feature("autodoc", "1");
		void SetMinorRadius(const Standard_Real aMinorRadius);
		%feature("autodoc", "1");
		Standard_Real MinorRadius() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_Torus {
	Handle_StepShape_Torus GetHandle() {
	return *(Handle_StepShape_Torus*) &$self;
	}
};
%extend StepShape_Torus {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_Torus::~StepShape_Torus %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_Torus {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_DimensionalSizeWithPath;
class StepShape_DimensionalSizeWithPath : public StepShape_DimensionalSize {
	public:
		%feature("autodoc", "1");
		StepShape_DimensionalSizeWithPath();
		%feature("autodoc", "1");
		void Init(const Handle_StepRepr_ShapeAspect &aDimensionalSize_AppliesTo, const Handle_TCollection_HAsciiString &aDimensionalSize_Name, const Handle_StepRepr_ShapeAspect &aPath);
		%feature("autodoc", "1");
		Handle_StepRepr_ShapeAspect Path() const;
		%feature("autodoc", "1");
		void SetPath(const Handle_StepRepr_ShapeAspect &Path);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_DimensionalSizeWithPath {
	Handle_StepShape_DimensionalSizeWithPath GetHandle() {
	return *(Handle_StepShape_DimensionalSizeWithPath*) &$self;
	}
};
%extend StepShape_DimensionalSizeWithPath {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_DimensionalSizeWithPath::~StepShape_DimensionalSizeWithPath %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_DimensionalSizeWithPath {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_FaceOuterBound;
class StepShape_FaceOuterBound : public StepShape_FaceBound {
	public:
		%feature("autodoc", "1");
		StepShape_FaceOuterBound();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_FaceOuterBound {
	Handle_StepShape_FaceOuterBound GetHandle() {
	return *(Handle_StepShape_FaceOuterBound*) &$self;
	}
};
%extend StepShape_FaceOuterBound {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_FaceOuterBound::~StepShape_FaceOuterBound %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_FaceOuterBound {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_HArray1OfConnectedFaceSet;
class StepShape_HArray1OfConnectedFaceSet : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepShape_HArray1OfConnectedFaceSet(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepShape_HArray1OfConnectedFaceSet(const Standard_Integer Low, const Standard_Integer Up, const Handle_StepShape_ConnectedFaceSet &V);
		%feature("autodoc", "1");
		void Init(const Handle_StepShape_ConnectedFaceSet &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StepShape_ConnectedFaceSet &Value);
		%feature("autodoc", "1");
		const Handle_StepShape_ConnectedFaceSet & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_StepShape_ConnectedFaceSet & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const StepShape_Array1OfConnectedFaceSet & Array1() const;
		%feature("autodoc", "1");
		StepShape_Array1OfConnectedFaceSet & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_HArray1OfConnectedFaceSet {
	Handle_StepShape_HArray1OfConnectedFaceSet GetHandle() {
	return *(Handle_StepShape_HArray1OfConnectedFaceSet*) &$self;
	}
};
%extend StepShape_HArray1OfConnectedFaceSet {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_HArray1OfConnectedFaceSet::~StepShape_HArray1OfConnectedFaceSet %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_HArray1OfConnectedFaceSet {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_Block;
class StepShape_Block : public StepGeom_GeometricRepresentationItem {
	public:
		%feature("autodoc", "1");
		StepShape_Block();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepGeom_Axis2Placement3d &aPosition, const Standard_Real aX, const Standard_Real aY, const Standard_Real aZ);
		%feature("autodoc", "1");
		void SetPosition(const Handle_StepGeom_Axis2Placement3d &aPosition);
		%feature("autodoc", "1");
		Handle_StepGeom_Axis2Placement3d Position() const;
		%feature("autodoc", "1");
		void SetX(const Standard_Real aX);
		%feature("autodoc", "1");
		Standard_Real X() const;
		%feature("autodoc", "1");
		void SetY(const Standard_Real aY);
		%feature("autodoc", "1");
		Standard_Real Y() const;
		%feature("autodoc", "1");
		void SetZ(const Standard_Real aZ);
		%feature("autodoc", "1");
		Standard_Real Z() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_Block {
	Handle_StepShape_Block GetHandle() {
	return *(Handle_StepShape_Block*) &$self;
	}
};
%extend StepShape_Block {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_Block::~StepShape_Block %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_Block {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_DefinitionalRepresentationAndShapeRepresentation;
class StepShape_DefinitionalRepresentationAndShapeRepresentation : public StepRepr_DefinitionalRepresentation {
	public:
		%feature("autodoc", "1");
		StepShape_DefinitionalRepresentationAndShapeRepresentation();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_DefinitionalRepresentationAndShapeRepresentation {
	Handle_StepShape_DefinitionalRepresentationAndShapeRepresentation GetHandle() {
	return *(Handle_StepShape_DefinitionalRepresentationAndShapeRepresentation*) &$self;
	}
};
%extend StepShape_DefinitionalRepresentationAndShapeRepresentation {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_DefinitionalRepresentationAndShapeRepresentation::~StepShape_DefinitionalRepresentationAndShapeRepresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_DefinitionalRepresentationAndShapeRepresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_ToleranceMethodDefinition;
class StepShape_ToleranceMethodDefinition : public StepData_SelectType {
	public:
		%feature("autodoc", "1");
		StepShape_ToleranceMethodDefinition();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseNum(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Handle_StepShape_ToleranceValue ToleranceValue() const;
		%feature("autodoc", "1");
		Handle_StepShape_LimitsAndFits LimitsAndFits() const;

};
%feature("shadow") StepShape_ToleranceMethodDefinition::~StepShape_ToleranceMethodDefinition %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_ToleranceMethodDefinition {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_ExtrudedAreaSolid;
class StepShape_ExtrudedAreaSolid : public StepShape_SweptAreaSolid {
	public:
		%feature("autodoc", "1");
		StepShape_ExtrudedAreaSolid();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepGeom_CurveBoundedSurface &aSweptArea);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepGeom_CurveBoundedSurface &aSweptArea, const Handle_StepGeom_Direction &aExtrudedDirection, const Standard_Real aDepth);
		%feature("autodoc", "1");
		void SetExtrudedDirection(const Handle_StepGeom_Direction &aExtrudedDirection);
		%feature("autodoc", "1");
		Handle_StepGeom_Direction ExtrudedDirection() const;
		%feature("autodoc", "1");
		void SetDepth(const Standard_Real aDepth);
		%feature("autodoc", "1");
		Standard_Real Depth() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_ExtrudedAreaSolid {
	Handle_StepShape_ExtrudedAreaSolid GetHandle() {
	return *(Handle_StepShape_ExtrudedAreaSolid*) &$self;
	}
};
%extend StepShape_ExtrudedAreaSolid {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_ExtrudedAreaSolid::~StepShape_ExtrudedAreaSolid %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_ExtrudedAreaSolid {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_SeamEdge;
class StepShape_SeamEdge : public StepShape_OrientedEdge {
	public:
		%feature("autodoc", "1");
		StepShape_SeamEdge();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aRepresentationItem_Name, const Handle_StepShape_Edge &aOrientedEdge_EdgeElement, const Standard_Boolean aOrientedEdge_Orientation, const Handle_StepGeom_Pcurve &aPcurveReference);
		%feature("autodoc", "1");
		Handle_StepGeom_Pcurve PcurveReference() const;
		%feature("autodoc", "1");
		void SetPcurveReference(const Handle_StepGeom_Pcurve &PcurveReference);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_SeamEdge {
	Handle_StepShape_SeamEdge GetHandle() {
	return *(Handle_StepShape_SeamEdge*) &$self;
	}
};
%extend StepShape_SeamEdge {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_SeamEdge::~StepShape_SeamEdge %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_SeamEdge {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_TypeQualifier;
class StepShape_TypeQualifier : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepShape_TypeQualifier();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &name);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Name() const;
		%feature("autodoc", "1");
		void SetName(const Handle_TCollection_HAsciiString &name);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_TypeQualifier {
	Handle_StepShape_TypeQualifier GetHandle() {
	return *(Handle_StepShape_TypeQualifier*) &$self;
	}
};
%extend StepShape_TypeQualifier {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_TypeQualifier::~StepShape_TypeQualifier %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_TypeQualifier {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_DimensionalLocationWithPath;
class StepShape_DimensionalLocationWithPath : public StepShape_DimensionalLocation {
	public:
		%feature("autodoc", "1");
		StepShape_DimensionalLocationWithPath();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aShapeAspectRelationship_Name, const Standard_Boolean hasShapeAspectRelationship_Description, const Handle_TCollection_HAsciiString &aShapeAspectRelationship_Description, const Handle_StepRepr_ShapeAspect &aShapeAspectRelationship_RelatingShapeAspect, const Handle_StepRepr_ShapeAspect &aShapeAspectRelationship_RelatedShapeAspect, const Handle_StepRepr_ShapeAspect &aPath);
		%feature("autodoc", "1");
		Handle_StepRepr_ShapeAspect Path() const;
		%feature("autodoc", "1");
		void SetPath(const Handle_StepRepr_ShapeAspect &Path);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_DimensionalLocationWithPath {
	Handle_StepShape_DimensionalLocationWithPath GetHandle() {
	return *(Handle_StepShape_DimensionalLocationWithPath*) &$self;
	}
};
%extend StepShape_DimensionalLocationWithPath {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_DimensionalLocationWithPath::~StepShape_DimensionalLocationWithPath %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_DimensionalLocationWithPath {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_MeasureQualification;
class StepShape_MeasureQualification : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepShape_MeasureQualification();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &name, const Handle_TCollection_HAsciiString &description, const Handle_StepBasic_MeasureWithUnit &qualified_measure, const Handle_StepShape_HArray1OfValueQualifier &qualifiers);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Name() const;
		%feature("autodoc", "1");
		void SetName(const Handle_TCollection_HAsciiString &name);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Description() const;
		%feature("autodoc", "1");
		void SetDescription(const Handle_TCollection_HAsciiString &description);
		%feature("autodoc", "1");
		Handle_StepBasic_MeasureWithUnit QualifiedMeasure() const;
		%feature("autodoc", "1");
		void SetQualifiedMeasure(const Handle_StepBasic_MeasureWithUnit &qualified_measure);
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfValueQualifier Qualifiers() const;
		%feature("autodoc", "1");
		Standard_Integer NbQualifiers() const;
		%feature("autodoc", "1");
		void SetQualifiers(const Handle_StepShape_HArray1OfValueQualifier &qualifiers);
		%feature("autodoc", "1");
		StepShape_ValueQualifier QualifiersValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		void SetQualifiersValue(const Standard_Integer num, const StepShape_ValueQualifier &aqualifier);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_MeasureQualification {
	Handle_StepShape_MeasureQualification GetHandle() {
	return *(Handle_StepShape_MeasureQualification*) &$self;
	}
};
%extend StepShape_MeasureQualification {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_MeasureQualification::~StepShape_MeasureQualification %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_MeasureQualification {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_ConnectedFaceSubSet;
class StepShape_ConnectedFaceSubSet : public StepShape_ConnectedFaceSet {
	public:
		%feature("autodoc", "1");
		StepShape_ConnectedFaceSubSet();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aRepresentationItem_Name, const Handle_StepShape_HArray1OfFace &aConnectedFaceSet_CfsFaces, const Handle_StepShape_ConnectedFaceSet &aParentFaceSet);
		%feature("autodoc", "1");
		Handle_StepShape_ConnectedFaceSet ParentFaceSet() const;
		%feature("autodoc", "1");
		void SetParentFaceSet(const Handle_StepShape_ConnectedFaceSet &ParentFaceSet);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_ConnectedFaceSubSet {
	Handle_StepShape_ConnectedFaceSubSet GetHandle() {
	return *(Handle_StepShape_ConnectedFaceSubSet*) &$self;
	}
};
%extend StepShape_ConnectedFaceSubSet {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_ConnectedFaceSubSet::~StepShape_ConnectedFaceSubSet %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_ConnectedFaceSubSet {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_AngularLocation;
class StepShape_AngularLocation : public StepShape_DimensionalLocation {
	public:
		%feature("autodoc", "1");
		StepShape_AngularLocation();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aShapeAspectRelationship_Name, const Standard_Boolean hasShapeAspectRelationship_Description, const Handle_TCollection_HAsciiString &aShapeAspectRelationship_Description, const Handle_StepRepr_ShapeAspect &aShapeAspectRelationship_RelatingShapeAspect, const Handle_StepRepr_ShapeAspect &aShapeAspectRelationship_RelatedShapeAspect, const StepShape_AngleRelator aAngleSelection);
		%feature("autodoc", "1");
		StepShape_AngleRelator AngleSelection() const;
		%feature("autodoc", "1");
		void SetAngleSelection(const StepShape_AngleRelator AngleSelection);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_AngularLocation {
	Handle_StepShape_AngularLocation GetHandle() {
	return *(Handle_StepShape_AngularLocation*) &$self;
	}
};
%extend StepShape_AngularLocation {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_AngularLocation::~StepShape_AngularLocation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_AngularLocation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_SolidReplica;
class StepShape_SolidReplica : public StepShape_SolidModel {
	public:
		%feature("autodoc", "1");
		StepShape_SolidReplica();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepShape_SolidModel &aParentSolid, const Handle_StepGeom_CartesianTransformationOperator3d &aTransformation);
		%feature("autodoc", "1");
		void SetParentSolid(const Handle_StepShape_SolidModel &aParentSolid);
		%feature("autodoc", "1");
		Handle_StepShape_SolidModel ParentSolid() const;
		%feature("autodoc", "1");
		void SetTransformation(const Handle_StepGeom_CartesianTransformationOperator3d &aTransformation);
		%feature("autodoc", "1");
		Handle_StepGeom_CartesianTransformationOperator3d Transformation() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_SolidReplica {
	Handle_StepShape_SolidReplica GetHandle() {
	return *(Handle_StepShape_SolidReplica*) &$self;
	}
};
%extend StepShape_SolidReplica {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_SolidReplica::~StepShape_SolidReplica %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_SolidReplica {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_OrientedPath;
class StepShape_OrientedPath : public StepShape_Path {
	public:
		%feature("autodoc", "1");
		StepShape_OrientedPath();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepShape_HArray1OfOrientedEdge &aEdgeList);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepShape_EdgeLoop &aPathElement, const Standard_Boolean aOrientation);
		%feature("autodoc", "1");
		void SetPathElement(const Handle_StepShape_EdgeLoop &aPathElement);
		%feature("autodoc", "1");
		Handle_StepShape_EdgeLoop PathElement() const;
		%feature("autodoc", "1");
		void SetOrientation(const Standard_Boolean aOrientation);
		%feature("autodoc", "1");
		Standard_Boolean Orientation() const;
		%feature("autodoc", "1");
		virtual		void SetEdgeList(const Handle_StepShape_HArray1OfOrientedEdge &aEdgeList);
		%feature("autodoc", "1");
		virtual		Handle_StepShape_HArray1OfOrientedEdge EdgeList() const;
		%feature("autodoc", "1");
		virtual		Handle_StepShape_OrientedEdge EdgeListValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbEdgeList() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_OrientedPath {
	Handle_StepShape_OrientedPath GetHandle() {
	return *(Handle_StepShape_OrientedPath*) &$self;
	}
};
%extend StepShape_OrientedPath {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_OrientedPath::~StepShape_OrientedPath %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_OrientedPath {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_RightCircularCylinder;
class StepShape_RightCircularCylinder : public StepGeom_GeometricRepresentationItem {
	public:
		%feature("autodoc", "1");
		StepShape_RightCircularCylinder();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepGeom_Axis1Placement &aPosition, const Standard_Real aHeight, const Standard_Real aRadius);
		%feature("autodoc", "1");
		void SetPosition(const Handle_StepGeom_Axis1Placement &aPosition);
		%feature("autodoc", "1");
		Handle_StepGeom_Axis1Placement Position() const;
		%feature("autodoc", "1");
		void SetHeight(const Standard_Real aHeight);
		%feature("autodoc", "1");
		Standard_Real Height() const;
		%feature("autodoc", "1");
		void SetRadius(const Standard_Real aRadius);
		%feature("autodoc", "1");
		Standard_Real Radius() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_RightCircularCylinder {
	Handle_StepShape_RightCircularCylinder GetHandle() {
	return *(Handle_StepShape_RightCircularCylinder*) &$self;
	}
};
%extend StepShape_RightCircularCylinder {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_RightCircularCylinder::~StepShape_RightCircularCylinder %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_RightCircularCylinder {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_Array1OfGeometricSetSelect;
class StepShape_Array1OfGeometricSetSelect {
	public:
		%feature("autodoc", "1");
		StepShape_Array1OfGeometricSetSelect(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepShape_Array1OfGeometricSetSelect(const StepShape_GeometricSetSelect &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const StepShape_GeometricSetSelect &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepShape_Array1OfGeometricSetSelect & Assign(const StepShape_Array1OfGeometricSetSelect &Other);
		%feature("autodoc", "1");
		const StepShape_Array1OfGeometricSetSelect & operator=(const StepShape_Array1OfGeometricSetSelect &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepShape_GeometricSetSelect &Value);
		%feature("autodoc", "1");
		const StepShape_GeometricSetSelect & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const StepShape_GeometricSetSelect & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepShape_GeometricSetSelect & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		StepShape_GeometricSetSelect & operator()(const Standard_Integer Index);

};
%feature("shadow") StepShape_Array1OfGeometricSetSelect::~StepShape_Array1OfGeometricSetSelect %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_Array1OfGeometricSetSelect {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_HArray1OfEdge;
class StepShape_HArray1OfEdge : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepShape_HArray1OfEdge(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepShape_HArray1OfEdge(const Standard_Integer Low, const Standard_Integer Up, const Handle_StepShape_Edge &V);
		%feature("autodoc", "1");
		void Init(const Handle_StepShape_Edge &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StepShape_Edge &Value);
		%feature("autodoc", "1");
		const Handle_StepShape_Edge & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_StepShape_Edge & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const StepShape_Array1OfEdge & Array1() const;
		%feature("autodoc", "1");
		StepShape_Array1OfEdge & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_HArray1OfEdge {
	Handle_StepShape_HArray1OfEdge GetHandle() {
	return *(Handle_StepShape_HArray1OfEdge*) &$self;
	}
};
%extend StepShape_HArray1OfEdge {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_HArray1OfEdge::~StepShape_HArray1OfEdge %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_HArray1OfEdge {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepShape_ShellBasedSurfaceModel;
class StepShape_ShellBasedSurfaceModel : public StepGeom_GeometricRepresentationItem {
	public:
		%feature("autodoc", "1");
		StepShape_ShellBasedSurfaceModel();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepShape_HArray1OfShell &aSbsmBoundary);
		%feature("autodoc", "1");
		void SetSbsmBoundary(const Handle_StepShape_HArray1OfShell &aSbsmBoundary);
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfShell SbsmBoundary() const;
		%feature("autodoc", "1");
		StepShape_Shell SbsmBoundaryValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer NbSbsmBoundary() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_ShellBasedSurfaceModel {
	Handle_StepShape_ShellBasedSurfaceModel GetHandle() {
	return *(Handle_StepShape_ShellBasedSurfaceModel*) &$self;
	}
};
%extend StepShape_ShellBasedSurfaceModel {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StepShape_ShellBasedSurfaceModel::~StepShape_ShellBasedSurfaceModel %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepShape_ShellBasedSurfaceModel {
	void _kill_pointed() {
		delete $self;
	}
};
