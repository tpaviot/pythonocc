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
%module TopExp

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


%include TopExp_dependencies.i


%include TopExp_headers.i

typedef TopoDS_Iterator * TopExp_Stack;



%nodefaultctor Handle_TopExp_StackNodeOfStackOfIterator;
class Handle_TopExp_StackNodeOfStackOfIterator : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_TopExp_StackNodeOfStackOfIterator();
		%feature("autodoc", "1");
		Handle_TopExp_StackNodeOfStackOfIterator();
		%feature("autodoc", "1");
		Handle_TopExp_StackNodeOfStackOfIterator(const Handle_TopExp_StackNodeOfStackOfIterator &aHandle);
		%feature("autodoc", "1");
		Handle_TopExp_StackNodeOfStackOfIterator(const TopExp_StackNodeOfStackOfIterator *anItem);
		%feature("autodoc", "1");
		Handle_TopExp_StackNodeOfStackOfIterator const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TopExp_StackNodeOfStackOfIterator {
	TopExp_StackNodeOfStackOfIterator* GetObject() {
	return (TopExp_StackNodeOfStackOfIterator*)$self->Access();
	}
};

%nodefaultctor TopExp;
class TopExp {
	public:
		%feature("autodoc", "1");
		~TopExp();
		%feature("autodoc", "1");
		TopExp();
		%feature("autodoc", "1");
		void MapShapes(const TopoDS_Shape &S, const TopAbs_ShapeEnum T, TopTools_IndexedMapOfShape & M);
		%feature("autodoc", "1");
		void MapShapes(const TopoDS_Shape &S, TopTools_IndexedMapOfShape & M);
		%feature("autodoc", "1");
		void MapShapesAndAncestors(const TopoDS_Shape &S, const TopAbs_ShapeEnum TS, const TopAbs_ShapeEnum TA, TopTools_IndexedDataMapOfShapeListOfShape & M);
		%feature("autodoc", "1");
		TopoDS_Vertex FirstVertex(const TopoDS_Edge &E, const Standard_Boolean CumOri=0);
		%feature("autodoc", "1");
		TopoDS_Vertex LastVertex(const TopoDS_Edge &E, const Standard_Boolean CumOri=0);
		%feature("autodoc", "1");
		void Vertices(const TopoDS_Edge &E, TopoDS_Vertex & Vfirst, TopoDS_Vertex & Vlast, const Standard_Boolean CumOri=0);
		%feature("autodoc", "1");
		void Vertices(const TopoDS_Wire &W, TopoDS_Vertex & Vfirst, TopoDS_Vertex & Vlast);
		%feature("autodoc", "1");
		Standard_Boolean CommonVertex(const TopoDS_Edge &E1, const TopoDS_Edge &E2, TopoDS_Vertex & V);

};

%nodefaultctor TopExp_StackNodeOfStackOfIterator;
class TopExp_StackNodeOfStackOfIterator : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TopExp_StackNodeOfStackOfIterator(const TopoDS_Iterator &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Iterator & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~TopExp_StackNodeOfStackOfIterator();

};
%extend TopExp_StackNodeOfStackOfIterator {
	Handle_TopExp_StackNodeOfStackOfIterator GetHandle() {
	return *(Handle_TopExp_StackNodeOfStackOfIterator*) &$self;
	}
};

%nodefaultctor TopExp_StackOfIterator;
class TopExp_StackOfIterator {
	public:
		%feature("autodoc", "1");
		TopExp_StackOfIterator();
		%feature("autodoc", "1");
		const TopExp_StackOfIterator & Assign(const TopExp_StackOfIterator &Other);
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Depth() const;
		%feature("autodoc", "1");
		const TopoDS_Iterator & Top() const;
		%feature("autodoc", "1");
		void Push(const TopoDS_Iterator &I);
		%feature("autodoc", "1");
		void Pop();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~TopExp_StackOfIterator();
		%feature("autodoc", "1");
		TopoDS_Iterator & ChangeTop();

};

%nodefaultctor TopExp_Explorer;
class TopExp_Explorer {
	public:
		%feature("autodoc", "1");
		TopExp_Explorer();
		%feature("autodoc", "1");
		TopExp_Explorer(const TopoDS_Shape &S, const TopAbs_ShapeEnum ToFind, const TopAbs_ShapeEnum ToAvoid=TopAbs_SHAPE);
		%feature("autodoc", "1");
		void Init(const TopoDS_Shape &S, const TopAbs_ShapeEnum ToFind, const TopAbs_ShapeEnum ToAvoid=TopAbs_SHAPE);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		const TopoDS_Shape & Current() const;
		%feature("autodoc", "1");
		void ReInit();
		%feature("autodoc", "1");
		Standard_Integer Depth() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		~TopExp_Explorer();

};

%nodefaultctor TopExp_StackIteratorOfStackOfIterator;
class TopExp_StackIteratorOfStackOfIterator {
	public:
		%feature("autodoc", "1");
		~TopExp_StackIteratorOfStackOfIterator();
		%feature("autodoc", "1");
		TopExp_StackIteratorOfStackOfIterator();
		%feature("autodoc", "1");
		TopExp_StackIteratorOfStackOfIterator(const TopExp_StackOfIterator &S);
		%feature("autodoc", "1");
		void Initialize(const TopExp_StackOfIterator &S);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		const TopoDS_Iterator & Value() const;

};