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
%module BRepMAT2d

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
%typemap(in,numinputs=0) Standard_Real &OutValue(Standard_Real temp) {
    $1 = &temp;
}


%include BRepMAT2d_dependencies.i


%include BRepMAT2d_headers.i




%nodefaultctor Handle_BRepMAT2d_DataMapNodeOfDataMapOfShapeSequenceOfBasicElt;
class Handle_BRepMAT2d_DataMapNodeOfDataMapOfShapeSequenceOfBasicElt : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_BRepMAT2d_DataMapNodeOfDataMapOfShapeSequenceOfBasicElt();
		%feature("autodoc", "1");
		Handle_BRepMAT2d_DataMapNodeOfDataMapOfShapeSequenceOfBasicElt(const Handle_BRepMAT2d_DataMapNodeOfDataMapOfShapeSequenceOfBasicElt &aHandle);
		%feature("autodoc", "1");
		Handle_BRepMAT2d_DataMapNodeOfDataMapOfShapeSequenceOfBasicElt(const BRepMAT2d_DataMapNodeOfDataMapOfShapeSequenceOfBasicElt *anItem);
		%feature("autodoc", "1");
		Handle_BRepMAT2d_DataMapNodeOfDataMapOfShapeSequenceOfBasicElt const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepMAT2d_DataMapNodeOfDataMapOfShapeSequenceOfBasicElt {
	BRepMAT2d_DataMapNodeOfDataMapOfShapeSequenceOfBasicElt* GetObject() {
	return (BRepMAT2d_DataMapNodeOfDataMapOfShapeSequenceOfBasicElt*)$self->Access();
	}
};
%extend Handle_BRepMAT2d_DataMapNodeOfDataMapOfShapeSequenceOfBasicElt {
	~Handle_BRepMAT2d_DataMapNodeOfDataMapOfShapeSequenceOfBasicElt() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_BRepMAT2d_DataMapNodeOfDataMapOfShapeSequenceOfBasicElt\n");}
	}
};

%nodefaultctor Handle_BRepMAT2d_DataMapNodeOfDataMapOfBasicEltShape;
class Handle_BRepMAT2d_DataMapNodeOfDataMapOfBasicEltShape : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_BRepMAT2d_DataMapNodeOfDataMapOfBasicEltShape();
		%feature("autodoc", "1");
		Handle_BRepMAT2d_DataMapNodeOfDataMapOfBasicEltShape(const Handle_BRepMAT2d_DataMapNodeOfDataMapOfBasicEltShape &aHandle);
		%feature("autodoc", "1");
		Handle_BRepMAT2d_DataMapNodeOfDataMapOfBasicEltShape(const BRepMAT2d_DataMapNodeOfDataMapOfBasicEltShape *anItem);
		%feature("autodoc", "1");
		Handle_BRepMAT2d_DataMapNodeOfDataMapOfBasicEltShape const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepMAT2d_DataMapNodeOfDataMapOfBasicEltShape {
	BRepMAT2d_DataMapNodeOfDataMapOfBasicEltShape* GetObject() {
	return (BRepMAT2d_DataMapNodeOfDataMapOfBasicEltShape*)$self->Access();
	}
};
%extend Handle_BRepMAT2d_DataMapNodeOfDataMapOfBasicEltShape {
	~Handle_BRepMAT2d_DataMapNodeOfDataMapOfBasicEltShape() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_BRepMAT2d_DataMapNodeOfDataMapOfBasicEltShape\n");}
	}
};

%nodefaultctor Handle_BRepMAT2d_SequenceNodeOfSequenceOfBasicElt;
class Handle_BRepMAT2d_SequenceNodeOfSequenceOfBasicElt : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_BRepMAT2d_SequenceNodeOfSequenceOfBasicElt();
		%feature("autodoc", "1");
		Handle_BRepMAT2d_SequenceNodeOfSequenceOfBasicElt(const Handle_BRepMAT2d_SequenceNodeOfSequenceOfBasicElt &aHandle);
		%feature("autodoc", "1");
		Handle_BRepMAT2d_SequenceNodeOfSequenceOfBasicElt(const BRepMAT2d_SequenceNodeOfSequenceOfBasicElt *anItem);
		%feature("autodoc", "1");
		Handle_BRepMAT2d_SequenceNodeOfSequenceOfBasicElt const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepMAT2d_SequenceNodeOfSequenceOfBasicElt {
	BRepMAT2d_SequenceNodeOfSequenceOfBasicElt* GetObject() {
	return (BRepMAT2d_SequenceNodeOfSequenceOfBasicElt*)$self->Access();
	}
};
%extend Handle_BRepMAT2d_SequenceNodeOfSequenceOfBasicElt {
	~Handle_BRepMAT2d_SequenceNodeOfSequenceOfBasicElt() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_BRepMAT2d_SequenceNodeOfSequenceOfBasicElt\n");}
	}
};

