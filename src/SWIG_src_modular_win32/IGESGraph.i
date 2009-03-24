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
%module IGESGraph

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
%{#include <cstdlib>%}
%{#include <iostream>%}
%{#include <string>%}
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


%include IGESGraph_dependencies.i


%include IGESGraph_headers.i




%nodefaultctor Handle_IGESGraph_LineFontDefPattern;
class Handle_IGESGraph_LineFontDefPattern : public Handle_IGESData_LineFontEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESGraph_LineFontDefPattern();
		%feature("autodoc", "1");
		Handle_IGESGraph_LineFontDefPattern(const Handle_IGESGraph_LineFontDefPattern &aHandle);
		%feature("autodoc", "1");
		Handle_IGESGraph_LineFontDefPattern(const IGESGraph_LineFontDefPattern *anItem);
		%feature("autodoc", "1");
		Handle_IGESGraph_LineFontDefPattern const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESGraph_LineFontDefPattern {
	IGESGraph_LineFontDefPattern* GetObject() {
	return (IGESGraph_LineFontDefPattern*)$self->Access();
	}
};
%extend Handle_IGESGraph_LineFontDefPattern {
	~Handle_IGESGraph_LineFontDefPattern() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_IGESGraph_LineFontDefPattern\n");}
	}
};

%nodefaultctor Handle_IGESGraph_Pick;
class Handle_IGESGraph_Pick : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESGraph_Pick();
		%feature("autodoc", "1");
		Handle_IGESGraph_Pick(const Handle_IGESGraph_Pick &aHandle);
		%feature("autodoc", "1");
		Handle_IGESGraph_Pick(const IGESGraph_Pick *anItem);
		%feature("autodoc", "1");
		Handle_IGESGraph_Pick const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESGraph_Pick {
	IGESGraph_Pick* GetObject() {
	return (IGESGraph_Pick*)$self->Access();
	}
};
%extend Handle_IGESGraph_Pick {
	~Handle_IGESGraph_Pick() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_IGESGraph_Pick\n");}
	}
};

%nodefaultctor Handle_IGESGraph_HArray1OfTextDisplayTemplate;
class Handle_IGESGraph_HArray1OfTextDisplayTemplate : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_IGESGraph_HArray1OfTextDisplayTemplate();
		%feature("autodoc", "1");
		Handle_IGESGraph_HArray1OfTextDisplayTemplate(const Handle_IGESGraph_HArray1OfTextDisplayTemplate &aHandle);
		%feature("autodoc", "1");
		Handle_IGESGraph_HArray1OfTextDisplayTemplate(const IGESGraph_HArray1OfTextDisplayTemplate *anItem);
		%feature("autodoc", "1");
		Handle_IGESGraph_HArray1OfTextDisplayTemplate const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESGraph_HArray1OfTextDisplayTemplate {
	IGESGraph_HArray1OfTextDisplayTemplate* GetObject() {
	return (IGESGraph_HArray1OfTextDisplayTemplate*)$self->Access();
	}
};
%extend Handle_IGESGraph_HArray1OfTextDisplayTemplate {
	~Handle_IGESGraph_HArray1OfTextDisplayTemplate() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_IGESGraph_HArray1OfTextDisplayTemplate\n");}
	}
};

%nodefaultctor Handle_IGESGraph_Color;
class Handle_IGESGraph_Color : public Handle_IGESData_ColorEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESGraph_Color();
		%feature("autodoc", "1");
		Handle_IGESGraph_Color(const Handle_IGESGraph_Color &aHandle);
		%feature("autodoc", "1");
		Handle_IGESGraph_Color(const IGESGraph_Color *anItem);
		%feature("autodoc", "1");
		Handle_IGESGraph_Color const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESGraph_Color {
	IGESGraph_Color* GetObject() {
	return (IGESGraph_Color*)$self->Access();
	}
};
%extend Handle_IGESGraph_Color {
	~Handle_IGESGraph_Color() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_IGESGraph_Color\n");}
	}
};

%nodefaultctor Handle_IGESGraph_TextDisplayTemplate;
class Handle_IGESGraph_TextDisplayTemplate : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESGraph_TextDisplayTemplate();
		%feature("autodoc", "1");
		Handle_IGESGraph_TextDisplayTemplate(const Handle_IGESGraph_TextDisplayTemplate &aHandle);
		%feature("autodoc", "1");
		Handle_IGESGraph_TextDisplayTemplate(const IGESGraph_TextDisplayTemplate *anItem);
		%feature("autodoc", "1");
		Handle_IGESGraph_TextDisplayTemplate const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESGraph_TextDisplayTemplate {
	IGESGraph_TextDisplayTemplate* GetObject() {
	return (IGESGraph_TextDisplayTemplate*)$self->Access();
	}
};
%extend Handle_IGESGraph_TextDisplayTemplate {
	~Handle_IGESGraph_TextDisplayTemplate() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_IGESGraph_TextDisplayTemplate\n");}
	}
};

%nodefaultctor Handle_IGESGraph_NominalSize;
class Handle_IGESGraph_NominalSize : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESGraph_NominalSize();
		%feature("autodoc", "1");
		Handle_IGESGraph_NominalSize(const Handle_IGESGraph_NominalSize &aHandle);
		%feature("autodoc", "1");
		Handle_IGESGraph_NominalSize(const IGESGraph_NominalSize *anItem);
		%feature("autodoc", "1");
		Handle_IGESGraph_NominalSize const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESGraph_NominalSize {
	IGESGraph_NominalSize* GetObject() {
	return (IGESGraph_NominalSize*)$self->Access();
	}
};
%extend Handle_IGESGraph_NominalSize {
	~Handle_IGESGraph_NominalSize() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_IGESGraph_NominalSize\n");}
	}
};

%nodefaultctor Handle_IGESGraph_DrawingSize;
class Handle_IGESGraph_DrawingSize : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESGraph_DrawingSize();
		%feature("autodoc", "1");
		Handle_IGESGraph_DrawingSize(const Handle_IGESGraph_DrawingSize &aHandle);
		%feature("autodoc", "1");
		Handle_IGESGraph_DrawingSize(const IGESGraph_DrawingSize *anItem);
		%feature("autodoc", "1");
		Handle_IGESGraph_DrawingSize const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESGraph_DrawingSize {
	IGESGraph_DrawingSize* GetObject() {
	return (IGESGraph_DrawingSize*)$self->Access();
	}
};
%extend Handle_IGESGraph_DrawingSize {
	~Handle_IGESGraph_DrawingSize() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_IGESGraph_DrawingSize\n");}
	}
};

