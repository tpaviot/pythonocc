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
%module IGESCAFControl

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


%include IGESCAFControl_dependencies.i


%include IGESCAFControl_headers.i




%nodefaultctor IGESCAFControl;
class IGESCAFControl {
	public:
		%feature("autodoc", "1");
		IGESCAFControl();
		%feature("autodoc", "1");
		Quantity_Color DecodeColor(const Standard_Integer col);
		%feature("autodoc", "1");
		Standard_Integer EncodeColor(const Quantity_Color &col);

};
%extend IGESCAFControl {
	~IGESCAFControl() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of IGESCAFControl\n");}
	}
};


%nodefaultctor IGESCAFControl_Writer;
class IGESCAFControl_Writer : public IGESControl_Writer {
	public:
		%feature("autodoc", "1");
		IGESCAFControl_Writer();
		%feature("autodoc", "1");
		IGESCAFControl_Writer(const Handle_XSControl_WorkSession &WS, const Standard_Boolean scratch=1);
		%feature("autodoc", "1");
		Standard_Boolean Transfer(const Handle_TDocStd_Document &doc);
		%feature("autodoc", "1");
		Standard_Boolean Perform(const Handle_TDocStd_Document &doc, const TCollection_AsciiString &filename);
		%feature("autodoc", "1");
		Standard_Boolean Perform(const Handle_TDocStd_Document &doc, const char * filename);
		%feature("autodoc", "1");
		void SetColorMode(const Standard_Boolean colormode);
		%feature("autodoc", "1");
		Standard_Boolean GetColorMode() const;
		%feature("autodoc", "1");
		void SetNameMode(const Standard_Boolean namemode);
		%feature("autodoc", "1");
		Standard_Boolean GetNameMode() const;
		%feature("autodoc", "1");
		void SetLayerMode(const Standard_Boolean layermode);
		%feature("autodoc", "1");
		Standard_Boolean GetLayerMode() const;

};
%extend IGESCAFControl_Writer {
	~IGESCAFControl_Writer() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of IGESCAFControl_Writer\n");}
	}
};


%nodefaultctor IGESCAFControl_Reader;
class IGESCAFControl_Reader : public IGESControl_Reader {
	public:
		%feature("autodoc", "1");
		IGESCAFControl_Reader();
		%feature("autodoc", "1");
		IGESCAFControl_Reader(const Handle_XSControl_WorkSession &WS, const Standard_Boolean scratch=1);
		%feature("autodoc", "1");
		Standard_Boolean Transfer(Handle_TDocStd_Document & doc);
		%feature("autodoc", "1");
		Standard_Boolean Perform(const TCollection_AsciiString &filename, Handle_TDocStd_Document & doc);
		%feature("autodoc", "1");
		Standard_Boolean Perform(const char * filename, Handle_TDocStd_Document & doc);
		%feature("autodoc", "1");
		void SetColorMode(const Standard_Boolean colormode);
		%feature("autodoc", "1");
		Standard_Boolean GetColorMode() const;
		%feature("autodoc", "1");
		void SetNameMode(const Standard_Boolean namemode);
		%feature("autodoc", "1");
		Standard_Boolean GetNameMode() const;
		%feature("autodoc", "1");
		void SetLayerMode(const Standard_Boolean layermode);
		%feature("autodoc", "1");
		Standard_Boolean GetLayerMode() const;

};
%extend IGESCAFControl_Reader {
	~IGESCAFControl_Reader() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of IGESCAFControl_Reader\n");}
	}
};