%nodefaultctor BRepMAT2d_DataMapNodeOfDataMapOfShapeSequenceOfBasicElt;
class BRepMAT2d_DataMapNodeOfDataMapOfShapeSequenceOfBasicElt : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BRepMAT2d_DataMapNodeOfDataMapOfShapeSequenceOfBasicElt(const TopoDS_Shape &K, const BRepMAT2d_SequenceOfBasicElt &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		BRepMAT2d_SequenceOfBasicElt & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepMAT2d_DataMapNodeOfDataMapOfShapeSequenceOfBasicElt {
	Handle_BRepMAT2d_DataMapNodeOfDataMapOfShapeSequenceOfBasicElt GetHandle() {
	return *(Handle_BRepMAT2d_DataMapNodeOfDataMapOfShapeSequenceOfBasicElt*) &$self;
	}
};
%extend BRepMAT2d_DataMapNodeOfDataMapOfShapeSequenceOfBasicElt {
	~BRepMAT2d_DataMapNodeOfDataMapOfShapeSequenceOfBasicElt() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of BRepMAT2d_DataMapNodeOfDataMapOfShapeSequenceOfBasicElt\n");}
	}
};

%nodefaultctor BRepMAT2d_BisectingLocus;
class BRepMAT2d_BisectingLocus {
	public:
		%feature("autodoc", "1");
		BRepMAT2d_BisectingLocus();
		%feature("autodoc", "1");
		void Compute(BRepMAT2d_Explorer & anExplo, const Standard_Integer LineIndex=1, const MAT_Side aSide=MAT_Left);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Handle_MAT_Graph Graph() const;
		%feature("autodoc", "1");
		Standard_Integer NumberOfContours() const;
		%feature("autodoc", "1");
		Standard_Integer NumberOfElts(const Standard_Integer IndLine) const;
		%feature("autodoc", "1");
		Standard_Integer NumberOfSections(const Standard_Integer IndLine, const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_MAT_BasicElt BasicElt(const Standard_Integer IndLine, const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_Geom2d_Geometry GeomElt(const Handle_MAT_BasicElt &aBasicElt) const;
		%feature("autodoc", "1");
		gp_Pnt2d GeomElt(const Handle_MAT_Node &aNode) const;
		%feature("autodoc", "1");
		Bisector_Bisec GeomBis(const Handle_MAT_Arc &anArc, Standard_Boolean & Reverse) const;

};
%extend BRepMAT2d_BisectingLocus {
	~BRepMAT2d_BisectingLocus() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of BRepMAT2d_BisectingLocus\n");}
	}
};

%nodefaultctor BRepMAT2d_SequenceNodeOfSequenceOfBasicElt;
class BRepMAT2d_SequenceNodeOfSequenceOfBasicElt : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		BRepMAT2d_SequenceNodeOfSequenceOfBasicElt(const Handle_MAT_BasicElt &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_MAT_BasicElt & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepMAT2d_SequenceNodeOfSequenceOfBasicElt {
	Handle_BRepMAT2d_SequenceNodeOfSequenceOfBasicElt GetHandle() {
	return *(Handle_BRepMAT2d_SequenceNodeOfSequenceOfBasicElt*) &$self;
	}
};
%extend BRepMAT2d_SequenceNodeOfSequenceOfBasicElt {
	~BRepMAT2d_SequenceNodeOfSequenceOfBasicElt() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of BRepMAT2d_SequenceNodeOfSequenceOfBasicElt\n");}
	}
};

%nodefaultctor BRepMAT2d_DataMapIteratorOfDataMapOfShapeSequenceOfBasicElt;
class BRepMAT2d_DataMapIteratorOfDataMapOfShapeSequenceOfBasicElt : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		BRepMAT2d_DataMapIteratorOfDataMapOfShapeSequenceOfBasicElt();
		%feature("autodoc", "1");
		BRepMAT2d_DataMapIteratorOfDataMapOfShapeSequenceOfBasicElt(const BRepMAT2d_DataMapOfShapeSequenceOfBasicElt &aMap);
		%feature("autodoc", "1");
		void Initialize(const BRepMAT2d_DataMapOfShapeSequenceOfBasicElt &aMap);
		%feature("autodoc", "1");
		const TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		const BRepMAT2d_SequenceOfBasicElt & Value() const;

};
%extend BRepMAT2d_DataMapIteratorOfDataMapOfShapeSequenceOfBasicElt {
	~BRepMAT2d_DataMapIteratorOfDataMapOfShapeSequenceOfBasicElt() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of BRepMAT2d_DataMapIteratorOfDataMapOfShapeSequenceOfBasicElt\n");}
	}
};

