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
%module MeshDS

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


%include MeshDS_dependencies.i


%include MeshDS_headers.i

typedef Handle_NCollection_IncAllocator MeshDS_BaseAllocator;
typedef NCollection_DataMap<int,NCollection_Map<int> > MeshDS_DataMapOfInteger;
typedef NCollection_List<int> MeshDS_ListOfInteger;
typedef NCollection_Map<int> MeshDS_MapOfInteger;

enum MeshDS_DegreeOfFreedom {
	MeshDS_Free,
	MeshDS_InVolume,
	MeshDS_OnSurface,
	MeshDS_OnCurve,
	MeshDS_Fixed,
	MeshDS_Frontier,
	MeshDS_Deleted,
	};



%nodefaultctor Handle_MeshDS_DataMapNodeOfDataMapOfIntegerMapOfInteger;
class Handle_MeshDS_DataMapNodeOfDataMapOfIntegerMapOfInteger : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_MeshDS_DataMapNodeOfDataMapOfIntegerMapOfInteger();
		%feature("autodoc", "1");
		Handle_MeshDS_DataMapNodeOfDataMapOfIntegerMapOfInteger();
		%feature("autodoc", "1");
		Handle_MeshDS_DataMapNodeOfDataMapOfIntegerMapOfInteger(const Handle_MeshDS_DataMapNodeOfDataMapOfIntegerMapOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_MeshDS_DataMapNodeOfDataMapOfIntegerMapOfInteger(const MeshDS_DataMapNodeOfDataMapOfIntegerMapOfInteger *anItem);
		%feature("autodoc", "1");
		Handle_MeshDS_DataMapNodeOfDataMapOfIntegerMapOfInteger const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MeshDS_DataMapNodeOfDataMapOfIntegerMapOfInteger {
	MeshDS_DataMapNodeOfDataMapOfIntegerMapOfInteger* GetObject() {
	return (MeshDS_DataMapNodeOfDataMapOfIntegerMapOfInteger*)$self->Access();
	}
};

%nodefaultctor MeshDS_DataMapIteratorOfDataMapOfIntegerMapOfInteger;
class MeshDS_DataMapIteratorOfDataMapOfIntegerMapOfInteger : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		~MeshDS_DataMapIteratorOfDataMapOfIntegerMapOfInteger();
		%feature("autodoc", "1");
		MeshDS_DataMapIteratorOfDataMapOfIntegerMapOfInteger();
		%feature("autodoc", "1");
		MeshDS_DataMapIteratorOfDataMapOfIntegerMapOfInteger(const MeshDS_DataMapOfIntegerMapOfInteger &aMap);
		%feature("autodoc", "1");
		void Initialize(const MeshDS_DataMapOfIntegerMapOfInteger &aMap);
		%feature("autodoc", "1");
		const Standard_Integer & Key() const;
		%feature("autodoc", "1");
		const TColStd_MapOfInteger & Value() const;

};

%nodefaultctor MeshDS_DataMapNodeOfDataMapOfIntegerMapOfInteger;
class MeshDS_DataMapNodeOfDataMapOfIntegerMapOfInteger : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		MeshDS_DataMapNodeOfDataMapOfIntegerMapOfInteger(const Standard_Integer &K, const TColStd_MapOfInteger &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Standard_Integer & Key() const;
		%feature("autodoc", "1");
		TColStd_MapOfInteger & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~MeshDS_DataMapNodeOfDataMapOfIntegerMapOfInteger();

};
%extend MeshDS_DataMapNodeOfDataMapOfIntegerMapOfInteger {
	Handle_MeshDS_DataMapNodeOfDataMapOfIntegerMapOfInteger GetHandle() {
	return *(Handle_MeshDS_DataMapNodeOfDataMapOfIntegerMapOfInteger*) &$self;
	}
};

%nodefaultctor MeshDS_DataMapOfIntegerMapOfInteger;
class MeshDS_DataMapOfIntegerMapOfInteger : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		MeshDS_DataMapOfIntegerMapOfInteger(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		MeshDS_DataMapOfIntegerMapOfInteger & Assign(const MeshDS_DataMapOfIntegerMapOfInteger &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~MeshDS_DataMapOfIntegerMapOfInteger();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Standard_Integer &K, const TColStd_MapOfInteger &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Standard_Integer &K);
		%feature("autodoc", "1");
		const TColStd_MapOfInteger & Find(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		const TColStd_MapOfInteger & operator()(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		TColStd_MapOfInteger & ChangeFind(const Standard_Integer &K);
		%feature("autodoc", "1");
		TColStd_MapOfInteger & operator()(const Standard_Integer &K);

};