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
%module XCAFDoc

%include XCAFDoc_renames.i

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


%include XCAFDoc_dependencies.i


%include XCAFDoc_headers.i


enum XCAFDoc_ColorType {
	XCAFDoc_ColorGen,
	XCAFDoc_ColorSurf,
	XCAFDoc_ColorCurv,
	};



%nodefaultctor Handle_XCAFDoc_DocumentTool;
class Handle_XCAFDoc_DocumentTool : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_XCAFDoc_DocumentTool();
		%feature("autodoc", "1");
		Handle_XCAFDoc_DocumentTool(const Handle_XCAFDoc_DocumentTool &aHandle);
		%feature("autodoc", "1");
		Handle_XCAFDoc_DocumentTool(const XCAFDoc_DocumentTool *anItem);
		%feature("autodoc", "1");
		Handle_XCAFDoc_DocumentTool const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XCAFDoc_DocumentTool {
	XCAFDoc_DocumentTool* GetObject() {
	return (XCAFDoc_DocumentTool*)$self->Access();
	}
};
%extend Handle_XCAFDoc_DocumentTool {
	~Handle_XCAFDoc_DocumentTool() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_XCAFDoc_DocumentTool\n");}
	}
};


%nodefaultctor Handle_XCAFDoc_GraphNode;
class Handle_XCAFDoc_GraphNode : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_XCAFDoc_GraphNode();
		%feature("autodoc", "1");
		Handle_XCAFDoc_GraphNode(const Handle_XCAFDoc_GraphNode &aHandle);
		%feature("autodoc", "1");
		Handle_XCAFDoc_GraphNode(const XCAFDoc_GraphNode *anItem);
		%feature("autodoc", "1");
		Handle_XCAFDoc_GraphNode const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XCAFDoc_GraphNode {
	XCAFDoc_GraphNode* GetObject() {
	return (XCAFDoc_GraphNode*)$self->Access();
	}
};
%extend Handle_XCAFDoc_GraphNode {
	~Handle_XCAFDoc_GraphNode() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_XCAFDoc_GraphNode\n");}
	}
};


%nodefaultctor Handle_XCAFDoc_DimTolTool;
class Handle_XCAFDoc_DimTolTool : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_XCAFDoc_DimTolTool();
		%feature("autodoc", "1");
		Handle_XCAFDoc_DimTolTool(const Handle_XCAFDoc_DimTolTool &aHandle);
		%feature("autodoc", "1");
		Handle_XCAFDoc_DimTolTool(const XCAFDoc_DimTolTool *anItem);
		%feature("autodoc", "1");
		Handle_XCAFDoc_DimTolTool const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XCAFDoc_DimTolTool {
	XCAFDoc_DimTolTool* GetObject() {
	return (XCAFDoc_DimTolTool*)$self->Access();
	}
};
%extend Handle_XCAFDoc_DimTolTool {
	~Handle_XCAFDoc_DimTolTool() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_XCAFDoc_DimTolTool\n");}
	}
};


%nodefaultctor Handle_XCAFDoc_DataMapNodeOfDataMapOfShapeLabel;
class Handle_XCAFDoc_DataMapNodeOfDataMapOfShapeLabel : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_XCAFDoc_DataMapNodeOfDataMapOfShapeLabel();
		%feature("autodoc", "1");
		Handle_XCAFDoc_DataMapNodeOfDataMapOfShapeLabel(const Handle_XCAFDoc_DataMapNodeOfDataMapOfShapeLabel &aHandle);
		%feature("autodoc", "1");
		Handle_XCAFDoc_DataMapNodeOfDataMapOfShapeLabel(const XCAFDoc_DataMapNodeOfDataMapOfShapeLabel *anItem);
		%feature("autodoc", "1");
		Handle_XCAFDoc_DataMapNodeOfDataMapOfShapeLabel const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XCAFDoc_DataMapNodeOfDataMapOfShapeLabel {
	XCAFDoc_DataMapNodeOfDataMapOfShapeLabel* GetObject() {
	return (XCAFDoc_DataMapNodeOfDataMapOfShapeLabel*)$self->Access();
	}
};
%extend Handle_XCAFDoc_DataMapNodeOfDataMapOfShapeLabel {
	~Handle_XCAFDoc_DataMapNodeOfDataMapOfShapeLabel() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_XCAFDoc_DataMapNodeOfDataMapOfShapeLabel\n");}
	}
};


%nodefaultctor Handle_XCAFDoc_Volume;
class Handle_XCAFDoc_Volume : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_XCAFDoc_Volume();
		%feature("autodoc", "1");
		Handle_XCAFDoc_Volume(const Handle_XCAFDoc_Volume &aHandle);
		%feature("autodoc", "1");
		Handle_XCAFDoc_Volume(const XCAFDoc_Volume *anItem);
		%feature("autodoc", "1");
		Handle_XCAFDoc_Volume const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XCAFDoc_Volume {
	XCAFDoc_Volume* GetObject() {
	return (XCAFDoc_Volume*)$self->Access();
	}
};
%extend Handle_XCAFDoc_Volume {
	~Handle_XCAFDoc_Volume() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_XCAFDoc_Volume\n");}
	}
};


%nodefaultctor Handle_XCAFDoc_DimTol;
class Handle_XCAFDoc_DimTol : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_XCAFDoc_DimTol();
		%feature("autodoc", "1");
		Handle_XCAFDoc_DimTol(const Handle_XCAFDoc_DimTol &aHandle);
		%feature("autodoc", "1");
		Handle_XCAFDoc_DimTol(const XCAFDoc_DimTol *anItem);
		%feature("autodoc", "1");
		Handle_XCAFDoc_DimTol const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XCAFDoc_DimTol {
	XCAFDoc_DimTol* GetObject() {
	return (XCAFDoc_DimTol*)$self->Access();
	}
};
%extend Handle_XCAFDoc_DimTol {
	~Handle_XCAFDoc_DimTol() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_XCAFDoc_DimTol\n");}
	}
};


%nodefaultctor Handle_XCAFDoc_Centroid;
class Handle_XCAFDoc_Centroid : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_XCAFDoc_Centroid();
		%feature("autodoc", "1");
		Handle_XCAFDoc_Centroid(const Handle_XCAFDoc_Centroid &aHandle);
		%feature("autodoc", "1");
		Handle_XCAFDoc_Centroid(const XCAFDoc_Centroid *anItem);
		%feature("autodoc", "1");
		Handle_XCAFDoc_Centroid const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XCAFDoc_Centroid {
	XCAFDoc_Centroid* GetObject() {
	return (XCAFDoc_Centroid*)$self->Access();
	}
};
%extend Handle_XCAFDoc_Centroid {
	~Handle_XCAFDoc_Centroid() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_XCAFDoc_Centroid\n");}
	}
};


%nodefaultctor Handle_XCAFDoc_MaterialTool;
class Handle_XCAFDoc_MaterialTool : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_XCAFDoc_MaterialTool();
		%feature("autodoc", "1");
		Handle_XCAFDoc_MaterialTool(const Handle_XCAFDoc_MaterialTool &aHandle);
		%feature("autodoc", "1");
		Handle_XCAFDoc_MaterialTool(const XCAFDoc_MaterialTool *anItem);
		%feature("autodoc", "1");
		Handle_XCAFDoc_MaterialTool const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XCAFDoc_MaterialTool {
	XCAFDoc_MaterialTool* GetObject() {
	return (XCAFDoc_MaterialTool*)$self->Access();
	}
};
%extend Handle_XCAFDoc_MaterialTool {
	~Handle_XCAFDoc_MaterialTool() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_XCAFDoc_MaterialTool\n");}
	}
};


