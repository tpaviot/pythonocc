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
%module BRepOffset

%include BRepOffset_renames.i

%include typemaps.i
%include cmalloc.i
%include cpointer.i
%include carrays.i
%include exception.i
%include std_list.i
%include std_string.i
%include <python/std_basic_string.i>

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


%include BRepOffset_dependencies.i


%include BRepOffset_headers.i


enum BRepOffset_Error {
	BRepOffset_NoError,
	BRepOffset_OffsetSurfaceFailed,
	BRepOffset_UnCorrectClosingFace,
	BRepOffset_ExtentFaceFailed,
	BRepOffset_RadiusEqualOffset,
	BRepOffset_UnknownError,
	};

enum BRepOffset_Mode {
	BRepOffset_Skin,
	BRepOffset_Pipe,
	BRepOffset_RectoVerso,
	};

enum BRepOffset_Status {
	BRepOffset_Good,
	BRepOffset_Reversed,
	BRepOffset_Degenerated,
	BRepOffset_Unknown,
	};

enum BRepOffset_Type {
	BRepOffset_Concave,
	BRepOffset_Convex,
	BRepOffset_Tangent,
	BRepOffset_FreeBoundary,
	BRepOffset_Other,
	};



%nodefaultctor Handle_BRepOffset_DataMapNodeOfDataMapOfShapeReal;
class Handle_BRepOffset_DataMapNodeOfDataMapOfShapeReal : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_BRepOffset_DataMapNodeOfDataMapOfShapeReal();
		%feature("autodoc", "1");
		Handle_BRepOffset_DataMapNodeOfDataMapOfShapeReal(const Handle_BRepOffset_DataMapNodeOfDataMapOfShapeReal &aHandle);
		%feature("autodoc", "1");
		Handle_BRepOffset_DataMapNodeOfDataMapOfShapeReal(const BRepOffset_DataMapNodeOfDataMapOfShapeReal *anItem);
		%feature("autodoc", "1");
		Handle_BRepOffset_DataMapNodeOfDataMapOfShapeReal const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepOffset_DataMapNodeOfDataMapOfShapeReal {
	BRepOffset_DataMapNodeOfDataMapOfShapeReal* GetObject() {
	return (BRepOffset_DataMapNodeOfDataMapOfShapeReal*)$self->Access();
	}
};
%extend Handle_BRepOffset_DataMapNodeOfDataMapOfShapeReal {
	~Handle_BRepOffset_DataMapNodeOfDataMapOfShapeReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_BRepOffset_DataMapNodeOfDataMapOfShapeReal\n");}
	}
};


%nodefaultctor Handle_BRepOffset_ListNodeOfListOfInterval;
class Handle_BRepOffset_ListNodeOfListOfInterval : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_BRepOffset_ListNodeOfListOfInterval();
		%feature("autodoc", "1");
		Handle_BRepOffset_ListNodeOfListOfInterval(const Handle_BRepOffset_ListNodeOfListOfInterval &aHandle);
		%feature("autodoc", "1");
		Handle_BRepOffset_ListNodeOfListOfInterval(const BRepOffset_ListNodeOfListOfInterval *anItem);
		%feature("autodoc", "1");
		Handle_BRepOffset_ListNodeOfListOfInterval const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepOffset_ListNodeOfListOfInterval {
	BRepOffset_ListNodeOfListOfInterval* GetObject() {
	return (BRepOffset_ListNodeOfListOfInterval*)$self->Access();
	}
};
%extend Handle_BRepOffset_ListNodeOfListOfInterval {
	~Handle_BRepOffset_ListNodeOfListOfInterval() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_BRepOffset_ListNodeOfListOfInterval\n");}
	}
};


%nodefaultctor Handle_BRepOffset_DataMapNodeOfDataMapOfShapeOffset;
class Handle_BRepOffset_DataMapNodeOfDataMapOfShapeOffset : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_BRepOffset_DataMapNodeOfDataMapOfShapeOffset();
		%feature("autodoc", "1");
		Handle_BRepOffset_DataMapNodeOfDataMapOfShapeOffset(const Handle_BRepOffset_DataMapNodeOfDataMapOfShapeOffset &aHandle);
		%feature("autodoc", "1");
		Handle_BRepOffset_DataMapNodeOfDataMapOfShapeOffset(const BRepOffset_DataMapNodeOfDataMapOfShapeOffset *anItem);
		%feature("autodoc", "1");
		Handle_BRepOffset_DataMapNodeOfDataMapOfShapeOffset const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepOffset_DataMapNodeOfDataMapOfShapeOffset {
	BRepOffset_DataMapNodeOfDataMapOfShapeOffset* GetObject() {
	return (BRepOffset_DataMapNodeOfDataMapOfShapeOffset*)$self->Access();
	}
};
%extend Handle_BRepOffset_DataMapNodeOfDataMapOfShapeOffset {
	~Handle_BRepOffset_DataMapNodeOfDataMapOfShapeOffset() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_BRepOffset_DataMapNodeOfDataMapOfShapeOffset\n");}
	}
};


