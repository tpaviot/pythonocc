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
%module HLRTopoBRep

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


%include HLRTopoBRep_dependencies.i


%include HLRTopoBRep_headers.i




%nodefaultctor Handle_HLRTopoBRep_DataMapNodeOfDataMapOfShapeFaceData;
class Handle_HLRTopoBRep_DataMapNodeOfDataMapOfShapeFaceData : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_HLRTopoBRep_DataMapNodeOfDataMapOfShapeFaceData();
		%feature("autodoc", "1");
		Handle_HLRTopoBRep_DataMapNodeOfDataMapOfShapeFaceData();
		%feature("autodoc", "1");
		Handle_HLRTopoBRep_DataMapNodeOfDataMapOfShapeFaceData(const Handle_HLRTopoBRep_DataMapNodeOfDataMapOfShapeFaceData &aHandle);
		%feature("autodoc", "1");
		Handle_HLRTopoBRep_DataMapNodeOfDataMapOfShapeFaceData(const HLRTopoBRep_DataMapNodeOfDataMapOfShapeFaceData *anItem);
		%feature("autodoc", "1");
		Handle_HLRTopoBRep_DataMapNodeOfDataMapOfShapeFaceData const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_HLRTopoBRep_DataMapNodeOfDataMapOfShapeFaceData {
	HLRTopoBRep_DataMapNodeOfDataMapOfShapeFaceData* GetObject() {
	return (HLRTopoBRep_DataMapNodeOfDataMapOfShapeFaceData*)$self->Access();
	}
};

%nodefaultctor Handle_HLRTopoBRep_OutLiner;
class Handle_HLRTopoBRep_OutLiner : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_HLRTopoBRep_OutLiner();
		%feature("autodoc", "1");
		Handle_HLRTopoBRep_OutLiner();
		%feature("autodoc", "1");
		Handle_HLRTopoBRep_OutLiner(const Handle_HLRTopoBRep_OutLiner &aHandle);
		%feature("autodoc", "1");
		Handle_HLRTopoBRep_OutLiner(const HLRTopoBRep_OutLiner *anItem);
		%feature("autodoc", "1");
		Handle_HLRTopoBRep_OutLiner const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_HLRTopoBRep_OutLiner {
	HLRTopoBRep_OutLiner* GetObject() {
	return (HLRTopoBRep_OutLiner*)$self->Access();
	}
};

%nodefaultctor Handle_HLRTopoBRep_DataMapNodeOfMapOfShapeListOfVData;
class Handle_HLRTopoBRep_DataMapNodeOfMapOfShapeListOfVData : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_HLRTopoBRep_DataMapNodeOfMapOfShapeListOfVData();
		%feature("autodoc", "1");
		Handle_HLRTopoBRep_DataMapNodeOfMapOfShapeListOfVData();
		%feature("autodoc", "1");
		Handle_HLRTopoBRep_DataMapNodeOfMapOfShapeListOfVData(const Handle_HLRTopoBRep_DataMapNodeOfMapOfShapeListOfVData &aHandle);
		%feature("autodoc", "1");
		Handle_HLRTopoBRep_DataMapNodeOfMapOfShapeListOfVData(const HLRTopoBRep_DataMapNodeOfMapOfShapeListOfVData *anItem);
		%feature("autodoc", "1");
		Handle_HLRTopoBRep_DataMapNodeOfMapOfShapeListOfVData const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_HLRTopoBRep_DataMapNodeOfMapOfShapeListOfVData {
	HLRTopoBRep_DataMapNodeOfMapOfShapeListOfVData* GetObject() {
	return (HLRTopoBRep_DataMapNodeOfMapOfShapeListOfVData*)$self->Access();
	}
};