%nodefaultctor Handle_XCAFDoc_SequenceNodeOfGraphNodeSequence;
class Handle_XCAFDoc_SequenceNodeOfGraphNodeSequence : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_XCAFDoc_SequenceNodeOfGraphNodeSequence();
		%feature("autodoc", "1");
		Handle_XCAFDoc_SequenceNodeOfGraphNodeSequence(const Handle_XCAFDoc_SequenceNodeOfGraphNodeSequence &aHandle);
		%feature("autodoc", "1");
		Handle_XCAFDoc_SequenceNodeOfGraphNodeSequence(const XCAFDoc_SequenceNodeOfGraphNodeSequence *anItem);
		%feature("autodoc", "1");
		Handle_XCAFDoc_SequenceNodeOfGraphNodeSequence const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XCAFDoc_SequenceNodeOfGraphNodeSequence {
	XCAFDoc_SequenceNodeOfGraphNodeSequence* GetObject() {
	return (XCAFDoc_SequenceNodeOfGraphNodeSequence*)$self->Access();
	}
};
%extend Handle_XCAFDoc_SequenceNodeOfGraphNodeSequence {
	~Handle_XCAFDoc_SequenceNodeOfGraphNodeSequence() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_XCAFDoc_SequenceNodeOfGraphNodeSequence\n");}
	}
};


%nodefaultctor Handle_XCAFDoc_Area;
class Handle_XCAFDoc_Area : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_XCAFDoc_Area();
		%feature("autodoc", "1");
		Handle_XCAFDoc_Area(const Handle_XCAFDoc_Area &aHandle);
		%feature("autodoc", "1");
		Handle_XCAFDoc_Area(const XCAFDoc_Area *anItem);
		%feature("autodoc", "1");
		Handle_XCAFDoc_Area const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XCAFDoc_Area {
	XCAFDoc_Area* GetObject() {
	return (XCAFDoc_Area*)$self->Access();
	}
};
%extend Handle_XCAFDoc_Area {
	~Handle_XCAFDoc_Area() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_XCAFDoc_Area\n");}
	}
};


%nodefaultctor Handle_XCAFDoc_Color;
class Handle_XCAFDoc_Color : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_XCAFDoc_Color();
		%feature("autodoc", "1");
		Handle_XCAFDoc_Color(const Handle_XCAFDoc_Color &aHandle);
		%feature("autodoc", "1");
		Handle_XCAFDoc_Color(const XCAFDoc_Color *anItem);
		%feature("autodoc", "1");
		Handle_XCAFDoc_Color const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XCAFDoc_Color {
	XCAFDoc_Color* GetObject() {
	return (XCAFDoc_Color*)$self->Access();
	}
};
%extend Handle_XCAFDoc_Color {
	~Handle_XCAFDoc_Color() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_XCAFDoc_Color\n");}
	}
};


%nodefaultctor Handle_XCAFDoc_ColorTool;
class Handle_XCAFDoc_ColorTool : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_XCAFDoc_ColorTool();
		%feature("autodoc", "1");
		Handle_XCAFDoc_ColorTool(const Handle_XCAFDoc_ColorTool &aHandle);
		%feature("autodoc", "1");
		Handle_XCAFDoc_ColorTool(const XCAFDoc_ColorTool *anItem);
		%feature("autodoc", "1");
		Handle_XCAFDoc_ColorTool const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XCAFDoc_ColorTool {
	XCAFDoc_ColorTool* GetObject() {
	return (XCAFDoc_ColorTool*)$self->Access();
	}
};
%extend Handle_XCAFDoc_ColorTool {
	~Handle_XCAFDoc_ColorTool() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_XCAFDoc_ColorTool\n");}
	}
};


%nodefaultctor Handle_XCAFDoc_Material;
class Handle_XCAFDoc_Material : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_XCAFDoc_Material();
		%feature("autodoc", "1");
		Handle_XCAFDoc_Material(const Handle_XCAFDoc_Material &aHandle);
		%feature("autodoc", "1");
		Handle_XCAFDoc_Material(const XCAFDoc_Material *anItem);
		%feature("autodoc", "1");
		Handle_XCAFDoc_Material const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XCAFDoc_Material {
	XCAFDoc_Material* GetObject() {
	return (XCAFDoc_Material*)$self->Access();
	}
};
%extend Handle_XCAFDoc_Material {
	~Handle_XCAFDoc_Material() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_XCAFDoc_Material\n");}
	}
};


%nodefaultctor Handle_XCAFDoc_LayerTool;
class Handle_XCAFDoc_LayerTool : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_XCAFDoc_LayerTool();
		%feature("autodoc", "1");
		Handle_XCAFDoc_LayerTool(const Handle_XCAFDoc_LayerTool &aHandle);
		%feature("autodoc", "1");
		Handle_XCAFDoc_LayerTool(const XCAFDoc_LayerTool *anItem);
		%feature("autodoc", "1");
		Handle_XCAFDoc_LayerTool const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XCAFDoc_LayerTool {
	XCAFDoc_LayerTool* GetObject() {
	return (XCAFDoc_LayerTool*)$self->Access();
	}
};
%extend Handle_XCAFDoc_LayerTool {
	~Handle_XCAFDoc_LayerTool() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_XCAFDoc_LayerTool\n");}
	}
};


%nodefaultctor Handle_XCAFDoc_Location;
class Handle_XCAFDoc_Location : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_XCAFDoc_Location();
		%feature("autodoc", "1");
		Handle_XCAFDoc_Location(const Handle_XCAFDoc_Location &aHandle);
		%feature("autodoc", "1");
		Handle_XCAFDoc_Location(const XCAFDoc_Location *anItem);
		%feature("autodoc", "1");
		Handle_XCAFDoc_Location const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XCAFDoc_Location {
	XCAFDoc_Location* GetObject() {
	return (XCAFDoc_Location*)$self->Access();
	}
};
%extend Handle_XCAFDoc_Location {
	~Handle_XCAFDoc_Location() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_XCAFDoc_Location\n");}
	}
};


%nodefaultctor Handle_XCAFDoc_ShapeTool;
class Handle_XCAFDoc_ShapeTool : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_XCAFDoc_ShapeTool();
		%feature("autodoc", "1");
		Handle_XCAFDoc_ShapeTool(const Handle_XCAFDoc_ShapeTool &aHandle);
		%feature("autodoc", "1");
		Handle_XCAFDoc_ShapeTool(const XCAFDoc_ShapeTool *anItem);
		%feature("autodoc", "1");
		Handle_XCAFDoc_ShapeTool const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XCAFDoc_ShapeTool {
	XCAFDoc_ShapeTool* GetObject() {
	return (XCAFDoc_ShapeTool*)$self->Access();
	}
};
%extend Handle_XCAFDoc_ShapeTool {
	~Handle_XCAFDoc_ShapeTool() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_XCAFDoc_ShapeTool\n");}
	}
};


%nodefaultctor Handle_XCAFDoc_Datum;
class Handle_XCAFDoc_Datum : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_XCAFDoc_Datum();
		%feature("autodoc", "1");
		Handle_XCAFDoc_Datum(const Handle_XCAFDoc_Datum &aHandle);
		%feature("autodoc", "1");
		Handle_XCAFDoc_Datum(const XCAFDoc_Datum *anItem);
		%feature("autodoc", "1");
		Handle_XCAFDoc_Datum const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XCAFDoc_Datum {
	XCAFDoc_Datum* GetObject() {
	return (XCAFDoc_Datum*)$self->Access();
	}
};
%extend Handle_XCAFDoc_Datum {
	~Handle_XCAFDoc_Datum() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_XCAFDoc_Datum\n");}
	}
};