%nodefaultctor BRepMAT2d_SequenceOfBasicElt;
class BRepMAT2d_SequenceOfBasicElt : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		BRepMAT2d_SequenceOfBasicElt();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const BRepMAT2d_SequenceOfBasicElt & Assign(const BRepMAT2d_SequenceOfBasicElt &Other);
		%feature("autodoc", "1");
		void Append(const Handle_MAT_BasicElt &T);
		%feature("autodoc", "1");
		void Append(BRepMAT2d_SequenceOfBasicElt & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_MAT_BasicElt &T);
		%feature("autodoc", "1");
		void Prepend(BRepMAT2d_SequenceOfBasicElt & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_MAT_BasicElt &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, BRepMAT2d_SequenceOfBasicElt & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_MAT_BasicElt &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, BRepMAT2d_SequenceOfBasicElt & S);
		%feature("autodoc", "1");
		const Handle_MAT_BasicElt & First() const;
		%feature("autodoc", "1");
		const Handle_MAT_BasicElt & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, BRepMAT2d_SequenceOfBasicElt & S);
		%feature("autodoc", "1");
		const Handle_MAT_BasicElt & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_MAT_BasicElt & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_MAT_BasicElt &I);
		%feature("autodoc", "1");
		Handle_MAT_BasicElt & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_MAT_BasicElt & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%extend BRepMAT2d_SequenceOfBasicElt {
	~BRepMAT2d_SequenceOfBasicElt() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of BRepMAT2d_SequenceOfBasicElt\n");}
	}
};

%nodefaultctor BRepMAT2d_DataMapOfShapeSequenceOfBasicElt;
class BRepMAT2d_DataMapOfShapeSequenceOfBasicElt : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		BRepMAT2d_DataMapOfShapeSequenceOfBasicElt(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		BRepMAT2d_DataMapOfShapeSequenceOfBasicElt & Assign(const BRepMAT2d_DataMapOfShapeSequenceOfBasicElt &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TopoDS_Shape &K, const BRepMAT2d_SequenceOfBasicElt &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TopoDS_Shape &K);
		%feature("autodoc", "1");
		const BRepMAT2d_SequenceOfBasicElt & Find(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		const BRepMAT2d_SequenceOfBasicElt & operator()(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		BRepMAT2d_SequenceOfBasicElt & ChangeFind(const TopoDS_Shape &K);
		%feature("autodoc", "1");
		BRepMAT2d_SequenceOfBasicElt & operator()(const TopoDS_Shape &K);

};
%extend BRepMAT2d_DataMapOfShapeSequenceOfBasicElt {
	~BRepMAT2d_DataMapOfShapeSequenceOfBasicElt() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of BRepMAT2d_DataMapOfShapeSequenceOfBasicElt\n");}
	}
};

%nodefaultctor BRepMAT2d_DataMapIteratorOfDataMapOfBasicEltShape;
class BRepMAT2d_DataMapIteratorOfDataMapOfBasicEltShape : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		BRepMAT2d_DataMapIteratorOfDataMapOfBasicEltShape();
		%feature("autodoc", "1");
		BRepMAT2d_DataMapIteratorOfDataMapOfBasicEltShape(const BRepMAT2d_DataMapOfBasicEltShape &aMap);
		%feature("autodoc", "1");
		void Initialize(const BRepMAT2d_DataMapOfBasicEltShape &aMap);
		%feature("autodoc", "1");
		const Handle_MAT_BasicElt & Key() const;
		%feature("autodoc", "1");
		const TopoDS_Shape & Value() const;

};
%extend BRepMAT2d_DataMapIteratorOfDataMapOfBasicEltShape {
	~BRepMAT2d_DataMapIteratorOfDataMapOfBasicEltShape() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of BRepMAT2d_DataMapIteratorOfDataMapOfBasicEltShape\n");}
	}
};