%nodefaultctor Handle_BRepOffset_DataMapNodeOfDataMapOfShapeListOfInterval;
class Handle_BRepOffset_DataMapNodeOfDataMapOfShapeListOfInterval : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_BRepOffset_DataMapNodeOfDataMapOfShapeListOfInterval();
		%feature("autodoc", "1");
		Handle_BRepOffset_DataMapNodeOfDataMapOfShapeListOfInterval(const Handle_BRepOffset_DataMapNodeOfDataMapOfShapeListOfInterval &aHandle);
		%feature("autodoc", "1");
		Handle_BRepOffset_DataMapNodeOfDataMapOfShapeListOfInterval(const BRepOffset_DataMapNodeOfDataMapOfShapeListOfInterval *anItem);
		%feature("autodoc", "1");
		Handle_BRepOffset_DataMapNodeOfDataMapOfShapeListOfInterval const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepOffset_DataMapNodeOfDataMapOfShapeListOfInterval {
	BRepOffset_DataMapNodeOfDataMapOfShapeListOfInterval* GetObject() {
	return (BRepOffset_DataMapNodeOfDataMapOfShapeListOfInterval*)$self->Access();
	}
};
%extend Handle_BRepOffset_DataMapNodeOfDataMapOfShapeListOfInterval {
	~Handle_BRepOffset_DataMapNodeOfDataMapOfShapeListOfInterval() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_BRepOffset_DataMapNodeOfDataMapOfShapeListOfInterval\n");}
	}
};


%nodefaultctor Handle_BRepOffset_DataMapNodeOfDataMapOfShapeMapOfShape;
class Handle_BRepOffset_DataMapNodeOfDataMapOfShapeMapOfShape : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_BRepOffset_DataMapNodeOfDataMapOfShapeMapOfShape();
		%feature("autodoc", "1");
		Handle_BRepOffset_DataMapNodeOfDataMapOfShapeMapOfShape(const Handle_BRepOffset_DataMapNodeOfDataMapOfShapeMapOfShape &aHandle);
		%feature("autodoc", "1");
		Handle_BRepOffset_DataMapNodeOfDataMapOfShapeMapOfShape(const BRepOffset_DataMapNodeOfDataMapOfShapeMapOfShape *anItem);
		%feature("autodoc", "1");
		Handle_BRepOffset_DataMapNodeOfDataMapOfShapeMapOfShape const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepOffset_DataMapNodeOfDataMapOfShapeMapOfShape {
	BRepOffset_DataMapNodeOfDataMapOfShapeMapOfShape* GetObject() {
	return (BRepOffset_DataMapNodeOfDataMapOfShapeMapOfShape*)$self->Access();
	}
};
%extend Handle_BRepOffset_DataMapNodeOfDataMapOfShapeMapOfShape {
	~Handle_BRepOffset_DataMapNodeOfDataMapOfShapeMapOfShape() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_BRepOffset_DataMapNodeOfDataMapOfShapeMapOfShape\n");}
	}
};


%nodefaultctor BRepOffset_DataMapOfShapeMapOfShape;
class BRepOffset_DataMapOfShapeMapOfShape : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		BRepOffset_DataMapOfShapeMapOfShape(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		BRepOffset_DataMapOfShapeMapOfShape & Assign(const BRepOffset_DataMapOfShapeMapOfShape &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TopoDS_Shape &K, const TopTools_MapOfShape &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TopoDS_Shape &K);
		%feature("autodoc", "1");
		const TopTools_MapOfShape & Find(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		const TopTools_MapOfShape & operator()(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		TopTools_MapOfShape & ChangeFind(const TopoDS_Shape &K);
		%feature("autodoc", "1");
		TopTools_MapOfShape & operator()(const TopoDS_Shape &K);

};
%extend BRepOffset_DataMapOfShapeMapOfShape {
	~BRepOffset_DataMapOfShapeMapOfShape() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepOffset_DataMapOfShapeMapOfShape\n");}
	}
};


%nodefaultctor BRepOffset_DataMapIteratorOfDataMapOfShapeReal;
class BRepOffset_DataMapIteratorOfDataMapOfShapeReal : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		BRepOffset_DataMapIteratorOfDataMapOfShapeReal();
		%feature("autodoc", "1");
		BRepOffset_DataMapIteratorOfDataMapOfShapeReal(const BRepOffset_DataMapOfShapeReal &aMap);
		%feature("autodoc", "1");
		void Initialize(const BRepOffset_DataMapOfShapeReal &aMap);
		%feature("autodoc", "1");
		const TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		const Standard_Real & Value() const;

};
%extend BRepOffset_DataMapIteratorOfDataMapOfShapeReal {
	~BRepOffset_DataMapIteratorOfDataMapOfShapeReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepOffset_DataMapIteratorOfDataMapOfShapeReal\n");}
	}
};


