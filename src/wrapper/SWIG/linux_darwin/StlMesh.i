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
%module StlMesh

%include StlMesh_renames.i
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%pythoncode {
import GarbageCollector
};

%include StlMesh_dependencies.i


%include StlMesh_headers.i




%nodefaultctor Handle_StlMesh_MeshDomain;
class Handle_StlMesh_MeshDomain : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StlMesh_MeshDomain();
		%feature("autodoc", "1");
		Handle_StlMesh_MeshDomain(const Handle_StlMesh_MeshDomain &aHandle);
		%feature("autodoc", "1");
		Handle_StlMesh_MeshDomain(const StlMesh_MeshDomain *anItem);
		%feature("autodoc", "1");
		Handle_StlMesh_MeshDomain & operator=(const Handle_StlMesh_MeshDomain &aHandle);
		%feature("autodoc", "1");
		Handle_StlMesh_MeshDomain & operator=(const StlMesh_MeshDomain *anItem);
		%feature("autodoc", "1");
		Handle_StlMesh_MeshDomain const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StlMesh_MeshDomain {
	StlMesh_MeshDomain* GetObject() {
	return (StlMesh_MeshDomain*)$self->Access();
	}
};
%feature("shadow") Handle_StlMesh_MeshDomain::~Handle_StlMesh_MeshDomain %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Handle_StlMesh_Mesh;
class Handle_StlMesh_Mesh : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StlMesh_Mesh();
		%feature("autodoc", "1");
		Handle_StlMesh_Mesh(const Handle_StlMesh_Mesh &aHandle);
		%feature("autodoc", "1");
		Handle_StlMesh_Mesh(const StlMesh_Mesh *anItem);
		%feature("autodoc", "1");
		Handle_StlMesh_Mesh & operator=(const Handle_StlMesh_Mesh &aHandle);
		%feature("autodoc", "1");
		Handle_StlMesh_Mesh & operator=(const StlMesh_Mesh *anItem);
		%feature("autodoc", "1");
		Handle_StlMesh_Mesh const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StlMesh_Mesh {
	StlMesh_Mesh* GetObject() {
	return (StlMesh_Mesh*)$self->Access();
	}
};
%feature("shadow") Handle_StlMesh_Mesh::~Handle_StlMesh_Mesh %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Handle_StlMesh_MeshTriangle;
class Handle_StlMesh_MeshTriangle : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StlMesh_MeshTriangle();
		%feature("autodoc", "1");
		Handle_StlMesh_MeshTriangle(const Handle_StlMesh_MeshTriangle &aHandle);
		%feature("autodoc", "1");
		Handle_StlMesh_MeshTriangle(const StlMesh_MeshTriangle *anItem);
		%feature("autodoc", "1");
		Handle_StlMesh_MeshTriangle & operator=(const Handle_StlMesh_MeshTriangle &aHandle);
		%feature("autodoc", "1");
		Handle_StlMesh_MeshTriangle & operator=(const StlMesh_MeshTriangle *anItem);
		%feature("autodoc", "1");
		Handle_StlMesh_MeshTriangle const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StlMesh_MeshTriangle {
	StlMesh_MeshTriangle* GetObject() {
	return (StlMesh_MeshTriangle*)$self->Access();
	}
};
%feature("shadow") Handle_StlMesh_MeshTriangle::~Handle_StlMesh_MeshTriangle %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Handle_StlMesh_SequenceNodeOfSequenceOfMeshDomain;
class Handle_StlMesh_SequenceNodeOfSequenceOfMeshDomain : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_StlMesh_SequenceNodeOfSequenceOfMeshDomain();
		%feature("autodoc", "1");
		Handle_StlMesh_SequenceNodeOfSequenceOfMeshDomain(const Handle_StlMesh_SequenceNodeOfSequenceOfMeshDomain &aHandle);
		%feature("autodoc", "1");
		Handle_StlMesh_SequenceNodeOfSequenceOfMeshDomain(const StlMesh_SequenceNodeOfSequenceOfMeshDomain *anItem);
		%feature("autodoc", "1");
		Handle_StlMesh_SequenceNodeOfSequenceOfMeshDomain & operator=(const Handle_StlMesh_SequenceNodeOfSequenceOfMeshDomain &aHandle);
		%feature("autodoc", "1");
		Handle_StlMesh_SequenceNodeOfSequenceOfMeshDomain & operator=(const StlMesh_SequenceNodeOfSequenceOfMeshDomain *anItem);
		%feature("autodoc", "1");
		Handle_StlMesh_SequenceNodeOfSequenceOfMeshDomain const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StlMesh_SequenceNodeOfSequenceOfMeshDomain {
	StlMesh_SequenceNodeOfSequenceOfMeshDomain* GetObject() {
	return (StlMesh_SequenceNodeOfSequenceOfMeshDomain*)$self->Access();
	}
};
%feature("shadow") Handle_StlMesh_SequenceNodeOfSequenceOfMeshDomain::~Handle_StlMesh_SequenceNodeOfSequenceOfMeshDomain %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Handle_StlMesh_SequenceNodeOfSequenceOfMeshTriangle;
class Handle_StlMesh_SequenceNodeOfSequenceOfMeshTriangle : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_StlMesh_SequenceNodeOfSequenceOfMeshTriangle();
		%feature("autodoc", "1");
		Handle_StlMesh_SequenceNodeOfSequenceOfMeshTriangle(const Handle_StlMesh_SequenceNodeOfSequenceOfMeshTriangle &aHandle);
		%feature("autodoc", "1");
		Handle_StlMesh_SequenceNodeOfSequenceOfMeshTriangle(const StlMesh_SequenceNodeOfSequenceOfMeshTriangle *anItem);
		%feature("autodoc", "1");
		Handle_StlMesh_SequenceNodeOfSequenceOfMeshTriangle & operator=(const Handle_StlMesh_SequenceNodeOfSequenceOfMeshTriangle &aHandle);
		%feature("autodoc", "1");
		Handle_StlMesh_SequenceNodeOfSequenceOfMeshTriangle & operator=(const StlMesh_SequenceNodeOfSequenceOfMeshTriangle *anItem);
		%feature("autodoc", "1");
		Handle_StlMesh_SequenceNodeOfSequenceOfMeshTriangle const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StlMesh_SequenceNodeOfSequenceOfMeshTriangle {
	StlMesh_SequenceNodeOfSequenceOfMeshTriangle* GetObject() {
	return (StlMesh_SequenceNodeOfSequenceOfMeshTriangle*)$self->Access();
	}
};
%feature("shadow") Handle_StlMesh_SequenceNodeOfSequenceOfMeshTriangle::~Handle_StlMesh_SequenceNodeOfSequenceOfMeshTriangle %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Handle_StlMesh_SequenceNodeOfSequenceOfMesh;
class Handle_StlMesh_SequenceNodeOfSequenceOfMesh : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_StlMesh_SequenceNodeOfSequenceOfMesh();
		%feature("autodoc", "1");
		Handle_StlMesh_SequenceNodeOfSequenceOfMesh(const Handle_StlMesh_SequenceNodeOfSequenceOfMesh &aHandle);
		%feature("autodoc", "1");
		Handle_StlMesh_SequenceNodeOfSequenceOfMesh(const StlMesh_SequenceNodeOfSequenceOfMesh *anItem);
		%feature("autodoc", "1");
		Handle_StlMesh_SequenceNodeOfSequenceOfMesh & operator=(const Handle_StlMesh_SequenceNodeOfSequenceOfMesh &aHandle);
		%feature("autodoc", "1");
		Handle_StlMesh_SequenceNodeOfSequenceOfMesh & operator=(const StlMesh_SequenceNodeOfSequenceOfMesh *anItem);
		%feature("autodoc", "1");
		Handle_StlMesh_SequenceNodeOfSequenceOfMesh const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StlMesh_SequenceNodeOfSequenceOfMesh {
	StlMesh_SequenceNodeOfSequenceOfMesh* GetObject() {
	return (StlMesh_SequenceNodeOfSequenceOfMesh*)$self->Access();
	}
};
%feature("shadow") Handle_StlMesh_SequenceNodeOfSequenceOfMesh::~Handle_StlMesh_SequenceNodeOfSequenceOfMesh %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor StlMesh_MeshDomain;
class StlMesh_MeshDomain : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StlMesh_MeshDomain();
		%feature("autodoc", "1");
		StlMesh_MeshDomain(const Standard_Real Deflection);
		%feature("autodoc", "1");
		virtual		Standard_Integer AddTriangle(const Standard_Integer V1, const Standard_Integer V2, const Standard_Integer V3, const Standard_Real Xn, const Standard_Real Yn, const Standard_Real Zn);
		%feature("autodoc", "1");
		virtual		Standard_Integer AddVertex(const Standard_Real X, const Standard_Real Y, const Standard_Real Z);
		%feature("autodoc", "1");
		virtual		Standard_Integer AddOnlyNewVertex(const Standard_Real X, const Standard_Real Y, const Standard_Real Z, Standard_Boolean & IsNew);
		%feature("autodoc", "1");
		virtual		Standard_Real Deflection() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbTriangles() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbVertices() const;
		%feature("autodoc", "1");
		virtual		const StlMesh_SequenceOfMeshTriangle & Triangles() const;
		%feature("autodoc", "1");
		virtual		const TColgp_SequenceOfXYZ & Vertices() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StlMesh_MeshDomain {
	Handle_StlMesh_MeshDomain GetHandle() {
	return *(Handle_StlMesh_MeshDomain*) &$self;
	}
};
%extend StlMesh_MeshDomain {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StlMesh_MeshDomain::~StlMesh_MeshDomain %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor StlMesh_SequenceOfMeshDomain;
class StlMesh_SequenceOfMeshDomain : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		StlMesh_SequenceOfMeshDomain();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const StlMesh_SequenceOfMeshDomain & Assign(const StlMesh_SequenceOfMeshDomain &Other);
		%feature("autodoc", "1");
		const StlMesh_SequenceOfMeshDomain & operator=(const StlMesh_SequenceOfMeshDomain &Other);
		%feature("autodoc", "1");
		void Append(const Handle_StlMesh_MeshDomain &T);
		%feature("autodoc", "1");
		void Append(StlMesh_SequenceOfMeshDomain & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_StlMesh_MeshDomain &T);
		%feature("autodoc", "1");
		void Prepend(StlMesh_SequenceOfMeshDomain & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_StlMesh_MeshDomain &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, StlMesh_SequenceOfMeshDomain & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_StlMesh_MeshDomain &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, StlMesh_SequenceOfMeshDomain & S);
		%feature("autodoc", "1");
		const Handle_StlMesh_MeshDomain & First() const;
		%feature("autodoc", "1");
		const Handle_StlMesh_MeshDomain & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, StlMesh_SequenceOfMeshDomain & S);
		%feature("autodoc", "1");
		const Handle_StlMesh_MeshDomain & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_StlMesh_MeshDomain & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StlMesh_MeshDomain &I);
		%feature("autodoc", "1");
		Handle_StlMesh_MeshDomain & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_StlMesh_MeshDomain & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") StlMesh_SequenceOfMeshDomain::~StlMesh_SequenceOfMeshDomain %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor StlMesh_MeshExplorer;