%nodefaultctor Handle_XCAFDoc_ShapeMapTool;
class Handle_XCAFDoc_ShapeMapTool : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_XCAFDoc_ShapeMapTool();
		%feature("autodoc", "1");
		Handle_XCAFDoc_ShapeMapTool(const Handle_XCAFDoc_ShapeMapTool &aHandle);
		%feature("autodoc", "1");
		Handle_XCAFDoc_ShapeMapTool(const XCAFDoc_ShapeMapTool *anItem);
		%feature("autodoc", "1");
		Handle_XCAFDoc_ShapeMapTool const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XCAFDoc_ShapeMapTool {
	XCAFDoc_ShapeMapTool* GetObject() {
	return (XCAFDoc_ShapeMapTool*)$self->Access();
	}
};
%extend Handle_XCAFDoc_ShapeMapTool {
	~Handle_XCAFDoc_ShapeMapTool() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_XCAFDoc_ShapeMapTool\n");}
	}
};


%nodefaultctor XCAFDoc_DocumentTool;
class XCAFDoc_DocumentTool : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		Handle_XCAFDoc_DocumentTool Set(const TDF_Label &L, const Standard_Boolean IsAcces=1);
		%feature("autodoc", "1");
		Standard_Boolean IsXCAFDocument(const Handle_TDocStd_Document &Doc);
		%feature("autodoc", "1");
		TDF_Label DocLabel(const TDF_Label &acces);
		%feature("autodoc", "1");
		TDF_Label ShapesLabel(const TDF_Label &acces);
		%feature("autodoc", "1");
		TDF_Label ColorsLabel(const TDF_Label &acces);
		%feature("autodoc", "1");
		TDF_Label LayersLabel(const TDF_Label &acces);
		%feature("autodoc", "1");
		TDF_Label DGTsLabel(const TDF_Label &acces);
		%feature("autodoc", "1");
		TDF_Label MaterialsLabel(const TDF_Label &acces);
		%feature("autodoc", "1");
		Handle_XCAFDoc_ShapeTool ShapeTool(const TDF_Label &acces);
		%feature("autodoc", "1");
		Handle_XCAFDoc_ColorTool ColorTool(const TDF_Label &acces);
		%feature("autodoc", "1");
		Handle_XCAFDoc_LayerTool LayerTool(const TDF_Label &acces);
		%feature("autodoc", "1");
		Handle_XCAFDoc_DimTolTool DimTolTool(const TDF_Label &acces);
		%feature("autodoc", "1");
		Handle_XCAFDoc_MaterialTool MaterialTool(const TDF_Label &acces);
		%feature("autodoc", "1");
		XCAFDoc_DocumentTool();
		%feature("autodoc", "1");
		void Init() const;
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &with);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &into, const Handle_TDF_RelocationTable &RT) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XCAFDoc_DocumentTool {
	Handle_XCAFDoc_DocumentTool GetHandle() {
	return *(Handle_XCAFDoc_DocumentTool*) &$self;
	}
};
%extend XCAFDoc_DocumentTool {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend XCAFDoc_DocumentTool {
	~XCAFDoc_DocumentTool() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of XCAFDoc_DocumentTool\n");}
	}
};


%nodefaultctor XCAFDoc;
class XCAFDoc {
	public:
		%feature("autodoc", "1");
		XCAFDoc();
		%feature("autodoc", "1");
		Standard_GUID AssemblyGUID();
		%feature("autodoc", "1");
		Standard_GUID ShapeRefGUID();
		%feature("autodoc", "1");
		Standard_GUID ColorRefGUID(const XCAFDoc_ColorType type);
		%feature("autodoc", "1");
		Standard_GUID DimTolRefGUID();
		%feature("autodoc", "1");
		Standard_GUID DatumRefGUID();
		%feature("autodoc", "1");
		Standard_GUID DatumTolRefGUID();
		%feature("autodoc", "1");
		Standard_GUID LayerRefGUID();
		%feature("autodoc", "1");
		Standard_GUID MaterialRefGUID();
		%feature("autodoc", "1");
		Standard_GUID InvisibleGUID();
		%feature("autodoc", "1");
		Standard_GUID ExternRefGUID();
		%feature("autodoc", "1");
		Standard_GUID SHUORefGUID();

};
%extend XCAFDoc {
	~XCAFDoc() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of XCAFDoc\n");}
	}
};


%nodefaultctor XCAFDoc_DataMapOfShapeLabel;
class XCAFDoc_DataMapOfShapeLabel : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		XCAFDoc_DataMapOfShapeLabel(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		XCAFDoc_DataMapOfShapeLabel & Assign(const XCAFDoc_DataMapOfShapeLabel &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TopoDS_Shape &K, const TDF_Label &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TopoDS_Shape &K);
		%feature("autodoc", "1");
		const TDF_Label & Find(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		const TDF_Label & operator()(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		TDF_Label & ChangeFind(const TopoDS_Shape &K);
		%feature("autodoc", "1");
		TDF_Label & operator()(const TopoDS_Shape &K);

};
%extend XCAFDoc_DataMapOfShapeLabel {
	~XCAFDoc_DataMapOfShapeLabel() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of XCAFDoc_DataMapOfShapeLabel\n");}
	}
};


%nodefaultctor XCAFDoc_Volume;
class XCAFDoc_Volume : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		XCAFDoc_Volume();
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		void Set(const Standard_Real vol);
		%feature("autodoc", "1");
		Handle_XCAFDoc_Volume Set(const TDF_Label &label, const Standard_Real vol);
		%feature("autodoc", "1");
		Standard_Real Get() const;
		%feature("autodoc", "1");
		Standard_Boolean Get(const TDF_Label &label, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &With);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Into, const Handle_TDF_RelocationTable &RT) const;
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XCAFDoc_Volume {
	Handle_XCAFDoc_Volume GetHandle() {
	return *(Handle_XCAFDoc_Volume*) &$self;
	}
};
%extend XCAFDoc_Volume {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend XCAFDoc_Volume {
	~XCAFDoc_Volume() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of XCAFDoc_Volume\n");}
	}
};


%nodefaultctor XCAFDoc_DimTol;
class XCAFDoc_DimTol : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		XCAFDoc_DimTol();
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		Handle_XCAFDoc_DimTol Set(const TDF_Label &label, const Standard_Integer kind, const Handle_TColStd_HArray1OfReal &aVal, const Handle_TCollection_HAsciiString &aName, const Handle_TCollection_HAsciiString &aDescription);
		%feature("autodoc", "1");
		void Set(const Standard_Integer kind, const Handle_TColStd_HArray1OfReal &aVal, const Handle_TCollection_HAsciiString &aName, const Handle_TCollection_HAsciiString &aDescription);
		%feature("autodoc", "1");
		Standard_Integer GetKind() const;
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal GetVal() const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString GetName() const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString GetDescription() const;
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &With);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Into, const Handle_TDF_RelocationTable &RT) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XCAFDoc_DimTol {
	Handle_XCAFDoc_DimTol GetHandle() {
	return *(Handle_XCAFDoc_DimTol*) &$self;
	}
};
%extend XCAFDoc_DimTol {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend XCAFDoc_DimTol {
	~XCAFDoc_DimTol() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of XCAFDoc_DimTol\n");}
	}
};


