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
%module TopOpeBRepBuild

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


%include TopOpeBRepBuild_dependencies.i


%include TopOpeBRepBuild_headers.i

typedef TopOpeBRepBuild_Builder * TopOpeBRepBuild_PBuilder;
typedef TopOpeBRepBuild_WireEdgeSet * TopOpeBRepBuild_PWireEdgeSet;
typedef TopOpeBRepBuild_GTopo * TopOpeBRepBuild_PGTopo;

enum TopOpeBRepBuild_LoopEnum {
	TopOpeBRepBuild_ANYLOOP,
	TopOpeBRepBuild_BOUNDARY,
	TopOpeBRepBuild_BLOCK,
	};



%nodefaultctor Handle_TopOpeBRepBuild_DataMapNodeOfDataMapOfShapeListOfShapeListOfShape;
class Handle_TopOpeBRepBuild_DataMapNodeOfDataMapOfShapeListOfShapeListOfShape : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TopOpeBRepBuild_DataMapNodeOfDataMapOfShapeListOfShapeListOfShape();
		%feature("autodoc", "1");
		Handle_TopOpeBRepBuild_DataMapNodeOfDataMapOfShapeListOfShapeListOfShape(const Handle_TopOpeBRepBuild_DataMapNodeOfDataMapOfShapeListOfShapeListOfShape &aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRepBuild_DataMapNodeOfDataMapOfShapeListOfShapeListOfShape(const TopOpeBRepBuild_DataMapNodeOfDataMapOfShapeListOfShapeListOfShape *anItem);
		%feature("autodoc", "1");
		Handle_TopOpeBRepBuild_DataMapNodeOfDataMapOfShapeListOfShapeListOfShape const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TopOpeBRepBuild_DataMapNodeOfDataMapOfShapeListOfShapeListOfShape {
	TopOpeBRepBuild_DataMapNodeOfDataMapOfShapeListOfShapeListOfShape* GetObject() {
	return (TopOpeBRepBuild_DataMapNodeOfDataMapOfShapeListOfShapeListOfShape*)$self->Access();
	}
};
%extend Handle_TopOpeBRepBuild_DataMapNodeOfDataMapOfShapeListOfShapeListOfShape {
	~Handle_TopOpeBRepBuild_DataMapNodeOfDataMapOfShapeListOfShapeListOfShape() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_TopOpeBRepBuild_DataMapNodeOfDataMapOfShapeListOfShapeListOfShape\n");}
	}
};

%nodefaultctor Handle_TopOpeBRepBuild_Loop;
class Handle_TopOpeBRepBuild_Loop : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TopOpeBRepBuild_Loop();
		%feature("autodoc", "1");
		Handle_TopOpeBRepBuild_Loop(const Handle_TopOpeBRepBuild_Loop &aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRepBuild_Loop(const TopOpeBRepBuild_Loop *anItem);
		%feature("autodoc", "1");
		Handle_TopOpeBRepBuild_Loop const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TopOpeBRepBuild_Loop {
	TopOpeBRepBuild_Loop* GetObject() {
	return (TopOpeBRepBuild_Loop*)$self->Access();
	}
};
%extend Handle_TopOpeBRepBuild_Loop {
	~Handle_TopOpeBRepBuild_Loop() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_TopOpeBRepBuild_Loop\n");}
	}
};

%nodefaultctor Handle_TopOpeBRepBuild_Pave;
class Handle_TopOpeBRepBuild_Pave : public Handle_TopOpeBRepBuild_Loop {
	public:
		%feature("autodoc", "1");
		Handle_TopOpeBRepBuild_Pave();
		%feature("autodoc", "1");
		Handle_TopOpeBRepBuild_Pave(const Handle_TopOpeBRepBuild_Pave &aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRepBuild_Pave(const TopOpeBRepBuild_Pave *anItem);
		%feature("autodoc", "1");
		Handle_TopOpeBRepBuild_Pave const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TopOpeBRepBuild_Pave {
	TopOpeBRepBuild_Pave* GetObject() {
	return (TopOpeBRepBuild_Pave*)$self->Access();
	}
};
%extend Handle_TopOpeBRepBuild_Pave {
	~Handle_TopOpeBRepBuild_Pave() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_TopOpeBRepBuild_Pave\n");}
	}
};

%nodefaultctor Handle_TopOpeBRepBuild_ListNodeOfListOfShapeListOfShape;
class Handle_TopOpeBRepBuild_ListNodeOfListOfShapeListOfShape : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TopOpeBRepBuild_ListNodeOfListOfShapeListOfShape();
		%feature("autodoc", "1");
		Handle_TopOpeBRepBuild_ListNodeOfListOfShapeListOfShape(const Handle_TopOpeBRepBuild_ListNodeOfListOfShapeListOfShape &aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRepBuild_ListNodeOfListOfShapeListOfShape(const TopOpeBRepBuild_ListNodeOfListOfShapeListOfShape *anItem);
		%feature("autodoc", "1");
		Handle_TopOpeBRepBuild_ListNodeOfListOfShapeListOfShape const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TopOpeBRepBuild_ListNodeOfListOfShapeListOfShape {
	TopOpeBRepBuild_ListNodeOfListOfShapeListOfShape* GetObject() {
	return (TopOpeBRepBuild_ListNodeOfListOfShapeListOfShape*)$self->Access();
	}
};
%extend Handle_TopOpeBRepBuild_ListNodeOfListOfShapeListOfShape {
	~Handle_TopOpeBRepBuild_ListNodeOfListOfShapeListOfShape() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_TopOpeBRepBuild_ListNodeOfListOfShapeListOfShape\n");}
	}
};

%nodefaultctor Handle_TopOpeBRepBuild_IndexedDataMapNodeOfIndexedDataMapOfShapeVertexInfo;
class Handle_TopOpeBRepBuild_IndexedDataMapNodeOfIndexedDataMapOfShapeVertexInfo : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TopOpeBRepBuild_IndexedDataMapNodeOfIndexedDataMapOfShapeVertexInfo();
		%feature("autodoc", "1");
		Handle_TopOpeBRepBuild_IndexedDataMapNodeOfIndexedDataMapOfShapeVertexInfo(const Handle_TopOpeBRepBuild_IndexedDataMapNodeOfIndexedDataMapOfShapeVertexInfo &aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRepBuild_IndexedDataMapNodeOfIndexedDataMapOfShapeVertexInfo(const TopOpeBRepBuild_IndexedDataMapNodeOfIndexedDataMapOfShapeVertexInfo *anItem);
		%feature("autodoc", "1");
		Handle_TopOpeBRepBuild_IndexedDataMapNodeOfIndexedDataMapOfShapeVertexInfo const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TopOpeBRepBuild_IndexedDataMapNodeOfIndexedDataMapOfShapeVertexInfo {
	TopOpeBRepBuild_IndexedDataMapNodeOfIndexedDataMapOfShapeVertexInfo* GetObject() {
	return (TopOpeBRepBuild_IndexedDataMapNodeOfIndexedDataMapOfShapeVertexInfo*)$self->Access();
	}
};
%extend Handle_TopOpeBRepBuild_IndexedDataMapNodeOfIndexedDataMapOfShapeVertexInfo {
	~Handle_TopOpeBRepBuild_IndexedDataMapNodeOfIndexedDataMapOfShapeVertexInfo() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_TopOpeBRepBuild_IndexedDataMapNodeOfIndexedDataMapOfShapeVertexInfo\n");}
	}
};

%nodefaultctor Handle_TopOpeBRepBuild_ListNodeOfListOfLoop;
class Handle_TopOpeBRepBuild_ListNodeOfListOfLoop : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TopOpeBRepBuild_ListNodeOfListOfLoop();
		%feature("autodoc", "1");
		Handle_TopOpeBRepBuild_ListNodeOfListOfLoop(const Handle_TopOpeBRepBuild_ListNodeOfListOfLoop &aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRepBuild_ListNodeOfListOfLoop(const TopOpeBRepBuild_ListNodeOfListOfLoop *anItem);
		%feature("autodoc", "1");
		Handle_TopOpeBRepBuild_ListNodeOfListOfLoop const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TopOpeBRepBuild_ListNodeOfListOfLoop {
	TopOpeBRepBuild_ListNodeOfListOfLoop* GetObject() {
	return (TopOpeBRepBuild_ListNodeOfListOfLoop*)$self->Access();
	}
};
%extend Handle_TopOpeBRepBuild_ListNodeOfListOfLoop {
	~Handle_TopOpeBRepBuild_ListNodeOfListOfLoop() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_TopOpeBRepBuild_ListNodeOfListOfLoop\n");}
	}
};

%nodefaultctor Handle_TopOpeBRepBuild_ListNodeOfListOfPave;
class Handle_TopOpeBRepBuild_ListNodeOfListOfPave : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TopOpeBRepBuild_ListNodeOfListOfPave();
		%feature("autodoc", "1");
		Handle_TopOpeBRepBuild_ListNodeOfListOfPave(const Handle_TopOpeBRepBuild_ListNodeOfListOfPave &aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRepBuild_ListNodeOfListOfPave(const TopOpeBRepBuild_ListNodeOfListOfPave *anItem);
		%feature("autodoc", "1");
		Handle_TopOpeBRepBuild_ListNodeOfListOfPave const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TopOpeBRepBuild_ListNodeOfListOfPave {
	TopOpeBRepBuild_ListNodeOfListOfPave* GetObject() {
	return (TopOpeBRepBuild_ListNodeOfListOfPave*)$self->Access();
	}
};
%extend Handle_TopOpeBRepBuild_ListNodeOfListOfPave {
	~Handle_TopOpeBRepBuild_ListNodeOfListOfPave() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_TopOpeBRepBuild_ListNodeOfListOfPave\n");}
	}
};

%nodefaultctor Handle_TopOpeBRepBuild_DataMapNodeOfDataMapOfShapeInteger;
class Handle_TopOpeBRepBuild_DataMapNodeOfDataMapOfShapeInteger : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TopOpeBRepBuild_DataMapNodeOfDataMapOfShapeInteger();
		%feature("autodoc", "1");
		Handle_TopOpeBRepBuild_DataMapNodeOfDataMapOfShapeInteger(const Handle_TopOpeBRepBuild_DataMapNodeOfDataMapOfShapeInteger &aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRepBuild_DataMapNodeOfDataMapOfShapeInteger(const TopOpeBRepBuild_DataMapNodeOfDataMapOfShapeInteger *anItem);
		%feature("autodoc", "1");
		Handle_TopOpeBRepBuild_DataMapNodeOfDataMapOfShapeInteger const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TopOpeBRepBuild_DataMapNodeOfDataMapOfShapeInteger {
	TopOpeBRepBuild_DataMapNodeOfDataMapOfShapeInteger* GetObject() {
	return (TopOpeBRepBuild_DataMapNodeOfDataMapOfShapeInteger*)$self->Access();
	}
};
%extend Handle_TopOpeBRepBuild_DataMapNodeOfDataMapOfShapeInteger {
	~Handle_TopOpeBRepBuild_DataMapNodeOfDataMapOfShapeInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_TopOpeBRepBuild_DataMapNodeOfDataMapOfShapeInteger\n");}
	}
};

%nodefaultctor Handle_TopOpeBRepBuild_HBuilder;
class Handle_TopOpeBRepBuild_HBuilder : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TopOpeBRepBuild_HBuilder();
		%feature("autodoc", "1");
		Handle_TopOpeBRepBuild_HBuilder(const Handle_TopOpeBRepBuild_HBuilder &aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRepBuild_HBuilder(const TopOpeBRepBuild_HBuilder *anItem);
		%feature("autodoc", "1");
		Handle_TopOpeBRepBuild_HBuilder const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TopOpeBRepBuild_HBuilder {
	TopOpeBRepBuild_HBuilder* GetObject() {
	return (TopOpeBRepBuild_HBuilder*)$self->Access();
	}
};
%extend Handle_TopOpeBRepBuild_HBuilder {
	~Handle_TopOpeBRepBuild_HBuilder() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_TopOpeBRepBuild_HBuilder\n");}
	}
};

%nodefaultctor Handle_TopOpeBRepBuild_DataMapNodeOfDataMapOfShapeReal;
class Handle_TopOpeBRepBuild_DataMapNodeOfDataMapOfShapeReal : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TopOpeBRepBuild_DataMapNodeOfDataMapOfShapeReal();
		%feature("autodoc", "1");
		Handle_TopOpeBRepBuild_DataMapNodeOfDataMapOfShapeReal(const Handle_TopOpeBRepBuild_DataMapNodeOfDataMapOfShapeReal &aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRepBuild_DataMapNodeOfDataMapOfShapeReal(const TopOpeBRepBuild_DataMapNodeOfDataMapOfShapeReal *anItem);
		%feature("autodoc", "1");
		Handle_TopOpeBRepBuild_DataMapNodeOfDataMapOfShapeReal const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TopOpeBRepBuild_DataMapNodeOfDataMapOfShapeReal {
	TopOpeBRepBuild_DataMapNodeOfDataMapOfShapeReal* GetObject() {
	return (TopOpeBRepBuild_DataMapNodeOfDataMapOfShapeReal*)$self->Access();
	}
};
%extend Handle_TopOpeBRepBuild_DataMapNodeOfDataMapOfShapeReal {
	~Handle_TopOpeBRepBuild_DataMapNodeOfDataMapOfShapeReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_TopOpeBRepBuild_DataMapNodeOfDataMapOfShapeReal\n");}
	}
};

%nodefaultctor Handle_TopOpeBRepBuild_ListNodeOfListOfListOfLoop;
class Handle_TopOpeBRepBuild_ListNodeOfListOfListOfLoop : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TopOpeBRepBuild_ListNodeOfListOfListOfLoop();
		%feature("autodoc", "1");
		Handle_TopOpeBRepBuild_ListNodeOfListOfListOfLoop(const Handle_TopOpeBRepBuild_ListNodeOfListOfListOfLoop &aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRepBuild_ListNodeOfListOfListOfLoop(const TopOpeBRepBuild_ListNodeOfListOfListOfLoop *anItem);
		%feature("autodoc", "1");
		Handle_TopOpeBRepBuild_ListNodeOfListOfListOfLoop const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TopOpeBRepBuild_ListNodeOfListOfListOfLoop {
	TopOpeBRepBuild_ListNodeOfListOfListOfLoop* GetObject() {
	return (TopOpeBRepBuild_ListNodeOfListOfListOfLoop*)$self->Access();
	}
};
%extend Handle_TopOpeBRepBuild_ListNodeOfListOfListOfLoop {
	~Handle_TopOpeBRepBuild_ListNodeOfListOfListOfLoop() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_TopOpeBRepBuild_ListNodeOfListOfListOfLoop\n");}
	}
};

%nodefaultctor TopOpeBRepBuild_ListIteratorOfListOfLoop;
class TopOpeBRepBuild_ListIteratorOfListOfLoop {
	public:
		%feature("autodoc", "1");
		TopOpeBRepBuild_ListIteratorOfListOfLoop();
		%feature("autodoc", "1");
		TopOpeBRepBuild_ListIteratorOfListOfLoop(const TopOpeBRepBuild_ListOfLoop &L);
		%feature("autodoc", "1");
		void Initialize(const TopOpeBRepBuild_ListOfLoop &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		Handle_TopOpeBRepBuild_Loop & Value() const;

};
%extend TopOpeBRepBuild_ListIteratorOfListOfLoop {
	~TopOpeBRepBuild_ListIteratorOfListOfLoop() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TopOpeBRepBuild_ListIteratorOfListOfLoop\n");}
	}
};

%nodefaultctor TopOpeBRepBuild_DataMapOfShapeReal;
class TopOpeBRepBuild_DataMapOfShapeReal : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TopOpeBRepBuild_DataMapOfShapeReal(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TopOpeBRepBuild_DataMapOfShapeReal & Assign(const TopOpeBRepBuild_DataMapOfShapeReal &Other);
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
%extend TopOpeBRepBuild_DataMapOfShapeReal {
	~TopOpeBRepBuild_DataMapOfShapeReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TopOpeBRepBuild_DataMapOfShapeReal\n");}
	}
};

%nodefaultctor TopOpeBRepBuild_IndexedDataMapOfShapeVertexInfo;
class TopOpeBRepBuild_IndexedDataMapOfShapeVertexInfo : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TopOpeBRepBuild_IndexedDataMapOfShapeVertexInfo(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TopOpeBRepBuild_IndexedDataMapOfShapeVertexInfo & Assign(const TopOpeBRepBuild_IndexedDataMapOfShapeVertexInfo &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer Add(const TopoDS_Shape &K, const TopOpeBRepBuild_VertexInfo &I);
		%feature("autodoc", "1");
		void Substitute(const Standard_Integer I, const TopoDS_Shape &K, const TopOpeBRepBuild_VertexInfo &T);
		%feature("autodoc", "1");
		void RemoveLast();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		const TopoDS_Shape & FindKey(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const TopOpeBRepBuild_VertexInfo & FindFromIndex(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const TopOpeBRepBuild_VertexInfo & operator()(const Standard_Integer I) const;
		%feature("autodoc", "1");
		TopOpeBRepBuild_VertexInfo & ChangeFromIndex(const Standard_Integer I);
		%feature("autodoc", "1");
		TopOpeBRepBuild_VertexInfo & operator()(const Standard_Integer I);
		%feature("autodoc", "1");
		Standard_Integer FindIndex(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		const TopOpeBRepBuild_VertexInfo & FindFromKey(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		TopOpeBRepBuild_VertexInfo & ChangeFromKey(const TopoDS_Shape &K);

};
%extend TopOpeBRepBuild_IndexedDataMapOfShapeVertexInfo {
	~TopOpeBRepBuild_IndexedDataMapOfShapeVertexInfo() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TopOpeBRepBuild_IndexedDataMapOfShapeVertexInfo\n");}
	}
};

%nodefaultctor TopOpeBRepBuild_BlockIterator;
class TopOpeBRepBuild_BlockIterator {
	public:
		%feature("autodoc", "1");
		TopOpeBRepBuild_BlockIterator();
		%feature("autodoc", "1");
		TopOpeBRepBuild_BlockIterator(const Standard_Integer Lower, const Standard_Integer Upper);
		%feature("autodoc", "1");
		void Initialize();
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		Standard_Integer Value() const;
		%feature("autodoc", "1");
		Standard_Integer Extent() const;

};
%extend TopOpeBRepBuild_BlockIterator {
	~TopOpeBRepBuild_BlockIterator() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TopOpeBRepBuild_BlockIterator\n");}
	}
};

%nodefaultctor TopOpeBRepBuild_Loop;
class TopOpeBRepBuild_Loop : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TopOpeBRepBuild_Loop(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		TopOpeBRepBuild_Loop(const TopOpeBRepBuild_BlockIterator &BI);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsShape() const;
		%feature("autodoc", "1");
		virtual		const TopoDS_Shape & Shape() const;
		%feature("autodoc", "1");
		const TopOpeBRepBuild_BlockIterator & BlockIterator() const;
		%feature("autodoc", "1");
		virtual		void Dump() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TopOpeBRepBuild_Loop {
	Handle_TopOpeBRepBuild_Loop GetHandle() {
	return *(Handle_TopOpeBRepBuild_Loop*) &$self;
	}
};
%extend TopOpeBRepBuild_Loop {
	Standard_Integer __hash__() {
	return $self->HashCode(LONG_MAX);
	}
};
%extend TopOpeBRepBuild_Loop {
	~TopOpeBRepBuild_Loop() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TopOpeBRepBuild_Loop\n");}
	}
};

%nodefaultctor TopOpeBRepBuild_Pave;
class TopOpeBRepBuild_Pave : public TopOpeBRepBuild_Loop {
	public:
		%feature("autodoc", "1");
		TopOpeBRepBuild_Pave(const TopoDS_Shape &V, const Standard_Real P, const Standard_Boolean bound);
		%feature("autodoc", "1");
		void HasSameDomain(const Standard_Boolean b);
		%feature("autodoc", "1");
		void SameDomain(const TopoDS_Shape &VSD);
		%feature("autodoc", "1");
		Standard_Boolean HasSameDomain() const;
		%feature("autodoc", "1");
		const TopoDS_Shape & SameDomain() const;
		%feature("autodoc", "1");
		const TopoDS_Shape & Vertex() const;
		%feature("autodoc", "1");
		TopoDS_Shape & ChangeVertex();
		%feature("autodoc", "1");
		Standard_Real Parameter() const;
		%feature("autodoc", "1");
		void Parameter(const Standard_Real Par);
		%feature("autodoc", "1");
		TopOpeBRepDS_Kind & InterferenceType();

};
%extend TopOpeBRepBuild_Pave {
	Handle_TopOpeBRepBuild_Pave GetHandle() {
	return *(Handle_TopOpeBRepBuild_Pave*) &$self;
	}
};
%extend TopOpeBRepBuild_Pave {
	Standard_Integer __hash__() {
	return $self->HashCode(LONG_MAX);
	}
};
%extend TopOpeBRepBuild_Pave {
	~TopOpeBRepBuild_Pave() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TopOpeBRepBuild_Pave\n");}
	}
};

%nodefaultctor TopOpeBRepBuild_AreaBuilder;
class TopOpeBRepBuild_AreaBuilder {
	public:
		%feature("autodoc", "1");
		TopOpeBRepBuild_AreaBuilder();
		%feature("autodoc", "1");
		TopOpeBRepBuild_AreaBuilder(TopOpeBRepBuild_LoopSet & LS, TopOpeBRepBuild_LoopClassifier & LC, const Standard_Boolean ForceClass=0);
		%feature("autodoc", "1");
		virtual		void Delete();
		%feature("autodoc", "1");
		virtual		void InitAreaBuilder(TopOpeBRepBuild_LoopSet & LS, TopOpeBRepBuild_LoopClassifier & LC, const Standard_Boolean ForceClass=0);
		%feature("autodoc", "1");
		Standard_Integer InitArea();
		%feature("autodoc", "1");
		Standard_Boolean MoreArea() const;
		%feature("autodoc", "1");
		void NextArea();
		%feature("autodoc", "1");
		Standard_Integer InitLoop();
		%feature("autodoc", "1");
		Standard_Boolean MoreLoop() const;
		%feature("autodoc", "1");
		void NextLoop();
		%feature("autodoc", "1");
		const Handle_TopOpeBRepBuild_Loop & Loop() const;
		%feature("autodoc", "1");
		virtual		void ADD_Loop_TO_LISTOFLoop(const Handle_TopOpeBRepBuild_Loop &L, TopOpeBRepBuild_ListOfLoop & LOL, const Standard_Address s=0) const;
		%feature("autodoc", "1");
		virtual		void REM_Loop_FROM_LISTOFLoop(TopOpeBRepBuild_ListIteratorOfListOfLoop & ITLOL, TopOpeBRepBuild_ListOfLoop & LOL, const Standard_Address s=0) const;
		%feature("autodoc", "1");
		virtual		void ADD_LISTOFLoop_TO_LISTOFLoop(TopOpeBRepBuild_ListOfLoop & LOL1, TopOpeBRepBuild_ListOfLoop & LOL2, const Standard_Address s=0, const Standard_Address s1=0, const Standard_Address s2=0) const;

};
%extend TopOpeBRepBuild_AreaBuilder {
	~TopOpeBRepBuild_AreaBuilder() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TopOpeBRepBuild_AreaBuilder\n");}
	}
};

%nodefaultctor TopOpeBRepBuild_ListIteratorOfListOfShapeListOfShape;
class TopOpeBRepBuild_ListIteratorOfListOfShapeListOfShape {
	public:
		%feature("autodoc", "1");
		TopOpeBRepBuild_ListIteratorOfListOfShapeListOfShape();
		%feature("autodoc", "1");
		TopOpeBRepBuild_ListIteratorOfListOfShapeListOfShape(const TopOpeBRepBuild_ListOfShapeListOfShape &L);
		%feature("autodoc", "1");
		void Initialize(const TopOpeBRepBuild_ListOfShapeListOfShape &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		TopOpeBRepBuild_ShapeListOfShape & Value() const;

};
%extend TopOpeBRepBuild_ListIteratorOfListOfShapeListOfShape {
	~TopOpeBRepBuild_ListIteratorOfListOfShapeListOfShape() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TopOpeBRepBuild_ListIteratorOfListOfShapeListOfShape\n");}
	}
};

%nodefaultctor TopOpeBRepBuild_LoopClassifier;
class TopOpeBRepBuild_LoopClassifier {
	public:
		%feature("autodoc", "1");
		virtual		void Delete();
		%feature("autodoc", "1");
		virtual		TopAbs_State Compare(const Handle_TopOpeBRepBuild_Loop &L1, const Handle_TopOpeBRepBuild_Loop &L2);

};
%extend TopOpeBRepBuild_LoopClassifier {
	~TopOpeBRepBuild_LoopClassifier() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TopOpeBRepBuild_LoopClassifier\n");}
	}
};

%nodefaultctor TopOpeBRepBuild_PaveClassifier;
class TopOpeBRepBuild_PaveClassifier : public TopOpeBRepBuild_LoopClassifier {
	public:
		%feature("autodoc", "1");
		TopOpeBRepBuild_PaveClassifier(const TopoDS_Shape &E);
		%feature("autodoc", "1");
		void SetFirstParameter(const Standard_Real P);
		%feature("autodoc", "1");
		void ClosedVertices(const Standard_Boolean B);
		%feature("autodoc", "1");
		Standard_Real AdjustCase(const Standard_Real p1, const TopAbs_Orientation o, const Standard_Real first, const Standard_Real period, const Standard_Real tol, Standard_Integer &OutValue);

};
%extend TopOpeBRepBuild_PaveClassifier {
	~TopOpeBRepBuild_PaveClassifier() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TopOpeBRepBuild_PaveClassifier\n");}
	}
};