%nodefaultctor BRepOffset_Analyse;
class BRepOffset_Analyse {
	public:
		%feature("autodoc", "1");
		BRepOffset_Analyse();
		%feature("autodoc", "1");
		BRepOffset_Analyse(const TopoDS_Shape &S, const Standard_Real Angle);
		%feature("autodoc", "1");
		void Perform(const TopoDS_Shape &S, const Standard_Real Angle);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const BRepOffset_ListOfInterval & Type(const TopoDS_Edge &E) const;
		%feature("autodoc", "1");
		void Edges(const TopoDS_Vertex &V, const BRepOffset_Type T, TopTools_ListOfShape & L) const;
		%feature("autodoc", "1");
		void Edges(const TopoDS_Face &F, const BRepOffset_Type T, TopTools_ListOfShape & L) const;
		%feature("autodoc", "1");
		void TangentEdges(const TopoDS_Edge &Edge, const TopoDS_Vertex &Vertex, TopTools_ListOfShape & Edges) const;
		%feature("autodoc", "1");
		Standard_Boolean HasAncestor(const TopoDS_Shape &S) const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Ancestors(const TopoDS_Shape &S) const;
		%feature("autodoc", "1");
		void Explode(TopTools_ListOfShape & L, const BRepOffset_Type Type) const;
		%feature("autodoc", "1");
		void Explode(TopTools_ListOfShape & L, const BRepOffset_Type Type1, const BRepOffset_Type Type2) const;
		%feature("autodoc", "1");
		void AddFaces(const TopoDS_Face &Face, TopoDS_Compound & Co, TopTools_MapOfShape & Map, const BRepOffset_Type Type) const;
		%feature("autodoc", "1");
		void AddFaces(const TopoDS_Face &Face, TopoDS_Compound & Co, TopTools_MapOfShape & Map, const BRepOffset_Type Type1, const BRepOffset_Type Type2) const;

};
%extend BRepOffset_Analyse {
	~BRepOffset_Analyse() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepOffset_Analyse\n");}
	}
};


%nodefaultctor BRepOffset_ListIteratorOfListOfInterval;
class BRepOffset_ListIteratorOfListOfInterval {
	public:
		%feature("autodoc", "1");
		BRepOffset_ListIteratorOfListOfInterval();
		%feature("autodoc", "1");
		BRepOffset_ListIteratorOfListOfInterval(const BRepOffset_ListOfInterval &L);
		%feature("autodoc", "1");
		void Initialize(const BRepOffset_ListOfInterval &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		BRepOffset_Interval & Value() const;

};
%extend BRepOffset_ListIteratorOfListOfInterval {
	~BRepOffset_ListIteratorOfListOfInterval() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepOffset_ListIteratorOfListOfInterval\n");}
	}
};


%nodefaultctor BRepOffset;
class BRepOffset {
	public:
		%feature("autodoc", "1");
		Handle_Geom_Surface Surface(const Handle_Geom_Surface &Surface, const Standard_Real Offset, BRepOffset_Status & Status);

};
%extend BRepOffset {
	~BRepOffset() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepOffset\n");}
	}
};


%nodefaultctor BRepOffset_Interval;
class BRepOffset_Interval {
	public:
		%feature("autodoc", "1");
		BRepOffset_Interval();
		%feature("autodoc", "1");
		BRepOffset_Interval(const Standard_Real U1, const Standard_Real U2, const BRepOffset_Type Type);
		%feature("autodoc", "1");
		void First(const Standard_Real U);
		%feature("autodoc", "1");
		void Last(const Standard_Real U);
		%feature("autodoc", "1");
		void Type(const BRepOffset_Type T);
		%feature("autodoc", "1");
		Standard_Real First() const;
		%feature("autodoc", "1");
		Standard_Real Last() const;
		%feature("autodoc", "1");
		BRepOffset_Type Type() const;

};
%extend BRepOffset_Interval {
	~BRepOffset_Interval() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepOffset_Interval\n");}
	}
};


%nodefaultctor BRepOffset_MakeOffset;
class BRepOffset_MakeOffset {
	public:
		%feature("autodoc", "1");
		BRepOffset_MakeOffset();
		%feature("autodoc", "1");
		BRepOffset_MakeOffset(const TopoDS_Shape &S, const Standard_Real Offset, const Standard_Real Tol, const BRepOffset_Mode Mode=BRepOffset_Skin, const Standard_Boolean Intersection=0, const Standard_Boolean SelfInter=0, const GeomAbs_JoinType Join=GeomAbs_Arc);
		%feature("autodoc", "1");
		void Initialize(const TopoDS_Shape &S, const Standard_Real Offset, const Standard_Real Tol, const BRepOffset_Mode Mode=BRepOffset_Skin, const Standard_Boolean Intersection=0, const Standard_Boolean SelfInter=0, const GeomAbs_JoinType Join=GeomAbs_Arc);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void AddFace(const TopoDS_Face &F);
		%feature("autodoc", "1");
		void SetOffsetOnFace(const TopoDS_Face &F, const Standard_Real Off);
		%feature("autodoc", "1");
		void MakeOffsetShape();
		%feature("autodoc", "1");
		void MakeThickSolid();
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		const TopoDS_Shape & Shape() const;
		%feature("autodoc", "1");
		BRepOffset_Error Error() const;
		%feature("autodoc", "1");
		const BRepAlgo_Image & OffsetFacesFromShapes() const;
		%feature("autodoc", "1");
		GeomAbs_JoinType GetJoinType() const;
		%feature("autodoc", "1");
		const BRepAlgo_Image & OffsetEdgesFromShapes() const;
		%feature("autodoc", "1");
		const TopTools_MapOfShape & ClosingFaces() const;

};
%extend BRepOffset_MakeOffset {
	~BRepOffset_MakeOffset() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepOffset_MakeOffset\n");}
	}
};


