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
%module AppStdL

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


%include AppStdL_dependencies.i


%include AppStdL_headers.i




%nodefaultctor Handle_AppStdL_Application;
class Handle_AppStdL_Application : public Handle_TDocStd_Application {
	public:
		%feature("autodoc", "1");
		Handle_AppStdL_Application();
		%feature("autodoc", "1");
		Handle_AppStdL_Application(const Handle_AppStdL_Application &aHandle);
		%feature("autodoc", "1");
		Handle_AppStdL_Application(const AppStdL_Application *anItem);
		%feature("autodoc", "1");
		Handle_AppStdL_Application const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AppStdL_Application {
	AppStdL_Application* GetObject() {
	return (AppStdL_Application*)$self->Access();
	}
};
%extend Handle_AppStdL_Application {
	~Handle_AppStdL_Application() {
	printf("Call custom destructor for instance of Handle_AppStdL_Application\n");
	}
};

%nodefaultctor AppStdL_Application;
class AppStdL_Application : public TDocStd_Application {
	public:
		%feature("autodoc", "1");
		AppStdL_Application();
		%feature("autodoc", "1");
		virtual		Handle_CDM_MessageDriver MessageDriver();
		%feature("autodoc", "1");
		virtual		void Formats(TColStd_SequenceOfExtendedString & theFormats);
		%feature("autodoc", "1");
		virtual		Standard_CString ResourcesName();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AppStdL_Application {
	Handle_AppStdL_Application GetHandle() {
	return *(Handle_AppStdL_Application*) &$self;
	}
};
%extend AppStdL_Application {
	~AppStdL_Application() {
	printf("Call custom destructor for instance of AppStdL_Application\n");
	}
};