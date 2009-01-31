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
%module VrmlAPI

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
		~VrmlAPI();
		%feature("autodoc", "1");
		VrmlAPI();
		%feature("autodoc", "1");
		void Write(const TopoDS_Shape &aShape, const char * aFileName);

};

%nodefaultctor VrmlAPI_Writer;
class VrmlAPI_Writer {
	public:
		%feature("autodoc", "1");
		~VrmlAPI_Writer();
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