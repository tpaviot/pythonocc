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
%module BRepTopAdaptor

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


%include BRepTopAdaptor_dependencies.i


%include BRepTopAdaptor_headers.i




%nodefaultctor Handle_BRepTopAdaptor_TopolTool;
class Handle_BRepTopAdaptor_TopolTool : public Handle_Adaptor3d_TopolTool {
	public:
		%feature("autodoc", "1");
		Handle_BRepTopAdaptor_TopolTool();
		%feature("autodoc", "1");
		Handle_BRepTopAdaptor_TopolTool(const Handle_BRepTopAdaptor_TopolTool &aHandle);
		%feature("autodoc", "1");
		Handle_BRepTopAdaptor_TopolTool(const BRepTopAdaptor_TopolTool *anItem);
		%feature("autodoc", "1");
		Handle_BRepTopAdaptor_TopolTool const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepTopAdaptor_TopolTool {
	BRepTopAdaptor_TopolTool* GetObject() {
	return (BRepTopAdaptor_TopolTool*)$self->Access();
	}
};
%extend Handle_BRepTopAdaptor_TopolTool {
	~Handle_BRepTopAdaptor_TopolTool() {
	printf("Call custom destructor for instance of Handle_BRepTopAdaptor_TopolTool\n");
	}
};

%nodefaultctor Handle_BRepTopAdaptor_HVertex;
class Handle_BRepTopAdaptor_HVertex : public Handle_Adaptor3d_HVertex {
	public:
		%feature("autodoc", "1");
		Handle_BRepTopAdaptor_HVertex();
		%feature("autodoc", "1");
		Handle_BRepTopAdaptor_HVertex(const Handle_BRepTopAdaptor_HVertex &aHandle);
		%feature("autodoc", "1");
		Handle_BRepTopAdaptor_HVertex(const BRepTopAdaptor_HVertex *anItem);
		%feature("autodoc", "1");
		Handle_BRepTopAdaptor_HVertex const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepTopAdaptor_HVertex {
	BRepTopAdaptor_HVertex* GetObject() {
	return (BRepTopAdaptor_HVertex*)$self->Access();
	}
};
%extend Handle_BRepTopAdaptor_HVertex {
	~Handle_BRepTopAdaptor_HVertex() {
	printf("Call custom destructor for instance of Handle_BRepTopAdaptor_HVertex\n");
	}
};

%nodefaultctor Handle_BRepTopAdaptor_DataMapNodeOfMapOfShapeTool;
class Handle_BRepTopAdaptor_DataMapNodeOfMapOfShapeTool : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_BRepTopAdaptor_DataMapNodeOfMapOfShapeTool();
		%feature("autodoc", "1");
		Handle_BRepTopAdaptor_DataMapNodeOfMapOfShapeTool(const Handle_BRepTopAdaptor_DataMapNodeOfMapOfShapeTool &aHandle);
		%feature("autodoc", "1");
		Handle_BRepTopAdaptor_DataMapNodeOfMapOfShapeTool(const BRepTopAdaptor_DataMapNodeOfMapOfShapeTool *anItem);
		%feature("autodoc", "1");
		Handle_BRepTopAdaptor_DataMapNodeOfMapOfShapeTool const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepTopAdaptor_DataMapNodeOfMapOfShapeTool {
	BRepTopAdaptor_DataMapNodeOfMapOfShapeTool* GetObject() {
	return (BRepTopAdaptor_DataMapNodeOfMapOfShapeTool*)$self->Access();
	}
};
%extend Handle_BRepTopAdaptor_DataMapNodeOfMapOfShapeTool {
	~Handle_BRepTopAdaptor_DataMapNodeOfMapOfShapeTool() {
	printf("Call custom destructor for instance of Handle_BRepTopAdaptor_DataMapNodeOfMapOfShapeTool\n");
	}
};

%nodefaultctor Handle_BRepTopAdaptor_SequenceNodeOfSeqOfPtr;
class Handle_BRepTopAdaptor_SequenceNodeOfSeqOfPtr : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_BRepTopAdaptor_SequenceNodeOfSeqOfPtr();
		%feature("autodoc", "1");
		Handle_BRepTopAdaptor_SequenceNodeOfSeqOfPtr(const Handle_BRepTopAdaptor_SequenceNodeOfSeqOfPtr &aHandle);
		%feature("autodoc", "1");
		Handle_BRepTopAdaptor_SequenceNodeOfSeqOfPtr(const BRepTopAdaptor_SequenceNodeOfSeqOfPtr *anItem);
		%feature("autodoc", "1");
		Handle_BRepTopAdaptor_SequenceNodeOfSeqOfPtr const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepTopAdaptor_SequenceNodeOfSeqOfPtr {
	BRepTopAdaptor_SequenceNodeOfSeqOfPtr* GetObject() {
	return (BRepTopAdaptor_SequenceNodeOfSeqOfPtr*)$self->Access();
	}
};
%extend Handle_BRepTopAdaptor_SequenceNodeOfSeqOfPtr {
	~Handle_BRepTopAdaptor_SequenceNodeOfSeqOfPtr() {
	printf("Call custom destructor for instance of Handle_BRepTopAdaptor_SequenceNodeOfSeqOfPtr\n");
	}
};

%nodefaultctor BRepTopAdaptor_MapOfShapeTool;
class BRepTopAdaptor_MapOfShapeTool : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		BRepTopAdaptor_MapOfShapeTool(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		BRepTopAdaptor_MapOfShapeTool & Assign(const BRepTopAdaptor_MapOfShapeTool &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~BRepTopAdaptor_MapOfShapeTool();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TopoDS_Shape &K, const BRepTopAdaptor_Tool &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TopoDS_Shape &K);
		%feature("autodoc", "1");
		const BRepTopAdaptor_Tool & Find(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		const BRepTopAdaptor_Tool & operator()(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		BRepTopAdaptor_Tool & ChangeFind(const TopoDS_Shape &K);
		%feature("autodoc", "1");
		BRepTopAdaptor_Tool & operator()(const TopoDS_Shape &K);

};
%extend BRepTopAdaptor_MapOfShapeTool {
	~BRepTopAdaptor_MapOfShapeTool() {
	printf("Call custom destructor for instance of BRepTopAdaptor_MapOfShapeTool\n");
	}
};

%nodefaultctor BRepTopAdaptor_HVertex;
class BRepTopAdaptor_HVertex : public Adaptor3d_HVertex {
	public:
		%feature("autodoc", "1");
		BRepTopAdaptor_HVertex(const TopoDS_Vertex &Vtx, const Handle_BRepAdaptor_HCurve2d &Curve);
		%feature("autodoc", "1");
		const TopoDS_Vertex & Vertex() const;
		%feature("autodoc", "1");
		TopoDS_Vertex & ChangeVertex();
		%feature("autodoc", "1");
		virtual		gp_Pnt2d Value();
		%feature("autodoc", "1");
		virtual		Standard_Real Parameter(const Handle_Adaptor2d_HCurve2d &C);
		%feature("autodoc", "1");
		virtual		Standard_Real Resolution(const Handle_Adaptor2d_HCurve2d &C);
		%feature("autodoc", "1");
		virtual		TopAbs_Orientation Orientation();
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsSame(const Handle_Adaptor3d_HVertex &Other);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepTopAdaptor_HVertex {
	Handle_BRepTopAdaptor_HVertex GetHandle() {
	return *(Handle_BRepTopAdaptor_HVertex*) &$self;
	}
};
%extend BRepTopAdaptor_HVertex {
	~BRepTopAdaptor_HVertex() {
	printf("Call custom destructor for instance of BRepTopAdaptor_HVertex\n");
	}
};

%nodefaultctor BRepTopAdaptor_DataMapIteratorOfMapOfShapeTool;
class BRepTopAdaptor_DataMapIteratorOfMapOfShapeTool : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		~BRepTopAdaptor_DataMapIteratorOfMapOfShapeTool();
		%feature("autodoc", "1");
		BRepTopAdaptor_DataMapIteratorOfMapOfShapeTool();
		%feature("autodoc", "1");
		BRepTopAdaptor_DataMapIteratorOfMapOfShapeTool(const BRepTopAdaptor_MapOfShapeTool &aMap);
		%feature("autodoc", "1");
		void Initialize(const BRepTopAdaptor_MapOfShapeTool &aMap);
		%feature("autodoc", "1");
		const TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		const BRepTopAdaptor_Tool & Value() const;

};
%extend BRepTopAdaptor_DataMapIteratorOfMapOfShapeTool {
	~BRepTopAdaptor_DataMapIteratorOfMapOfShapeTool() {
	printf("Call custom destructor for instance of BRepTopAdaptor_DataMapIteratorOfMapOfShapeTool\n");
	}
};

%nodefaultctor BRepTopAdaptor_FClass2d;
class BRepTopAdaptor_FClass2d {
	public:
		%feature("autodoc", "1");
		BRepTopAdaptor_FClass2d(const TopoDS_Face &F, const Standard_Real Tol);
		%feature("autodoc", "1");
		TopAbs_State PerformInfinitePoint() const;
		%feature("autodoc", "1");
		TopAbs_State Perform(const gp_Pnt2d &Puv, const Standard_Boolean RecadreOnPeriodic=1) const;
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		~BRepTopAdaptor_FClass2d();
		%feature("autodoc", "1");
		const BRepTopAdaptor_FClass2d & Copy(const BRepTopAdaptor_FClass2d &Other) const;
		%feature("autodoc", "1");
		TopAbs_State TestOnRestriction(const gp_Pnt2d &Puv, const Standard_Real Tol, const Standard_Boolean RecadreOnPeriodic=1) const;

};
%extend BRepTopAdaptor_FClass2d {
	~BRepTopAdaptor_FClass2d() {
	printf("Call custom destructor for instance of BRepTopAdaptor_FClass2d\n");
	}
};

%nodefaultctor BRepTopAdaptor_TopolTool;
class BRepTopAdaptor_TopolTool : public Adaptor3d_TopolTool {
	public:
		%feature("autodoc", "1");
		BRepTopAdaptor_TopolTool();
		%feature("autodoc", "1");
		BRepTopAdaptor_TopolTool(const Handle_Adaptor3d_HSurface &Surface);
		%feature("autodoc", "1");
		virtual		void Initialize();
		%feature("autodoc", "1");
		virtual		void Initialize(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		virtual		void Initialize(const Handle_Adaptor2d_HCurve2d &Curve);
		%feature("autodoc", "1");
		virtual		void Init();
		%feature("autodoc", "1");
		virtual		Standard_Boolean More();
		%feature("autodoc", "1");
		virtual		Handle_Adaptor2d_HCurve2d Value();
		%feature("autodoc", "1");
		virtual		void Next();
		%feature("autodoc", "1");
		virtual		Standard_Address Edge() const;
		%feature("autodoc", "1");
		virtual		void InitVertexIterator();
		%feature("autodoc", "1");
		virtual		Standard_Boolean MoreVertex();
		%feature("autodoc", "1");
		virtual		Handle_Adaptor3d_HVertex Vertex();
		%feature("autodoc", "1");
		virtual		void NextVertex();
		%feature("autodoc", "1");
		virtual		TopAbs_State Classify(const gp_Pnt2d &P2d, const Standard_Real Tol, const Standard_Boolean RecadreOnPeriodic=1);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsThePointOn(const gp_Pnt2d &P2d, const Standard_Real Tol, const Standard_Boolean RecadreOnPeriodic=1);
		%feature("autodoc", "1");
		virtual		TopAbs_Orientation Orientation(const Handle_Adaptor2d_HCurve2d &C);
		%feature("autodoc", "1");
		virtual		TopAbs_Orientation Orientation(const Handle_Adaptor3d_HVertex &C);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		virtual		Standard_Boolean Has3d() const;
		%feature("autodoc", "1");
		virtual		Standard_Real Tol3d(const Handle_Adaptor2d_HCurve2d &C) const;
		%feature("autodoc", "1");
		virtual		Standard_Real Tol3d(const Handle_Adaptor3d_HVertex &V) const;
		%feature("autodoc", "1");
		virtual		gp_Pnt Pnt(const Handle_Adaptor3d_HVertex &V) const;
		%feature("autodoc", "1");
		virtual		void ComputeSamplePoints();
		%feature("autodoc", "1");
		virtual		Standard_Integer NbSamplesU();
		%feature("autodoc", "1");
		virtual		Standard_Integer NbSamplesV();
		%feature("autodoc", "1");
		virtual		Standard_Integer NbSamples();
		%feature("autodoc", "1");
		virtual		void SamplePoint(const Standard_Integer Index, gp_Pnt2d & P2d, gp_Pnt & P3d);
		%feature("autodoc", "1");
		virtual		Standard_Boolean DomainIsInfinite();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepTopAdaptor_TopolTool {
	Handle_BRepTopAdaptor_TopolTool GetHandle() {
	return *(Handle_BRepTopAdaptor_TopolTool*) &$self;
	}
};
%extend BRepTopAdaptor_TopolTool {
	~BRepTopAdaptor_TopolTool() {
	printf("Call custom destructor for instance of BRepTopAdaptor_TopolTool\n");
	}
};

%nodefaultctor BRepTopAdaptor_SeqOfPtr;
class BRepTopAdaptor_SeqOfPtr : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		BRepTopAdaptor_SeqOfPtr();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~BRepTopAdaptor_SeqOfPtr();
		%feature("autodoc", "1");
		const BRepTopAdaptor_SeqOfPtr & Assign(const BRepTopAdaptor_SeqOfPtr &Other);
		%feature("autodoc", "1");
		void Append(const Standard_Address &T);
		%feature("autodoc", "1");
		void Append(BRepTopAdaptor_SeqOfPtr & S);
		%feature("autodoc", "1");
		void Prepend(const Standard_Address &T);
		%feature("autodoc", "1");
		void Prepend(BRepTopAdaptor_SeqOfPtr & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Standard_Address &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, BRepTopAdaptor_SeqOfPtr & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Standard_Address &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, BRepTopAdaptor_SeqOfPtr & S);
		%feature("autodoc", "1");
		const Standard_Address & First() const;
		%feature("autodoc", "1");
		const Standard_Address & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, BRepTopAdaptor_SeqOfPtr & S);
		%feature("autodoc", "1");
		const Standard_Address & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Standard_Address & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Standard_Address &I);
		%feature("autodoc", "1");
		Standard_Address & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Standard_Address & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%extend BRepTopAdaptor_SeqOfPtr {
	~BRepTopAdaptor_SeqOfPtr() {
	printf("Call custom destructor for instance of BRepTopAdaptor_SeqOfPtr\n");
	}
};

%nodefaultctor BRepTopAdaptor_Tool;
class BRepTopAdaptor_Tool {
	public:
		%feature("autodoc", "1");
		BRepTopAdaptor_Tool();
		%feature("autodoc", "1");
		BRepTopAdaptor_Tool(const TopoDS_Face &F, const Standard_Real Tol2d);
		%feature("autodoc", "1");
		BRepTopAdaptor_Tool(const Handle_Adaptor3d_HSurface &Surface, const Standard_Real Tol2d);
		%feature("autodoc", "1");
		void Init(const TopoDS_Face &F, const Standard_Real Tol2d);
		%feature("autodoc", "1");
		void Init(const Handle_Adaptor3d_HSurface &Surface, const Standard_Real Tol2d);
		%feature("autodoc", "1");
		Handle_BRepTopAdaptor_TopolTool GetTopolTool();
		%feature("autodoc", "1");
		void SetTopolTool(const Handle_BRepTopAdaptor_TopolTool &TT);
		%feature("autodoc", "1");
		Handle_Adaptor3d_HSurface GetSurface();
		%feature("autodoc", "1");
		void Destroy();

};
%extend BRepTopAdaptor_Tool {
	~BRepTopAdaptor_Tool() {
	printf("Call custom destructor for instance of BRepTopAdaptor_Tool\n");
	}
};

%nodefaultctor BRepTopAdaptor_SequenceNodeOfSeqOfPtr;
class BRepTopAdaptor_SequenceNodeOfSeqOfPtr : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		BRepTopAdaptor_SequenceNodeOfSeqOfPtr(const Standard_Address &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Standard_Address & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepTopAdaptor_SequenceNodeOfSeqOfPtr {
	Handle_BRepTopAdaptor_SequenceNodeOfSeqOfPtr GetHandle() {
	return *(Handle_BRepTopAdaptor_SequenceNodeOfSeqOfPtr*) &$self;
	}
};
%extend BRepTopAdaptor_SequenceNodeOfSeqOfPtr {
	~BRepTopAdaptor_SequenceNodeOfSeqOfPtr() {
	printf("Call custom destructor for instance of BRepTopAdaptor_SequenceNodeOfSeqOfPtr\n");
	}
};

%nodefaultctor BRepTopAdaptor_DataMapNodeOfMapOfShapeTool;
class BRepTopAdaptor_DataMapNodeOfMapOfShapeTool : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BRepTopAdaptor_DataMapNodeOfMapOfShapeTool(const TopoDS_Shape &K, const BRepTopAdaptor_Tool &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		BRepTopAdaptor_Tool & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepTopAdaptor_DataMapNodeOfMapOfShapeTool {
	Handle_BRepTopAdaptor_DataMapNodeOfMapOfShapeTool GetHandle() {
	return *(Handle_BRepTopAdaptor_DataMapNodeOfMapOfShapeTool*) &$self;
	}
};
%extend BRepTopAdaptor_DataMapNodeOfMapOfShapeTool {
	~BRepTopAdaptor_DataMapNodeOfMapOfShapeTool() {
	printf("Call custom destructor for instance of BRepTopAdaptor_DataMapNodeOfMapOfShapeTool\n");
	}
};