%nodefaultctor BRepOffset_ListOfInterval;
class BRepOffset_ListOfInterval {
	public:
		%feature("autodoc", "1");
		BRepOffset_ListOfInterval();
		%feature("autodoc", "1");
		void Assign(const BRepOffset_ListOfInterval &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const BRepOffset_Interval &I);
		%feature("autodoc", "1");
		void Prepend(const BRepOffset_Interval &I, BRepOffset_ListIteratorOfListOfInterval & theIt);
		%feature("autodoc", "1");
		void Prepend(BRepOffset_ListOfInterval & Other);
		%feature("autodoc", "1");
		void Append(const BRepOffset_Interval &I);
		%feature("autodoc", "1");
		void Append(const BRepOffset_Interval &I, BRepOffset_ListIteratorOfListOfInterval & theIt);
		%feature("autodoc", "1");
		void Append(BRepOffset_ListOfInterval & Other);
		%feature("autodoc", "1");
		BRepOffset_Interval & First() const;
		%feature("autodoc", "1");
		BRepOffset_Interval & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(BRepOffset_ListIteratorOfListOfInterval & It);
		%feature("autodoc", "1");
		void InsertBefore(const BRepOffset_Interval &I, BRepOffset_ListIteratorOfListOfInterval & It);
		%feature("autodoc", "1");
		void InsertBefore(BRepOffset_ListOfInterval & Other, BRepOffset_ListIteratorOfListOfInterval & It);
		%feature("autodoc", "1");
		void InsertAfter(const BRepOffset_Interval &I, BRepOffset_ListIteratorOfListOfInterval & It);
		%feature("autodoc", "1");
		void InsertAfter(BRepOffset_ListOfInterval & Other, BRepOffset_ListIteratorOfListOfInterval & It);

};
%extend BRepOffset_ListOfInterval {
	~BRepOffset_ListOfInterval() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepOffset_ListOfInterval\n");}
	}
};


