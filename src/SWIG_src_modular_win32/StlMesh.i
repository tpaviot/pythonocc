/*

Copyright 2008-2009 Thomas Paviot (thomas.paviot@free.fr)

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

%include typemaps.i
%include cmalloc.i
%include cpointer.i
%include carrays.i
%include exception.i

#ifndef _Standard_TypeDef_HeaderFile
#define _Standard_TypeDef_HeaderFile
#define Standard_False (Standard_Boolean) 0
#define Standard_True  (Standard_Boolean) 1
#endif

/*
Exception handling
*/
%{#include <Standard_Failure.hxx>%}
%exception
{
    try
    {
        $action
    } 
    catch(Standard_Failure)
    {
        SWIG_exception(SWIG_RuntimeError,Standard_Failure::Caught()->DynamicType()->Name());
    }
}

/*
Standard_Real & function transformation
*/
%typemap(argout) Standard_Real &OutValue {
    PyObject *o, *o2, *o3;
    o = PyFloat_FromDouble(*$1);
    if ((!$result) || ($result == Py_None)) {
        $result = o;
    } else {
        if (!PyTuple_Check($result)) {
            PyObject *o2 = $result;
            $result = PyTuple_New(1);
            PyTuple_SetItem($result,0,o2);
        }
        o3 = PyTuple_New(1);
        PyTuple_SetItem(o3,0,o);
        o2 = $result;
        $result = PySequence_Concat(o2,o3);
        Py_DECREF(o2);
        Py_DECREF(o3);
    }
}

%typemap(in,numinputs=0) Standard_Real &OutValue(Standard_Real temp) {
    $1 = &temp;
}

/*
Standard_Integer & function transformation
*/
%typemap(argout) Standard_Integer &OutValue {
    PyObject *o, *o2, *o3;
    o = PyInt_FromLong(*$1);
    if ((!$result) || ($result == Py_None)) {
        $result = o;
    } else {
        if (!PyTuple_Check($result)) {
            PyObject *o2 = $result;
            $result = PyTuple_New(1);
            PyTuple_SetItem($result,0,o2);
        }
        o3 = PyTuple_New(1);
        PyTuple_SetItem(o3,0,o);
        o2 = $result;
        $result = PySequence_Concat(o2,o3);
        Py_DECREF(o2);
        Py_DECREF(o3);
    }
}

%typemap(in,numinputs=0) Standard_Integer &OutValue(Standard_Integer temp) {
    $1 = &temp;
}


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
		Handle_StlMesh_MeshDomain const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StlMesh_MeshDomain {
	StlMesh_MeshDomain* GetObject() {
	return (StlMesh_MeshDomain*)$self->Access();
	}
};
%extend Handle_StlMesh_MeshDomain {
	~Handle_StlMesh_MeshDomain() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StlMesh_MeshDomain\n");}
	}
};

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
		Handle_StlMesh_MeshTriangle const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StlMesh_MeshTriangle {
	StlMesh_MeshTriangle* GetObject() {
	return (StlMesh_MeshTriangle*)$self->Access();
	}
};
%extend Handle_StlMesh_MeshTriangle {
	~Handle_StlMesh_MeshTriangle() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StlMesh_MeshTriangle\n");}
	}
};

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
		Handle_StlMesh_Mesh const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StlMesh_Mesh {
	StlMesh_Mesh* GetObject() {
	return (StlMesh_Mesh*)$self->Access();
	}
};
%extend Handle_StlMesh_Mesh {
	~Handle_StlMesh_Mesh() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StlMesh_Mesh\n");}
	}
};

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
		Handle_StlMesh_SequenceNodeOfSequenceOfMesh const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StlMesh_SequenceNodeOfSequenceOfMesh {
	StlMesh_SequenceNodeOfSequenceOfMesh* GetObject() {
	return (StlMesh_SequenceNodeOfSequenceOfMesh*)$self->Access();
	}
};
%extend Handle_StlMesh_SequenceNodeOfSequenceOfMesh {
	~Handle_StlMesh_SequenceNodeOfSequenceOfMesh() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StlMesh_SequenceNodeOfSequenceOfMesh\n");}
	}
};

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
		Handle_StlMesh_SequenceNodeOfSequenceOfMeshDomain const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StlMesh_SequenceNodeOfSequenceOfMeshDomain {
	StlMesh_SequenceNodeOfSequenceOfMeshDomain* GetObject() {
	return (StlMesh_SequenceNodeOfSequenceOfMeshDomain*)$self->Access();
	}
};
%extend Handle_StlMesh_SequenceNodeOfSequenceOfMeshDomain {
	~Handle_StlMesh_SequenceNodeOfSequenceOfMeshDomain() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StlMesh_SequenceNodeOfSequenceOfMeshDomain\n");}
	}
};

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
		Handle_StlMesh_SequenceNodeOfSequenceOfMeshTriangle const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StlMesh_SequenceNodeOfSequenceOfMeshTriangle {
	StlMesh_SequenceNodeOfSequenceOfMeshTriangle* GetObject() {
	return (StlMesh_SequenceNodeOfSequenceOfMeshTriangle*)$self->Access();
	}
};
%extend Handle_StlMesh_SequenceNodeOfSequenceOfMeshTriangle {
	~Handle_StlMesh_SequenceNodeOfSequenceOfMeshTriangle() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StlMesh_SequenceNodeOfSequenceOfMeshTriangle\n");}
	}
};

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
	return $self->HashCode(LONG_MAX);
	}
};
%extend StlMesh_MeshDomain {
	~StlMesh_MeshDomain() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StlMesh_MeshDomain\n");}
	}
};

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
	return $self->HashCode(LONG_MAX);
	}
};
%extend StlMesh_Mesh {
	~StlMesh_Mesh() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StlMesh_Mesh\n");}
	}
};

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
%extend StlMesh_SequenceOfMeshDomain {
	~StlMesh_SequenceOfMeshDomain() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StlMesh_SequenceOfMeshDomain\n");}
	}
};

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
		%feature("autodoc", "1");
		void TriangleVertices(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		void TriangleOrientation(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;

};
%extend StlMesh_MeshExplorer {
	~StlMesh_MeshExplorer() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StlMesh_MeshExplorer\n");}
	}
};

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
	return $self->HashCode(LONG_MAX);
	}
};
%extend StlMesh_SequenceNodeOfSequenceOfMeshTriangle {
	~StlMesh_SequenceNodeOfSequenceOfMeshTriangle() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StlMesh_SequenceNodeOfSequenceOfMeshTriangle\n");}
	}
};