%nodefaultctor XCAFDoc_Area;
class XCAFDoc_Area : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		XCAFDoc_Area();
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		void Set(const Standard_Real vol);
		%feature("autodoc", "1");
		Handle_XCAFDoc_Area Set(const TDF_Label &label, const Standard_Real area);
		%feature("autodoc", "1");
		Standard_Real Get() const;
		%feature("autodoc", "1");
		Standard_Boolean Get(const TDF_Label &label, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &With);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Into, const Handle_TDF_RelocationTable &RT) const;
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XCAFDoc_Area {
	Handle_XCAFDoc_Area GetHandle() {
	return *(Handle_XCAFDoc_Area*) &$self;
	}
};
%extend XCAFDoc_Area {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend XCAFDoc_Area {
	~XCAFDoc_Area() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of XCAFDoc_Area\n");}
	}
};


%nodefaultctor XCAFDoc_LayerTool;
class XCAFDoc_LayerTool : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		XCAFDoc_LayerTool();
		%feature("autodoc", "1");
		Handle_XCAFDoc_LayerTool Set(const TDF_Label &L);
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		TDF_Label BaseLabel() const;
		%feature("autodoc", "1");
		const Handle_XCAFDoc_ShapeTool & ShapeTool();
		%feature("autodoc", "1");
		Standard_Boolean IsLayer(const TDF_Label &lab) const;
		%feature("autodoc", "1");
		Standard_Boolean GetLayer(const TDF_Label &lab, TCollection_ExtendedString & aLayer) const;
		%feature("autodoc", "1");
		Standard_Boolean FindLayer(const TCollection_ExtendedString &aLayer, TDF_Label & lab) const;
		%feature("autodoc", "1");
		TDF_Label FindLayer(const TCollection_ExtendedString &aLayer) const;
		%feature("autodoc", "1");
		TDF_Label AddLayer(const TCollection_ExtendedString &aLayer) const;
		%feature("autodoc", "1");
		void RemoveLayer(const TDF_Label &lab) const;
		%feature("autodoc", "1");
		void GetLayerLabels(TDF_LabelSequence & Labels) const;
		%feature("autodoc", "1");
		void SetLayer(const TDF_Label &L, const TDF_Label &LayerL, const Standard_Boolean shapeInOneLayer=0) const;
		%feature("autodoc", "1");
		void SetLayer(const TDF_Label &L, const TCollection_ExtendedString &aLayer, const Standard_Boolean shapeInOneLayer=0) const;
		%feature("autodoc", "1");
		void UnSetLayers(const TDF_Label &L) const;
		%feature("autodoc", "1");
		Standard_Boolean UnSetOneLayer(const TDF_Label &L, const TCollection_ExtendedString &aLayer) const;
		%feature("autodoc", "1");
		Standard_Boolean IsSet(const TDF_Label &L, const TCollection_ExtendedString &aLayer) const;
		%feature("autodoc", "1");
		Standard_Boolean GetLayers(const TDF_Label &L, Handle_TColStd_HSequenceOfExtendedString & aLayerS);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfExtendedString GetLayers(const TDF_Label &L);
		%feature("autodoc", "1");
		void GetShapesOfLayer(const TDF_Label &layerL, TDF_LabelSequence & ShLabels) const;
		%feature("autodoc", "1");
		Standard_Boolean IsVisible(const TDF_Label &layerL) const;
		%feature("autodoc", "1");
		void SetVisibility(const TDF_Label &layerL, const Standard_Boolean isvisible=1) const;
		%feature("autodoc", "1");
		Standard_Boolean SetLayer(const TopoDS_Shape &Sh, const TDF_Label &LayerL, const Standard_Boolean shapeInOneLayer=0);
		%feature("autodoc", "1");
		Standard_Boolean SetLayer(const TopoDS_Shape &Sh, const TCollection_ExtendedString &aLayer, const Standard_Boolean shapeInOneLayer=0);
		%feature("autodoc", "1");
		Standard_Boolean UnSetLayers(const TopoDS_Shape &Sh);
		%feature("autodoc", "1");
		Standard_Boolean UnSetOneLayer(const TopoDS_Shape &Sh, const TCollection_ExtendedString &aLayer);
		%feature("autodoc", "1");
		Standard_Boolean IsSet(const TopoDS_Shape &Sh, const TCollection_ExtendedString &aLayer);
		%feature("autodoc", "1");
		Standard_Boolean GetLayers(const TopoDS_Shape &Sh, Handle_TColStd_HSequenceOfExtendedString & aLayerS);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfExtendedString GetLayers(const TopoDS_Shape &Sh);
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &with);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &into, const Handle_TDF_RelocationTable &RT) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XCAFDoc_LayerTool {
	Handle_XCAFDoc_LayerTool GetHandle() {
	return *(Handle_XCAFDoc_LayerTool*) &$self;
	}
};
%extend XCAFDoc_LayerTool {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend XCAFDoc_LayerTool {
	~XCAFDoc_LayerTool() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of XCAFDoc_LayerTool\n");}
	}
};