%nodefaultctor Handle_IGESGraph_DrawingUnits;
class Handle_IGESGraph_DrawingUnits : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESGraph_DrawingUnits();
		%feature("autodoc", "1");
		Handle_IGESGraph_DrawingUnits(const Handle_IGESGraph_DrawingUnits &aHandle);
		%feature("autodoc", "1");
		Handle_IGESGraph_DrawingUnits(const IGESGraph_DrawingUnits *anItem);
		%feature("autodoc", "1");
		Handle_IGESGraph_DrawingUnits const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESGraph_DrawingUnits {
	IGESGraph_DrawingUnits* GetObject() {
	return (IGESGraph_DrawingUnits*)$self->Access();
	}
};
%extend Handle_IGESGraph_DrawingUnits {
	~Handle_IGESGraph_DrawingUnits() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_IGESGraph_DrawingUnits\n");}
	}
};

%nodefaultctor Handle_IGESGraph_IntercharacterSpacing;
class Handle_IGESGraph_IntercharacterSpacing : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESGraph_IntercharacterSpacing();
		%feature("autodoc", "1");
		Handle_IGESGraph_IntercharacterSpacing(const Handle_IGESGraph_IntercharacterSpacing &aHandle);
		%feature("autodoc", "1");
		Handle_IGESGraph_IntercharacterSpacing(const IGESGraph_IntercharacterSpacing *anItem);
		%feature("autodoc", "1");
		Handle_IGESGraph_IntercharacterSpacing const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESGraph_IntercharacterSpacing {
	IGESGraph_IntercharacterSpacing* GetObject() {
	return (IGESGraph_IntercharacterSpacing*)$self->Access();
	}
};
%extend Handle_IGESGraph_IntercharacterSpacing {
	~Handle_IGESGraph_IntercharacterSpacing() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_IGESGraph_IntercharacterSpacing\n");}
	}
};

%nodefaultctor Handle_IGESGraph_GeneralModule;
class Handle_IGESGraph_GeneralModule : public Handle_IGESData_GeneralModule {
	public:
		%feature("autodoc", "1");
		Handle_IGESGraph_GeneralModule();
		%feature("autodoc", "1");
		Handle_IGESGraph_GeneralModule(const Handle_IGESGraph_GeneralModule &aHandle);
		%feature("autodoc", "1");
		Handle_IGESGraph_GeneralModule(const IGESGraph_GeneralModule *anItem);
		%feature("autodoc", "1");
		Handle_IGESGraph_GeneralModule const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESGraph_GeneralModule {
	IGESGraph_GeneralModule* GetObject() {
	return (IGESGraph_GeneralModule*)$self->Access();
	}
};
%extend Handle_IGESGraph_GeneralModule {
	~Handle_IGESGraph_GeneralModule() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_IGESGraph_GeneralModule\n");}
	}
};

%nodefaultctor Handle_IGESGraph_HArray1OfColor;
class Handle_IGESGraph_HArray1OfColor : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_IGESGraph_HArray1OfColor();
		%feature("autodoc", "1");
		Handle_IGESGraph_HArray1OfColor(const Handle_IGESGraph_HArray1OfColor &aHandle);
		%feature("autodoc", "1");
		Handle_IGESGraph_HArray1OfColor(const IGESGraph_HArray1OfColor *anItem);
		%feature("autodoc", "1");
		Handle_IGESGraph_HArray1OfColor const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESGraph_HArray1OfColor {
	IGESGraph_HArray1OfColor* GetObject() {
	return (IGESGraph_HArray1OfColor*)$self->Access();
	}
};
%extend Handle_IGESGraph_HArray1OfColor {
	~Handle_IGESGraph_HArray1OfColor() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_IGESGraph_HArray1OfColor\n");}
	}
};

%nodefaultctor Handle_IGESGraph_DefinitionLevel;
class Handle_IGESGraph_DefinitionLevel : public Handle_IGESData_LevelListEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESGraph_DefinitionLevel();
		%feature("autodoc", "1");
		Handle_IGESGraph_DefinitionLevel(const Handle_IGESGraph_DefinitionLevel &aHandle);
		%feature("autodoc", "1");
		Handle_IGESGraph_DefinitionLevel(const IGESGraph_DefinitionLevel *anItem);
		%feature("autodoc", "1");
		Handle_IGESGraph_DefinitionLevel const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESGraph_DefinitionLevel {
	IGESGraph_DefinitionLevel* GetObject() {
	return (IGESGraph_DefinitionLevel*)$self->Access();
	}
};
%extend Handle_IGESGraph_DefinitionLevel {
	~Handle_IGESGraph_DefinitionLevel() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_IGESGraph_DefinitionLevel\n");}
	}
};

%nodefaultctor Handle_IGESGraph_HArray1OfTextFontDef;
class Handle_IGESGraph_HArray1OfTextFontDef : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_IGESGraph_HArray1OfTextFontDef();
		%feature("autodoc", "1");
		Handle_IGESGraph_HArray1OfTextFontDef(const Handle_IGESGraph_HArray1OfTextFontDef &aHandle);
		%feature("autodoc", "1");
		Handle_IGESGraph_HArray1OfTextFontDef(const IGESGraph_HArray1OfTextFontDef *anItem);
		%feature("autodoc", "1");
		Handle_IGESGraph_HArray1OfTextFontDef const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESGraph_HArray1OfTextFontDef {
	IGESGraph_HArray1OfTextFontDef* GetObject() {
	return (IGESGraph_HArray1OfTextFontDef*)$self->Access();
	}
};
%extend Handle_IGESGraph_HArray1OfTextFontDef {
	~Handle_IGESGraph_HArray1OfTextFontDef() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_IGESGraph_HArray1OfTextFontDef\n");}
	}
};

%nodefaultctor Handle_IGESGraph_SpecificModule;
class Handle_IGESGraph_SpecificModule : public Handle_IGESData_SpecificModule {
	public:
		%feature("autodoc", "1");
		Handle_IGESGraph_SpecificModule();
		%feature("autodoc", "1");
		Handle_IGESGraph_SpecificModule(const Handle_IGESGraph_SpecificModule &aHandle);
		%feature("autodoc", "1");
		Handle_IGESGraph_SpecificModule(const IGESGraph_SpecificModule *anItem);
		%feature("autodoc", "1");
		Handle_IGESGraph_SpecificModule const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESGraph_SpecificModule {
	IGESGraph_SpecificModule* GetObject() {
	return (IGESGraph_SpecificModule*)$self->Access();
	}
};
%extend Handle_IGESGraph_SpecificModule {
	~Handle_IGESGraph_SpecificModule() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_IGESGraph_SpecificModule\n");}
	}
};

%nodefaultctor Handle_IGESGraph_UniformRectGrid;
class Handle_IGESGraph_UniformRectGrid : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESGraph_UniformRectGrid();
		%feature("autodoc", "1");
		Handle_IGESGraph_UniformRectGrid(const Handle_IGESGraph_UniformRectGrid &aHandle);
		%feature("autodoc", "1");
		Handle_IGESGraph_UniformRectGrid(const IGESGraph_UniformRectGrid *anItem);
		%feature("autodoc", "1");
		Handle_IGESGraph_UniformRectGrid const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESGraph_UniformRectGrid {
	IGESGraph_UniformRectGrid* GetObject() {
	return (IGESGraph_UniformRectGrid*)$self->Access();
	}
};
%extend Handle_IGESGraph_UniformRectGrid {
	~Handle_IGESGraph_UniformRectGrid() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_IGESGraph_UniformRectGrid\n");}
	}
};

