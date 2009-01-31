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
%module BRepAlgo

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


%include BRepAlgo_dependencies.i


%include BRepAlgo_headers.i


enum BRepAlgo_CheckStatus {
	BRepAlgo_OK,
	BRepAlgo_NOK,
	};



%nodefaultctor Handle_BRepAlgo_DataMapNodeOfDataMapOfShapeListOfInteger;
class Handle_BRepAlgo_DataMapNodeOfDataMapOfShapeListOfInteger : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_BRepAlgo_DataMapNodeOfDataMapOfShapeListOfInteger();
		%feature("autodoc", "1");
		Handle_BRepAlgo_DataMapNodeOfDataMapOfShapeListOfInteger();
		%feature("autodoc", "1");
		Handle_BRepAlgo_DataMapNodeOfDataMapOfShapeListOfInteger(const Handle_BRepAlgo_DataMapNodeOfDataMapOfShapeListOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_BRepAlgo_DataMapNodeOfDataMapOfShapeListOfInteger(const BRepAlgo_DataMapNodeOfDataMapOfShapeListOfInteger *anItem);
		%feature("autodoc", "1");
		Handle_BRepAlgo_DataMapNodeOfDataMapOfShapeListOfInteger const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepAlgo_DataMapNodeOfDataMapOfShapeListOfInteger {
	BRepAlgo_DataMapNodeOfDataMapOfShapeListOfInteger* GetObject() {
	return (BRepAlgo_DataMapNodeOfDataMapOfShapeListOfInteger*)$self->Access();
	}
};

%nodefaultctor Handle_BRepAlgo_DataMapNodeOfDataMapOfShapeInterference;
class Handle_BRepAlgo_DataMapNodeOfDataMapOfShapeInterference : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_BRepAlgo_DataMapNodeOfDataMapOfShapeInterference();
		%feature("autodoc", "1");
		Handle_BRepAlgo_DataMapNodeOfDataMapOfShapeInterference();
		%feature("autodoc", "1");
		Handle_BRepAlgo_DataMapNodeOfDataMapOfShapeInterference(const Handle_BRepAlgo_DataMapNodeOfDataMapOfShapeInterference &aHandle);
		%feature("autodoc", "1");
		Handle_BRepAlgo_DataMapNodeOfDataMapOfShapeInterference(const BRepAlgo_DataMapNodeOfDataMapOfShapeInterference *anItem);
		%feature("autodoc", "1");
		Handle_BRepAlgo_DataMapNodeOfDataMapOfShapeInterference const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepAlgo_DataMapNodeOfDataMapOfShapeInterference {
	BRepAlgo_DataMapNodeOfDataMapOfShapeInterference* GetObject() {
	return (BRepAlgo_DataMapNodeOfDataMapOfShapeInterference*)$self->Access();
	}
};

%nodefaultctor Handle_BRepAlgo_AsDes;
class Handle_BRepAlgo_AsDes : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_BRepAlgo_AsDes();
		%feature("autodoc", "1");
		Handle_BRepAlgo_AsDes();
		%feature("autodoc", "1");
		Handle_BRepAlgo_AsDes(const Handle_BRepAlgo_AsDes &aHandle);
		%feature("autodoc", "1");
		Handle_BRepAlgo_AsDes(const BRepAlgo_AsDes *anItem);
		%feature("autodoc", "1");
		Handle_BRepAlgo_AsDes const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepAlgo_AsDes {
	BRepAlgo_AsDes* GetObject() {
	return (BRepAlgo_AsDes*)$self->Access();
	}
};

%nodefaultctor Handle_BRepAlgo_SequenceNodeOfSequenceOfSequenceOfInteger;
class Handle_BRepAlgo_SequenceNodeOfSequenceOfSequenceOfInteger : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		~Handle_BRepAlgo_SequenceNodeOfSequenceOfSequenceOfInteger();
		%feature("autodoc", "1");
		Handle_BRepAlgo_SequenceNodeOfSequenceOfSequenceOfInteger();
		%feature("autodoc", "1");
		Handle_BRepAlgo_SequenceNodeOfSequenceOfSequenceOfInteger(const Handle_BRepAlgo_SequenceNodeOfSequenceOfSequenceOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_BRepAlgo_SequenceNodeOfSequenceOfSequenceOfInteger(const BRepAlgo_SequenceNodeOfSequenceOfSequenceOfInteger *anItem);
		%feature("autodoc", "1");
		Handle_BRepAlgo_SequenceNodeOfSequenceOfSequenceOfInteger const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepAlgo_SequenceNodeOfSequenceOfSequenceOfInteger {
	BRepAlgo_SequenceNodeOfSequenceOfSequenceOfInteger* GetObject() {
	return (BRepAlgo_SequenceNodeOfSequenceOfSequenceOfInteger*)$self->Access();
	}
};

%nodefaultctor Handle_BRepAlgo_EdgeConnector;
class Handle_BRepAlgo_EdgeConnector : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_BRepAlgo_EdgeConnector();
		%feature("autodoc", "1");
		Handle_BRepAlgo_EdgeConnector();
		%feature("autodoc", "1");
		Handle_BRepAlgo_EdgeConnector(const Handle_BRepAlgo_EdgeConnector &aHandle);
		%feature("autodoc", "1");
		Handle_BRepAlgo_EdgeConnector(const BRepAlgo_EdgeConnector *anItem);
		%feature("autodoc", "1");
		Handle_BRepAlgo_EdgeConnector const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepAlgo_EdgeConnector {
	BRepAlgo_EdgeConnector* GetObject() {
	return (BRepAlgo_EdgeConnector*)$self->Access();
	}
};

%nodefaultctor Handle_BRepAlgo_DataMapNodeOfDataMapOfShapeBoolean;
class Handle_BRepAlgo_DataMapNodeOfDataMapOfShapeBoolean : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_BRepAlgo_DataMapNodeOfDataMapOfShapeBoolean();
		%feature("autodoc", "1");
		Handle_BRepAlgo_DataMapNodeOfDataMapOfShapeBoolean();
		%feature("autodoc", "1");
		Handle_BRepAlgo_DataMapNodeOfDataMapOfShapeBoolean(const Handle_BRepAlgo_DataMapNodeOfDataMapOfShapeBoolean &aHandle);
		%feature("autodoc", "1");
		Handle_BRepAlgo_DataMapNodeOfDataMapOfShapeBoolean(const BRepAlgo_DataMapNodeOfDataMapOfShapeBoolean *anItem);
		%feature("autodoc", "1");
		Handle_BRepAlgo_DataMapNodeOfDataMapOfShapeBoolean const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepAlgo_DataMapNodeOfDataMapOfShapeBoolean {
	BRepAlgo_DataMapNodeOfDataMapOfShapeBoolean* GetObject() {
	return (BRepAlgo_DataMapNodeOfDataMapOfShapeBoolean*)$self->Access();
	}
};

%nodefaultctor BRepAlgo_Loop;
class BRepAlgo_Loop {
	public:
		%feature("autodoc", "1");
		~BRepAlgo_Loop();
		%feature("autodoc", "1");
		BRepAlgo_Loop();
		%feature("autodoc", "1");
		void Init(const TopoDS_Face &F);
		%feature("autodoc", "1");
		void AddEdge(TopoDS_Edge & E, const TopTools_ListOfShape &LV);
		%feature("autodoc", "1");
		void AddConstEdge(const TopoDS_Edge &E);
		%feature("autodoc", "1");
		void AddConstEdges(const TopTools_ListOfShape &LE);
		%feature("autodoc", "1");
		void Perform();
		%feature("autodoc", "1");
		void CutEdge(const TopoDS_Edge &E, const TopTools_ListOfShape &VonE, TopTools_ListOfShape & NE) const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & NewWires() const;
		%feature("autodoc", "1");
		void WiresToFaces();
		%feature("autodoc", "1");
		const TopTools_ListOfShape & NewFaces() const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & NewEdges(const TopoDS_Edge &E) const;
		%feature("autodoc", "1");
		void GetVerticesForSubstitute(TopTools_DataMapOfShapeShape & VerVerMap) const;
		%feature("autodoc", "1");
		void VerticesForSubstitute(TopTools_DataMapOfShapeShape & VerVerMap);

};

%nodefaultctor BRepAlgo_DataMapOfShapeBoolean;
class BRepAlgo_DataMapOfShapeBoolean : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		BRepAlgo_DataMapOfShapeBoolean(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		BRepAlgo_DataMapOfShapeBoolean & Assign(const BRepAlgo_DataMapOfShapeBoolean &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~BRepAlgo_DataMapOfShapeBoolean();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TopoDS_Shape &K, const Standard_Boolean &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TopoDS_Shape &K);
		%feature("autodoc", "1");
		const Standard_Boolean & Find(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		const Standard_Boolean & operator()(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		Standard_Boolean & ChangeFind(const TopoDS_Shape &K);
		%feature("autodoc", "1");
		Standard_Boolean & operator()(const TopoDS_Shape &K);

};

%nodefaultctor BRepAlgo_AsDes;
class BRepAlgo_AsDes : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		BRepAlgo_AsDes();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Add(const TopoDS_Shape &S, const TopoDS_Shape &SS);
		%feature("autodoc", "1");
		void Add(const TopoDS_Shape &S, const TopTools_ListOfShape &SS);
		%feature("autodoc", "1");
		Standard_Boolean HasAscendant(const TopoDS_Shape &S) const;
		%feature("autodoc", "1");
		Standard_Boolean HasDescendant(const TopoDS_Shape &S) const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Ascendant(const TopoDS_Shape &S) const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Descendant(const TopoDS_Shape &S) const;
		%feature("autodoc", "1");
		TopTools_ListOfShape & ChangeDescendant(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		void Replace(const TopoDS_Shape &OldS, const TopoDS_Shape &NewS);
		%feature("autodoc", "1");
		void Remove(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		Standard_Boolean HasCommonDescendant(const TopoDS_Shape &S1, const TopoDS_Shape &S2, TopTools_ListOfShape & LC) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BRepAlgo_AsDes();

};
%extend BRepAlgo_AsDes {
	Handle_BRepAlgo_AsDes GetHandle() {
	return *(Handle_BRepAlgo_AsDes*) &$self;
	}
};

%nodefaultctor BRepAlgo_DataMapNodeOfDataMapOfShapeBoolean;
class BRepAlgo_DataMapNodeOfDataMapOfShapeBoolean : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BRepAlgo_DataMapNodeOfDataMapOfShapeBoolean(const TopoDS_Shape &K, const Standard_Boolean &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		Standard_Boolean & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BRepAlgo_DataMapNodeOfDataMapOfShapeBoolean();

};
%extend BRepAlgo_DataMapNodeOfDataMapOfShapeBoolean {
	Handle_BRepAlgo_DataMapNodeOfDataMapOfShapeBoolean GetHandle() {
	return *(Handle_BRepAlgo_DataMapNodeOfDataMapOfShapeBoolean*) &$self;
	}
};

%nodefaultctor BRepAlgo_Image;
class BRepAlgo_Image {
	public:
		%feature("autodoc", "1");
		~BRepAlgo_Image();
		%feature("autodoc", "1");
		BRepAlgo_Image();
		%feature("autodoc", "1");
		void SetRoot(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		void Bind(const TopoDS_Shape &OldS, const TopoDS_Shape &NewS);
		%feature("autodoc", "1");
		void Bind(const TopoDS_Shape &OldS, const TopTools_ListOfShape &NewS);
		%feature("autodoc", "1");
		void Add(const TopoDS_Shape &OldS, const TopoDS_Shape &NewS);
		%feature("autodoc", "1");
		void Add(const TopoDS_Shape &OldS, const TopTools_ListOfShape &NewS);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Remove(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Roots() const;
		%feature("autodoc", "1");
		Standard_Boolean IsImage(const TopoDS_Shape &S) const;
		%feature("autodoc", "1");
		const TopoDS_Shape & ImageFrom(const TopoDS_Shape &S) const;
		%feature("autodoc", "1");
		const TopoDS_Shape & Root(const TopoDS_Shape &S) const;
		%feature("autodoc", "1");
		Standard_Boolean HasImage(const TopoDS_Shape &S) const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Image(const TopoDS_Shape &S) const;
		%feature("autodoc", "1");
		void LastImage(const TopoDS_Shape &S, TopTools_ListOfShape & L) const;
		%feature("autodoc", "1");
		void Compact();
		%feature("autodoc", "1");
		void Filter(const TopoDS_Shape &S, const TopAbs_ShapeEnum ShapeType);

};

%nodefaultctor BRepAlgo_EdgeConnector;
class BRepAlgo_EdgeConnector : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		BRepAlgo_EdgeConnector();
		%feature("autodoc", "1");
		void Add(const TopoDS_Edge &e);
		%feature("autodoc", "1");
		void Add(TopTools_ListOfShape & LOEdge);
		%feature("autodoc", "1");
		void AddStart(const TopoDS_Shape &e);
		%feature("autodoc", "1");
		void AddStart(TopTools_ListOfShape & LOEdge);
		%feature("autodoc", "1");
		void ClearStartElement();
		%feature("autodoc", "1");
		TopTools_ListOfShape & MakeBlock();
		%feature("autodoc", "1");
		void Done();
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Boolean IsWire(const TopoDS_Shape &W);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BRepAlgo_EdgeConnector();

};
%extend BRepAlgo_EdgeConnector {
	Handle_BRepAlgo_EdgeConnector GetHandle() {
	return *(Handle_BRepAlgo_EdgeConnector*) &$self;
	}
};

%nodefaultctor BRepAlgo_BooleanOperations;
class BRepAlgo_BooleanOperations {
	public:
		%feature("autodoc", "1");
		~BRepAlgo_BooleanOperations();
		%feature("autodoc", "1");
		BRepAlgo_BooleanOperations();
		%feature("autodoc", "1");
		void Shapes2d(const TopoDS_Shape &S1, const TopoDS_Shape &S2);
		%feature("autodoc", "1");
		void Shapes(const TopoDS_Shape &S1, const TopoDS_Shape &S2);
		%feature("autodoc", "1");
		void SetApproxParameters(const Standard_Integer NbPntMax, const Standard_Real Tol3D, const Standard_Real Tol2D, const Standard_Boolean RelativeTol);
		%feature("autodoc", "1");
		void Define(const TopoDS_Shape &S1, const TopoDS_Shape &S2, Handle_TopOpeBRepDS_HDataStructure & HDS);
		%feature("autodoc", "1");
		const TopoDS_Shape & Common();
		%feature("autodoc", "1");
		const TopoDS_Shape & Fus();
		%feature("autodoc", "1");
		const TopoDS_Shape & Cut();
		%feature("autodoc", "1");
		const TopoDS_Shape & Section();
		%feature("autodoc", "1");
		const TopoDS_Shape & Shape();
		%feature("autodoc", "1");
		const TopoDS_Shape & ShapeFrom(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Modified(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		Standard_Boolean IsDeleted(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		const Handle_TopOpeBRepDS_HDataStructure & DataStructure() const;
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_HDataStructure & ChangeDataStructure();
		%feature("autodoc", "1");
		const Handle_TopOpeBRepBuild_HBuilder & Builder() const;
		%feature("autodoc", "1");
		Handle_TopOpeBRepBuild_HBuilder & ChangeBuilder();
		%feature("autodoc", "1");
		BRepAlgo_DSAccess & DataStructureAccess();

};

%nodefaultctor BRepAlgo_DataMapOfShapeInterference;
class BRepAlgo_DataMapOfShapeInterference : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		BRepAlgo_DataMapOfShapeInterference(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		BRepAlgo_DataMapOfShapeInterference & Assign(const BRepAlgo_DataMapOfShapeInterference &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~BRepAlgo_DataMapOfShapeInterference();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TopoDS_Shape &K, const Handle_TopOpeBRepDS_Interference &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TopoDS_Shape &K);
		%feature("autodoc", "1");
		const Handle_TopOpeBRepDS_Interference & Find(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		const Handle_TopOpeBRepDS_Interference & operator()(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_Interference & ChangeFind(const TopoDS_Shape &K);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_Interference & operator()(const TopoDS_Shape &K);

};

%nodefaultctor BRepAlgo;
class BRepAlgo {
	public:
		%feature("autodoc", "1");
		~BRepAlgo();
		%feature("autodoc", "1");
		BRepAlgo();
		%feature("autodoc", "1");
		TopoDS_Wire ConcatenateWire(const TopoDS_Wire &Wire, const GeomAbs_Shape Option, const Standard_Real AngularTolerance=1.00000000000000004792173602385929598312941379845e-4);
		%feature("autodoc", "1");
		Standard_Boolean IsValid(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		Standard_Boolean IsValid(const TopTools_ListOfShape &theArgs, const TopoDS_Shape &theResult, const Standard_Boolean closedSolid=0, const Standard_Boolean GeomCtrl=1);
		%feature("autodoc", "1");
		Standard_Boolean IsTopologicallyValid(const TopoDS_Shape &S);

};

%nodefaultctor BRepAlgo_SequenceNodeOfSequenceOfSequenceOfInteger;
class BRepAlgo_SequenceNodeOfSequenceOfSequenceOfInteger : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		BRepAlgo_SequenceNodeOfSequenceOfSequenceOfInteger(const TColStd_SequenceOfInteger &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		TColStd_SequenceOfInteger & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BRepAlgo_SequenceNodeOfSequenceOfSequenceOfInteger();

};
%extend BRepAlgo_SequenceNodeOfSequenceOfSequenceOfInteger {
	Handle_BRepAlgo_SequenceNodeOfSequenceOfSequenceOfInteger GetHandle() {
	return *(Handle_BRepAlgo_SequenceNodeOfSequenceOfSequenceOfInteger*) &$self;
	}
};

%nodefaultctor BRepAlgo_DataMapIteratorOfDataMapOfShapeBoolean;
class BRepAlgo_DataMapIteratorOfDataMapOfShapeBoolean : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		~BRepAlgo_DataMapIteratorOfDataMapOfShapeBoolean();
		%feature("autodoc", "1");
		BRepAlgo_DataMapIteratorOfDataMapOfShapeBoolean();
		%feature("autodoc", "1");
		BRepAlgo_DataMapIteratorOfDataMapOfShapeBoolean(const BRepAlgo_DataMapOfShapeBoolean &aMap);
		%feature("autodoc", "1");
		void Initialize(const BRepAlgo_DataMapOfShapeBoolean &aMap);
		%feature("autodoc", "1");
		const TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		const Standard_Boolean & Value() const;

};

%nodefaultctor BRepAlgo_Tool;
class BRepAlgo_Tool {
	public:
		%feature("autodoc", "1");
		~BRepAlgo_Tool();
		%feature("autodoc", "1");
		BRepAlgo_Tool();
		%feature("autodoc", "1");
		TopoDS_Shape Deboucle3D(const TopoDS_Shape &S, const TopTools_MapOfShape &Boundary);

};

%nodefaultctor BRepAlgo_FaceRestrictor;
class BRepAlgo_FaceRestrictor {
	public:
		%feature("autodoc", "1");
		~BRepAlgo_FaceRestrictor();
		%feature("autodoc", "1");
		BRepAlgo_FaceRestrictor();
		%feature("autodoc", "1");
		void Init(const TopoDS_Face &F, const Standard_Boolean Proj=0, const Standard_Boolean ControlOrientation=0);
		%feature("autodoc", "1");
		void Add(TopoDS_Wire & W);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Perform();
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		TopoDS_Face Current() const;

};

%nodefaultctor BRepAlgo_DataMapNodeOfDataMapOfShapeListOfInteger;
class BRepAlgo_DataMapNodeOfDataMapOfShapeListOfInteger : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BRepAlgo_DataMapNodeOfDataMapOfShapeListOfInteger(const TopoDS_Shape &K, const TColStd_ListOfInteger &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		TColStd_ListOfInteger & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BRepAlgo_DataMapNodeOfDataMapOfShapeListOfInteger();

};
%extend BRepAlgo_DataMapNodeOfDataMapOfShapeListOfInteger {
	Handle_BRepAlgo_DataMapNodeOfDataMapOfShapeListOfInteger GetHandle() {
	return *(Handle_BRepAlgo_DataMapNodeOfDataMapOfShapeListOfInteger*) &$self;
	}
};

%nodefaultctor BRepAlgo_DataMapIteratorOfDataMapOfShapeInterference;
class BRepAlgo_DataMapIteratorOfDataMapOfShapeInterference : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		~BRepAlgo_DataMapIteratorOfDataMapOfShapeInterference();
		%feature("autodoc", "1");
		BRepAlgo_DataMapIteratorOfDataMapOfShapeInterference();
		%feature("autodoc", "1");
		BRepAlgo_DataMapIteratorOfDataMapOfShapeInterference(const BRepAlgo_DataMapOfShapeInterference &aMap);
		%feature("autodoc", "1");
		void Initialize(const BRepAlgo_DataMapOfShapeInterference &aMap);
		%feature("autodoc", "1");
		const TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		const Handle_TopOpeBRepDS_Interference & Value() const;

};

%nodefaultctor BRepAlgo_DataMapNodeOfDataMapOfShapeInterference;
class BRepAlgo_DataMapNodeOfDataMapOfShapeInterference : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BRepAlgo_DataMapNodeOfDataMapOfShapeInterference(const TopoDS_Shape &K, const Handle_TopOpeBRepDS_Interference &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_Interference & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BRepAlgo_DataMapNodeOfDataMapOfShapeInterference();

};
%extend BRepAlgo_DataMapNodeOfDataMapOfShapeInterference {
	Handle_BRepAlgo_DataMapNodeOfDataMapOfShapeInterference GetHandle() {
	return *(Handle_BRepAlgo_DataMapNodeOfDataMapOfShapeInterference*) &$self;
	}
};

%nodefaultctor BRepAlgo_NormalProjection;
class BRepAlgo_NormalProjection {
	public:
		%feature("autodoc", "1");
		~BRepAlgo_NormalProjection();
		%feature("autodoc", "1");
		BRepAlgo_NormalProjection();
		%feature("autodoc", "1");
		BRepAlgo_NormalProjection(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		void Init(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		void Add(const TopoDS_Shape &ToProj);
		%feature("autodoc", "1");
		void SetParams(const Standard_Real Tol3D, const Standard_Real Tol2D, const GeomAbs_Shape InternalContinuity, const Standard_Integer MaxDegree, const Standard_Integer MaxSeg);
		%feature("autodoc", "1");
		void SetDefaultParams();
		%feature("autodoc", "1");
		void SetMaxDistance(const Standard_Real MaxDist);
		%feature("autodoc", "1");
		void Compute3d(const Standard_Boolean With3d=1);
		%feature("autodoc", "1");
		void SetLimit(const Standard_Boolean FaceBoundaries=1);
		%feature("autodoc", "1");
		void Build();
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		const TopoDS_Shape & Projection() const;
		%feature("autodoc", "1");
		const TopoDS_Shape & Ancestor(const TopoDS_Edge &E) const;
		%feature("autodoc", "1");
		const TopoDS_Shape & Couple(const TopoDS_Edge &E) const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Generated(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		Standard_Boolean IsElementary(const Adaptor3d_Curve &C) const;
		%feature("autodoc", "1");
		Standard_Boolean BuildWire(TopTools_ListOfShape & Liste) const;

};

%nodefaultctor BRepAlgo_TopOpe;
class BRepAlgo_TopOpe {
	public:
		%feature("autodoc", "1");
		BRepAlgo_TopOpe();
		%feature("autodoc", "1");
		void Init();
		%feature("autodoc", "1");
		void Load(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		void Load(TopoDS_Shape & S1, TopoDS_Shape & S2);
		%feature("autodoc", "1");
		void Intersect();
		%feature("autodoc", "1");
		void Intersect(const TopoDS_Shape &S1, const TopoDS_Shape &S2);
		%feature("autodoc", "1");
		void ToCompleteIntersection();
		%feature("autodoc", "1");
		const TopTools_ListOfShape & GetSectionEdgeSet();
		%feature("autodoc", "1");
		void SuppressEdgeSet();
		%feature("autodoc", "1");
		const TopoDS_Shape & Merge(const TopAbs_State state1, const TopAbs_State state2);
		%feature("autodoc", "1");
		const TopoDS_Shape & Merge(const TopAbs_State state1);
		%feature("autodoc", "1");
		Standard_Boolean PaveBlocksNotEmpty();
		%feature("autodoc", "1");
		const BOP_PBuilder & Builder() const;
		%feature("autodoc", "1");
		const BOPTools_PDSFiller & DSFiller() const;
		%feature("autodoc", "1");
		const Handle_BOP_HistoryCollector & History() const;
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		virtual		~BRepAlgo_TopOpe();

};

%nodefaultctor BRepAlgo_DSAccess;
class BRepAlgo_DSAccess {
	public:
		%feature("autodoc", "1");
		~BRepAlgo_DSAccess();
		%feature("autodoc", "1");
		BRepAlgo_DSAccess();
		%feature("autodoc", "1");
		void Init();
		%feature("autodoc", "1");
		void Load(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		void Load(TopoDS_Shape & S1, TopoDS_Shape & S2);
		%feature("autodoc", "1");
		void Intersect();
		%feature("autodoc", "1");
		void Intersect(const TopoDS_Shape &S1, const TopoDS_Shape &S2);
		%feature("autodoc", "1");
		void SameDomain(const TopoDS_Shape &S1, const TopoDS_Shape &S2);
		%feature("autodoc", "1");
		const TopTools_ListOfShape & GetSectionEdgeSet(const TopoDS_Shape &S1, const TopoDS_Shape &S2);
		%feature("autodoc", "1");
		const TopTools_ListOfShape & GetSectionEdgeSet();
		%feature("autodoc", "1");
		Standard_Boolean IsWire(const TopoDS_Shape &Compound);
		%feature("autodoc", "1");
		const TopoDS_Shape & Wire(const TopoDS_Shape &Compound);
		%feature("autodoc", "1");
		const TopTools_ListOfShape & SectionVertex(const TopoDS_Shape &S1, const TopoDS_Shape &S2);
		%feature("autodoc", "1");
		void SuppressEdgeSet(const TopoDS_Shape &Compound);
		%feature("autodoc", "1");
		void ChangeEdgeSet(const TopoDS_Shape &Old, const TopoDS_Shape &New);
		%feature("autodoc", "1");
		void SuppressSectionVertex(const TopoDS_Vertex &V);
		%feature("autodoc", "1");
		const TopoDS_Shape & Merge(const TopAbs_State state1, const TopAbs_State state2);
		%feature("autodoc", "1");
		const TopoDS_Shape & Merge(const TopAbs_State state1);
		%feature("autodoc", "1");
		const TopoDS_Shape & Propagate(const TopAbs_State what, const TopoDS_Shape &FromShape, const TopoDS_Shape &LoadShape);
		%feature("autodoc", "1");
		const TopoDS_Shape & PropagateFromSection(const TopoDS_Shape &SectionShape);
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Modified(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		BRepAlgo_CheckStatus Check();
		%feature("autodoc", "1");
		const Handle_TopOpeBRepDS_HDataStructure & DS() const;
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_HDataStructure & ChangeDS();
		%feature("autodoc", "1");
		const Handle_TopOpeBRepBuild_HBuilder & Builder() const;
		%feature("autodoc", "1");
		Handle_TopOpeBRepBuild_HBuilder & ChangeBuilder();

};

%nodefaultctor BRepAlgo_BooleanOperation;
class BRepAlgo_BooleanOperation : public BRepBuilderAPI_MakeShape {
	public:
		%feature("autodoc", "1");
		virtual		void Delete();
		%feature("autodoc", "1");
		virtual		~BRepAlgo_BooleanOperation();
		%feature("autodoc", "1");
		void PerformDS();
		%feature("autodoc", "1");
		void Perform(const TopAbs_State St1, const TopAbs_State St2);
		%feature("autodoc", "1");
		Handle_TopOpeBRepBuild_HBuilder Builder() const;
		%feature("autodoc", "1");
		const TopoDS_Shape & Shape1() const;
		%feature("autodoc", "1");
		const TopoDS_Shape & Shape2() const;
		%feature("autodoc", "1");
		virtual		const TopTools_ListOfShape & Modified(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsDeleted(const TopoDS_Shape &S);

};

%nodefaultctor BRepAlgo_Section;
class BRepAlgo_Section : public BRepAlgo_BooleanOperation {
	public:
		%feature("autodoc", "1");
		BRepAlgo_Section(const TopoDS_Shape &Sh1, const TopoDS_Shape &Sh2, const Standard_Boolean PerformNow=1);
		%feature("autodoc", "1");
		BRepAlgo_Section(const TopoDS_Shape &Sh, const gp_Pln &Pl, const Standard_Boolean PerformNow=1);
		%feature("autodoc", "1");
		BRepAlgo_Section(const TopoDS_Shape &Sh, const Handle_Geom_Surface &Sf, const Standard_Boolean PerformNow=1);
		%feature("autodoc", "1");
		BRepAlgo_Section(const Handle_Geom_Surface &Sf, const TopoDS_Shape &Sh, const Standard_Boolean PerformNow=1);
		%feature("autodoc", "1");
		BRepAlgo_Section(const Handle_Geom_Surface &Sf1, const Handle_Geom_Surface &Sf2, const Standard_Boolean PerformNow=1);
		%feature("autodoc", "1");
		void Init1(const TopoDS_Shape &S1);
		%feature("autodoc", "1");
		void Init1(const gp_Pln &Pl);
		%feature("autodoc", "1");
		void Init1(const Handle_Geom_Surface &Sf);
		%feature("autodoc", "1");
		void Init2(const TopoDS_Shape &S2);
		%feature("autodoc", "1");
		void Init2(const gp_Pln &Pl);
		%feature("autodoc", "1");
		void Init2(const Handle_Geom_Surface &Sf);
		%feature("autodoc", "1");
		void Approximation(const Standard_Boolean B);
		%feature("autodoc", "1");
		void ComputePCurveOn1(const Standard_Boolean B);
		%feature("autodoc", "1");
		void ComputePCurveOn2(const Standard_Boolean B);
		%feature("autodoc", "1");
		virtual		void Build();
		%feature("autodoc", "1");
		Standard_Boolean HasAncestorFaceOn1(const TopoDS_Shape &E, TopoDS_Shape & F) const;
		%feature("autodoc", "1");
		Standard_Boolean HasAncestorFaceOn2(const TopoDS_Shape &E, TopoDS_Shape & F) const;
		%feature("autodoc", "1");
		Handle_Geom2d_Curve PCurveOn1(const TopoDS_Shape &E) const;
		%feature("autodoc", "1");
		Handle_Geom2d_Curve PCurveOn2(const TopoDS_Shape &E) const;
		%feature("autodoc", "1");
		virtual		~BRepAlgo_Section();

};

%nodefaultctor BRepAlgo_Fuse;
class BRepAlgo_Fuse : public BRepAlgo_BooleanOperation {
	public:
		%feature("autodoc", "1");
		BRepAlgo_Fuse(const TopoDS_Shape &S1, const TopoDS_Shape &S2);
		%feature("autodoc", "1");
		virtual		~BRepAlgo_Fuse();

};

%nodefaultctor BRepAlgo_DataMapOfShapeListOfInteger;
class BRepAlgo_DataMapOfShapeListOfInteger : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		BRepAlgo_DataMapOfShapeListOfInteger(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		BRepAlgo_DataMapOfShapeListOfInteger & Assign(const BRepAlgo_DataMapOfShapeListOfInteger &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~BRepAlgo_DataMapOfShapeListOfInteger();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TopoDS_Shape &K, const TColStd_ListOfInteger &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TopoDS_Shape &K);
		%feature("autodoc", "1");
		const TColStd_ListOfInteger & Find(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		const TColStd_ListOfInteger & operator()(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		TColStd_ListOfInteger & ChangeFind(const TopoDS_Shape &K);
		%feature("autodoc", "1");
		TColStd_ListOfInteger & operator()(const TopoDS_Shape &K);

};

%nodefaultctor BRepAlgo_SequenceOfSequenceOfInteger;
class BRepAlgo_SequenceOfSequenceOfInteger : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		BRepAlgo_SequenceOfSequenceOfInteger();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~BRepAlgo_SequenceOfSequenceOfInteger();
		%feature("autodoc", "1");
		const BRepAlgo_SequenceOfSequenceOfInteger & Assign(const BRepAlgo_SequenceOfSequenceOfInteger &Other);
		%feature("autodoc", "1");
		void Append(const TColStd_SequenceOfInteger &T);
		%feature("autodoc", "1");
		void Append(BRepAlgo_SequenceOfSequenceOfInteger & S);
		%feature("autodoc", "1");
		void Prepend(const TColStd_SequenceOfInteger &T);
		%feature("autodoc", "1");
		void Prepend(BRepAlgo_SequenceOfSequenceOfInteger & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const TColStd_SequenceOfInteger &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, BRepAlgo_SequenceOfSequenceOfInteger & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const TColStd_SequenceOfInteger &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, BRepAlgo_SequenceOfSequenceOfInteger & S);
		%feature("autodoc", "1");
		const TColStd_SequenceOfInteger & First() const;
		%feature("autodoc", "1");
		const TColStd_SequenceOfInteger & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, BRepAlgo_SequenceOfSequenceOfInteger & S);
		%feature("autodoc", "1");
		const TColStd_SequenceOfInteger & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const TColStd_SequenceOfInteger & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const TColStd_SequenceOfInteger &I);
		%feature("autodoc", "1");
		TColStd_SequenceOfInteger & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		TColStd_SequenceOfInteger & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};

%nodefaultctor BRepAlgo_Cut;
class BRepAlgo_Cut : public BRepAlgo_BooleanOperation {
	public:
		%feature("autodoc", "1");
		BRepAlgo_Cut(const TopoDS_Shape &S1, const TopoDS_Shape &S2);
		%feature("autodoc", "1");
		virtual		~BRepAlgo_Cut();

};

%nodefaultctor BRepAlgo_Common;
class BRepAlgo_Common : public BRepAlgo_BooleanOperation {
	public:
		%feature("autodoc", "1");
		BRepAlgo_Common(const TopoDS_Shape &S1, const TopoDS_Shape &S2);
		%feature("autodoc", "1");
		virtual		~BRepAlgo_Common();

};

%nodefaultctor BRepAlgo_DataMapIteratorOfDataMapOfShapeListOfInteger;
class BRepAlgo_DataMapIteratorOfDataMapOfShapeListOfInteger : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		~BRepAlgo_DataMapIteratorOfDataMapOfShapeListOfInteger();
		%feature("autodoc", "1");
		BRepAlgo_DataMapIteratorOfDataMapOfShapeListOfInteger();
		%feature("autodoc", "1");
		BRepAlgo_DataMapIteratorOfDataMapOfShapeListOfInteger(const BRepAlgo_DataMapOfShapeListOfInteger &aMap);
		%feature("autodoc", "1");
		void Initialize(const BRepAlgo_DataMapOfShapeListOfInteger &aMap);
		%feature("autodoc", "1");
		const TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		const TColStd_ListOfInteger & Value() const;

};