/*

Copyright 2008-2011 Thomas Paviot (tpaviot@gmail.com)

This file is part of pythonOCC.

pythonOCC is free software: you can redistribute it and/or modify
it under the terms of the GNU Lesser General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

pythonOCC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public License
along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.

$Revision$
$Date$
$Author$
$HeaderURL$

*/


%{
#ifdef WNT
#pragma warning(disable : 4716)
#endif
%}

%module VrmlAPI
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include VrmlAPI_renames.i


%include VrmlAPI_required_python_modules.i


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
		VrmlAPI();
		%feature("autodoc", "1");
		static		void Write(const TopoDS_Shape aShape, const char * aFileName);

};
%feature("shadow") VrmlAPI::~VrmlAPI %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend VrmlAPI {
	void _kill_pointed() {
		delete $self;
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
		void Write(const TopoDS_Shape aShape, const char * aFile) const;

};
%feature("shadow") VrmlAPI_Writer::~VrmlAPI_Writer %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend VrmlAPI_Writer {
	void _kill_pointed() {
		delete $self;
	}
};
