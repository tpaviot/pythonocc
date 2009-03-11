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
%module PPrsStd

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


%include PPrsStd_dependencies.i


%include PPrsStd_headers.i




%nodefaultctor Handle_PPrsStd_AISPresentation;
class Handle_PPrsStd_AISPresentation : public Handle_PDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_PPrsStd_AISPresentation();
		%feature("autodoc", "1");
		Handle_PPrsStd_AISPresentation(const Handle_PPrsStd_AISPresentation &aHandle);
		%feature("autodoc", "1");
		Handle_PPrsStd_AISPresentation(const PPrsStd_AISPresentation *anItem);
		%feature("autodoc", "1");
		Handle_PPrsStd_AISPresentation const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PPrsStd_AISPresentation {
	PPrsStd_AISPresentation* GetObject() {
	return (PPrsStd_AISPresentation*)$self->Access();
	}
};
%extend Handle_PPrsStd_AISPresentation {
	~Handle_PPrsStd_AISPresentation() {
	printf("Call custom destructor for instance of Handle_PPrsStd_AISPresentation\n");
	}
};

%nodefaultctor Handle_PPrsStd_AISPresentation_1;
class Handle_PPrsStd_AISPresentation_1 : public Handle_PDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_PPrsStd_AISPresentation_1();
		%feature("autodoc", "1");
		Handle_PPrsStd_AISPresentation_1(const Handle_PPrsStd_AISPresentation_1 &aHandle);
		%feature("autodoc", "1");
		Handle_PPrsStd_AISPresentation_1(const PPrsStd_AISPresentation_1 *anItem);
		%feature("autodoc", "1");
		Handle_PPrsStd_AISPresentation_1 const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PPrsStd_AISPresentation_1 {
	PPrsStd_AISPresentation_1* GetObject() {
	return (PPrsStd_AISPresentation_1*)$self->Access();
	}
};
%extend Handle_PPrsStd_AISPresentation_1 {
	~Handle_PPrsStd_AISPresentation_1() {
	printf("Call custom destructor for instance of Handle_PPrsStd_AISPresentation_1\n");
	}
};

