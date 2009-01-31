/*
##Copyright 2008-2009 Thomas Paviot
##
##thomas.paviot@free.fr
##
##pythonOCC is a computer program whose purpose is to provide a complete set
##of python bindings for OpenCascade library.
##
##This software is governed by the CeCILL license under French law and
##abiding by the rules of distribution of free software.  You can  use, 
##modify and/ or redistribute the software under the terms of the CeCILL
##license as circulated by CEA, CNRS and INRIA at the following URL
##"http://www.cecill.info". 
##
##As a counterpart to the access to the source code and  rights to copy,
##modify and redistribute granted by the license, users are provided only
##with a limited warranty  and the software's author,  the holder of the
##economic rights,  and the successive licensors  have only  limited
##liability. 
##
##In this respect, the user's attention is drawn to the risks associated
##with loading,  using,  modifying and/or developing or reproducing the
##software by the user in light of its specific status of free software,
##that may mean  that it is complicated to manipulate,  and  that  also
##therefore means  that it is reserved for developers  and  experienced
##professionals having in-depth computer knowledge. Users are therefore
##encouraged to load and test the software's suitability as regards their
##requirements in conditions enabling the security of their systems and/or 
##data to be ensured and,  more generally, to use and operate it in the 
##same conditions as regards security. 
##
##The fact that you are presently reading this means that you have had
##knowledge of the CeCILL license and that you accept its terms.
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


%include StlMesh_dependencies.i


%include StlMesh_headers.i




%nodefaultctor Handle_StlMesh_MeshDomain;
class Handle_StlMesh_MeshDomain : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_StlMesh_MeshDomain();
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

%nodefaultctor Handle_StlMesh_MeshTriangle;
class Handle_StlMesh_MeshTriangle : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_StlMesh_MeshTriangle();
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

%nodefaultctor Handle_StlMesh_Mesh;
class Handle_StlMesh_Mesh : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_StlMesh_Mesh();
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

%nodefaultctor Handle_StlMesh_SequenceNodeOfSequenceOfMeshTriangle;
class Handle_StlMesh_SequenceNodeOfSequenceOfMeshTriangle : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		~Handle_StlMesh_SequenceNodeOfSequenceOfMeshTriangle();
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

%nodefaultctor Handle_StlMesh_SequenceNodeOfSequenceOfMesh;
class Handle_StlMesh_SequenceNodeOfSequenceOfMesh : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		~Handle_StlMesh_SequenceNodeOfSequenceOfMesh();
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

%nodefaultctor Handle_StlMesh_SequenceNodeOfSequenceOfMeshDomain;
class Handle_StlMesh_SequenceNodeOfSequenceOfMeshDomain : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		~Handle_StlMesh_SequenceNodeOfSequenceOfMeshDomain();
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
		%feature("autodoc", "1");
		virtual		~StlMesh_MeshDomain();

};
%extend StlMesh_MeshDomain {
	Handle_StlMesh_MeshDomain GetHandle() {
	return *(Handle_StlMesh_MeshDomain*) &$self;
	}
};

%nodefaultctor StlMesh_MeshExplorer;
class StlMesh_MeshExplorer {
	public:
		%feature("autodoc", "1");
		~StlMesh_MeshExplorer();
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

%nodefaultctor StlMesh_SequenceOfMeshDomain;
class StlMesh_SequenceOfMeshDomain : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		StlMesh_SequenceOfMeshDomain();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~StlMesh_SequenceOfMeshDomain();
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

%nodefaultctor StlMesh_MeshTriangle;
class StlMesh_MeshTriangle : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StlMesh_MeshTriangle();
		%feature("autodoc", "1");
		StlMesh_MeshTriangle(const Standard_Integer V1, const Standard_Integer V2, const Standard_Integer V3, const Standard_Real Xn, const Standard_Real Yn, const Standard_Real Zn);
		%feature("autodoc", "1");
		void GetVertexAndOrientation(Standard_Integer & V1, Standard_Integer & V2, Standard_Integer & V3, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		void SetVertexAndOrientation(const Standard_Integer V1, const Standard_Integer V2, const Standard_Integer V3, const Standard_Real Xn, const Standard_Real Yn, const Standard_Real Zn);
		%feature("autodoc", "1");
		void GetVertex(Standard_Integer & V1, Standard_Integer & V2, Standard_Integer & V3) const;
		%feature("autodoc", "1");
		void SetVertex(const Standard_Integer V1, const Standard_Integer V2, const Standard_Integer V3);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StlMesh_MeshTriangle();

};
%extend StlMesh_MeshTriangle {
	Handle_StlMesh_MeshTriangle GetHandle() {
	return *(Handle_StlMesh_MeshTriangle*) &$self;
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
		%feature("autodoc", "1");
		virtual		~StlMesh_SequenceNodeOfSequenceOfMesh();

};
%extend StlMesh_SequenceNodeOfSequenceOfMesh {
	Handle_StlMesh_SequenceNodeOfSequenceOfMesh GetHandle() {
	return *(Handle_StlMesh_SequenceNodeOfSequenceOfMesh*) &$self;
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
		%feature("autodoc", "1");
		virtual		~StlMesh_SequenceNodeOfSequenceOfMeshDomain();

};
%extend StlMesh_SequenceNodeOfSequenceOfMeshDomain {
	Handle_StlMesh_SequenceNodeOfSequenceOfMeshDomain GetHandle() {
	return *(Handle_StlMesh_SequenceNodeOfSequenceOfMeshDomain*) &$self;
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
		~StlMesh_SequenceOfMeshTriangle();
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

%nodefaultctor StlMesh_SequenceNodeOfSequenceOfMeshTriangle;
class StlMesh_SequenceNodeOfSequenceOfMeshTriangle : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		StlMesh_SequenceNodeOfSequenceOfMeshTriangle(const Handle_StlMesh_MeshTriangle &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_StlMesh_MeshTriangle & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StlMesh_SequenceNodeOfSequenceOfMeshTriangle();

};
%extend StlMesh_SequenceNodeOfSequenceOfMeshTriangle {
	Handle_StlMesh_SequenceNodeOfSequenceOfMeshTriangle GetHandle() {
	return *(Handle_StlMesh_SequenceNodeOfSequenceOfMeshTriangle*) &$self;
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
		~StlMesh_SequenceOfMesh();
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

%nodefaultctor StlMesh;
class StlMesh {
	public:
		%feature("autodoc", "1");
		~StlMesh();
		%feature("autodoc", "1");
		StlMesh();
		%feature("autodoc", "1");
		Handle_StlMesh_Mesh Merge(const Handle_StlMesh_Mesh &mesh1, const Handle_StlMesh_Mesh &mesh2);

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
		%feature("autodoc", "1");
		virtual		~StlMesh_Mesh();

};
%extend StlMesh_Mesh {
	Handle_StlMesh_Mesh GetHandle() {
	return *(Handle_StlMesh_Mesh*) &$self;
	}
};