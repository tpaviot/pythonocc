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
%module BOPTColStd

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


%include BOPTColStd_dependencies.i


%include BOPTColStd_headers.i




%nodefaultctor Handle_BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedMapOfInteger;
class Handle_BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedMapOfInteger : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedMapOfInteger();
		%feature("autodoc", "1");
		Handle_BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedMapOfInteger();
		%feature("autodoc", "1");
		Handle_BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedMapOfInteger(const Handle_BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedMapOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedMapOfInteger(const BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedMapOfInteger *anItem);
		%feature("autodoc", "1");
		Handle_BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedMapOfInteger const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedMapOfInteger {
	BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedMapOfInteger* GetObject() {
	return (BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedMapOfInteger*)$self->Access();
	}
};

%nodefaultctor Handle_BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerInteger;
class Handle_BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerInteger : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerInteger();
		%feature("autodoc", "1");
		Handle_BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerInteger();
		%feature("autodoc", "1");
		Handle_BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerInteger(const Handle_BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerInteger &aHandle);
		%feature("autodoc", "1");
		Handle_BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerInteger(const BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerInteger *anItem);
		%feature("autodoc", "1");
		Handle_BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerInteger const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerInteger {
	BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerInteger* GetObject() {
	return (BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerInteger*)$self->Access();
	}
};

%nodefaultctor Handle_BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfSWRInteger;
class Handle_BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfSWRInteger : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfSWRInteger();
		%feature("autodoc", "1");
		Handle_BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfSWRInteger();
		%feature("autodoc", "1");
		Handle_BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfSWRInteger(const Handle_BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfSWRInteger &aHandle);
		%feature("autodoc", "1");
		Handle_BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfSWRInteger(const BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfSWRInteger *anItem);
		%feature("autodoc", "1");
		Handle_BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfSWRInteger const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfSWRInteger {
	BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfSWRInteger* GetObject() {
	return (BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfSWRInteger*)$self->Access();
	}
};

%nodefaultctor Handle_BOPTColStd_ListNodeOfListOfListOfShape;
class Handle_BOPTColStd_ListNodeOfListOfListOfShape : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_BOPTColStd_ListNodeOfListOfListOfShape();
		%feature("autodoc", "1");
		Handle_BOPTColStd_ListNodeOfListOfListOfShape();
		%feature("autodoc", "1");
		Handle_BOPTColStd_ListNodeOfListOfListOfShape(const Handle_BOPTColStd_ListNodeOfListOfListOfShape &aHandle);
		%feature("autodoc", "1");
		Handle_BOPTColStd_ListNodeOfListOfListOfShape(const BOPTColStd_ListNodeOfListOfListOfShape *anItem);
		%feature("autodoc", "1");
		Handle_BOPTColStd_ListNodeOfListOfListOfShape const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BOPTColStd_ListNodeOfListOfListOfShape {
	BOPTColStd_ListNodeOfListOfListOfShape* GetObject() {
	return (BOPTColStd_ListNodeOfListOfListOfShape*)$self->Access();
	}
};

%nodefaultctor BOPTColStd_IndexedDataMapOfIntegerInteger;
class BOPTColStd_IndexedDataMapOfIntegerInteger : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		BOPTColStd_IndexedDataMapOfIntegerInteger(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		BOPTColStd_IndexedDataMapOfIntegerInteger & Assign(const BOPTColStd_IndexedDataMapOfIntegerInteger &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~BOPTColStd_IndexedDataMapOfIntegerInteger();
		%feature("autodoc", "1");
		Standard_Integer Add(const Standard_Integer &K, const Standard_Integer &I);
		%feature("autodoc", "1");
		void Substitute(const Standard_Integer I, const Standard_Integer &K, const Standard_Integer &T);
		%feature("autodoc", "1");
		void RemoveLast();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		const Standard_Integer & FindKey(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const Standard_Integer & FindFromIndex(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const Standard_Integer & operator()(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Standard_Integer & ChangeFromIndex(const Standard_Integer I);
		%feature("autodoc", "1");
		Standard_Integer & operator()(const Standard_Integer I);
		%feature("autodoc", "1");
		Standard_Integer FindIndex(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		const Standard_Integer & FindFromKey(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Standard_Integer & ChangeFromKey(const Standard_Integer &K);

};

%nodefaultctor BOPTColStd_CArray1OfShape;
class BOPTColStd_CArray1OfShape {
	public:
		%feature("autodoc", "1");
		BOPTColStd_CArray1OfShape(const Standard_Integer Length=0, const Standard_Integer BlockLength=5);
		%feature("autodoc", "1");
		void Resize(const Standard_Integer theNewLength);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		~BOPTColStd_CArray1OfShape();
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		Standard_Integer FactLength() const;
		%feature("autodoc", "1");
		Standard_Integer Append(const TopoDS_Shape &Value);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		const TopoDS_Shape & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const TopoDS_Shape & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		TopoDS_Shape & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		TopoDS_Shape & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void SetBlockLength(const Standard_Integer aBL);
		%feature("autodoc", "1");
		Standard_Integer BlockLength() const;

};

%nodefaultctor BOPTColStd_IndexedDataMapOfIntegerIndexedMapOfInteger;
class BOPTColStd_IndexedDataMapOfIntegerIndexedMapOfInteger : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		BOPTColStd_IndexedDataMapOfIntegerIndexedMapOfInteger(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		BOPTColStd_IndexedDataMapOfIntegerIndexedMapOfInteger & Assign(const BOPTColStd_IndexedDataMapOfIntegerIndexedMapOfInteger &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~BOPTColStd_IndexedDataMapOfIntegerIndexedMapOfInteger();
		%feature("autodoc", "1");
		Standard_Integer Add(const Standard_Integer &K, const TColStd_IndexedMapOfInteger &I);
		%feature("autodoc", "1");
		void Substitute(const Standard_Integer I, const Standard_Integer &K, const TColStd_IndexedMapOfInteger &T);
		%feature("autodoc", "1");
		void RemoveLast();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		const Standard_Integer & FindKey(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const TColStd_IndexedMapOfInteger & FindFromIndex(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const TColStd_IndexedMapOfInteger & operator()(const Standard_Integer I) const;
		%feature("autodoc", "1");
		TColStd_IndexedMapOfInteger & ChangeFromIndex(const Standard_Integer I);
		%feature("autodoc", "1");
		TColStd_IndexedMapOfInteger & operator()(const Standard_Integer I);
		%feature("autodoc", "1");
		Standard_Integer FindIndex(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		const TColStd_IndexedMapOfInteger & FindFromKey(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		TColStd_IndexedMapOfInteger & ChangeFromKey(const Standard_Integer &K);

};

%nodefaultctor BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerInteger;
class BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerInteger : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerInteger(const Standard_Integer &K1, const Standard_Integer K2, const Standard_Integer &I, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
		%feature("autodoc", "1");
		Standard_Integer & Key1() const;
		%feature("autodoc", "1");
		Standard_Integer & Key2() const;
		%feature("autodoc", "1");
		TCollection_MapNodePtr & Next2() const;
		%feature("autodoc", "1");
		Standard_Integer & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerInteger();

};
%extend BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerInteger {
	Handle_BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerInteger GetHandle() {
	return *(Handle_BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerInteger*) &$self;
	}
};

%nodefaultctor BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfSWRInteger;
class BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfSWRInteger : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfSWRInteger(const BOPTColStd_ShapeWithRank &K1, const Standard_Integer K2, const Standard_Integer &I, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
		%feature("autodoc", "1");
		BOPTColStd_ShapeWithRank & Key1() const;
		%feature("autodoc", "1");
		Standard_Integer & Key2() const;
		%feature("autodoc", "1");
		TCollection_MapNodePtr & Next2() const;
		%feature("autodoc", "1");
		Standard_Integer & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfSWRInteger();

};
%extend BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfSWRInteger {
	Handle_BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfSWRInteger GetHandle() {
	return *(Handle_BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfSWRInteger*) &$self;
	}
};

%nodefaultctor BOPTColStd_CArray1OfPnt2d;
class BOPTColStd_CArray1OfPnt2d {
	public:
		%feature("autodoc", "1");
		BOPTColStd_CArray1OfPnt2d(const Standard_Integer Length=0, const Standard_Integer BlockLength=5);
		%feature("autodoc", "1");
		void Resize(const Standard_Integer theNewLength);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		~BOPTColStd_CArray1OfPnt2d();
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		Standard_Integer FactLength() const;
		%feature("autodoc", "1");
		Standard_Integer Append(const gp_Pnt2d &Value);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		const gp_Pnt2d & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const gp_Pnt2d & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		gp_Pnt2d & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		gp_Pnt2d & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void SetBlockLength(const Standard_Integer aBL);
		%feature("autodoc", "1");
		Standard_Integer BlockLength() const;

};

%nodefaultctor BOPTColStd_IndexedDataMapOfSWRInteger;
class BOPTColStd_IndexedDataMapOfSWRInteger : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		BOPTColStd_IndexedDataMapOfSWRInteger(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		BOPTColStd_IndexedDataMapOfSWRInteger & Assign(const BOPTColStd_IndexedDataMapOfSWRInteger &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~BOPTColStd_IndexedDataMapOfSWRInteger();
		%feature("autodoc", "1");
		Standard_Integer Add(const BOPTColStd_ShapeWithRank &K, const Standard_Integer &I);
		%feature("autodoc", "1");
		void Substitute(const Standard_Integer I, const BOPTColStd_ShapeWithRank &K, const Standard_Integer &T);
		%feature("autodoc", "1");
		void RemoveLast();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const BOPTColStd_ShapeWithRank &K) const;
		%feature("autodoc", "1");
		const BOPTColStd_ShapeWithRank & FindKey(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const Standard_Integer & FindFromIndex(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const Standard_Integer & operator()(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Standard_Integer & ChangeFromIndex(const Standard_Integer I);
		%feature("autodoc", "1");
		Standard_Integer & operator()(const Standard_Integer I);
		%feature("autodoc", "1");
		Standard_Integer FindIndex(const BOPTColStd_ShapeWithRank &K) const;
		%feature("autodoc", "1");
		const Standard_Integer & FindFromKey(const BOPTColStd_ShapeWithRank &K) const;
		%feature("autodoc", "1");
		Standard_Integer & ChangeFromKey(const BOPTColStd_ShapeWithRank &K);

};

%nodefaultctor BOPTColStd_ListIteratorOfListOfListOfShape;
class BOPTColStd_ListIteratorOfListOfListOfShape {
	public:
		%feature("autodoc", "1");
		~BOPTColStd_ListIteratorOfListOfListOfShape();
		%feature("autodoc", "1");
		BOPTColStd_ListIteratorOfListOfListOfShape();
		%feature("autodoc", "1");
		BOPTColStd_ListIteratorOfListOfListOfShape(const BOPTColStd_ListOfListOfShape &L);
		%feature("autodoc", "1");
		void Initialize(const BOPTColStd_ListOfListOfShape &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		TopTools_ListOfShape & Value() const;

};

%nodefaultctor BOPTColStd_ListOfListOfShape;
class BOPTColStd_ListOfListOfShape {
	public:
		%feature("autodoc", "1");
		BOPTColStd_ListOfListOfShape();
		%feature("autodoc", "1");
		void Assign(const BOPTColStd_ListOfListOfShape &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~BOPTColStd_ListOfListOfShape();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const TopTools_ListOfShape &I);
		%feature("autodoc", "1");
		void Prepend(const TopTools_ListOfShape &I, BOPTColStd_ListIteratorOfListOfListOfShape & theIt);
		%feature("autodoc", "1");
		void Prepend(BOPTColStd_ListOfListOfShape & Other);
		%feature("autodoc", "1");
		void Append(const TopTools_ListOfShape &I);
		%feature("autodoc", "1");
		void Append(const TopTools_ListOfShape &I, BOPTColStd_ListIteratorOfListOfListOfShape & theIt);
		%feature("autodoc", "1");
		void Append(BOPTColStd_ListOfListOfShape & Other);
		%feature("autodoc", "1");
		TopTools_ListOfShape & First() const;
		%feature("autodoc", "1");
		TopTools_ListOfShape & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(BOPTColStd_ListIteratorOfListOfListOfShape & It);
		%feature("autodoc", "1");
		void InsertBefore(const TopTools_ListOfShape &I, BOPTColStd_ListIteratorOfListOfListOfShape & It);
		%feature("autodoc", "1");
		void InsertBefore(BOPTColStd_ListOfListOfShape & Other, BOPTColStd_ListIteratorOfListOfListOfShape & It);
		%feature("autodoc", "1");
		void InsertAfter(const TopTools_ListOfShape &I, BOPTColStd_ListIteratorOfListOfListOfShape & It);
		%feature("autodoc", "1");
		void InsertAfter(BOPTColStd_ListOfListOfShape & Other, BOPTColStd_ListIteratorOfListOfListOfShape & It);

};

%nodefaultctor BOPTColStd_CArray1OfInteger;
class BOPTColStd_CArray1OfInteger {
	public:
		%feature("autodoc", "1");
		BOPTColStd_CArray1OfInteger(const Standard_Integer Length=0, const Standard_Integer BlockLength=5);
		%feature("autodoc", "1");
		void Resize(const Standard_Integer theNewLength);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		~BOPTColStd_CArray1OfInteger();
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		Standard_Integer FactLength() const;
		%feature("autodoc", "1");
		Standard_Integer Append(const Standard_Integer &Value);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		const Standard_Integer & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Standard_Integer & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Integer & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Standard_Integer & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void SetBlockLength(const Standard_Integer aBL);
		%feature("autodoc", "1");
		Standard_Integer BlockLength() const;

};

%nodefaultctor BOPTColStd_ListNodeOfListOfListOfShape;
class BOPTColStd_ListNodeOfListOfListOfShape : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BOPTColStd_ListNodeOfListOfListOfShape(const TopTools_ListOfShape &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopTools_ListOfShape & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BOPTColStd_ListNodeOfListOfListOfShape();

};
%extend BOPTColStd_ListNodeOfListOfListOfShape {
	Handle_BOPTColStd_ListNodeOfListOfListOfShape GetHandle() {
	return *(Handle_BOPTColStd_ListNodeOfListOfListOfShape*) &$self;
	}
};

%nodefaultctor BOPTColStd_Failure;
class BOPTColStd_Failure {
	public:
		%feature("autodoc", "1");
		~BOPTColStd_Failure();
		%feature("autodoc", "1");
		BOPTColStd_Failure(const char * aMessage);
		%feature("autodoc", "1");
		Standard_CString Message() const;

};

%nodefaultctor BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedMapOfInteger;
class BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedMapOfInteger : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedMapOfInteger(const Standard_Integer &K1, const Standard_Integer K2, const TColStd_IndexedMapOfInteger &I, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
		%feature("autodoc", "1");
		Standard_Integer & Key1() const;
		%feature("autodoc", "1");
		Standard_Integer & Key2() const;
		%feature("autodoc", "1");
		TCollection_MapNodePtr & Next2() const;
		%feature("autodoc", "1");
		TColStd_IndexedMapOfInteger & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedMapOfInteger();

};
%extend BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedMapOfInteger {
	Handle_BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedMapOfInteger GetHandle() {
	return *(Handle_BOPTColStd_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedMapOfInteger*) &$self;
	}
};

%nodefaultctor BOPTColStd_ShapeWithRank;
class BOPTColStd_ShapeWithRank {
	public:
		%feature("autodoc", "1");
		~BOPTColStd_ShapeWithRank();
		%feature("autodoc", "1");
		BOPTColStd_ShapeWithRank();
		%feature("autodoc", "1");
		void SetShape(const TopoDS_Shape &aS);
		%feature("autodoc", "1");
		void SetRank(const Standard_Integer aR);
		%feature("autodoc", "1");
		const TopoDS_Shape & Shape() const;
		%feature("autodoc", "1");
		Standard_Integer Rank() const;
		%feature("autodoc", "1");
		Standard_Integer HashCode(const Standard_Integer Upper) const;
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const BOPTColStd_ShapeWithRank &Other) const;

};

%nodefaultctor BOPTColStd_ShapeWithRankHasher;
class BOPTColStd_ShapeWithRankHasher {
	public:
		%feature("autodoc", "1");
		~BOPTColStd_ShapeWithRankHasher();
		%feature("autodoc", "1");
		BOPTColStd_ShapeWithRankHasher();
		%feature("autodoc", "1");
		Standard_Integer HashCode(const BOPTColStd_ShapeWithRank &SR, const Standard_Integer Upper);
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const BOPTColStd_ShapeWithRank &SR1, const BOPTColStd_ShapeWithRank &SR2);

};

%nodefaultctor BOPTColStd_Dump;
class BOPTColStd_Dump {
	public:
		%feature("autodoc", "1");
		~BOPTColStd_Dump();
		%feature("autodoc", "1");
		BOPTColStd_Dump();
		%feature("autodoc", "1");
		void PrintMessage(const TCollection_AsciiString &aMessage);
		%feature("autodoc", "1");
		void PrintMessage(const char * aMessage);

};