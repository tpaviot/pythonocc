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
%module IntPoly

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


%include IntPoly_dependencies.i


%include IntPoly_headers.i




%nodefaultctor Handle_IntPoly_IndexedMapNodeOfIndexedMapOfPnt2d;
class Handle_IntPoly_IndexedMapNodeOfIndexedMapOfPnt2d : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_IntPoly_IndexedMapNodeOfIndexedMapOfPnt2d();
		%feature("autodoc", "1");
		Handle_IntPoly_IndexedMapNodeOfIndexedMapOfPnt2d(const Handle_IntPoly_IndexedMapNodeOfIndexedMapOfPnt2d &aHandle);
		%feature("autodoc", "1");
		Handle_IntPoly_IndexedMapNodeOfIndexedMapOfPnt2d(const IntPoly_IndexedMapNodeOfIndexedMapOfPnt2d *anItem);
		%feature("autodoc", "1");
		Handle_IntPoly_IndexedMapNodeOfIndexedMapOfPnt2d const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IntPoly_IndexedMapNodeOfIndexedMapOfPnt2d {
	IntPoly_IndexedMapNodeOfIndexedMapOfPnt2d* GetObject() {
	return (IntPoly_IndexedMapNodeOfIndexedMapOfPnt2d*)$self->Access();
	}
};
%extend Handle_IntPoly_IndexedMapNodeOfIndexedMapOfPnt2d {
	~Handle_IntPoly_IndexedMapNodeOfIndexedMapOfPnt2d() {
	printf("Call custom destructor for instance of Handle_IntPoly_IndexedMapNodeOfIndexedMapOfPnt2d\n");
	}
};

%nodefaultctor Handle_IntPoly_SequenceNodeOfSequenceOfSequenceOfPnt2d;
class Handle_IntPoly_SequenceNodeOfSequenceOfSequenceOfPnt2d : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_IntPoly_SequenceNodeOfSequenceOfSequenceOfPnt2d();
		%feature("autodoc", "1");
		Handle_IntPoly_SequenceNodeOfSequenceOfSequenceOfPnt2d(const Handle_IntPoly_SequenceNodeOfSequenceOfSequenceOfPnt2d &aHandle);
		%feature("autodoc", "1");
		Handle_IntPoly_SequenceNodeOfSequenceOfSequenceOfPnt2d(const IntPoly_SequenceNodeOfSequenceOfSequenceOfPnt2d *anItem);
		%feature("autodoc", "1");
		Handle_IntPoly_SequenceNodeOfSequenceOfSequenceOfPnt2d const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IntPoly_SequenceNodeOfSequenceOfSequenceOfPnt2d {
	IntPoly_SequenceNodeOfSequenceOfSequenceOfPnt2d* GetObject() {
	return (IntPoly_SequenceNodeOfSequenceOfSequenceOfPnt2d*)$self->Access();
	}
};
%extend Handle_IntPoly_SequenceNodeOfSequenceOfSequenceOfPnt2d {
	~Handle_IntPoly_SequenceNodeOfSequenceOfSequenceOfPnt2d() {
	printf("Call custom destructor for instance of Handle_IntPoly_SequenceNodeOfSequenceOfSequenceOfPnt2d\n");
	}
};

%nodefaultctor Handle_IntPoly_IndexedMapNodeOfIndexedMapOfPnt;
class Handle_IntPoly_IndexedMapNodeOfIndexedMapOfPnt : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_IntPoly_IndexedMapNodeOfIndexedMapOfPnt();
		%feature("autodoc", "1");
		Handle_IntPoly_IndexedMapNodeOfIndexedMapOfPnt(const Handle_IntPoly_IndexedMapNodeOfIndexedMapOfPnt &aHandle);
		%feature("autodoc", "1");
		Handle_IntPoly_IndexedMapNodeOfIndexedMapOfPnt(const IntPoly_IndexedMapNodeOfIndexedMapOfPnt *anItem);
		%feature("autodoc", "1");
		Handle_IntPoly_IndexedMapNodeOfIndexedMapOfPnt const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IntPoly_IndexedMapNodeOfIndexedMapOfPnt {
	IntPoly_IndexedMapNodeOfIndexedMapOfPnt* GetObject() {
	return (IntPoly_IndexedMapNodeOfIndexedMapOfPnt*)$self->Access();
	}
};
%extend Handle_IntPoly_IndexedMapNodeOfIndexedMapOfPnt {
	~Handle_IntPoly_IndexedMapNodeOfIndexedMapOfPnt() {
	printf("Call custom destructor for instance of Handle_IntPoly_IndexedMapNodeOfIndexedMapOfPnt\n");
	}
};