%nodefaultctor TopOpeBRepBuild_CorrectFace2d;
class TopOpeBRepBuild_CorrectFace2d {
	public:
		%feature("autodoc", "1");
		TopOpeBRepBuild_CorrectFace2d();
		%feature("autodoc", "1");
		TopOpeBRepBuild_CorrectFace2d(const TopoDS_Face &aFace, const TopTools_IndexedMapOfOrientedShape &anAvoidMap, TopTools_IndexedDataMapOfShapeShape & aMap);
		%feature("autodoc", "1");
		const TopoDS_Face & Face() const;
		%feature("autodoc", "1");
		void Perform();
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer ErrorStatus() const;
		%feature("autodoc", "1");
		const TopoDS_Face & CorrectedFace() const;
		%feature("autodoc", "1");
		void SetMapOfTrans2dInfo(TopTools_IndexedDataMapOfShapeShape & aMap);
		%feature("autodoc", "1");
		TopTools_IndexedDataMapOfShapeShape & MapOfTrans2dInfo();
		%feature("autodoc", "1");
		void GetP2dFL(const TopoDS_Face &aFace, const TopoDS_Edge &anEdge, gp_Pnt2d & P2dF, gp_Pnt2d & P2dL);
		%feature("autodoc", "1");
		void CheckList(const TopoDS_Face &aFace, TopTools_ListOfShape & aHeadList);

};
%extend TopOpeBRepBuild_CorrectFace2d {
	~TopOpeBRepBuild_CorrectFace2d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TopOpeBRepBuild_CorrectFace2d\n");}
	}
};

%nodefaultctor TopOpeBRepBuild_CompositeClassifier;
class TopOpeBRepBuild_CompositeClassifier : public TopOpeBRepBuild_LoopClassifier {
	public:
		%feature("autodoc", "1");
		virtual		TopAbs_State Compare(const Handle_TopOpeBRepBuild_Loop &L1, const Handle_TopOpeBRepBuild_Loop &L2);
		%feature("autodoc", "1");
		virtual		TopAbs_State CompareShapes(const TopoDS_Shape &B1, const TopoDS_Shape &B2);
		%feature("autodoc", "1");
		virtual		TopAbs_State CompareElementToShape(const TopoDS_Shape &E, const TopoDS_Shape &B);
		%feature("autodoc", "1");
		virtual		void ResetShape(const TopoDS_Shape &B);
		%feature("autodoc", "1");
		virtual		void ResetElement(const TopoDS_Shape &E);
		%feature("autodoc", "1");
		virtual		void CompareElement(const TopoDS_Shape &E);
		%feature("autodoc", "1");
		virtual		TopAbs_State State();

};
%extend TopOpeBRepBuild_CompositeClassifier {
	~TopOpeBRepBuild_CompositeClassifier() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TopOpeBRepBuild_CompositeClassifier\n");}
	}
};

%nodefaultctor TopOpeBRepBuild_WireEdgeClassifier;
class TopOpeBRepBuild_WireEdgeClassifier : public TopOpeBRepBuild_CompositeClassifier {
	public:
		%feature("autodoc", "1");
		TopOpeBRepBuild_WireEdgeClassifier(const TopoDS_Shape &F, const TopOpeBRepBuild_BlockBuilder &BB);
		%feature("autodoc", "1");
		virtual		TopAbs_State Compare(const Handle_TopOpeBRepBuild_Loop &L1, const Handle_TopOpeBRepBuild_Loop &L2);
		%feature("autodoc", "1");
		TopoDS_Shape LoopToShape(const Handle_TopOpeBRepBuild_Loop &L);
		%feature("autodoc", "1");
		virtual		TopAbs_State CompareShapes(const TopoDS_Shape &B1, const TopoDS_Shape &B2);
		%feature("autodoc", "1");
		virtual		TopAbs_State CompareElementToShape(const TopoDS_Shape &E, const TopoDS_Shape &B);
		%feature("autodoc", "1");
		virtual		void ResetShape(const TopoDS_Shape &B);
		%feature("autodoc", "1");
		virtual		void ResetElement(const TopoDS_Shape &E);
		%feature("autodoc", "1");
		virtual		void CompareElement(const TopoDS_Shape &E);
		%feature("autodoc", "1");
		virtual		TopAbs_State State();

};
%extend TopOpeBRepBuild_WireEdgeClassifier {
	~TopOpeBRepBuild_WireEdgeClassifier() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TopOpeBRepBuild_WireEdgeClassifier\n");}
	}
};

%nodefaultctor TopOpeBRepBuild_ListOfListOfLoop;
class TopOpeBRepBuild_ListOfListOfLoop {
	public:
		%feature("autodoc", "1");
		TopOpeBRepBuild_ListOfListOfLoop();
		%feature("autodoc", "1");
		void Assign(const TopOpeBRepBuild_ListOfListOfLoop &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const TopOpeBRepBuild_ListOfLoop &I);
		%feature("autodoc", "1");
		void Prepend(const TopOpeBRepBuild_ListOfLoop &I, TopOpeBRepBuild_ListIteratorOfListOfListOfLoop & theIt);
		%feature("autodoc", "1");
		void Prepend(TopOpeBRepBuild_ListOfListOfLoop & Other);
		%feature("autodoc", "1");
		void Append(const TopOpeBRepBuild_ListOfLoop &I);
		%feature("autodoc", "1");
		void Append(const TopOpeBRepBuild_ListOfLoop &I, TopOpeBRepBuild_ListIteratorOfListOfListOfLoop & theIt);
		%feature("autodoc", "1");
		void Append(TopOpeBRepBuild_ListOfListOfLoop & Other);
		%feature("autodoc", "1");
		TopOpeBRepBuild_ListOfLoop & First() const;
		%feature("autodoc", "1");
		TopOpeBRepBuild_ListOfLoop & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(TopOpeBRepBuild_ListIteratorOfListOfListOfLoop & It);
		%feature("autodoc", "1");
		void InsertBefore(const TopOpeBRepBuild_ListOfLoop &I, TopOpeBRepBuild_ListIteratorOfListOfListOfLoop & It);
		%feature("autodoc", "1");
		void InsertBefore(TopOpeBRepBuild_ListOfListOfLoop & Other, TopOpeBRepBuild_ListIteratorOfListOfListOfLoop & It);
		%feature("autodoc", "1");
		void InsertAfter(const TopOpeBRepBuild_ListOfLoop &I, TopOpeBRepBuild_ListIteratorOfListOfListOfLoop & It);
		%feature("autodoc", "1");
		void InsertAfter(TopOpeBRepBuild_ListOfListOfLoop & Other, TopOpeBRepBuild_ListIteratorOfListOfListOfLoop & It);

};
%extend TopOpeBRepBuild_ListOfListOfLoop {
	~TopOpeBRepBuild_ListOfListOfLoop() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TopOpeBRepBuild_ListOfListOfLoop\n");}
	}
};

%nodefaultctor TopOpeBRepBuild_ListOfLoop;
class TopOpeBRepBuild_ListOfLoop {
	public:
		%feature("autodoc", "1");
		TopOpeBRepBuild_ListOfLoop();
		%feature("autodoc", "1");
		void Assign(const TopOpeBRepBuild_ListOfLoop &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const Handle_TopOpeBRepBuild_Loop &I);
		%feature("autodoc", "1");
		void Prepend(const Handle_TopOpeBRepBuild_Loop &I, TopOpeBRepBuild_ListIteratorOfListOfLoop & theIt);
		%feature("autodoc", "1");
		void Prepend(TopOpeBRepBuild_ListOfLoop & Other);
		%feature("autodoc", "1");
		void Append(const Handle_TopOpeBRepBuild_Loop &I);
		%feature("autodoc", "1");
		void Append(const Handle_TopOpeBRepBuild_Loop &I, TopOpeBRepBuild_ListIteratorOfListOfLoop & theIt);
		%feature("autodoc", "1");
		void Append(TopOpeBRepBuild_ListOfLoop & Other);
		%feature("autodoc", "1");
		Handle_TopOpeBRepBuild_Loop & First() const;
		%feature("autodoc", "1");
		Handle_TopOpeBRepBuild_Loop & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(TopOpeBRepBuild_ListIteratorOfListOfLoop & It);
		%feature("autodoc", "1");
		void InsertBefore(const Handle_TopOpeBRepBuild_Loop &I, TopOpeBRepBuild_ListIteratorOfListOfLoop & It);
		%feature("autodoc", "1");
		void InsertBefore(TopOpeBRepBuild_ListOfLoop & Other, TopOpeBRepBuild_ListIteratorOfListOfLoop & It);
		%feature("autodoc", "1");
		void InsertAfter(const Handle_TopOpeBRepBuild_Loop &I, TopOpeBRepBuild_ListIteratorOfListOfLoop & It);
		%feature("autodoc", "1");
		void InsertAfter(TopOpeBRepBuild_ListOfLoop & Other, TopOpeBRepBuild_ListIteratorOfListOfLoop & It);

};
%extend TopOpeBRepBuild_ListOfLoop {
	~TopOpeBRepBuild_ListOfLoop() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TopOpeBRepBuild_ListOfLoop\n");}
	}
};

