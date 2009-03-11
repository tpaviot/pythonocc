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
%module Viewer

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


%include Viewer_dependencies.i


%include Viewer_headers.i




%nodefaultctor Handle_Viewer_BadValue;
class Handle_Viewer_BadValue : public Handle_Standard_OutOfRange {
	public:
		%feature("autodoc", "1");
		Handle_Viewer_BadValue();
		%feature("autodoc", "1");
		Handle_Viewer_BadValue(const Handle_Viewer_BadValue &aHandle);
		%feature("autodoc", "1");
		Handle_Viewer_BadValue(const Viewer_BadValue *anItem);
		%feature("autodoc", "1");
		Handle_Viewer_BadValue const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Viewer_BadValue {
	Viewer_BadValue* GetObject() {
	return (Viewer_BadValue*)$self->Access();
	}
};
%extend Handle_Viewer_BadValue {
	~Handle_Viewer_BadValue() {
	printf("Call custom destructor for instance of Handle_Viewer_BadValue\n");
	}
};

%nodefaultctor Handle_Viewer_Viewer;
class Handle_Viewer_Viewer : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Viewer_Viewer();
		%feature("autodoc", "1");
		Handle_Viewer_Viewer(const Handle_Viewer_Viewer &aHandle);
		%feature("autodoc", "1");
		Handle_Viewer_Viewer(const Viewer_Viewer *anItem);
		%feature("autodoc", "1");
		Handle_Viewer_Viewer const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Viewer_Viewer {
	Viewer_Viewer* GetObject() {
	return (Viewer_Viewer*)$self->Access();
	}
};
%extend Handle_Viewer_Viewer {
	~Handle_Viewer_Viewer() {
	printf("Call custom destructor for instance of Handle_Viewer_Viewer\n");
	}
};

%nodefaultctor Handle_Viewer_View;
class Handle_Viewer_View : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Viewer_View();
		%feature("autodoc", "1");
		Handle_Viewer_View(const Handle_Viewer_View &aHandle);
		%feature("autodoc", "1");
		Handle_Viewer_View(const Viewer_View *anItem);
		%feature("autodoc", "1");
		Handle_Viewer_View const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Viewer_View {
	Viewer_View* GetObject() {
	return (Viewer_View*)$self->Access();
	}
};
%extend Handle_Viewer_View {
	~Handle_Viewer_View() {
	printf("Call custom destructor for instance of Handle_Viewer_View\n");
	}
};

%nodefaultctor Viewer_View;
class Viewer_View : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		virtual		void Update() const;
		%feature("autodoc", "1");
		Standard_Boolean SetImmediateUpdate(const Standard_Boolean onoff);
		%feature("autodoc", "1");
		virtual		void WindowFit(const Standard_Integer Xmin, const Standard_Integer Ymin, const Standard_Integer Xmax, const Standard_Integer Ymax);
		%feature("autodoc", "1");
		virtual		void Place(const Standard_Integer x, const Standard_Integer y, const Quantity_Factor aZoomFactor=1);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Viewer_View {
	Handle_Viewer_View GetHandle() {
	return *(Handle_Viewer_View*) &$self;
	}
};
%extend Viewer_View {
	~Viewer_View() {
	printf("Call custom destructor for instance of Viewer_View\n");
	}
};

%nodefaultctor Viewer_Viewer;
class Viewer_Viewer : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		virtual		void Update();
		%feature("autodoc", "1");
		Handle_Aspect_GraphicDevice Device() const;
		%feature("autodoc", "1");
		Standard_ExtString NextName() const;
		%feature("autodoc", "1");
		Standard_CString Domain() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Viewer_Viewer {
	Handle_Viewer_Viewer GetHandle() {
	return *(Handle_Viewer_Viewer*) &$self;
	}
};
%extend Viewer_Viewer {
	~Viewer_Viewer() {
	printf("Call custom destructor for instance of Viewer_Viewer\n");
	}
};

%nodefaultctor Viewer_BadValue;
class Viewer_BadValue : public Standard_OutOfRange {
	public:
		%feature("autodoc", "1");
		Viewer_BadValue();
		%feature("autodoc", "1");
		Viewer_BadValue(const char * AString);
		%feature("autodoc", "1");
		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		Handle_Viewer_BadValue NewInstance(const char * aMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Viewer_BadValue {
	Handle_Viewer_BadValue GetHandle() {
	return *(Handle_Viewer_BadValue*) &$self;
	}
};
%extend Viewer_BadValue {
	~Viewer_BadValue() {
	printf("Call custom destructor for instance of Viewer_BadValue\n");
	}
};