%nodefaultctor BRepOffset_DataMapNodeOfDataMapOfShapeReal;
class BRepOffset_DataMapNodeOfDataMapOfShapeReal : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BRepOffset_DataMapNodeOfDataMapOfShapeReal(const TopoDS_Shape &K, const Standard_Real &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		Standard_Real & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepOffset_DataMapNodeOfDataMapOfShapeReal {
	Handle_BRepOffset_DataMapNodeOfDataMapOfShapeReal GetHandle() {
	return *(Handle_BRepOffset_DataMapNodeOfDataMapOfShapeReal*) &$self;
	}
};
%extend BRepOffset_DataMapNodeOfDataMapOfShapeReal {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend BRepOffset_DataMapNodeOfDataMapOfShapeReal {
	~BRepOffset_DataMapNodeOfDataMapOfShapeReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepOffset_DataMapNodeOfDataMapOfShapeReal\n");}
	}
};


%nodefaultctor BRepOffset_DataMapNodeOfDataMapOfShapeOffset;
class BRepOffset_DataMapNodeOfDataMapOfShapeOffset : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BRepOffset_DataMapNodeOfDataMapOfShapeOffset(const TopoDS_Shape &K, const BRepOffset_Offset &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		BRepOffset_Offset & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepOffset_DataMapNodeOfDataMapOfShapeOffset {
	Handle_BRepOffset_DataMapNodeOfDataMapOfShapeOffset GetHandle() {
	return *(Handle_BRepOffset_DataMapNodeOfDataMapOfShapeOffset*) &$self;
	}
};
%extend BRepOffset_DataMapNodeOfDataMapOfShapeOffset {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend BRepOffset_DataMapNodeOfDataMapOfShapeOffset {
	~BRepOffset_DataMapNodeOfDataMapOfShapeOffset() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepOffset_DataMapNodeOfDataMapOfShapeOffset\n");}
	}
};


%nodefaultctor BRepOffset_DataMapNodeOfDataMapOfShapeMapOfShape;
class BRepOffset_DataMapNodeOfDataMapOfShapeMapOfShape : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BRepOffset_DataMapNodeOfDataMapOfShapeMapOfShape(const TopoDS_Shape &K, const TopTools_MapOfShape &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		TopTools_MapOfShape & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepOffset_DataMapNodeOfDataMapOfShapeMapOfShape {
	Handle_BRepOffset_DataMapNodeOfDataMapOfShapeMapOfShape GetHandle() {
	return *(Handle_BRepOffset_DataMapNodeOfDataMapOfShapeMapOfShape*) &$self;
	}
};
%extend BRepOffset_DataMapNodeOfDataMapOfShapeMapOfShape {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend BRepOffset_DataMapNodeOfDataMapOfShapeMapOfShape {
	~BRepOffset_DataMapNodeOfDataMapOfShapeMapOfShape() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepOffset_DataMapNodeOfDataMapOfShapeMapOfShape\n");}
	}
};


%nodefaultctor BRepOffset_DataMapOfShapeListOfInterval;
class BRepOffset_DataMapOfShapeListOfInterval : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		BRepOffset_DataMapOfShapeListOfInterval(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		BRepOffset_DataMapOfShapeListOfInterval & Assign(const BRepOffset_DataMapOfShapeListOfInterval &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TopoDS_Shape &K, const BRepOffset_ListOfInterval &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TopoDS_Shape &K);
		%feature("autodoc", "1");
		const BRepOffset_ListOfInterval & Find(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		const BRepOffset_ListOfInterval & operator()(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		BRepOffset_ListOfInterval & ChangeFind(const TopoDS_Shape &K);
		%feature("autodoc", "1");
		BRepOffset_ListOfInterval & operator()(const TopoDS_Shape &K);

};
%extend BRepOffset_DataMapOfShapeListOfInterval {
	~BRepOffset_DataMapOfShapeListOfInterval() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepOffset_DataMapOfShapeListOfInterval\n");}
	}
};


%nodefaultctor BRepOffset_DataMapOfShapeOffset;
class BRepOffset_DataMapOfShapeOffset : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		BRepOffset_DataMapOfShapeOffset(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		BRepOffset_DataMapOfShapeOffset & Assign(const BRepOffset_DataMapOfShapeOffset &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TopoDS_Shape &K, const BRepOffset_Offset &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TopoDS_Shape &K);
		%feature("autodoc", "1");
		const BRepOffset_Offset & Find(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		const BRepOffset_Offset & operator()(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		BRepOffset_Offset & ChangeFind(const TopoDS_Shape &K);
		%feature("autodoc", "1");
		BRepOffset_Offset & operator()(const TopoDS_Shape &K);

};
%extend BRepOffset_DataMapOfShapeOffset {
	~BRepOffset_DataMapOfShapeOffset() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepOffset_DataMapOfShapeOffset\n");}
	}
};


%nodefaultctor BRepOffset_DataMapNodeOfDataMapOfShapeListOfInterval;
class BRepOffset_DataMapNodeOfDataMapOfShapeListOfInterval : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BRepOffset_DataMapNodeOfDataMapOfShapeListOfInterval(const TopoDS_Shape &K, const BRepOffset_ListOfInterval &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		BRepOffset_ListOfInterval & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepOffset_DataMapNodeOfDataMapOfShapeListOfInterval {
	Handle_BRepOffset_DataMapNodeOfDataMapOfShapeListOfInterval GetHandle() {
	return *(Handle_BRepOffset_DataMapNodeOfDataMapOfShapeListOfInterval*) &$self;
	}
};
%extend BRepOffset_DataMapNodeOfDataMapOfShapeListOfInterval {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend BRepOffset_DataMapNodeOfDataMapOfShapeListOfInterval {
	~BRepOffset_DataMapNodeOfDataMapOfShapeListOfInterval() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepOffset_DataMapNodeOfDataMapOfShapeListOfInterval\n");}
	}
};


%nodefaultctor BRepOffset_DataMapIteratorOfDataMapOfShapeListOfInterval;
class BRepOffset_DataMapIteratorOfDataMapOfShapeListOfInterval : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		BRepOffset_DataMapIteratorOfDataMapOfShapeListOfInterval();
		%feature("autodoc", "1");
		BRepOffset_DataMapIteratorOfDataMapOfShapeListOfInterval(const BRepOffset_DataMapOfShapeListOfInterval &aMap);
		%feature("autodoc", "1");
		void Initialize(const BRepOffset_DataMapOfShapeListOfInterval &aMap);
		%feature("autodoc", "1");
		const TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		const BRepOffset_ListOfInterval & Value() const;

};
%extend BRepOffset_DataMapIteratorOfDataMapOfShapeListOfInterval {
	~BRepOffset_DataMapIteratorOfDataMapOfShapeListOfInterval() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepOffset_DataMapIteratorOfDataMapOfShapeListOfInterval\n");}
	}
};


%nodefaultctor BRepOffset_ListNodeOfListOfInterval;
class BRepOffset_ListNodeOfListOfInterval : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BRepOffset_ListNodeOfListOfInterval(const BRepOffset_Interval &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		BRepOffset_Interval & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepOffset_ListNodeOfListOfInterval {
	Handle_BRepOffset_ListNodeOfListOfInterval GetHandle() {
	return *(Handle_BRepOffset_ListNodeOfListOfInterval*) &$self;
	}
};
%extend BRepOffset_ListNodeOfListOfInterval {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend BRepOffset_ListNodeOfListOfInterval {
	~BRepOffset_ListNodeOfListOfInterval() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepOffset_ListNodeOfListOfInterval\n");}
	}
};


%nodefaultctor BRepOffset_DataMapIteratorOfDataMapOfShapeMapOfShape;
class BRepOffset_DataMapIteratorOfDataMapOfShapeMapOfShape : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		BRepOffset_DataMapIteratorOfDataMapOfShapeMapOfShape();
		%feature("autodoc", "1");
		BRepOffset_DataMapIteratorOfDataMapOfShapeMapOfShape(const BRepOffset_DataMapOfShapeMapOfShape &aMap);
		%feature("autodoc", "1");
		void Initialize(const BRepOffset_DataMapOfShapeMapOfShape &aMap);
		%feature("autodoc", "1");
		const TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		const TopTools_MapOfShape & Value() const;

};
%extend BRepOffset_DataMapIteratorOfDataMapOfShapeMapOfShape {
	~BRepOffset_DataMapIteratorOfDataMapOfShapeMapOfShape() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepOffset_DataMapIteratorOfDataMapOfShapeMapOfShape\n");}
	}
};


%nodefaultctor BRepOffset_MakeLoops;
class BRepOffset_MakeLoops {
	public:
		%feature("autodoc", "1");
		BRepOffset_MakeLoops();
		%feature("autodoc", "1");
		void Build(const TopTools_ListOfShape &LF, const Handle_BRepAlgo_AsDes &AsDes, BRepAlgo_Image & Image);
		%feature("autodoc", "1");
		void BuildOnContext(const TopTools_ListOfShape &LContext, const BRepOffset_Analyse &Analyse, const Handle_BRepAlgo_AsDes &AsDes, BRepAlgo_Image & Image, const Standard_Boolean InSide);
		%feature("autodoc", "1");
		void BuildFaces(const TopTools_ListOfShape &LF, const Handle_BRepAlgo_AsDes &AsDes, BRepAlgo_Image & Image);

};
%extend BRepOffset_MakeLoops {
	~BRepOffset_MakeLoops() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepOffset_MakeLoops\n");}
	}
};


%nodefaultctor BRepOffset_DataMapIteratorOfDataMapOfShapeOffset;
class BRepOffset_DataMapIteratorOfDataMapOfShapeOffset : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		BRepOffset_DataMapIteratorOfDataMapOfShapeOffset();
		%feature("autodoc", "1");
		BRepOffset_DataMapIteratorOfDataMapOfShapeOffset(const BRepOffset_DataMapOfShapeOffset &aMap);
		%feature("autodoc", "1");
		void Initialize(const BRepOffset_DataMapOfShapeOffset &aMap);
		%feature("autodoc", "1");
		const TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		const BRepOffset_Offset & Value() const;

};
%extend BRepOffset_DataMapIteratorOfDataMapOfShapeOffset {
	~BRepOffset_DataMapIteratorOfDataMapOfShapeOffset() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepOffset_DataMapIteratorOfDataMapOfShapeOffset\n");}
	}
};