%nodefaultctor Handle_IGESGraph_HighLight;
class Handle_IGESGraph_HighLight : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESGraph_HighLight();
		%feature("autodoc", "1");
		Handle_IGESGraph_HighLight(const Handle_IGESGraph_HighLight &aHandle);
		%feature("autodoc", "1");
		Handle_IGESGraph_HighLight(const IGESGraph_HighLight *anItem);
		%feature("autodoc", "1");
		Handle_IGESGraph_HighLight const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESGraph_HighLight {
	IGESGraph_HighLight* GetObject() {
	return (IGESGraph_HighLight*)$self->Access();
	}
};
%extend Handle_IGESGraph_HighLight {
	~Handle_IGESGraph_HighLight() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_IGESGraph_HighLight\n");}
	}
};

%nodefaultctor Handle_IGESGraph_LineFontDefTemplate;
class Handle_IGESGraph_LineFontDefTemplate : public Handle_IGESData_LineFontEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESGraph_LineFontDefTemplate();
		%feature("autodoc", "1");
		Handle_IGESGraph_LineFontDefTemplate(const Handle_IGESGraph_LineFontDefTemplate &aHandle);
		%feature("autodoc", "1");
		Handle_IGESGraph_LineFontDefTemplate(const IGESGraph_LineFontDefTemplate *anItem);
		%feature("autodoc", "1");
		Handle_IGESGraph_LineFontDefTemplate const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESGraph_LineFontDefTemplate {
	IGESGraph_LineFontDefTemplate* GetObject() {
	return (IGESGraph_LineFontDefTemplate*)$self->Access();
	}
};
%extend Handle_IGESGraph_LineFontDefTemplate {
	~Handle_IGESGraph_LineFontDefTemplate() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_IGESGraph_LineFontDefTemplate\n");}
	}
};

%nodefaultctor Handle_IGESGraph_ReadWriteModule;
class Handle_IGESGraph_ReadWriteModule : public Handle_IGESData_ReadWriteModule {
	public:
		%feature("autodoc", "1");
		Handle_IGESGraph_ReadWriteModule();
		%feature("autodoc", "1");
		Handle_IGESGraph_ReadWriteModule(const Handle_IGESGraph_ReadWriteModule &aHandle);
		%feature("autodoc", "1");
		Handle_IGESGraph_ReadWriteModule(const IGESGraph_ReadWriteModule *anItem);
		%feature("autodoc", "1");
		Handle_IGESGraph_ReadWriteModule const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESGraph_ReadWriteModule {
	IGESGraph_ReadWriteModule* GetObject() {
	return (IGESGraph_ReadWriteModule*)$self->Access();
	}
};
%extend Handle_IGESGraph_ReadWriteModule {
	~Handle_IGESGraph_ReadWriteModule() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_IGESGraph_ReadWriteModule\n");}
	}
};

%nodefaultctor Handle_IGESGraph_Protocol;
class Handle_IGESGraph_Protocol : public Handle_IGESData_Protocol {
	public:
		%feature("autodoc", "1");
		Handle_IGESGraph_Protocol();
		%feature("autodoc", "1");
		Handle_IGESGraph_Protocol(const Handle_IGESGraph_Protocol &aHandle);
		%feature("autodoc", "1");
		Handle_IGESGraph_Protocol(const IGESGraph_Protocol *anItem);
		%feature("autodoc", "1");
		Handle_IGESGraph_Protocol const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESGraph_Protocol {
	IGESGraph_Protocol* GetObject() {
	return (IGESGraph_Protocol*)$self->Access();
	}
};
%extend Handle_IGESGraph_Protocol {
	~Handle_IGESGraph_Protocol() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_IGESGraph_Protocol\n");}
	}
};

%nodefaultctor Handle_IGESGraph_TextFontDef;
class Handle_IGESGraph_TextFontDef : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESGraph_TextFontDef();
		%feature("autodoc", "1");
		Handle_IGESGraph_TextFontDef(const Handle_IGESGraph_TextFontDef &aHandle);
		%feature("autodoc", "1");
		Handle_IGESGraph_TextFontDef(const IGESGraph_TextFontDef *anItem);
		%feature("autodoc", "1");
		Handle_IGESGraph_TextFontDef const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESGraph_TextFontDef {
	IGESGraph_TextFontDef* GetObject() {
	return (IGESGraph_TextFontDef*)$self->Access();
	}
};
%extend Handle_IGESGraph_TextFontDef {
	~Handle_IGESGraph_TextFontDef() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_IGESGraph_TextFontDef\n");}
	}
};

%nodefaultctor Handle_IGESGraph_LineFontPredefined;
class Handle_IGESGraph_LineFontPredefined : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESGraph_LineFontPredefined();
		%feature("autodoc", "1");
		Handle_IGESGraph_LineFontPredefined(const Handle_IGESGraph_LineFontPredefined &aHandle);
		%feature("autodoc", "1");
		Handle_IGESGraph_LineFontPredefined(const IGESGraph_LineFontPredefined *anItem);
		%feature("autodoc", "1");
		Handle_IGESGraph_LineFontPredefined const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESGraph_LineFontPredefined {
	IGESGraph_LineFontPredefined* GetObject() {
	return (IGESGraph_LineFontPredefined*)$self->Access();
	}
};
%extend Handle_IGESGraph_LineFontPredefined {
	~Handle_IGESGraph_LineFontPredefined() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_IGESGraph_LineFontPredefined\n");}
	}
};

%nodefaultctor IGESGraph_HighLight;
class IGESGraph_HighLight : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESGraph_HighLight();
		%feature("autodoc", "1");
		void Init(const Standard_Integer nbProps, const Standard_Integer aHighLightStatus);
		%feature("autodoc", "1");
		Standard_Integer NbPropertyValues() const;
		%feature("autodoc", "1");
		Standard_Integer HighLightStatus() const;
		%feature("autodoc", "1");
		Standard_Boolean IsHighLighted() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESGraph_HighLight {
	Handle_IGESGraph_HighLight GetHandle() {
	return *(Handle_IGESGraph_HighLight*) &$self;
	}
};
%extend IGESGraph_HighLight {
	~IGESGraph_HighLight() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of IGESGraph_HighLight\n");}
	}
};

%nodefaultctor IGESGraph_Pick;
class IGESGraph_Pick : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESGraph_Pick();
		%feature("autodoc", "1");
		void Init(const Standard_Integer nbProps, const Standard_Integer aPickStatus);
		%feature("autodoc", "1");
		Standard_Integer NbPropertyValues() const;
		%feature("autodoc", "1");
		Standard_Integer PickFlag() const;
		%feature("autodoc", "1");
		Standard_Boolean IsPickable() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESGraph_Pick {
	Handle_IGESGraph_Pick GetHandle() {
	return *(Handle_IGESGraph_Pick*) &$self;
	}
};
%extend IGESGraph_Pick {
	~IGESGraph_Pick() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of IGESGraph_Pick\n");}
	}
};