%nodefaultctor BRepMAT2d_DataMapNodeOfDataMapOfBasicEltShape;
class BRepMAT2d_DataMapNodeOfDataMapOfBasicEltShape : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BRepMAT2d_DataMapNodeOfDataMapOfBasicEltShape(const Handle_MAT_BasicElt &K, const TopoDS_Shape &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Handle_MAT_BasicElt & Key() const;
		%feature("autodoc", "1");
		TopoDS_Shape & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepMAT2d_DataMapNodeOfDataMapOfBasicEltShape {
	Handle_BRepMAT2d_DataMapNodeOfDataMapOfBasicEltShape GetHandle() {
	return *(Handle_BRepMAT2d_DataMapNodeOfDataMapOfBasicEltShape*) &$self;
	}
};
%extend BRepMAT2d_DataMapNodeOfDataMapOfBasicEltShape {
	~BRepMAT2d_DataMapNodeOfDataMapOfBasicEltShape() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of BRepMAT2d_DataMapNodeOfDataMapOfBasicEltShape\n");}
	}
};

%nodefaultctor BRepMAT2d_DataMapOfBasicEltShape;
class BRepMAT2d_DataMapOfBasicEltShape : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		BRepMAT2d_DataMapOfBasicEltShape(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		BRepMAT2d_DataMapOfBasicEltShape & Assign(const BRepMAT2d_DataMapOfBasicEltShape &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Handle_MAT_BasicElt &K, const TopoDS_Shape &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Handle_MAT_BasicElt &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Handle_MAT_BasicElt &K);
		%feature("autodoc", "1");
		const TopoDS_Shape & Find(const Handle_MAT_BasicElt &K) const;
		%feature("autodoc", "1");
		const TopoDS_Shape & operator()(const Handle_MAT_BasicElt &K) const;
		%feature("autodoc", "1");
		TopoDS_Shape & ChangeFind(const Handle_MAT_BasicElt &K);
		%feature("autodoc", "1");
		TopoDS_Shape & operator()(const Handle_MAT_BasicElt &K);

};
%extend BRepMAT2d_DataMapOfBasicEltShape {
	~BRepMAT2d_DataMapOfBasicEltShape() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of BRepMAT2d_DataMapOfBasicEltShape\n");}
	}
};

%nodefaultctor BRepMAT2d_LinkTopoBilo;
class BRepMAT2d_LinkTopoBilo {
	public:
		%feature("autodoc", "1");
		BRepMAT2d_LinkTopoBilo();
		%feature("autodoc", "1");
		BRepMAT2d_LinkTopoBilo(const BRepMAT2d_Explorer &Explo, const BRepMAT2d_BisectingLocus &BiLo);
		%feature("autodoc", "1");
		void Perform(const BRepMAT2d_Explorer &Explo, const BRepMAT2d_BisectingLocus &BiLo);
		%feature("autodoc", "1");
		void Init(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		Standard_Boolean More();
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		Handle_MAT_BasicElt Value() const;
		%feature("autodoc", "1");
		TopoDS_Shape GeneratingShape(const Handle_MAT_BasicElt &aBE) const;

};
%extend BRepMAT2d_LinkTopoBilo {
	~BRepMAT2d_LinkTopoBilo() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of BRepMAT2d_LinkTopoBilo\n");}
	}
};

%nodefaultctor BRepMAT2d_Explorer;
class BRepMAT2d_Explorer {
	public:
		%feature("autodoc", "1");
		BRepMAT2d_Explorer();
		%feature("autodoc", "1");
		BRepMAT2d_Explorer(const TopoDS_Face &aFace);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Perform(const TopoDS_Face &aFace);
		%feature("autodoc", "1");
		Standard_Integer NumberOfContours() const;
		%feature("autodoc", "1");
		Standard_Integer NumberOfCurves(const Standard_Integer IndexContour) const;
		%feature("autodoc", "1");
		void Init(const Standard_Integer IndexContour);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		Handle_Geom2d_Curve Value() const;
		%feature("autodoc", "1");
		TopoDS_Shape Shape() const;
		%feature("autodoc", "1");
		const TColGeom2d_SequenceOfCurve & Contour(const Standard_Integer IndexContour) const;
		%feature("autodoc", "1");
		Standard_Boolean IsModified(const TopoDS_Shape &aShape) const;
		%feature("autodoc", "1");
		TopoDS_Shape ModifiedShape(const TopoDS_Shape &aShape) const;
		%feature("autodoc", "1");
		const MAT2d_SequenceOfBoolean & GetIsClosed() const;

};
%extend BRepMAT2d_Explorer {
	~BRepMAT2d_Explorer() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of BRepMAT2d_Explorer\n");}
	}
};