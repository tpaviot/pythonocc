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
%module Plugin

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


%include Plugin_dependencies.i


%include Plugin_headers.i




%nodefaultctor Handle_Plugin_DataMapNodeOfMapOfFunctions;
class Handle_Plugin_DataMapNodeOfMapOfFunctions : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_Plugin_DataMapNodeOfMapOfFunctions();
		%feature("autodoc", "1");
		Handle_Plugin_DataMapNodeOfMapOfFunctions();
		%feature("autodoc", "1");
		Handle_Plugin_DataMapNodeOfMapOfFunctions(const Handle_Plugin_DataMapNodeOfMapOfFunctions &aHandle);
		%feature("autodoc", "1");
		Handle_Plugin_DataMapNodeOfMapOfFunctions(const Plugin_DataMapNodeOfMapOfFunctions *anItem);
		%feature("autodoc", "1");
		Handle_Plugin_DataMapNodeOfMapOfFunctions const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Plugin_DataMapNodeOfMapOfFunctions {
	Plugin_DataMapNodeOfMapOfFunctions* GetObject() {
	return (Plugin_DataMapNodeOfMapOfFunctions*)$self->Access();
	}
};

%nodefaultctor Handle_Plugin_Failure;
class Handle_Plugin_Failure : public Handle_Standard_Failure {
	public:
		%feature("autodoc", "1");
		~Handle_Plugin_Failure();
		%feature("autodoc", "1");
		Handle_Plugin_Failure();
		%feature("autodoc", "1");
		Handle_Plugin_Failure(const Handle_Plugin_Failure &aHandle);
		%feature("autodoc", "1");
		Handle_Plugin_Failure(const Plugin_Failure *anItem);
		%feature("autodoc", "1");
		Handle_Plugin_Failure const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Plugin_Failure {
	Plugin_Failure* GetObject() {
	return (Plugin_Failure*)$self->Access();
	}
};

%nodefaultctor Plugin_DataMapIteratorOfMapOfFunctions;
class Plugin_DataMapIteratorOfMapOfFunctions : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		~Plugin_DataMapIteratorOfMapOfFunctions();
		%feature("autodoc", "1");
		Plugin_DataMapIteratorOfMapOfFunctions();
		%feature("autodoc", "1");
		Plugin_DataMapIteratorOfMapOfFunctions(const Plugin_MapOfFunctions &aMap);
		%feature("autodoc", "1");
		void Initialize(const Plugin_MapOfFunctions &aMap);
		%feature("autodoc", "1");
		const TCollection_AsciiString & Key() const;

};

%nodefaultctor Plugin_DataMapNodeOfMapOfFunctions;
class Plugin_DataMapNodeOfMapOfFunctions : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Plugin_DataMapNodeOfMapOfFunctions(const TCollection_AsciiString &K, const OSD_Function &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TCollection_AsciiString & Key() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~Plugin_DataMapNodeOfMapOfFunctions();

};
%extend Plugin_DataMapNodeOfMapOfFunctions {
	Handle_Plugin_DataMapNodeOfMapOfFunctions GetHandle() {
	return *(Handle_Plugin_DataMapNodeOfMapOfFunctions*) &$self;
	}
};

%nodefaultctor Plugin_Failure;
class Plugin_Failure : public Standard_Failure {
	public:
		%feature("autodoc", "1");
		Plugin_Failure();
		%feature("autodoc", "1");
		Plugin_Failure(const char * AString);
		%feature("autodoc", "1");
		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		Handle_Plugin_Failure NewInstance(const char * aMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~Plugin_Failure();

};
%extend Plugin_Failure {
	Handle_Plugin_Failure GetHandle() {
	return *(Handle_Plugin_Failure*) &$self;
	}
};

%nodefaultctor Plugin_MapOfFunctions;
class Plugin_MapOfFunctions : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		Plugin_MapOfFunctions(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		Plugin_MapOfFunctions & Assign(const Plugin_MapOfFunctions &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~Plugin_MapOfFunctions();
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TCollection_AsciiString &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TCollection_AsciiString &K);

};

%nodefaultctor Plugin;
class Plugin {
	public:
		%feature("autodoc", "1");
		~Plugin();
		%feature("autodoc", "1");
		Plugin();
		%feature("autodoc", "1");
		Handle_Standard_Transient Load(const Standard_GUID &aGUID);

};