%nodefaultctor Handle_HLRTopoBRep_ListNodeOfListOfVData;
class Handle_HLRTopoBRep_ListNodeOfListOfVData : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_HLRTopoBRep_ListNodeOfListOfVData();
		%feature("autodoc", "1");
		Handle_HLRTopoBRep_ListNodeOfListOfVData();
		%feature("autodoc", "1");
		Handle_HLRTopoBRep_ListNodeOfListOfVData(const Handle_HLRTopoBRep_ListNodeOfListOfVData &aHandle);
		%feature("autodoc", "1");
		Handle_HLRTopoBRep_ListNodeOfListOfVData(const HLRTopoBRep_ListNodeOfListOfVData *anItem);
		%feature("autodoc", "1");
		Handle_HLRTopoBRep_ListNodeOfListOfVData const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_HLRTopoBRep_ListNodeOfListOfVData {
	HLRTopoBRep_ListNodeOfListOfVData* GetObject() {
	return (HLRTopoBRep_ListNodeOfListOfVData*)$self->Access();
	}
};

%nodefaultctor HLRTopoBRep_DataMapNodeOfDataMapOfShapeFaceData;
class HLRTopoBRep_DataMapNodeOfDataMapOfShapeFaceData : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		HLRTopoBRep_DataMapNodeOfDataMapOfShapeFaceData(const TopoDS_Shape &K, const HLRTopoBRep_FaceData &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		HLRTopoBRep_FaceData & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~HLRTopoBRep_DataMapNodeOfDataMapOfShapeFaceData();

};
%extend HLRTopoBRep_DataMapNodeOfDataMapOfShapeFaceData {
	Handle_HLRTopoBRep_DataMapNodeOfDataMapOfShapeFaceData GetHandle() {
	return *(Handle_HLRTopoBRep_DataMapNodeOfDataMapOfShapeFaceData*) &$self;
	}
};