%nodefaultctor Handle_IntPoly_SequenceNodeOfSequenceOfSequenceOfPnt;
class Handle_IntPoly_SequenceNodeOfSequenceOfSequenceOfPnt : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_IntPoly_SequenceNodeOfSequenceOfSequenceOfPnt();
		%feature("autodoc", "1");
		Handle_IntPoly_SequenceNodeOfSequenceOfSequenceOfPnt(const Handle_IntPoly_SequenceNodeOfSequenceOfSequenceOfPnt &aHandle);
		%feature("autodoc", "1");
		Handle_IntPoly_SequenceNodeOfSequenceOfSequenceOfPnt(const IntPoly_SequenceNodeOfSequenceOfSequenceOfPnt *anItem);
		%feature("autodoc", "1");
		Handle_IntPoly_SequenceNodeOfSequenceOfSequenceOfPnt const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IntPoly_SequenceNodeOfSequenceOfSequenceOfPnt {
	IntPoly_SequenceNodeOfSequenceOfSequenceOfPnt* GetObject() {
	return (IntPoly_SequenceNodeOfSequenceOfSequenceOfPnt*)$self->Access();
	}
};
%extend Handle_IntPoly_SequenceNodeOfSequenceOfSequenceOfPnt {
	~Handle_IntPoly_SequenceNodeOfSequenceOfSequenceOfPnt() {
	printf("Call custom destructor for instance of Handle_IntPoly_SequenceNodeOfSequenceOfSequenceOfPnt\n");
	}
};

%nodefaultctor IntPoly_SequenceOfSequenceOfPnt2d;
class IntPoly_SequenceOfSequenceOfPnt2d : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		IntPoly_SequenceOfSequenceOfPnt2d();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~IntPoly_SequenceOfSequenceOfPnt2d();
		%feature("autodoc", "1");
		const IntPoly_SequenceOfSequenceOfPnt2d & Assign(const IntPoly_SequenceOfSequenceOfPnt2d &Other);
		%feature("autodoc", "1");
		void Append(const TColgp_SequenceOfPnt2d &T);
		%feature("autodoc", "1");
		void Append(IntPoly_SequenceOfSequenceOfPnt2d & S);
		%feature("autodoc", "1");
		void Prepend(const TColgp_SequenceOfPnt2d &T);
		%feature("autodoc", "1");
		void Prepend(IntPoly_SequenceOfSequenceOfPnt2d & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const TColgp_SequenceOfPnt2d &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, IntPoly_SequenceOfSequenceOfPnt2d & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const TColgp_SequenceOfPnt2d &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, IntPoly_SequenceOfSequenceOfPnt2d & S);
		%feature("autodoc", "1");
		const TColgp_SequenceOfPnt2d & First() const;
		%feature("autodoc", "1");
		const TColgp_SequenceOfPnt2d & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, IntPoly_SequenceOfSequenceOfPnt2d & S);
		%feature("autodoc", "1");
		const TColgp_SequenceOfPnt2d & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const TColgp_SequenceOfPnt2d & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const TColgp_SequenceOfPnt2d &I);
		%feature("autodoc", "1");
		TColgp_SequenceOfPnt2d & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		TColgp_SequenceOfPnt2d & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};