%nodefaultctor IGESGraph_ToolDrawingUnits;
class IGESGraph_ToolDrawingUnits {
	public:
		%feature("autodoc", "1");
		IGESGraph_ToolDrawingUnits();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESGraph_DrawingUnits &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESGraph_DrawingUnits &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESGraph_DrawingUnits &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		Standard_Boolean OwnCorrect(const Handle_IGESGraph_DrawingUnits &ent) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESGraph_DrawingUnits &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESGraph_DrawingUnits &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESGraph_DrawingUnits &entfrom, const Handle_IGESGraph_DrawingUnits &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESGraph_DrawingUnits &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%extend IGESGraph_ToolDrawingUnits {
	~IGESGraph_ToolDrawingUnits() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of IGESGraph_ToolDrawingUnits\n");}
	}
};

%nodefaultctor IGESGraph_DrawingUnits;
class IGESGraph_DrawingUnits : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESGraph_DrawingUnits();
		%feature("autodoc", "1");
		void Init(const Standard_Integer nbProps, const Standard_Integer aFlag, const Handle_TCollection_HAsciiString &aUnit);
		%feature("autodoc", "1");
		Standard_Integer NbPropertyValues() const;
		%feature("autodoc", "1");
		Standard_Integer Flag() const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Unit() const;
		%feature("autodoc", "1");
		Standard_Real UnitValue() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESGraph_DrawingUnits {
	Handle_IGESGraph_DrawingUnits GetHandle() {
	return *(Handle_IGESGraph_DrawingUnits*) &$self;
	}
};
%extend IGESGraph_DrawingUnits {
	~IGESGraph_DrawingUnits() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of IGESGraph_DrawingUnits\n");}
	}
};

%nodefaultctor IGESGraph_Array1OfTextFontDef;
class IGESGraph_Array1OfTextFontDef {
	public:
		%feature("autodoc", "1");
		IGESGraph_Array1OfTextFontDef(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		IGESGraph_Array1OfTextFontDef(const Handle_IGESGraph_TextFontDef &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Handle_IGESGraph_TextFontDef &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const IGESGraph_Array1OfTextFontDef & Assign(const IGESGraph_Array1OfTextFontDef &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_IGESGraph_TextFontDef &Value);
		%feature("autodoc", "1");
		const Handle_IGESGraph_TextFontDef & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_IGESGraph_TextFontDef & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_IGESGraph_TextFontDef & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_IGESGraph_TextFontDef & operator()(const Standard_Integer Index);

};
%extend IGESGraph_Array1OfTextFontDef {
	~IGESGraph_Array1OfTextFontDef() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of IGESGraph_Array1OfTextFontDef\n");}
	}
};

%nodefaultctor IGESGraph_UniformRectGrid;
class IGESGraph_UniformRectGrid : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESGraph_UniformRectGrid();
		%feature("autodoc", "1");
		void Init(const Standard_Integer nbProps, const Standard_Integer finite, const Standard_Integer line, const Standard_Integer weighted, const gp_XY &aGridPoint, const gp_XY &aGridSpacing, const Standard_Integer pointsX, const Standard_Integer pointsY);
		%feature("autodoc", "1");
		Standard_Integer NbPropertyValues() const;
		%feature("autodoc", "1");
		Standard_Boolean IsFinite() const;
		%feature("autodoc", "1");
		Standard_Boolean IsLine() const;
		%feature("autodoc", "1");
		Standard_Boolean IsWeighted() const;
		%feature("autodoc", "1");
		gp_Pnt2d GridPoint() const;
		%feature("autodoc", "1");
		gp_Vec2d GridSpacing() const;
		%feature("autodoc", "1");
		Standard_Integer NbPointsX() const;
		%feature("autodoc", "1");
		Standard_Integer NbPointsY() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESGraph_UniformRectGrid {
	Handle_IGESGraph_UniformRectGrid GetHandle() {
	return *(Handle_IGESGraph_UniformRectGrid*) &$self;
	}
};
%extend IGESGraph_UniformRectGrid {
	~IGESGraph_UniformRectGrid() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of IGESGraph_UniformRectGrid\n");}
	}
};

%nodefaultctor IGESGraph_ToolUniformRectGrid;
class IGESGraph_ToolUniformRectGrid {
	public:
		%feature("autodoc", "1");
		IGESGraph_ToolUniformRectGrid();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESGraph_UniformRectGrid &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESGraph_UniformRectGrid &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESGraph_UniformRectGrid &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		Standard_Boolean OwnCorrect(const Handle_IGESGraph_UniformRectGrid &ent) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESGraph_UniformRectGrid &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESGraph_UniformRectGrid &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESGraph_UniformRectGrid &entfrom, const Handle_IGESGraph_UniformRectGrid &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESGraph_UniformRectGrid &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%extend IGESGraph_ToolUniformRectGrid {
	~IGESGraph_ToolUniformRectGrid() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of IGESGraph_ToolUniformRectGrid\n");}
	}
};

%nodefaultctor IGESGraph_ToolIntercharacterSpacing;
class IGESGraph_ToolIntercharacterSpacing {
	public:
		%feature("autodoc", "1");
		IGESGraph_ToolIntercharacterSpacing();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESGraph_IntercharacterSpacing &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESGraph_IntercharacterSpacing &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESGraph_IntercharacterSpacing &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		Standard_Boolean OwnCorrect(const Handle_IGESGraph_IntercharacterSpacing &ent) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESGraph_IntercharacterSpacing &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESGraph_IntercharacterSpacing &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESGraph_IntercharacterSpacing &entfrom, const Handle_IGESGraph_IntercharacterSpacing &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESGraph_IntercharacterSpacing &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%extend IGESGraph_ToolIntercharacterSpacing {
	~IGESGraph_ToolIntercharacterSpacing() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of IGESGraph_ToolIntercharacterSpacing\n");}
	}
};

%nodefaultctor IGESGraph_ToolNominalSize;
class IGESGraph_ToolNominalSize {
	public:
		%feature("autodoc", "1");
		IGESGraph_ToolNominalSize();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESGraph_NominalSize &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESGraph_NominalSize &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESGraph_NominalSize &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		Standard_Boolean OwnCorrect(const Handle_IGESGraph_NominalSize &ent) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESGraph_NominalSize &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESGraph_NominalSize &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESGraph_NominalSize &entfrom, const Handle_IGESGraph_NominalSize &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESGraph_NominalSize &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%extend IGESGraph_ToolNominalSize {
	~IGESGraph_ToolNominalSize() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of IGESGraph_ToolNominalSize\n");}
	}
};

