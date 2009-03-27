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
%module BooleanOperations

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


%include BooleanOperations_dependencies.i


%include BooleanOperations_headers.i

typedef BooleanOperations_ShapesDataStructure * BooleanOperations_PShapesDataStructure;
typedef BooleanOperations_ShapeAndInterferences * BooleanOperations_PShapeAndInterferences;

enum BooleanOperations_KindOfInterference {
	BooleanOperations_SurfaceSurface,
	BooleanOperations_EdgeSurface,
	BooleanOperations_VertexSurface,
	BooleanOperations_EdgeEdge,
	BooleanOperations_VertexEdge,
	BooleanOperations_VertexVertex,
	BooleanOperations_UnknownInterference,
	};

enum BooleanOperations_StateOfShape {
	BooleanOperations_IN,
	BooleanOperations_OUT,
	BooleanOperations_ON,
	BooleanOperations_UNKNOWN,
	BooleanOperations_INOROUT,
	BooleanOperations_INTERSECTED,
	};

enum BooleanOperations_KindOfIntersection {
	BooleanOperations_NoIntersection,
	BooleanOperations_TrueIntersection,
	BooleanOperations_SameDomain,
	};



%nodefaultctor Handle_BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeInteger;
class Handle_BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeInteger : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeInteger();
		%feature("autodoc", "1");
		Handle_BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeInteger(const Handle_BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeInteger &aHandle);
		%feature("autodoc", "1");
		Handle_BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeInteger(const BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeInteger *anItem);
		%feature("autodoc", "1");
		Handle_BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeInteger const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeInteger {
	BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeInteger* GetObject() {
	return (BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeInteger*)$self->Access();
	}
};
%extend Handle_BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeInteger {
	~Handle_BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeInteger\n");}
	}
};

%nodefaultctor Handle_BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeAncestorsSuccessors;
class Handle_BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeAncestorsSuccessors : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeAncestorsSuccessors();
		%feature("autodoc", "1");
		Handle_BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeAncestorsSuccessors(const Handle_BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeAncestorsSuccessors &aHandle);
		%feature("autodoc", "1");
		Handle_BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeAncestorsSuccessors(const BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeAncestorsSuccessors *anItem);
		%feature("autodoc", "1");
		Handle_BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeAncestorsSuccessors const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeAncestorsSuccessors {
	BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeAncestorsSuccessors* GetObject() {
	return (BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeAncestorsSuccessors*)$self->Access();
	}
};
%extend Handle_BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeAncestorsSuccessors {
	~Handle_BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeAncestorsSuccessors() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeAncestorsSuccessors\n");}
	}
};

%nodefaultctor BooleanOperations_ShapeAndInterferences;
class BooleanOperations_ShapeAndInterferences {
	public:
		%feature("autodoc", "1");
		BooleanOperations_ShapeAndInterferences();
		%feature("autodoc", "1");
		const TopoDS_Shape & GetShape() const;
		%feature("autodoc", "1");
		TopAbs_ShapeEnum GetShapeType() const;
		%feature("autodoc", "1");
		BooleanOperations_StateOfShape GetState() const;
		%feature("autodoc", "1");
		void SetState(const BooleanOperations_StateOfShape theState);
		%feature("autodoc", "1");
		const Bnd_Box & GetBoundingBox() const;
		%feature("autodoc", "1");
		Standard_Integer NumberOfAncestors() const;
		%feature("autodoc", "1");
		Standard_Integer NumberOfSuccessors() const;
		%feature("autodoc", "1");
		Standard_Integer GetAncestor(const Standard_Integer index) const;
		%feature("autodoc", "1");
		Standard_Integer GetSuccessor(const Standard_Integer index) const;
		%feature("autodoc", "1");
		void GetAncestors(Standard_Address & theArrayOfAncestors, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		void GetSuccessors(Standard_Address & theArrayOfSuccessors, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		TopAbs_Orientation GetOrientation(const Standard_Integer index) const;
		%feature("autodoc", "1");
		void GetOrientations(Standard_Address & theArrayOfOrientations, Standard_Integer &OutValue) const;

};
%extend BooleanOperations_ShapeAndInterferences {
	~BooleanOperations_ShapeAndInterferences() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of BooleanOperations_ShapeAndInterferences\n");}
	}
};

%nodefaultctor BooleanOperations_Explorer;
class BooleanOperations_Explorer {
	public:
		%feature("autodoc", "1");
		BooleanOperations_Explorer(const BooleanOperations_ShapesDataStructure &SDS);
		%feature("autodoc", "1");
		virtual		void Delete();
		%feature("autodoc", "1");
		virtual		void Init(const Standard_Integer aShape, const TopAbs_ShapeEnum TargetToFind, const TopAbs_ShapeEnum TargetToAvoid=TopAbs_SHAPE);
		%feature("autodoc", "1");
		virtual		void Next();
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer Current();
		%feature("autodoc", "1");
		virtual		void Dump(Standard_OStream & S) const;

};
%extend BooleanOperations_Explorer {
	~BooleanOperations_Explorer() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of BooleanOperations_Explorer\n");}
	}
};

