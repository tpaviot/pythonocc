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
%module MNaming

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


%include MNaming_dependencies.i


%include MNaming_headers.i




%nodefaultctor Handle_MNaming_NamingRetrievalDriver;
class Handle_MNaming_NamingRetrievalDriver : public Handle_MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		~Handle_MNaming_NamingRetrievalDriver();
		%feature("autodoc", "1");
		Handle_MNaming_NamingRetrievalDriver();
		%feature("autodoc", "1");
		Handle_MNaming_NamingRetrievalDriver(const Handle_MNaming_NamingRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MNaming_NamingRetrievalDriver(const MNaming_NamingRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_MNaming_NamingRetrievalDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MNaming_NamingRetrievalDriver {
	MNaming_NamingRetrievalDriver* GetObject() {
	return (MNaming_NamingRetrievalDriver*)$self->Access();
	}
};

%nodefaultctor Handle_MNaming_NamedShapeStorageDriver;
class Handle_MNaming_NamedShapeStorageDriver : public Handle_MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		~Handle_MNaming_NamedShapeStorageDriver();
		%feature("autodoc", "1");
		Handle_MNaming_NamedShapeStorageDriver();
		%feature("autodoc", "1");
		Handle_MNaming_NamedShapeStorageDriver(const Handle_MNaming_NamedShapeStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MNaming_NamedShapeStorageDriver(const MNaming_NamedShapeStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_MNaming_NamedShapeStorageDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MNaming_NamedShapeStorageDriver {
	MNaming_NamedShapeStorageDriver* GetObject() {
	return (MNaming_NamedShapeStorageDriver*)$self->Access();
	}
};

%nodefaultctor Handle_MNaming_NamingStorageDriver;
class Handle_MNaming_NamingStorageDriver : public Handle_MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		~Handle_MNaming_NamingStorageDriver();
		%feature("autodoc", "1");
		Handle_MNaming_NamingStorageDriver();
		%feature("autodoc", "1");
		Handle_MNaming_NamingStorageDriver(const Handle_MNaming_NamingStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MNaming_NamingStorageDriver(const MNaming_NamingStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_MNaming_NamingStorageDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MNaming_NamingStorageDriver {
	MNaming_NamingStorageDriver* GetObject() {
	return (MNaming_NamingStorageDriver*)$self->Access();
	}
};

%nodefaultctor Handle_MNaming_NamedShapeRetrievalDriver;
class Handle_MNaming_NamedShapeRetrievalDriver : public Handle_MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		~Handle_MNaming_NamedShapeRetrievalDriver();
		%feature("autodoc", "1");
		Handle_MNaming_NamedShapeRetrievalDriver();
		%feature("autodoc", "1");
		Handle_MNaming_NamedShapeRetrievalDriver(const Handle_MNaming_NamedShapeRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MNaming_NamedShapeRetrievalDriver(const MNaming_NamedShapeRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_MNaming_NamedShapeRetrievalDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MNaming_NamedShapeRetrievalDriver {
	MNaming_NamedShapeRetrievalDriver* GetObject() {
	return (MNaming_NamedShapeRetrievalDriver*)$self->Access();
	}
};

%nodefaultctor MNaming_NamedShapeRetrievalDriver;
class MNaming_NamedShapeRetrievalDriver : public MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		MNaming_NamedShapeRetrievalDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_PDF_Attribute &Source, const Handle_TDF_Attribute &Target, const Handle_MDF_RRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~MNaming_NamedShapeRetrievalDriver();

};
%extend MNaming_NamedShapeRetrievalDriver {
	Handle_MNaming_NamedShapeRetrievalDriver GetHandle() {
	return *(Handle_MNaming_NamedShapeRetrievalDriver*) &$self;
	}
};

%nodefaultctor MNaming;
class MNaming {
	public:
		%feature("autodoc", "1");
		~MNaming();
		%feature("autodoc", "1");
		MNaming();
		%feature("autodoc", "1");
		void AddStorageDrivers(const Handle_MDF_ASDriverHSequence &aDriverSeq, const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		void AddRetrievalDrivers(const Handle_MDF_ARDriverHSequence &aDriverSeq, const Handle_CDM_MessageDriver &theMessageDriver);

};

%nodefaultctor MNaming_NamingStorageDriver;
class MNaming_NamingStorageDriver : public MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		MNaming_NamingStorageDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_PDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, const Handle_PDF_Attribute &Target, const Handle_MDF_SRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~MNaming_NamingStorageDriver();

};
%extend MNaming_NamingStorageDriver {
	Handle_MNaming_NamingStorageDriver GetHandle() {
	return *(Handle_MNaming_NamingStorageDriver*) &$self;
	}
};

%nodefaultctor MNaming_NamingRetrievalDriver;
class MNaming_NamingRetrievalDriver : public MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		MNaming_NamingRetrievalDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_PDF_Attribute &Source, const Handle_TDF_Attribute &Target, const Handle_MDF_RRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~MNaming_NamingRetrievalDriver();

};
%extend MNaming_NamingRetrievalDriver {
	Handle_MNaming_NamingRetrievalDriver GetHandle() {
	return *(Handle_MNaming_NamingRetrievalDriver*) &$self;
	}
};

%nodefaultctor MNaming_NamedShapeStorageDriver;
class MNaming_NamedShapeStorageDriver : public MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		MNaming_NamedShapeStorageDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_PDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, const Handle_PDF_Attribute &Target, const Handle_MDF_SRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~MNaming_NamedShapeStorageDriver();

};
%extend MNaming_NamedShapeStorageDriver {
	Handle_MNaming_NamedShapeStorageDriver GetHandle() {
	return *(Handle_MNaming_NamedShapeStorageDriver*) &$self;
	}
};