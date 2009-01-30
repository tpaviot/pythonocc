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


%include BooleanOperations_dependencies.i


%include BooleanOperations_headers.i

typedef BooleanOperations_ShapesDataStructure * BooleanOperations_PShapesDataStructure;
typedef BooleanOperations_ShapeAndInterferences * BooleanOperations_PShapeAndInterferences;

enum BooleanOperations_StateOfShape {
	BooleanOperations_IN,
	BooleanOperations_OUT,
	BooleanOperations_ON,
	BooleanOperations_UNKNOWN,
	BooleanOperations_INOROUT,
	BooleanOperations_INTERSECTED,
	};

enum BooleanOperations_KindOfInterference {
	BooleanOperations_SurfaceSurface,
	BooleanOperations_EdgeSurface,
	BooleanOperations_VertexSurface,
	BooleanOperations_EdgeEdge,
	BooleanOperations_VertexEdge,
	BooleanOperations_VertexVertex,
	BooleanOperations_UnknownInterference,
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
		~Handle_BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeInteger();
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

%nodefaultctor Handle_BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeAncestorsSuccessors;
class Handle_BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeAncestorsSuccessors : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeAncestorsSuccessors();
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

%nodefaultctor BooleanOperations_Explorer;
class BooleanOperations_Explorer {
	public:
		%feature("autodoc", "1");
		BooleanOperations_Explorer(const BooleanOperations_ShapesDataStructure &SDS);
		%feature("autodoc", "1");
		virtual		void Delete();
		%feature("autodoc", "1");
		virtual		~BooleanOperations_Explorer();
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
		~BooleanOperations_IndexedDataMapOfShapeInteger();
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

%nodefaultctor BooleanOperations_ShapeAndInterferences;
class BooleanOperations_ShapeAndInterferences {
	public:
		%feature("autodoc", "1");
		~BooleanOperations_ShapeAndInterferences();
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
		void GetAncestors(Standard_Address & theArrayOfAncestors, Standard_Integer & AncestorsSize) const;
		%feature("autodoc", "1");
		void GetSuccessors(Standard_Address & theArrayOfSuccessors, Standard_Integer & SuccessorsSize) const;
		%feature("autodoc", "1");
		TopAbs_Orientation GetOrientation(const Standard_Integer index) const;
		%feature("autodoc", "1");
		void GetOrientations(Standard_Address & theArrayOfOrientations, Standard_Integer & OrientationsSize) const;

};

%nodefaultctor BooleanOperations_OnceExplorer;
class BooleanOperations_OnceExplorer : public BooleanOperations_Explorer {
	public:
		%feature("autodoc", "1");
		BooleanOperations_OnceExplorer(const BooleanOperations_ShapesDataStructure &SDS);
		%feature("autodoc", "1");
		virtual		void Delete();
		%feature("autodoc", "1");
		virtual		~BooleanOperations_OnceExplorer();
		%feature("autodoc", "1");
		virtual		void Init(const Standard_Integer aShape, const TopAbs_ShapeEnum TargetToFind, const TopAbs_ShapeEnum TargetToAvoid=TopAbs_SHAPE);
		%feature("autodoc", "1");
		virtual		void Next();
		%feature("autodoc", "1");
		virtual		Standard_Integer Current();
		%feature("autodoc", "1");
		virtual		void Dump(Standard_OStream & S) const;

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
		~BooleanOperations_IndexedDataMapOfShapeAncestorsSuccessors();
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

%nodefaultctor BooleanOperations_ShapesDataStructure;
class BooleanOperations_ShapesDataStructure {
	public:
		%feature("autodoc", "1");
		BooleanOperations_ShapesDataStructure();
		%feature("autodoc", "1");
		virtual		~BooleanOperations_ShapesDataStructure();
		%feature("autodoc", "1");
		BooleanOperations_ShapesDataStructure(const TopoDS_Shape &Object, const TopoDS_Shape &Tool);
		%feature("autodoc", "1");
		void InsertShapeAndAncestorsSuccessors(const TopoDS_Shape &S, const BooleanOperations_AncestorsSeqAndSuccessorsSeq &AncSuc, const Standard_Integer shift=0);
		%feature("autodoc", "1");
		void FillIndexedMapOfShapesAncestorsAndSuccessors(const TopoDS_Shape &Sha, BooleanOperations_IndexedDataMapOfShapeAncestorsSuccessors & IndDatMap) const;
		%feature("autodoc", "1");
		void FindSubshapes(const TopoDS_Shape &Sha, Standard_Integer & TotalNumberOfShapes, BooleanOperations_IndexedDataMapOfShapeAncestorsSuccessors & IndDatMap) const;
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
		void GetAncestors(const Standard_Integer index, Standard_Address & theArrayOfAncestors, Standard_Integer & AncestorsSize) const;
		%feature("autodoc", "1");
		void GetSuccessors(const Standard_Integer index, Standard_Address & theArrayOfSuccessors, Standard_Integer & SuccessorsSize) const;
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
		void ObjectRange(Standard_Integer & iFirst, Standard_Integer & iLast) const;
		%feature("autodoc", "1");
		void ToolRange(Standard_Integer & iFirst, Standard_Integer & iLast) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer Rank(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		Standard_Integer RefEdge(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		Standard_Integer NbEdges() const;
		%feature("autodoc", "1");
		TopAbs_Orientation GetOrientation(const Standard_Integer index, const Standard_Integer successorNumber) const;
		%feature("autodoc", "1");
		void GetOrientations(const Standard_Integer index, Standard_Address & theArrayOfOrientations, Standard_Integer & OrientationsSize) const;

};

%nodefaultctor BooleanOperations_AncestorsSeqAndSuccessorsSeq;
class BooleanOperations_AncestorsSeqAndSuccessorsSeq {
	public:
		%feature("autodoc", "1");
		~BooleanOperations_AncestorsSeqAndSuccessorsSeq();
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
		~BooleanOperations_AncestorsAndSuccessors();
		%feature("autodoc", "1");
		void Dump() const;
		%feature("autodoc", "1");
		Standard_Integer GetAncestor(const Standard_Integer AncestorIndex) const;
		%feature("autodoc", "1");
		void SetAncestor(const Standard_Integer AncestorIndex, const Standard_Integer AncestorNumber);
		%feature("autodoc", "1");
		void GetAncestors(Standard_Address & theArrayOfAncestors, Standard_Integer & AncestorsNumber) const;
		%feature("autodoc", "1");
		Standard_Integer GetSuccessor(const Standard_Integer SuccessorIndex) const;
		%feature("autodoc", "1");
		void SetSuccessor(const Standard_Integer SuccessorIndex, const Standard_Integer SuccessorNumber);
		%feature("autodoc", "1");
		void GetSuccessors(Standard_Address & theArrayOfSuccessors, Standard_Integer & SuccessorsNumber) const;
		%feature("autodoc", "1");
		TopAbs_Orientation GetOrientation(const Standard_Integer OrientationIndex) const;
		%feature("autodoc", "1");
		void SetOrientation(const Standard_Integer OrientationIndex, const TopAbs_Orientation OrientationNumber);
		%feature("autodoc", "1");
		void GetOrientations(Standard_Address & theArrayOfOrientations, Standard_Integer & OrientationsNumber) const;
		%feature("autodoc", "1");
		Standard_Integer NumberOfAncestors() const;
		%feature("autodoc", "1");
		Standard_Integer NumberOfSuccessors() const;

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
		%feature("autodoc", "1");
		virtual		~BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeAncestorsSuccessors();

};
%extend BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeAncestorsSuccessors {
	Handle_BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeAncestorsSuccessors GetHandle() {
	return *(Handle_BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeAncestorsSuccessors*) &$self;
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
		%feature("autodoc", "1");
		virtual		~BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeInteger();

};
%extend BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeInteger {
	Handle_BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeInteger GetHandle() {
	return *(Handle_BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeInteger*) &$self;
	}
};