%nodefaultctor IGESGraph_HArray1OfTextDisplayTemplate;
class IGESGraph_HArray1OfTextDisplayTemplate : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		IGESGraph_HArray1OfTextDisplayTemplate(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		IGESGraph_HArray1OfTextDisplayTemplate(const Standard_Integer Low, const Standard_Integer Up, const Handle_IGESGraph_TextDisplayTemplate &V);
		%feature("autodoc", "1");
		void Init(const Handle_IGESGraph_TextDisplayTemplate &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_IGESGraph_TextDisplayTemplate &Value);
		%feature("autodoc", "1");
		const Handle_IGESGraph_TextDisplayTemplate & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_IGESGraph_TextDisplayTemplate & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const IGESGraph_Array1OfTextDisplayTemplate & Array1() const;
		%feature("autodoc", "1");
		IGESGraph_Array1OfTextDisplayTemplate & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESGraph_HArray1OfTextDisplayTemplate {
	Handle_IGESGraph_HArray1OfTextDisplayTemplate GetHandle() {
	return *(Handle_IGESGraph_HArray1OfTextDisplayTemplate*) &$self;
	}
};
%extend IGESGraph_HArray1OfTextDisplayTemplate {
	~IGESGraph_HArray1OfTextDisplayTemplate() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of IGESGraph_HArray1OfTextDisplayTemplate\n");}
	}
};

%nodefaultctor IGESGraph_ToolDrawingSize;
class IGESGraph_ToolDrawingSize {
	public:
		%feature("autodoc", "1");
		IGESGraph_ToolDrawingSize();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESGraph_DrawingSize &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESGraph_DrawingSize &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESGraph_DrawingSize &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		Standard_Boolean OwnCorrect(const Handle_IGESGraph_DrawingSize &ent) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESGraph_DrawingSize &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESGraph_DrawingSize &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESGraph_DrawingSize &entfrom, const Handle_IGESGraph_DrawingSize &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESGraph_DrawingSize &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%extend IGESGraph_ToolDrawingSize {
	~IGESGraph_ToolDrawingSize() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of IGESGraph_ToolDrawingSize\n");}
	}
};

%nodefaultctor IGESGraph_IntercharacterSpacing;
class IGESGraph_IntercharacterSpacing : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESGraph_IntercharacterSpacing();
		%feature("autodoc", "1");
		void Init(const Standard_Integer nbProps, const Standard_Real anISpace);
		%feature("autodoc", "1");
		Standard_Integer NbPropertyValues() const;
		%feature("autodoc", "1");
		Standard_Real ISpace() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESGraph_IntercharacterSpacing {
	Handle_IGESGraph_IntercharacterSpacing GetHandle() {
	return *(Handle_IGESGraph_IntercharacterSpacing*) &$self;
	}
};
%extend IGESGraph_IntercharacterSpacing {
	~IGESGraph_IntercharacterSpacing() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of IGESGraph_IntercharacterSpacing\n");}
	}
};

%nodefaultctor IGESGraph_ToolTextFontDef;
class IGESGraph_ToolTextFontDef {
	public:
		%feature("autodoc", "1");
		IGESGraph_ToolTextFontDef();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESGraph_TextFontDef &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESGraph_TextFontDef &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESGraph_TextFontDef &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESGraph_TextFontDef &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESGraph_TextFontDef &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESGraph_TextFontDef &entfrom, const Handle_IGESGraph_TextFontDef &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESGraph_TextFontDef &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%extend IGESGraph_ToolTextFontDef {
	~IGESGraph_ToolTextFontDef() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of IGESGraph_ToolTextFontDef\n");}
	}
};

%nodefaultctor IGESGraph_LineFontDefTemplate;
class IGESGraph_LineFontDefTemplate : public IGESData_LineFontEntity {
	public:
		%feature("autodoc", "1");
		IGESGraph_LineFontDefTemplate();
		%feature("autodoc", "1");
		void Init(const Standard_Integer anOrientation, const Handle_IGESBasic_SubfigureDef &aTemplate, const Standard_Real aDistance, const Standard_Real aScale);
		%feature("autodoc", "1");
		Standard_Integer Orientation() const;
		%feature("autodoc", "1");
		Handle_IGESBasic_SubfigureDef TemplateEntity() const;
		%feature("autodoc", "1");
		Standard_Real Distance() const;
		%feature("autodoc", "1");
		Standard_Real Scale() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESGraph_LineFontDefTemplate {
	Handle_IGESGraph_LineFontDefTemplate GetHandle() {
	return *(Handle_IGESGraph_LineFontDefTemplate*) &$self;
	}
};
%extend IGESGraph_LineFontDefTemplate {
	~IGESGraph_LineFontDefTemplate() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of IGESGraph_LineFontDefTemplate\n");}
	}
};

%nodefaultctor IGESGraph;
class IGESGraph {
	public:
		%feature("autodoc", "1");
		IGESGraph();
		%feature("autodoc", "1");
		void Init();
		%feature("autodoc", "1");
		Handle_IGESGraph_Protocol Protocol();

};
%extend IGESGraph {
	~IGESGraph() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of IGESGraph\n");}
	}
};

%nodefaultctor IGESGraph_ToolPick;
class IGESGraph_ToolPick {
	public:
		%feature("autodoc", "1");
		IGESGraph_ToolPick();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESGraph_Pick &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESGraph_Pick &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESGraph_Pick &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		Standard_Boolean OwnCorrect(const Handle_IGESGraph_Pick &ent) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESGraph_Pick &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESGraph_Pick &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESGraph_Pick &entfrom, const Handle_IGESGraph_Pick &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESGraph_Pick &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%extend IGESGraph_ToolPick {
	~IGESGraph_ToolPick() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of IGESGraph_ToolPick\n");}
	}
};

%nodefaultctor IGESGraph_ToolColor;
class IGESGraph_ToolColor {
	public:
		%feature("autodoc", "1");
		IGESGraph_ToolColor();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESGraph_Color &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESGraph_Color &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESGraph_Color &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESGraph_Color &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESGraph_Color &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESGraph_Color &entfrom, const Handle_IGESGraph_Color &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESGraph_Color &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%extend IGESGraph_ToolColor {
	~IGESGraph_ToolColor() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of IGESGraph_ToolColor\n");}
	}
};