%nodefaultctor HLRTopoBRep_MapOfShapeListOfVData;
class HLRTopoBRep_MapOfShapeListOfVData : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		HLRTopoBRep_MapOfShapeListOfVData(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		HLRTopoBRep_MapOfShapeListOfVData & Assign(const HLRTopoBRep_MapOfShapeListOfVData &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~HLRTopoBRep_MapOfShapeListOfVData();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TopoDS_Shape &K, const HLRTopoBRep_ListOfVData &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TopoDS_Shape &K);
		%feature("autodoc", "1");
		const HLRTopoBRep_ListOfVData & Find(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		const HLRTopoBRep_ListOfVData & operator()(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		HLRTopoBRep_ListOfVData & ChangeFind(const TopoDS_Shape &K);
		%feature("autodoc", "1");
		HLRTopoBRep_ListOfVData & operator()(const TopoDS_Shape &K);

};

%nodefaultctor HLRTopoBRep_Data;
class HLRTopoBRep_Data {
	public:
		%feature("autodoc", "1");
		~HLRTopoBRep_Data();
		%feature("autodoc", "1");
		HLRTopoBRep_Data();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Clean();
		%feature("autodoc", "1");
		Standard_Boolean EdgeHasSplE(const TopoDS_Edge &E) const;
		%feature("autodoc", "1");
		Standard_Boolean FaceHasIntL(const TopoDS_Face &F) const;
		%feature("autodoc", "1");
		Standard_Boolean FaceHasOutL(const TopoDS_Face &F) const;
		%feature("autodoc", "1");
		Standard_Boolean FaceHasIsoL(const TopoDS_Face &F) const;
		%feature("autodoc", "1");
		Standard_Boolean IsSplEEdgeEdge(const TopoDS_Edge &E1, const TopoDS_Edge &E2) const;
		%feature("autodoc", "1");
		Standard_Boolean IsIntLFaceEdge(const TopoDS_Face &F, const TopoDS_Edge &E) const;
		%feature("autodoc", "1");
		Standard_Boolean IsOutLFaceEdge(const TopoDS_Face &F, const TopoDS_Edge &E) const;
		%feature("autodoc", "1");
		Standard_Boolean IsIsoLFaceEdge(const TopoDS_Face &F, const TopoDS_Edge &E) const;
		%feature("autodoc", "1");
		TopoDS_Shape NewSOldS(const TopoDS_Shape &New) const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & EdgeSplE(const TopoDS_Edge &E) const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & FaceIntL(const TopoDS_Face &F) const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & FaceOutL(const TopoDS_Face &F) const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & FaceIsoL(const TopoDS_Face &F) const;
		%feature("autodoc", "1");
		Standard_Boolean IsOutV(const TopoDS_Vertex &V) const;
		%feature("autodoc", "1");
		Standard_Boolean IsIntV(const TopoDS_Vertex &V) const;
		%feature("autodoc", "1");
		void AddOldS(const TopoDS_Shape &NewS, const TopoDS_Shape &OldS);
		%feature("autodoc", "1");
		TopTools_ListOfShape & AddSplE(const TopoDS_Edge &E);
		%feature("autodoc", "1");
		TopTools_ListOfShape & AddIntL(const TopoDS_Face &F);
		%feature("autodoc", "1");
		TopTools_ListOfShape & AddOutL(const TopoDS_Face &F);
		%feature("autodoc", "1");
		TopTools_ListOfShape & AddIsoL(const TopoDS_Face &F);
		%feature("autodoc", "1");
		void AddOutV(const TopoDS_Vertex &V);
		%feature("autodoc", "1");
		void AddIntV(const TopoDS_Vertex &V);
		%feature("autodoc", "1");
		void InitEdge();
		%feature("autodoc", "1");
		Standard_Boolean MoreEdge() const;
		%feature("autodoc", "1");
		void NextEdge();
		%feature("autodoc", "1");
		const TopoDS_Edge & Edge() const;
		%feature("autodoc", "1");
		void InitVertex(const TopoDS_Edge &E);
		%feature("autodoc", "1");
		Standard_Boolean MoreVertex() const;
		%feature("autodoc", "1");
		void NextVertex();
		%feature("autodoc", "1");
		const TopoDS_Vertex & Vertex() const;
		%feature("autodoc", "1");
		Standard_Real Parameter() const;
		%feature("autodoc", "1");
		void InsertBefore(const TopoDS_Vertex &V, const Standard_Real P);
		%feature("autodoc", "1");
		void Append(const TopoDS_Vertex &V, const Standard_Real P);

};

%nodefaultctor HLRTopoBRep_DataMapIteratorOfDataMapOfShapeFaceData;
class HLRTopoBRep_DataMapIteratorOfDataMapOfShapeFaceData : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		~HLRTopoBRep_DataMapIteratorOfDataMapOfShapeFaceData();
		%feature("autodoc", "1");
		HLRTopoBRep_DataMapIteratorOfDataMapOfShapeFaceData();
		%feature("autodoc", "1");
		HLRTopoBRep_DataMapIteratorOfDataMapOfShapeFaceData(const HLRTopoBRep_DataMapOfShapeFaceData &aMap);
		%feature("autodoc", "1");
		void Initialize(const HLRTopoBRep_DataMapOfShapeFaceData &aMap);
		%feature("autodoc", "1");
		const TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		const HLRTopoBRep_FaceData & Value() const;

};

%nodefaultctor HLRTopoBRep_ListOfVData;
class HLRTopoBRep_ListOfVData {
	public:
		%feature("autodoc", "1");
		HLRTopoBRep_ListOfVData();
		%feature("autodoc", "1");
		void Assign(const HLRTopoBRep_ListOfVData &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~HLRTopoBRep_ListOfVData();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const HLRTopoBRep_VData &I);
		%feature("autodoc", "1");
		void Prepend(const HLRTopoBRep_VData &I, HLRTopoBRep_ListIteratorOfListOfVData & theIt);
		%feature("autodoc", "1");
		void Prepend(HLRTopoBRep_ListOfVData & Other);
		%feature("autodoc", "1");
		void Append(const HLRTopoBRep_VData &I);
		%feature("autodoc", "1");
		void Append(const HLRTopoBRep_VData &I, HLRTopoBRep_ListIteratorOfListOfVData & theIt);
		%feature("autodoc", "1");
		void Append(HLRTopoBRep_ListOfVData & Other);
		%feature("autodoc", "1");
		HLRTopoBRep_VData & First() const;
		%feature("autodoc", "1");
		HLRTopoBRep_VData & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(HLRTopoBRep_ListIteratorOfListOfVData & It);
		%feature("autodoc", "1");
		void InsertBefore(const HLRTopoBRep_VData &I, HLRTopoBRep_ListIteratorOfListOfVData & It);
		%feature("autodoc", "1");
		void InsertBefore(HLRTopoBRep_ListOfVData & Other, HLRTopoBRep_ListIteratorOfListOfVData & It);
		%feature("autodoc", "1");
		void InsertAfter(const HLRTopoBRep_VData &I, HLRTopoBRep_ListIteratorOfListOfVData & It);
		%feature("autodoc", "1");
		void InsertAfter(HLRTopoBRep_ListOfVData & Other, HLRTopoBRep_ListIteratorOfListOfVData & It);

};

%nodefaultctor HLRTopoBRep_DataMapIteratorOfMapOfShapeListOfVData;
class HLRTopoBRep_DataMapIteratorOfMapOfShapeListOfVData : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		~HLRTopoBRep_DataMapIteratorOfMapOfShapeListOfVData();
		%feature("autodoc", "1");
		HLRTopoBRep_DataMapIteratorOfMapOfShapeListOfVData();
		%feature("autodoc", "1");
		HLRTopoBRep_DataMapIteratorOfMapOfShapeListOfVData(const HLRTopoBRep_MapOfShapeListOfVData &aMap);
		%feature("autodoc", "1");
		void Initialize(const HLRTopoBRep_MapOfShapeListOfVData &aMap);
		%feature("autodoc", "1");
		const TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		const HLRTopoBRep_ListOfVData & Value() const;

};