%nodefaultctor XCAFDoc_SequenceNodeOfGraphNodeSequence;
class XCAFDoc_SequenceNodeOfGraphNodeSequence : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		XCAFDoc_SequenceNodeOfGraphNodeSequence(const Handle_XCAFDoc_GraphNode &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_XCAFDoc_GraphNode & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XCAFDoc_SequenceNodeOfGraphNodeSequence {
	Handle_XCAFDoc_SequenceNodeOfGraphNodeSequence GetHandle() {
	return *(Handle_XCAFDoc_SequenceNodeOfGraphNodeSequence*) &$self;
	}
};
%extend XCAFDoc_SequenceNodeOfGraphNodeSequence {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend XCAFDoc_SequenceNodeOfGraphNodeSequence {
	~XCAFDoc_SequenceNodeOfGraphNodeSequence() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of XCAFDoc_SequenceNodeOfGraphNodeSequence\n");}
	}
};


%nodefaultctor XCAFDoc_ShapeTool;
class XCAFDoc_ShapeTool : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		Handle_XCAFDoc_ShapeTool Set(const TDF_Label &L);
		%feature("autodoc", "1");
		XCAFDoc_ShapeTool();
		%feature("autodoc", "1");
		Standard_Boolean IsTopLevel(const TDF_Label &L) const;
		%feature("autodoc", "1");
		Standard_Boolean IsFree(const TDF_Label &L);
		%feature("autodoc", "1");
		Standard_Boolean IsShape(const TDF_Label &L);
		%feature("autodoc", "1");
		Standard_Boolean IsSimpleShape(const TDF_Label &L);
		%feature("autodoc", "1");
		Standard_Boolean IsReference(const TDF_Label &L);
		%feature("autodoc", "1");
		Standard_Boolean IsAssembly(const TDF_Label &L);
		%feature("autodoc", "1");
		Standard_Boolean IsComponent(const TDF_Label &L);
		%feature("autodoc", "1");
		Standard_Boolean IsCompound(const TDF_Label &L);
		%feature("autodoc", "1");
		Standard_Boolean IsSubShape(const TDF_Label &L);
		%feature("autodoc", "1");
		Standard_Boolean IsSubShape(const TDF_Label &shapeL, const TopoDS_Shape &sub) const;
		%feature("autodoc", "1");
		Standard_Boolean SearchUsingMap(const TopoDS_Shape &S, TDF_Label & L, const Standard_Boolean findWithoutLoc, const Standard_Boolean findSubshape) const;
		%feature("autodoc", "1");
		Standard_Boolean Search(const TopoDS_Shape &S, TDF_Label & L, const Standard_Boolean findInstance=1, const Standard_Boolean findComponent=1, const Standard_Boolean findSubshape=1) const;
		%feature("autodoc", "1");
		Standard_Boolean FindShape(const TopoDS_Shape &S, TDF_Label & L, const Standard_Boolean findInstance=0) const;
		%feature("autodoc", "1");
		TDF_Label FindShape(const TopoDS_Shape &S, const Standard_Boolean findInstance=0) const;
		%feature("autodoc", "1");
		Standard_Boolean GetShape(const TDF_Label &L, TopoDS_Shape & S);
		%feature("autodoc", "1");
		TopoDS_Shape GetShape(const TDF_Label &L);
		%feature("autodoc", "1");
		TDF_Label NewShape() const;
		%feature("autodoc", "1");
		void SetShape(const TDF_Label &L, const TopoDS_Shape &S);
		%feature("autodoc", "1");
		TDF_Label AddShape(const TopoDS_Shape &S, const Standard_Boolean makeAssembly=1, const Standard_Boolean makePrepare=1);
		%feature("autodoc", "1");
		Standard_Boolean RemoveShape(const TDF_Label &L) const;
		%feature("autodoc", "1");
		void Init();
		%feature("autodoc", "1");
		void ComputeShapes(const TDF_Label &L);
		%feature("autodoc", "1");
		void ComputeSimpleShapes();
		%feature("autodoc", "1");
		void GetShapes(TDF_LabelSequence & Labels) const;
		%feature("autodoc", "1");
		void GetFreeShapes(TDF_LabelSequence & FreeLabels) const;
		%feature("autodoc", "1");
		Standard_Integer GetUsers(const TDF_Label &L, TDF_LabelSequence & Labels, const Standard_Boolean getsubchilds=0);
		%feature("autodoc", "1");
		TopLoc_Location GetLocation(const TDF_Label &L);
		%feature("autodoc", "1");
		Standard_Boolean GetReferredShape(const TDF_Label &L, TDF_Label & Label);
		%feature("autodoc", "1");
		Standard_Integer NbComponents(const TDF_Label &L, const Standard_Boolean getsubchilds=0);
		%feature("autodoc", "1");
		Standard_Boolean GetComponents(const TDF_Label &L, TDF_LabelSequence & Labels, const Standard_Boolean getsubchilds=0);
		%feature("autodoc", "1");
		TDF_Label AddComponent(const TDF_Label &assembly, const TDF_Label &comp, const TopLoc_Location &Loc) const;
		%feature("autodoc", "1");
		TDF_Label AddComponent(const TDF_Label &assembly, const TopoDS_Shape &comp, const Standard_Boolean expand=0);
		%feature("autodoc", "1");
		void RemoveComponent(const TDF_Label &comp) const;
		%feature("autodoc", "1");
		void UpdateAssembly(const TDF_Label &L) const;
		%feature("autodoc", "1");
		Standard_Boolean FindSubShape(const TDF_Label &shapeL, const TopoDS_Shape &sub, TDF_Label & L) const;
		%feature("autodoc", "1");
		TDF_Label AddSubShape(const TDF_Label &shapeL, const TopoDS_Shape &sub) const;
		%feature("autodoc", "1");
		TDF_Label FindMainShapeUsingMap(const TopoDS_Shape &sub) const;
		%feature("autodoc", "1");
		TDF_Label FindMainShape(const TopoDS_Shape &sub) const;
		%feature("autodoc", "1");
		Standard_Boolean GetSubShapes(const TDF_Label &L, TDF_LabelSequence & Labels);
		%feature("autodoc", "1");
		TDF_Label BaseLabel() const;
		%feature("autodoc", "1");
		void Dump(const Standard_Boolean deep=0) const;
		%feature("autodoc", "1");
		void DumpShape(const TDF_Label &L, const Standard_Integer level=0, const Standard_Boolean deep=0);
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &with);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &into, const Handle_TDF_RelocationTable &RT) const;
		%feature("autodoc", "1");
		Standard_Boolean IsExternRef(const TDF_Label &L);
		%feature("autodoc", "1");
		TDF_Label SetExternRefs(const TColStd_SequenceOfHAsciiString &SHAS) const;
		%feature("autodoc", "1");
		void SetExternRefs(const TDF_Label &L, const TColStd_SequenceOfHAsciiString &SHAS) const;
		%feature("autodoc", "1");
		void GetExternRefs(const TDF_Label &L, TColStd_SequenceOfHAsciiString & SHAS);
		%feature("autodoc", "1");
		Standard_Boolean SetSHUO(const TDF_LabelSequence &Labels, Handle_XCAFDoc_GraphNode & MainSHUOAttr) const;
		%feature("autodoc", "1");
		Standard_Boolean GetSHUO(const TDF_Label &SHUOLabel, Handle_XCAFDoc_GraphNode & aSHUOAttr);
		%feature("autodoc", "1");
		Standard_Boolean GetAllComponentSHUO(const TDF_Label &CompLabel, TDF_AttributeSequence & SHUOAttrs);
		%feature("autodoc", "1");
		Standard_Boolean GetSHUOUpperUsage(const TDF_Label &NextUsageL, TDF_LabelSequence & Labels);
		%feature("autodoc", "1");
		Standard_Boolean GetSHUONextUsage(const TDF_Label &UpperUsageL, TDF_LabelSequence & Labels);
		%feature("autodoc", "1");
		Standard_Boolean RemoveSHUO(const TDF_Label &SHUOLabel) const;
		%feature("autodoc", "1");
		Standard_Boolean FindComponent(const TopoDS_Shape &theShape, TDF_LabelSequence & Labels) const;
		%feature("autodoc", "1");
		TopoDS_Shape GetSHUOInstance(const Handle_XCAFDoc_GraphNode &theSHUO) const;
		%feature("autodoc", "1");
		Handle_XCAFDoc_GraphNode SetInstanceSHUO(const TopoDS_Shape &theShape) const;
		%feature("autodoc", "1");
		Standard_Boolean GetAllSHUOInstances(const Handle_XCAFDoc_GraphNode &theSHUO, TopTools_SequenceOfShape & theSHUOShapeSeq) const;
		%feature("autodoc", "1");
		Standard_Boolean FindSHUO(const TDF_LabelSequence &Labels, Handle_XCAFDoc_GraphNode & theSHUOAttr);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XCAFDoc_ShapeTool {
	Handle_XCAFDoc_ShapeTool GetHandle() {
	return *(Handle_XCAFDoc_ShapeTool*) &$self;
	}
};
%extend XCAFDoc_ShapeTool {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend XCAFDoc_ShapeTool {
	~XCAFDoc_ShapeTool() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of XCAFDoc_ShapeTool\n");}
	}
};


%nodefaultctor XCAFDoc_GraphNodeSequence;
class XCAFDoc_GraphNodeSequence : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		XCAFDoc_GraphNodeSequence();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const XCAFDoc_GraphNodeSequence & Assign(const XCAFDoc_GraphNodeSequence &Other);
		%feature("autodoc", "1");
		void Append(const Handle_XCAFDoc_GraphNode &T);
		%feature("autodoc", "1");
		void Append(XCAFDoc_GraphNodeSequence & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_XCAFDoc_GraphNode &T);
		%feature("autodoc", "1");
		void Prepend(XCAFDoc_GraphNodeSequence & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_XCAFDoc_GraphNode &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, XCAFDoc_GraphNodeSequence & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_XCAFDoc_GraphNode &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, XCAFDoc_GraphNodeSequence & S);
		%feature("autodoc", "1");
		const Handle_XCAFDoc_GraphNode & First() const;
		%feature("autodoc", "1");
		const Handle_XCAFDoc_GraphNode & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, XCAFDoc_GraphNodeSequence & S);
		%feature("autodoc", "1");
		const Handle_XCAFDoc_GraphNode & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_XCAFDoc_GraphNode & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_XCAFDoc_GraphNode &I);
		%feature("autodoc", "1");
		Handle_XCAFDoc_GraphNode & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_XCAFDoc_GraphNode & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%extend XCAFDoc_GraphNodeSequence {
	~XCAFDoc_GraphNodeSequence() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of XCAFDoc_GraphNodeSequence\n");}
	}
};