%nodefaultctor BRepOffset_Inter2d;
class BRepOffset_Inter2d {
	public:
		%feature("autodoc", "1");
		void Compute(const Handle_BRepAlgo_AsDes &AsDes, const TopoDS_Face &F, const TopTools_MapOfShape &NewEdges, const Standard_Real Tol);
		%feature("autodoc", "1");
		void ConnexIntByInt(const TopoDS_Face &FI, BRepOffset_Offset & OFI, TopTools_DataMapOfShapeShape & MES, const TopTools_DataMapOfShapeShape &Build, const Handle_BRepAlgo_AsDes &AsDes, const Standard_Real Offset, const Standard_Real Tol);

};
%extend BRepOffset_Inter2d {
	~BRepOffset_Inter2d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepOffset_Inter2d\n");}
	}
};


%nodefaultctor BRepOffset_Tool;
class BRepOffset_Tool {
	public:
		%feature("autodoc", "1");
		void EdgeVertices(const TopoDS_Edge &E, TopoDS_Vertex & V1, TopoDS_Vertex & V2);
		%feature("autodoc", "1");
		TopAbs_Orientation OriEdgeInFace(const TopoDS_Edge &E, const TopoDS_Face &F);
		%feature("autodoc", "1");
		void OrientSection(const TopoDS_Edge &E, const TopoDS_Face &F1, const TopoDS_Face &F2, TopAbs_Orientation & O1, TopAbs_Orientation & O2);
		%feature("autodoc", "1");
		Standard_Boolean HasCommonShapes(const TopoDS_Face &F1, const TopoDS_Face &F2, TopTools_ListOfShape & LE, TopTools_ListOfShape & LV);
		%feature("autodoc", "1");
		void Inter3D(const TopoDS_Face &F1, const TopoDS_Face &F2, TopTools_ListOfShape & LInt1, TopTools_ListOfShape & LInt2, const TopAbs_State Side, const TopoDS_Edge &RefEdge, const Standard_Boolean IsRefEdgeDefined=0);
		%feature("autodoc", "1");
		Standard_Boolean TryProject(const TopoDS_Face &F1, const TopoDS_Face &F2, const TopTools_ListOfShape &Edges, TopTools_ListOfShape & LInt1, TopTools_ListOfShape & LInt2, const TopAbs_State Side, const Standard_Real TolConf);
		%feature("autodoc", "1");
		void PipeInter(const TopoDS_Face &F1, const TopoDS_Face &F2, TopTools_ListOfShape & LInt1, TopTools_ListOfShape & LInt2, const TopAbs_State Side);
		%feature("autodoc", "1");
		void Inter2d(const TopoDS_Face &F, const TopoDS_Edge &E1, const TopoDS_Edge &E2, TopTools_ListOfShape & LV, const Standard_Real Tol);
		%feature("autodoc", "1");
		void InterOrExtent(const TopoDS_Face &F1, const TopoDS_Face &F2, TopTools_ListOfShape & LInt1, TopTools_ListOfShape & LInt2, const TopAbs_State Side);
		%feature("autodoc", "1");
		void CheckBounds(const TopoDS_Face &F, const BRepOffset_Analyse &Analyse, Standard_Boolean & enlargeU, Standard_Boolean & enlargeVfirst, Standard_Boolean & enlargeVlast);
		%feature("autodoc", "1");
		Standard_Boolean EnLargeFace(const TopoDS_Face &F, TopoDS_Face & NF, const Standard_Boolean ChangeGeom, const Standard_Boolean UpDatePCurve=0, const Standard_Boolean enlargeU=1, const Standard_Boolean enlargeVfirst=1, const Standard_Boolean enlargeVlast=1);
		%feature("autodoc", "1");
		void ExtentFace(const TopoDS_Face &F, TopTools_DataMapOfShapeShape & ConstShapes, TopTools_DataMapOfShapeShape & ToBuild, const TopAbs_State Side, const Standard_Real TolConf, TopoDS_Face & NF);
		%feature("autodoc", "1");
		void BuildNeighbour(const TopoDS_Wire &W, const TopoDS_Face &F, TopTools_DataMapOfShapeShape & NOnV1, TopTools_DataMapOfShapeShape & NOnV2);
		%feature("autodoc", "1");
		void MapVertexEdges(const TopoDS_Shape &S, TopTools_DataMapOfShapeListOfShape & MVE);
		%feature("autodoc", "1");
		TopoDS_Shape Deboucle3D(const TopoDS_Shape &S, const TopTools_MapOfShape &Boundary);
		%feature("autodoc", "1");
		void CorrectOrientation(const TopoDS_Shape &SI, const TopTools_MapOfShape &NewEdges, Handle_BRepAlgo_AsDes & AsDes, BRepAlgo_Image & InitOffset, const Standard_Real Offset);
		%feature("autodoc", "1");
		Standard_Real Gabarit(const Handle_Geom_Curve &aCurve);

};
%extend BRepOffset_Tool {
	~BRepOffset_Tool() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepOffset_Tool\n");}
	}
};