%nodefaultctor HLRTopoBRep_VData;
class HLRTopoBRep_VData {
	public:
		%feature("autodoc", "1");
		~HLRTopoBRep_VData();
		%feature("autodoc", "1");
		HLRTopoBRep_VData();
		%feature("autodoc", "1");
		HLRTopoBRep_VData(const Standard_Real P, const TopoDS_Shape &V);
		%feature("autodoc", "1");
		Standard_Real Parameter() const;
		%feature("autodoc", "1");
		const TopoDS_Shape & Vertex() const;

};

%nodefaultctor HLRTopoBRep_FaceData;
class HLRTopoBRep_FaceData {
	public:
		%feature("autodoc", "1");
		~HLRTopoBRep_FaceData();
		%feature("autodoc", "1");
		HLRTopoBRep_FaceData();
		%feature("autodoc", "1");
		const TopTools_ListOfShape & FaceIntL() const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & FaceOutL() const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & FaceIsoL() const;
		%feature("autodoc", "1");
		TopTools_ListOfShape & AddIntL();
		%feature("autodoc", "1");
		TopTools_ListOfShape & AddOutL();
		%feature("autodoc", "1");
		TopTools_ListOfShape & AddIsoL();

};

%nodefaultctor HLRTopoBRep_ListNodeOfListOfVData;
class HLRTopoBRep_ListNodeOfListOfVData : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		HLRTopoBRep_ListNodeOfListOfVData(const HLRTopoBRep_VData &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		HLRTopoBRep_VData & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~HLRTopoBRep_ListNodeOfListOfVData();

};
%extend HLRTopoBRep_ListNodeOfListOfVData {
	Handle_HLRTopoBRep_ListNodeOfListOfVData GetHandle() {
	return *(Handle_HLRTopoBRep_ListNodeOfListOfVData*) &$self;
	}
};

%nodefaultctor HLRTopoBRep_FaceIsoLiner;
class HLRTopoBRep_FaceIsoLiner {
	public:
		%feature("autodoc", "1");
		~HLRTopoBRep_FaceIsoLiner();
		%feature("autodoc", "1");
		HLRTopoBRep_FaceIsoLiner();
		%feature("autodoc", "1");
		void Perform(const Standard_Integer FI, const TopoDS_Face &F, HLRTopoBRep_Data & DS, const Standard_Integer nbIsos);
		%feature("autodoc", "1");
		TopoDS_Vertex MakeVertex(const TopoDS_Edge &E, const gp_Pnt &P, const Standard_Real Par, const Standard_Real Tol, HLRTopoBRep_Data & DS);
		%feature("autodoc", "1");
		void MakeIsoLine(const TopoDS_Face &F, const Handle_Geom2d_Line &Iso, TopoDS_Vertex & V1, TopoDS_Vertex & V2, const Standard_Real U1, const Standard_Real U2, const Standard_Real Tol, HLRTopoBRep_Data & DS);

};