%nodefaultctor IntPoly_PlaneSection;
class IntPoly_PlaneSection {
	public:
		%feature("autodoc", "1");
		~IntPoly_PlaneSection();
		%feature("autodoc", "1");
		IntPoly_PlaneSection();
		%feature("autodoc", "1");
		IntPoly_PlaneSection(const TopoDS_Shape &S, const gp_Pln &P);
		%feature("autodoc", "1");
		void Section();
		%feature("autodoc", "1");
		Standard_Boolean Intersect(const gp_Pnt &Point1, const gp_Pnt &Point2, const gp_Pnt &Point3, gp_Pnt2d & OutPoint1, gp_Pnt2d & OutPoint2);
		%feature("autodoc", "1");
		void Insert(const gp_Pnt2d &OldPnt, const gp_Pnt2d &ComPnt, const gp_Pnt2d &NewPnt);
		%feature("autodoc", "1");
		Standard_Integer Concat(const gp_Pnt2d &BegPnt, const gp_Pnt2d &EndPnt, gp_Pnt2d & OutPnt);
		%feature("autodoc", "1");
		void ConcatSection(TColgp_SequenceOfPnt2d & Section, const Standard_Integer NbSection, const Standard_Integer Index);
		%feature("autodoc", "1");
		void ForwConstruction(const gp_Pnt2d &Point);
		%feature("autodoc", "1");
		void PrevConstruction(const gp_Pnt2d &Point);
		%feature("autodoc", "1");
		Standard_Integer NbEdges();
		%feature("autodoc", "1");
		TopoDS_Edge Edge(const Standard_Integer Index);

};

%nodefaultctor IntPoly_IndexedMapNodeOfIndexedMapOfPnt;
class IntPoly_IndexedMapNodeOfIndexedMapOfPnt : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		IntPoly_IndexedMapNodeOfIndexedMapOfPnt(const gp_Pnt &K1, const Standard_Integer K2, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
		%feature("autodoc", "1");
		gp_Pnt & Key1() const;
		%feature("autodoc", "1");
		Standard_Integer & Key2() const;
		%feature("autodoc", "1");
		TCollection_MapNodePtr & Next2() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IntPoly_IndexedMapNodeOfIndexedMapOfPnt {
	Handle_IntPoly_IndexedMapNodeOfIndexedMapOfPnt GetHandle() {
	return *(Handle_IntPoly_IndexedMapNodeOfIndexedMapOfPnt*) &$self;
	}
};
%extend IntPoly_IndexedMapNodeOfIndexedMapOfPnt {
	~IntPoly_IndexedMapNodeOfIndexedMapOfPnt() {
	printf("Call custom destructor for instance of IntPoly_IndexedMapNodeOfIndexedMapOfPnt\n");
	}
};

%nodefaultctor IntPoly_ShapeSection;
class IntPoly_ShapeSection {
	public:
		%feature("autodoc", "1");
		~IntPoly_ShapeSection();
		%feature("autodoc", "1");
		IntPoly_ShapeSection();
		%feature("autodoc", "1");
		IntPoly_ShapeSection(const TopoDS_Shape &S1, const TopoDS_Shape &S2);
		%feature("autodoc", "1");
		void Section();
		%feature("autodoc", "1");
		void Explore();
		%feature("autodoc", "1");
		Standard_Boolean Intersect(const gp_Pnt &S1, const gp_Pnt &S2, const gp_Pnt &S3, const gp_Vec &OS1, const gp_Vec &VS0, const gp_Vec &V1, const gp_Vec &V2, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const gp_Pnt &Pt1, const gp_Pnt &Pt2);
		%feature("autodoc", "1");
		Standard_Boolean IsInside(const gp_Pnt &P, const gp_Pnt &P1, const gp_Pnt &P2, const gp_Pnt &P3, const gp_Vec &N0);
		%feature("autodoc", "1");
		void InsertInMap();
		%feature("autodoc", "1");
		void Insert(const gp_Pnt &OldPnt, const gp_Pnt &ComPnt, const gp_Pnt &NewPnt);
		%feature("autodoc", "1");
		Standard_Integer Concat(const gp_Pnt &BegPnt, const gp_Pnt &EndPnt, gp_Pnt & OutPnt);
		%feature("autodoc", "1");
		void ConcatSection(TColgp_SequenceOfPnt & Section, const Standard_Integer NbSection, const Standard_Integer Index);
		%feature("autodoc", "1");
		void ForwConstruction(const gp_Pnt &Point);
		%feature("autodoc", "1");
		void PrevConstruction(const gp_Pnt &Point);
		%feature("autodoc", "1");
		Standard_Integer NbEdges();
		%feature("autodoc", "1");
		TopoDS_Edge Edge(const Standard_Integer Index);

};

%nodefaultctor IntPoly_PntHasher;
class IntPoly_PntHasher {
	public:
		%feature("autodoc", "1");
		~IntPoly_PntHasher();
		%feature("autodoc", "1");
		IntPoly_PntHasher();
		%feature("autodoc", "1");
		Standard_Integer HashCode(const gp_Pnt &Point, const Standard_Integer upper);
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const gp_Pnt &Point1, const gp_Pnt &Point2);

};