%nodefaultctor BRepOffset_DataMapOfShapeReal;
class BRepOffset_DataMapOfShapeReal : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		BRepOffset_DataMapOfShapeReal(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		BRepOffset_DataMapOfShapeReal & Assign(const BRepOffset_DataMapOfShapeReal &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TopoDS_Shape &K, const Standard_Real &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TopoDS_Shape &K);
		%feature("autodoc", "1");
		const Standard_Real & Find(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		const Standard_Real & operator()(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		Standard_Real & ChangeFind(const TopoDS_Shape &K);
		%feature("autodoc", "1");
		Standard_Real & operator()(const TopoDS_Shape &K);

};
%extend BRepOffset_DataMapOfShapeReal {
	~BRepOffset_DataMapOfShapeReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepOffset_DataMapOfShapeReal\n");}
	}
};


%nodefaultctor BRepOffset_Offset;
class BRepOffset_Offset {
	public:
		%feature("autodoc", "1");
		BRepOffset_Offset();
		%feature("autodoc", "1");
		BRepOffset_Offset(const TopoDS_Face &Face, const Standard_Real Offset, const Standard_Boolean OffsetOutside=1, const GeomAbs_JoinType JoinType=GeomAbs_Arc);
		%feature("autodoc", "1");
		BRepOffset_Offset(const TopoDS_Face &Face, const Standard_Real Offset, const TopTools_DataMapOfShapeShape &Created, const Standard_Boolean OffsetOutside=1, const GeomAbs_JoinType JoinType=GeomAbs_Arc);
		%feature("autodoc", "1");
		BRepOffset_Offset(const TopoDS_Edge &Path, const TopoDS_Edge &Edge1, const TopoDS_Edge &Edge2, const Standard_Real Offset, const Standard_Boolean Polynomial=0, const Standard_Real Tol=1.00000000000000004792173602385929598312941379845e-4, const GeomAbs_Shape Conti=GeomAbs_C1);
		%feature("autodoc", "1");
		BRepOffset_Offset(const TopoDS_Edge &Path, const TopoDS_Edge &Edge1, const TopoDS_Edge &Edge2, const Standard_Real Offset, const TopoDS_Edge &FirstEdge, const TopoDS_Edge &LastEdge, const Standard_Boolean Polynomial=0, const Standard_Real Tol=1.00000000000000004792173602385929598312941379845e-4, const GeomAbs_Shape Conti=GeomAbs_C1);
		%feature("autodoc", "1");
		BRepOffset_Offset(const TopoDS_Vertex &Vertex, const TopTools_ListOfShape &LEdge, const Standard_Real Offset, const Standard_Boolean Polynomial=0, const Standard_Real Tol=1.00000000000000004792173602385929598312941379845e-4, const GeomAbs_Shape Conti=GeomAbs_C1);
		%feature("autodoc", "1");
		void Init(const TopoDS_Face &Face, const Standard_Real Offset, const Standard_Boolean OffsetOutside=1, const GeomAbs_JoinType JoinType=GeomAbs_Arc);
		%feature("autodoc", "1");
		void Init(const TopoDS_Face &Face, const Standard_Real Offset, const TopTools_DataMapOfShapeShape &Created, const Standard_Boolean OffsetOutside=1, const GeomAbs_JoinType JoinType=GeomAbs_Arc);
		%feature("autodoc", "1");
		void Init(const TopoDS_Edge &Path, const TopoDS_Edge &Edge1, const TopoDS_Edge &Edge2, const Standard_Real Offset, const Standard_Boolean Polynomial=0, const Standard_Real Tol=1.00000000000000004792173602385929598312941379845e-4, const GeomAbs_Shape Conti=GeomAbs_C1);
		%feature("autodoc", "1");
		void Init(const TopoDS_Edge &Path, const TopoDS_Edge &Edge1, const TopoDS_Edge &Edge2, const Standard_Real Offset, const TopoDS_Edge &FirstEdge, const TopoDS_Edge &LastEdge, const Standard_Boolean Polynomial=0, const Standard_Real Tol=1.00000000000000004792173602385929598312941379845e-4, const GeomAbs_Shape Conti=GeomAbs_C1);
		%feature("autodoc", "1");
		void Init(const TopoDS_Vertex &Vertex, const TopTools_ListOfShape &LEdge, const Standard_Real Offset, const Standard_Boolean Polynomial=0, const Standard_Real Tol=1.00000000000000004792173602385929598312941379845e-4, const GeomAbs_Shape Conti=GeomAbs_C1);
		%feature("autodoc", "1");
		void Init(const TopoDS_Edge &Edge, const Standard_Real Offset);
		%feature("autodoc", "1");
		const TopoDS_Shape & InitialShape() const;
		%feature("autodoc", "1");
		const TopoDS_Face & Face() const;
		%feature("autodoc", "1");
		TopoDS_Shape Generated(const TopoDS_Shape &Shape) const;
		%feature("autodoc", "1");
		BRepOffset_Status Status() const;

};
%extend BRepOffset_Offset {
	~BRepOffset_Offset() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepOffset_Offset\n");}
	}
};


