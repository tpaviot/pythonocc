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


%include HLRTopoBRep_dependencies.i


%include HLRTopoBRep_headers.i




%nodefaultctor Handle_HLRTopoBRep_DataMapNodeOfMapOfShapeListOfVData;
class Handle_HLRTopoBRep_DataMapNodeOfMapOfShapeListOfVData : public Handle_TCollection_MapNode {
	public:
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
%extend Handle_HLRTopoBRep_DataMapNodeOfMapOfShapeListOfVData {
	~Handle_HLRTopoBRep_DataMapNodeOfMapOfShapeListOfVData() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_HLRTopoBRep_DataMapNodeOfMapOfShapeListOfVData\n");}
	}
};

%nodefaultctor Handle_HLRTopoBRep_DataMapNodeOfDataMapOfShapeFaceData;
class Handle_HLRTopoBRep_DataMapNodeOfDataMapOfShapeFaceData : public Handle_TCollection_MapNode {
	public:
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
%extend Handle_HLRTopoBRep_DataMapNodeOfDataMapOfShapeFaceData {
	~Handle_HLRTopoBRep_DataMapNodeOfDataMapOfShapeFaceData() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_HLRTopoBRep_DataMapNodeOfDataMapOfShapeFaceData\n");}
	}
};

%nodefaultctor Handle_HLRTopoBRep_OutLiner;
class Handle_HLRTopoBRep_OutLiner : public Handle_MMgt_TShared {
	public:
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
%extend Handle_HLRTopoBRep_OutLiner {
	~Handle_HLRTopoBRep_OutLiner() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_HLRTopoBRep_OutLiner\n");}
	}
};

%nodefaultctor Handle_HLRTopoBRep_ListNodeOfListOfVData;
class Handle_HLRTopoBRep_ListNodeOfListOfVData : public Handle_TCollection_MapNode {
	public:
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
%extend Handle_HLRTopoBRep_ListNodeOfListOfVData {
	~Handle_HLRTopoBRep_ListNodeOfListOfVData() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_HLRTopoBRep_ListNodeOfListOfVData\n");}
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

};
%extend HLRTopoBRep_DataMapNodeOfDataMapOfShapeFaceData {
	Handle_HLRTopoBRep_DataMapNodeOfDataMapOfShapeFaceData GetHandle() {
	return *(Handle_HLRTopoBRep_DataMapNodeOfDataMapOfShapeFaceData*) &$self;
	}
};
%extend HLRTopoBRep_DataMapNodeOfDataMapOfShapeFaceData {
	~HLRTopoBRep_DataMapNodeOfDataMapOfShapeFaceData() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of HLRTopoBRep_DataMapNodeOfDataMapOfShapeFaceData\n");}
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
%extend HLRTopoBRep_MapOfShapeListOfVData {
	~HLRTopoBRep_MapOfShapeListOfVData() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of HLRTopoBRep_MapOfShapeListOfVData\n");}
	}
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
%extend HLRTopoBRep_ListOfVData {
	~HLRTopoBRep_ListOfVData() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of HLRTopoBRep_ListOfVData\n");}
	}
};

%nodefaultctor HLRTopoBRep_DataMapIteratorOfDataMapOfShapeFaceData;
class HLRTopoBRep_DataMapIteratorOfDataMapOfShapeFaceData : public TCollection_BasicMapIterator {
	public:
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
%extend HLRTopoBRep_DataMapIteratorOfDataMapOfShapeFaceData {
	~HLRTopoBRep_DataMapIteratorOfDataMapOfShapeFaceData() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of HLRTopoBRep_DataMapIteratorOfDataMapOfShapeFaceData\n");}
	}
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

};
%extend HLRTopoBRep_OutLiner {
	Handle_HLRTopoBRep_OutLiner GetHandle() {
	return *(Handle_HLRTopoBRep_OutLiner*) &$self;
	}
};
%extend HLRTopoBRep_OutLiner {
	~HLRTopoBRep_OutLiner() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of HLRTopoBRep_OutLiner\n");}
	}
};

%nodefaultctor HLRTopoBRep_Data;
class HLRTopoBRep_Data {
	public:
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
%extend HLRTopoBRep_Data {
	~HLRTopoBRep_Data() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of HLRTopoBRep_Data\n");}
	}
};