%nodefaultctor XCAFDoc_Datum;
class XCAFDoc_Datum : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		XCAFDoc_Datum();
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		Handle_XCAFDoc_Datum Set(const TDF_Label &label, const Handle_TCollection_HAsciiString &aName, const Handle_TCollection_HAsciiString &aDescription, const Handle_TCollection_HAsciiString &anIdentification);
		%feature("autodoc", "1");
		void Set(const Handle_TCollection_HAsciiString &aName, const Handle_TCollection_HAsciiString &aDescription, const Handle_TCollection_HAsciiString &anIdentification);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString GetName() const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString GetDescription() const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString GetIdentification() const;
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &With);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Into, const Handle_TDF_RelocationTable &RT) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XCAFDoc_Datum {
	Handle_XCAFDoc_Datum GetHandle() {
	return *(Handle_XCAFDoc_Datum*) &$self;
	}
};
%extend XCAFDoc_Datum {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend XCAFDoc_Datum {
	~XCAFDoc_Datum() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of XCAFDoc_Datum\n");}
	}
};


%nodefaultctor XCAFDoc_DataMapIteratorOfDataMapOfShapeLabel;
class XCAFDoc_DataMapIteratorOfDataMapOfShapeLabel : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		XCAFDoc_DataMapIteratorOfDataMapOfShapeLabel();
		%feature("autodoc", "1");
		XCAFDoc_DataMapIteratorOfDataMapOfShapeLabel(const XCAFDoc_DataMapOfShapeLabel &aMap);
		%feature("autodoc", "1");
		void Initialize(const XCAFDoc_DataMapOfShapeLabel &aMap);
		%feature("autodoc", "1");
		const TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		const TDF_Label & Value() const;

};
%extend XCAFDoc_DataMapIteratorOfDataMapOfShapeLabel {
	~XCAFDoc_DataMapIteratorOfDataMapOfShapeLabel() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of XCAFDoc_DataMapIteratorOfDataMapOfShapeLabel\n");}
	}
};


%nodefaultctor XCAFDoc_GraphNode;
class XCAFDoc_GraphNode : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Standard_Boolean Find(const TDF_Label &L, Handle_XCAFDoc_GraphNode & G);
		%feature("autodoc", "1");
		Handle_XCAFDoc_GraphNode Set(const TDF_Label &L);
		%feature("autodoc", "1");
		Handle_XCAFDoc_GraphNode Set(const TDF_Label &L, const Standard_GUID &ExplicitGraphID);
		%feature("autodoc", "1");
		const Standard_GUID & GetDefaultGraphID();
		%feature("autodoc", "1");
		XCAFDoc_GraphNode();
		%feature("autodoc", "1");
		void SetGraphID(const Standard_GUID &explicitID);
		%feature("autodoc", "1");
		Standard_Integer SetFather(const Handle_XCAFDoc_GraphNode &F);
		%feature("autodoc", "1");
		Standard_Integer SetChild(const Handle_XCAFDoc_GraphNode &Ch);
		%feature("autodoc", "1");
		void UnSetFather(const Handle_XCAFDoc_GraphNode &F);
		%feature("autodoc", "1");
		void UnSetFather(const Standard_Integer Findex);
		%feature("autodoc", "1");
		void UnSetChild(const Handle_XCAFDoc_GraphNode &Ch);
		%feature("autodoc", "1");
		void UnSetChild(const Standard_Integer Chindex);
		%feature("autodoc", "1");
		Handle_XCAFDoc_GraphNode GetFather(const Standard_Integer Findex) const;
		%feature("autodoc", "1");
		Handle_XCAFDoc_GraphNode GetChild(const Standard_Integer Chindex) const;
		%feature("autodoc", "1");
		Standard_Integer FatherIndex(const Handle_XCAFDoc_GraphNode &F) const;
		%feature("autodoc", "1");
		Standard_Integer ChildIndex(const Handle_XCAFDoc_GraphNode &Ch) const;
		%feature("autodoc", "1");
		Standard_Boolean IsFather(const Handle_XCAFDoc_GraphNode &Ch) const;
		%feature("autodoc", "1");
		Standard_Boolean IsChild(const Handle_XCAFDoc_GraphNode &F) const;
		%feature("autodoc", "1");
		Standard_Integer NbFathers() const;
		%feature("autodoc", "1");
		Standard_Integer NbChildren() const;
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &with);
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &into, const Handle_TDF_RelocationTable &RT) const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void References(const Handle_TDF_DataSet &aDataSet) const;
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		virtual		void BeforeForget();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XCAFDoc_GraphNode {
	Handle_XCAFDoc_GraphNode GetHandle() {
	return *(Handle_XCAFDoc_GraphNode*) &$self;
	}
};
%extend XCAFDoc_GraphNode {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend XCAFDoc_GraphNode {
	~XCAFDoc_GraphNode() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of XCAFDoc_GraphNode\n");}
	}
};


%nodefaultctor XCAFDoc_Centroid;
class XCAFDoc_Centroid : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		XCAFDoc_Centroid();
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		Handle_XCAFDoc_Centroid Set(const TDF_Label &label, const gp_Pnt &pnt);
		%feature("autodoc", "1");
		void Set(const gp_Pnt &pnt);
		%feature("autodoc", "1");
		gp_Pnt Get() const;
		%feature("autodoc", "1");
		Standard_Boolean Get(const TDF_Label &label, gp_Pnt & pnt);
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &With);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Into, const Handle_TDF_RelocationTable &RT) const;
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XCAFDoc_Centroid {
	Handle_XCAFDoc_Centroid GetHandle() {
	return *(Handle_XCAFDoc_Centroid*) &$self;
	}
};
%extend XCAFDoc_Centroid {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend XCAFDoc_Centroid {
	~XCAFDoc_Centroid() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of XCAFDoc_Centroid\n");}
	}
};


%nodefaultctor XCAFDoc_Color;
class XCAFDoc_Color : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		XCAFDoc_Color();
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		Handle_XCAFDoc_Color Set(const TDF_Label &label, const Quantity_Color &C);
		%feature("autodoc", "1");
		Handle_XCAFDoc_Color Set(const TDF_Label &label, const Quantity_NameOfColor C);
		%feature("autodoc", "1");
		Handle_XCAFDoc_Color Set(const TDF_Label &label, const Standard_Real R, const Standard_Real G, const Standard_Real B);
		%feature("autodoc", "1");
		void Set(const Quantity_Color &C);
		%feature("autodoc", "1");
		void Set(const Quantity_NameOfColor C);
		%feature("autodoc", "1");
		void Set(const Standard_Real R, const Standard_Real G, const Standard_Real B);
		%feature("autodoc", "1");
		Quantity_Color GetColor() const;
		%feature("autodoc", "1");
		Quantity_NameOfColor GetNOC() const;
		%feature("autodoc", "1");
		void GetRGB(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &With);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Into, const Handle_TDF_RelocationTable &RT) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XCAFDoc_Color {
	Handle_XCAFDoc_Color GetHandle() {
	return *(Handle_XCAFDoc_Color*) &$self;
	}
};
%extend XCAFDoc_Color {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend XCAFDoc_Color {
	~XCAFDoc_Color() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of XCAFDoc_Color\n");}
	}
};


