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
%module Poly

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


%include Poly_dependencies.i


%include Poly_headers.i




%nodefaultctor Handle_Poly_CoherentTriangulation;
class Handle_Poly_CoherentTriangulation : public Handle_Standard_Transient {
	public:
		%feature("autodoc", "1");
		~Handle_Poly_CoherentTriangulation();
		%feature("autodoc", "1");
		Handle_Poly_CoherentTriangulation();
		%feature("autodoc", "1");
		Handle_Poly_CoherentTriangulation(const Handle_Poly_CoherentTriangulation &aHandle);
		%feature("autodoc", "1");
		Handle_Poly_CoherentTriangulation(const Poly_CoherentTriangulation *anItem);
		%feature("autodoc", "1");
		Handle_Poly_CoherentTriangulation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Poly_CoherentTriangulation {
	Poly_CoherentTriangulation* GetObject() {
	return (Poly_CoherentTriangulation*)$self->Access();
	}
};

%nodefaultctor Handle_Poly_PolygonOnTriangulation;
class Handle_Poly_PolygonOnTriangulation : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_Poly_PolygonOnTriangulation();
		%feature("autodoc", "1");
		Handle_Poly_PolygonOnTriangulation();
		%feature("autodoc", "1");
		Handle_Poly_PolygonOnTriangulation(const Handle_Poly_PolygonOnTriangulation &aHandle);
		%feature("autodoc", "1");
		Handle_Poly_PolygonOnTriangulation(const Poly_PolygonOnTriangulation *anItem);
		%feature("autodoc", "1");
		Handle_Poly_PolygonOnTriangulation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Poly_PolygonOnTriangulation {
	Poly_PolygonOnTriangulation* GetObject() {
	return (Poly_PolygonOnTriangulation*)$self->Access();
	}
};

%nodefaultctor Handle_Poly_Polygon3D;
class Handle_Poly_Polygon3D : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_Poly_Polygon3D();
		%feature("autodoc", "1");
		Handle_Poly_Polygon3D();
		%feature("autodoc", "1");
		Handle_Poly_Polygon3D(const Handle_Poly_Polygon3D &aHandle);
		%feature("autodoc", "1");
		Handle_Poly_Polygon3D(const Poly_Polygon3D *anItem);
		%feature("autodoc", "1");
		Handle_Poly_Polygon3D const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Poly_Polygon3D {
	Poly_Polygon3D* GetObject() {
	return (Poly_Polygon3D*)$self->Access();
	}
};

%nodefaultctor Handle_Poly_Polygon2D;
class Handle_Poly_Polygon2D : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_Poly_Polygon2D();
		%feature("autodoc", "1");
		Handle_Poly_Polygon2D();
		%feature("autodoc", "1");
		Handle_Poly_Polygon2D(const Handle_Poly_Polygon2D &aHandle);
		%feature("autodoc", "1");
		Handle_Poly_Polygon2D(const Poly_Polygon2D *anItem);
		%feature("autodoc", "1");
		Handle_Poly_Polygon2D const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Poly_Polygon2D {
	Poly_Polygon2D* GetObject() {
	return (Poly_Polygon2D*)$self->Access();
	}
};

%nodefaultctor Handle_Poly_HArray1OfTriangle;
class Handle_Poly_HArray1OfTriangle : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_Poly_HArray1OfTriangle();
		%feature("autodoc", "1");
		Handle_Poly_HArray1OfTriangle();
		%feature("autodoc", "1");
		Handle_Poly_HArray1OfTriangle(const Handle_Poly_HArray1OfTriangle &aHandle);
		%feature("autodoc", "1");
		Handle_Poly_HArray1OfTriangle(const Poly_HArray1OfTriangle *anItem);
		%feature("autodoc", "1");
		Handle_Poly_HArray1OfTriangle const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Poly_HArray1OfTriangle {
	Poly_HArray1OfTriangle* GetObject() {
	return (Poly_HArray1OfTriangle*)$self->Access();
	}
};

%nodefaultctor Handle_Poly_Triangulation;
class Handle_Poly_Triangulation : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_Poly_Triangulation();
		%feature("autodoc", "1");
		Handle_Poly_Triangulation();
		%feature("autodoc", "1");
		Handle_Poly_Triangulation(const Handle_Poly_Triangulation &aHandle);
		%feature("autodoc", "1");
		Handle_Poly_Triangulation(const Poly_Triangulation *anItem);
		%feature("autodoc", "1");
		Handle_Poly_Triangulation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Poly_Triangulation {
	Poly_Triangulation* GetObject() {
	return (Poly_Triangulation*)$self->Access();
	}
};

%nodefaultctor Poly_Connect;
class Poly_Connect {
	public:
		%feature("autodoc", "1");
		~Poly_Connect();
		%feature("autodoc", "1");
		Poly_Connect(const Handle_Poly_Triangulation &T);
		%feature("autodoc", "1");
		Handle_Poly_Triangulation Triangulation() const;
		%feature("autodoc", "1");
		Standard_Integer Triangle(const Standard_Integer N) const;
		%feature("autodoc", "1");
		void Triangles(const Standard_Integer T, Standard_Integer & t1, Standard_Integer & t2, Standard_Integer & t3) const;
		%feature("autodoc", "1");
		void Nodes(const Standard_Integer T, Standard_Integer & n1, Standard_Integer & n2, Standard_Integer & n3) const;
		%feature("autodoc", "1");
		void Initialize(const Standard_Integer N);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		Standard_Integer Value() const;

};

%nodefaultctor Poly_Array1OfTriangle;
class Poly_Array1OfTriangle {
	public:
		%feature("autodoc", "1");
		Poly_Array1OfTriangle(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		Poly_Array1OfTriangle(const Poly_Triangle &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Poly_Triangle &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		~Poly_Array1OfTriangle();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const Poly_Array1OfTriangle & Assign(const Poly_Array1OfTriangle &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Poly_Triangle &Value);
		%feature("autodoc", "1");
		const Poly_Triangle & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Poly_Triangle & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Poly_Triangle & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Poly_Triangle & operator()(const Standard_Integer Index);

};

%nodefaultctor Poly_Triangulation;
class Poly_Triangulation : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Poly_Triangulation(const Standard_Integer nbNodes, const Standard_Integer nbTriangles, const Standard_Boolean UVNodes);
		%feature("autodoc", "1");
		Poly_Triangulation(const TColgp_Array1OfPnt &Nodes, const Poly_Array1OfTriangle &Triangles);
		%feature("autodoc", "1");
		Poly_Triangulation(const TColgp_Array1OfPnt &Nodes, const TColgp_Array1OfPnt2d &UVNodes, const Poly_Array1OfTriangle &Triangles);
		%feature("autodoc", "1");
		Standard_Real Deflection() const;
		%feature("autodoc", "1");
		void Deflection(const Standard_Real D);
		%feature("autodoc", "1");
		void RemoveUVNodes();
		%feature("autodoc", "1");
		Standard_Integer NbNodes() const;
		%feature("autodoc", "1");
		Standard_Integer NbTriangles() const;
		%feature("autodoc", "1");
		Standard_Boolean HasUVNodes() const;
		%feature("autodoc", "1");
		const TColgp_Array1OfPnt & Nodes() const;
		%feature("autodoc", "1");
		TColgp_Array1OfPnt & ChangeNodes();
		%feature("autodoc", "1");
		const TColgp_Array1OfPnt2d & UVNodes() const;
		%feature("autodoc", "1");
		TColgp_Array1OfPnt2d & ChangeUVNodes();
		%feature("autodoc", "1");
		const Poly_Array1OfTriangle & Triangles() const;
		%feature("autodoc", "1");
		Poly_Array1OfTriangle & ChangeTriangles();
		%feature("autodoc", "1");
		void SetNormals(const Handle_TShort_HArray1OfShortReal &theNormals);
		%feature("autodoc", "1");
		const TShort_Array1OfShortReal & Normals() const;
		%feature("autodoc", "1");
		TShort_Array1OfShortReal & ChangeNormals();
		%feature("autodoc", "1");
		Standard_Boolean HasNormals() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~Poly_Triangulation();

};
%extend Poly_Triangulation {
	Handle_Poly_Triangulation GetHandle() {
	return *(Handle_Poly_Triangulation*) &$self;
	}
};

%nodefaultctor Poly_PolygonOnTriangulation;
class Poly_PolygonOnTriangulation : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Poly_PolygonOnTriangulation(const TColStd_Array1OfInteger &Nodes);
		%feature("autodoc", "1");
		Poly_PolygonOnTriangulation(const TColStd_Array1OfInteger &Nodes, const TColStd_Array1OfReal &Parameters);
		%feature("autodoc", "1");
		Standard_Real Deflection() const;
		%feature("autodoc", "1");
		void Deflection(const Standard_Real D);
		%feature("autodoc", "1");
		Standard_Integer NbNodes() const;
		%feature("autodoc", "1");
		const TColStd_Array1OfInteger & Nodes() const;
		%feature("autodoc", "1");
		Standard_Boolean HasParameters() const;
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal Parameters() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~Poly_PolygonOnTriangulation();

};
%extend Poly_PolygonOnTriangulation {
	Handle_Poly_PolygonOnTriangulation GetHandle() {
	return *(Handle_Poly_PolygonOnTriangulation*) &$self;
	}
};

%nodefaultctor Poly_CoherentNode;
class Poly_CoherentNode : public gp_XYZ {
	public:
		%feature("autodoc", "1");
		~Poly_CoherentNode();
		%feature("autodoc", "1");
		Poly_CoherentNode();
		%feature("autodoc", "1");
		Poly_CoherentNode(const gp_XYZ &thePnt);
		%feature("autodoc", "1");
		void SetUV(const Standard_Real theU, const Standard_Real theV);
		%feature("autodoc", "1");
		Standard_Real GetU() const;
		%feature("autodoc", "1");
		Standard_Real GetV() const;
		%feature("autodoc", "1");
		void SetNormal(const gp_XYZ &theVector);
		%feature("autodoc", "1");
		Standard_Boolean HasNormal() const;
		%feature("autodoc", "1");
		gp_XYZ GetNormal() const;
		%feature("autodoc", "1");
		void SetIndex(const Standard_Integer theIndex);
		%feature("autodoc", "1");
		Standard_Integer GetIndex() const;
		%feature("autodoc", "1");
		Standard_Boolean IsFreeNode() const;
		%feature("autodoc", "1");
		void AddTriangle(const Poly_CoherentTriangle &theTri, const Handle_NCollection_BaseAllocator &theA);
		%feature("autodoc", "1");
		Standard_Boolean RemoveTriangle(const Poly_CoherentTriangle &theTri, const Handle_NCollection_BaseAllocator &theA);
		%feature("autodoc", "1");
		Poly_CoherentTriPtr::Iterator TriangleIterator() const;
		%feature("autodoc", "1");
		void Dump(Standard_OStream & theStream) const;

};

%nodefaultctor Poly_CoherentTriangle;
class Poly_CoherentTriangle {
	public:
		%feature("autodoc", "1");
		~Poly_CoherentTriangle();
		%feature("autodoc", "1");
		Poly_CoherentTriangle();
		%feature("autodoc", "1");
		Poly_CoherentTriangle(const Standard_Integer iNode0, const Standard_Integer iNode1, const Standard_Integer iNode2);
		%feature("autodoc", "1");
		Standard_Integer Node(const Standard_Integer ind) const;
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Boolean SetConnection(const Standard_Integer iConn, Poly_CoherentTriangle & theTr);
		%feature("autodoc", "1");
		Standard_Boolean SetConnection(Poly_CoherentTriangle & theTri);
		%feature("autodoc", "1");
		void RemoveConnection(const Standard_Integer iConn);
		%feature("autodoc", "1");
		Standard_Boolean RemoveConnection(Poly_CoherentTriangle & theTri);
		%feature("autodoc", "1");
		Standard_Integer NConnections() const;
		%feature("autodoc", "1");
		Standard_Integer GetConnectedNode(const Standard_Integer iConn) const;
		%feature("autodoc", "1");
		const Poly_CoherentTriangle * GetConnectedTri(const Standard_Integer iConn) const;
		%feature("autodoc", "1");
		const Poly_CoherentLink * GetLink(const Standard_Integer iLink) const;
		%feature("autodoc", "1");
		Standard_Integer FindConnection(const Poly_CoherentTriangle &arg0) const;

};

%nodefaultctor Poly_Triangle;
class Poly_Triangle {
	public:
		%feature("autodoc", "1");
		~Poly_Triangle();
		%feature("autodoc", "1");
		Poly_Triangle();
		%feature("autodoc", "1");
		Poly_Triangle(const Standard_Integer N1, const Standard_Integer N2, const Standard_Integer N3);
		%feature("autodoc", "1");
		void Set(const Standard_Integer N1, const Standard_Integer N2, const Standard_Integer N3);
		%feature("autodoc", "1");
		void Set(const Standard_Integer Index, const Standard_Integer Node);
		%feature("autodoc", "1");
		void Get(Standard_Integer & N1, Standard_Integer & N2, Standard_Integer & N3) const;
		%feature("autodoc", "1");
		Standard_Integer Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Integer operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Integer & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Standard_Integer & operator()(const Standard_Integer Index);

};

%nodefaultctor Poly_HArray1OfTriangle;
class Poly_HArray1OfTriangle : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Poly_HArray1OfTriangle(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		Poly_HArray1OfTriangle(const Standard_Integer Low, const Standard_Integer Up, const Poly_Triangle &V);
		%feature("autodoc", "1");
		void Init(const Poly_Triangle &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Poly_Triangle &Value);
		%feature("autodoc", "1");
		const Poly_Triangle & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Poly_Triangle & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const Poly_Array1OfTriangle & Array1() const;
		%feature("autodoc", "1");
		Poly_Array1OfTriangle & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~Poly_HArray1OfTriangle();

};
%extend Poly_HArray1OfTriangle {
	Handle_Poly_HArray1OfTriangle GetHandle() {
	return *(Handle_Poly_HArray1OfTriangle*) &$self;
	}
};

%nodefaultctor Poly;
class Poly {
	public:
		%feature("autodoc", "1");
		~Poly();
		%feature("autodoc", "1");
		Poly();
		%feature("autodoc", "1");
		void Write(const Handle_Poly_Triangulation &T, Standard_OStream & OS, const Standard_Boolean Compact=1);
		%feature("autodoc", "1");
		void Write(const Handle_Poly_Polygon3D &P, Standard_OStream & OS, const Standard_Boolean Compact=1);
		%feature("autodoc", "1");
		void Write(const Handle_Poly_Polygon2D &P, Standard_OStream & OS, const Standard_Boolean Compact=1);
		%feature("autodoc", "1");
		void Dump(const Handle_Poly_Triangulation &T, Standard_OStream & OS);
		%feature("autodoc", "1");
		void Dump(const Handle_Poly_Polygon3D &P, Standard_OStream & OS);
		%feature("autodoc", "1");
		void Dump(const Handle_Poly_Polygon2D &P, Standard_OStream & OS);
		%feature("autodoc", "1");
		Handle_Poly_Triangulation ReadTriangulation(std::istream & IS);
		%feature("autodoc", "1");
		Handle_Poly_Polygon3D ReadPolygon3D(std::istream & IS);
		%feature("autodoc", "1");
		Handle_Poly_Polygon2D ReadPolygon2D(std::istream & IS);
		%feature("autodoc", "1");
		void ComputeNormals(const Handle_Poly_Triangulation &Tri);

};

%nodefaultctor Poly_CoherentLink;
class Poly_CoherentLink {
	public:
		%feature("autodoc", "1");
		~Poly_CoherentLink();
		%feature("autodoc", "1");
		Poly_CoherentLink();
		%feature("autodoc", "1");
		Poly_CoherentLink(const Standard_Integer iNode0, const Standard_Integer iNode1);
		%feature("autodoc", "1");
		Poly_CoherentLink(const Poly_CoherentTriangle &theTri, Standard_Integer );
		%feature("autodoc", "1");
		Standard_Integer Node(const Standard_Integer ind) const;
		%feature("autodoc", "1");
		Standard_Integer OppositeNode(const Standard_Integer ind) const;
		%feature("autodoc", "1");
		Standard_Address GetAttribute() const;
		%feature("autodoc", "1");
		void SetAttribute(const Standard_Address theAtt);
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Nullify();

};

%nodefaultctor Poly_Polygon2D;
class Poly_Polygon2D : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Poly_Polygon2D(const TColgp_Array1OfPnt2d &Nodes);
		%feature("autodoc", "1");
		Standard_Real Deflection() const;
		%feature("autodoc", "1");
		void Deflection(const Standard_Real D);
		%feature("autodoc", "1");
		Standard_Integer NbNodes() const;
		%feature("autodoc", "1");
		const TColgp_Array1OfPnt2d & Nodes() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~Poly_Polygon2D();

};
%extend Poly_Polygon2D {
	Handle_Poly_Polygon2D GetHandle() {
	return *(Handle_Poly_Polygon2D*) &$self;
	}
};

%nodefaultctor Poly_Polygon3D;
class Poly_Polygon3D : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Poly_Polygon3D(const TColgp_Array1OfPnt &Nodes);
		%feature("autodoc", "1");
		Poly_Polygon3D(const TColgp_Array1OfPnt &Nodes, const TColStd_Array1OfReal &Parameters);
		%feature("autodoc", "1");
		Standard_Real Deflection() const;
		%feature("autodoc", "1");
		void Deflection(const Standard_Real D);
		%feature("autodoc", "1");
		Standard_Integer NbNodes() const;
		%feature("autodoc", "1");
		const TColgp_Array1OfPnt & Nodes() const;
		%feature("autodoc", "1");
		Standard_Boolean HasParameters() const;
		%feature("autodoc", "1");
		const TColStd_Array1OfReal & Parameters() const;
		%feature("autodoc", "1");
		TColStd_Array1OfReal & ChangeParameters() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~Poly_Polygon3D();

};
%extend Poly_Polygon3D {
	Handle_Poly_Polygon3D GetHandle() {
	return *(Handle_Poly_Polygon3D*) &$self;
	}
};