%nodefaultctor HLRTopoBRep_FaceData;
class HLRTopoBRep_FaceData {
	public:
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
%extend HLRTopoBRep_FaceData {
	~HLRTopoBRep_FaceData() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of HLRTopoBRep_FaceData\n");}
	}
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

};
%extend HLRTopoBRep_ListNodeOfListOfVData {
	Handle_HLRTopoBRep_ListNodeOfListOfVData GetHandle() {
	return *(Handle_HLRTopoBRep_ListNodeOfListOfVData*) &$self;
	}
};
%extend HLRTopoBRep_ListNodeOfListOfVData {
	~HLRTopoBRep_ListNodeOfListOfVData() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of HLRTopoBRep_ListNodeOfListOfVData\n");}
	}
};

%nodefaultctor HLRTopoBRep_VData;
class HLRTopoBRep_VData {
	public:
		%feature("autodoc", "1");
		HLRTopoBRep_VData();
		%feature("autodoc", "1");
		HLRTopoBRep_VData(const Standard_Real P, const TopoDS_Shape &V);
		%feature("autodoc", "1");
		Standard_Real Parameter() const;
		%feature("autodoc", "1");
		const TopoDS_Shape & Vertex() const;

};
%extend HLRTopoBRep_VData {
	~HLRTopoBRep_VData() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of HLRTopoBRep_VData\n");}
	}
};

%nodefaultctor HLRTopoBRep_ListIteratorOfListOfVData;
class HLRTopoBRep_ListIteratorOfListOfVData {
	public:
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
%extend HLRTopoBRep_ListIteratorOfListOfVData {
	~HLRTopoBRep_ListIteratorOfListOfVData() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of HLRTopoBRep_ListIteratorOfListOfVData\n");}
	}
};

%nodefaultctor HLRTopoBRep_DataMapIteratorOfMapOfShapeListOfVData;
class HLRTopoBRep_DataMapIteratorOfMapOfShapeListOfVData : public TCollection_BasicMapIterator {
	public:
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
%extend HLRTopoBRep_DataMapIteratorOfMapOfShapeListOfVData {
	~HLRTopoBRep_DataMapIteratorOfMapOfShapeListOfVData() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of HLRTopoBRep_DataMapIteratorOfMapOfShapeListOfVData\n");}
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
%extend HLRTopoBRep_DataMapOfShapeFaceData {
	~HLRTopoBRep_DataMapOfShapeFaceData() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of HLRTopoBRep_DataMapOfShapeFaceData\n");}
	}
};

%nodefaultctor HLRTopoBRep_FaceIsoLiner;
class HLRTopoBRep_FaceIsoLiner {
	public:
		%feature("autodoc", "1");
		HLRTopoBRep_FaceIsoLiner();
		%feature("autodoc", "1");
		void Perform(const Standard_Integer FI, const TopoDS_Face &F, HLRTopoBRep_Data & DS, const Standard_Integer nbIsos);
		%feature("autodoc", "1");
		TopoDS_Vertex MakeVertex(const TopoDS_Edge &E, const gp_Pnt &P, const Standard_Real Par, const Standard_Real Tol, HLRTopoBRep_Data & DS);
		%feature("autodoc", "1");
		void MakeIsoLine(const TopoDS_Face &F, const Handle_Geom2d_Line &Iso, TopoDS_Vertex & V1, TopoDS_Vertex & V2, const Standard_Real U1, const Standard_Real U2, const Standard_Real Tol, HLRTopoBRep_Data & DS);

};
%extend HLRTopoBRep_FaceIsoLiner {
	~HLRTopoBRep_FaceIsoLiner() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of HLRTopoBRep_FaceIsoLiner\n");}
	}
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

};
%extend HLRTopoBRep_DataMapNodeOfMapOfShapeListOfVData {
	Handle_HLRTopoBRep_DataMapNodeOfMapOfShapeListOfVData GetHandle() {
	return *(Handle_HLRTopoBRep_DataMapNodeOfMapOfShapeListOfVData*) &$self;
	}
};
%extend HLRTopoBRep_DataMapNodeOfMapOfShapeListOfVData {
	~HLRTopoBRep_DataMapNodeOfMapOfShapeListOfVData() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of HLRTopoBRep_DataMapNodeOfMapOfShapeListOfVData\n");}
	}
};

%nodefaultctor HLRTopoBRep_DSFiller;
class HLRTopoBRep_DSFiller {
	public:
		%feature("autodoc", "1");
		HLRTopoBRep_DSFiller();
		%feature("autodoc", "1");
		void Insert(const TopoDS_Shape &S, Contap_Contour & FO, HLRTopoBRep_Data & DS, BRepTopAdaptor_MapOfShapeTool & MST, const Standard_Integer nbIso);

};
%extend HLRTopoBRep_DSFiller {
	~HLRTopoBRep_DSFiller() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of HLRTopoBRep_DSFiller\n");}
	}
};