%nodefaultctor IGESGraph_GeneralModule;
class IGESGraph_GeneralModule : public IGESData_GeneralModule {
	public:
		%feature("autodoc", "1");
		IGESGraph_GeneralModule();
		%feature("autodoc", "1");
		virtual		void OwnSharedCase(const Standard_Integer CN, const Handle_IGESData_IGESEntity &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		virtual		IGESData_DirChecker DirChecker(const Standard_Integer CN, const Handle_IGESData_IGESEntity &ent) const;
		%feature("autodoc", "1");
		virtual		void OwnCheckCase(const Standard_Integer CN, const Handle_IGESData_IGESEntity &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean NewVoid(const Standard_Integer CN, Handle_Standard_Transient & entto) const;
		%feature("autodoc", "1");
		virtual		void OwnCopyCase(const Standard_Integer CN, const Handle_IGESData_IGESEntity &entfrom, const Handle_IGESData_IGESEntity &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer CategoryNumber(const Standard_Integer CN, const Handle_Standard_Transient &ent, const Interface_ShareTool &shares) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESGraph_GeneralModule {
	Handle_IGESGraph_GeneralModule GetHandle() {
	return *(Handle_IGESGraph_GeneralModule*) &$self;
	}
};
%extend IGESGraph_GeneralModule {
	~IGESGraph_GeneralModule() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of IGESGraph_GeneralModule\n");}
	}
};

%nodefaultctor IGESGraph_ToolLineFontDefTemplate;
class IGESGraph_ToolLineFontDefTemplate {
	public:
		%feature("autodoc", "1");
		IGESGraph_ToolLineFontDefTemplate();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESGraph_LineFontDefTemplate &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESGraph_LineFontDefTemplate &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESGraph_LineFontDefTemplate &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESGraph_LineFontDefTemplate &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESGraph_LineFontDefTemplate &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESGraph_LineFontDefTemplate &entfrom, const Handle_IGESGraph_LineFontDefTemplate &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESGraph_LineFontDefTemplate &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%extend IGESGraph_ToolLineFontDefTemplate {
	~IGESGraph_ToolLineFontDefTemplate() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of IGESGraph_ToolLineFontDefTemplate\n");}
	}
};

%nodefaultctor IGESGraph_Color;
class IGESGraph_Color : public IGESData_ColorEntity {
	public:
		%feature("autodoc", "1");
		IGESGraph_Color();
		%feature("autodoc", "1");
		void Init(const Standard_Real red, const Standard_Real green, const Standard_Real blue, const Handle_TCollection_HAsciiString &aColorName);
		%feature("autodoc", "1");
		void RGBIntensity(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		void CMYIntensity(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		void HLSPercentage(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Boolean HasColorName() const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString ColorName() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESGraph_Color {
	Handle_IGESGraph_Color GetHandle() {
	return *(Handle_IGESGraph_Color*) &$self;
	}
};
%extend IGESGraph_Color {
	~IGESGraph_Color() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of IGESGraph_Color\n");}
	}
};

%nodefaultctor IGESGraph_ToolDefinitionLevel;
class IGESGraph_ToolDefinitionLevel {
	public:
		%feature("autodoc", "1");
		IGESGraph_ToolDefinitionLevel();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESGraph_DefinitionLevel &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESGraph_DefinitionLevel &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESGraph_DefinitionLevel &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESGraph_DefinitionLevel &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESGraph_DefinitionLevel &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESGraph_DefinitionLevel &entfrom, const Handle_IGESGraph_DefinitionLevel &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESGraph_DefinitionLevel &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%extend IGESGraph_ToolDefinitionLevel {
	~IGESGraph_ToolDefinitionLevel() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of IGESGraph_ToolDefinitionLevel\n");}
	}
};

%nodefaultctor IGESGraph_TextDisplayTemplate;
class IGESGraph_TextDisplayTemplate : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESGraph_TextDisplayTemplate();
		%feature("autodoc", "1");
		void Init(const Standard_Real aWidth, const Standard_Real aHeight, const Standard_Integer aFontCode, const Handle_IGESGraph_TextFontDef &aFontEntity, const Standard_Real aSlantAngle, const Standard_Real aRotationAngle, const Standard_Integer aMirrorFlag, const Standard_Integer aRotationFlag, const gp_XYZ &aCorner);
		%feature("autodoc", "1");
		void SetIncremental(const Standard_Boolean mode);
		%feature("autodoc", "1");
		Standard_Boolean IsIncremental() const;
		%feature("autodoc", "1");
		Standard_Real BoxWidth() const;
		%feature("autodoc", "1");
		Standard_Real BoxHeight() const;
		%feature("autodoc", "1");
		Standard_Boolean IsFontEntity() const;
		%feature("autodoc", "1");
		Standard_Integer FontCode() const;
		%feature("autodoc", "1");
		Handle_IGESGraph_TextFontDef FontEntity() const;
		%feature("autodoc", "1");
		Standard_Real SlantAngle() const;
		%feature("autodoc", "1");
		Standard_Real RotationAngle() const;
		%feature("autodoc", "1");
		Standard_Integer MirrorFlag() const;
		%feature("autodoc", "1");
		Standard_Integer RotateFlag() const;
		%feature("autodoc", "1");
		gp_Pnt StartingCorner() const;
		%feature("autodoc", "1");
		gp_Pnt TransformedStartingCorner() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESGraph_TextDisplayTemplate {
	Handle_IGESGraph_TextDisplayTemplate GetHandle() {
	return *(Handle_IGESGraph_TextDisplayTemplate*) &$self;
	}
};
%extend IGESGraph_TextDisplayTemplate {
	~IGESGraph_TextDisplayTemplate() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of IGESGraph_TextDisplayTemplate\n");}
	}
};

%nodefaultctor IGESGraph_SpecificModule;
class IGESGraph_SpecificModule : public IGESData_SpecificModule {
	public:
		%feature("autodoc", "1");
		IGESGraph_SpecificModule();
		%feature("autodoc", "1");
		virtual		void OwnDump(const Standard_Integer CN, const Handle_IGESData_IGESEntity &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean OwnCorrect(const Standard_Integer CN, const Handle_IGESData_IGESEntity &ent) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESGraph_SpecificModule {
	Handle_IGESGraph_SpecificModule GetHandle() {
	return *(Handle_IGESGraph_SpecificModule*) &$self;
	}
};
%extend IGESGraph_SpecificModule {
	~IGESGraph_SpecificModule() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of IGESGraph_SpecificModule\n");}
	}
};

%nodefaultctor IGESGraph_Array1OfTextDisplayTemplate;
class IGESGraph_Array1OfTextDisplayTemplate {
	public:
		%feature("autodoc", "1");
		IGESGraph_Array1OfTextDisplayTemplate(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		IGESGraph_Array1OfTextDisplayTemplate(const Handle_IGESGraph_TextDisplayTemplate &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Handle_IGESGraph_TextDisplayTemplate &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const IGESGraph_Array1OfTextDisplayTemplate & Assign(const IGESGraph_Array1OfTextDisplayTemplate &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_IGESGraph_TextDisplayTemplate &Value);
		%feature("autodoc", "1");
		const Handle_IGESGraph_TextDisplayTemplate & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_IGESGraph_TextDisplayTemplate & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_IGESGraph_TextDisplayTemplate & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_IGESGraph_TextDisplayTemplate & operator()(const Standard_Integer Index);

};
%extend IGESGraph_Array1OfTextDisplayTemplate {
	~IGESGraph_Array1OfTextDisplayTemplate() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of IGESGraph_Array1OfTextDisplayTemplate\n");}
	}
};

%nodefaultctor IGESGraph_DefinitionLevel;
class IGESGraph_DefinitionLevel : public IGESData_LevelListEntity {
	public:
		%feature("autodoc", "1");
		IGESGraph_DefinitionLevel();
		%feature("autodoc", "1");
		void Init(const Handle_TColStd_HArray1OfInteger &allLevelNumbers);
		%feature("autodoc", "1");
		Standard_Integer NbPropertyValues() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbLevelNumbers() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer LevelNumber(const Standard_Integer LevelIndex) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESGraph_DefinitionLevel {
	Handle_IGESGraph_DefinitionLevel GetHandle() {
	return *(Handle_IGESGraph_DefinitionLevel*) &$self;
	}
};
%extend IGESGraph_DefinitionLevel {
	~IGESGraph_DefinitionLevel() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of IGESGraph_DefinitionLevel\n");}
	}
};

%nodefaultctor IGESGraph_ReadWriteModule;
class IGESGraph_ReadWriteModule : public IGESData_ReadWriteModule {
	public:
		%feature("autodoc", "1");
		IGESGraph_ReadWriteModule();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseIGES(const Standard_Integer typenum, const Standard_Integer formnum) const;
		%feature("autodoc", "1");
		virtual		void ReadOwnParams(const Standard_Integer CN, const Handle_IGESData_IGESEntity &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		virtual		void WriteOwnParams(const Standard_Integer CN, const Handle_IGESData_IGESEntity &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESGraph_ReadWriteModule {
	Handle_IGESGraph_ReadWriteModule GetHandle() {
	return *(Handle_IGESGraph_ReadWriteModule*) &$self;
	}
};
%extend IGESGraph_ReadWriteModule {
	~IGESGraph_ReadWriteModule() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of IGESGraph_ReadWriteModule\n");}
	}
};

%nodefaultctor IGESGraph_ToolTextDisplayTemplate;
class IGESGraph_ToolTextDisplayTemplate {
	public:
		%feature("autodoc", "1");
		IGESGraph_ToolTextDisplayTemplate();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESGraph_TextDisplayTemplate &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESGraph_TextDisplayTemplate &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESGraph_TextDisplayTemplate &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESGraph_TextDisplayTemplate &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESGraph_TextDisplayTemplate &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESGraph_TextDisplayTemplate &entfrom, const Handle_IGESGraph_TextDisplayTemplate &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESGraph_TextDisplayTemplate &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%extend IGESGraph_ToolTextDisplayTemplate {
	~IGESGraph_ToolTextDisplayTemplate() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of IGESGraph_ToolTextDisplayTemplate\n");}
	}
};

%nodefaultctor IGESGraph_NominalSize;
class IGESGraph_NominalSize : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESGraph_NominalSize();
		%feature("autodoc", "1");
		void Init(const Standard_Integer nbProps, const Standard_Real aNominalSizeValue, const Handle_TCollection_HAsciiString &aNominalSizeName, const Handle_TCollection_HAsciiString &aStandardName);
		%feature("autodoc", "1");
		Standard_Integer NbPropertyValues() const;
		%feature("autodoc", "1");
		Standard_Real NominalSizeValue() const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString NominalSizeName() const;
		%feature("autodoc", "1");
		Standard_Boolean HasStandardName() const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString StandardName() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESGraph_NominalSize {
	Handle_IGESGraph_NominalSize GetHandle() {
	return *(Handle_IGESGraph_NominalSize*) &$self;
	}
};
%extend IGESGraph_NominalSize {
	~IGESGraph_NominalSize() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of IGESGraph_NominalSize\n");}
	}
};

%nodefaultctor IGESGraph_ToolLineFontDefPattern;
class IGESGraph_ToolLineFontDefPattern {
	public:
		%feature("autodoc", "1");
		IGESGraph_ToolLineFontDefPattern();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESGraph_LineFontDefPattern &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESGraph_LineFontDefPattern &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESGraph_LineFontDefPattern &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESGraph_LineFontDefPattern &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESGraph_LineFontDefPattern &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESGraph_LineFontDefPattern &entfrom, const Handle_IGESGraph_LineFontDefPattern &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESGraph_LineFontDefPattern &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%extend IGESGraph_ToolLineFontDefPattern {
	~IGESGraph_ToolLineFontDefPattern() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of IGESGraph_ToolLineFontDefPattern\n");}
	}
};

%nodefaultctor IGESGraph_DrawingSize;
class IGESGraph_DrawingSize : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESGraph_DrawingSize();
		%feature("autodoc", "1");
		void Init(const Standard_Integer nbProps, const Standard_Real aXSize, const Standard_Real aYSize);
		%feature("autodoc", "1");
		Standard_Integer NbPropertyValues() const;
		%feature("autodoc", "1");
		Standard_Real XSize() const;
		%feature("autodoc", "1");
		Standard_Real YSize() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESGraph_DrawingSize {
	Handle_IGESGraph_DrawingSize GetHandle() {
	return *(Handle_IGESGraph_DrawingSize*) &$self;
	}
};
%extend IGESGraph_DrawingSize {
	~IGESGraph_DrawingSize() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of IGESGraph_DrawingSize\n");}
	}
};

%nodefaultctor IGESGraph_TextFontDef;
class IGESGraph_TextFontDef : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESGraph_TextFontDef();
		%feature("autodoc", "1");
		void Init(const Standard_Integer aFontCode, const Handle_TCollection_HAsciiString &aFontName, const Standard_Integer aSupersededFont, const Handle_IGESGraph_TextFontDef &aSupersededEntity, const Standard_Integer aScale, const Handle_TColStd_HArray1OfInteger &allASCIICodes, const Handle_TColStd_HArray1OfInteger &allNextCharX, const Handle_TColStd_HArray1OfInteger &allNextCharY, const Handle_TColStd_HArray1OfInteger &allPenMotions, const Handle_IGESBasic_HArray1OfHArray1OfInteger &allPenFlags, const Handle_IGESBasic_HArray1OfHArray1OfInteger &allMovePenToX, const Handle_IGESBasic_HArray1OfHArray1OfInteger &allMovePenToY);
		%feature("autodoc", "1");
		Standard_Integer FontCode() const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString FontName() const;
		%feature("autodoc", "1");
		Standard_Boolean IsSupersededFontEntity() const;
		%feature("autodoc", "1");
		Standard_Integer SupersededFontCode() const;
		%feature("autodoc", "1");
		Handle_IGESGraph_TextFontDef SupersededFontEntity() const;
		%feature("autodoc", "1");
		Standard_Integer Scale() const;
		%feature("autodoc", "1");
		Standard_Integer NbCharacters() const;
		%feature("autodoc", "1");
		Standard_Integer ASCIICode(const Standard_Integer Chnum) const;
		%feature("autodoc", "1");
		void NextCharOrigin(const Standard_Integer Chnum, Standard_Integer & NX, Standard_Integer & NY) const;
		%feature("autodoc", "1");
		Standard_Integer NbPenMotions(const Standard_Integer Chnum) const;
		%feature("autodoc", "1");
		Standard_Boolean IsPenUp(const Standard_Integer Chnum, const Standard_Integer Motionnum) const;
		%feature("autodoc", "1");
		void NextPenPosition(const Standard_Integer Chnum, const Standard_Integer Motionnum, Standard_Integer & IX, Standard_Integer & IY) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESGraph_TextFontDef {
	Handle_IGESGraph_TextFontDef GetHandle() {
	return *(Handle_IGESGraph_TextFontDef*) &$self;
	}
};
%extend IGESGraph_TextFontDef {
	~IGESGraph_TextFontDef() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of IGESGraph_TextFontDef\n");}
	}
};

%nodefaultctor IGESGraph_LineFontPredefined;
class IGESGraph_LineFontPredefined : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESGraph_LineFontPredefined();
		%feature("autodoc", "1");
		void Init(const Standard_Integer nbProps, const Standard_Integer aLineFontPatternCode);
		%feature("autodoc", "1");
		Standard_Integer NbPropertyValues() const;
		%feature("autodoc", "1");
		Standard_Integer LineFontPatternCode() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESGraph_LineFontPredefined {
	Handle_IGESGraph_LineFontPredefined GetHandle() {
	return *(Handle_IGESGraph_LineFontPredefined*) &$self;
	}
};
%extend IGESGraph_LineFontPredefined {
	~IGESGraph_LineFontPredefined() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of IGESGraph_LineFontPredefined\n");}
	}
};

%nodefaultctor IGESGraph_ToolHighLight;
class IGESGraph_ToolHighLight {
	public:
		%feature("autodoc", "1");
		IGESGraph_ToolHighLight();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESGraph_HighLight &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESGraph_HighLight &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESGraph_HighLight &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		Standard_Boolean OwnCorrect(const Handle_IGESGraph_HighLight &ent) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESGraph_HighLight &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESGraph_HighLight &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESGraph_HighLight &entfrom, const Handle_IGESGraph_HighLight &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESGraph_HighLight &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%extend IGESGraph_ToolHighLight {
	~IGESGraph_ToolHighLight() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of IGESGraph_ToolHighLight\n");}
	}
};

%nodefaultctor IGESGraph_ToolLineFontPredefined;
class IGESGraph_ToolLineFontPredefined {
	public:
		%feature("autodoc", "1");
		IGESGraph_ToolLineFontPredefined();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESGraph_LineFontPredefined &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESGraph_LineFontPredefined &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESGraph_LineFontPredefined &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		Standard_Boolean OwnCorrect(const Handle_IGESGraph_LineFontPredefined &ent) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESGraph_LineFontPredefined &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESGraph_LineFontPredefined &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESGraph_LineFontPredefined &entfrom, const Handle_IGESGraph_LineFontPredefined &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESGraph_LineFontPredefined &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%extend IGESGraph_ToolLineFontPredefined {
	~IGESGraph_ToolLineFontPredefined() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of IGESGraph_ToolLineFontPredefined\n");}
	}
};

%nodefaultctor IGESGraph_Array1OfColor;
class IGESGraph_Array1OfColor {
	public:
		%feature("autodoc", "1");
		IGESGraph_Array1OfColor(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		IGESGraph_Array1OfColor(const Handle_IGESGraph_Color &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Handle_IGESGraph_Color &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const IGESGraph_Array1OfColor & Assign(const IGESGraph_Array1OfColor &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_IGESGraph_Color &Value);
		%feature("autodoc", "1");
		const Handle_IGESGraph_Color & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_IGESGraph_Color & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_IGESGraph_Color & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_IGESGraph_Color & operator()(const Standard_Integer Index);

};
%extend IGESGraph_Array1OfColor {
	~IGESGraph_Array1OfColor() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of IGESGraph_Array1OfColor\n");}
	}
};

%nodefaultctor IGESGraph_LineFontDefPattern;
class IGESGraph_LineFontDefPattern : public IGESData_LineFontEntity {
	public:
		%feature("autodoc", "1");
		IGESGraph_LineFontDefPattern();
		%feature("autodoc", "1");
		void Init(const Handle_TColStd_HArray1OfReal &allSegLength, const Handle_TCollection_HAsciiString &aPattern);
		%feature("autodoc", "1");
		Standard_Integer NbSegments() const;
		%feature("autodoc", "1");
		Standard_Real Length(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString DisplayPattern() const;
		%feature("autodoc", "1");
		Standard_Boolean IsVisible(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESGraph_LineFontDefPattern {
	Handle_IGESGraph_LineFontDefPattern GetHandle() {
	return *(Handle_IGESGraph_LineFontDefPattern*) &$self;
	}
};
%extend IGESGraph_LineFontDefPattern {
	~IGESGraph_LineFontDefPattern() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of IGESGraph_LineFontDefPattern\n");}
	}
};

%nodefaultctor IGESGraph_HArray1OfColor;
class IGESGraph_HArray1OfColor : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		IGESGraph_HArray1OfColor(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		IGESGraph_HArray1OfColor(const Standard_Integer Low, const Standard_Integer Up, const Handle_IGESGraph_Color &V);
		%feature("autodoc", "1");
		void Init(const Handle_IGESGraph_Color &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_IGESGraph_Color &Value);
		%feature("autodoc", "1");
		const Handle_IGESGraph_Color & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_IGESGraph_Color & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const IGESGraph_Array1OfColor & Array1() const;
		%feature("autodoc", "1");
		IGESGraph_Array1OfColor & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESGraph_HArray1OfColor {
	Handle_IGESGraph_HArray1OfColor GetHandle() {
	return *(Handle_IGESGraph_HArray1OfColor*) &$self;
	}
};
%extend IGESGraph_HArray1OfColor {
	~IGESGraph_HArray1OfColor() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of IGESGraph_HArray1OfColor\n");}
	}
};

%nodefaultctor IGESGraph_HArray1OfTextFontDef;
class IGESGraph_HArray1OfTextFontDef : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		IGESGraph_HArray1OfTextFontDef(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		IGESGraph_HArray1OfTextFontDef(const Standard_Integer Low, const Standard_Integer Up, const Handle_IGESGraph_TextFontDef &V);
		%feature("autodoc", "1");
		void Init(const Handle_IGESGraph_TextFontDef &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_IGESGraph_TextFontDef &Value);
		%feature("autodoc", "1");
		const Handle_IGESGraph_TextFontDef & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_IGESGraph_TextFontDef & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const IGESGraph_Array1OfTextFontDef & Array1() const;
		%feature("autodoc", "1");
		IGESGraph_Array1OfTextFontDef & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESGraph_HArray1OfTextFontDef {
	Handle_IGESGraph_HArray1OfTextFontDef GetHandle() {
	return *(Handle_IGESGraph_HArray1OfTextFontDef*) &$self;
	}
};
%extend IGESGraph_HArray1OfTextFontDef {
	~IGESGraph_HArray1OfTextFontDef() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of IGESGraph_HArray1OfTextFontDef\n");}
	}
};