%nodefaultctor BRepOffset_Inter3d;
class BRepOffset_Inter3d {
	public:
		%feature("autodoc", "1");
		BRepOffset_Inter3d(const Handle_BRepAlgo_AsDes &AsDes, const TopAbs_State Side, const Standard_Real Tol);
		%feature("autodoc", "1");
		void CompletInt(const TopTools_ListOfShape &SetOfFaces, const BRepAlgo_Image &InitOffsetFace);
		%feature("autodoc", "1");
		void FaceInter(const TopoDS_Face &F1, const TopoDS_Face &F2, const BRepAlgo_Image &InitOffsetFace);
		%feature("autodoc", "1");
		void ConnexIntByArc(const TopTools_ListOfShape &SetOfFaces, const TopoDS_Shape &ShapeInit, const BRepOffset_Analyse &Analyse, const BRepAlgo_Image &InitOffsetFace);
		%feature("autodoc", "1");
		void ConnexIntByInt(const TopoDS_Shape &SI, const BRepOffset_DataMapOfShapeOffset &MapSF, const BRepOffset_Analyse &A, TopTools_DataMapOfShapeShape & MES, TopTools_DataMapOfShapeShape & Build, TopTools_ListOfShape & Failed);
		%feature("autodoc", "1");
		void ContextIntByInt(const TopTools_MapOfShape &ContextFaces, const Standard_Boolean ExtentContext, const BRepOffset_DataMapOfShapeOffset &MapSF, const BRepOffset_Analyse &A, TopTools_DataMapOfShapeShape & MES, TopTools_DataMapOfShapeShape & Build, TopTools_ListOfShape & Failed);
		%feature("autodoc", "1");
		void ContextIntByArc(const TopTools_MapOfShape &ContextFaces, const Standard_Boolean ExtentContext, const BRepOffset_Analyse &Analyse, const BRepAlgo_Image &InitOffsetFace, BRepAlgo_Image & InitOffsetEdge);
		%feature("autodoc", "1");
		void AddCommonEdges(const TopTools_ListOfShape &SetOfFaces);
		%feature("autodoc", "1");
		void SetDone(const TopoDS_Face &F1, const TopoDS_Face &F2);
		%feature("autodoc", "1");
		Standard_Boolean IsDone(const TopoDS_Face &F1, const TopoDS_Face &F2) const;
		%feature("autodoc", "1");
		TopTools_MapOfShape & TouchedFaces();
		%feature("autodoc", "1");
		Handle_BRepAlgo_AsDes AsDes() const;
		%feature("autodoc", "1");
		TopTools_MapOfShape & NewEdges();

};
%extend BRepOffset_Inter3d {
	~BRepOffset_Inter3d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepOffset_Inter3d\n");}
	}
};
