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
%module TopOpeBRepTool

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


%include TopOpeBRepTool_dependencies.i


%include TopOpeBRepTool_headers.i

typedef TopTools_ListOfShape * TopOpeBRepTool_Plos;
typedef BRepClass3d_SolidClassifier * TopOpeBRepTool_PSoClassif;
typedef TopOpeBRepTool_ShapeClassifier * TopOpeBRepTool_PShapeClassifier;

enum TopOpeBRepTool_OutCurveType {
	TopOpeBRepTool_BSPLINE1,
	TopOpeBRepTool_APPROX,
	TopOpeBRepTool_INTERPOL,
	};



%nodefaultctor Handle_TopOpeBRepTool_HBoxTool;
class Handle_TopOpeBRepTool_HBoxTool : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_TopOpeBRepTool_HBoxTool();
		%feature("autodoc", "1");
		Handle_TopOpeBRepTool_HBoxTool();
		%feature("autodoc", "1");
		Handle_TopOpeBRepTool_HBoxTool(const Handle_TopOpeBRepTool_HBoxTool &aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRepTool_HBoxTool(const TopOpeBRepTool_HBoxTool *anItem);
		%feature("autodoc", "1");
		Handle_TopOpeBRepTool_HBoxTool const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TopOpeBRepTool_HBoxTool {
	TopOpeBRepTool_HBoxTool* GetObject() {
	return (TopOpeBRepTool_HBoxTool*)$self->Access();
	}
};

%nodefaultctor Handle_TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeconnexity;
class Handle_TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeconnexity : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeconnexity();
		%feature("autodoc", "1");
		Handle_TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeconnexity();
		%feature("autodoc", "1");
		Handle_TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeconnexity(const Handle_TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeconnexity &aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeconnexity(const TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeconnexity *anItem);
		%feature("autodoc", "1");
		Handle_TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeconnexity const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeconnexity {
	TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeconnexity* GetObject() {
	return (TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeconnexity*)$self->Access();
	}
};

%nodefaultctor Handle_TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeAddress;
class Handle_TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeAddress : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeAddress();
		%feature("autodoc", "1");
		Handle_TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeAddress();
		%feature("autodoc", "1");
		Handle_TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeAddress(const Handle_TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeAddress &aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeAddress(const TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeAddress *anItem);
		%feature("autodoc", "1");
		Handle_TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeAddress const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeAddress {
	TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeAddress* GetObject() {
	return (TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeAddress*)$self->Access();
	}
};

%nodefaultctor Handle_TopOpeBRepTool_DataMapNodeOfDataMapOfShapeListOfC2DF;
class Handle_TopOpeBRepTool_DataMapNodeOfDataMapOfShapeListOfC2DF : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_TopOpeBRepTool_DataMapNodeOfDataMapOfShapeListOfC2DF();
		%feature("autodoc", "1");
		Handle_TopOpeBRepTool_DataMapNodeOfDataMapOfShapeListOfC2DF();
		%feature("autodoc", "1");
		Handle_TopOpeBRepTool_DataMapNodeOfDataMapOfShapeListOfC2DF(const Handle_TopOpeBRepTool_DataMapNodeOfDataMapOfShapeListOfC2DF &aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRepTool_DataMapNodeOfDataMapOfShapeListOfC2DF(const TopOpeBRepTool_DataMapNodeOfDataMapOfShapeListOfC2DF *anItem);
		%feature("autodoc", "1");
		Handle_TopOpeBRepTool_DataMapNodeOfDataMapOfShapeListOfC2DF const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TopOpeBRepTool_DataMapNodeOfDataMapOfShapeListOfC2DF {
	TopOpeBRepTool_DataMapNodeOfDataMapOfShapeListOfC2DF* GetObject() {
	return (TopOpeBRepTool_DataMapNodeOfDataMapOfShapeListOfC2DF*)$self->Access();
	}
};

%nodefaultctor Handle_TopOpeBRepTool_DataMapNodeOfDataMapOfShapeReal;
class Handle_TopOpeBRepTool_DataMapNodeOfDataMapOfShapeReal : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_TopOpeBRepTool_DataMapNodeOfDataMapOfShapeReal();
		%feature("autodoc", "1");
		Handle_TopOpeBRepTool_DataMapNodeOfDataMapOfShapeReal();
		%feature("autodoc", "1");
		Handle_TopOpeBRepTool_DataMapNodeOfDataMapOfShapeReal(const Handle_TopOpeBRepTool_DataMapNodeOfDataMapOfShapeReal &aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRepTool_DataMapNodeOfDataMapOfShapeReal(const TopOpeBRepTool_DataMapNodeOfDataMapOfShapeReal *anItem);
		%feature("autodoc", "1");
		Handle_TopOpeBRepTool_DataMapNodeOfDataMapOfShapeReal const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TopOpeBRepTool_DataMapNodeOfDataMapOfShapeReal {
	TopOpeBRepTool_DataMapNodeOfDataMapOfShapeReal* GetObject() {
	return (TopOpeBRepTool_DataMapNodeOfDataMapOfShapeReal*)$self->Access();
	}
};

%nodefaultctor Handle_TopOpeBRepTool_DataMapNodeOfDataMapOfOrientedShapeC2DF;
class Handle_TopOpeBRepTool_DataMapNodeOfDataMapOfOrientedShapeC2DF : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_TopOpeBRepTool_DataMapNodeOfDataMapOfOrientedShapeC2DF();
		%feature("autodoc", "1");
		Handle_TopOpeBRepTool_DataMapNodeOfDataMapOfOrientedShapeC2DF();
		%feature("autodoc", "1");
		Handle_TopOpeBRepTool_DataMapNodeOfDataMapOfOrientedShapeC2DF(const Handle_TopOpeBRepTool_DataMapNodeOfDataMapOfOrientedShapeC2DF &aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRepTool_DataMapNodeOfDataMapOfOrientedShapeC2DF(const TopOpeBRepTool_DataMapNodeOfDataMapOfOrientedShapeC2DF *anItem);
		%feature("autodoc", "1");
		Handle_TopOpeBRepTool_DataMapNodeOfDataMapOfOrientedShapeC2DF const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TopOpeBRepTool_DataMapNodeOfDataMapOfOrientedShapeC2DF {
	TopOpeBRepTool_DataMapNodeOfDataMapOfOrientedShapeC2DF* GetObject() {
	return (TopOpeBRepTool_DataMapNodeOfDataMapOfOrientedShapeC2DF*)$self->Access();
	}
};

%nodefaultctor Handle_TopOpeBRepTool_DataMapNodeOfDataMapOfShapeface;
class Handle_TopOpeBRepTool_DataMapNodeOfDataMapOfShapeface : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_TopOpeBRepTool_DataMapNodeOfDataMapOfShapeface();
		%feature("autodoc", "1");
		Handle_TopOpeBRepTool_DataMapNodeOfDataMapOfShapeface();
		%feature("autodoc", "1");
		Handle_TopOpeBRepTool_DataMapNodeOfDataMapOfShapeface(const Handle_TopOpeBRepTool_DataMapNodeOfDataMapOfShapeface &aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRepTool_DataMapNodeOfDataMapOfShapeface(const TopOpeBRepTool_DataMapNodeOfDataMapOfShapeface *anItem);
		%feature("autodoc", "1");
		Handle_TopOpeBRepTool_DataMapNodeOfDataMapOfShapeface const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TopOpeBRepTool_DataMapNodeOfDataMapOfShapeface {
	TopOpeBRepTool_DataMapNodeOfDataMapOfShapeface* GetObject() {
	return (TopOpeBRepTool_DataMapNodeOfDataMapOfShapeface*)$self->Access();
	}
};

%nodefaultctor Handle_TopOpeBRepTool_ListNodeOfListOfC2DF;
class Handle_TopOpeBRepTool_ListNodeOfListOfC2DF : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_TopOpeBRepTool_ListNodeOfListOfC2DF();
		%feature("autodoc", "1");
		Handle_TopOpeBRepTool_ListNodeOfListOfC2DF();
		%feature("autodoc", "1");
		Handle_TopOpeBRepTool_ListNodeOfListOfC2DF(const Handle_TopOpeBRepTool_ListNodeOfListOfC2DF &aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRepTool_ListNodeOfListOfC2DF(const TopOpeBRepTool_ListNodeOfListOfC2DF *anItem);
		%feature("autodoc", "1");
		Handle_TopOpeBRepTool_ListNodeOfListOfC2DF const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TopOpeBRepTool_ListNodeOfListOfC2DF {
	TopOpeBRepTool_ListNodeOfListOfC2DF* GetObject() {
	return (TopOpeBRepTool_ListNodeOfListOfC2DF*)$self->Access();
	}
};

%nodefaultctor Handle_TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfSolidClassifier;
class Handle_TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfSolidClassifier : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfSolidClassifier();
		%feature("autodoc", "1");
		Handle_TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfSolidClassifier();
		%feature("autodoc", "1");
		Handle_TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfSolidClassifier(const Handle_TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfSolidClassifier &aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfSolidClassifier(const TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfSolidClassifier *anItem);
		%feature("autodoc", "1");
		Handle_TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfSolidClassifier const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfSolidClassifier {
	TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfSolidClassifier* GetObject() {
	return (TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfSolidClassifier*)$self->Access();
	}
};

%nodefaultctor Handle_TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeBox2d;
class Handle_TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeBox2d : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeBox2d();
		%feature("autodoc", "1");
		Handle_TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeBox2d();
		%feature("autodoc", "1");
		Handle_TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeBox2d(const Handle_TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeBox2d &aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeBox2d(const TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeBox2d *anItem);
		%feature("autodoc", "1");
		Handle_TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeBox2d const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeBox2d {
	TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeBox2d* GetObject() {
	return (TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeBox2d*)$self->Access();
	}
};

%nodefaultctor Handle_TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeBox;
class Handle_TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeBox : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeBox();
		%feature("autodoc", "1");
		Handle_TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeBox();
		%feature("autodoc", "1");
		Handle_TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeBox(const Handle_TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeBox &aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeBox(const TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeBox *anItem);
		%feature("autodoc", "1");
		Handle_TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeBox const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeBox {
	TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeBox* GetObject() {
	return (TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeBox*)$self->Access();
	}
};

%nodefaultctor TopOpeBRepTool_DataMapOfShapeListOfC2DF;
class TopOpeBRepTool_DataMapOfShapeListOfC2DF : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TopOpeBRepTool_DataMapOfShapeListOfC2DF(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TopOpeBRepTool_DataMapOfShapeListOfC2DF & Assign(const TopOpeBRepTool_DataMapOfShapeListOfC2DF &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~TopOpeBRepTool_DataMapOfShapeListOfC2DF();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TopoDS_Shape &K, const TopOpeBRepTool_ListOfC2DF &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TopoDS_Shape &K);
		%feature("autodoc", "1");
		const TopOpeBRepTool_ListOfC2DF & Find(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		const TopOpeBRepTool_ListOfC2DF & operator()(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		TopOpeBRepTool_ListOfC2DF & ChangeFind(const TopoDS_Shape &K);
		%feature("autodoc", "1");
		TopOpeBRepTool_ListOfC2DF & operator()(const TopoDS_Shape &K);

};

%nodefaultctor TopOpeBRepTool_IndexedDataMapOfShapeBox;
class TopOpeBRepTool_IndexedDataMapOfShapeBox : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TopOpeBRepTool_IndexedDataMapOfShapeBox(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TopOpeBRepTool_IndexedDataMapOfShapeBox & Assign(const TopOpeBRepTool_IndexedDataMapOfShapeBox &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~TopOpeBRepTool_IndexedDataMapOfShapeBox();
		%feature("autodoc", "1");
		Standard_Integer Add(const TopoDS_Shape &K, const Bnd_Box &I);
		%feature("autodoc", "1");
		void Substitute(const Standard_Integer I, const TopoDS_Shape &K, const Bnd_Box &T);
		%feature("autodoc", "1");
		void RemoveLast();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		const TopoDS_Shape & FindKey(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const Bnd_Box & FindFromIndex(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const Bnd_Box & operator()(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Bnd_Box & ChangeFromIndex(const Standard_Integer I);
		%feature("autodoc", "1");
		Bnd_Box & operator()(const Standard_Integer I);
		%feature("autodoc", "1");
		Standard_Integer FindIndex(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		const Bnd_Box & FindFromKey(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		Bnd_Box & ChangeFromKey(const TopoDS_Shape &K);

};

%nodefaultctor TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeBox2d;
class TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeBox2d : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeBox2d(const TopoDS_Shape &K1, const Standard_Integer K2, const Bnd_Box2d &I, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
		%feature("autodoc", "1");
		TopoDS_Shape & Key1() const;
		%feature("autodoc", "1");
		Standard_Integer & Key2() const;
		%feature("autodoc", "1");
		TCollection_MapNodePtr & Next2() const;
		%feature("autodoc", "1");
		Bnd_Box2d & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeBox2d();

};
%extend TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeBox2d {
	Handle_TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeBox2d GetHandle() {
	return *(Handle_TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeBox2d*) &$self;
	}
};

%nodefaultctor TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeAddress;
class TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeAddress : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeAddress(const TopoDS_Shape &K1, const Standard_Integer K2, const Standard_Address &I, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
		%feature("autodoc", "1");
		TopoDS_Shape & Key1() const;
		%feature("autodoc", "1");
		Standard_Integer & Key2() const;
		%feature("autodoc", "1");
		TCollection_MapNodePtr & Next2() const;
		%feature("autodoc", "1");
		Standard_Address & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeAddress();

};
%extend TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeAddress {
	Handle_TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeAddress GetHandle() {
	return *(Handle_TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeAddress*) &$self;
	}
};

%nodefaultctor TopOpeBRepTool_DataMapIteratorOfDataMapOfShapeListOfC2DF;
class TopOpeBRepTool_DataMapIteratorOfDataMapOfShapeListOfC2DF : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		~TopOpeBRepTool_DataMapIteratorOfDataMapOfShapeListOfC2DF();
		%feature("autodoc", "1");
		TopOpeBRepTool_DataMapIteratorOfDataMapOfShapeListOfC2DF();
		%feature("autodoc", "1");
		TopOpeBRepTool_DataMapIteratorOfDataMapOfShapeListOfC2DF(const TopOpeBRepTool_DataMapOfShapeListOfC2DF &aMap);
		%feature("autodoc", "1");
		void Initialize(const TopOpeBRepTool_DataMapOfShapeListOfC2DF &aMap);
		%feature("autodoc", "1");
		const TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		const TopOpeBRepTool_ListOfC2DF & Value() const;

};

%nodefaultctor TopOpeBRepTool_ListNodeOfListOfC2DF;
class TopOpeBRepTool_ListNodeOfListOfC2DF : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TopOpeBRepTool_ListNodeOfListOfC2DF(const TopOpeBRepTool_C2DF &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopOpeBRepTool_C2DF & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~TopOpeBRepTool_ListNodeOfListOfC2DF();

};
%extend TopOpeBRepTool_ListNodeOfListOfC2DF {
	Handle_TopOpeBRepTool_ListNodeOfListOfC2DF GetHandle() {
	return *(Handle_TopOpeBRepTool_ListNodeOfListOfC2DF*) &$self;
	}
};

%nodefaultctor TopOpeBRepTool_REGUS;
class TopOpeBRepTool_REGUS {
	public:
		%feature("autodoc", "1");
		~TopOpeBRepTool_REGUS();
		%feature("autodoc", "1");
		TopOpeBRepTool_REGUS();
		%feature("autodoc", "1");
		void Init(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		const TopoDS_Shape & S() const;
		%feature("autodoc", "1");
		Standard_Boolean MapS();
		%feature("autodoc", "1");
		Standard_Boolean WireToFace(const TopoDS_Face &Fanc, const TopTools_ListOfShape &nWs, TopTools_ListOfShape & nFs);
		%feature("autodoc", "1");
		Standard_Boolean SplitF(const TopoDS_Face &Fanc, TopTools_ListOfShape & FSplits);
		%feature("autodoc", "1");
		Standard_Boolean SplitFaces();
		%feature("autodoc", "1");
		Standard_Boolean REGU();
		%feature("autodoc", "1");
		void SetFsplits(TopTools_DataMapOfShapeListOfShape & Fsplits);
		%feature("autodoc", "1");
		void GetFsplits(TopTools_DataMapOfShapeListOfShape & Fsplits) const;
		%feature("autodoc", "1");
		void SetOshNsh(TopTools_DataMapOfShapeListOfShape & OshNsh);
		%feature("autodoc", "1");
		void GetOshNsh(TopTools_DataMapOfShapeListOfShape & OshNsh) const;
		%feature("autodoc", "1");
		Standard_Boolean InitBlock();
		%feature("autodoc", "1");
		Standard_Boolean NextinBlock();
		%feature("autodoc", "1");
		Standard_Boolean NearestF(const TopoDS_Edge &e, const TopTools_ListOfShape &lof, TopoDS_Face & ffound) const;

};

%nodefaultctor TopOpeBRepTool_face;
class TopOpeBRepTool_face {
	public:
		%feature("autodoc", "1");
		~TopOpeBRepTool_face();
		%feature("autodoc", "1");
		TopOpeBRepTool_face();
		%feature("autodoc", "1");
		Standard_Boolean Init(const TopoDS_Wire &W, const TopoDS_Face &Fref);
		%feature("autodoc", "1");
		const TopoDS_Wire & W() const;
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Boolean Finite() const;
		%feature("autodoc", "1");
		const TopoDS_Face & Ffinite() const;
		%feature("autodoc", "1");
		TopoDS_Face RealF() const;

};

%nodefaultctor TopOpeBRepTool_ShapeClassifier;
class TopOpeBRepTool_ShapeClassifier {
	public:
		%feature("autodoc", "1");
		~TopOpeBRepTool_ShapeClassifier();
		%feature("autodoc", "1");
		TopOpeBRepTool_ShapeClassifier();
		%feature("autodoc", "1");
		TopOpeBRepTool_ShapeClassifier(const TopoDS_Shape &SRef);
		%feature("autodoc", "1");
		void ClearAll();
		%feature("autodoc", "1");
		void ClearCurrent();
		%feature("autodoc", "1");
		void SetReference(const TopoDS_Shape &SRef);
		%feature("autodoc", "1");
		TopAbs_State StateShapeShape(const TopoDS_Shape &S, const TopoDS_Shape &SRef, const Standard_Integer samedomain=0);
		%feature("autodoc", "1");
		Standard_Integer SameDomain() const;
		%feature("autodoc", "1");
		void SameDomain(const Standard_Integer samedomain);
		%feature("autodoc", "1");
		TopAbs_State StateShapeShape(const TopoDS_Shape &S, const TopoDS_Shape &AvoidS, const TopoDS_Shape &SRef);
		%feature("autodoc", "1");
		TopAbs_State StateShapeShape(const TopoDS_Shape &S, const TopTools_ListOfShape &LAvoidS, const TopoDS_Shape &SRef);
		%feature("autodoc", "1");
		TopAbs_State StateShapeReference(const TopoDS_Shape &S, const TopoDS_Shape &AvoidS);
		%feature("autodoc", "1");
		TopAbs_State StateShapeReference(const TopoDS_Shape &S, const TopTools_ListOfShape &LAvoidS);
		%feature("autodoc", "1");
		TopOpeBRepTool_SolidClassifier & ChangeSolidClassifier();
		%feature("autodoc", "1");
		void StateP2DReference(const gp_Pnt2d &P2D);
		%feature("autodoc", "1");
		void StateP3DReference(const gp_Pnt &P3D);
		%feature("autodoc", "1");
		TopAbs_State State() const;
		%feature("autodoc", "1");
		const gp_Pnt2d & P2D() const;
		%feature("autodoc", "1");
		const gp_Pnt & P3D() const;

};

%nodefaultctor TopOpeBRepTool_GeomTool;
class TopOpeBRepTool_GeomTool {
	public:
		%feature("autodoc", "1");
		~TopOpeBRepTool_GeomTool();
		%feature("autodoc", "1");
		TopOpeBRepTool_GeomTool(const TopOpeBRepTool_OutCurveType TypeC3D=TopOpeBRepTool_BSPLINE1, const Standard_Boolean CompC3D=1, const Standard_Boolean CompPC1=1, const Standard_Boolean CompPC2=1);
		%feature("autodoc", "1");
		void Define(const TopOpeBRepTool_OutCurveType TypeC3D, const Standard_Boolean CompC3D, const Standard_Boolean CompPC1, const Standard_Boolean CompPC2);
		%feature("autodoc", "1");
		void Define(const TopOpeBRepTool_OutCurveType TypeC3D);
		%feature("autodoc", "1");
		void DefineCurves(const Standard_Boolean CompC3D);
		%feature("autodoc", "1");
		void DefinePCurves1(const Standard_Boolean CompPC1);
		%feature("autodoc", "1");
		void DefinePCurves2(const Standard_Boolean CompPC2);
		%feature("autodoc", "1");
		void Define(const TopOpeBRepTool_GeomTool &GT);
		%feature("autodoc", "1");
		void GetTolerances(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		void SetTolerances(const Standard_Real tol3d, const Standard_Real tol2d);
		%feature("autodoc", "1");
		void GetTolerances(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Boolean & relative) const;
		%feature("autodoc", "1");
		void SetTolerances(const Standard_Real tol3d, const Standard_Real tol2d, const Standard_Boolean relative);
		%feature("autodoc", "1");
		Standard_Integer NbPntMax() const;
		%feature("autodoc", "1");
		void SetNbPntMax(const Standard_Integer NbPntMax);
		%feature("autodoc", "1");
		TopOpeBRepTool_OutCurveType TypeC3D() const;
		%feature("autodoc", "1");
		Standard_Boolean CompC3D() const;
		%feature("autodoc", "1");
		Standard_Boolean CompPC1() const;
		%feature("autodoc", "1");
		Standard_Boolean CompPC2() const;

};

%nodefaultctor TopOpeBRepTool_REGUW;
class TopOpeBRepTool_REGUW {
	public:
		%feature("autodoc", "1");
		~TopOpeBRepTool_REGUW();
		%feature("autodoc", "1");
		TopOpeBRepTool_REGUW(const TopoDS_Face &FRef);
		%feature("autodoc", "1");
		const TopoDS_Face & Fref() const;
		%feature("autodoc", "1");
		void SetEsplits(TopTools_DataMapOfShapeListOfShape & Esplits);
		%feature("autodoc", "1");
		void GetEsplits(TopTools_DataMapOfShapeListOfShape & Esplits) const;
		%feature("autodoc", "1");
		void SetOwNw(TopTools_DataMapOfShapeListOfShape & OwNw);
		%feature("autodoc", "1");
		void GetOwNw(TopTools_DataMapOfShapeListOfShape & OwNw) const;
		%feature("autodoc", "1");
		Standard_Boolean SplitEds();
		%feature("autodoc", "1");
		void Init(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		const TopoDS_Shape & S() const;
		%feature("autodoc", "1");
		Standard_Boolean HasInit() const;
		%feature("autodoc", "1");
		Standard_Boolean MapS();
		%feature("autodoc", "1");
		Standard_Boolean REGU(const Standard_Integer istep, const TopoDS_Shape &Scur, TopTools_ListOfShape & Splits);
		%feature("autodoc", "1");
		Standard_Boolean REGU();
		%feature("autodoc", "1");
		Standard_Boolean GetSplits(TopTools_ListOfShape & Splits) const;
		%feature("autodoc", "1");
		Standard_Boolean InitBlock();
		%feature("autodoc", "1");
		Standard_Boolean NextinBlock();
		%feature("autodoc", "1");
		Standard_Boolean NearestE(const TopTools_ListOfShape &loe, TopoDS_Edge & efound) const;
		%feature("autodoc", "1");
		Standard_Boolean Connexity(const TopoDS_Vertex &v, TopOpeBRepTool_connexity & co) const;
		%feature("autodoc", "1");
		Standard_Boolean AddNewConnexity(const TopoDS_Vertex &v, const Standard_Integer OriKey, const TopoDS_Edge &e);
		%feature("autodoc", "1");
		Standard_Boolean RemoveOldConnexity(const TopoDS_Vertex &v, const Standard_Integer OriKey, const TopoDS_Edge &e);
		%feature("autodoc", "1");
		Standard_Boolean UpdateMultiple(const TopoDS_Vertex &v);

};

%nodefaultctor TopOpeBRepTool_SolidClassifier;
class TopOpeBRepTool_SolidClassifier {
	public:
		%feature("autodoc", "1");
		TopOpeBRepTool_SolidClassifier();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		~TopOpeBRepTool_SolidClassifier();
		%feature("autodoc", "1");
		void LoadSolid(const TopoDS_Solid &S);
		%feature("autodoc", "1");
		TopAbs_State Classify(const TopoDS_Solid &S, const gp_Pnt &P, const Standard_Real Tol);
		%feature("autodoc", "1");
		void LoadShell(const TopoDS_Shell &S);
		%feature("autodoc", "1");
		TopAbs_State Classify(const TopoDS_Shell &S, const gp_Pnt &P, const Standard_Real Tol);
		%feature("autodoc", "1");
		TopAbs_State State() const;

};

%nodefaultctor TopOpeBRepTool_ShapeExplorer;
class TopOpeBRepTool_ShapeExplorer {
	public:
		%feature("autodoc", "1");
		~TopOpeBRepTool_ShapeExplorer();
		%feature("autodoc", "1");
		TopOpeBRepTool_ShapeExplorer();
		%feature("autodoc", "1");
		TopOpeBRepTool_ShapeExplorer(const TopoDS_Shape &S, const TopAbs_ShapeEnum ToFind, const TopAbs_ShapeEnum ToAvoid=TopAbs_SHAPE);
		%feature("autodoc", "1");
		void Init(const TopoDS_Shape &S, const TopAbs_ShapeEnum ToFind, const TopAbs_ShapeEnum ToAvoid=TopAbs_SHAPE);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		const TopoDS_Shape & Current() const;
		%feature("autodoc", "1");
		Standard_Integer NbShapes() const;
		%feature("autodoc", "1");
		Standard_Integer Index() const;
		%feature("autodoc", "1");
		Standard_OStream & DumpCurrent(Standard_OStream & OS) const;

};

%nodefaultctor TopOpeBRepTool_IndexedDataMapOfShapeAddress;
class TopOpeBRepTool_IndexedDataMapOfShapeAddress : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TopOpeBRepTool_IndexedDataMapOfShapeAddress(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TopOpeBRepTool_IndexedDataMapOfShapeAddress & Assign(const TopOpeBRepTool_IndexedDataMapOfShapeAddress &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~TopOpeBRepTool_IndexedDataMapOfShapeAddress();
		%feature("autodoc", "1");
		Standard_Integer Add(const TopoDS_Shape &K, const Standard_Address &I);
		%feature("autodoc", "1");
		void Substitute(const Standard_Integer I, const TopoDS_Shape &K, const Standard_Address &T);
		%feature("autodoc", "1");
		void RemoveLast();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		const TopoDS_Shape & FindKey(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const Standard_Address & FindFromIndex(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const Standard_Address & operator()(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Standard_Address & ChangeFromIndex(const Standard_Integer I);
		%feature("autodoc", "1");
		Standard_Address & operator()(const Standard_Integer I);
		%feature("autodoc", "1");
		Standard_Integer FindIndex(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		const Standard_Address & FindFromKey(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		Standard_Address & ChangeFromKey(const TopoDS_Shape &K);

};

%nodefaultctor TopOpeBRepTool_DataMapIteratorOfDataMapOfShapeReal;
class TopOpeBRepTool_DataMapIteratorOfDataMapOfShapeReal : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		~TopOpeBRepTool_DataMapIteratorOfDataMapOfShapeReal();
		%feature("autodoc", "1");
		TopOpeBRepTool_DataMapIteratorOfDataMapOfShapeReal();
		%feature("autodoc", "1");
		TopOpeBRepTool_DataMapIteratorOfDataMapOfShapeReal(const TopOpeBRepTool_DataMapOfShapeReal &aMap);
		%feature("autodoc", "1");
		void Initialize(const TopOpeBRepTool_DataMapOfShapeReal &aMap);
		%feature("autodoc", "1");
		const TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		const Standard_Real & Value() const;

};

%nodefaultctor TopOpeBRepTool_DataMapNodeOfDataMapOfShapeReal;
class TopOpeBRepTool_DataMapNodeOfDataMapOfShapeReal : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TopOpeBRepTool_DataMapNodeOfDataMapOfShapeReal(const TopoDS_Shape &K, const Standard_Real &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		Standard_Real & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~TopOpeBRepTool_DataMapNodeOfDataMapOfShapeReal();

};
%extend TopOpeBRepTool_DataMapNodeOfDataMapOfShapeReal {
	Handle_TopOpeBRepTool_DataMapNodeOfDataMapOfShapeReal GetHandle() {
	return *(Handle_TopOpeBRepTool_DataMapNodeOfDataMapOfShapeReal*) &$self;
	}
};

%nodefaultctor TopOpeBRepTool_DataMapIteratorOfDataMapOfShapeface;
class TopOpeBRepTool_DataMapIteratorOfDataMapOfShapeface : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		~TopOpeBRepTool_DataMapIteratorOfDataMapOfShapeface();
		%feature("autodoc", "1");
		TopOpeBRepTool_DataMapIteratorOfDataMapOfShapeface();
		%feature("autodoc", "1");
		TopOpeBRepTool_DataMapIteratorOfDataMapOfShapeface(const TopOpeBRepTool_DataMapOfShapeface &aMap);
		%feature("autodoc", "1");
		void Initialize(const TopOpeBRepTool_DataMapOfShapeface &aMap);
		%feature("autodoc", "1");
		const TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		const TopOpeBRepTool_face & Value() const;

};

%nodefaultctor TopOpeBRepTool_CORRISO;
class TopOpeBRepTool_CORRISO {
	public:
		%feature("autodoc", "1");
		~TopOpeBRepTool_CORRISO();
		%feature("autodoc", "1");
		TopOpeBRepTool_CORRISO();
		%feature("autodoc", "1");
		TopOpeBRepTool_CORRISO(const TopoDS_Face &FRef);
		%feature("autodoc", "1");
		const TopoDS_Face & Fref() const;
		%feature("autodoc", "1");
		const GeomAdaptor_Surface & GASref() const;
		%feature("autodoc", "1");
		Standard_Boolean Refclosed(const Standard_Integer x, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Boolean Init(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		const TopoDS_Shape & S() const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Eds() const;
		%feature("autodoc", "1");
		Standard_Boolean UVClosed() const;
		%feature("autodoc", "1");
		Standard_Real Tol(const Standard_Integer I, const Standard_Real tol3d) const;
		%feature("autodoc", "1");
		Standard_Boolean PurgeFyClosingE(const TopTools_ListOfShape &ClEds, TopTools_ListOfShape & fyClEds) const;
		%feature("autodoc", "1");
		Standard_Integer EdgeOUTofBoundsUV(const TopoDS_Edge &E, const Standard_Boolean onU, const Standard_Real tolx, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Boolean EdgesOUTofBoundsUV(const TopTools_ListOfShape &EdsToCheck, const Standard_Boolean onU, const Standard_Real tolx, TopTools_DataMapOfOrientedShapeInteger & FyEds) const;
		%feature("autodoc", "1");
		Standard_Boolean EdgeWithFaultyUV(const TopoDS_Edge &E, Standard_Integer & Ivfaulty) const;
		%feature("autodoc", "1");
		Standard_Boolean EdgesWithFaultyUV(const TopTools_ListOfShape &EdsToCheck, const Standard_Integer nfybounds, TopTools_DataMapOfOrientedShapeInteger & FyEds, const Standard_Boolean stopatfirst=0) const;
		%feature("autodoc", "1");
		Standard_Boolean EdgeWithFaultyUV(const TopTools_ListOfShape &EdsToCheck, const Standard_Integer nfybounds, TopoDS_Shape & fyE, Standard_Integer & Ifaulty) const;
		%feature("autodoc", "1");
		Standard_Boolean TrslUV(const Standard_Boolean onU, const TopTools_DataMapOfOrientedShapeInteger &FyEds);
		%feature("autodoc", "1");
		Standard_Boolean GetnewS(TopoDS_Face & newS) const;
		%feature("autodoc", "1");
		Standard_Boolean UVRep(const TopoDS_Edge &E, TopOpeBRepTool_C2DF & C2DF) const;
		%feature("autodoc", "1");
		Standard_Boolean SetUVRep(const TopoDS_Edge &E, const TopOpeBRepTool_C2DF &C2DF);
		%feature("autodoc", "1");
		Standard_Boolean Connexity(const TopoDS_Vertex &V, TopTools_ListOfShape & Eds) const;
		%feature("autodoc", "1");
		Standard_Boolean SetConnexity(const TopoDS_Vertex &V, const TopTools_ListOfShape &Eds);
		%feature("autodoc", "1");
		Standard_Boolean AddNewConnexity(const TopoDS_Vertex &V, const TopoDS_Edge &E);
		%feature("autodoc", "1");
		Standard_Boolean RemoveOldConnexity(const TopoDS_Vertex &V, const TopoDS_Edge &E);

};

%nodefaultctor TopOpeBRepTool_DataMapNodeOfDataMapOfShapeface;
class TopOpeBRepTool_DataMapNodeOfDataMapOfShapeface : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TopOpeBRepTool_DataMapNodeOfDataMapOfShapeface(const TopoDS_Shape &K, const TopOpeBRepTool_face &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		TopOpeBRepTool_face & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~TopOpeBRepTool_DataMapNodeOfDataMapOfShapeface();

};
%extend TopOpeBRepTool_DataMapNodeOfDataMapOfShapeface {
	Handle_TopOpeBRepTool_DataMapNodeOfDataMapOfShapeface GetHandle() {
	return *(Handle_TopOpeBRepTool_DataMapNodeOfDataMapOfShapeface*) &$self;
	}
};

%nodefaultctor TopOpeBRepTool_DataMapOfShapeReal;
class TopOpeBRepTool_DataMapOfShapeReal : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TopOpeBRepTool_DataMapOfShapeReal(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TopOpeBRepTool_DataMapOfShapeReal & Assign(const TopOpeBRepTool_DataMapOfShapeReal &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~TopOpeBRepTool_DataMapOfShapeReal();
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

%nodefaultctor TopOpeBRepTool_DataMapIteratorOfDataMapOfOrientedShapeC2DF;
class TopOpeBRepTool_DataMapIteratorOfDataMapOfOrientedShapeC2DF : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		~TopOpeBRepTool_DataMapIteratorOfDataMapOfOrientedShapeC2DF();
		%feature("autodoc", "1");
		TopOpeBRepTool_DataMapIteratorOfDataMapOfOrientedShapeC2DF();
		%feature("autodoc", "1");
		TopOpeBRepTool_DataMapIteratorOfDataMapOfOrientedShapeC2DF(const TopOpeBRepTool_DataMapOfOrientedShapeC2DF &aMap);
		%feature("autodoc", "1");
		void Initialize(const TopOpeBRepTool_DataMapOfOrientedShapeC2DF &aMap);
		%feature("autodoc", "1");
		const TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		const TopOpeBRepTool_C2DF & Value() const;

};

%nodefaultctor TopOpeBRepTool_CLASSI;
class TopOpeBRepTool_CLASSI {
	public:
		%feature("autodoc", "1");
		~TopOpeBRepTool_CLASSI();
		%feature("autodoc", "1");
		TopOpeBRepTool_CLASSI();
		%feature("autodoc", "1");
		void Init2d(const TopoDS_Face &Fref);
		%feature("autodoc", "1");
		Standard_Boolean HasInit2d() const;
		%feature("autodoc", "1");
		Standard_Boolean Add2d(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		Standard_Boolean GetBox2d(const TopoDS_Shape &S, Bnd_Box2d & Box2d);
		%feature("autodoc", "1");
		Standard_Integer ClassiBnd2d(const TopoDS_Shape &S1, const TopoDS_Shape &S2, const Standard_Real tol, const Standard_Boolean checklarge);
		%feature("autodoc", "1");
		Standard_Integer Classip2d(const TopoDS_Shape &S1, const TopoDS_Shape &S2, const Standard_Integer stabnd2d12);
		%feature("autodoc", "1");
		Standard_Boolean Getface(const TopoDS_Shape &S, TopOpeBRepTool_face & fa) const;
		%feature("autodoc", "1");
		Standard_Boolean Classilist(const TopTools_ListOfShape &lS, TopTools_DataMapOfShapeListOfShape & mapgreasma);

};

%nodefaultctor TopOpeBRepTool_HBoxTool;
class TopOpeBRepTool_HBoxTool : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TopOpeBRepTool_HBoxTool();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void AddBoxes(const TopoDS_Shape &S, const TopAbs_ShapeEnum TS, const TopAbs_ShapeEnum TA=TopAbs_SHAPE);
		%feature("autodoc", "1");
		void AddBox(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		void ComputeBox(const TopoDS_Shape &S, Bnd_Box & B);
		%feature("autodoc", "1");
		void ComputeBoxOnVertices(const TopoDS_Shape &S, Bnd_Box & B);
		%feature("autodoc", "1");
		void DumpB(const Bnd_Box &B);
		%feature("autodoc", "1");
		const Bnd_Box & Box(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		const Bnd_Box & Box(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Standard_Boolean HasBox(const TopoDS_Shape &S) const;
		%feature("autodoc", "1");
		const TopoDS_Shape & Shape(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Standard_Integer Index(const TopoDS_Shape &S) const;
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		TopOpeBRepTool_IndexedDataMapOfShapeBox & ChangeIMS();
		%feature("autodoc", "1");
		const TopOpeBRepTool_IndexedDataMapOfShapeBox & IMS() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~TopOpeBRepTool_HBoxTool();

};
%extend TopOpeBRepTool_HBoxTool {
	Handle_TopOpeBRepTool_HBoxTool GetHandle() {
	return *(Handle_TopOpeBRepTool_HBoxTool*) &$self;
	}
};

%nodefaultctor TopOpeBRepTool_DataMapOfShapeface;
class TopOpeBRepTool_DataMapOfShapeface : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TopOpeBRepTool_DataMapOfShapeface(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TopOpeBRepTool_DataMapOfShapeface & Assign(const TopOpeBRepTool_DataMapOfShapeface &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~TopOpeBRepTool_DataMapOfShapeface();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TopoDS_Shape &K, const TopOpeBRepTool_face &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TopoDS_Shape &K);
		%feature("autodoc", "1");
		const TopOpeBRepTool_face & Find(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		const TopOpeBRepTool_face & operator()(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		TopOpeBRepTool_face & ChangeFind(const TopoDS_Shape &K);
		%feature("autodoc", "1");
		TopOpeBRepTool_face & operator()(const TopoDS_Shape &K);

};

%nodefaultctor TopOpeBRepTool_IndexedDataMapOfShapeBox2d;
class TopOpeBRepTool_IndexedDataMapOfShapeBox2d : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TopOpeBRepTool_IndexedDataMapOfShapeBox2d(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TopOpeBRepTool_IndexedDataMapOfShapeBox2d & Assign(const TopOpeBRepTool_IndexedDataMapOfShapeBox2d &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~TopOpeBRepTool_IndexedDataMapOfShapeBox2d();
		%feature("autodoc", "1");
		Standard_Integer Add(const TopoDS_Shape &K, const Bnd_Box2d &I);
		%feature("autodoc", "1");
		void Substitute(const Standard_Integer I, const TopoDS_Shape &K, const Bnd_Box2d &T);
		%feature("autodoc", "1");
		void RemoveLast();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		const TopoDS_Shape & FindKey(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const Bnd_Box2d & FindFromIndex(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const Bnd_Box2d & operator()(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Bnd_Box2d & ChangeFromIndex(const Standard_Integer I);
		%feature("autodoc", "1");
		Bnd_Box2d & operator()(const Standard_Integer I);
		%feature("autodoc", "1");
		Standard_Integer FindIndex(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		const Bnd_Box2d & FindFromKey(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		Bnd_Box2d & ChangeFromKey(const TopoDS_Shape &K);

};

%nodefaultctor TopOpeBRepTool_C2DF;
class TopOpeBRepTool_C2DF {
	public:
		%feature("autodoc", "1");
		~TopOpeBRepTool_C2DF();
		%feature("autodoc", "1");
		TopOpeBRepTool_C2DF();
		%feature("autodoc", "1");
		TopOpeBRepTool_C2DF(const Handle_Geom2d_Curve &PC, const Standard_Real f2d, const Standard_Real l2d, const Standard_Real tol, const TopoDS_Face &F);
		%feature("autodoc", "1");
		void SetPC(const Handle_Geom2d_Curve &PC, const Standard_Real f2d, const Standard_Real l2d, const Standard_Real tol);
		%feature("autodoc", "1");
		void SetFace(const TopoDS_Face &F);
		%feature("autodoc", "1");
		const Handle_Geom2d_Curve & PC(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		const TopoDS_Face & Face() const;
		%feature("autodoc", "1");
		Standard_Boolean IsPC(const Handle_Geom2d_Curve &PC) const;
		%feature("autodoc", "1");
		Standard_Boolean IsFace(const TopoDS_Face &F) const;

};

%nodefaultctor TopOpeBRepTool_CurveTool;
class TopOpeBRepTool_CurveTool {
	public:
		%feature("autodoc", "1");
		~TopOpeBRepTool_CurveTool();
		%feature("autodoc", "1");
		TopOpeBRepTool_CurveTool();
		%feature("autodoc", "1");
		TopOpeBRepTool_CurveTool(const TopOpeBRepTool_OutCurveType OCT);
		%feature("autodoc", "1");
		TopOpeBRepTool_CurveTool(const TopOpeBRepTool_GeomTool &GT);
		%feature("autodoc", "1");
		TopOpeBRepTool_GeomTool & ChangeGeomTool();
		%feature("autodoc", "1");
		const TopOpeBRepTool_GeomTool & GetGeomTool() const;
		%feature("autodoc", "1");
		void SetGeomTool(const TopOpeBRepTool_GeomTool &GT);
		%feature("autodoc", "1");
		Standard_Boolean MakeCurves(const Standard_Real min, const Standard_Real max, const Handle_Geom_Curve &C3D, const Handle_Geom2d_Curve &PC1, const Handle_Geom2d_Curve &PC2, const TopoDS_Shape &S1, const TopoDS_Shape &S2, Handle_Geom_Curve & C3DN, Handle_Geom2d_Curve & PC1N, Handle_Geom2d_Curve & PC2N, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Handle_Geom_Curve MakeBSpline1fromPnt(const TColgp_Array1OfPnt &P);
		%feature("autodoc", "1");
		Handle_Geom2d_Curve MakeBSpline1fromPnt2d(const TColgp_Array1OfPnt2d &P);
		%feature("autodoc", "1");
		Standard_Boolean IsProjectable(const TopoDS_Shape &S, const Handle_Geom_Curve &C);
		%feature("autodoc", "1");
		Handle_Geom2d_Curve MakePCurveOnFace(const TopoDS_Shape &S, const Handle_Geom_Curve &C, Standard_Real &OutValue, const Standard_Real first=0.0, const Standard_Real last=0.0);

};

%nodefaultctor TopOpeBRepTool_BoxSort;
class TopOpeBRepTool_BoxSort {
	public:
		%feature("autodoc", "1");
		TopOpeBRepTool_BoxSort();
		%feature("autodoc", "1");
		TopOpeBRepTool_BoxSort(const Handle_TopOpeBRepTool_HBoxTool &T);
		%feature("autodoc", "1");
		void SetHBoxTool(const Handle_TopOpeBRepTool_HBoxTool &T);
		%feature("autodoc", "1");
		const Handle_TopOpeBRepTool_HBoxTool & HBoxTool() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void AddBoxes(const TopoDS_Shape &S, const TopAbs_ShapeEnum TS, const TopAbs_ShapeEnum TA=TopAbs_SHAPE);
		%feature("autodoc", "1");
		void MakeHAB(const TopoDS_Shape &S, const TopAbs_ShapeEnum TS, const TopAbs_ShapeEnum TA=TopAbs_SHAPE);
		%feature("autodoc", "1");
		const Handle_Bnd_HArray1OfBox & HAB() const;
		%feature("autodoc", "1");
		void MakeHABCOB(const Handle_Bnd_HArray1OfBox &HAB, Bnd_Box & COB);
		%feature("autodoc", "1");
		const TopoDS_Shape & HABShape(const Standard_Integer I) const;
		%feature("autodoc", "1");
		void MakeCOB(const TopoDS_Shape &S, const TopAbs_ShapeEnum TS, const TopAbs_ShapeEnum TA=TopAbs_SHAPE);
		%feature("autodoc", "1");
		void AddBoxesMakeCOB(const TopoDS_Shape &S, const TopAbs_ShapeEnum TS, const TopAbs_ShapeEnum TA=TopAbs_SHAPE);
		%feature("autodoc", "1");
		const TColStd_ListIteratorOfListOfInteger & Compare(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		const TopoDS_Shape & TouchedShape(const TColStd_ListIteratorOfListOfInteger &I) const;
		%feature("autodoc", "1");
		const Bnd_Box & Box(const TopoDS_Shape &S) const;
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		~TopOpeBRepTool_BoxSort();

};

%nodefaultctor TopOpeBRepTool_TOOL;
class TopOpeBRepTool_TOOL {
	public:
		%feature("autodoc", "1");
		~TopOpeBRepTool_TOOL();
		%feature("autodoc", "1");
		TopOpeBRepTool_TOOL();
		%feature("autodoc", "1");
		Standard_Integer OriinSor(const TopoDS_Shape &sub, const TopoDS_Shape &S, const Standard_Boolean checkclo=0);
		%feature("autodoc", "1");
		Standard_Integer OriinSorclosed(const TopoDS_Shape &sub, const TopoDS_Shape &S);
		%feature("autodoc", "1");
		Standard_Boolean ClosedE(const TopoDS_Edge &E, TopoDS_Vertex & vclo);
		%feature("autodoc", "1");
		Standard_Boolean ClosedS(const TopoDS_Face &F);
		%feature("autodoc", "1");
		Standard_Boolean IsClosingE(const TopoDS_Edge &E, const TopoDS_Face &F);
		%feature("autodoc", "1");
		Standard_Boolean IsClosingE(const TopoDS_Edge &E, const TopoDS_Shape &W, const TopoDS_Face &F);
		%feature("autodoc", "1");
		void Vertices(const TopoDS_Edge &E, TopTools_Array1OfShape & Vces);
		%feature("autodoc", "1");
		TopoDS_Vertex Vertex(const Standard_Integer Iv, const TopoDS_Edge &E);
		%feature("autodoc", "1");
		Standard_Real ParE(const Standard_Integer Iv, const TopoDS_Edge &E);
		%feature("autodoc", "1");
		Standard_Integer OnBoundary(const Standard_Real par, const TopoDS_Edge &E);
		%feature("autodoc", "1");
		gp_Pnt2d UVF(const Standard_Real par, const TopOpeBRepTool_C2DF &C2DF);
		%feature("autodoc", "1");
		Standard_Boolean ParISO(const gp_Pnt2d &p2d, const TopoDS_Edge &e, const TopoDS_Face &f, Standard_Real &OutValue);
		%feature("autodoc", "1");
		Standard_Boolean ParE2d(const gp_Pnt2d &p2d, const TopoDS_Edge &e, const TopoDS_Face &f, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		Standard_Boolean Getduv(const TopoDS_Face &f, const gp_Pnt2d &uv, const gp_Vec &dir, const Standard_Real factor, gp_Dir2d & duv);
		%feature("autodoc", "1");
		Standard_Boolean uvApp(const TopoDS_Face &f, const TopoDS_Edge &e, const Standard_Real par, const Standard_Real eps, gp_Pnt2d & uvapp);
		%feature("autodoc", "1");
		Standard_Real TolUV(const TopoDS_Face &F, const Standard_Real tol3d);
		%feature("autodoc", "1");
		Standard_Real TolP(const TopoDS_Edge &E, const TopoDS_Face &F);
		%feature("autodoc", "1");
		Standard_Real minDUV(const TopoDS_Face &F);
		%feature("autodoc", "1");
		Standard_Boolean outUVbounds(const gp_Pnt2d &uv, const TopoDS_Face &F);
		%feature("autodoc", "1");
		void stuvF(const gp_Pnt2d &uv, const TopoDS_Face &F, Standard_Integer & onU, Standard_Integer & onV);
		%feature("autodoc", "1");
		Standard_Boolean TggeomE(const Standard_Real par, const BRepAdaptor_Curve &BC, gp_Vec & Tg);
		%feature("autodoc", "1");
		Standard_Boolean TggeomE(const Standard_Real par, const TopoDS_Edge &E, gp_Vec & Tg);
		%feature("autodoc", "1");
		Standard_Boolean TgINSIDE(const TopoDS_Vertex &v, const TopoDS_Edge &E, gp_Vec & Tg, Standard_Integer & OvinE);
		%feature("autodoc", "1");
		gp_Vec2d Tg2d(const Standard_Integer iv, const TopoDS_Edge &E, const TopOpeBRepTool_C2DF &C2DF);
		%feature("autodoc", "1");
		gp_Vec2d Tg2dApp(const Standard_Integer iv, const TopoDS_Edge &E, const TopOpeBRepTool_C2DF &C2DF, const Standard_Real factor);
		%feature("autodoc", "1");
		gp_Vec2d tryTg2dApp(const Standard_Integer iv, const TopoDS_Edge &E, const TopOpeBRepTool_C2DF &C2DF, const Standard_Real factor);
		%feature("autodoc", "1");
		Standard_Boolean XX(const gp_Pnt2d &uv, const TopoDS_Face &f, const Standard_Real par, const TopoDS_Edge &e, gp_Dir & xx);
		%feature("autodoc", "1");
		Standard_Boolean Nt(const gp_Pnt2d &uv, const TopoDS_Face &f, gp_Dir & normt);
		%feature("autodoc", "1");
		Standard_Boolean NggeomF(const gp_Pnt2d &uv, const TopoDS_Face &F, gp_Vec & ng);
		%feature("autodoc", "1");
		Standard_Boolean NgApp(const Standard_Real par, const TopoDS_Edge &E, const TopoDS_Face &F, const Standard_Real tola, gp_Dir & ngApp);
		%feature("autodoc", "1");
		Standard_Boolean tryNgApp(const Standard_Real par, const TopoDS_Edge &E, const TopoDS_Face &F, const Standard_Real tola, gp_Dir & ng);
		%feature("autodoc", "1");
		Standard_Integer tryOriEinF(const Standard_Real par, const TopoDS_Edge &E, const TopoDS_Face &F);
		%feature("autodoc", "1");
		Standard_Boolean IsQuad(const TopoDS_Edge &E);
		%feature("autodoc", "1");
		Standard_Boolean IsQuad(const TopoDS_Face &F);
		%feature("autodoc", "1");
		Standard_Boolean CurvE(const TopoDS_Edge &E, const Standard_Real par, const gp_Dir &tg0, Standard_Real &OutValue);
		%feature("autodoc", "1");
		Standard_Boolean CurvF(const TopoDS_Face &F, const gp_Pnt2d &uv, const gp_Dir &tg0, Standard_Real &OutValue, Standard_Boolean & direct);
		%feature("autodoc", "1");
		Standard_Boolean UVISO(const Handle_Geom2d_Curve &PC, Standard_Boolean & isou, Standard_Boolean & isov, gp_Dir2d & d2d, gp_Pnt2d & o2d);
		%feature("autodoc", "1");
		Standard_Boolean UVISO(const TopOpeBRepTool_C2DF &C2DF, Standard_Boolean & isou, Standard_Boolean & isov, gp_Dir2d & d2d, gp_Pnt2d & o2d);
		%feature("autodoc", "1");
		Standard_Boolean UVISO(const TopoDS_Edge &E, const TopoDS_Face &F, Standard_Boolean & isou, Standard_Boolean & isov, gp_Dir2d & d2d, gp_Pnt2d & o2d);
		%feature("autodoc", "1");
		Standard_Boolean IsonCLO(const Handle_Geom2d_Curve &PC, const Standard_Boolean onU, const Standard_Real xfirst, const Standard_Real xperiod, const Standard_Real xtol);
		%feature("autodoc", "1");
		Standard_Boolean IsonCLO(const TopOpeBRepTool_C2DF &C2DF, const Standard_Boolean onU, const Standard_Real xfirst, const Standard_Real xperiod, const Standard_Real xtol);
		%feature("autodoc", "1");
		void TrslUV(const gp_Vec2d &t2d, TopOpeBRepTool_C2DF & C2DF);
		%feature("autodoc", "1");
		Standard_Boolean TrslUVModifE(const gp_Vec2d &t2d, const TopoDS_Face &F, TopoDS_Edge & E);
		%feature("autodoc", "1");
		Standard_Real Matter(const gp_Vec &d1, const gp_Vec &d2, const gp_Vec &ref);
		%feature("autodoc", "1");
		Standard_Real Matter(const gp_Vec2d &d1, const gp_Vec2d &d2);
		%feature("autodoc", "1");
		Standard_Boolean Matter(const gp_Dir &xx1, const gp_Dir &nt1, const gp_Dir &xx2, const gp_Dir &nt2, const Standard_Real tola, Standard_Real &OutValue);
		%feature("autodoc", "1");
		Standard_Boolean Matter(const TopoDS_Face &f1, const TopoDS_Face &f2, const TopoDS_Edge &e, const Standard_Real pare, const Standard_Real tola, Standard_Real &OutValue);
		%feature("autodoc", "1");
		Standard_Boolean MatterKPtg(const TopoDS_Face &f1, const TopoDS_Face &f2, const TopoDS_Edge &e, Standard_Real &OutValue);
		%feature("autodoc", "1");
		Standard_Boolean Getstp3dF(const gp_Pnt &p, const TopoDS_Face &f, gp_Pnt2d & uv, TopAbs_State & st);
		%feature("autodoc", "1");
		Standard_Boolean SplitE(const TopoDS_Edge &Eanc, TopTools_ListOfShape & Splits);
		%feature("autodoc", "1");
		void MkShell(const TopTools_ListOfShape &lF, TopoDS_Shape & She);
		%feature("autodoc", "1");
		Standard_Boolean Remove(TopTools_ListOfShape & loS, const TopoDS_Shape &toremove);
		%feature("autodoc", "1");
		Standard_Boolean WireToFace(const TopoDS_Face &Fref, const TopTools_DataMapOfShapeListOfShape &mapWlow, TopTools_ListOfShape & lFs);
		%feature("autodoc", "1");
		Standard_Boolean EdgeONFace(const Standard_Real par, const TopoDS_Edge &ed, const gp_Pnt2d &uv, const TopoDS_Face &fa, Standard_Boolean & isonfa);

};

%nodefaultctor TopOpeBRepTool_ShapeTool;
class TopOpeBRepTool_ShapeTool {
	public:
		%feature("autodoc", "1");
		~TopOpeBRepTool_ShapeTool();
		%feature("autodoc", "1");
		TopOpeBRepTool_ShapeTool();
		%feature("autodoc", "1");
		Standard_Real Tolerance(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		gp_Pnt Pnt(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		Handle_Geom_Curve BASISCURVE(const Handle_Geom_Curve &C);
		%feature("autodoc", "1");
		Handle_Geom_Curve BASISCURVE(const TopoDS_Edge &E);
		%feature("autodoc", "1");
		Handle_Geom_Surface BASISSURFACE(const Handle_Geom_Surface &S);
		%feature("autodoc", "1");
		Handle_Geom_Surface BASISSURFACE(const TopoDS_Face &F);
		%feature("autodoc", "1");
		void UVBOUNDS(const Handle_Geom_Surface &S, Standard_Boolean & UPeri, Standard_Boolean & VPeri, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		void UVBOUNDS(const TopoDS_Face &F, Standard_Boolean & UPeri, Standard_Boolean & VPeri, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		void AdjustOnPeriodic(const TopoDS_Shape &S, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		Standard_Boolean Closed(const TopoDS_Shape &S1, const TopoDS_Shape &S2);
		%feature("autodoc", "1");
		Standard_Real PeriodizeParameter(const Standard_Real par, const TopoDS_Shape &EE, const TopoDS_Shape &FF);
		%feature("autodoc", "1");
		Standard_Boolean ShapesSameOriented(const TopoDS_Shape &S1, const TopoDS_Shape &S2);
		%feature("autodoc", "1");
		Standard_Boolean SurfacesSameOriented(const BRepAdaptor_Surface &S1, const BRepAdaptor_Surface &S2);
		%feature("autodoc", "1");
		Standard_Boolean FacesSameOriented(const TopoDS_Shape &F1, const TopoDS_Shape &F2);
		%feature("autodoc", "1");
		Standard_Boolean CurvesSameOriented(const BRepAdaptor_Curve &C1, const BRepAdaptor_Curve &C2);
		%feature("autodoc", "1");
		Standard_Boolean EdgesSameOriented(const TopoDS_Shape &E1, const TopoDS_Shape &E2);
		%feature("autodoc", "1");
		Standard_Real EdgeData(const BRepAdaptor_Curve &BRAC, const Standard_Real P, gp_Dir & T, gp_Dir & N, Standard_Real &OutValue);
		%feature("autodoc", "1");
		Standard_Real EdgeData(const TopoDS_Shape &E, const Standard_Real P, gp_Dir & T, gp_Dir & N, Standard_Real &OutValue);
		%feature("autodoc", "1");
		Standard_Real Resolution3dU(const Handle_Geom_Surface &SU, const Standard_Real Tol2d);
		%feature("autodoc", "1");
		Standard_Real Resolution3dV(const Handle_Geom_Surface &SU, const Standard_Real Tol2d);
		%feature("autodoc", "1");
		Standard_Real Resolution3d(const Handle_Geom_Surface &SU, const Standard_Real Tol2d);
		%feature("autodoc", "1");
		Standard_Real Resolution3d(const TopoDS_Face &F, const Standard_Real Tol2d);

};

%nodefaultctor TopOpeBRepTool_AncestorsTool;
class TopOpeBRepTool_AncestorsTool {
	public:
		%feature("autodoc", "1");
		~TopOpeBRepTool_AncestorsTool();
		%feature("autodoc", "1");
		TopOpeBRepTool_AncestorsTool();
		%feature("autodoc", "1");
		void MakeAncestors(const TopoDS_Shape &S, const TopAbs_ShapeEnum TS, const TopAbs_ShapeEnum TA, TopTools_IndexedDataMapOfShapeListOfShape & M);

};

%nodefaultctor TopOpeBRepTool_IndexedDataMapOfSolidClassifier;
class TopOpeBRepTool_IndexedDataMapOfSolidClassifier : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TopOpeBRepTool_IndexedDataMapOfSolidClassifier(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TopOpeBRepTool_IndexedDataMapOfSolidClassifier & Assign(const TopOpeBRepTool_IndexedDataMapOfSolidClassifier &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~TopOpeBRepTool_IndexedDataMapOfSolidClassifier();
		%feature("autodoc", "1");
		Standard_Integer Add(const TopoDS_Shape &K, const BRepClass3d_SolidClassifier &I);
		%feature("autodoc", "1");
		void Substitute(const Standard_Integer I, const TopoDS_Shape &K, const BRepClass3d_SolidClassifier &T);
		%feature("autodoc", "1");
		void RemoveLast();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		const TopoDS_Shape & FindKey(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const BRepClass3d_SolidClassifier & FindFromIndex(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const BRepClass3d_SolidClassifier & operator()(const Standard_Integer I) const;
		%feature("autodoc", "1");
		BRepClass3d_SolidClassifier & ChangeFromIndex(const Standard_Integer I);
		%feature("autodoc", "1");
		BRepClass3d_SolidClassifier & operator()(const Standard_Integer I);
		%feature("autodoc", "1");
		Standard_Integer FindIndex(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		const BRepClass3d_SolidClassifier & FindFromKey(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		BRepClass3d_SolidClassifier & ChangeFromKey(const TopoDS_Shape &K);

};

%nodefaultctor TopOpeBRepTool_makeTransition;
class TopOpeBRepTool_makeTransition {
	public:
		%feature("autodoc", "1");
		~TopOpeBRepTool_makeTransition();
		%feature("autodoc", "1");
		TopOpeBRepTool_makeTransition();
		%feature("autodoc", "1");
		Standard_Boolean Initialize(const TopoDS_Edge &E, const Standard_Real pbef, const Standard_Real paft, const Standard_Real parE, const TopoDS_Face &FS, const gp_Pnt2d &uv, const Standard_Real factor);
		%feature("autodoc", "1");
		void Setfactor(const Standard_Real factor);
		%feature("autodoc", "1");
		Standard_Real Getfactor() const;
		%feature("autodoc", "1");
		Standard_Boolean IsT2d() const;
		%feature("autodoc", "1");
		Standard_Boolean SetRest(const TopoDS_Edge &ES, const Standard_Real parES);
		%feature("autodoc", "1");
		Standard_Boolean HasRest() const;
		%feature("autodoc", "1");
		Standard_Boolean MkT2donE(TopAbs_State & stb, TopAbs_State & sta) const;
		%feature("autodoc", "1");
		Standard_Boolean MkT3onE(TopAbs_State & stb, TopAbs_State & sta) const;
		%feature("autodoc", "1");
		Standard_Boolean MkT3dproj(TopAbs_State & stb, TopAbs_State & sta) const;
		%feature("autodoc", "1");
		Standard_Boolean MkTonE(TopAbs_State & stb, TopAbs_State & sta);

};

%nodefaultctor TopOpeBRepTool_ListOfC2DF;
class TopOpeBRepTool_ListOfC2DF {
	public:
		%feature("autodoc", "1");
		TopOpeBRepTool_ListOfC2DF();
		%feature("autodoc", "1");
		void Assign(const TopOpeBRepTool_ListOfC2DF &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~TopOpeBRepTool_ListOfC2DF();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const TopOpeBRepTool_C2DF &I);
		%feature("autodoc", "1");
		void Prepend(const TopOpeBRepTool_C2DF &I, TopOpeBRepTool_ListIteratorOfListOfC2DF & theIt);
		%feature("autodoc", "1");
		void Prepend(TopOpeBRepTool_ListOfC2DF & Other);
		%feature("autodoc", "1");
		void Append(const TopOpeBRepTool_C2DF &I);
		%feature("autodoc", "1");
		void Append(const TopOpeBRepTool_C2DF &I, TopOpeBRepTool_ListIteratorOfListOfC2DF & theIt);
		%feature("autodoc", "1");
		void Append(TopOpeBRepTool_ListOfC2DF & Other);
		%feature("autodoc", "1");
		TopOpeBRepTool_C2DF & First() const;
		%feature("autodoc", "1");
		TopOpeBRepTool_C2DF & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(TopOpeBRepTool_ListIteratorOfListOfC2DF & It);
		%feature("autodoc", "1");
		void InsertBefore(const TopOpeBRepTool_C2DF &I, TopOpeBRepTool_ListIteratorOfListOfC2DF & It);
		%feature("autodoc", "1");
		void InsertBefore(TopOpeBRepTool_ListOfC2DF & Other, TopOpeBRepTool_ListIteratorOfListOfC2DF & It);
		%feature("autodoc", "1");
		void InsertAfter(const TopOpeBRepTool_C2DF &I, TopOpeBRepTool_ListIteratorOfListOfC2DF & It);
		%feature("autodoc", "1");
		void InsertAfter(TopOpeBRepTool_ListOfC2DF & Other, TopOpeBRepTool_ListIteratorOfListOfC2DF & It);

};

%nodefaultctor TopOpeBRepTool_PurgeInternalEdges;
class TopOpeBRepTool_PurgeInternalEdges {
	public:
		%feature("autodoc", "1");
		~TopOpeBRepTool_PurgeInternalEdges();
		%feature("autodoc", "1");
		TopOpeBRepTool_PurgeInternalEdges(const TopoDS_Shape &theShape, const Standard_Boolean PerformNow=1);
		%feature("autodoc", "1");
		void Faces(TopTools_DataMapOfShapeListOfShape & theMapFacLstEdg);
		%feature("autodoc", "1");
		TopoDS_Shape & Shape();
		%feature("autodoc", "1");
		Standard_Integer const NbEdges() const;
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		void Perform();

};

%nodefaultctor TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeBox;
class TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeBox : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeBox(const TopoDS_Shape &K1, const Standard_Integer K2, const Bnd_Box &I, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
		%feature("autodoc", "1");
		TopoDS_Shape & Key1() const;
		%feature("autodoc", "1");
		Standard_Integer & Key2() const;
		%feature("autodoc", "1");
		TCollection_MapNodePtr & Next2() const;
		%feature("autodoc", "1");
		Bnd_Box & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeBox();

};
%extend TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeBox {
	Handle_TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeBox GetHandle() {
	return *(Handle_TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeBox*) &$self;
	}
};

%nodefaultctor TopOpeBRepTool_ListIteratorOfListOfC2DF;
class TopOpeBRepTool_ListIteratorOfListOfC2DF {
	public:
		%feature("autodoc", "1");
		~TopOpeBRepTool_ListIteratorOfListOfC2DF();
		%feature("autodoc", "1");
		TopOpeBRepTool_ListIteratorOfListOfC2DF();
		%feature("autodoc", "1");
		TopOpeBRepTool_ListIteratorOfListOfC2DF(const TopOpeBRepTool_ListOfC2DF &L);
		%feature("autodoc", "1");
		void Initialize(const TopOpeBRepTool_ListOfC2DF &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		TopOpeBRepTool_C2DF & Value() const;

};

%nodefaultctor TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeconnexity;
class TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeconnexity : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeconnexity(const TopoDS_Shape &K1, const Standard_Integer K2, const TopOpeBRepTool_connexity &I, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
		%feature("autodoc", "1");
		TopoDS_Shape & Key1() const;
		%feature("autodoc", "1");
		Standard_Integer & Key2() const;
		%feature("autodoc", "1");
		TCollection_MapNodePtr & Next2() const;
		%feature("autodoc", "1");
		TopOpeBRepTool_connexity & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeconnexity();

};
%extend TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeconnexity {
	Handle_TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeconnexity GetHandle() {
	return *(Handle_TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeconnexity*) &$self;
	}
};

%nodefaultctor TopOpeBRepTool_FuseEdges;
class TopOpeBRepTool_FuseEdges {
	public:
		%feature("autodoc", "1");
		~TopOpeBRepTool_FuseEdges();
		%feature("autodoc", "1");
		TopOpeBRepTool_FuseEdges(const TopoDS_Shape &theShape, const Standard_Boolean PerformNow=0);
		%feature("autodoc", "1");
		void AvoidEdges(const TopTools_IndexedMapOfShape &theMapEdg);
		%feature("autodoc", "1");
		void Edges(TopTools_DataMapOfIntegerListOfShape & theMapLstEdg);
		%feature("autodoc", "1");
		void ResultEdges(TopTools_DataMapOfIntegerShape & theMapEdg);
		%feature("autodoc", "1");
		void Faces(TopTools_DataMapOfShapeShape & theMapFac);
		%feature("autodoc", "1");
		TopoDS_Shape & Shape();
		%feature("autodoc", "1");
		Standard_Integer const NbVertices();
		%feature("autodoc", "1");
		void Perform();

};

%nodefaultctor TopOpeBRepTool_IndexedDataMapOfShapeconnexity;
class TopOpeBRepTool_IndexedDataMapOfShapeconnexity : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TopOpeBRepTool_IndexedDataMapOfShapeconnexity(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TopOpeBRepTool_IndexedDataMapOfShapeconnexity & Assign(const TopOpeBRepTool_IndexedDataMapOfShapeconnexity &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~TopOpeBRepTool_IndexedDataMapOfShapeconnexity();
		%feature("autodoc", "1");
		Standard_Integer Add(const TopoDS_Shape &K, const TopOpeBRepTool_connexity &I);
		%feature("autodoc", "1");
		void Substitute(const Standard_Integer I, const TopoDS_Shape &K, const TopOpeBRepTool_connexity &T);
		%feature("autodoc", "1");
		void RemoveLast();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		const TopoDS_Shape & FindKey(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const TopOpeBRepTool_connexity & FindFromIndex(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const TopOpeBRepTool_connexity & operator()(const Standard_Integer I) const;
		%feature("autodoc", "1");
		TopOpeBRepTool_connexity & ChangeFromIndex(const Standard_Integer I);
		%feature("autodoc", "1");
		TopOpeBRepTool_connexity & operator()(const Standard_Integer I);
		%feature("autodoc", "1");
		Standard_Integer FindIndex(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		const TopOpeBRepTool_connexity & FindFromKey(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		TopOpeBRepTool_connexity & ChangeFromKey(const TopoDS_Shape &K);

};

%nodefaultctor TopOpeBRepTool_connexity;
class TopOpeBRepTool_connexity {
	public:
		%feature("autodoc", "1");
		~TopOpeBRepTool_connexity();
		%feature("autodoc", "1");
		TopOpeBRepTool_connexity();
		%feature("autodoc", "1");
		TopOpeBRepTool_connexity(const TopoDS_Shape &Key);
		%feature("autodoc", "1");
		void SetKey(const TopoDS_Shape &Key);
		%feature("autodoc", "1");
		const TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		Standard_Integer Item(const Standard_Integer OriKey, TopTools_ListOfShape & Item) const;
		%feature("autodoc", "1");
		Standard_Integer AllItems(TopTools_ListOfShape & Item) const;
		%feature("autodoc", "1");
		void AddItem(const Standard_Integer OriKey, const TopTools_ListOfShape &Item);
		%feature("autodoc", "1");
		void AddItem(const Standard_Integer OriKey, const TopoDS_Shape &Item);
		%feature("autodoc", "1");
		Standard_Boolean RemoveItem(const Standard_Integer OriKey, const TopoDS_Shape &Item);
		%feature("autodoc", "1");
		Standard_Boolean RemoveItem(const TopoDS_Shape &Item);
		%feature("autodoc", "1");
		TopTools_ListOfShape & ChangeItem(const Standard_Integer OriKey);
		%feature("autodoc", "1");
		Standard_Boolean IsMultiple() const;
		%feature("autodoc", "1");
		Standard_Boolean IsFaulty() const;
		%feature("autodoc", "1");
		Standard_Integer IsInternal(TopTools_ListOfShape & Item) const;

};

%nodefaultctor TopOpeBRepTool_DataMapNodeOfDataMapOfOrientedShapeC2DF;
class TopOpeBRepTool_DataMapNodeOfDataMapOfOrientedShapeC2DF : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TopOpeBRepTool_DataMapNodeOfDataMapOfOrientedShapeC2DF(const TopoDS_Shape &K, const TopOpeBRepTool_C2DF &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		TopOpeBRepTool_C2DF & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~TopOpeBRepTool_DataMapNodeOfDataMapOfOrientedShapeC2DF();

};
%extend TopOpeBRepTool_DataMapNodeOfDataMapOfOrientedShapeC2DF {
	Handle_TopOpeBRepTool_DataMapNodeOfDataMapOfOrientedShapeC2DF GetHandle() {
	return *(Handle_TopOpeBRepTool_DataMapNodeOfDataMapOfOrientedShapeC2DF*) &$self;
	}
};

%nodefaultctor TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfSolidClassifier;
class TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfSolidClassifier : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfSolidClassifier(const TopoDS_Shape &K1, const Standard_Integer K2, const BRepClass3d_SolidClassifier &I, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
		%feature("autodoc", "1");
		TopoDS_Shape & Key1() const;
		%feature("autodoc", "1");
		Standard_Integer & Key2() const;
		%feature("autodoc", "1");
		TCollection_MapNodePtr & Next2() const;
		%feature("autodoc", "1");
		BRepClass3d_SolidClassifier & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfSolidClassifier();

};
%extend TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfSolidClassifier {
	Handle_TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfSolidClassifier GetHandle() {
	return *(Handle_TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfSolidClassifier*) &$self;
	}
};

%nodefaultctor TopOpeBRepTool_DataMapNodeOfDataMapOfShapeListOfC2DF;
class TopOpeBRepTool_DataMapNodeOfDataMapOfShapeListOfC2DF : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TopOpeBRepTool_DataMapNodeOfDataMapOfShapeListOfC2DF(const TopoDS_Shape &K, const TopOpeBRepTool_ListOfC2DF &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		TopOpeBRepTool_ListOfC2DF & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~TopOpeBRepTool_DataMapNodeOfDataMapOfShapeListOfC2DF();

};
%extend TopOpeBRepTool_DataMapNodeOfDataMapOfShapeListOfC2DF {
	Handle_TopOpeBRepTool_DataMapNodeOfDataMapOfShapeListOfC2DF GetHandle() {
	return *(Handle_TopOpeBRepTool_DataMapNodeOfDataMapOfShapeListOfC2DF*) &$self;
	}
};

%nodefaultctor TopOpeBRepTool_DataMapOfOrientedShapeC2DF;
class TopOpeBRepTool_DataMapOfOrientedShapeC2DF : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TopOpeBRepTool_DataMapOfOrientedShapeC2DF(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TopOpeBRepTool_DataMapOfOrientedShapeC2DF & Assign(const TopOpeBRepTool_DataMapOfOrientedShapeC2DF &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~TopOpeBRepTool_DataMapOfOrientedShapeC2DF();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TopoDS_Shape &K, const TopOpeBRepTool_C2DF &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TopoDS_Shape &K);
		%feature("autodoc", "1");
		const TopOpeBRepTool_C2DF & Find(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		const TopOpeBRepTool_C2DF & operator()(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		TopOpeBRepTool_C2DF & ChangeFind(const TopoDS_Shape &K);
		%feature("autodoc", "1");
		TopOpeBRepTool_C2DF & operator()(const TopoDS_Shape &K);

};

%nodefaultctor TopOpeBRepTool;
class TopOpeBRepTool {
	public:
		%feature("autodoc", "1");
		~TopOpeBRepTool();
		%feature("autodoc", "1");
		TopOpeBRepTool();
		%feature("autodoc", "1");
		Standard_Boolean PurgeClosingEdges(const TopoDS_Face &F, const TopoDS_Face &FF, const TopTools_DataMapOfShapeInteger &MWisOld, TopTools_IndexedMapOfOrientedShape & MshNOK);
		%feature("autodoc", "1");
		Standard_Boolean PurgeClosingEdges(const TopoDS_Face &F, const TopTools_ListOfShape &LOF, const TopTools_DataMapOfShapeInteger &MWisOld, TopTools_IndexedMapOfOrientedShape & MshNOK);
		%feature("autodoc", "1");
		Standard_Boolean CorrectONUVISO(const TopoDS_Face &F, TopoDS_Face & Fsp);
		%feature("autodoc", "1");
		Standard_Boolean MakeFaces(const TopoDS_Face &F, const TopTools_ListOfShape &LOF, const TopTools_IndexedMapOfOrientedShape &MshNOK, TopTools_ListOfShape & LOFF);
		%feature("autodoc", "1");
		Standard_Boolean Regularize(const TopoDS_Face &aFace, TopTools_ListOfShape & aListOfFaces, TopTools_DataMapOfShapeListOfShape & ESplits);
		%feature("autodoc", "1");
		Standard_Boolean RegularizeWires(const TopoDS_Face &aFace, TopTools_DataMapOfShapeListOfShape & OldWiresNewWires, TopTools_DataMapOfShapeListOfShape & ESplits);
		%feature("autodoc", "1");
		Standard_Boolean RegularizeFace(const TopoDS_Face &aFace, const TopTools_DataMapOfShapeListOfShape &OldWiresnewWires, TopTools_ListOfShape & aListOfFaces);
		%feature("autodoc", "1");
		Standard_Boolean RegularizeShells(const TopoDS_Solid &aSolid, TopTools_DataMapOfShapeListOfShape & OldSheNewShe, TopTools_DataMapOfShapeListOfShape & FSplits);
		%feature("autodoc", "1");
		Standard_OStream & Print(const TopOpeBRepTool_OutCurveType OCT, Standard_OStream & S);

};