class StlMesh_MeshExplorer {
	public:
		%feature("autodoc", "1");
		StlMesh_MeshExplorer(const Handle_StlMesh_Mesh &M);
		%feature("autodoc", "1");
		Standard_Real Deflection() const;
		%feature("autodoc", "1");
		void InitTriangle(const Standard_Integer DomainIndex=1);
		%feature("autodoc", "1");
		Standard_Boolean MoreTriangle() const;
		%feature("autodoc", "1");
		void NextTriangle();
		%feature("autodoc","TriangleVertices() -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real]");
		void TriangleVertices(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc","TriangleOrientation() -> [Standard_Real, Standard_Real, Standard_Real]");
		void TriangleOrientation(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;

};
%feature("shadow") StlMesh_MeshExplorer::~StlMesh_MeshExplorer %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor StlMesh_SequenceNodeOfSequenceOfMeshDomain;
class StlMesh_SequenceNodeOfSequenceOfMeshDomain : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		StlMesh_SequenceNodeOfSequenceOfMeshDomain(const Handle_StlMesh_MeshDomain &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_StlMesh_MeshDomain & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StlMesh_SequenceNodeOfSequenceOfMeshDomain {
	Handle_StlMesh_SequenceNodeOfSequenceOfMeshDomain GetHandle() {
	return *(Handle_StlMesh_SequenceNodeOfSequenceOfMeshDomain*) &$self;
	}
};
%extend StlMesh_SequenceNodeOfSequenceOfMeshDomain {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StlMesh_SequenceNodeOfSequenceOfMeshDomain::~StlMesh_SequenceNodeOfSequenceOfMeshDomain %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor StlMesh_SequenceNodeOfSequenceOfMesh;
class StlMesh_SequenceNodeOfSequenceOfMesh : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		StlMesh_SequenceNodeOfSequenceOfMesh(const Handle_StlMesh_Mesh &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_StlMesh_Mesh & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StlMesh_SequenceNodeOfSequenceOfMesh {
	Handle_StlMesh_SequenceNodeOfSequenceOfMesh GetHandle() {
	return *(Handle_StlMesh_SequenceNodeOfSequenceOfMesh*) &$self;
	}
};
%extend StlMesh_SequenceNodeOfSequenceOfMesh {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StlMesh_SequenceNodeOfSequenceOfMesh::~StlMesh_SequenceNodeOfSequenceOfMesh %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor StlMesh;
class StlMesh {
	public:
		%feature("autodoc", "1");
		StlMesh();
		%feature("autodoc", "1");
		Handle_StlMesh_Mesh Merge(const Handle_StlMesh_Mesh &mesh1, const Handle_StlMesh_Mesh &mesh2);

};
%feature("shadow") StlMesh::~StlMesh %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor StlMesh_Mesh;
class StlMesh_Mesh : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StlMesh_Mesh();
		%feature("autodoc", "1");
		virtual		void AddDomain();
		%feature("autodoc", "1");
		virtual		void AddDomain(const Standard_Real Deflection);
		%feature("autodoc", "1");
		virtual		Standard_Integer AddTriangle(const Standard_Integer V1, const Standard_Integer V2, const Standard_Integer V3, const Standard_Real Xn, const Standard_Real Yn, const Standard_Real Zn);
		%feature("autodoc", "1");
		virtual		Standard_Integer AddVertex(const Standard_Real X, const Standard_Real Y, const Standard_Real Z);
		%feature("autodoc", "1");
		virtual		Standard_Integer AddOnlyNewVertex(const Standard_Real X, const Standard_Real Y, const Standard_Real Z);
		%feature("autodoc", "1");
		virtual		void Bounds(gp_XYZ & XYZmax, gp_XYZ & XYZmin) const;
		%feature("autodoc", "1");
		virtual		void Clear();
		%feature("autodoc", "1");
		virtual		Standard_Real Deflection(const Standard_Integer DomainIndex) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbDomains() const;
		%feature("autodoc", "1");
		Standard_Integer NbTriangles() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbTriangles(const Standard_Integer DomainIndex) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbVertices() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbVertices(const Standard_Integer DomainIndex) const;
		%feature("autodoc", "1");
		virtual		const StlMesh_SequenceOfMeshTriangle & Triangles(const Standard_Integer DomainIndex=1) const;
		%feature("autodoc", "1");
		virtual		const TColgp_SequenceOfXYZ & Vertices(const Standard_Integer DomainIndex=1) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StlMesh_Mesh {
	Handle_StlMesh_Mesh GetHandle() {
	return *(Handle_StlMesh_Mesh*) &$self;
	}
};
%extend StlMesh_Mesh {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StlMesh_Mesh::~StlMesh_Mesh %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor StlMesh_SequenceOfMeshTriangle;
class StlMesh_SequenceOfMeshTriangle : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		StlMesh_SequenceOfMeshTriangle();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const StlMesh_SequenceOfMeshTriangle & Assign(const StlMesh_SequenceOfMeshTriangle &Other);
		%feature("autodoc", "1");
		const StlMesh_SequenceOfMeshTriangle & operator=(const StlMesh_SequenceOfMeshTriangle &Other);
		%feature("autodoc", "1");
		void Append(const Handle_StlMesh_MeshTriangle &T);
		%feature("autodoc", "1");
		void Append(StlMesh_SequenceOfMeshTriangle & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_StlMesh_MeshTriangle &T);
		%feature("autodoc", "1");
		void Prepend(StlMesh_SequenceOfMeshTriangle & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_StlMesh_MeshTriangle &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, StlMesh_SequenceOfMeshTriangle & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_StlMesh_MeshTriangle &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, StlMesh_SequenceOfMeshTriangle & S);
		%feature("autodoc", "1");
		const Handle_StlMesh_MeshTriangle & First() const;
		%feature("autodoc", "1");
		const Handle_StlMesh_MeshTriangle & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, StlMesh_SequenceOfMeshTriangle & S);
		%feature("autodoc", "1");
		const Handle_StlMesh_MeshTriangle & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_StlMesh_MeshTriangle & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StlMesh_MeshTriangle &I);
		%feature("autodoc", "1");
		Handle_StlMesh_MeshTriangle & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_StlMesh_MeshTriangle & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") StlMesh_SequenceOfMeshTriangle::~StlMesh_SequenceOfMeshTriangle %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor StlMesh_MeshTriangle;
class StlMesh_MeshTriangle : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StlMesh_MeshTriangle();
		%feature("autodoc", "1");
		StlMesh_MeshTriangle(const Standard_Integer V1, const Standard_Integer V2, const Standard_Integer V3, const Standard_Real Xn, const Standard_Real Yn, const Standard_Real Zn);
		%feature("autodoc","GetVertexAndOrientation() -> [Standard_Integer, Standard_Integer, Standard_Integer, Standard_Real, Standard_Real, Standard_Real]");
		void GetVertexAndOrientation(Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		void SetVertexAndOrientation(const Standard_Integer V1, const Standard_Integer V2, const Standard_Integer V3, const Standard_Real Xn, const Standard_Real Yn, const Standard_Real Zn);
		%feature("autodoc","GetVertex() -> [Standard_Integer, Standard_Integer, Standard_Integer]");
		void GetVertex(Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		void SetVertex(const Standard_Integer V1, const Standard_Integer V2, const Standard_Integer V3);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StlMesh_MeshTriangle {
	Handle_StlMesh_MeshTriangle GetHandle() {
	return *(Handle_StlMesh_MeshTriangle*) &$self;
	}
};
%extend StlMesh_MeshTriangle {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StlMesh_MeshTriangle::~StlMesh_MeshTriangle %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor StlMesh_SequenceNodeOfSequenceOfMeshTriangle;
class StlMesh_SequenceNodeOfSequenceOfMeshTriangle : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		StlMesh_SequenceNodeOfSequenceOfMeshTriangle(const Handle_StlMesh_MeshTriangle &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_StlMesh_MeshTriangle & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StlMesh_SequenceNodeOfSequenceOfMeshTriangle {
	Handle_StlMesh_SequenceNodeOfSequenceOfMeshTriangle GetHandle() {
	return *(Handle_StlMesh_SequenceNodeOfSequenceOfMeshTriangle*) &$self;
	}
};
%extend StlMesh_SequenceNodeOfSequenceOfMeshTriangle {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") StlMesh_SequenceNodeOfSequenceOfMeshTriangle::~StlMesh_SequenceNodeOfSequenceOfMeshTriangle %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor StlMesh_SequenceOfMesh;
class StlMesh_SequenceOfMesh : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		StlMesh_SequenceOfMesh();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const StlMesh_SequenceOfMesh & Assign(const StlMesh_SequenceOfMesh &Other);
		%feature("autodoc", "1");
		const StlMesh_SequenceOfMesh & operator=(const StlMesh_SequenceOfMesh &Other);
		%feature("autodoc", "1");
		void Append(const Handle_StlMesh_Mesh &T);
		%feature("autodoc", "1");
		void Append(StlMesh_SequenceOfMesh & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_StlMesh_Mesh &T);
		%feature("autodoc", "1");
		void Prepend(StlMesh_SequenceOfMesh & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_StlMesh_Mesh &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, StlMesh_SequenceOfMesh & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_StlMesh_Mesh &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, StlMesh_SequenceOfMesh & S);
		%feature("autodoc", "1");
		const Handle_StlMesh_Mesh & First() const;
		%feature("autodoc", "1");
		const Handle_StlMesh_Mesh & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, StlMesh_SequenceOfMesh & S);
		%feature("autodoc", "1");
		const Handle_StlMesh_Mesh & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_StlMesh_Mesh & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StlMesh_Mesh &I);
		%feature("autodoc", "1");
		Handle_StlMesh_Mesh & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_StlMesh_Mesh & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") StlMesh_SequenceOfMesh::~StlMesh_SequenceOfMesh %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}
