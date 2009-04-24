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
%module MNaming

%include typemaps.i
%include cmalloc.i
%include cpointer.i
%include carrays.i
%include exception.i
%include std_list.i
%include std_string.i
%include <python/std_basic_string.i>

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


%include MNaming_dependencies.i


%include MNaming_headers.i




%nodefaultctor Handle_MNaming_NamingRetrievalDriver;
class Handle_MNaming_NamingRetrievalDriver : public Handle_MDF_ARDriver {
	public:
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
%extend Handle_MNaming_NamingRetrievalDriver {
	~Handle_MNaming_NamingRetrievalDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_MNaming_NamingRetrievalDriver\n");}
	}
};


%nodefaultctor Handle_MNaming_NamedShapeStorageDriver;
class Handle_MNaming_NamedShapeStorageDriver : public Handle_MDF_ASDriver {
	public:
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
%extend Handle_MNaming_NamedShapeStorageDriver {
	~Handle_MNaming_NamedShapeStorageDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_MNaming_NamedShapeStorageDriver\n");}
	}
};


%nodefaultctor Handle_MNaming_NamingStorageDriver;
class Handle_MNaming_NamingStorageDriver : public Handle_MDF_ASDriver {
	public:
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
%extend Handle_MNaming_NamingStorageDriver {
	~Handle_MNaming_NamingStorageDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_MNaming_NamingStorageDriver\n");}
	}
};


%nodefaultctor Handle_MNaming_NamedShapeRetrievalDriver;
class Handle_MNaming_NamedShapeRetrievalDriver : public Handle_MDF_ARDriver {
	public:
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
%extend Handle_MNaming_NamedShapeRetrievalDriver {
	~Handle_MNaming_NamedShapeRetrievalDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_MNaming_NamedShapeRetrievalDriver\n");}
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

};
%extend MNaming_NamedShapeRetrievalDriver {
	Handle_MNaming_NamedShapeRetrievalDriver GetHandle() {
	return *(Handle_MNaming_NamedShapeRetrievalDriver*) &$self;
	}
};
%extend MNaming_NamedShapeRetrievalDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend MNaming_NamedShapeRetrievalDriver {
	~MNaming_NamedShapeRetrievalDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of MNaming_NamedShapeRetrievalDriver\n");}
	}
};


%nodefaultctor MNaming;
class MNaming {
	public:
		%feature("autodoc", "1");
		MNaming();
		%feature("autodoc", "1");
		void AddStorageDrivers(const Handle_MDF_ASDriverHSequence &aDriverSeq, const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		void AddRetrievalDrivers(const Handle_MDF_ARDriverHSequence &aDriverSeq, const Handle_CDM_MessageDriver &theMessageDriver);

};
%extend MNaming {
	~MNaming() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of MNaming\n");}
	}
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

};
%extend MNaming_NamingStorageDriver {
	Handle_MNaming_NamingStorageDriver GetHandle() {
	return *(Handle_MNaming_NamingStorageDriver*) &$self;
	}
};
%extend MNaming_NamingStorageDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend MNaming_NamingStorageDriver {
	~MNaming_NamingStorageDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of MNaming_NamingStorageDriver\n");}
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

};
%extend MNaming_NamingRetrievalDriver {
	Handle_MNaming_NamingRetrievalDriver GetHandle() {
	return *(Handle_MNaming_NamingRetrievalDriver*) &$self;
	}
};
%extend MNaming_NamingRetrievalDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend MNaming_NamingRetrievalDriver {
	~MNaming_NamingRetrievalDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of MNaming_NamingRetrievalDriver\n");}
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

};
%extend MNaming_NamedShapeStorageDriver {
	Handle_MNaming_NamedShapeStorageDriver GetHandle() {
	return *(Handle_MNaming_NamedShapeStorageDriver*) &$self;
	}
};
%extend MNaming_NamedShapeStorageDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend MNaming_NamedShapeStorageDriver {
	~MNaming_NamedShapeStorageDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of MNaming_NamedShapeStorageDriver\n");}
	}
};