%nodefaultctor TopOpeBRepBuild_DataMapOfShapeListOfShapeListOfShape;
class TopOpeBRepBuild_DataMapOfShapeListOfShapeListOfShape : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TopOpeBRepBuild_DataMapOfShapeListOfShapeListOfShape(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TopOpeBRepBuild_DataMapOfShapeListOfShapeListOfShape & Assign(const TopOpeBRepBuild_DataMapOfShapeListOfShapeListOfShape &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TopoDS_Shape &K, const TopOpeBRepBuild_ListOfShapeListOfShape &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TopoDS_Shape &K);
		%feature("autodoc", "1");
		const TopOpeBRepBuild_ListOfShapeListOfShape & Find(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		const TopOpeBRepBuild_ListOfShapeListOfShape & operator()(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		TopOpeBRepBuild_ListOfShapeListOfShape & ChangeFind(const TopoDS_Shape &K);
		%feature("autodoc", "1");
		TopOpeBRepBuild_ListOfShapeListOfShape & operator()(const TopoDS_Shape &K);

};
%extend TopOpeBRepBuild_DataMapOfShapeListOfShapeListOfShape {
	~TopOpeBRepBuild_DataMapOfShapeListOfShapeListOfShape() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TopOpeBRepBuild_DataMapOfShapeListOfShapeListOfShape\n");}
	}
};

%nodefaultctor TopOpeBRepBuild_GTool;
class TopOpeBRepBuild_GTool {
	public:
		%feature("autodoc", "1");
		TopOpeBRepBuild_GTool();
		%feature("autodoc", "1");
		TopOpeBRepBuild_GTopo GFusUnsh(const TopAbs_ShapeEnum s1, const TopAbs_ShapeEnum s2);
		%feature("autodoc", "1");
		TopOpeBRepBuild_GTopo GFusSame(const TopAbs_ShapeEnum s1, const TopAbs_ShapeEnum s2);
		%feature("autodoc", "1");
		TopOpeBRepBuild_GTopo GFusDiff(const TopAbs_ShapeEnum s1, const TopAbs_ShapeEnum s2);
		%feature("autodoc", "1");
		TopOpeBRepBuild_GTopo GCutUnsh(const TopAbs_ShapeEnum s1, const TopAbs_ShapeEnum s2);
		%feature("autodoc", "1");
		TopOpeBRepBuild_GTopo GCutSame(const TopAbs_ShapeEnum s1, const TopAbs_ShapeEnum s2);
		%feature("autodoc", "1");
		TopOpeBRepBuild_GTopo GCutDiff(const TopAbs_ShapeEnum s1, const TopAbs_ShapeEnum s2);
		%feature("autodoc", "1");
		TopOpeBRepBuild_GTopo GComUnsh(const TopAbs_ShapeEnum s1, const TopAbs_ShapeEnum s2);
		%feature("autodoc", "1");
		TopOpeBRepBuild_GTopo GComSame(const TopAbs_ShapeEnum s1, const TopAbs_ShapeEnum s2);
		%feature("autodoc", "1");
		TopOpeBRepBuild_GTopo GComDiff(const TopAbs_ShapeEnum s1, const TopAbs_ShapeEnum s2);
		%feature("autodoc", "1");
		void Dump(Standard_OStream & OS);

};
%extend TopOpeBRepBuild_GTool {
	~TopOpeBRepBuild_GTool() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TopOpeBRepBuild_GTool\n");}
	}
};

%nodefaultctor TopOpeBRepBuild_Area2dBuilder;
class TopOpeBRepBuild_Area2dBuilder : public TopOpeBRepBuild_AreaBuilder {
	public:
		%feature("autodoc", "1");
		TopOpeBRepBuild_Area2dBuilder();
		%feature("autodoc", "1");
		TopOpeBRepBuild_Area2dBuilder(TopOpeBRepBuild_LoopSet & LS, TopOpeBRepBuild_LoopClassifier & LC, const Standard_Boolean ForceClass=0);
		%feature("autodoc", "1");
		virtual		void InitAreaBuilder(TopOpeBRepBuild_LoopSet & LS, TopOpeBRepBuild_LoopClassifier & LC, const Standard_Boolean ForceClass=0);

};
%extend TopOpeBRepBuild_Area2dBuilder {
	~TopOpeBRepBuild_Area2dBuilder() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TopOpeBRepBuild_Area2dBuilder\n");}
	}
};

%nodefaultctor TopOpeBRepBuild_FaceAreaBuilder;
class TopOpeBRepBuild_FaceAreaBuilder : public TopOpeBRepBuild_Area2dBuilder {
	public:
		%feature("autodoc", "1");
		TopOpeBRepBuild_FaceAreaBuilder();
		%feature("autodoc", "1");
		TopOpeBRepBuild_FaceAreaBuilder(TopOpeBRepBuild_LoopSet & LS, TopOpeBRepBuild_LoopClassifier & LC, const Standard_Boolean ForceClass=0);
		%feature("autodoc", "1");
		void InitFaceAreaBuilder(TopOpeBRepBuild_LoopSet & LS, TopOpeBRepBuild_LoopClassifier & LC, const Standard_Boolean ForceClass=0);

};
%extend TopOpeBRepBuild_FaceAreaBuilder {
	~TopOpeBRepBuild_FaceAreaBuilder() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TopOpeBRepBuild_FaceAreaBuilder\n");}
	}
};

%nodefaultctor TopOpeBRepBuild_WireToFace;
class TopOpeBRepBuild_WireToFace {
	public:
		%feature("autodoc", "1");
		TopOpeBRepBuild_WireToFace();
		%feature("autodoc", "1");
		void Init();
		%feature("autodoc", "1");
		void AddWire(const TopoDS_Wire &W);
		%feature("autodoc", "1");
		void MakeFaces(const TopoDS_Face &F, TopTools_ListOfShape & LF);

};
%extend TopOpeBRepBuild_WireToFace {
	~TopOpeBRepBuild_WireToFace() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TopOpeBRepBuild_WireToFace\n");}
	}
};

%nodefaultctor TopOpeBRepBuild_Area3dBuilder;
class TopOpeBRepBuild_Area3dBuilder : public TopOpeBRepBuild_AreaBuilder {
	public:
		%feature("autodoc", "1");
		TopOpeBRepBuild_Area3dBuilder();
		%feature("autodoc", "1");
		TopOpeBRepBuild_Area3dBuilder(TopOpeBRepBuild_LoopSet & LS, TopOpeBRepBuild_LoopClassifier & LC, const Standard_Boolean ForceClass=0);
		%feature("autodoc", "1");
		virtual		void InitAreaBuilder(TopOpeBRepBuild_LoopSet & LS, TopOpeBRepBuild_LoopClassifier & LC, const Standard_Boolean ForceClass=0);

};
%extend TopOpeBRepBuild_Area3dBuilder {
	~TopOpeBRepBuild_Area3dBuilder() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TopOpeBRepBuild_Area3dBuilder\n");}
	}
};

%nodefaultctor TopOpeBRepBuild_SolidAreaBuilder;
class TopOpeBRepBuild_SolidAreaBuilder : public TopOpeBRepBuild_Area3dBuilder {
	public:
		%feature("autodoc", "1");
		TopOpeBRepBuild_SolidAreaBuilder();
		%feature("autodoc", "1");
		TopOpeBRepBuild_SolidAreaBuilder(TopOpeBRepBuild_LoopSet & LS, TopOpeBRepBuild_LoopClassifier & LC, const Standard_Boolean ForceClass=0);
		%feature("autodoc", "1");
		void InitSolidAreaBuilder(TopOpeBRepBuild_LoopSet & LS, TopOpeBRepBuild_LoopClassifier & LC, const Standard_Boolean ForceClass=0);

};
%extend TopOpeBRepBuild_SolidAreaBuilder {
	~TopOpeBRepBuild_SolidAreaBuilder() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TopOpeBRepBuild_SolidAreaBuilder\n");}
	}
};

%nodefaultctor TopOpeBRepBuild_ListNodeOfListOfListOfLoop;
class TopOpeBRepBuild_ListNodeOfListOfListOfLoop : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TopOpeBRepBuild_ListNodeOfListOfListOfLoop(const TopOpeBRepBuild_ListOfLoop &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopOpeBRepBuild_ListOfLoop & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TopOpeBRepBuild_ListNodeOfListOfListOfLoop {
	Handle_TopOpeBRepBuild_ListNodeOfListOfListOfLoop GetHandle() {
	return *(Handle_TopOpeBRepBuild_ListNodeOfListOfListOfLoop*) &$self;
	}
};
%extend TopOpeBRepBuild_ListNodeOfListOfListOfLoop {
	Standard_Integer __hash__() {
	return $self->HashCode(LONG_MAX);
	}
};
%extend TopOpeBRepBuild_ListNodeOfListOfListOfLoop {
	~TopOpeBRepBuild_ListNodeOfListOfListOfLoop() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TopOpeBRepBuild_ListNodeOfListOfListOfLoop\n");}
	}
};

%nodefaultctor TopOpeBRepBuild_Area1dBuilder;
class TopOpeBRepBuild_Area1dBuilder : public TopOpeBRepBuild_AreaBuilder {
	public:
		%feature("autodoc", "1");
		TopOpeBRepBuild_Area1dBuilder();
		%feature("autodoc", "1");
		TopOpeBRepBuild_Area1dBuilder(TopOpeBRepBuild_PaveSet & LS, TopOpeBRepBuild_PaveClassifier & LC, const Standard_Boolean ForceClass=0);
		%feature("autodoc", "1");
		virtual		void InitAreaBuilder(TopOpeBRepBuild_LoopSet & LS, TopOpeBRepBuild_LoopClassifier & LC, const Standard_Boolean ForceClass=0);
		%feature("autodoc", "1");
		virtual		void ADD_Loop_TO_LISTOFLoop(const Handle_TopOpeBRepBuild_Loop &L, TopOpeBRepBuild_ListOfLoop & LOL, const Standard_Address s=0) const;
		%feature("autodoc", "1");
		virtual		void REM_Loop_FROM_LISTOFLoop(TopOpeBRepBuild_ListIteratorOfListOfLoop & ITLOL, TopOpeBRepBuild_ListOfLoop & LOL, const Standard_Address s=0) const;
		%feature("autodoc", "1");
		virtual		void ADD_LISTOFLoop_TO_LISTOFLoop(TopOpeBRepBuild_ListOfLoop & LOL1, TopOpeBRepBuild_ListOfLoop & LOL2, const Standard_Address s=0, const Standard_Address s1=0, const Standard_Address s2=0) const;
		%feature("autodoc", "1");
		void DumpList(const TopOpeBRepBuild_ListOfLoop &L);

};
%extend TopOpeBRepBuild_Area1dBuilder {
	~TopOpeBRepBuild_Area1dBuilder() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TopOpeBRepBuild_Area1dBuilder\n");}
	}
};

%nodefaultctor TopOpeBRepBuild_LoopSet;
class TopOpeBRepBuild_LoopSet {
	public:
		%feature("autodoc", "1");
		TopOpeBRepBuild_LoopSet();
		%feature("autodoc", "1");
		virtual		void Delete();
		%feature("autodoc", "1");
		TopOpeBRepBuild_ListOfLoop & ChangeListOfLoop();
		%feature("autodoc", "1");
		virtual		void InitLoop();
		%feature("autodoc", "1");
		virtual		Standard_Boolean MoreLoop() const;
		%feature("autodoc", "1");
		virtual		void NextLoop();
		%feature("autodoc", "1");
		virtual		const Handle_TopOpeBRepBuild_Loop & Loop() const;

};
%extend TopOpeBRepBuild_LoopSet {
	~TopOpeBRepBuild_LoopSet() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TopOpeBRepBuild_LoopSet\n");}
	}
};

%nodefaultctor TopOpeBRepBuild_DataMapIteratorOfDataMapOfShapeListOfShapeListOfShape;
class TopOpeBRepBuild_DataMapIteratorOfDataMapOfShapeListOfShapeListOfShape : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		TopOpeBRepBuild_DataMapIteratorOfDataMapOfShapeListOfShapeListOfShape();
		%feature("autodoc", "1");
		TopOpeBRepBuild_DataMapIteratorOfDataMapOfShapeListOfShapeListOfShape(const TopOpeBRepBuild_DataMapOfShapeListOfShapeListOfShape &aMap);
		%feature("autodoc", "1");
		void Initialize(const TopOpeBRepBuild_DataMapOfShapeListOfShapeListOfShape &aMap);
		%feature("autodoc", "1");
		const TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		const TopOpeBRepBuild_ListOfShapeListOfShape & Value() const;

};
%extend TopOpeBRepBuild_DataMapIteratorOfDataMapOfShapeListOfShapeListOfShape {
	~TopOpeBRepBuild_DataMapIteratorOfDataMapOfShapeListOfShapeListOfShape() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TopOpeBRepBuild_DataMapIteratorOfDataMapOfShapeListOfShapeListOfShape\n");}
	}
};

%nodefaultctor TopOpeBRepBuild_VertexInfo;
class TopOpeBRepBuild_VertexInfo {
	public:
		%feature("autodoc", "1");
		TopOpeBRepBuild_VertexInfo();
		%feature("autodoc", "1");
		void SetVertex(const TopoDS_Vertex &aV);
		%feature("autodoc", "1");
		const TopoDS_Vertex & Vertex() const;
		%feature("autodoc", "1");
		void SetSmart(const Standard_Boolean aFlag);
		%feature("autodoc", "1");
		Standard_Boolean Smart() const;
		%feature("autodoc", "1");
		Standard_Integer NbCases() const;
		%feature("autodoc", "1");
		Standard_Integer FoundOut() const;
		%feature("autodoc", "1");
		void AddIn(const TopoDS_Edge &anE);
		%feature("autodoc", "1");
		void AddOut(const TopoDS_Edge &anE);
		%feature("autodoc", "1");
		void SetCurrentIn(const TopoDS_Edge &anE);
		%feature("autodoc", "1");
		const TopTools_IndexedMapOfOrientedShape & EdgesIn() const;
		%feature("autodoc", "1");
		const TopTools_IndexedMapOfOrientedShape & EdgesOut() const;
		%feature("autodoc", "1");
		TopTools_IndexedMapOfOrientedShape & ChangeEdgesOut();
		%feature("autodoc", "1");
		void Dump() const;
		%feature("autodoc", "1");
		const TopoDS_Edge & CurrentOut();
		%feature("autodoc", "1");
		void AppendPassed(const TopoDS_Edge &anE);
		%feature("autodoc", "1");
		void RemovePassed();
		%feature("autodoc", "1");
		const TopTools_ListOfShape & ListPassed() const;
		%feature("autodoc", "1");
		void Prepare(const TopTools_ListOfShape &aL);

};
%extend TopOpeBRepBuild_VertexInfo {
	~TopOpeBRepBuild_VertexInfo() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TopOpeBRepBuild_VertexInfo\n");}
	}
};

%nodefaultctor TopOpeBRepBuild_Tools2d;
class TopOpeBRepBuild_Tools2d {
	public:
		%feature("autodoc", "1");
		TopOpeBRepBuild_Tools2d();
		%feature("autodoc", "1");
		void MakeMapOfShapeVertexInfo(const TopoDS_Wire &aWire, TopOpeBRepBuild_IndexedDataMapOfShapeVertexInfo & aMap);
		%feature("autodoc", "1");
		void DumpMapOfShapeVertexInfo(const TopOpeBRepBuild_IndexedDataMapOfShapeVertexInfo &aMap);
		%feature("autodoc", "1");
		void Path(const TopoDS_Wire &aWire, TopTools_ListOfShape & aResList);

};
%extend TopOpeBRepBuild_Tools2d {
	~TopOpeBRepBuild_Tools2d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TopOpeBRepBuild_Tools2d\n");}
	}
};

%nodefaultctor TopOpeBRepBuild_ShellToSolid;
class TopOpeBRepBuild_ShellToSolid {
	public:
		%feature("autodoc", "1");
		TopOpeBRepBuild_ShellToSolid();
		%feature("autodoc", "1");
		void Init();
		%feature("autodoc", "1");
		void AddShell(const TopoDS_Shell &Sh);
		%feature("autodoc", "1");
		void MakeSolids(const TopoDS_Solid &So, TopTools_ListOfShape & LSo);

};
%extend TopOpeBRepBuild_ShellToSolid {
	~TopOpeBRepBuild_ShellToSolid() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TopOpeBRepBuild_ShellToSolid\n");}
	}
};