%nodefaultctor HLRTopoBRep_ListIteratorOfListOfVData;
class HLRTopoBRep_ListIteratorOfListOfVData {
	public:
		%feature("autodoc", "1");
		~HLRTopoBRep_ListIteratorOfListOfVData();
		%feature("autodoc", "1");
		HLRTopoBRep_ListIteratorOfListOfVData();
		%feature("autodoc", "1");
		HLRTopoBRep_ListIteratorOfListOfVData(const HLRTopoBRep_ListOfVData &L);
		%feature("autodoc", "1");
		void Initialize(const HLRTopoBRep_ListOfVData &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		HLRTopoBRep_VData & Value() const;

};

%nodefaultctor HLRTopoBRep_OutLiner;
class HLRTopoBRep_OutLiner : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		HLRTopoBRep_OutLiner();
		%feature("autodoc", "1");
		HLRTopoBRep_OutLiner(const TopoDS_Shape &OriSh);
		%feature("autodoc", "1");
		HLRTopoBRep_OutLiner(const TopoDS_Shape &OriS, const TopoDS_Shape &OutS);
		%feature("autodoc", "1");
		void OriginalShape(const TopoDS_Shape &OriS);
		%feature("autodoc", "1");
		TopoDS_Shape & OriginalShape();
		%feature("autodoc", "1");
		void OutLinedShape(const TopoDS_Shape &OutS);
		%feature("autodoc", "1");
		TopoDS_Shape & OutLinedShape();
		%feature("autodoc", "1");
		HLRTopoBRep_Data & DataStructure();
		%feature("autodoc", "1");
		void Fill(const HLRAlgo_Projector &P, BRepTopAdaptor_MapOfShapeTool & MST, const Standard_Integer nbIso);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~HLRTopoBRep_OutLiner();

};
%extend HLRTopoBRep_OutLiner {
	Handle_HLRTopoBRep_OutLiner GetHandle() {
	return *(Handle_HLRTopoBRep_OutLiner*) &$self;
	}
};

%nodefaultctor HLRTopoBRep_DataMapOfShapeFaceData;
class HLRTopoBRep_DataMapOfShapeFaceData : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		HLRTopoBRep_DataMapOfShapeFaceData(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		HLRTopoBRep_DataMapOfShapeFaceData & Assign(const HLRTopoBRep_DataMapOfShapeFaceData &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~HLRTopoBRep_DataMapOfShapeFaceData();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TopoDS_Shape &K, const HLRTopoBRep_FaceData &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TopoDS_Shape &K);
		%feature("autodoc", "1");
		const HLRTopoBRep_FaceData & Find(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		const HLRTopoBRep_FaceData & operator()(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		HLRTopoBRep_FaceData & ChangeFind(const TopoDS_Shape &K);
		%feature("autodoc", "1");
		HLRTopoBRep_FaceData & operator()(const TopoDS_Shape &K);

};

%nodefaultctor HLRTopoBRep_DataMapNodeOfMapOfShapeListOfVData;
class HLRTopoBRep_DataMapNodeOfMapOfShapeListOfVData : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		HLRTopoBRep_DataMapNodeOfMapOfShapeListOfVData(const TopoDS_Shape &K, const HLRTopoBRep_ListOfVData &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		HLRTopoBRep_ListOfVData & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~HLRTopoBRep_DataMapNodeOfMapOfShapeListOfVData();

};
%extend HLRTopoBRep_DataMapNodeOfMapOfShapeListOfVData {
	Handle_HLRTopoBRep_DataMapNodeOfMapOfShapeListOfVData GetHandle() {
	return *(Handle_HLRTopoBRep_DataMapNodeOfMapOfShapeListOfVData*) &$self;
	}
};

%nodefaultctor HLRTopoBRep_DSFiller;
class HLRTopoBRep_DSFiller {
	public:
		%feature("autodoc", "1");
		~HLRTopoBRep_DSFiller();
		%feature("autodoc", "1");
		HLRTopoBRep_DSFiller();
		%feature("autodoc", "1");
		void Insert(const TopoDS_Shape &S, Contap_Contour & FO, HLRTopoBRep_Data & DS, BRepTopAdaptor_MapOfShapeTool & MST, const Standard_Integer nbIso);

};