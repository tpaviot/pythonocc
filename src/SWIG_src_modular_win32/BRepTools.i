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
%module BRepTools

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


%include BRepTools_dependencies.i


%include BRepTools_headers.i




%nodefaultctor Handle_BRepTools_Modification;
class Handle_BRepTools_Modification : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_BRepTools_Modification();
		%feature("autodoc", "1");
		Handle_BRepTools_Modification();
		%feature("autodoc", "1");
		Handle_BRepTools_Modification(const Handle_BRepTools_Modification &aHandle);
		%feature("autodoc", "1");
		Handle_BRepTools_Modification(const BRepTools_Modification *anItem);
		%feature("autodoc", "1");
		Handle_BRepTools_Modification const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepTools_Modification {
	BRepTools_Modification* GetObject() {
	return (BRepTools_Modification*)$self->Access();
	}
};

%nodefaultctor Handle_BRepTools_GTrsfModification;
class Handle_BRepTools_GTrsfModification : public Handle_BRepTools_Modification {
	public:
		%feature("autodoc", "1");
		~Handle_BRepTools_GTrsfModification();
		%feature("autodoc", "1");
		Handle_BRepTools_GTrsfModification();
		%feature("autodoc", "1");
		Handle_BRepTools_GTrsfModification(const Handle_BRepTools_GTrsfModification &aHandle);
		%feature("autodoc", "1");
		Handle_BRepTools_GTrsfModification(const BRepTools_GTrsfModification *anItem);
		%feature("autodoc", "1");
		Handle_BRepTools_GTrsfModification const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepTools_GTrsfModification {
	BRepTools_GTrsfModification* GetObject() {
	return (BRepTools_GTrsfModification*)$self->Access();
	}
};

%nodefaultctor Handle_BRepTools_TrsfModification;
class Handle_BRepTools_TrsfModification : public Handle_BRepTools_Modification {
	public:
		%feature("autodoc", "1");
		~Handle_BRepTools_TrsfModification();
		%feature("autodoc", "1");
		Handle_BRepTools_TrsfModification();
		%feature("autodoc", "1");
		Handle_BRepTools_TrsfModification(const Handle_BRepTools_TrsfModification &aHandle);
		%feature("autodoc", "1");
		Handle_BRepTools_TrsfModification(const BRepTools_TrsfModification *anItem);
		%feature("autodoc", "1");
		Handle_BRepTools_TrsfModification const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepTools_TrsfModification {
	BRepTools_TrsfModification* GetObject() {
	return (BRepTools_TrsfModification*)$self->Access();
	}
};

%nodefaultctor Handle_BRepTools_ReShape;
class Handle_BRepTools_ReShape : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_BRepTools_ReShape();
		%feature("autodoc", "1");
		Handle_BRepTools_ReShape();
		%feature("autodoc", "1");
		Handle_BRepTools_ReShape(const Handle_BRepTools_ReShape &aHandle);
		%feature("autodoc", "1");
		Handle_BRepTools_ReShape(const BRepTools_ReShape *anItem);
		%feature("autodoc", "1");
		Handle_BRepTools_ReShape const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepTools_ReShape {
	BRepTools_ReShape* GetObject() {
	return (BRepTools_ReShape*)$self->Access();
	}
};

%nodefaultctor Handle_BRepTools_NurbsConvertModification;
class Handle_BRepTools_NurbsConvertModification : public Handle_BRepTools_Modification {
	public:
		%feature("autodoc", "1");
		~Handle_BRepTools_NurbsConvertModification();
		%feature("autodoc", "1");
		Handle_BRepTools_NurbsConvertModification();
		%feature("autodoc", "1");
		Handle_BRepTools_NurbsConvertModification(const Handle_BRepTools_NurbsConvertModification &aHandle);
		%feature("autodoc", "1");
		Handle_BRepTools_NurbsConvertModification(const BRepTools_NurbsConvertModification *anItem);
		%feature("autodoc", "1");
		Handle_BRepTools_NurbsConvertModification const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepTools_NurbsConvertModification {
	BRepTools_NurbsConvertModification* GetObject() {
	return (BRepTools_NurbsConvertModification*)$self->Access();
	}
};

%nodefaultctor Handle_BRepTools_DataMapNodeOfMapOfVertexPnt2d;
class Handle_BRepTools_DataMapNodeOfMapOfVertexPnt2d : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_BRepTools_DataMapNodeOfMapOfVertexPnt2d();
		%feature("autodoc", "1");
		Handle_BRepTools_DataMapNodeOfMapOfVertexPnt2d();
		%feature("autodoc", "1");
		Handle_BRepTools_DataMapNodeOfMapOfVertexPnt2d(const Handle_BRepTools_DataMapNodeOfMapOfVertexPnt2d &aHandle);
		%feature("autodoc", "1");
		Handle_BRepTools_DataMapNodeOfMapOfVertexPnt2d(const BRepTools_DataMapNodeOfMapOfVertexPnt2d *anItem);
		%feature("autodoc", "1");
		Handle_BRepTools_DataMapNodeOfMapOfVertexPnt2d const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepTools_DataMapNodeOfMapOfVertexPnt2d {
	BRepTools_DataMapNodeOfMapOfVertexPnt2d* GetObject() {
	return (BRepTools_DataMapNodeOfMapOfVertexPnt2d*)$self->Access();
	}
};

%nodefaultctor BRepTools_ShapeSet;
class BRepTools_ShapeSet : public TopTools_ShapeSet {
	public:
		%feature("autodoc", "1");
		BRepTools_ShapeSet(const Standard_Boolean isWithTriangles=1);
		%feature("autodoc", "1");
		BRepTools_ShapeSet(const BRep_Builder &B, const Standard_Boolean isWithTriangles=1);
		%feature("autodoc", "1");
		virtual		void Clear();
		%feature("autodoc", "1");
		virtual		void AddGeometry(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		virtual		void DumpGeometry(Standard_OStream & OS) const;
		%feature("autodoc", "1");
		virtual		void WriteGeometry(Standard_OStream & OS);
		%feature("autodoc", "1");
		virtual		void ReadGeometry(std::istream & IS);
		%feature("autodoc", "1");
		virtual		void DumpGeometry(const TopoDS_Shape &S, Standard_OStream & OS) const;
		%feature("autodoc", "1");
		virtual		void WriteGeometry(const TopoDS_Shape &S, Standard_OStream & OS) const;
		%feature("autodoc", "1");
		virtual		void ReadGeometry(const TopAbs_ShapeEnum T, std::istream & IS, TopoDS_Shape & S);
		%feature("autodoc", "1");
		virtual		void AddShapes(TopoDS_Shape & S1, const TopoDS_Shape &S2);
		%feature("autodoc", "1");
		virtual		void Check(const TopAbs_ShapeEnum T, TopoDS_Shape & S);
		%feature("autodoc", "1");
		void ReadPolygon3D(std::istream & IS);
		%feature("autodoc", "1");
		void WritePolygon3D(Standard_OStream & OS, const Standard_Boolean Compact=1) const;
		%feature("autodoc", "1");
		void DumpPolygon3D(Standard_OStream & OS) const;
		%feature("autodoc", "1");
		void ReadTriangulation(std::istream & IS);
		%feature("autodoc", "1");
		void WriteTriangulation(Standard_OStream & OS, const Standard_Boolean Compact=1) const;
		%feature("autodoc", "1");
		void DumpTriangulation(Standard_OStream & OS) const;
		%feature("autodoc", "1");
		void ReadPolygonOnTriangulation(std::istream & IS);
		%feature("autodoc", "1");
		void WritePolygonOnTriangulation(Standard_OStream & OS, const Standard_Boolean Compact=1) const;
		%feature("autodoc", "1");
		void DumpPolygonOnTriangulation(Standard_OStream & OS) const;
		%feature("autodoc", "1");
		virtual		~BRepTools_ShapeSet();

};

%nodefaultctor BRepTools_Modification;
class BRepTools_Modification : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		virtual		Standard_Boolean NewSurface(const TopoDS_Face &F, Handle_Geom_Surface & S, TopLoc_Location & L, Standard_Real &OutValue, Standard_Boolean & RevWires, Standard_Boolean & RevFace);
		%feature("autodoc", "1");
		virtual		Standard_Boolean NewCurve(const TopoDS_Edge &E, Handle_Geom_Curve & C, TopLoc_Location & L, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean NewPoint(const TopoDS_Vertex &V, gp_Pnt & P, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean NewCurve2d(const TopoDS_Edge &E, const TopoDS_Face &F, const TopoDS_Edge &NewE, const TopoDS_Face &NewF, Handle_Geom2d_Curve & C, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean NewParameter(const TopoDS_Vertex &V, const TopoDS_Edge &E, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		GeomAbs_Shape Continuity(const TopoDS_Edge &E, const TopoDS_Face &F1, const TopoDS_Face &F2, const TopoDS_Edge &NewE, const TopoDS_Face &NewF1, const TopoDS_Face &NewF2);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepTools_Modification {
	Handle_BRepTools_Modification GetHandle() {
	return *(Handle_BRepTools_Modification*) &$self;
	}
};

%nodefaultctor BRepTools_NurbsConvertModification;
class BRepTools_NurbsConvertModification : public BRepTools_Modification {
	public:
		%feature("autodoc", "1");
		BRepTools_NurbsConvertModification();
		%feature("autodoc", "1");
		virtual		Standard_Boolean NewSurface(const TopoDS_Face &F, Handle_Geom_Surface & S, TopLoc_Location & L, Standard_Real &OutValue, Standard_Boolean & RevWires, Standard_Boolean & RevFace);
		%feature("autodoc", "1");
		virtual		Standard_Boolean NewCurve(const TopoDS_Edge &E, Handle_Geom_Curve & C, TopLoc_Location & L, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean NewPoint(const TopoDS_Vertex &V, gp_Pnt & P, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean NewCurve2d(const TopoDS_Edge &E, const TopoDS_Face &F, const TopoDS_Edge &NewE, const TopoDS_Face &NewF, Handle_Geom2d_Curve & C, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean NewParameter(const TopoDS_Vertex &V, const TopoDS_Edge &E, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		GeomAbs_Shape Continuity(const TopoDS_Edge &E, const TopoDS_Face &F1, const TopoDS_Face &F2, const TopoDS_Edge &NewE, const TopoDS_Face &NewF1, const TopoDS_Face &NewF2);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BRepTools_NurbsConvertModification();

};
%extend BRepTools_NurbsConvertModification {
	Handle_BRepTools_NurbsConvertModification GetHandle() {
	return *(Handle_BRepTools_NurbsConvertModification*) &$self;
	}
};

%nodefaultctor BRepTools_MapOfVertexPnt2d;
class BRepTools_MapOfVertexPnt2d : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		BRepTools_MapOfVertexPnt2d(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		BRepTools_MapOfVertexPnt2d & Assign(const BRepTools_MapOfVertexPnt2d &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~BRepTools_MapOfVertexPnt2d();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TopoDS_Shape &K, const TColgp_SequenceOfPnt2d &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TopoDS_Shape &K);
		%feature("autodoc", "1");
		const TColgp_SequenceOfPnt2d & Find(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		const TColgp_SequenceOfPnt2d & operator()(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		TColgp_SequenceOfPnt2d & ChangeFind(const TopoDS_Shape &K);
		%feature("autodoc", "1");
		TColgp_SequenceOfPnt2d & operator()(const TopoDS_Shape &K);

};

%nodefaultctor BRepTools;
class BRepTools {
	public:
		%feature("autodoc", "1");
		~BRepTools();
		%feature("autodoc", "1");
		BRepTools();
		%feature("autodoc", "1");
		void UVBounds(const TopoDS_Face &F, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		void UVBounds(const TopoDS_Face &F, const TopoDS_Wire &W, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		void UVBounds(const TopoDS_Face &F, const TopoDS_Edge &E, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		void AddUVBounds(const TopoDS_Face &F, Bnd_Box2d & B);
		%feature("autodoc", "1");
		void AddUVBounds(const TopoDS_Face &F, const TopoDS_Wire &W, Bnd_Box2d & B);
		%feature("autodoc", "1");
		void AddUVBounds(const TopoDS_Face &F, const TopoDS_Edge &E, Bnd_Box2d & B);
		%feature("autodoc", "1");
		void Update(const TopoDS_Vertex &V);
		%feature("autodoc", "1");
		void Update(const TopoDS_Edge &E);
		%feature("autodoc", "1");
		void Update(const TopoDS_Wire &W);
		%feature("autodoc", "1");
		void Update(const TopoDS_Face &F);
		%feature("autodoc", "1");
		void Update(const TopoDS_Shell &S);
		%feature("autodoc", "1");
		void Update(const TopoDS_Solid &S);
		%feature("autodoc", "1");
		void Update(const TopoDS_CompSolid &C);
		%feature("autodoc", "1");
		void Update(const TopoDS_Compound &C);
		%feature("autodoc", "1");
		void Update(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		void UpdateFaceUVPoints(const TopoDS_Face &F);
		%feature("autodoc", "1");
		void Clean(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		Standard_Boolean Triangulation(const TopoDS_Shape &S, const Standard_Real deflec);
		%feature("autodoc", "1");
		Standard_Boolean Compare(const TopoDS_Vertex &V1, const TopoDS_Vertex &V2);
		%feature("autodoc", "1");
		Standard_Boolean Compare(const TopoDS_Edge &E1, const TopoDS_Edge &E2);
		%feature("autodoc", "1");
		TopoDS_Wire OuterWire(const TopoDS_Face &F);
		%feature("autodoc", "1");
		TopoDS_Shell OuterShell(const TopoDS_Solid &S);
		%feature("autodoc", "1");
		void Map3DEdges(const TopoDS_Shape &S, TopTools_IndexedMapOfShape & M);
		%feature("autodoc", "1");
		Standard_Boolean IsReallyClosed(const TopoDS_Edge &E, const TopoDS_Face &F);
		%feature("autodoc", "1");
		void Dump(const TopoDS_Shape &Sh, Standard_OStream & S);
		%feature("autodoc", "1");
		void Write(const TopoDS_Shape &Sh, Standard_OStream & S, const Handle_Message_ProgressIndicator &PR=0);
		%feature("autodoc", "1");
		void Read(TopoDS_Shape & Sh, std::istream & S, const BRep_Builder &B, const Handle_Message_ProgressIndicator &PR=0);
		%feature("autodoc", "1");
		Standard_Boolean Write(const TopoDS_Shape &Sh, const char * File, const Handle_Message_ProgressIndicator &PR=0);
		%feature("autodoc", "1");
		Standard_Boolean Read(TopoDS_Shape & Sh, const char * File, const BRep_Builder &B, const Handle_Message_ProgressIndicator &PR=0);

};

%nodefaultctor BRepTools_GTrsfModification;
class BRepTools_GTrsfModification : public BRepTools_Modification {
	public:
		%feature("autodoc", "1");
		BRepTools_GTrsfModification(const gp_GTrsf &T);
		%feature("autodoc", "1");
		gp_GTrsf & GTrsf();
		%feature("autodoc", "1");
		virtual		Standard_Boolean NewSurface(const TopoDS_Face &F, Handle_Geom_Surface & S, TopLoc_Location & L, Standard_Real &OutValue, Standard_Boolean & RevWires, Standard_Boolean & RevFace);
		%feature("autodoc", "1");
		virtual		Standard_Boolean NewCurve(const TopoDS_Edge &E, Handle_Geom_Curve & C, TopLoc_Location & L, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean NewPoint(const TopoDS_Vertex &V, gp_Pnt & P, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean NewCurve2d(const TopoDS_Edge &E, const TopoDS_Face &F, const TopoDS_Edge &NewE, const TopoDS_Face &NewF, Handle_Geom2d_Curve & C, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean NewParameter(const TopoDS_Vertex &V, const TopoDS_Edge &E, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		GeomAbs_Shape Continuity(const TopoDS_Edge &E, const TopoDS_Face &F1, const TopoDS_Face &F2, const TopoDS_Edge &NewE, const TopoDS_Face &NewF1, const TopoDS_Face &NewF2);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BRepTools_GTrsfModification();

};
%extend BRepTools_GTrsfModification {
	Handle_BRepTools_GTrsfModification GetHandle() {
	return *(Handle_BRepTools_GTrsfModification*) &$self;
	}
};

%nodefaultctor BRepTools_Modifier;
class BRepTools_Modifier {
	public:
		%feature("autodoc", "1");
		~BRepTools_Modifier();
		%feature("autodoc", "1");
		BRepTools_Modifier();
		%feature("autodoc", "1");
		BRepTools_Modifier(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		BRepTools_Modifier(const TopoDS_Shape &S, const Handle_BRepTools_Modification &M);
		%feature("autodoc", "1");
		void Init(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		void Perform(const Handle_BRepTools_Modification &M);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		const TopoDS_Shape & ModifiedShape(const TopoDS_Shape &S) const;

};

%nodefaultctor BRepTools_TrsfModification;
class BRepTools_TrsfModification : public BRepTools_Modification {
	public:
		%feature("autodoc", "1");
		BRepTools_TrsfModification(const gp_Trsf &T);
		%feature("autodoc", "1");
		gp_Trsf & Trsf();
		%feature("autodoc", "1");
		virtual		Standard_Boolean NewSurface(const TopoDS_Face &F, Handle_Geom_Surface & S, TopLoc_Location & L, Standard_Real &OutValue, Standard_Boolean & RevWires, Standard_Boolean & RevFace);
		%feature("autodoc", "1");
		virtual		Standard_Boolean NewCurve(const TopoDS_Edge &E, Handle_Geom_Curve & C, TopLoc_Location & L, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean NewPoint(const TopoDS_Vertex &V, gp_Pnt & P, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean NewCurve2d(const TopoDS_Edge &E, const TopoDS_Face &F, const TopoDS_Edge &NewE, const TopoDS_Face &NewF, Handle_Geom2d_Curve & C, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean NewParameter(const TopoDS_Vertex &V, const TopoDS_Edge &E, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		GeomAbs_Shape Continuity(const TopoDS_Edge &E, const TopoDS_Face &F1, const TopoDS_Face &F2, const TopoDS_Edge &NewE, const TopoDS_Face &NewF1, const TopoDS_Face &NewF2);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BRepTools_TrsfModification();

};
%extend BRepTools_TrsfModification {
	Handle_BRepTools_TrsfModification GetHandle() {
	return *(Handle_BRepTools_TrsfModification*) &$self;
	}
};

%nodefaultctor BRepTools_WireExplorer;
class BRepTools_WireExplorer {
	public:
		%feature("autodoc", "1");
		~BRepTools_WireExplorer();
		%feature("autodoc", "1");
		BRepTools_WireExplorer();
		%feature("autodoc", "1");
		BRepTools_WireExplorer(const TopoDS_Wire &W);
		%feature("autodoc", "1");
		BRepTools_WireExplorer(const TopoDS_Wire &W, const TopoDS_Face &F);
		%feature("autodoc", "1");
		void Init(const TopoDS_Wire &W);
		%feature("autodoc", "1");
		void Init(const TopoDS_Wire &W, const TopoDS_Face &F);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		const TopoDS_Edge & Current() const;
		%feature("autodoc", "1");
		TopAbs_Orientation Orientation() const;
		%feature("autodoc", "1");
		const TopoDS_Vertex & CurrentVertex() const;
		%feature("autodoc", "1");
		void Clear();

};

%nodefaultctor BRepTools_ReShape;
class BRepTools_ReShape : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		BRepTools_ReShape();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Remove(const TopoDS_Shape &shape, const Standard_Boolean oriented=0);
		%feature("autodoc", "1");
		void Replace(const TopoDS_Shape &shape, const TopoDS_Shape &newshape, const Standard_Boolean oriented=0);
		%feature("autodoc", "1");
		Standard_Boolean IsRecorded(const TopoDS_Shape &shape) const;
		%feature("autodoc", "1");
		TopoDS_Shape Value(const TopoDS_Shape &shape) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer Status(const TopoDS_Shape &shape, TopoDS_Shape & newsh, const Standard_Boolean last=0);
		%feature("autodoc", "1");
		virtual		TopoDS_Shape Apply(const TopoDS_Shape &shape, const TopAbs_ShapeEnum until, const Standard_Integer buildmode);
		%feature("autodoc", "1");
		virtual		TopoDS_Shape Apply(const TopoDS_Shape &shape, const TopAbs_ShapeEnum until=TopAbs_SHAPE);
		%feature("autodoc", "1");
		Standard_Boolean & ModeConsiderLocation();
		%feature("autodoc", "1");
		Standard_Boolean & ModeConsiderOrientation();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BRepTools_ReShape();

};
%extend BRepTools_ReShape {
	Handle_BRepTools_ReShape GetHandle() {
	return *(Handle_BRepTools_ReShape*) &$self;
	}
};

%nodefaultctor BRepTools_DataMapIteratorOfMapOfVertexPnt2d;
class BRepTools_DataMapIteratorOfMapOfVertexPnt2d : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		~BRepTools_DataMapIteratorOfMapOfVertexPnt2d();
		%feature("autodoc", "1");
		BRepTools_DataMapIteratorOfMapOfVertexPnt2d();
		%feature("autodoc", "1");
		BRepTools_DataMapIteratorOfMapOfVertexPnt2d(const BRepTools_MapOfVertexPnt2d &aMap);
		%feature("autodoc", "1");
		void Initialize(const BRepTools_MapOfVertexPnt2d &aMap);
		%feature("autodoc", "1");
		const TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		const TColgp_SequenceOfPnt2d & Value() const;

};

%nodefaultctor BRepTools_Quilt;
class BRepTools_Quilt {
	public:
		%feature("autodoc", "1");
		~BRepTools_Quilt();
		%feature("autodoc", "1");
		BRepTools_Quilt();
		%feature("autodoc", "1");
		void Bind(const TopoDS_Edge &Eold, const TopoDS_Edge &Enew);
		%feature("autodoc", "1");
		void Bind(const TopoDS_Vertex &Vold, const TopoDS_Vertex &Vnew);
		%feature("autodoc", "1");
		void Add(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		Standard_Boolean IsCopied(const TopoDS_Shape &S) const;
		%feature("autodoc", "1");
		const TopoDS_Shape & Copy(const TopoDS_Shape &S) const;
		%feature("autodoc", "1");
		TopoDS_Shape Shells() const;

};

%nodefaultctor BRepTools_Substitution;
class BRepTools_Substitution {
	public:
		%feature("autodoc", "1");
		~BRepTools_Substitution();
		%feature("autodoc", "1");
		BRepTools_Substitution();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Substitute(const TopoDS_Shape &OldShape, const TopTools_ListOfShape &NewShapes);
		%feature("autodoc", "1");
		void Build(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		Standard_Boolean IsCopied(const TopoDS_Shape &S) const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Copy(const TopoDS_Shape &S) const;

};

%nodefaultctor BRepTools_DataMapNodeOfMapOfVertexPnt2d;
class BRepTools_DataMapNodeOfMapOfVertexPnt2d : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BRepTools_DataMapNodeOfMapOfVertexPnt2d(const TopoDS_Shape &K, const TColgp_SequenceOfPnt2d &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		TColgp_SequenceOfPnt2d & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BRepTools_DataMapNodeOfMapOfVertexPnt2d();

};
%extend BRepTools_DataMapNodeOfMapOfVertexPnt2d {
	Handle_BRepTools_DataMapNodeOfMapOfVertexPnt2d GetHandle() {
	return *(Handle_BRepTools_DataMapNodeOfMapOfVertexPnt2d*) &$self;
	}
};