%nodefaultctor BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeInteger;
class BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeInteger : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeInteger(const TopoDS_Shape &K1, const Standard_Integer K2, const Standard_Integer &I, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
		%feature("autodoc", "1");
		TopoDS_Shape & Key1() const;
		%feature("autodoc", "1");
		Standard_Integer & Key2() const;
		%feature("autodoc", "1");
		TCollection_MapNodePtr & Next2() const;
		%feature("autodoc", "1");
		Standard_Integer & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeInteger {
	Handle_BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeInteger GetHandle() {
	return *(Handle_BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeInteger*) &$self;
	}
};
%extend BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeInteger {
	~BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeInteger\n");}
	}
};

%nodefaultctor BooleanOperations_OnceExplorer;
class BooleanOperations_OnceExplorer : public BooleanOperations_Explorer {
	public:
		%feature("autodoc", "1");
		BooleanOperations_OnceExplorer(const BooleanOperations_ShapesDataStructure &SDS);
		%feature("autodoc", "1");
		virtual		void Delete();
		%feature("autodoc", "1");
		virtual		void Init(const Standard_Integer aShape, const TopAbs_ShapeEnum TargetToFind, const TopAbs_ShapeEnum TargetToAvoid=TopAbs_SHAPE);
		%feature("autodoc", "1");
		virtual		void Next();
		%feature("autodoc", "1");
		virtual		Standard_Integer Current();
		%feature("autodoc", "1");
		virtual		void Dump(Standard_OStream & S) const;

};
%extend BooleanOperations_OnceExplorer {
	~BooleanOperations_OnceExplorer() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of BooleanOperations_OnceExplorer\n");}
	}
};