%nodefaultctor TopOpeBRepBuild_ListNodeOfListOfPave;
class TopOpeBRepBuild_ListNodeOfListOfPave : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TopOpeBRepBuild_ListNodeOfListOfPave(const Handle_TopOpeBRepBuild_Pave &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Handle_TopOpeBRepBuild_Pave & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TopOpeBRepBuild_ListNodeOfListOfPave {
	Handle_TopOpeBRepBuild_ListNodeOfListOfPave GetHandle() {
	return *(Handle_TopOpeBRepBuild_ListNodeOfListOfPave*) &$self;
	}
};
%extend TopOpeBRepBuild_ListNodeOfListOfPave {
	Standard_Integer __hash__() {
	return $self->HashCode(LONG_MAX);
	}
};
%extend TopOpeBRepBuild_ListNodeOfListOfPave {
	~TopOpeBRepBuild_ListNodeOfListOfPave() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TopOpeBRepBuild_ListNodeOfListOfPave\n");}
	}
};

%nodefaultctor TopOpeBRepBuild_Builder;
class TopOpeBRepBuild_Builder {
	public:
		%feature("autodoc", "1");
		TopOpeBRepBuild_Builder(const TopOpeBRepDS_BuildTool &BT);
		%feature("autodoc", "1");
		virtual		void Destroy();
		%feature("autodoc", "1");
		TopOpeBRepDS_BuildTool & ChangeBuildTool();
		%feature("autodoc", "1");
		const TopOpeBRepDS_BuildTool & BuildTool() const;
		%feature("autodoc", "1");
		virtual		void Perform(const Handle_TopOpeBRepDS_HDataStructure &HDS);
		%feature("autodoc", "1");
		virtual		void Perform(const Handle_TopOpeBRepDS_HDataStructure &HDS, const TopoDS_Shape &S1, const TopoDS_Shape &S2);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_HDataStructure DataStructure() const;
		%feature("autodoc", "1");
		virtual		void Clear();
		%feature("autodoc", "1");
		void MergeEdges(const TopTools_ListOfShape &L1, const TopAbs_State TB1, const TopTools_ListOfShape &L2, const TopAbs_State TB2, const Standard_Boolean onA=0, const Standard_Boolean onB=0, const Standard_Boolean onAB=0);
		%feature("autodoc", "1");
		void MergeFaces(const TopTools_ListOfShape &S1, const TopAbs_State TB1, const TopTools_ListOfShape &S2, const TopAbs_State TB2, const Standard_Boolean onA=0, const Standard_Boolean onB=0, const Standard_Boolean onAB=0);
		%feature("autodoc", "1");
		void MergeSolids(const TopoDS_Shape &S1, const TopAbs_State TB1, const TopoDS_Shape &S2, const TopAbs_State TB2);
		%feature("autodoc", "1");
		void MergeShapes(const TopoDS_Shape &S1, const TopAbs_State TB1, const TopoDS_Shape &S2, const TopAbs_State TB2);
		%feature("autodoc", "1");
		void End();
		%feature("autodoc", "1");
		Standard_Boolean Classify() const;
		%feature("autodoc", "1");
		void ChangeClassify(const Standard_Boolean B);
		%feature("autodoc", "1");
		void MergeSolid(const TopoDS_Shape &S, const TopAbs_State TB);
		%feature("autodoc", "1");
		const TopoDS_Shape & NewVertex(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & NewEdges(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & NewFaces(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Standard_Boolean IsSplit(const TopoDS_Shape &S, const TopAbs_State TB) const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Splits(const TopoDS_Shape &S, const TopAbs_State TB) const;
		%feature("autodoc", "1");
		Standard_Boolean IsMerged(const TopoDS_Shape &S, const TopAbs_State TB) const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Merged(const TopoDS_Shape &S, const TopAbs_State TB) const;
		%feature("autodoc", "1");
		void InitSection();
		%feature("autodoc", "1");
		void SplitSectionEdges();
		%feature("autodoc", "1");
		virtual		void SplitSectionEdge(const TopoDS_Shape &E);
		%feature("autodoc", "1");
		void SectionCurves(TopTools_ListOfShape & L);
		%feature("autodoc", "1");
		void SectionEdges(TopTools_ListOfShape & L);
		%feature("autodoc", "1");
		void FillSecEdgeAncestorMap(const Standard_Integer aShapeRank, const TopTools_MapOfShape &aMapON, TopTools_DataMapOfShapeShape & anAncMap) const;
		%feature("autodoc", "1");
		void Section(TopTools_ListOfShape & L);
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Section();
		%feature("autodoc", "1");
		void BuildVertices(const Handle_TopOpeBRepDS_HDataStructure &DS);
		%feature("autodoc", "1");
		void BuildEdges(const Handle_TopOpeBRepDS_HDataStructure &DS);
		%feature("autodoc", "1");
		const TopOpeBRepDS_DataMapOfShapeListOfShapeOn1State & MSplit(const TopAbs_State s) const;
		%feature("autodoc", "1");
		TopOpeBRepDS_DataMapOfShapeListOfShapeOn1State & ChangeMSplit(const TopAbs_State s);
		%feature("autodoc", "1");
		void MakeEdges(const TopoDS_Shape &E, TopOpeBRepBuild_EdgeBuilder & B, TopTools_ListOfShape & L);
		%feature("autodoc", "1");
		void MakeFaces(const TopoDS_Shape &F, TopOpeBRepBuild_FaceBuilder & B, TopTools_ListOfShape & L);
		%feature("autodoc", "1");
		void MakeSolids(TopOpeBRepBuild_SolidBuilder & B, TopTools_ListOfShape & L);
		%feature("autodoc", "1");
		void MakeShells(TopOpeBRepBuild_SolidBuilder & B, TopTools_ListOfShape & L);
		%feature("autodoc", "1");
		TopTools_ListOfShape & ChangeSplit(const TopoDS_Shape &S, const TopAbs_State TB);
		%feature("autodoc", "1");
		Standard_Boolean Opec12() const;
		%feature("autodoc", "1");
		Standard_Boolean Opec21() const;
		%feature("autodoc", "1");
		Standard_Boolean Opecom() const;
		%feature("autodoc", "1");
		Standard_Boolean Opefus() const;
		%feature("autodoc", "1");
		TopAbs_State ShapePosition(const TopoDS_Shape &S, const TopTools_ListOfShape &LS);
		%feature("autodoc", "1");
		Standard_Boolean KeepShape(const TopoDS_Shape &S, const TopTools_ListOfShape &LS, const TopAbs_State T);
		%feature("autodoc", "1");
		TopAbs_ShapeEnum TopType(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		Standard_Boolean Reverse(const TopAbs_State T1, const TopAbs_State T2);
		%feature("autodoc", "1");
		TopAbs_Orientation Orient(const TopAbs_Orientation O, const Standard_Boolean R);
		%feature("autodoc", "1");
		void FindSameDomain(TopTools_ListOfShape & L1, TopTools_ListOfShape & L2) const;
		%feature("autodoc", "1");
		void FindSameDomainSameOrientation(TopTools_ListOfShape & LSO, TopTools_ListOfShape & LDO) const;
		%feature("autodoc", "1");
		void MapShapes(const TopoDS_Shape &S1, const TopoDS_Shape &S2);
		%feature("autodoc", "1");
		void ClearMaps();
		%feature("autodoc", "1");
		void FindSameRank(const TopTools_ListOfShape &L1, const Standard_Integer R, TopTools_ListOfShape & L2) const;
		%feature("autodoc", "1");
		Standard_Integer ShapeRank(const TopoDS_Shape &S) const;
		%feature("autodoc", "1");
		Standard_Boolean IsShapeOf(const TopoDS_Shape &S, const Standard_Integer I12) const;
		%feature("autodoc", "1");
		Standard_Boolean Contains(const TopoDS_Shape &S, const TopTools_ListOfShape &L);
		%feature("autodoc", "1");
		Standard_Integer FindIsKPart();
		%feature("autodoc", "1");
		Standard_Integer IsKPart() const;
		%feature("autodoc", "1");
		virtual		void MergeKPart();
		%feature("autodoc", "1");
		virtual		void MergeKPart(const TopAbs_State TB1, const TopAbs_State TB2);
		%feature("autodoc", "1");
		void MergeKPartiskole();
		%feature("autodoc", "1");
		void MergeKPartiskoletge();
		%feature("autodoc", "1");
		void MergeKPartisdisj();
		%feature("autodoc", "1");
		void MergeKPartisfafa();
		%feature("autodoc", "1");
		void MergeKPartissoso();
		%feature("autodoc", "1");
		Standard_Integer KPiskole();
		%feature("autodoc", "1");
		Standard_Integer KPiskoletge();
		%feature("autodoc", "1");
		Standard_Integer KPisdisj();
		%feature("autodoc", "1");
		Standard_Integer KPisfafa();
		%feature("autodoc", "1");
		Standard_Integer KPissoso();
		%feature("autodoc", "1");
		void KPClearMaps();
		%feature("autodoc", "1");
		Standard_Integer KPlhg(const TopoDS_Shape &S, const TopAbs_ShapeEnum T, TopTools_ListOfShape & L) const;
		%feature("autodoc", "1");
		Standard_Integer KPlhg(const TopoDS_Shape &S, const TopAbs_ShapeEnum T) const;
		%feature("autodoc", "1");
		Standard_Integer KPlhsd(const TopoDS_Shape &S, const TopAbs_ShapeEnum T, TopTools_ListOfShape & L) const;
		%feature("autodoc", "1");
		Standard_Integer KPlhsd(const TopoDS_Shape &S, const TopAbs_ShapeEnum T) const;
		%feature("autodoc", "1");
		TopAbs_State KPclasSS(const TopoDS_Shape &S1, const TopTools_ListOfShape &exceptLS1, const TopoDS_Shape &S2);
		%feature("autodoc", "1");
		TopAbs_State KPclasSS(const TopoDS_Shape &S1, const TopoDS_Shape &exceptS1, const TopoDS_Shape &S2);
		%feature("autodoc", "1");
		TopAbs_State KPclasSS(const TopoDS_Shape &S1, const TopoDS_Shape &S2);
		%feature("autodoc", "1");
		Standard_Boolean KPiskolesh(const TopoDS_Shape &S, TopTools_ListOfShape & LS, TopTools_ListOfShape & LF) const;
		%feature("autodoc", "1");
		Standard_Boolean KPiskoletgesh(const TopoDS_Shape &S, TopTools_ListOfShape & LS, TopTools_ListOfShape & LF) const;
		%feature("autodoc", "1");
		void KPSameDomain(TopTools_ListOfShape & L1, TopTools_ListOfShape & L2) const;
		%feature("autodoc", "1");
		Standard_Integer KPisdisjsh(const TopoDS_Shape &S) const;
		%feature("autodoc", "1");
		Standard_Integer KPisfafash(const TopoDS_Shape &S) const;
		%feature("autodoc", "1");
		Standard_Integer KPissososh(const TopoDS_Shape &S) const;
		%feature("autodoc", "1");
		void KPiskoleanalyse(const TopAbs_State FT1, const TopAbs_State FT2, const TopAbs_State ST1, const TopAbs_State ST2, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		void KPiskoletgeanalyse(const TopOpeBRepDS_Config Conf, const TopAbs_State ST1, const TopAbs_State ST2, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		void KPisdisjanalyse(const TopAbs_State ST1, const TopAbs_State ST2, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		Standard_Integer KPls(const TopoDS_Shape &S, const TopAbs_ShapeEnum T, TopTools_ListOfShape & L);
		%feature("autodoc", "1");
		Standard_Integer KPls(const TopoDS_Shape &S, const TopAbs_ShapeEnum T);
		%feature("autodoc", "1");
		TopAbs_State KPclassF(const TopoDS_Shape &F1, const TopoDS_Shape &F2);
		%feature("autodoc", "1");
		void KPclassFF(const TopoDS_Shape &F1, const TopoDS_Shape &F2, TopAbs_State & T1, TopAbs_State & T2);
		%feature("autodoc", "1");
		Standard_Boolean KPiskoleFF(const TopoDS_Shape &F1, const TopoDS_Shape &F2, TopAbs_State & T1, TopAbs_State & T2);
		%feature("autodoc", "1");
		Standard_Boolean KPContains(const TopoDS_Shape &S, const TopTools_ListOfShape &L);
		%feature("autodoc", "1");
		TopoDS_Shape KPmakeface(const TopoDS_Shape &F1, const TopTools_ListOfShape &LF2, const TopAbs_State T1, const TopAbs_State T2, const Standard_Boolean R1, const Standard_Boolean R2);
		%feature("autodoc", "1");
		Standard_Integer KPreturn(const Standard_Integer KP);
		%feature("autodoc", "1");
		void SplitEvisoONperiodicF();
		%feature("autodoc", "1");
		void GMergeSolids(const TopTools_ListOfShape &LSO1, const TopTools_ListOfShape &LSO2, const TopOpeBRepBuild_GTopo &G);
		%feature("autodoc", "1");
		void GFillSolidsSFS(const TopTools_ListOfShape &LSO1, const TopTools_ListOfShape &LSO2, const TopOpeBRepBuild_GTopo &G, TopOpeBRepBuild_ShellFaceSet & SFS);
		%feature("autodoc", "1");
		virtual		void GFillSolidSFS(const TopoDS_Shape &SO1, const TopTools_ListOfShape &LSO2, const TopOpeBRepBuild_GTopo &G, TopOpeBRepBuild_ShellFaceSet & SFS);
		%feature("autodoc", "1");
		void GFillSurfaceTopologySFS(const TopoDS_Shape &SO1, const TopOpeBRepBuild_GTopo &G, TopOpeBRepBuild_ShellFaceSet & SFS);
		%feature("autodoc", "1");
		void GFillSurfaceTopologySFS(const TopOpeBRepDS_SurfaceIterator &IT, const TopOpeBRepBuild_GTopo &G, TopOpeBRepBuild_ShellFaceSet & SFS) const;
		%feature("autodoc", "1");
		virtual		void GFillShellSFS(const TopoDS_Shape &SH1, const TopTools_ListOfShape &LSO2, const TopOpeBRepBuild_GTopo &G, TopOpeBRepBuild_ShellFaceSet & SFS);
		%feature("autodoc", "1");
		void GFillFaceSFS(const TopoDS_Shape &F1, const TopTools_ListOfShape &LSO2, const TopOpeBRepBuild_GTopo &G, TopOpeBRepBuild_ShellFaceSet & SFS);
		%feature("autodoc", "1");
		void GSplitFaceSFS(const TopoDS_Shape &F1, const TopTools_ListOfShape &LSclass, const TopOpeBRepBuild_GTopo &G, TopOpeBRepBuild_ShellFaceSet & SFS);
		%feature("autodoc", "1");
		void GMergeFaceSFS(const TopoDS_Shape &F, const TopOpeBRepBuild_GTopo &G, TopOpeBRepBuild_ShellFaceSet & SFS);
		%feature("autodoc", "1");
		void GSplitFace(const TopoDS_Shape &F, const TopOpeBRepBuild_GTopo &G, const TopTools_ListOfShape &LSclass);
		%feature("autodoc", "1");
		void AddONPatchesSFS(const TopOpeBRepBuild_GTopo &G, TopOpeBRepBuild_ShellFaceSet & SFS);
		%feature("autodoc", "1");
		void FillOnPatches(const TopTools_ListOfShape &anEdgesON, const TopoDS_Shape &aBaseFace, const TopTools_IndexedMapOfOrientedShape &avoidMap);
		%feature("autodoc", "1");
		void FindFacesTouchingEdge(const TopoDS_Shape &aFace, const TopoDS_Shape &anEdge, const Standard_Integer aShRank, TopTools_ListOfShape & aFaces) const;
		%feature("autodoc", "1");
		void GMergeFaces(const TopTools_ListOfShape &LF1, const TopTools_ListOfShape &LF2, const TopOpeBRepBuild_GTopo &G);
		%feature("autodoc", "1");
		void GFillFacesWES(const TopTools_ListOfShape &LF1, const TopTools_ListOfShape &LF2, const TopOpeBRepBuild_GTopo &G, TopOpeBRepBuild_WireEdgeSet & WES);
		%feature("autodoc", "1");
		void GFillFacesWESK(const TopTools_ListOfShape &LF1, const TopTools_ListOfShape &LF2, const TopOpeBRepBuild_GTopo &G, TopOpeBRepBuild_WireEdgeSet & WES, const Standard_Integer K);
		%feature("autodoc", "1");
		void GFillFacesWESMakeFaces(const TopTools_ListOfShape &LF1, const TopTools_ListOfShape &LF2, const TopTools_ListOfShape &LSO, const TopOpeBRepBuild_GTopo &G);
		%feature("autodoc", "1");
		void GFillFaceWES(const TopoDS_Shape &F, const TopTools_ListOfShape &LF2, const TopOpeBRepBuild_GTopo &G, TopOpeBRepBuild_WireEdgeSet & WES);
		%feature("autodoc", "1");
		void GFillCurveTopologyWES(const TopoDS_Shape &F, const TopOpeBRepBuild_GTopo &G, TopOpeBRepBuild_WireEdgeSet & WES);
		%feature("autodoc", "1");
		void GFillCurveTopologyWES(const TopOpeBRepDS_CurveIterator &IT, const TopOpeBRepBuild_GTopo &G, TopOpeBRepBuild_WireEdgeSet & WES) const;
		%feature("autodoc", "1");
		void GFillONPartsWES(const TopoDS_Shape &F, const TopOpeBRepBuild_GTopo &G, const TopTools_ListOfShape &LSclass, TopOpeBRepBuild_WireEdgeSet & WES);
		%feature("autodoc", "1");
		void GFillWireWES(const TopoDS_Shape &W, const TopTools_ListOfShape &LF2, const TopOpeBRepBuild_GTopo &G, TopOpeBRepBuild_WireEdgeSet & WES);
		%feature("autodoc", "1");
		void GFillEdgeWES(const TopoDS_Shape &E, const TopTools_ListOfShape &LF2, const TopOpeBRepBuild_GTopo &G, TopOpeBRepBuild_WireEdgeSet & WES);
		%feature("autodoc", "1");
		void GSplitEdgeWES(const TopoDS_Shape &E, const TopTools_ListOfShape &LF2, const TopOpeBRepBuild_GTopo &G, TopOpeBRepBuild_WireEdgeSet & WES);
		%feature("autodoc", "1");
		void GMergeEdgeWES(const TopoDS_Shape &E, const TopOpeBRepBuild_GTopo &G, TopOpeBRepBuild_WireEdgeSet & WES);
		%feature("autodoc", "1");
		void GSplitEdge(const TopoDS_Shape &E, const TopOpeBRepBuild_GTopo &G, const TopTools_ListOfShape &LSclass);
		%feature("autodoc", "1");
		void GMergeEdges(const TopTools_ListOfShape &LE1, const TopTools_ListOfShape &LE2, const TopOpeBRepBuild_GTopo &G);
		%feature("autodoc", "1");
		void GFillEdgesPVS(const TopTools_ListOfShape &LE1, const TopTools_ListOfShape &LE2, const TopOpeBRepBuild_GTopo &G, TopOpeBRepBuild_PaveSet & PVS);
		%feature("autodoc", "1");
		void GFillEdgePVS(const TopoDS_Shape &E, const TopTools_ListOfShape &LE2, const TopOpeBRepBuild_GTopo &G, TopOpeBRepBuild_PaveSet & PVS);
		%feature("autodoc", "1");
		void GFillPointTopologyPVS(const TopoDS_Shape &E, const TopOpeBRepBuild_GTopo &G, TopOpeBRepBuild_PaveSet & PVS);
		%feature("autodoc", "1");
		void GFillPointTopologyPVS(const TopoDS_Shape &E, const TopOpeBRepDS_PointIterator &IT, const TopOpeBRepBuild_GTopo &G, TopOpeBRepBuild_PaveSet & PVS) const;
		%feature("autodoc", "1");
		Standard_Boolean GParamOnReference(const TopoDS_Vertex &V, const TopoDS_Edge &E, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Boolean GKeepShape(const TopoDS_Shape &S, const TopTools_ListOfShape &Lref, const TopAbs_State T);
		%feature("autodoc", "1");
		Standard_Boolean GKeepShape1(const TopoDS_Shape &S, const TopTools_ListOfShape &Lref, const TopAbs_State T, TopAbs_State & pos);
		%feature("autodoc", "1");
		void GKeepShapes(const TopoDS_Shape &S, const TopTools_ListOfShape &Lref, const TopAbs_State T, const TopTools_ListOfShape &Lin, TopTools_ListOfShape & Lou);
		%feature("autodoc", "1");
		void GSFSMakeSolids(const TopoDS_Shape &SOF, TopOpeBRepBuild_ShellFaceSet & SFS, TopTools_ListOfShape & LOSO);
		%feature("autodoc", "1");
		void GSOBUMakeSolids(const TopoDS_Shape &SOF, TopOpeBRepBuild_SolidBuilder & SOBU, TopTools_ListOfShape & LOSO);
		%feature("autodoc", "1");
		virtual		void GWESMakeFaces(const TopoDS_Shape &FF, TopOpeBRepBuild_WireEdgeSet & WES, TopTools_ListOfShape & LOF);
		%feature("autodoc", "1");
		void GFABUMakeFaces(const TopoDS_Shape &FF, TopOpeBRepBuild_FaceBuilder & FABU, TopTools_ListOfShape & LOF, TopTools_DataMapOfShapeInteger & MWisOld);
		%feature("autodoc", "1");
		void RegularizeFaces(const TopoDS_Shape &FF, const TopTools_ListOfShape &lnewFace, TopTools_ListOfShape & LOF);
		%feature("autodoc", "1");
		void RegularizeFace(const TopoDS_Shape &FF, const TopoDS_Shape &newFace, TopTools_ListOfShape & LOF);
		%feature("autodoc", "1");
		void RegularizeSolids(const TopoDS_Shape &SS, const TopTools_ListOfShape &lnewSolid, TopTools_ListOfShape & LOS);
		%feature("autodoc", "1");
		void RegularizeSolid(const TopoDS_Shape &SS, const TopoDS_Shape &newSolid, TopTools_ListOfShape & LOS);
		%feature("autodoc", "1");
		void GPVSMakeEdges(const TopoDS_Shape &EF, TopOpeBRepBuild_PaveSet & PVS, TopTools_ListOfShape & LOE) const;
		%feature("autodoc", "1");
		void GEDBUMakeEdges(const TopoDS_Shape &EF, TopOpeBRepBuild_EdgeBuilder & EDBU, TopTools_ListOfShape & LOE) const;
		%feature("autodoc", "1");
		Standard_Boolean GToSplit(const TopoDS_Shape &S, const TopAbs_State TB) const;
		%feature("autodoc", "1");
		Standard_Boolean GToMerge(const TopoDS_Shape &S) const;
		%feature("autodoc", "1");
		Standard_Boolean GTakeCommonOfSame(const TopOpeBRepBuild_GTopo &G);
		%feature("autodoc", "1");
		Standard_Boolean GTakeCommonOfDiff(const TopOpeBRepBuild_GTopo &G);
		%feature("autodoc", "1");
		void GFindSamDom(const TopoDS_Shape &S, TopTools_ListOfShape & L1, TopTools_ListOfShape & L2) const;
		%feature("autodoc", "1");
		void GFindSamDom(TopTools_ListOfShape & L1, TopTools_ListOfShape & L2) const;
		%feature("autodoc", "1");
		void GFindSamDomSODO(const TopoDS_Shape &S, TopTools_ListOfShape & LSO, TopTools_ListOfShape & LDO) const;
		%feature("autodoc", "1");
		void GFindSamDomSODO(TopTools_ListOfShape & LSO, TopTools_ListOfShape & LDO) const;
		%feature("autodoc", "1");
		void GMapShapes(const TopoDS_Shape &S1, const TopoDS_Shape &S2);
		%feature("autodoc", "1");
		void GClearMaps();
		%feature("autodoc", "1");
		void GFindSameRank(const TopTools_ListOfShape &L1, const Standard_Integer R, TopTools_ListOfShape & L2) const;
		%feature("autodoc", "1");
		Standard_Integer GShapeRank(const TopoDS_Shape &S) const;
		%feature("autodoc", "1");
		Standard_Boolean GIsShapeOf(const TopoDS_Shape &S, const Standard_Integer I12) const;
		%feature("autodoc", "1");
		Standard_Boolean GContains(const TopoDS_Shape &S, const TopTools_ListOfShape &L);
		%feature("autodoc", "1");
		void GCopyList(const TopTools_ListOfShape &Lin, const Standard_Integer i1, const Standard_Integer i2, TopTools_ListOfShape & Lou);
		%feature("autodoc", "1");
		void GCopyList(const TopTools_ListOfShape &Lin, TopTools_ListOfShape & Lou);
		%feature("autodoc", "1");
		void GdumpLS(const TopTools_ListOfShape &L) const;
		%feature("autodoc", "1");
		void GdumpPNT(const gp_Pnt &P);
		%feature("autodoc", "1");
		void GdumpORIPARPNT(const TopAbs_Orientation o, const Standard_Real p, const gp_Pnt &Pnt);
		%feature("autodoc", "1");
		void GdumpSHA(const TopoDS_Shape &S, const Standard_Address str=0) const;
		%feature("autodoc", "1");
		void GdumpSHAORI(const TopoDS_Shape &S, const Standard_Address str=0) const;
		%feature("autodoc", "1");
		void GdumpSHAORIGEO(const TopoDS_Shape &S, const Standard_Address str=0) const;
		%feature("autodoc", "1");
		void GdumpSHASTA(const Standard_Integer iS, const TopAbs_State T, const TCollection_AsciiString &a="", const TCollection_AsciiString &b="") const;
		%feature("autodoc", "1");
		void GdumpSHASTA(const TopoDS_Shape &S, const TopAbs_State T, const TCollection_AsciiString &a="", const TCollection_AsciiString &b="") const;
		%feature("autodoc", "1");
		void GdumpSHASTA(const Standard_Integer iS, const TopAbs_State T, const TopOpeBRepBuild_ShapeSet &SS, const TCollection_AsciiString &a="", const TCollection_AsciiString &b="", const TCollection_AsciiString &c="\012") const;
		%feature("autodoc", "1");
		void GdumpEDG(const TopoDS_Shape &S, const Standard_Address str=0) const;
		%feature("autodoc", "1");
		void GdumpEDGVER(const TopoDS_Shape &E, const TopoDS_Shape &V, const Standard_Address str=0) const;
		%feature("autodoc", "1");
		void GdumpSAMDOM(const TopTools_ListOfShape &L, const Standard_Address str=0) const;
		%feature("autodoc", "1");
		void GdumpEXP(const TopOpeBRepTool_ShapeExplorer &E) const;
		%feature("autodoc", "1");
		void GdumpSOBU(TopOpeBRepBuild_SolidBuilder & SB) const;
		%feature("autodoc", "1");
		void GdumpFABU(TopOpeBRepBuild_FaceBuilder & FB) const;
		%feature("autodoc", "1");
		void GdumpEDBU(TopOpeBRepBuild_EdgeBuilder & EB) const;
		%feature("autodoc", "1");
		Standard_Boolean GtraceSPS(const Standard_Integer iS) const;
		%feature("autodoc", "1");
		Standard_Boolean GtraceSPS(const Standard_Integer iS, const Standard_Integer jS) const;
		%feature("autodoc", "1");
		Standard_Boolean GtraceSPS(const TopoDS_Shape &S) const;
		%feature("autodoc", "1");
		Standard_Boolean GtraceSPS(const TopoDS_Shape &S, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		void GdumpSHASETreset();
		%feature("autodoc", "1");
		Standard_Integer GdumpSHASETindex();
		%feature("autodoc", "1");
		void PrintGeo(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		void PrintSur(const TopoDS_Face &F);
		%feature("autodoc", "1");
		void PrintCur(const TopoDS_Edge &E);
		%feature("autodoc", "1");
		void PrintPnt(const TopoDS_Vertex &V);
		%feature("autodoc", "1");
		void PrintOri(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		TCollection_AsciiString StringState(const TopAbs_State S);
		%feature("autodoc", "1");
		Standard_Boolean GcheckNBOUNDS(const TopoDS_Shape &E);

};
%extend TopOpeBRepBuild_Builder {
	~TopOpeBRepBuild_Builder() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TopOpeBRepBuild_Builder\n");}
	}
};

%nodefaultctor TopOpeBRepBuild_Builder1;
class TopOpeBRepBuild_Builder1 : public TopOpeBRepBuild_Builder {
	public:
		%feature("autodoc", "1");
		TopOpeBRepBuild_Builder1(const TopOpeBRepDS_BuildTool &BT);
		%feature("autodoc", "1");
		void GFillFaceNotSameDomSFS(const TopoDS_Shape &F1, const TopTools_ListOfShape &LSO2, const TopOpeBRepBuild_GTopo &G, TopOpeBRepBuild_ShellFaceSet & SFS);
		%feature("autodoc", "1");
		void GFillFaceNotSameDomWES(const TopoDS_Shape &F1, const TopTools_ListOfShape &LSO2, const TopOpeBRepBuild_GTopo &G, TopOpeBRepBuild_WireEdgeSet & WES);
		%feature("autodoc", "1");
		void GFillWireNotSameDomWES(const TopoDS_Shape &W1, const TopTools_ListOfShape &LSO2, const TopOpeBRepBuild_GTopo &G, TopOpeBRepBuild_WireEdgeSet & WES);
		%feature("autodoc", "1");
		void GFillEdgeNotSameDomWES(const TopoDS_Shape &E1, const TopTools_ListOfShape &LSO2, const TopOpeBRepBuild_GTopo &G, TopOpeBRepBuild_WireEdgeSet & WES);
		%feature("autodoc", "1");
		void GFillFaceSameDomSFS(const TopoDS_Shape &F1, const TopTools_ListOfShape &LSO2, const TopOpeBRepBuild_GTopo &G, TopOpeBRepBuild_ShellFaceSet & SFS);
		%feature("autodoc", "1");
		void GFillFaceSameDomWES(const TopoDS_Shape &F1, const TopTools_ListOfShape &LSO2, const TopOpeBRepBuild_GTopo &G, TopOpeBRepBuild_WireEdgeSet & WES);
		%feature("autodoc", "1");
		void GFillWireSameDomWES(const TopoDS_Shape &W1, const TopTools_ListOfShape &LSO2, const TopOpeBRepBuild_GTopo &G, TopOpeBRepBuild_WireEdgeSet & WES);
		%feature("autodoc", "1");
		void GFillEdgeSameDomWES(const TopoDS_Shape &E1, const TopTools_ListOfShape &LSO2, const TopOpeBRepBuild_GTopo &G, TopOpeBRepBuild_WireEdgeSet & WES);
		%feature("autodoc", "1");
		void PerformONParts(const TopoDS_Shape &F, const TopTools_IndexedMapOfShape &SDfaces, const TopOpeBRepBuild_GTopo &G, TopOpeBRepBuild_WireEdgeSet & WES);
		%feature("autodoc", "1");
		void PerformPieceIn2D(const TopoDS_Edge &aPieceToPerform, const TopoDS_Edge &aOriginalEdge, const TopoDS_Face &edgeFace, const TopoDS_Face &toFace, const TopOpeBRepBuild_GTopo &G, Standard_Boolean & keep);
		%feature("autodoc", "1");
		Standard_Integer PerformPieceOn2D(const TopoDS_Shape &aPieceObj, const TopoDS_Shape &aFaceObj, const TopoDS_Shape &aEdgeObj, TopTools_ListOfShape & aListOfPieces, TopTools_ListOfShape & aListOfFaces, TopTools_ListOfShape & aListOfPiecesOut2d);
		%feature("autodoc", "1");
		Standard_Integer TwoPiecesON(const TopTools_SequenceOfShape &aSeq, TopTools_ListOfShape & aListOfPieces, TopTools_ListOfShape & aListOfFaces, TopTools_ListOfShape & aListOfPiecesOut2d);
		%feature("autodoc", "1");
		Standard_Integer CorrectResult2d(TopoDS_Shape & aResult);

};
%extend TopOpeBRepBuild_Builder1 {
	~TopOpeBRepBuild_Builder1() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TopOpeBRepBuild_Builder1\n");}
	}
};

%nodefaultctor TopOpeBRepBuild_DataMapOfShapeInteger;
class TopOpeBRepBuild_DataMapOfShapeInteger : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TopOpeBRepBuild_DataMapOfShapeInteger(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TopOpeBRepBuild_DataMapOfShapeInteger & Assign(const TopOpeBRepBuild_DataMapOfShapeInteger &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TopoDS_Shape &K, const Standard_Integer &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TopoDS_Shape &K);
		%feature("autodoc", "1");
		const Standard_Integer & Find(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		const Standard_Integer & operator()(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		Standard_Integer & ChangeFind(const TopoDS_Shape &K);
		%feature("autodoc", "1");
		Standard_Integer & operator()(const TopoDS_Shape &K);

};
%extend TopOpeBRepBuild_DataMapOfShapeInteger {
	~TopOpeBRepBuild_DataMapOfShapeInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TopOpeBRepBuild_DataMapOfShapeInteger\n");}
	}
};

%nodefaultctor TopOpeBRepBuild_GTopo;
class TopOpeBRepBuild_GTopo {
	public:
		%feature("autodoc", "1");
		TopOpeBRepBuild_GTopo();
		%feature("autodoc", "1");
		TopOpeBRepBuild_GTopo(const Standard_Integer II, const Standard_Integer IN, const Standard_Integer IO, const Standard_Integer NI, const Standard_Integer NN, const Standard_Integer NO, const Standard_Integer OI, const Standard_Integer ON, const Standard_Integer OO, const TopAbs_ShapeEnum t1, const TopAbs_ShapeEnum t2, const TopOpeBRepDS_Config C1, const TopOpeBRepDS_Config C2);
		%feature("autodoc", "1");
		void Reset();
		%feature("autodoc", "1");
		void Set(const Standard_Boolean II, const Standard_Boolean IN, const Standard_Boolean IO, const Standard_Boolean NI, const Standard_Boolean NN, const Standard_Boolean NO, const Standard_Boolean OI, const Standard_Boolean ON, const Standard_Boolean OO);
		%feature("autodoc", "1");
		void Type(TopAbs_ShapeEnum & t1, TopAbs_ShapeEnum & t2) const;
		%feature("autodoc", "1");
		void ChangeType(const TopAbs_ShapeEnum t1, const TopAbs_ShapeEnum t2);
		%feature("autodoc", "1");
		TopOpeBRepDS_Config Config1() const;
		%feature("autodoc", "1");
		TopOpeBRepDS_Config Config2() const;
		%feature("autodoc", "1");
		void ChangeConfig(const TopOpeBRepDS_Config C1, const TopOpeBRepDS_Config C2);
		%feature("autodoc", "1");
		Standard_Boolean Value(const TopAbs_State s1, const TopAbs_State s2) const;
		%feature("autodoc", "1");
		Standard_Boolean Value(const Standard_Integer I1, const Standard_Integer I2) const;
		%feature("autodoc", "1");
		Standard_Boolean Value(const Standard_Integer II) const;
		%feature("autodoc", "1");
		void ChangeValue(const Standard_Integer i1, const Standard_Integer i2, const Standard_Boolean b);
		%feature("autodoc", "1");
		void ChangeValue(const TopAbs_State s1, const TopAbs_State s2, const Standard_Boolean b);
		%feature("autodoc", "1");
		Standard_Integer GIndex(const TopAbs_State S) const;
		%feature("autodoc", "1");
		TopAbs_State GState(const Standard_Integer I) const;
		%feature("autodoc", "1");
		void Index(const Standard_Integer II, Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		void DumpVal(Standard_OStream & OS, const TopAbs_State s1, const TopAbs_State s2) const;
		%feature("autodoc", "1");
		void DumpType(Standard_OStream & OS) const;
		%feature("autodoc", "1");
		void DumpSSB(Standard_OStream & OS, const TopAbs_State s1, const TopAbs_State s2, const Standard_Boolean b);
		%feature("autodoc", "1");
		virtual		void Dump(Standard_OStream & OS, const Standard_Address s=0) const;
		%feature("autodoc", "1");
		void StatesON(TopAbs_State & s1, TopAbs_State & s2) const;
		%feature("autodoc", "1");
		Standard_Boolean IsToReverse1() const;
		%feature("autodoc", "1");
		Standard_Boolean IsToReverse2() const;
		%feature("autodoc", "1");
		void SetReverse(const Standard_Boolean rev);
		%feature("autodoc", "1");
		Standard_Boolean Reverse() const;
		%feature("autodoc", "1");
		TopOpeBRepBuild_GTopo CopyPermuted() const;

};
%extend TopOpeBRepBuild_GTopo {
	~TopOpeBRepBuild_GTopo() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TopOpeBRepBuild_GTopo\n");}
	}
};

%nodefaultctor TopOpeBRepBuild_HBuilder;
class TopOpeBRepBuild_HBuilder : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TopOpeBRepBuild_HBuilder(const TopOpeBRepDS_BuildTool &BT);
		%feature("autodoc", "1");
		const TopOpeBRepDS_BuildTool & BuildTool() const;
		%feature("autodoc", "1");
		void Perform(const Handle_TopOpeBRepDS_HDataStructure &HDS);
		%feature("autodoc", "1");
		void Perform(const Handle_TopOpeBRepDS_HDataStructure &HDS, const TopoDS_Shape &S1, const TopoDS_Shape &S2);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_HDataStructure DataStructure() const;
		%feature("autodoc", "1");
		TopOpeBRepDS_BuildTool & ChangeBuildTool();
		%feature("autodoc", "1");
		void MergeShapes(const TopoDS_Shape &S1, const TopAbs_State TB1, const TopoDS_Shape &S2, const TopAbs_State TB2);
		%feature("autodoc", "1");
		void MergeSolids(const TopoDS_Shape &S1, const TopAbs_State TB1, const TopoDS_Shape &S2, const TopAbs_State TB2);
		%feature("autodoc", "1");
		void MergeSolid(const TopoDS_Shape &S, const TopAbs_State TB);
		%feature("autodoc", "1");
		Standard_Boolean IsSplit(const TopoDS_Shape &S, const TopAbs_State ToBuild) const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Splits(const TopoDS_Shape &S, const TopAbs_State ToBuild) const;
		%feature("autodoc", "1");
		Standard_Boolean IsMerged(const TopoDS_Shape &S, const TopAbs_State ToBuild) const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Merged(const TopoDS_Shape &S, const TopAbs_State ToBuild) const;
		%feature("autodoc", "1");
		const TopoDS_Shape & NewVertex(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & NewEdges(const Standard_Integer I) const;
		%feature("autodoc", "1");
		TopTools_ListOfShape & ChangeNewEdges(const Standard_Integer I);
		%feature("autodoc", "1");
		const TopTools_ListOfShape & NewFaces(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Section();
		%feature("autodoc", "1");
		void InitExtendedSectionDS(const Standard_Integer k=3);
		%feature("autodoc", "1");
		void InitSection(const Standard_Integer k=3);
		%feature("autodoc", "1");
		Standard_Boolean MoreSection() const;
		%feature("autodoc", "1");
		void NextSection();
		%feature("autodoc", "1");
		const TopoDS_Shape & CurrentSection() const;
		%feature("autodoc", "1");
		Standard_Integer GetDSEdgeFromSectEdge(const TopoDS_Shape &E, const Standard_Integer rank);
		%feature("autodoc", "1");
		TColStd_ListOfInteger & GetDSFaceFromDSEdge(const Standard_Integer indexEdg, const Standard_Integer rank);
		%feature("autodoc", "1");
		Standard_Integer GetDSCurveFromSectEdge(const TopoDS_Shape &SectEdge);
		%feature("autodoc", "1");
		Standard_Integer GetDSFaceFromDSCurve(const Standard_Integer indexCur, const Standard_Integer rank);
		%feature("autodoc", "1");
		Standard_Integer GetDSPointFromNewVertex(const TopoDS_Shape &NewVert);
		%feature("autodoc", "1");
		Standard_Boolean EdgeCurveAncestors(const TopoDS_Shape &E, TopoDS_Shape & F1, TopoDS_Shape & F2, Standard_Integer &OutValue);
		%feature("autodoc", "1");
		Standard_Boolean EdgeSectionAncestors(const TopoDS_Shape &E, TopTools_ListOfShape & LF1, TopTools_ListOfShape & LF2, TopTools_ListOfShape & LE1, TopTools_ListOfShape & LE2);
		%feature("autodoc", "1");
		Standard_Integer IsKPart();
		%feature("autodoc", "1");
		void MergeKPart(const TopAbs_State TB1, const TopAbs_State TB2);
		%feature("autodoc", "1");
		TopOpeBRepBuild_Builder & ChangeBuilder();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TopOpeBRepBuild_HBuilder {
	Handle_TopOpeBRepBuild_HBuilder GetHandle() {
	return *(Handle_TopOpeBRepBuild_HBuilder*) &$self;
	}
};
%extend TopOpeBRepBuild_HBuilder {
	Standard_Integer __hash__() {
	return $self->HashCode(LONG_MAX);
	}
};
%extend TopOpeBRepBuild_HBuilder {
	~TopOpeBRepBuild_HBuilder() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TopOpeBRepBuild_HBuilder\n");}
	}
};

%nodefaultctor TopOpeBRepBuild_PaveSet;
class TopOpeBRepBuild_PaveSet : public TopOpeBRepBuild_LoopSet {
	public:
		%feature("autodoc", "1");
		TopOpeBRepBuild_PaveSet(const TopoDS_Shape &E);
		%feature("autodoc", "1");
		void RemovePV(const Standard_Boolean B);
		%feature("autodoc", "1");
		void Append(const Handle_TopOpeBRepBuild_Pave &PV);
		%feature("autodoc", "1");
		virtual		void InitLoop();
		%feature("autodoc", "1");
		virtual		Standard_Boolean MoreLoop() const;
		%feature("autodoc", "1");
		virtual		void NextLoop();
		%feature("autodoc", "1");
		virtual		const Handle_TopOpeBRepBuild_Loop & Loop() const;
		%feature("autodoc", "1");
		const TopoDS_Edge & Edge() const;
		%feature("autodoc", "1");
		Standard_Boolean HasEqualParameters();
		%feature("autodoc", "1");
		Standard_Real EqualParameters() const;
		%feature("autodoc", "1");
		Standard_Boolean ClosedVertices();
		%feature("autodoc", "1");
		void SortPave(const TopOpeBRepBuild_ListOfPave &Lin, TopOpeBRepBuild_ListOfPave & Lout);

};
%extend TopOpeBRepBuild_PaveSet {
	~TopOpeBRepBuild_PaveSet() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TopOpeBRepBuild_PaveSet\n");}
	}
};

%nodefaultctor TopOpeBRepBuild_ShellFaceClassifier;
class TopOpeBRepBuild_ShellFaceClassifier : public TopOpeBRepBuild_CompositeClassifier {
	public:
		%feature("autodoc", "1");
		TopOpeBRepBuild_ShellFaceClassifier(const TopOpeBRepBuild_BlockBuilder &BB);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		virtual		TopAbs_State CompareShapes(const TopoDS_Shape &B1, const TopoDS_Shape &B2);
		%feature("autodoc", "1");
		virtual		TopAbs_State CompareElementToShape(const TopoDS_Shape &F, const TopoDS_Shape &S);
		%feature("autodoc", "1");
		virtual		void ResetShape(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		virtual		void ResetElement(const TopoDS_Shape &F);
		%feature("autodoc", "1");
		virtual		void CompareElement(const TopoDS_Shape &F);
		%feature("autodoc", "1");
		virtual		TopAbs_State State();

};
%extend TopOpeBRepBuild_ShellFaceClassifier {
	~TopOpeBRepBuild_ShellFaceClassifier() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TopOpeBRepBuild_ShellFaceClassifier\n");}
	}
};

%nodefaultctor TopOpeBRepBuild_EdgeBuilder;
class TopOpeBRepBuild_EdgeBuilder : public TopOpeBRepBuild_Area1dBuilder {
	public:
		%feature("autodoc", "1");
		TopOpeBRepBuild_EdgeBuilder();
		%feature("autodoc", "1");
		TopOpeBRepBuild_EdgeBuilder(TopOpeBRepBuild_PaveSet & LS, TopOpeBRepBuild_PaveClassifier & LC, const Standard_Boolean ForceClass=0);
		%feature("autodoc", "1");
		void InitEdgeBuilder(TopOpeBRepBuild_LoopSet & LS, TopOpeBRepBuild_LoopClassifier & LC, const Standard_Boolean ForceClass=0);
		%feature("autodoc", "1");
		void InitEdge();
		%feature("autodoc", "1");
		Standard_Boolean MoreEdge() const;
		%feature("autodoc", "1");
		void NextEdge();
		%feature("autodoc", "1");
		void InitVertex();
		%feature("autodoc", "1");
		Standard_Boolean MoreVertex() const;
		%feature("autodoc", "1");
		void NextVertex();
		%feature("autodoc", "1");
		const TopoDS_Shape & Vertex() const;
		%feature("autodoc", "1");
		Standard_Real Parameter() const;

};
%extend TopOpeBRepBuild_EdgeBuilder {
	~TopOpeBRepBuild_EdgeBuilder() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TopOpeBRepBuild_EdgeBuilder\n");}
	}
};

%nodefaultctor TopOpeBRepBuild_ListIteratorOfListOfListOfLoop;
class TopOpeBRepBuild_ListIteratorOfListOfListOfLoop {
	public:
		%feature("autodoc", "1");
		TopOpeBRepBuild_ListIteratorOfListOfListOfLoop();
		%feature("autodoc", "1");
		TopOpeBRepBuild_ListIteratorOfListOfListOfLoop(const TopOpeBRepBuild_ListOfListOfLoop &L);
		%feature("autodoc", "1");
		void Initialize(const TopOpeBRepBuild_ListOfListOfLoop &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		TopOpeBRepBuild_ListOfLoop & Value() const;

};
%extend TopOpeBRepBuild_ListIteratorOfListOfListOfLoop {
	~TopOpeBRepBuild_ListIteratorOfListOfListOfLoop() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TopOpeBRepBuild_ListIteratorOfListOfListOfLoop\n");}
	}
};

%nodefaultctor TopOpeBRepBuild_DataMapIteratorOfDataMapOfShapeInteger;
class TopOpeBRepBuild_DataMapIteratorOfDataMapOfShapeInteger : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		TopOpeBRepBuild_DataMapIteratorOfDataMapOfShapeInteger();
		%feature("autodoc", "1");
		TopOpeBRepBuild_DataMapIteratorOfDataMapOfShapeInteger(const TopOpeBRepBuild_DataMapOfShapeInteger &aMap);
		%feature("autodoc", "1");
		void Initialize(const TopOpeBRepBuild_DataMapOfShapeInteger &aMap);
		%feature("autodoc", "1");
		const TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		const Standard_Integer & Value() const;

};
%extend TopOpeBRepBuild_DataMapIteratorOfDataMapOfShapeInteger {
	~TopOpeBRepBuild_DataMapIteratorOfDataMapOfShapeInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TopOpeBRepBuild_DataMapIteratorOfDataMapOfShapeInteger\n");}
	}
};

%nodefaultctor TopOpeBRepBuild_IndexedDataMapNodeOfIndexedDataMapOfShapeVertexInfo;
class TopOpeBRepBuild_IndexedDataMapNodeOfIndexedDataMapOfShapeVertexInfo : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TopOpeBRepBuild_IndexedDataMapNodeOfIndexedDataMapOfShapeVertexInfo(const TopoDS_Shape &K1, const Standard_Integer K2, const TopOpeBRepBuild_VertexInfo &I, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
		%feature("autodoc", "1");
		TopoDS_Shape & Key1() const;
		%feature("autodoc", "1");
		Standard_Integer & Key2() const;
		%feature("autodoc", "1");
		TCollection_MapNodePtr & Next2() const;
		%feature("autodoc", "1");
		TopOpeBRepBuild_VertexInfo & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TopOpeBRepBuild_IndexedDataMapNodeOfIndexedDataMapOfShapeVertexInfo {
	Handle_TopOpeBRepBuild_IndexedDataMapNodeOfIndexedDataMapOfShapeVertexInfo GetHandle() {
	return *(Handle_TopOpeBRepBuild_IndexedDataMapNodeOfIndexedDataMapOfShapeVertexInfo*) &$self;
	}
};
%extend TopOpeBRepBuild_IndexedDataMapNodeOfIndexedDataMapOfShapeVertexInfo {
	Standard_Integer __hash__() {
	return $self->HashCode(LONG_MAX);
	}
};
%extend TopOpeBRepBuild_IndexedDataMapNodeOfIndexedDataMapOfShapeVertexInfo {
	~TopOpeBRepBuild_IndexedDataMapNodeOfIndexedDataMapOfShapeVertexInfo() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TopOpeBRepBuild_IndexedDataMapNodeOfIndexedDataMapOfShapeVertexInfo\n");}
	}
};

%nodefaultctor TopOpeBRepBuild_ListNodeOfListOfShapeListOfShape;
class TopOpeBRepBuild_ListNodeOfListOfShapeListOfShape : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TopOpeBRepBuild_ListNodeOfListOfShapeListOfShape(const TopOpeBRepBuild_ShapeListOfShape &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopOpeBRepBuild_ShapeListOfShape & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TopOpeBRepBuild_ListNodeOfListOfShapeListOfShape {
	Handle_TopOpeBRepBuild_ListNodeOfListOfShapeListOfShape GetHandle() {
	return *(Handle_TopOpeBRepBuild_ListNodeOfListOfShapeListOfShape*) &$self;
	}
};
%extend TopOpeBRepBuild_ListNodeOfListOfShapeListOfShape {
	Standard_Integer __hash__() {
	return $self->HashCode(LONG_MAX);
	}
};
%extend TopOpeBRepBuild_ListNodeOfListOfShapeListOfShape {
	~TopOpeBRepBuild_ListNodeOfListOfShapeListOfShape() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TopOpeBRepBuild_ListNodeOfListOfShapeListOfShape\n");}
	}
};

%nodefaultctor TopOpeBRepBuild_ShapeSet;
class TopOpeBRepBuild_ShapeSet {
	public:
		%feature("autodoc", "1");
		TopOpeBRepBuild_ShapeSet(const TopAbs_ShapeEnum SubShapeType, const Standard_Boolean checkshape=1);
		%feature("autodoc", "1");
		virtual		void Delete();
		%feature("autodoc", "1");
		virtual		void AddShape(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		virtual		void AddStartElement(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		virtual		void AddElement(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		const TopTools_ListOfShape & StartElements() const;
		%feature("autodoc", "1");
		void InitShapes();
		%feature("autodoc", "1");
		Standard_Boolean MoreShapes() const;
		%feature("autodoc", "1");
		void NextShape();
		%feature("autodoc", "1");
		const TopoDS_Shape & Shape() const;
		%feature("autodoc", "1");
		void InitStartElements();
		%feature("autodoc", "1");
		Standard_Boolean MoreStartElements() const;
		%feature("autodoc", "1");
		void NextStartElement();
		%feature("autodoc", "1");
		const TopoDS_Shape & StartElement() const;
		%feature("autodoc", "1");
		virtual		void InitNeighbours(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		Standard_Boolean MoreNeighbours();
		%feature("autodoc", "1");
		void NextNeighbour();
		%feature("autodoc", "1");
		const TopoDS_Shape & Neighbour() const;
		%feature("autodoc", "1");
		TopTools_ListOfShape & ChangeStartShapes();
		%feature("autodoc", "1");
		Standard_Boolean IsStartElement(const TopoDS_Shape &S) const;
		%feature("autodoc", "1");
		Standard_Boolean IsElement(const TopoDS_Shape &S) const;
		%feature("autodoc", "1");
		Standard_Boolean IsShape(const TopoDS_Shape &S) const;
		%feature("autodoc", "1");
		Standard_Integer NStartElement(const TopoDS_Shape &S) const;
		%feature("autodoc", "1");
		Standard_Integer NElement(const TopoDS_Shape &S) const;
		%feature("autodoc", "1");
		Standard_Integer NShape(const TopoDS_Shape &S) const;
		%feature("autodoc", "1");
		virtual		void FindNeighbours();
		%feature("autodoc", "1");
		virtual		const TopTools_ListOfShape & MakeNeighboursList(const TopoDS_Shape &E, const TopoDS_Shape &V);
		%feature("autodoc", "1");
		Standard_Integer MaxNumberSubShape(const TopoDS_Shape &Shape);
		%feature("autodoc", "1");
		void CheckShape(const Standard_Boolean checkshape);
		%feature("autodoc", "1");
		Standard_Boolean CheckShape() const;
		%feature("autodoc", "1");
		Standard_Boolean CheckShape(const TopoDS_Shape &S, const Standard_Boolean checkgeom=0);
		%feature("autodoc", "1");
		void DumpName(Standard_OStream & OS, const TCollection_AsciiString &str) const;
		%feature("autodoc", "1");
		void DumpCheck(Standard_OStream & OS, const TCollection_AsciiString &str, const TopoDS_Shape &S, const Standard_Boolean chk) const;
		%feature("autodoc", "1");
		virtual		void DumpSS();
		%feature("autodoc", "1");
		virtual		void DumpBB();
		%feature("autodoc", "1");
		void DEBName(const TCollection_AsciiString &N);
		%feature("autodoc", "1");
		const TCollection_AsciiString & DEBName() const;
		%feature("autodoc", "1");
		void DEBNumber(const Standard_Integer I);
		%feature("autodoc", "1");
		Standard_Integer DEBNumber() const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString SName(const TopoDS_Shape &S, const TCollection_AsciiString &sb="", const TCollection_AsciiString &sa="") const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString SNameori(const TopoDS_Shape &S, const TCollection_AsciiString &sb="", const TCollection_AsciiString &sa="") const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString SName(const TopTools_ListOfShape &S, const TCollection_AsciiString &sb="", const TCollection_AsciiString &sa="") const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString SNameori(const TopTools_ListOfShape &S, const TCollection_AsciiString &sb="", const TCollection_AsciiString &sa="") const;

};
%extend TopOpeBRepBuild_ShapeSet {
	~TopOpeBRepBuild_ShapeSet() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TopOpeBRepBuild_ShapeSet\n");}
	}
};

%nodefaultctor TopOpeBRepBuild_ShellFaceSet;
class TopOpeBRepBuild_ShellFaceSet : public TopOpeBRepBuild_ShapeSet {
	public:
		%feature("autodoc", "1");
		TopOpeBRepBuild_ShellFaceSet();
		%feature("autodoc", "1");
		TopOpeBRepBuild_ShellFaceSet(const TopoDS_Shape &S, const Standard_Address Addr=0);
		%feature("autodoc", "1");
		const TopoDS_Solid & Solid() const;

};
%extend TopOpeBRepBuild_ShellFaceSet {
	~TopOpeBRepBuild_ShellFaceSet() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TopOpeBRepBuild_ShellFaceSet\n");}
	}
};

%nodefaultctor TopOpeBRepBuild_DataMapNodeOfDataMapOfShapeListOfShapeListOfShape;
class TopOpeBRepBuild_DataMapNodeOfDataMapOfShapeListOfShapeListOfShape : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TopOpeBRepBuild_DataMapNodeOfDataMapOfShapeListOfShapeListOfShape(const TopoDS_Shape &K, const TopOpeBRepBuild_ListOfShapeListOfShape &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		TopOpeBRepBuild_ListOfShapeListOfShape & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TopOpeBRepBuild_DataMapNodeOfDataMapOfShapeListOfShapeListOfShape {
	Handle_TopOpeBRepBuild_DataMapNodeOfDataMapOfShapeListOfShapeListOfShape GetHandle() {
	return *(Handle_TopOpeBRepBuild_DataMapNodeOfDataMapOfShapeListOfShapeListOfShape*) &$self;
	}
};
%extend TopOpeBRepBuild_DataMapNodeOfDataMapOfShapeListOfShapeListOfShape {
	Standard_Integer __hash__() {
	return $self->HashCode(LONG_MAX);
	}
};
%extend TopOpeBRepBuild_DataMapNodeOfDataMapOfShapeListOfShapeListOfShape {
	~TopOpeBRepBuild_DataMapNodeOfDataMapOfShapeListOfShapeListOfShape() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TopOpeBRepBuild_DataMapNodeOfDataMapOfShapeListOfShapeListOfShape\n");}
	}
};

%nodefaultctor TopOpeBRepBuild_GIter;
class TopOpeBRepBuild_GIter {
	public:
		%feature("autodoc", "1");
		TopOpeBRepBuild_GIter();
		%feature("autodoc", "1");
		TopOpeBRepBuild_GIter(const TopOpeBRepBuild_GTopo &G);
		%feature("autodoc", "1");
		void Init();
		%feature("autodoc", "1");
		void Init(const TopOpeBRepBuild_GTopo &G);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		void Current(TopAbs_State & s1, TopAbs_State & s2) const;
		%feature("autodoc", "1");
		void Dump(Standard_OStream & OS) const;

};
%extend TopOpeBRepBuild_GIter {
	~TopOpeBRepBuild_GIter() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TopOpeBRepBuild_GIter\n");}
	}
};

%nodefaultctor TopOpeBRepBuild_DataMapNodeOfDataMapOfShapeReal;
class TopOpeBRepBuild_DataMapNodeOfDataMapOfShapeReal : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TopOpeBRepBuild_DataMapNodeOfDataMapOfShapeReal(const TopoDS_Shape &K, const Standard_Real &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		Standard_Real & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TopOpeBRepBuild_DataMapNodeOfDataMapOfShapeReal {
	Handle_TopOpeBRepBuild_DataMapNodeOfDataMapOfShapeReal GetHandle() {
	return *(Handle_TopOpeBRepBuild_DataMapNodeOfDataMapOfShapeReal*) &$self;
	}
};
%extend TopOpeBRepBuild_DataMapNodeOfDataMapOfShapeReal {
	Standard_Integer __hash__() {
	return $self->HashCode(LONG_MAX);
	}
};
%extend TopOpeBRepBuild_DataMapNodeOfDataMapOfShapeReal {
	~TopOpeBRepBuild_DataMapNodeOfDataMapOfShapeReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TopOpeBRepBuild_DataMapNodeOfDataMapOfShapeReal\n");}
	}
};

%nodefaultctor TopOpeBRepBuild_BuilderON;
class TopOpeBRepBuild_BuilderON {
	public:
		%feature("autodoc", "1");
		TopOpeBRepBuild_BuilderON();
		%feature("autodoc", "1");
		TopOpeBRepBuild_BuilderON(const TopOpeBRepBuild_PBuilder &PB, const TopoDS_Shape &F, const TopOpeBRepBuild_PGTopo &PG, const TopOpeBRepTool_Plos &PLSclass, const TopOpeBRepBuild_PWireEdgeSet &PWES);
		%feature("autodoc", "1");
		void Perform(const TopOpeBRepBuild_PBuilder &PB, const TopoDS_Shape &F, const TopOpeBRepBuild_PGTopo &PG, const TopOpeBRepTool_Plos &PLSclass, const TopOpeBRepBuild_PWireEdgeSet &PWES);
		%feature("autodoc", "1");
		Standard_Boolean GFillONCheckI(const Handle_TopOpeBRepDS_Interference &I) const;
		%feature("autodoc", "1");
		void GFillONPartsWES1(const Handle_TopOpeBRepDS_Interference &I);
		%feature("autodoc", "1");
		void GFillONPartsWES2(const Handle_TopOpeBRepDS_Interference &I, const TopoDS_Shape &EspON);
		%feature("autodoc", "1");
		void Perform2d(const TopOpeBRepBuild_PBuilder &PB, const TopoDS_Shape &F, const TopOpeBRepBuild_PGTopo &PG, const TopOpeBRepTool_Plos &PLSclass, const TopOpeBRepBuild_PWireEdgeSet &PWES);
		%feature("autodoc", "1");
		void GFillONParts2dWES2(const Handle_TopOpeBRepDS_Interference &I, const TopoDS_Shape &EspON);

};
%extend TopOpeBRepBuild_BuilderON {
	~TopOpeBRepBuild_BuilderON() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TopOpeBRepBuild_BuilderON\n");}
	}
};

%nodefaultctor TopOpeBRepBuild_SolidBuilder;
class TopOpeBRepBuild_SolidBuilder {
	public:
		%feature("autodoc", "1");
		TopOpeBRepBuild_SolidBuilder();
		%feature("autodoc", "1");
		TopOpeBRepBuild_SolidBuilder(TopOpeBRepBuild_ShellFaceSet & FS, const Standard_Boolean ForceClass=0);
		%feature("autodoc", "1");
		void InitSolidBuilder(TopOpeBRepBuild_ShellFaceSet & FS, const Standard_Boolean ForceClass);
		%feature("autodoc", "1");
		Standard_Integer InitSolid();
		%feature("autodoc", "1");
		Standard_Boolean MoreSolid() const;
		%feature("autodoc", "1");
		void NextSolid();
		%feature("autodoc", "1");
		Standard_Integer InitShell();
		%feature("autodoc", "1");
		Standard_Boolean MoreShell() const;
		%feature("autodoc", "1");
		void NextShell();
		%feature("autodoc", "1");
		Standard_Boolean IsOldShell() const;
		%feature("autodoc", "1");
		const TopoDS_Shape & OldShell() const;
		%feature("autodoc", "1");
		Standard_Integer InitFace();
		%feature("autodoc", "1");
		Standard_Boolean MoreFace() const;
		%feature("autodoc", "1");
		void NextFace();
		%feature("autodoc", "1");
		const TopoDS_Shape & Face() const;

};
%extend TopOpeBRepBuild_SolidBuilder {
	~TopOpeBRepBuild_SolidBuilder() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TopOpeBRepBuild_SolidBuilder\n");}
	}
};

%nodefaultctor TopOpeBRepBuild_Tools;
class TopOpeBRepBuild_Tools {
	public:
		%feature("autodoc", "1");
		TopOpeBRepBuild_Tools();
		%feature("autodoc", "1");
		void DumpMapOfShapeWithState(const Standard_Integer iP, const TopOpeBRepDS_IndexedDataMapOfShapeWithState &aMapOfShapeWithState);
		%feature("autodoc", "1");
		void FindState(const TopoDS_Shape &aVertex, const TopAbs_State aState, const TopAbs_ShapeEnum aShapeEnum, const TopTools_IndexedDataMapOfShapeListOfShape &aMapVertexEdges, TopTools_MapOfShape & aMapProcessedVertices, TopOpeBRepDS_DataMapOfShapeState & aMapVs);
		%feature("autodoc", "1");
		void PropagateState(const TopOpeBRepDS_DataMapOfShapeState &aSplEdgesState, const TopTools_IndexedMapOfShape &anEdgesToRestMap, const TopAbs_ShapeEnum aShapeEnum1, const TopAbs_ShapeEnum aShapeEnum2, TopOpeBRepTool_ShapeClassifier & aShapeClassifier, TopOpeBRepDS_IndexedDataMapOfShapeWithState & aMapOfShapeWithState, const TopTools_MapOfShape &anUnkStateShapes);
		%feature("autodoc", "1");
		TopAbs_State FindStateThroughVertex(const TopoDS_Shape &aShape, TopOpeBRepTool_ShapeClassifier & aShapeClassifier, TopOpeBRepDS_IndexedDataMapOfShapeWithState & aMapOfShapeWithState, const TopTools_MapOfShape &anAvoidSubshMap);
		%feature("autodoc", "1");
		void PropagateStateForWires(const TopTools_IndexedMapOfShape &aFacesToRestMap, TopOpeBRepDS_IndexedDataMapOfShapeWithState & aMapOfShapeWithState);
		%feature("autodoc", "1");
		void SpreadStateToChild(const TopoDS_Shape &aShape, const TopAbs_State aState, TopOpeBRepDS_IndexedDataMapOfShapeWithState & aMapOfShapeWithState);
		%feature("autodoc", "1");
		void FindState1(const TopoDS_Shape &anEdge, const TopAbs_State aState, const TopTools_IndexedDataMapOfShapeListOfShape &aMapEdgesFaces, TopTools_MapOfShape & aMapProcessedVertices, TopOpeBRepDS_DataMapOfShapeState & aMapVs);
		%feature("autodoc", "1");
		void FindState2(const TopoDS_Shape &anEdge, const TopAbs_State aState, const TopTools_IndexedDataMapOfShapeListOfShape &aMapEdgesFaces, TopTools_MapOfShape & aMapProcessedEdges, TopOpeBRepDS_DataMapOfShapeState & aMapVs);
		%feature("autodoc", "1");
		Standard_Boolean GetAdjacentFace(const TopoDS_Shape &aFaceObj, const TopoDS_Shape &anEObj, const TopTools_IndexedDataMapOfShapeListOfShape &anEdgeFaceMap, TopoDS_Shape & anAdjFaceObj);
		%feature("autodoc", "1");
		void GetNormalToFaceOnEdge(const TopoDS_Face &aFObj, const TopoDS_Edge &anEdgeObj, gp_Vec & aDirNormal);
		%feature("autodoc", "1");
		void GetNormalInNearestPoint(const TopoDS_Face &aFace, const TopoDS_Edge &anEdge, gp_Vec & aNormal);
		%feature("autodoc", "1");
		Standard_Boolean GetTangentToEdgeEdge(const TopoDS_Face &aFObj, const TopoDS_Edge &anEdgeObj, const TopoDS_Edge &aOriEObj, gp_Vec & aTangent);
		%feature("autodoc", "1");
		Standard_Boolean GetTangentToEdge(const TopoDS_Edge &anEdgeObj, gp_Vec & aTangent);
		%feature("autodoc", "1");
		void UpdatePCurves(const TopoDS_Wire &aWire, const TopoDS_Face &fromFace, const TopoDS_Face &toFace);
		%feature("autodoc", "1");
		void UpdateEdgeOnPeriodicalFace(const TopoDS_Edge &aEdgeToUpdate, const TopoDS_Face &OldFace, const TopoDS_Face &NewFace);
		%feature("autodoc", "1");
		void UpdateEdgeOnFace(const TopoDS_Edge &aEdgeToUpdate, const TopoDS_Face &OldFace, const TopoDS_Face &NewFace);
		%feature("autodoc", "1");
		Standard_Boolean IsDegEdgesTheSame(const TopoDS_Shape &anE1, const TopoDS_Shape &anE2);
		%feature("autodoc", "1");
		void NormalizeFace(const TopoDS_Shape &oldFace, TopoDS_Shape & corrFace);
		%feature("autodoc", "1");
		void CorrectFace2d(const TopoDS_Shape &oldFace, TopoDS_Shape & corrFace, const TopTools_IndexedMapOfOrientedShape &aSourceShapes, TopTools_IndexedDataMapOfShapeShape & aMapOfCorrect2dEdges);
		%feature("autodoc", "1");
		void CorrectTolerances(const TopoDS_Shape &aS, const Standard_Real aTolMax=1.00000000000000004792173602385929598312941379845e-4);
		%feature("autodoc", "1");
		void CorrectCurveOnSurface(const TopoDS_Shape &aS, const Standard_Real aTolMax=1.00000000000000004792173602385929598312941379845e-4);
		%feature("autodoc", "1");
		void CorrectPointOnCurve(const TopoDS_Shape &aS, const Standard_Real aTolMax=1.00000000000000004792173602385929598312941379845e-4);
		%feature("autodoc", "1");
		Standard_Boolean CheckFaceClosed2d(const TopoDS_Face &theFace);

};
%extend TopOpeBRepBuild_Tools {
	~TopOpeBRepBuild_Tools() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TopOpeBRepBuild_Tools\n");}
	}
};

%nodefaultctor TopOpeBRepBuild_DataMapIteratorOfDataMapOfShapeReal;
class TopOpeBRepBuild_DataMapIteratorOfDataMapOfShapeReal : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		TopOpeBRepBuild_DataMapIteratorOfDataMapOfShapeReal();
		%feature("autodoc", "1");
		TopOpeBRepBuild_DataMapIteratorOfDataMapOfShapeReal(const TopOpeBRepBuild_DataMapOfShapeReal &aMap);
		%feature("autodoc", "1");
		void Initialize(const TopOpeBRepBuild_DataMapOfShapeReal &aMap);
		%feature("autodoc", "1");
		const TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		const Standard_Real & Value() const;

};
%extend TopOpeBRepBuild_DataMapIteratorOfDataMapOfShapeReal {
	~TopOpeBRepBuild_DataMapIteratorOfDataMapOfShapeReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TopOpeBRepBuild_DataMapIteratorOfDataMapOfShapeReal\n");}
	}
};

%nodefaultctor TopOpeBRepBuild_FaceBuilder;
class TopOpeBRepBuild_FaceBuilder {
	public:
		%feature("autodoc", "1");
		TopOpeBRepBuild_FaceBuilder();
		%feature("autodoc", "1");
		TopOpeBRepBuild_FaceBuilder(TopOpeBRepBuild_WireEdgeSet & ES, const TopoDS_Shape &F, const Standard_Boolean ForceClass=0);
		%feature("autodoc", "1");
		void InitFaceBuilder(TopOpeBRepBuild_WireEdgeSet & ES, const TopoDS_Shape &F, const Standard_Boolean ForceClass);
		%feature("autodoc", "1");
		void DetectUnclosedWire(TopTools_IndexedDataMapOfShapeShape & mapVVsameG, TopTools_IndexedDataMapOfShapeShape & mapVon1Edge);
		%feature("autodoc", "1");
		void CorrectGclosedWire(const TopTools_IndexedDataMapOfShapeShape &mapVVref, const TopTools_IndexedDataMapOfShapeShape &mapVon1Edge);
		%feature("autodoc", "1");
		void DetectPseudoInternalEdge(TopTools_IndexedMapOfShape & mapE);
		%feature("autodoc", "1");
		const TopoDS_Shape & Face() const;
		%feature("autodoc", "1");
		Standard_Integer InitFace();
		%feature("autodoc", "1");
		Standard_Boolean MoreFace() const;
		%feature("autodoc", "1");
		void NextFace();
		%feature("autodoc", "1");
		Standard_Integer InitWire();
		%feature("autodoc", "1");
		Standard_Boolean MoreWire() const;
		%feature("autodoc", "1");
		void NextWire();
		%feature("autodoc", "1");
		Standard_Boolean IsOldWire() const;
		%feature("autodoc", "1");
		const TopoDS_Shape & OldWire() const;
		%feature("autodoc", "1");
		void FindNextValidElement();
		%feature("autodoc", "1");
		Standard_Integer InitEdge();
		%feature("autodoc", "1");
		Standard_Boolean MoreEdge() const;
		%feature("autodoc", "1");
		void NextEdge();
		%feature("autodoc", "1");
		const TopoDS_Shape & Edge() const;
		%feature("autodoc", "1");
		Standard_Integer EdgeConnexity(const TopoDS_Shape &E) const;
		%feature("autodoc", "1");
		Standard_Integer AddEdgeWire(const TopoDS_Shape &E, TopoDS_Shape & W) const;

};
%extend TopOpeBRepBuild_FaceBuilder {
	~TopOpeBRepBuild_FaceBuilder() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TopOpeBRepBuild_FaceBuilder\n");}
	}
};

%nodefaultctor TopOpeBRepBuild_ListOfPave;
class TopOpeBRepBuild_ListOfPave {
	public:
		%feature("autodoc", "1");
		TopOpeBRepBuild_ListOfPave();
		%feature("autodoc", "1");
		void Assign(const TopOpeBRepBuild_ListOfPave &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const Handle_TopOpeBRepBuild_Pave &I);
		%feature("autodoc", "1");
		void Prepend(const Handle_TopOpeBRepBuild_Pave &I, TopOpeBRepBuild_ListIteratorOfListOfPave & theIt);
		%feature("autodoc", "1");
		void Prepend(TopOpeBRepBuild_ListOfPave & Other);
		%feature("autodoc", "1");
		void Append(const Handle_TopOpeBRepBuild_Pave &I);
		%feature("autodoc", "1");
		void Append(const Handle_TopOpeBRepBuild_Pave &I, TopOpeBRepBuild_ListIteratorOfListOfPave & theIt);
		%feature("autodoc", "1");
		void Append(TopOpeBRepBuild_ListOfPave & Other);
		%feature("autodoc", "1");
		Handle_TopOpeBRepBuild_Pave & First() const;
		%feature("autodoc", "1");
		Handle_TopOpeBRepBuild_Pave & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(TopOpeBRepBuild_ListIteratorOfListOfPave & It);
		%feature("autodoc", "1");
		void InsertBefore(const Handle_TopOpeBRepBuild_Pave &I, TopOpeBRepBuild_ListIteratorOfListOfPave & It);
		%feature("autodoc", "1");
		void InsertBefore(TopOpeBRepBuild_ListOfPave & Other, TopOpeBRepBuild_ListIteratorOfListOfPave & It);
		%feature("autodoc", "1");
		void InsertAfter(const Handle_TopOpeBRepBuild_Pave &I, TopOpeBRepBuild_ListIteratorOfListOfPave & It);
		%feature("autodoc", "1");
		void InsertAfter(TopOpeBRepBuild_ListOfPave & Other, TopOpeBRepBuild_ListIteratorOfListOfPave & It);

};
%extend TopOpeBRepBuild_ListOfPave {
	~TopOpeBRepBuild_ListOfPave() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TopOpeBRepBuild_ListOfPave\n");}
	}
};

%nodefaultctor TopOpeBRepBuild_WireEdgeSet;
class TopOpeBRepBuild_WireEdgeSet : public TopOpeBRepBuild_ShapeSet {
	public:
		%feature("autodoc", "1");
		TopOpeBRepBuild_WireEdgeSet(const TopoDS_Shape &F, const Standard_Address Addr=0);
		%feature("autodoc", "1");
		const TopoDS_Face & Face() const;
		%feature("autodoc", "1");
		virtual		void AddShape(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		virtual		void AddStartElement(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		virtual		void AddElement(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		virtual		void InitNeighbours(const TopoDS_Shape &E);
		%feature("autodoc", "1");
		virtual		void FindNeighbours();
		%feature("autodoc", "1");
		virtual		const TopTools_ListOfShape & MakeNeighboursList(const TopoDS_Shape &E, const TopoDS_Shape &V);
		%feature("autodoc", "1");
		Standard_Boolean HasConnexStartElement() const;
		%feature("autodoc", "1");
		void IsUVISO(const TopoDS_Edge &E, const TopoDS_Face &F, Standard_Boolean & uiso, Standard_Boolean & viso);
		%feature("autodoc", "1");
		virtual		void DumpSS();
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString SName(const TopoDS_Shape &S, const TCollection_AsciiString &sb="", const TCollection_AsciiString &sa="") const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString SName(const TopTools_ListOfShape &S, const TCollection_AsciiString &sb="", const TCollection_AsciiString &sa="") const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString SNameori(const TopoDS_Shape &S, const TCollection_AsciiString &sb="", const TCollection_AsciiString &sa="") const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString SNameori(const TopTools_ListOfShape &S, const TCollection_AsciiString &sb="", const TCollection_AsciiString &sa="") const;

};
%extend TopOpeBRepBuild_WireEdgeSet {
	~TopOpeBRepBuild_WireEdgeSet() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TopOpeBRepBuild_WireEdgeSet\n");}
	}
};

%nodefaultctor TopOpeBRepBuild_BlockBuilder;
class TopOpeBRepBuild_BlockBuilder {
	public:
		%feature("autodoc", "1");
		TopOpeBRepBuild_BlockBuilder();
		%feature("autodoc", "1");
		TopOpeBRepBuild_BlockBuilder(TopOpeBRepBuild_ShapeSet & SS);
		%feature("autodoc", "1");
		void MakeBlock(TopOpeBRepBuild_ShapeSet & SS);
		%feature("autodoc", "1");
		void InitBlock();
		%feature("autodoc", "1");
		Standard_Boolean MoreBlock() const;
		%feature("autodoc", "1");
		void NextBlock();
		%feature("autodoc", "1");
		TopOpeBRepBuild_BlockIterator BlockIterator() const;
		%feature("autodoc", "1");
		const TopoDS_Shape & Element(const TopOpeBRepBuild_BlockIterator &BI) const;
		%feature("autodoc", "1");
		const TopoDS_Shape & Element(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Standard_Integer Element(const TopoDS_Shape &S) const;
		%feature("autodoc", "1");
		Standard_Boolean ElementIsValid(const TopOpeBRepBuild_BlockIterator &BI) const;
		%feature("autodoc", "1");
		Standard_Boolean ElementIsValid(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Standard_Integer AddElement(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		void SetValid(const TopOpeBRepBuild_BlockIterator &BI, const Standard_Boolean isvalid);
		%feature("autodoc", "1");
		void SetValid(const Standard_Integer I, const Standard_Boolean isvalid);
		%feature("autodoc", "1");
		Standard_Boolean CurrentBlockIsRegular();

};
%extend TopOpeBRepBuild_BlockBuilder {
	~TopOpeBRepBuild_BlockBuilder() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TopOpeBRepBuild_BlockBuilder\n");}
	}
};

%nodefaultctor TopOpeBRepBuild_ListIteratorOfListOfPave;
class TopOpeBRepBuild_ListIteratorOfListOfPave {
	public:
		%feature("autodoc", "1");
		TopOpeBRepBuild_ListIteratorOfListOfPave();
		%feature("autodoc", "1");
		TopOpeBRepBuild_ListIteratorOfListOfPave(const TopOpeBRepBuild_ListOfPave &L);
		%feature("autodoc", "1");
		void Initialize(const TopOpeBRepBuild_ListOfPave &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		Handle_TopOpeBRepBuild_Pave & Value() const;

};
%extend TopOpeBRepBuild_ListIteratorOfListOfPave {
	~TopOpeBRepBuild_ListIteratorOfListOfPave() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TopOpeBRepBuild_ListIteratorOfListOfPave\n");}
	}
};

%nodefaultctor TopOpeBRepBuild_ListNodeOfListOfLoop;
class TopOpeBRepBuild_ListNodeOfListOfLoop : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TopOpeBRepBuild_ListNodeOfListOfLoop(const Handle_TopOpeBRepBuild_Loop &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Handle_TopOpeBRepBuild_Loop & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TopOpeBRepBuild_ListNodeOfListOfLoop {
	Handle_TopOpeBRepBuild_ListNodeOfListOfLoop GetHandle() {
	return *(Handle_TopOpeBRepBuild_ListNodeOfListOfLoop*) &$self;
	}
};
%extend TopOpeBRepBuild_ListNodeOfListOfLoop {
	Standard_Integer __hash__() {
	return $self->HashCode(LONG_MAX);
	}
};
%extend TopOpeBRepBuild_ListNodeOfListOfLoop {
	~TopOpeBRepBuild_ListNodeOfListOfLoop() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TopOpeBRepBuild_ListNodeOfListOfLoop\n");}
	}
};

%nodefaultctor TopOpeBRepBuild_ListOfShapeListOfShape;
class TopOpeBRepBuild_ListOfShapeListOfShape {
	public:
		%feature("autodoc", "1");
		TopOpeBRepBuild_ListOfShapeListOfShape();
		%feature("autodoc", "1");
		void Assign(const TopOpeBRepBuild_ListOfShapeListOfShape &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const TopOpeBRepBuild_ShapeListOfShape &I);
		%feature("autodoc", "1");
		void Prepend(const TopOpeBRepBuild_ShapeListOfShape &I, TopOpeBRepBuild_ListIteratorOfListOfShapeListOfShape & theIt);
		%feature("autodoc", "1");
		void Prepend(TopOpeBRepBuild_ListOfShapeListOfShape & Other);
		%feature("autodoc", "1");
		void Append(const TopOpeBRepBuild_ShapeListOfShape &I);
		%feature("autodoc", "1");
		void Append(const TopOpeBRepBuild_ShapeListOfShape &I, TopOpeBRepBuild_ListIteratorOfListOfShapeListOfShape & theIt);
		%feature("autodoc", "1");
		void Append(TopOpeBRepBuild_ListOfShapeListOfShape & Other);
		%feature("autodoc", "1");
		TopOpeBRepBuild_ShapeListOfShape & First() const;
		%feature("autodoc", "1");
		TopOpeBRepBuild_ShapeListOfShape & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(TopOpeBRepBuild_ListIteratorOfListOfShapeListOfShape & It);
		%feature("autodoc", "1");
		void InsertBefore(const TopOpeBRepBuild_ShapeListOfShape &I, TopOpeBRepBuild_ListIteratorOfListOfShapeListOfShape & It);
		%feature("autodoc", "1");
		void InsertBefore(TopOpeBRepBuild_ListOfShapeListOfShape & Other, TopOpeBRepBuild_ListIteratorOfListOfShapeListOfShape & It);
		%feature("autodoc", "1");
		void InsertAfter(const TopOpeBRepBuild_ShapeListOfShape &I, TopOpeBRepBuild_ListIteratorOfListOfShapeListOfShape & It);
		%feature("autodoc", "1");
		void InsertAfter(TopOpeBRepBuild_ListOfShapeListOfShape & Other, TopOpeBRepBuild_ListIteratorOfListOfShapeListOfShape & It);

};
%extend TopOpeBRepBuild_ListOfShapeListOfShape {
	~TopOpeBRepBuild_ListOfShapeListOfShape() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TopOpeBRepBuild_ListOfShapeListOfShape\n");}
	}
};

%nodefaultctor TopOpeBRepBuild_FuseFace;
class TopOpeBRepBuild_FuseFace {
	public:
		%feature("autodoc", "1");
		TopOpeBRepBuild_FuseFace();
		%feature("autodoc", "1");
		TopOpeBRepBuild_FuseFace(const TopTools_ListOfShape &LIF, const TopTools_ListOfShape &LRF, const Standard_Integer CXM);
		%feature("autodoc", "1");
		void Init(const TopTools_ListOfShape &LIF, const TopTools_ListOfShape &LRF, const Standard_Integer CXM);
		%feature("autodoc", "1");
		void PerformFace();
		%feature("autodoc", "1");
		void PerformEdge();
		%feature("autodoc", "1");
		void ClearEdge();
		%feature("autodoc", "1");
		void ClearVertex();
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Boolean IsModified() const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & LFuseFace() const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & LInternEdge() const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & LExternEdge() const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & LModifEdge() const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & LInternVertex() const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & LExternVertex() const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & LModifVertex() const;

};
%extend TopOpeBRepBuild_FuseFace {
	~TopOpeBRepBuild_FuseFace() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TopOpeBRepBuild_FuseFace\n");}
	}
};

%nodefaultctor TopOpeBRepBuild_DataMapNodeOfDataMapOfShapeInteger;
class TopOpeBRepBuild_DataMapNodeOfDataMapOfShapeInteger : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TopOpeBRepBuild_DataMapNodeOfDataMapOfShapeInteger(const TopoDS_Shape &K, const Standard_Integer &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		Standard_Integer & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TopOpeBRepBuild_DataMapNodeOfDataMapOfShapeInteger {
	Handle_TopOpeBRepBuild_DataMapNodeOfDataMapOfShapeInteger GetHandle() {
	return *(Handle_TopOpeBRepBuild_DataMapNodeOfDataMapOfShapeInteger*) &$self;
	}
};
%extend TopOpeBRepBuild_DataMapNodeOfDataMapOfShapeInteger {
	Standard_Integer __hash__() {
	return $self->HashCode(LONG_MAX);
	}
};
%extend TopOpeBRepBuild_DataMapNodeOfDataMapOfShapeInteger {
	~TopOpeBRepBuild_DataMapNodeOfDataMapOfShapeInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TopOpeBRepBuild_DataMapNodeOfDataMapOfShapeInteger\n");}
	}
};

%nodefaultctor TopOpeBRepBuild_ShapeListOfShape;
class TopOpeBRepBuild_ShapeListOfShape {
	public:
		%feature("autodoc", "1");
		TopOpeBRepBuild_ShapeListOfShape();
		%feature("autodoc", "1");
		TopOpeBRepBuild_ShapeListOfShape(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		TopOpeBRepBuild_ShapeListOfShape(const TopoDS_Shape &S, const TopTools_ListOfShape &L);
		%feature("autodoc", "1");
		const TopTools_ListOfShape & List() const;
		%feature("autodoc", "1");
		TopTools_ListOfShape & ChangeList();
		%feature("autodoc", "1");
		const TopoDS_Shape & Shape() const;
		%feature("autodoc", "1");
		TopoDS_Shape & ChangeShape();

};
%extend TopOpeBRepBuild_ShapeListOfShape {
	~TopOpeBRepBuild_ShapeListOfShape() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TopOpeBRepBuild_ShapeListOfShape\n");}
	}
};