%nodefaultctor XCAFDoc_Location;
class XCAFDoc_Location : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		XCAFDoc_Location();
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		Handle_XCAFDoc_Location Set(const TDF_Label &label, const TopLoc_Location &Loc);
		%feature("autodoc", "1");
		void Set(const TopLoc_Location &Loc);
		%feature("autodoc", "1");
		TopLoc_Location Get() const;
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &With);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Into, const Handle_TDF_RelocationTable &RT) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XCAFDoc_Location {
	Handle_XCAFDoc_Location GetHandle() {
	return *(Handle_XCAFDoc_Location*) &$self;
	}
};
%extend XCAFDoc_Location {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend XCAFDoc_Location {
	~XCAFDoc_Location() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of XCAFDoc_Location\n");}
	}
};


%nodefaultctor XCAFDoc_MaterialTool;
class XCAFDoc_MaterialTool : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		XCAFDoc_MaterialTool();
		%feature("autodoc", "1");
		Handle_XCAFDoc_MaterialTool Set(const TDF_Label &L);
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		TDF_Label BaseLabel() const;
		%feature("autodoc", "1");
		const Handle_XCAFDoc_ShapeTool & ShapeTool();
		%feature("autodoc", "1");
		Standard_Boolean IsMaterial(const TDF_Label &lab) const;
		%feature("autodoc", "1");
		void GetMaterialLabels(TDF_LabelSequence & Labels) const;
		%feature("autodoc", "1");
		TDF_Label AddMaterial(const Handle_TCollection_HAsciiString &aName, const Handle_TCollection_HAsciiString &aDescription, const Standard_Real aDensity, const Handle_TCollection_HAsciiString &aDensName, const Handle_TCollection_HAsciiString &aDensValType) const;
		%feature("autodoc", "1");
		void SetMaterial(const TDF_Label &L, const TDF_Label &MatL) const;
		%feature("autodoc", "1");
		void SetMaterial(const TDF_Label &L, const Handle_TCollection_HAsciiString &aName, const Handle_TCollection_HAsciiString &aDescription, const Standard_Real aDensity, const Handle_TCollection_HAsciiString &aDensName, const Handle_TCollection_HAsciiString &aDensValType) const;
		%feature("autodoc", "1");
		Standard_Boolean GetMaterial(const TDF_Label &MatL, Handle_TCollection_HAsciiString & aName, Handle_TCollection_HAsciiString & aDescription, Standard_Real &OutValue, Handle_TCollection_HAsciiString & aDensName, Handle_TCollection_HAsciiString & aDensValType) const;
		%feature("autodoc", "1");
		Standard_Real GetDensityForShape(const TDF_Label &ShapeL);
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &with);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &into, const Handle_TDF_RelocationTable &RT) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XCAFDoc_MaterialTool {
	Handle_XCAFDoc_MaterialTool GetHandle() {
	return *(Handle_XCAFDoc_MaterialTool*) &$self;
	}
};
%extend XCAFDoc_MaterialTool {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend XCAFDoc_MaterialTool {
	~XCAFDoc_MaterialTool() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of XCAFDoc_MaterialTool\n");}
	}
};


%nodefaultctor XCAFDoc_Material;
class XCAFDoc_Material : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		XCAFDoc_Material();
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		Handle_XCAFDoc_Material Set(const TDF_Label &label, const Handle_TCollection_HAsciiString &aName, const Handle_TCollection_HAsciiString &aDescription, const Standard_Real aDensity, const Handle_TCollection_HAsciiString &aDensName, const Handle_TCollection_HAsciiString &aDensValType);
		%feature("autodoc", "1");
		void Set(const Handle_TCollection_HAsciiString &aName, const Handle_TCollection_HAsciiString &aDescription, const Standard_Real aDensity, const Handle_TCollection_HAsciiString &aDensName, const Handle_TCollection_HAsciiString &aDensValType);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString GetName() const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString GetDescription() const;
		%feature("autodoc", "1");
		Standard_Real GetDensity() const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString GetDensName() const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString GetDensValType() const;
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &With);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Into, const Handle_TDF_RelocationTable &RT) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XCAFDoc_Material {
	Handle_XCAFDoc_Material GetHandle() {
	return *(Handle_XCAFDoc_Material*) &$self;
	}
};
%extend XCAFDoc_Material {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend XCAFDoc_Material {
	~XCAFDoc_Material() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of XCAFDoc_Material\n");}
	}
};


%nodefaultctor XCAFDoc_DataMapNodeOfDataMapOfShapeLabel;
class XCAFDoc_DataMapNodeOfDataMapOfShapeLabel : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		XCAFDoc_DataMapNodeOfDataMapOfShapeLabel(const TopoDS_Shape &K, const TDF_Label &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		TDF_Label & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XCAFDoc_DataMapNodeOfDataMapOfShapeLabel {
	Handle_XCAFDoc_DataMapNodeOfDataMapOfShapeLabel GetHandle() {
	return *(Handle_XCAFDoc_DataMapNodeOfDataMapOfShapeLabel*) &$self;
	}
};
%extend XCAFDoc_DataMapNodeOfDataMapOfShapeLabel {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend XCAFDoc_DataMapNodeOfDataMapOfShapeLabel {
	~XCAFDoc_DataMapNodeOfDataMapOfShapeLabel() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of XCAFDoc_DataMapNodeOfDataMapOfShapeLabel\n");}
	}
};


%nodefaultctor XCAFDoc_ShapeMapTool;
class XCAFDoc_ShapeMapTool : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		Handle_XCAFDoc_ShapeMapTool Set(const TDF_Label &L);
		%feature("autodoc", "1");
		XCAFDoc_ShapeMapTool();
		%feature("autodoc", "1");
		Standard_Boolean IsSubShape(const TopoDS_Shape &sub) const;
		%feature("autodoc", "1");
		void SetShape(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &with);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &into, const Handle_TDF_RelocationTable &RT) const;
		%feature("autodoc", "1");
		const TopTools_IndexedMapOfShape & GetMap() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XCAFDoc_ShapeMapTool {
	Handle_XCAFDoc_ShapeMapTool GetHandle() {
	return *(Handle_XCAFDoc_ShapeMapTool*) &$self;
	}
};
%extend XCAFDoc_ShapeMapTool {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend XCAFDoc_ShapeMapTool {
	~XCAFDoc_ShapeMapTool() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of XCAFDoc_ShapeMapTool\n");}
	}
};