%nodefaultctor BooleanOperations_ShapesDataStructure;
class BooleanOperations_ShapesDataStructure {
	public:
		%feature("autodoc", "1");
		BooleanOperations_ShapesDataStructure();
		%feature("autodoc", "1");
		BooleanOperations_ShapesDataStructure(const TopoDS_Shape &Object, const TopoDS_Shape &Tool);
		%feature("autodoc", "1");
		void InsertShapeAndAncestorsSuccessors(const TopoDS_Shape &S, const BooleanOperations_AncestorsSeqAndSuccessorsSeq &AncSuc, const Standard_Integer shift=0);
		%feature("autodoc", "1");
		void FillIndexedMapOfShapesAncestorsAndSuccessors(const TopoDS_Shape &Sha, BooleanOperations_IndexedDataMapOfShapeAncestorsSuccessors & IndDatMap) const;
		%feature("autodoc", "1");
		void FindSubshapes(const TopoDS_Shape &Sha, Standard_Integer &OutValue, BooleanOperations_IndexedDataMapOfShapeAncestorsSuccessors & IndDatMap) const;
		%feature("autodoc", "1");
		void Dump(Standard_OStream & S) const;
		%feature("autodoc", "1");
		void LightDump(Standard_OStream & S) const;
		%feature("autodoc", "1");
		const TopoDS_Shape & GetShape(const Standard_Integer index) const;
		%feature("autodoc", "1");
		const TopoDS_Shape & Shape(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		TopAbs_ShapeEnum GetShapeType(const Standard_Integer index) const;
		%feature("autodoc", "1");
		const Bnd_Box & GetBoundingBox(const Standard_Integer index) const;
		%feature("autodoc", "1");
		BooleanOperations_StateOfShape GetState(const Standard_Integer index) const;
		%feature("autodoc", "1");
		void SetState(const Standard_Integer index, const BooleanOperations_StateOfShape theState);
		%feature("autodoc", "1");
		Standard_Integer GetAncestor(const Standard_Integer index, const Standard_Integer ancestorNumber) const;
		%feature("autodoc", "1");
		Standard_Integer GetSuccessor(const Standard_Integer index, const Standard_Integer successorNumber) const;
		%feature("autodoc", "1");
		void GetAncestors(const Standard_Integer index, Standard_Address & theArrayOfAncestors, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		void GetSuccessors(const Standard_Integer index, Standard_Address & theArrayOfSuccessors, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		Standard_Integer NumberOfAncestors(const Standard_Integer index) const;
		%feature("autodoc", "1");
		Standard_Integer NumberOfSuccessors(const Standard_Integer index) const;
		%feature("autodoc", "1");
		Standard_Integer NumberOfShapesOfTheTool() const;
		%feature("autodoc", "1");
		Standard_Integer NumberOfShapesOfTheObject() const;
		%feature("autodoc", "1");
		Standard_Integer NumberOfSourceShapes() const;
		%feature("autodoc", "1");
		Standard_Boolean IsNewShape(const Standard_Integer index) const;
		%feature("autodoc", "1");
		Standard_Integer NumberOfInsertedShapes() const;
		%feature("autodoc", "1");
		Standard_Integer NumberOfNewShapes() const;
		%feature("autodoc", "1");
		const BooleanOperations_ShapeAndInterferences & Line(const Standard_Integer index) const;
		%feature("autodoc", "1");
		const BooleanOperations_IndexedDataMapOfShapeInteger & ShapeIndexMap(const Standard_Integer iRank) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer ShapeIndex(const TopoDS_Shape &aS, const Standard_Integer iRank) const;
		%feature("autodoc", "1");
		const TopoDS_Shape & Object() const;
		%feature("autodoc", "1");
		const TopoDS_Shape & Tool() const;
		%feature("autodoc", "1");
		void ObjectRange(Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		void ToolRange(Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer Rank(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		Standard_Integer RefEdge(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		Standard_Integer NbEdges() const;
		%feature("autodoc", "1");
		TopAbs_Orientation GetOrientation(const Standard_Integer index, const Standard_Integer successorNumber) const;
		%feature("autodoc", "1");
		void GetOrientations(const Standard_Integer index, Standard_Address & theArrayOfOrientations, Standard_Integer &OutValue) const;

};
%extend BooleanOperations_ShapesDataStructure {
	~BooleanOperations_ShapesDataStructure() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of BooleanOperations_ShapesDataStructure\n");}
	}
};

%nodefaultctor BooleanOperations_AncestorsSeqAndSuccessorsSeq;
class BooleanOperations_AncestorsSeqAndSuccessorsSeq {
	public:
		%feature("autodoc", "1");
		BooleanOperations_AncestorsSeqAndSuccessorsSeq();
		%feature("autodoc", "1");
		void Dump() const;
		%feature("autodoc", "1");
		Standard_Integer GetAncestor(const Standard_Integer AncestorIndex) const;
		%feature("autodoc", "1");
		Standard_Integer GetSuccessor(const Standard_Integer SuccessorIndex) const;
		%feature("autodoc", "1");
		TopAbs_Orientation GetOrientation(const Standard_Integer OrientationIndex) const;
		%feature("autodoc", "1");
		Standard_Integer NumberOfAncestors() const;
		%feature("autodoc", "1");
		Standard_Integer NumberOfSuccessors() const;
		%feature("autodoc", "1");
		void SetNewAncestor(const Standard_Integer AncestorNumber);
		%feature("autodoc", "1");
		void SetNewSuccessor(const Standard_Integer SuccessorNumber);
		%feature("autodoc", "1");
		void SetNewOrientation(const TopAbs_Orientation OrientationNumber);

};
%extend BooleanOperations_AncestorsSeqAndSuccessorsSeq {
	~BooleanOperations_AncestorsSeqAndSuccessorsSeq() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of BooleanOperations_AncestorsSeqAndSuccessorsSeq\n");}
	}
};

%nodefaultctor BooleanOperations_AncestorsAndSuccessors;
class BooleanOperations_AncestorsAndSuccessors {
	public:
		%feature("autodoc", "1");
		BooleanOperations_AncestorsAndSuccessors();
		%feature("autodoc", "1");
		BooleanOperations_AncestorsAndSuccessors(const BooleanOperations_AncestorsSeqAndSuccessorsSeq &AncSuccessors, const Standard_Integer shift);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		void Dump() const;
		%feature("autodoc", "1");
		Standard_Integer GetAncestor(const Standard_Integer AncestorIndex) const;
		%feature("autodoc", "1");
		void SetAncestor(const Standard_Integer AncestorIndex, const Standard_Integer AncestorNumber);
		%feature("autodoc", "1");
		void GetAncestors(Standard_Address & theArrayOfAncestors, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		Standard_Integer GetSuccessor(const Standard_Integer SuccessorIndex) const;
		%feature("autodoc", "1");
		void SetSuccessor(const Standard_Integer SuccessorIndex, const Standard_Integer SuccessorNumber);
		%feature("autodoc", "1");
		void GetSuccessors(Standard_Address & theArrayOfSuccessors, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		TopAbs_Orientation GetOrientation(const Standard_Integer OrientationIndex) const;
		%feature("autodoc", "1");
		void SetOrientation(const Standard_Integer OrientationIndex, const TopAbs_Orientation OrientationNumber);
		%feature("autodoc", "1");
		void GetOrientations(Standard_Address & theArrayOfOrientations, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		Standard_Integer NumberOfAncestors() const;
		%feature("autodoc", "1");
		Standard_Integer NumberOfSuccessors() const;

};
%extend BooleanOperations_AncestorsAndSuccessors {
	~BooleanOperations_AncestorsAndSuccessors() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of BooleanOperations_AncestorsAndSuccessors\n");}
	}
};

%nodefaultctor BooleanOperations_IndexedDataMapOfShapeInteger;
class BooleanOperations_IndexedDataMapOfShapeInteger : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		BooleanOperations_IndexedDataMapOfShapeInteger(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		BooleanOperations_IndexedDataMapOfShapeInteger & Assign(const BooleanOperations_IndexedDataMapOfShapeInteger &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer Add(const TopoDS_Shape &K, const Standard_Integer &I);
		%feature("autodoc", "1");
		void Substitute(const Standard_Integer I, const TopoDS_Shape &K, const Standard_Integer &T);
		%feature("autodoc", "1");
		void RemoveLast();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		const TopoDS_Shape & FindKey(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const Standard_Integer & FindFromIndex(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const Standard_Integer & operator()(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Standard_Integer & ChangeFromIndex(const Standard_Integer I);
		%feature("autodoc", "1");
		Standard_Integer & operator()(const Standard_Integer I);
		%feature("autodoc", "1");
		Standard_Integer FindIndex(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		const Standard_Integer & FindFromKey(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		Standard_Integer & ChangeFromKey(const TopoDS_Shape &K);

};
%extend BooleanOperations_IndexedDataMapOfShapeInteger {
	~BooleanOperations_IndexedDataMapOfShapeInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of BooleanOperations_IndexedDataMapOfShapeInteger\n");}
	}
};

%nodefaultctor BooleanOperations_IndexedDataMapOfShapeAncestorsSuccessors;
class BooleanOperations_IndexedDataMapOfShapeAncestorsSuccessors : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		BooleanOperations_IndexedDataMapOfShapeAncestorsSuccessors(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		BooleanOperations_IndexedDataMapOfShapeAncestorsSuccessors & Assign(const BooleanOperations_IndexedDataMapOfShapeAncestorsSuccessors &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer Add(const TopoDS_Shape &K, const BooleanOperations_AncestorsSeqAndSuccessorsSeq &I);
		%feature("autodoc", "1");
		void Substitute(const Standard_Integer I, const TopoDS_Shape &K, const BooleanOperations_AncestorsSeqAndSuccessorsSeq &T);
		%feature("autodoc", "1");
		void RemoveLast();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		const TopoDS_Shape & FindKey(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const BooleanOperations_AncestorsSeqAndSuccessorsSeq & FindFromIndex(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const BooleanOperations_AncestorsSeqAndSuccessorsSeq & operator()(const Standard_Integer I) const;
		%feature("autodoc", "1");
		BooleanOperations_AncestorsSeqAndSuccessorsSeq & ChangeFromIndex(const Standard_Integer I);
		%feature("autodoc", "1");
		BooleanOperations_AncestorsSeqAndSuccessorsSeq & operator()(const Standard_Integer I);
		%feature("autodoc", "1");
		Standard_Integer FindIndex(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		const BooleanOperations_AncestorsSeqAndSuccessorsSeq & FindFromKey(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		BooleanOperations_AncestorsSeqAndSuccessorsSeq & ChangeFromKey(const TopoDS_Shape &K);

};
%extend BooleanOperations_IndexedDataMapOfShapeAncestorsSuccessors {
	~BooleanOperations_IndexedDataMapOfShapeAncestorsSuccessors() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of BooleanOperations_IndexedDataMapOfShapeAncestorsSuccessors\n");}
	}
};

%nodefaultctor BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeAncestorsSuccessors;
class BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeAncestorsSuccessors : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeAncestorsSuccessors(const TopoDS_Shape &K1, const Standard_Integer K2, const BooleanOperations_AncestorsSeqAndSuccessorsSeq &I, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
		%feature("autodoc", "1");
		TopoDS_Shape & Key1() const;
		%feature("autodoc", "1");
		Standard_Integer & Key2() const;
		%feature("autodoc", "1");
		TCollection_MapNodePtr & Next2() const;
		%feature("autodoc", "1");
		BooleanOperations_AncestorsSeqAndSuccessorsSeq & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeAncestorsSuccessors {
	Handle_BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeAncestorsSuccessors GetHandle() {
	return *(Handle_BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeAncestorsSuccessors*) &$self;
	}
};
%extend BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeAncestorsSuccessors {
	~BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeAncestorsSuccessors() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeAncestorsSuccessors\n");}
	}
};