%nodefaultctor IntPoly_SequenceOfSequenceOfPnt;
class IntPoly_SequenceOfSequenceOfPnt : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		IntPoly_SequenceOfSequenceOfPnt();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~IntPoly_SequenceOfSequenceOfPnt();
		%feature("autodoc", "1");
		const IntPoly_SequenceOfSequenceOfPnt & Assign(const IntPoly_SequenceOfSequenceOfPnt &Other);
		%feature("autodoc", "1");
		void Append(const TColgp_SequenceOfPnt &T);
		%feature("autodoc", "1");
		void Append(IntPoly_SequenceOfSequenceOfPnt & S);
		%feature("autodoc", "1");
		void Prepend(const TColgp_SequenceOfPnt &T);
		%feature("autodoc", "1");
		void Prepend(IntPoly_SequenceOfSequenceOfPnt & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const TColgp_SequenceOfPnt &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, IntPoly_SequenceOfSequenceOfPnt & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const TColgp_SequenceOfPnt &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, IntPoly_SequenceOfSequenceOfPnt & S);
		%feature("autodoc", "1");
		const TColgp_SequenceOfPnt & First() const;
		%feature("autodoc", "1");
		const TColgp_SequenceOfPnt & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, IntPoly_SequenceOfSequenceOfPnt & S);
		%feature("autodoc", "1");
		const TColgp_SequenceOfPnt & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const TColgp_SequenceOfPnt & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const TColgp_SequenceOfPnt &I);
		%feature("autodoc", "1");
		TColgp_SequenceOfPnt & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		TColgp_SequenceOfPnt & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};

