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
%module MeshAlgo

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


%include MeshAlgo_dependencies.i


%include MeshAlgo_headers.i

typedef NCollection_CellFilter<MeshAlgo_CircleInspector> MeshAlgo_CellFilter;



%nodefaultctor Handle_MeshAlgo_DataMapNodeOfDataMapOfIntegerCirc;
class Handle_MeshAlgo_DataMapNodeOfDataMapOfIntegerCirc : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_MeshAlgo_DataMapNodeOfDataMapOfIntegerCirc();
		%feature("autodoc", "1");
		Handle_MeshAlgo_DataMapNodeOfDataMapOfIntegerCirc();
		%feature("autodoc", "1");
		Handle_MeshAlgo_DataMapNodeOfDataMapOfIntegerCirc(const Handle_MeshAlgo_DataMapNodeOfDataMapOfIntegerCirc &aHandle);
		%feature("autodoc", "1");
		Handle_MeshAlgo_DataMapNodeOfDataMapOfIntegerCirc(const MeshAlgo_DataMapNodeOfDataMapOfIntegerCirc *anItem);
		%feature("autodoc", "1");
		Handle_MeshAlgo_DataMapNodeOfDataMapOfIntegerCirc const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MeshAlgo_DataMapNodeOfDataMapOfIntegerCirc {
	MeshAlgo_DataMapNodeOfDataMapOfIntegerCirc* GetObject() {
	return (MeshAlgo_DataMapNodeOfDataMapOfIntegerCirc*)$self->Access();
	}
};

%nodefaultctor MeshAlgo;
class MeshAlgo {
	public:
		%feature("autodoc", "1");
		~MeshAlgo();
		%feature("autodoc", "1");
		MeshAlgo();
		%feature("autodoc", "1");
		void SetMesure(const Standard_Boolean val);
		%feature("autodoc", "1");
		void SetTrace(const Standard_Integer val);

};

%nodefaultctor MeshAlgo_DataMapOfIntegerCirc;
class MeshAlgo_DataMapOfIntegerCirc : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		MeshAlgo_DataMapOfIntegerCirc(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		MeshAlgo_DataMapOfIntegerCirc & Assign(const MeshAlgo_DataMapOfIntegerCirc &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~MeshAlgo_DataMapOfIntegerCirc();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Standard_Integer &K, const MeshAlgo_Circ &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Standard_Integer &K);
		%feature("autodoc", "1");
		const MeshAlgo_Circ & Find(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		const MeshAlgo_Circ & operator()(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		MeshAlgo_Circ & ChangeFind(const Standard_Integer &K);
		%feature("autodoc", "1");
		MeshAlgo_Circ & operator()(const Standard_Integer &K);

};

%nodefaultctor MeshAlgo_CircleTool;
class MeshAlgo_CircleTool {
	public:
		%feature("autodoc", "1");
		~MeshAlgo_CircleTool();
		%feature("autodoc", "1");
		MeshAlgo_CircleTool(const MeshDS_BaseAllocator &theAlloc);
		%feature("autodoc", "1");
		MeshAlgo_CircleTool(const Standard_Integer numberOfComponents, const MeshDS_BaseAllocator &theAlloc);
		%feature("autodoc", "1");
		void Initialize(const Standard_Integer numberOfComponents);
		%feature("autodoc", "1");
		void SetCellSize(const Standard_Real theSize);
		%feature("autodoc", "1");
		void SetCellSize(const Standard_Real theXSize, const Standard_Real theYSize);
		%feature("autodoc", "1");
		void SetMinMaxSize(const gp_XY &theMin, const gp_XY &theMax);
		%feature("autodoc", "1");
		void Add(const gp_Circ2d &theCirc, const Standard_Integer theIndex);
		%feature("autodoc", "1");
		Standard_Boolean Add(const gp_XY &p1, const gp_XY &p2, const gp_XY &p3, const Standard_Integer theIndex);
		%feature("autodoc", "1");
		void MocAdd(const Standard_Integer theIndex);
		%feature("autodoc", "1");
		void Delete(const Standard_Integer theIndex);
		%feature("autodoc", "1");
		TColStd_ListOfInteger & Select(const gp_XY &thePnt);
		%feature("autodoc", "1");
		Standard_Integer & GetNbPoints();

};

%nodefaultctor MeshAlgo_DataMapIteratorOfDataMapOfIntegerCirc;
class MeshAlgo_DataMapIteratorOfDataMapOfIntegerCirc : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		~MeshAlgo_DataMapIteratorOfDataMapOfIntegerCirc();
		%feature("autodoc", "1");
		MeshAlgo_DataMapIteratorOfDataMapOfIntegerCirc();
		%feature("autodoc", "1");
		MeshAlgo_DataMapIteratorOfDataMapOfIntegerCirc(const MeshAlgo_DataMapOfIntegerCirc &aMap);
		%feature("autodoc", "1");
		void Initialize(const MeshAlgo_DataMapOfIntegerCirc &aMap);
		%feature("autodoc", "1");
		const Standard_Integer & Key() const;
		%feature("autodoc", "1");
		const MeshAlgo_Circ & Value() const;

};

%nodefaultctor MeshAlgo_Circ;
class MeshAlgo_Circ {
	public:
		%feature("autodoc", "1");
		~MeshAlgo_Circ();
		%feature("autodoc", "1");
		MeshAlgo_Circ();
		%feature("autodoc", "1");
		MeshAlgo_Circ(const gp_XY &loc, const Standard_Real rad);
		%feature("autodoc", "1");
		void SetLocation(const gp_XY &loc);
		%feature("autodoc", "1");
		void SetRadius(const Standard_Real rad);
		%feature("autodoc", "1");
		const gp_XY & Location() const;
		%feature("autodoc", "1");
		const Standard_Real & Radius() const;

};

%nodefaultctor MeshAlgo_DataMapNodeOfDataMapOfIntegerCirc;
class MeshAlgo_DataMapNodeOfDataMapOfIntegerCirc : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		MeshAlgo_DataMapNodeOfDataMapOfIntegerCirc(const Standard_Integer &K, const MeshAlgo_Circ &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Standard_Integer & Key() const;
		%feature("autodoc", "1");
		MeshAlgo_Circ & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~MeshAlgo_DataMapNodeOfDataMapOfIntegerCirc();

};
%extend MeshAlgo_DataMapNodeOfDataMapOfIntegerCirc {
	Handle_MeshAlgo_DataMapNodeOfDataMapOfIntegerCirc GetHandle() {
	return *(Handle_MeshAlgo_DataMapNodeOfDataMapOfIntegerCirc*) &$self;
	}
};