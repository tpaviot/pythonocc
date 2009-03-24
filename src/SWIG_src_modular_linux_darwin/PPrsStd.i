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
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_PPrsStd_AISPresentation\n");}
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
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_PPrsStd_AISPresentation_1\n");}
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
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of PPrsStd_AISPresentation_1\n");}
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
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of PPrsStd_AISPresentation\n");}
	}
};