%nodefaultctor XCAFDoc_DimTolTool;
class XCAFDoc_DimTolTool : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		XCAFDoc_DimTolTool();
		%feature("autodoc", "1");
		Handle_XCAFDoc_DimTolTool Set(const TDF_Label &L);
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		TDF_Label BaseLabel() const;
		%feature("autodoc", "1");
		const Handle_XCAFDoc_ShapeTool & ShapeTool();
		%feature("autodoc", "1");
		Standard_Boolean IsDimTol(const TDF_Label &lab) const;
		%feature("autodoc", "1");
		void GetDimTolLabels(TDF_LabelSequence & Labels) const;
		%feature("autodoc", "1");
		Standard_Boolean FindDimTol(const Standard_Integer kind, const Handle_TColStd_HArray1OfReal &aVal, const Handle_TCollection_HAsciiString &aName, const Handle_TCollection_HAsciiString &aDescription, TDF_Label & lab) const;
		%feature("autodoc", "1");
		TDF_Label FindDimTol(const Standard_Integer kind, const Handle_TColStd_HArray1OfReal &aVal, const Handle_TCollection_HAsciiString &aName, const Handle_TCollection_HAsciiString &aDescription) const;
		%feature("autodoc", "1");
		TDF_Label AddDimTol(const Standard_Integer kind, const Handle_TColStd_HArray1OfReal &aVal, const Handle_TCollection_HAsciiString &aName, const Handle_TCollection_HAsciiString &aDescription) const;
		%feature("autodoc", "1");
		void SetDimTol(const TDF_Label &L, const TDF_Label &DimTolL) const;
		%feature("autodoc", "1");
		TDF_Label SetDimTol(const TDF_Label &L, const Standard_Integer kind, const Handle_TColStd_HArray1OfReal &aVal, const Handle_TCollection_HAsciiString &aName, const Handle_TCollection_HAsciiString &aDescription) const;
		%feature("autodoc", "1");
		Standard_Boolean GetRefShapeLabel(const TDF_Label &DimTolL, TDF_Label & ShapeL) const;
		%feature("autodoc", "1");
		Standard_Boolean GetRefDGTLabels(const TDF_Label &ShapeL, TDF_LabelSequence & DimTols) const;
		%feature("autodoc", "1");
		Standard_Boolean GetDimTol(const TDF_Label &DimTolL, Standard_Integer &OutValue, Handle_TColStd_HArray1OfReal & aVal, Handle_TCollection_HAsciiString & aName, Handle_TCollection_HAsciiString & aDescription) const;
		%feature("autodoc", "1");
		Standard_Boolean IsDatum(const TDF_Label &lab) const;
		%feature("autodoc", "1");
		void GetDatumLabels(TDF_LabelSequence & Labels) const;
		%feature("autodoc", "1");
		Standard_Boolean FindDatum(const Handle_TCollection_HAsciiString &aName, const Handle_TCollection_HAsciiString &aDescription, const Handle_TCollection_HAsciiString &anIdentification, TDF_Label & lab) const;
		%feature("autodoc", "1");
		TDF_Label AddDatum(const Handle_TCollection_HAsciiString &aName, const Handle_TCollection_HAsciiString &aDescription, const Handle_TCollection_HAsciiString &anIdentification) const;
		%feature("autodoc", "1");
		void SetDatum(const TDF_Label &L, const TDF_Label &DatumL) const;
		%feature("autodoc", "1");
		void SetDatum(const TDF_Label &L, const TDF_Label &TolerL, const Handle_TCollection_HAsciiString &aName, const Handle_TCollection_HAsciiString &aDescription, const Handle_TCollection_HAsciiString &anIdentification) const;
		%feature("autodoc", "1");
		Standard_Boolean GetDatumTolerLabels(const TDF_Label &DimTolL, TDF_LabelSequence & Datums) const;
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &with);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &into, const Handle_TDF_RelocationTable &RT) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XCAFDoc_DimTolTool {
	Handle_XCAFDoc_DimTolTool GetHandle() {
	return *(Handle_XCAFDoc_DimTolTool*) &$self;
	}
};
%extend XCAFDoc_DimTolTool {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend XCAFDoc_DimTolTool {
	~XCAFDoc_DimTolTool() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of XCAFDoc_DimTolTool\n");}
	}
};


%nodefaultctor XCAFDoc_ColorTool;
class XCAFDoc_ColorTool : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		XCAFDoc_ColorTool();
		%feature("autodoc", "1");
		Handle_XCAFDoc_ColorTool Set(const TDF_Label &L);
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		TDF_Label BaseLabel() const;
		%feature("autodoc", "1");
		const Handle_XCAFDoc_ShapeTool & ShapeTool();
		%feature("autodoc", "1");
		Standard_Boolean IsColor(const TDF_Label &lab) const;
		%feature("autodoc", "1");
		Standard_Boolean GetColor(const TDF_Label &lab, Quantity_Color & col) const;
		%feature("autodoc", "1");
		Standard_Boolean FindColor(const Quantity_Color &col, TDF_Label & lab) const;
		%feature("autodoc", "1");
		TDF_Label FindColor(const Quantity_Color &col) const;
		%feature("autodoc", "1");
		TDF_Label AddColor(const Quantity_Color &col) const;
		%feature("autodoc", "1");
		void RemoveColor(const TDF_Label &lab) const;
		%feature("autodoc", "1");
		void GetColors(TDF_LabelSequence & Labels) const;
		%feature("autodoc", "1");
		void SetColor(const TDF_Label &L, const TDF_Label &colorL, const XCAFDoc_ColorType type) const;
		%feature("autodoc", "1");
		void SetColor(const TDF_Label &L, const Quantity_Color &Color, const XCAFDoc_ColorType type) const;
		%feature("autodoc", "1");
		void UnSetColor(const TDF_Label &L, const XCAFDoc_ColorType type) const;
		%feature("autodoc", "1");
		Standard_Boolean IsSet(const TDF_Label &L, const XCAFDoc_ColorType type) const;
		%feature("autodoc", "1");
		Standard_Boolean GetColor(const TDF_Label &L, const XCAFDoc_ColorType type, TDF_Label & colorL);
		%feature("autodoc", "1");
		Standard_Boolean GetColor(const TDF_Label &L, const XCAFDoc_ColorType type, Quantity_Color & color);
		%feature("autodoc", "1");
		Standard_Boolean SetColor(const TopoDS_Shape &S, const TDF_Label &colorL, const XCAFDoc_ColorType type);
		%feature("autodoc", "1");
		Standard_Boolean SetColor(const TopoDS_Shape &S, const Quantity_Color &Color, const XCAFDoc_ColorType type);
		%feature("autodoc", "1");
		Standard_Boolean UnSetColor(const TopoDS_Shape &S, const XCAFDoc_ColorType type);
		%feature("autodoc", "1");
		Standard_Boolean IsSet(const TopoDS_Shape &S, const XCAFDoc_ColorType type);
		%feature("autodoc", "1");
		Standard_Boolean GetColor(const TopoDS_Shape &S, const XCAFDoc_ColorType type, TDF_Label & colorL);
		%feature("autodoc", "1");
		Standard_Boolean GetColor(const TopoDS_Shape &S, const XCAFDoc_ColorType type, Quantity_Color & color);
		%feature("autodoc", "1");
		Standard_Boolean IsVisible(const TDF_Label &L) const;
		%feature("autodoc", "1");
		void SetVisibility(const TDF_Label &shapeLabel, const Standard_Boolean isvisible=1);
		%feature("autodoc", "1");
		Standard_Boolean SetInstanceColor(const TopoDS_Shape &theShape, const XCAFDoc_ColorType type, const Quantity_Color &color, const Standard_Boolean isCreateSHUO=1);
		%feature("autodoc", "1");
		Standard_Boolean GetInstanceColor(const TopoDS_Shape &theShape, const XCAFDoc_ColorType type, Quantity_Color & color);
		%feature("autodoc", "1");
		Standard_Boolean IsInstanceVisible(const TopoDS_Shape &theShape);
		%feature("autodoc", "1");
		Standard_Boolean ReverseChainsOfTreeNodes();
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &with);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &into, const Handle_TDF_RelocationTable &RT) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XCAFDoc_ColorTool {
	Handle_XCAFDoc_ColorTool GetHandle() {
	return *(Handle_XCAFDoc_ColorTool*) &$self;
	}
};
%extend XCAFDoc_ColorTool {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend XCAFDoc_ColorTool {
	~XCAFDoc_ColorTool() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of XCAFDoc_ColorTool\n");}
	}
};