%nodefaultctor IntPoly_SequenceNodeOfSequenceOfSequenceOfPnt2d;
class IntPoly_SequenceNodeOfSequenceOfSequenceOfPnt2d : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		IntPoly_SequenceNodeOfSequenceOfSequenceOfPnt2d(const TColgp_SequenceOfPnt2d &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		TColgp_SequenceOfPnt2d & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IntPoly_SequenceNodeOfSequenceOfSequenceOfPnt2d {
	Handle_IntPoly_SequenceNodeOfSequenceOfSequenceOfPnt2d GetHandle() {
	return *(Handle_IntPoly_SequenceNodeOfSequenceOfSequenceOfPnt2d*) &$self;
	}
};
%extend IntPoly_SequenceNodeOfSequenceOfSequenceOfPnt2d {
	~IntPoly_SequenceNodeOfSequenceOfSequenceOfPnt2d() {
	printf("Call custom destructor for instance of IntPoly_SequenceNodeOfSequenceOfSequenceOfPnt2d\n");
	}
};

%nodefaultctor IntPoly_IndexedMapOfPnt2d;
class IntPoly_IndexedMapOfPnt2d : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		IntPoly_IndexedMapOfPnt2d(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		IntPoly_IndexedMapOfPnt2d & Assign(const IntPoly_IndexedMapOfPnt2d &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~IntPoly_IndexedMapOfPnt2d();
		%feature("autodoc", "1");
		Standard_Integer Add(const gp_Pnt2d &K);
		%feature("autodoc", "1");
		void Substitute(const Standard_Integer I, const gp_Pnt2d &K);
		%feature("autodoc", "1");
		void RemoveLast();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const gp_Pnt2d &K) const;
		%feature("autodoc", "1");
		const gp_Pnt2d & FindKey(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const gp_Pnt2d & operator()(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Standard_Integer FindIndex(const gp_Pnt2d &K) const;

};

%nodefaultctor IntPoly_IndexedMapNodeOfIndexedMapOfPnt2d;
class IntPoly_IndexedMapNodeOfIndexedMapOfPnt2d : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		IntPoly_IndexedMapNodeOfIndexedMapOfPnt2d(const gp_Pnt2d &K1, const Standard_Integer K2, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
		%feature("autodoc", "1");
		gp_Pnt2d & Key1() const;
		%feature("autodoc", "1");
		Standard_Integer & Key2() const;
		%feature("autodoc", "1");
		TCollection_MapNodePtr & Next2() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IntPoly_IndexedMapNodeOfIndexedMapOfPnt2d {
	Handle_IntPoly_IndexedMapNodeOfIndexedMapOfPnt2d GetHandle() {
	return *(Handle_IntPoly_IndexedMapNodeOfIndexedMapOfPnt2d*) &$self;
	}
};
%extend IntPoly_IndexedMapNodeOfIndexedMapOfPnt2d {
	~IntPoly_IndexedMapNodeOfIndexedMapOfPnt2d() {
	printf("Call custom destructor for instance of IntPoly_IndexedMapNodeOfIndexedMapOfPnt2d\n");
	}
};

%nodefaultctor IntPoly_SequenceNodeOfSequenceOfSequenceOfPnt;
class IntPoly_SequenceNodeOfSequenceOfSequenceOfPnt : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		IntPoly_SequenceNodeOfSequenceOfSequenceOfPnt(const TColgp_SequenceOfPnt &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		TColgp_SequenceOfPnt & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IntPoly_SequenceNodeOfSequenceOfSequenceOfPnt {
	Handle_IntPoly_SequenceNodeOfSequenceOfSequenceOfPnt GetHandle() {
	return *(Handle_IntPoly_SequenceNodeOfSequenceOfSequenceOfPnt*) &$self;
	}
};
%extend IntPoly_SequenceNodeOfSequenceOfSequenceOfPnt {
	~IntPoly_SequenceNodeOfSequenceOfSequenceOfPnt() {
	printf("Call custom destructor for instance of IntPoly_SequenceNodeOfSequenceOfSequenceOfPnt\n");
	}
};

%nodefaultctor IntPoly_IndexedMapOfPnt;
class IntPoly_IndexedMapOfPnt : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		IntPoly_IndexedMapOfPnt(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		IntPoly_IndexedMapOfPnt & Assign(const IntPoly_IndexedMapOfPnt &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~IntPoly_IndexedMapOfPnt();
		%feature("autodoc", "1");
		Standard_Integer Add(const gp_Pnt &K);
		%feature("autodoc", "1");
		void Substitute(const Standard_Integer I, const gp_Pnt &K);
		%feature("autodoc", "1");
		void RemoveLast();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const gp_Pnt &K) const;
		%feature("autodoc", "1");
		const gp_Pnt & FindKey(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const gp_Pnt & operator()(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Standard_Integer FindIndex(const gp_Pnt &K) const;

};

%nodefaultctor IntPoly_Pnt2dHasher;
class IntPoly_Pnt2dHasher {
	public:
		%feature("autodoc", "1");
		~IntPoly_Pnt2dHasher();
		%feature("autodoc", "1");
		IntPoly_Pnt2dHasher();
		%feature("autodoc", "1");
		Standard_Integer HashCode(const gp_Pnt2d &Point, const Standard_Integer upper);
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const gp_Pnt2d &Point1, const gp_Pnt2d &Point2);

};