%nodefaultctor PPrsStd_AISPresentation_1;
class PPrsStd_AISPresentation_1 : public PDF_Attribute {
	public:
		%feature("autodoc", "1");
		PPrsStd_AISPresentation_1();
		%feature("autodoc", "1");
		Standard_Boolean IsDisplayed() const;
		%feature("autodoc", "1");
		void SetDisplayed(const Standard_Boolean B);
		%feature("autodoc", "1");
		void SetDriverGUID(const Handle_PCollection_HExtendedString &guid);
		%feature("autodoc", "1");
		Handle_PCollection_HExtendedString GetDriverGUID() const;
		%feature("autodoc", "1");
		Standard_Integer Color() const;
		%feature("autodoc", "1");
		void SetColor(const Standard_Integer C);
		%feature("autodoc", "1");
		Standard_Real Transparency() const;
		%feature("autodoc", "1");
		void SetTransparency(const Standard_Real T);
		%feature("autodoc", "1");
		Standard_Integer Material() const;
		%feature("autodoc", "1");
		void SetMaterial(const Standard_Integer M);
		%feature("autodoc", "1");
		Standard_Real Width() const;
		%feature("autodoc", "1");
		void SetWidth(const Standard_Real W);
		%feature("autodoc", "1");
		Standard_Integer Mode() const;
		%feature("autodoc", "1");
		void SetMode(const Standard_Integer M);
		%feature("autodoc", "1");
		PPrsStd_AISPresentation_1(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Boolean _CSFDB_GetPPrsStd_AISPresentation_1myIsDisplayed() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPPrsStd_AISPresentation_1myIsDisplayed(const Standard_Boolean p);
		%feature("autodoc", "1");
		Handle_PCollection_HExtendedString _CSFDB_GetPPrsStd_AISPresentation_1myDriverGUID() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPPrsStd_AISPresentation_1myDriverGUID(const Handle_PCollection_HExtendedString &p);
		%feature("autodoc", "1");
		Standard_Real _CSFDB_GetPPrsStd_AISPresentation_1myTransparency() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPPrsStd_AISPresentation_1myTransparency(const Standard_Real p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPPrsStd_AISPresentation_1myColor() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPPrsStd_AISPresentation_1myColor(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPPrsStd_AISPresentation_1myMaterial() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPPrsStd_AISPresentation_1myMaterial(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Real _CSFDB_GetPPrsStd_AISPresentation_1myWidth() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPPrsStd_AISPresentation_1myWidth(const Standard_Real p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPPrsStd_AISPresentation_1myMode() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPPrsStd_AISPresentation_1myMode(const Standard_Integer p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PPrsStd_AISPresentation_1 {
	Handle_PPrsStd_AISPresentation_1 GetHandle() {
	return *(Handle_PPrsStd_AISPresentation_1*) &$self;
	}
};
%extend PPrsStd_AISPresentation_1 {
	~PPrsStd_AISPresentation_1() {
	printf("Call custom destructor for instance of PPrsStd_AISPresentation_1\n");
	}
};

%nodefaultctor PPrsStd_AISPresentation;
class PPrsStd_AISPresentation : public PDF_Attribute {
	public:
		%feature("autodoc", "1");
		PPrsStd_AISPresentation();
		%feature("autodoc", "1");
		Standard_Boolean IsDisplayed() const;
		%feature("autodoc", "1");
		void SetDisplayed(const Standard_Boolean B);
		%feature("autodoc", "1");
		void SetDriverGUID(const Handle_PCollection_HExtendedString &guid);
		%feature("autodoc", "1");
		Handle_PCollection_HExtendedString GetDriverGUID() const;
		%feature("autodoc", "1");
		Standard_Integer Color() const;
		%feature("autodoc", "1");
		void SetColor(const Standard_Integer C);
		%feature("autodoc", "1");
		Standard_Real Transparency() const;
		%feature("autodoc", "1");
		void SetTransparency(const Standard_Real T);
		%feature("autodoc", "1");
		Standard_Integer Material() const;
		%feature("autodoc", "1");
		void SetMaterial(const Standard_Integer M);
		%feature("autodoc", "1");
		Standard_Real Width() const;
		%feature("autodoc", "1");
		void SetWidth(const Standard_Real W);
		%feature("autodoc", "1");
		PPrsStd_AISPresentation(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Boolean _CSFDB_GetPPrsStd_AISPresentationmyIsDisplayed() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPPrsStd_AISPresentationmyIsDisplayed(const Standard_Boolean p);
		%feature("autodoc", "1");
		Handle_PCollection_HExtendedString _CSFDB_GetPPrsStd_AISPresentationmyDriverGUID() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPPrsStd_AISPresentationmyDriverGUID(const Handle_PCollection_HExtendedString &p);
		%feature("autodoc", "1");
		Standard_Real _CSFDB_GetPPrsStd_AISPresentationmyTransparency() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPPrsStd_AISPresentationmyTransparency(const Standard_Real p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPPrsStd_AISPresentationmyColor() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPPrsStd_AISPresentationmyColor(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPPrsStd_AISPresentationmyMaterial() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPPrsStd_AISPresentationmyMaterial(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Real _CSFDB_GetPPrsStd_AISPresentationmyWidth() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPPrsStd_AISPresentationmyWidth(const Standard_Real p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PPrsStd_AISPresentation {
	Handle_PPrsStd_AISPresentation GetHandle() {
	return *(Handle_PPrsStd_AISPresentation*) &$self;
	}
};
%extend PPrsStd_AISPresentation {
	~PPrsStd_AISPresentation() {
	printf("Call custom destructor for instance of PPrsStd_AISPresentation\n");
	}
};