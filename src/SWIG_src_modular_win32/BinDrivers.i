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
%module BinDrivers

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


%include BinDrivers_dependencies.i


%include BinDrivers_headers.i


enum BinDrivers_Marker {
	BinDrivers_ENDATTRLIST,
	BinDrivers_ENDLABEL,
	};



%nodefaultctor Handle_BinDrivers_DocumentRetrievalDriver;
class Handle_BinDrivers_DocumentRetrievalDriver : public Handle_BinLDrivers_DocumentRetrievalDriver {
	public:
		%feature("autodoc", "1");
		~Handle_BinDrivers_DocumentRetrievalDriver();
		%feature("autodoc", "1");
		Handle_BinDrivers_DocumentRetrievalDriver();
		%feature("autodoc", "1");
		Handle_BinDrivers_DocumentRetrievalDriver(const Handle_BinDrivers_DocumentRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinDrivers_DocumentRetrievalDriver(const BinDrivers_DocumentRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinDrivers_DocumentRetrievalDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinDrivers_DocumentRetrievalDriver {
	BinDrivers_DocumentRetrievalDriver* GetObject() {
	return (BinDrivers_DocumentRetrievalDriver*)$self->Access();
	}
};

%nodefaultctor Handle_BinDrivers_DocumentStorageDriver;
class Handle_BinDrivers_DocumentStorageDriver : public Handle_BinLDrivers_DocumentStorageDriver {
	public:
		%feature("autodoc", "1");
		~Handle_BinDrivers_DocumentStorageDriver();
		%feature("autodoc", "1");
		Handle_BinDrivers_DocumentStorageDriver();
		%feature("autodoc", "1");
		Handle_BinDrivers_DocumentStorageDriver(const Handle_BinDrivers_DocumentStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinDrivers_DocumentStorageDriver(const BinDrivers_DocumentStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinDrivers_DocumentStorageDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinDrivers_DocumentStorageDriver {
	BinDrivers_DocumentStorageDriver* GetObject() {
	return (BinDrivers_DocumentStorageDriver*)$self->Access();
	}
};

%nodefaultctor BinDrivers_DocumentStorageDriver;
class BinDrivers_DocumentStorageDriver : public BinLDrivers_DocumentStorageDriver {
	public:
		%feature("autodoc", "1");
		BinDrivers_DocumentStorageDriver();
		%feature("autodoc", "1");
		virtual		Handle_BinMDF_ADriverTable AttributeDrivers(const Handle_CDM_MessageDriver &theMsgDriver);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BinDrivers_DocumentStorageDriver();

};
%extend BinDrivers_DocumentStorageDriver {
	Handle_BinDrivers_DocumentStorageDriver GetHandle() {
	return *(Handle_BinDrivers_DocumentStorageDriver*) &$self;
	}
};

%nodefaultctor BinDrivers;
class BinDrivers {
	public:
		%feature("autodoc", "1");
		~BinDrivers();
		%feature("autodoc", "1");
		BinDrivers();
		%feature("autodoc", "1");
		Handle_Standard_Transient Factory(const Standard_GUID &theGUID);
		%feature("autodoc", "1");
		Handle_BinMDF_ADriverTable AttributeDrivers(const Handle_CDM_MessageDriver &MsgDrv);
		%feature("autodoc", "1");
		TCollection_AsciiString StorageVersion();

};

%nodefaultctor BinDrivers_DocumentRetrievalDriver;
class BinDrivers_DocumentRetrievalDriver : public BinLDrivers_DocumentRetrievalDriver {
	public:
		%feature("autodoc", "1");
		BinDrivers_DocumentRetrievalDriver();
		%feature("autodoc", "1");
		virtual		Handle_BinMDF_ADriverTable AttributeDrivers(const Handle_CDM_MessageDriver &theMsgDriver);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BinDrivers_DocumentRetrievalDriver();

};
%extend BinDrivers_DocumentRetrievalDriver {
	Handle_BinDrivers_DocumentRetrievalDriver GetHandle() {
	return *(Handle_BinDrivers_DocumentRetrievalDriver*) &$self;
	}
};