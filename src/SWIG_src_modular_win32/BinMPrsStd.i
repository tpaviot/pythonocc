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
%module BinMPrsStd

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


%include BinMPrsStd_dependencies.i


%include BinMPrsStd_headers.i




%nodefaultctor Handle_BinMPrsStd_PositionDriver;
class Handle_BinMPrsStd_PositionDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_BinMPrsStd_PositionDriver();
		%feature("autodoc", "1");
		Handle_BinMPrsStd_PositionDriver();
		%feature("autodoc", "1");
		Handle_BinMPrsStd_PositionDriver(const Handle_BinMPrsStd_PositionDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMPrsStd_PositionDriver(const BinMPrsStd_PositionDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMPrsStd_PositionDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMPrsStd_PositionDriver {
	BinMPrsStd_PositionDriver* GetObject() {
	return (BinMPrsStd_PositionDriver*)$self->Access();
	}
};

%nodefaultctor Handle_BinMPrsStd_AISPresentationDriver;
class Handle_BinMPrsStd_AISPresentationDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_BinMPrsStd_AISPresentationDriver();
		%feature("autodoc", "1");
		Handle_BinMPrsStd_AISPresentationDriver();
		%feature("autodoc", "1");
		Handle_BinMPrsStd_AISPresentationDriver(const Handle_BinMPrsStd_AISPresentationDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMPrsStd_AISPresentationDriver(const BinMPrsStd_AISPresentationDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMPrsStd_AISPresentationDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMPrsStd_AISPresentationDriver {
	BinMPrsStd_AISPresentationDriver* GetObject() {
	return (BinMPrsStd_AISPresentationDriver*)$self->Access();
	}
};

%nodefaultctor BinMPrsStd;
class BinMPrsStd {
	public:
		%feature("autodoc", "1");
		~BinMPrsStd();
		%feature("autodoc", "1");
		BinMPrsStd();
		%feature("autodoc", "1");
		void AddDrivers(const Handle_BinMDF_ADriverTable &theDriverTable, const Handle_CDM_MessageDriver &theMessageDriver);

};

%nodefaultctor BinMPrsStd_AISPresentationDriver;
class BinMPrsStd_AISPresentationDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMPrsStd_AISPresentationDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, BinObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, BinObjMgt_Persistent & Target, BinObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BinMPrsStd_AISPresentationDriver();

};
%extend BinMPrsStd_AISPresentationDriver {
	Handle_BinMPrsStd_AISPresentationDriver GetHandle() {
	return *(Handle_BinMPrsStd_AISPresentationDriver*) &$self;
	}
};

%nodefaultctor BinMPrsStd_PositionDriver;
class BinMPrsStd_PositionDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMPrsStd_PositionDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, BinObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, BinObjMgt_Persistent & Target, BinObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BinMPrsStd_PositionDriver();

};
%extend BinMPrsStd_PositionDriver {
	Handle_BinMPrsStd_PositionDriver GetHandle() {
	return *(Handle_BinMPrsStd_PositionDriver*) &$self;
	}
};