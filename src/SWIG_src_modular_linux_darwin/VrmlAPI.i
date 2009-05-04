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
%module VrmlAPI

%include VrmlAPI_renames.i

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


%include VrmlAPI_dependencies.i


%include VrmlAPI_headers.i


enum VrmlAPI_RepresentationOfShape {
	VrmlAPI_ShadedRepresentation,
	VrmlAPI_WireFrameRepresentation,
	VrmlAPI_BothRepresentation,
	};



%nodefaultctor VrmlAPI;
class VrmlAPI {
	public:
		%feature("autodoc", "1");
		void Write(const TopoDS_Shape &aShape, const char * aFileName);

};
%extend VrmlAPI {
	~VrmlAPI() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of VrmlAPI\n");}
	}
};


%nodefaultctor VrmlAPI_Writer;
class VrmlAPI_Writer {
	public:
		%feature("autodoc", "1");
		VrmlAPI_Writer();
		%feature("autodoc", "1");
		void ResetToDefaults();
		%feature("autodoc", "1");
		Handle_VrmlConverter_Drawer Drawer() const;
		%feature("autodoc", "1");
		void SetDeflection(const Standard_Real aDef);
		%feature("autodoc", "1");
		void SetRepresentation(const VrmlAPI_RepresentationOfShape aRep);
		%feature("autodoc", "1");
		void SetTransparencyToMaterial(Handle_Vrml_Material & aMaterial, const Standard_Real aTransparency);
		%feature("autodoc", "1");
		void SetShininessToMaterial(Handle_Vrml_Material & aMaterial, const Standard_Real aShininess);
		%feature("autodoc", "1");
		void SetAmbientColorToMaterial(Handle_Vrml_Material & aMaterial, const Handle_Quantity_HArray1OfColor &Color);
		%feature("autodoc", "1");
		void SetDiffuseColorToMaterial(Handle_Vrml_Material & aMaterial, const Handle_Quantity_HArray1OfColor &Color);
		%feature("autodoc", "1");
		void SetSpecularColorToMaterial(Handle_Vrml_Material & aMaterial, const Handle_Quantity_HArray1OfColor &Color);
		%feature("autodoc", "1");
		void SetEmissiveColorToMaterial(Handle_Vrml_Material & aMaterial, const Handle_Quantity_HArray1OfColor &Color);
		%feature("autodoc", "1");
		VrmlAPI_RepresentationOfShape GetRepresentation() const;
		%feature("autodoc", "1");
		Handle_Vrml_Material GetFrontMaterial() const;
		%feature("autodoc", "1");
		Handle_Vrml_Material GetPointsMaterial() const;
		%feature("autodoc", "1");
		Handle_Vrml_Material GetUisoMaterial() const;
		%feature("autodoc", "1");
		Handle_Vrml_Material GetVisoMaterial() const;
		%feature("autodoc", "1");
		Handle_Vrml_Material GetLineMaterial() const;
		%feature("autodoc", "1");
		Handle_Vrml_Material GetWireMaterial() const;
		%feature("autodoc", "1");
		Handle_Vrml_Material GetFreeBoundsMaterial() const;
		%feature("autodoc", "1");
		Handle_Vrml_Material GetUnfreeBoundsMaterial() const;
		%feature("autodoc", "1");
		void Write(const TopoDS_Shape &aShape, const char * aFile) const;

};
%extend VrmlAPI_Writer {
	~VrmlAPI_Writer() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of VrmlAPI_Writer\n");}
	}
};