%nodefaultctor StlMesh_MeshTriangle;
class StlMesh_MeshTriangle : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StlMesh_MeshTriangle();
		%feature("autodoc", "1");
		StlMesh_MeshTriangle(const Standard_Integer V1, const Standard_Integer V2, const Standard_Integer V3, const Standard_Real Xn, const Standard_Real Yn, const Standard_Real Zn);
		%feature("autodoc", "1");
		void GetVertexAndOrientation(Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		void SetVertexAndOrientation(const Standard_Integer V1, const Standard_Integer V2, const Standard_Integer V3, const Standard_Real Xn, const Standard_Real Yn, const Standard_Real Zn);
		%feature("autodoc", "1");
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
	return $self->HashCode(LONG_MAX);
	}
};
%extend StlMesh_MeshTriangle {
	~StlMesh_MeshTriangle() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StlMesh_MeshTriangle\n");}
	}
};

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
	return $self->HashCode(LONG_MAX);
	}
};
%extend StlMesh_SequenceNodeOfSequenceOfMeshDomain {
	~StlMesh_SequenceNodeOfSequenceOfMeshDomain() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StlMesh_SequenceNodeOfSequenceOfMeshDomain\n");}
	}
};

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
	return $self->HashCode(LONG_MAX);
	}
};
%extend StlMesh_SequenceNodeOfSequenceOfMesh {
	~StlMesh_SequenceNodeOfSequenceOfMesh() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StlMesh_SequenceNodeOfSequenceOfMesh\n");}
	}
};

%nodefaultctor StlMesh;
class StlMesh {
	public:
		%feature("autodoc", "1");
		StlMesh();
		%feature("autodoc", "1");
		Handle_StlMesh_Mesh Merge(const Handle_StlMesh_Mesh &mesh1, const Handle_StlMesh_Mesh &mesh2);

};
%extend StlMesh {
	~StlMesh() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StlMesh\n");}
	}
};

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
%extend StlMesh_SequenceOfMeshTriangle {
	~StlMesh_SequenceOfMeshTriangle() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StlMesh_SequenceOfMeshTriangle\n");}
	}
};

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
%extend StlMesh_SequenceOfMesh {
	~StlMesh_SequenceOfMesh() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StlMesh_SequenceOfMesh\n");}
	}
};