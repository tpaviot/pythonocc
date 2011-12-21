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

%module PXCAFDoc
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include PXCAFDoc_renames.i


%include PXCAFDoc_required_python_modules.i


%include PXCAFDoc_dependencies.i


%include PXCAFDoc_headers.i




%nodefaultctor Handle_PXCAFDoc_Datum;
class Handle_PXCAFDoc_Datum : public Handle_PDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_PXCAFDoc_Datum();
		%feature("autodoc", "1");
		Handle_PXCAFDoc_Datum(const Handle_PXCAFDoc_Datum &aHandle);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_Datum(const PXCAFDoc_Datum *anItem);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_Datum & operator=(const Handle_PXCAFDoc_Datum &aHandle);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_Datum & operator=(const PXCAFDoc_Datum *anItem);
		%feature("autodoc", "1");
		static		Handle_PXCAFDoc_Datum DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PXCAFDoc_Datum {
	PXCAFDoc_Datum* GetObject() {
	return (PXCAFDoc_Datum*)$self->Access();
	}
};
%feature("shadow") Handle_PXCAFDoc_Datum::~Handle_PXCAFDoc_Datum %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PXCAFDoc_Datum {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PXCAFDoc_SeqNodeOfGraphNodeSequence;
class Handle_PXCAFDoc_SeqNodeOfGraphNodeSequence : public Handle_PMMgt_PManaged {
	public:
		%feature("autodoc", "1");
		Handle_PXCAFDoc_SeqNodeOfGraphNodeSequence();
		%feature("autodoc", "1");
		Handle_PXCAFDoc_SeqNodeOfGraphNodeSequence(const Handle_PXCAFDoc_SeqNodeOfGraphNodeSequence &aHandle);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_SeqNodeOfGraphNodeSequence(const PXCAFDoc_SeqNodeOfGraphNodeSequence *anItem);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_SeqNodeOfGraphNodeSequence & operator=(const Handle_PXCAFDoc_SeqNodeOfGraphNodeSequence &aHandle);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_SeqNodeOfGraphNodeSequence & operator=(const PXCAFDoc_SeqNodeOfGraphNodeSequence *anItem);
		%feature("autodoc", "1");
		static		Handle_PXCAFDoc_SeqNodeOfGraphNodeSequence DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PXCAFDoc_SeqNodeOfGraphNodeSequence {
	PXCAFDoc_SeqNodeOfGraphNodeSequence* GetObject() {
	return (PXCAFDoc_SeqNodeOfGraphNodeSequence*)$self->Access();
	}
};
%feature("shadow") Handle_PXCAFDoc_SeqNodeOfGraphNodeSequence::~Handle_PXCAFDoc_SeqNodeOfGraphNodeSequence %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PXCAFDoc_SeqNodeOfGraphNodeSequence {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PXCAFDoc_ShapeTool;
class Handle_PXCAFDoc_ShapeTool : public Handle_PDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_PXCAFDoc_ShapeTool();
		%feature("autodoc", "1");
		Handle_PXCAFDoc_ShapeTool(const Handle_PXCAFDoc_ShapeTool &aHandle);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_ShapeTool(const PXCAFDoc_ShapeTool *anItem);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_ShapeTool & operator=(const Handle_PXCAFDoc_ShapeTool &aHandle);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_ShapeTool & operator=(const PXCAFDoc_ShapeTool *anItem);
		%feature("autodoc", "1");
		static		Handle_PXCAFDoc_ShapeTool DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PXCAFDoc_ShapeTool {
	PXCAFDoc_ShapeTool* GetObject() {
	return (PXCAFDoc_ShapeTool*)$self->Access();
	}
};
%feature("shadow") Handle_PXCAFDoc_ShapeTool::~Handle_PXCAFDoc_ShapeTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PXCAFDoc_ShapeTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PXCAFDoc_Area;
class Handle_PXCAFDoc_Area : public Handle_PDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_PXCAFDoc_Area();
		%feature("autodoc", "1");
		Handle_PXCAFDoc_Area(const Handle_PXCAFDoc_Area &aHandle);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_Area(const PXCAFDoc_Area *anItem);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_Area & operator=(const Handle_PXCAFDoc_Area &aHandle);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_Area & operator=(const PXCAFDoc_Area *anItem);
		%feature("autodoc", "1");
		static		Handle_PXCAFDoc_Area DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PXCAFDoc_Area {
	PXCAFDoc_Area* GetObject() {
	return (PXCAFDoc_Area*)$self->Access();
	}
};
%feature("shadow") Handle_PXCAFDoc_Area::~Handle_PXCAFDoc_Area %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PXCAFDoc_Area {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PXCAFDoc_Color;
class Handle_PXCAFDoc_Color : public Handle_PDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_PXCAFDoc_Color();
		%feature("autodoc", "1");
		Handle_PXCAFDoc_Color(const Handle_PXCAFDoc_Color &aHandle);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_Color(const PXCAFDoc_Color *anItem);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_Color & operator=(const Handle_PXCAFDoc_Color &aHandle);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_Color & operator=(const PXCAFDoc_Color *anItem);
		%feature("autodoc", "1");
		static		Handle_PXCAFDoc_Color DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PXCAFDoc_Color {
	PXCAFDoc_Color* GetObject() {
	return (PXCAFDoc_Color*)$self->Access();
	}
};
%feature("shadow") Handle_PXCAFDoc_Color::~Handle_PXCAFDoc_Color %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PXCAFDoc_Color {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PXCAFDoc_Location;
class Handle_PXCAFDoc_Location : public Handle_PDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_PXCAFDoc_Location();
		%feature("autodoc", "1");
		Handle_PXCAFDoc_Location(const Handle_PXCAFDoc_Location &aHandle);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_Location(const PXCAFDoc_Location *anItem);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_Location & operator=(const Handle_PXCAFDoc_Location &aHandle);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_Location & operator=(const PXCAFDoc_Location *anItem);
		%feature("autodoc", "1");
		static		Handle_PXCAFDoc_Location DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PXCAFDoc_Location {
	PXCAFDoc_Location* GetObject() {
	return (PXCAFDoc_Location*)$self->Access();
	}
};
%feature("shadow") Handle_PXCAFDoc_Location::~Handle_PXCAFDoc_Location %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PXCAFDoc_Location {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PXCAFDoc_GraphNode;
class Handle_PXCAFDoc_GraphNode : public Handle_PDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_PXCAFDoc_GraphNode();
		%feature("autodoc", "1");
		Handle_PXCAFDoc_GraphNode(const Handle_PXCAFDoc_GraphNode &aHandle);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_GraphNode(const PXCAFDoc_GraphNode *anItem);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_GraphNode & operator=(const Handle_PXCAFDoc_GraphNode &aHandle);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_GraphNode & operator=(const PXCAFDoc_GraphNode *anItem);
		%feature("autodoc", "1");
		static		Handle_PXCAFDoc_GraphNode DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PXCAFDoc_GraphNode {
	PXCAFDoc_GraphNode* GetObject() {
	return (PXCAFDoc_GraphNode*)$self->Access();
	}
};
%feature("shadow") Handle_PXCAFDoc_GraphNode::~Handle_PXCAFDoc_GraphNode %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PXCAFDoc_GraphNode {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PXCAFDoc_Centroid;
class Handle_PXCAFDoc_Centroid : public Handle_PDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_PXCAFDoc_Centroid();
		%feature("autodoc", "1");
		Handle_PXCAFDoc_Centroid(const Handle_PXCAFDoc_Centroid &aHandle);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_Centroid(const PXCAFDoc_Centroid *anItem);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_Centroid & operator=(const Handle_PXCAFDoc_Centroid &aHandle);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_Centroid & operator=(const PXCAFDoc_Centroid *anItem);
		%feature("autodoc", "1");
		static		Handle_PXCAFDoc_Centroid DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PXCAFDoc_Centroid {
	PXCAFDoc_Centroid* GetObject() {
	return (PXCAFDoc_Centroid*)$self->Access();
	}
};
%feature("shadow") Handle_PXCAFDoc_Centroid::~Handle_PXCAFDoc_Centroid %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PXCAFDoc_Centroid {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PXCAFDoc_GraphNodeSequence;
class Handle_PXCAFDoc_GraphNodeSequence : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		Handle_PXCAFDoc_GraphNodeSequence();
		%feature("autodoc", "1");
		Handle_PXCAFDoc_GraphNodeSequence(const Handle_PXCAFDoc_GraphNodeSequence &aHandle);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_GraphNodeSequence(const PXCAFDoc_GraphNodeSequence *anItem);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_GraphNodeSequence & operator=(const Handle_PXCAFDoc_GraphNodeSequence &aHandle);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_GraphNodeSequence & operator=(const PXCAFDoc_GraphNodeSequence *anItem);
		%feature("autodoc", "1");
		static		Handle_PXCAFDoc_GraphNodeSequence DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PXCAFDoc_GraphNodeSequence {
	PXCAFDoc_GraphNodeSequence* GetObject() {
	return (PXCAFDoc_GraphNodeSequence*)$self->Access();
	}
};
%feature("shadow") Handle_PXCAFDoc_GraphNodeSequence::~Handle_PXCAFDoc_GraphNodeSequence %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PXCAFDoc_GraphNodeSequence {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PXCAFDoc_Material;
class Handle_PXCAFDoc_Material : public Handle_PDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_PXCAFDoc_Material();
		%feature("autodoc", "1");
		Handle_PXCAFDoc_Material(const Handle_PXCAFDoc_Material &aHandle);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_Material(const PXCAFDoc_Material *anItem);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_Material & operator=(const Handle_PXCAFDoc_Material &aHandle);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_Material & operator=(const PXCAFDoc_Material *anItem);
		%feature("autodoc", "1");
		static		Handle_PXCAFDoc_Material DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PXCAFDoc_Material {
	PXCAFDoc_Material* GetObject() {
	return (PXCAFDoc_Material*)$self->Access();
	}
};
%feature("shadow") Handle_PXCAFDoc_Material::~Handle_PXCAFDoc_Material %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PXCAFDoc_Material {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PXCAFDoc_DimTol;
class Handle_PXCAFDoc_DimTol : public Handle_PDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_PXCAFDoc_DimTol();
		%feature("autodoc", "1");
		Handle_PXCAFDoc_DimTol(const Handle_PXCAFDoc_DimTol &aHandle);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_DimTol(const PXCAFDoc_DimTol *anItem);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_DimTol & operator=(const Handle_PXCAFDoc_DimTol &aHandle);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_DimTol & operator=(const PXCAFDoc_DimTol *anItem);
		%feature("autodoc", "1");
		static		Handle_PXCAFDoc_DimTol DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PXCAFDoc_DimTol {
	PXCAFDoc_DimTol* GetObject() {
	return (PXCAFDoc_DimTol*)$self->Access();
	}
};
%feature("shadow") Handle_PXCAFDoc_DimTol::~Handle_PXCAFDoc_DimTol %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PXCAFDoc_DimTol {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PXCAFDoc_Volume;
class Handle_PXCAFDoc_Volume : public Handle_PDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_PXCAFDoc_Volume();
		%feature("autodoc", "1");
		Handle_PXCAFDoc_Volume(const Handle_PXCAFDoc_Volume &aHandle);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_Volume(const PXCAFDoc_Volume *anItem);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_Volume & operator=(const Handle_PXCAFDoc_Volume &aHandle);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_Volume & operator=(const PXCAFDoc_Volume *anItem);
		%feature("autodoc", "1");
		static		Handle_PXCAFDoc_Volume DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PXCAFDoc_Volume {
	PXCAFDoc_Volume* GetObject() {
	return (PXCAFDoc_Volume*)$self->Access();
	}
};
%feature("shadow") Handle_PXCAFDoc_Volume::~Handle_PXCAFDoc_Volume %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PXCAFDoc_Volume {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PXCAFDoc_MaterialTool;
class Handle_PXCAFDoc_MaterialTool : public Handle_PDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_PXCAFDoc_MaterialTool();
		%feature("autodoc", "1");
		Handle_PXCAFDoc_MaterialTool(const Handle_PXCAFDoc_MaterialTool &aHandle);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_MaterialTool(const PXCAFDoc_MaterialTool *anItem);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_MaterialTool & operator=(const Handle_PXCAFDoc_MaterialTool &aHandle);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_MaterialTool & operator=(const PXCAFDoc_MaterialTool *anItem);
		%feature("autodoc", "1");
		static		Handle_PXCAFDoc_MaterialTool DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PXCAFDoc_MaterialTool {
	PXCAFDoc_MaterialTool* GetObject() {
	return (PXCAFDoc_MaterialTool*)$self->Access();
	}
};
%feature("shadow") Handle_PXCAFDoc_MaterialTool::~Handle_PXCAFDoc_MaterialTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PXCAFDoc_MaterialTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PXCAFDoc_DocumentTool;
class Handle_PXCAFDoc_DocumentTool : public Handle_PDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_PXCAFDoc_DocumentTool();
		%feature("autodoc", "1");
		Handle_PXCAFDoc_DocumentTool(const Handle_PXCAFDoc_DocumentTool &aHandle);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_DocumentTool(const PXCAFDoc_DocumentTool *anItem);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_DocumentTool & operator=(const Handle_PXCAFDoc_DocumentTool &aHandle);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_DocumentTool & operator=(const PXCAFDoc_DocumentTool *anItem);
		%feature("autodoc", "1");
		static		Handle_PXCAFDoc_DocumentTool DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PXCAFDoc_DocumentTool {
	PXCAFDoc_DocumentTool* GetObject() {
	return (PXCAFDoc_DocumentTool*)$self->Access();
	}
};
%feature("shadow") Handle_PXCAFDoc_DocumentTool::~Handle_PXCAFDoc_DocumentTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PXCAFDoc_DocumentTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PXCAFDoc_LayerTool;
class Handle_PXCAFDoc_LayerTool : public Handle_PDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_PXCAFDoc_LayerTool();
		%feature("autodoc", "1");
		Handle_PXCAFDoc_LayerTool(const Handle_PXCAFDoc_LayerTool &aHandle);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_LayerTool(const PXCAFDoc_LayerTool *anItem);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_LayerTool & operator=(const Handle_PXCAFDoc_LayerTool &aHandle);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_LayerTool & operator=(const PXCAFDoc_LayerTool *anItem);
		%feature("autodoc", "1");
		static		Handle_PXCAFDoc_LayerTool DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PXCAFDoc_LayerTool {
	PXCAFDoc_LayerTool* GetObject() {
	return (PXCAFDoc_LayerTool*)$self->Access();
	}
};
%feature("shadow") Handle_PXCAFDoc_LayerTool::~Handle_PXCAFDoc_LayerTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PXCAFDoc_LayerTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PXCAFDoc_ColorTool;
class Handle_PXCAFDoc_ColorTool : public Handle_PDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_PXCAFDoc_ColorTool();
		%feature("autodoc", "1");
		Handle_PXCAFDoc_ColorTool(const Handle_PXCAFDoc_ColorTool &aHandle);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_ColorTool(const PXCAFDoc_ColorTool *anItem);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_ColorTool & operator=(const Handle_PXCAFDoc_ColorTool &aHandle);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_ColorTool & operator=(const PXCAFDoc_ColorTool *anItem);
		%feature("autodoc", "1");
		static		Handle_PXCAFDoc_ColorTool DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PXCAFDoc_ColorTool {
	PXCAFDoc_ColorTool* GetObject() {
	return (PXCAFDoc_ColorTool*)$self->Access();
	}
};
%feature("shadow") Handle_PXCAFDoc_ColorTool::~Handle_PXCAFDoc_ColorTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PXCAFDoc_ColorTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PXCAFDoc_DimTolTool;
class Handle_PXCAFDoc_DimTolTool : public Handle_PDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_PXCAFDoc_DimTolTool();
		%feature("autodoc", "1");
		Handle_PXCAFDoc_DimTolTool(const Handle_PXCAFDoc_DimTolTool &aHandle);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_DimTolTool(const PXCAFDoc_DimTolTool *anItem);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_DimTolTool & operator=(const Handle_PXCAFDoc_DimTolTool &aHandle);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_DimTolTool & operator=(const PXCAFDoc_DimTolTool *anItem);
		%feature("autodoc", "1");
		static		Handle_PXCAFDoc_DimTolTool DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PXCAFDoc_DimTolTool {
	PXCAFDoc_DimTolTool* GetObject() {
	return (PXCAFDoc_DimTolTool*)$self->Access();
	}
};
%feature("shadow") Handle_PXCAFDoc_DimTolTool::~Handle_PXCAFDoc_DimTolTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PXCAFDoc_DimTolTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PXCAFDoc_Volume;
class PXCAFDoc_Volume : public PDF_Attribute {
	public:
		%feature("autodoc", "1");
		PXCAFDoc_Volume();
		%feature("autodoc", "1");
		PXCAFDoc_Volume(const Standard_Real Value);
		%feature("autodoc", "1");
		Standard_Real Get() const;
		%feature("autodoc", "1");
		void Set(const Standard_Real V);
		%feature("autodoc", "1");
		PXCAFDoc_Volume(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Real _CSFDB_GetPXCAFDoc_VolumemyValue() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPXCAFDoc_VolumemyValue(const Standard_Real p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PXCAFDoc_Volume {
	Handle_PXCAFDoc_Volume GetHandle() {
	return *(Handle_PXCAFDoc_Volume*) &$self;
	}
};
%extend PXCAFDoc_Volume {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") PXCAFDoc_Volume::~PXCAFDoc_Volume %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PXCAFDoc_Volume {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PXCAFDoc_SeqNodeOfGraphNodeSequence;
class PXCAFDoc_SeqNodeOfGraphNodeSequence : public PMMgt_PManaged {
	public:
		%feature("autodoc", "1");
		PXCAFDoc_SeqNodeOfGraphNodeSequence(const Handle_PXCAFDoc_SeqNodeOfGraphNodeSequence &TheLast, const Handle_PXCAFDoc_GraphNode &TheItem);
		%feature("autodoc", "1");
		PXCAFDoc_SeqNodeOfGraphNodeSequence(const Handle_PXCAFDoc_GraphNode &TheItem, const Handle_PXCAFDoc_SeqNodeOfGraphNodeSequence &TheFirst);
		%feature("autodoc", "1");
		PXCAFDoc_SeqNodeOfGraphNodeSequence(const Handle_PXCAFDoc_SeqNodeOfGraphNodeSequence &ThePrevious, const Handle_PXCAFDoc_SeqNodeOfGraphNodeSequence &TheNext, const Handle_PXCAFDoc_GraphNode &TheItem);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_GraphNode Value() const;
		%feature("autodoc", "1");
		Handle_PXCAFDoc_SeqNodeOfGraphNodeSequence Next() const;
		%feature("autodoc", "1");
		Handle_PXCAFDoc_SeqNodeOfGraphNodeSequence Previous() const;
		%feature("autodoc", "1");
		void SetValue(const Handle_PXCAFDoc_GraphNode &AnItem);
		%feature("autodoc", "1");
		void SetNext(const Handle_PXCAFDoc_SeqNodeOfGraphNodeSequence &ANode);
		%feature("autodoc", "1");
		void SetPrevious(const Handle_PXCAFDoc_SeqNodeOfGraphNodeSequence &ANode);
		%feature("autodoc", "1");
		PXCAFDoc_SeqNodeOfGraphNodeSequence();
		%feature("autodoc", "1");
		PXCAFDoc_SeqNodeOfGraphNodeSequence(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_SeqNodeOfGraphNodeSequence _CSFDB_GetPXCAFDoc_SeqNodeOfGraphNodeSequenceMyPrevious() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPXCAFDoc_SeqNodeOfGraphNodeSequenceMyPrevious(const Handle_PXCAFDoc_SeqNodeOfGraphNodeSequence &p);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_GraphNode _CSFDB_GetPXCAFDoc_SeqNodeOfGraphNodeSequenceMyItem() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPXCAFDoc_SeqNodeOfGraphNodeSequenceMyItem(const Handle_PXCAFDoc_GraphNode &p);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_SeqNodeOfGraphNodeSequence _CSFDB_GetPXCAFDoc_SeqNodeOfGraphNodeSequenceMyNext() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPXCAFDoc_SeqNodeOfGraphNodeSequenceMyNext(const Handle_PXCAFDoc_SeqNodeOfGraphNodeSequence &p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PXCAFDoc_SeqNodeOfGraphNodeSequence {
	Handle_PXCAFDoc_SeqNodeOfGraphNodeSequence GetHandle() {
	return *(Handle_PXCAFDoc_SeqNodeOfGraphNodeSequence*) &$self;
	}
};
%extend PXCAFDoc_SeqNodeOfGraphNodeSequence {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") PXCAFDoc_SeqNodeOfGraphNodeSequence::~PXCAFDoc_SeqNodeOfGraphNodeSequence %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PXCAFDoc_SeqNodeOfGraphNodeSequence {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PXCAFDoc_MaterialTool;
class PXCAFDoc_MaterialTool : public PDF_Attribute {
	public:
		%feature("autodoc", "1");
		PXCAFDoc_MaterialTool();
		%feature("autodoc", "1");
		PXCAFDoc_MaterialTool(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PXCAFDoc_MaterialTool {
	Handle_PXCAFDoc_MaterialTool GetHandle() {
	return *(Handle_PXCAFDoc_MaterialTool*) &$self;
	}
};
%extend PXCAFDoc_MaterialTool {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") PXCAFDoc_MaterialTool::~PXCAFDoc_MaterialTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PXCAFDoc_MaterialTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PXCAFDoc_Area;
class PXCAFDoc_Area : public PDF_Attribute {
	public:
		%feature("autodoc", "1");
		PXCAFDoc_Area();
		%feature("autodoc", "1");
		PXCAFDoc_Area(const Standard_Real Value);
		%feature("autodoc", "1");
		Standard_Real Get() const;
		%feature("autodoc", "1");
		void Set(const Standard_Real V);
		%feature("autodoc", "1");
		PXCAFDoc_Area(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Real _CSFDB_GetPXCAFDoc_AreamyValue() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPXCAFDoc_AreamyValue(const Standard_Real p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PXCAFDoc_Area {
	Handle_PXCAFDoc_Area GetHandle() {
	return *(Handle_PXCAFDoc_Area*) &$self;
	}
};
%extend PXCAFDoc_Area {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") PXCAFDoc_Area::~PXCAFDoc_Area %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PXCAFDoc_Area {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PXCAFDoc_DimTol;
class PXCAFDoc_DimTol : public PDF_Attribute {
	public:
		%feature("autodoc", "1");
		PXCAFDoc_DimTol();
		%feature("autodoc", "1");
		PXCAFDoc_DimTol(const Standard_Integer theKind, const Handle_PColStd_HArray1OfReal &theVal, const Handle_PCollection_HAsciiString &theName, const Handle_PCollection_HAsciiString &theDescr);
		%feature("autodoc", "1");
		Standard_Integer GetKind() const;
		%feature("autodoc", "1");
		Handle_PColStd_HArray1OfReal GetVal() const;
		%feature("autodoc", "1");
		Handle_PCollection_HAsciiString GetName() const;
		%feature("autodoc", "1");
		Handle_PCollection_HAsciiString GetDescription() const;
		%feature("autodoc", "1");
		void Set(const Standard_Integer theKind, const Handle_PColStd_HArray1OfReal &theVal, const Handle_PCollection_HAsciiString &theName, const Handle_PCollection_HAsciiString &theDescr);
		%feature("autodoc", "1");
		PXCAFDoc_DimTol(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPXCAFDoc_DimTolmyKind() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPXCAFDoc_DimTolmyKind(const Standard_Integer p);
		%feature("autodoc", "1");
		Handle_PColStd_HArray1OfReal _CSFDB_GetPXCAFDoc_DimTolmyVal() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPXCAFDoc_DimTolmyVal(const Handle_PColStd_HArray1OfReal &p);
		%feature("autodoc", "1");
		Handle_PCollection_HAsciiString _CSFDB_GetPXCAFDoc_DimTolmyName() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPXCAFDoc_DimTolmyName(const Handle_PCollection_HAsciiString &p);
		%feature("autodoc", "1");
		Handle_PCollection_HAsciiString _CSFDB_GetPXCAFDoc_DimTolmyDescr() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPXCAFDoc_DimTolmyDescr(const Handle_PCollection_HAsciiString &p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PXCAFDoc_DimTol {
	Handle_PXCAFDoc_DimTol GetHandle() {
	return *(Handle_PXCAFDoc_DimTol*) &$self;
	}
};
%extend PXCAFDoc_DimTol {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") PXCAFDoc_DimTol::~PXCAFDoc_DimTol %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PXCAFDoc_DimTol {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PXCAFDoc_Color;
class PXCAFDoc_Color : public PDF_Attribute {
	public:
		%feature("autodoc", "1");
		PXCAFDoc_Color();
		%feature("autodoc", "1");
		PXCAFDoc_Color(const Quantity_Color &Loc);
		%feature("autodoc", "1");
		void Set(const Quantity_Color &Loc);
		%feature("autodoc", "1");
		Quantity_Color Get() const;
		%feature("autodoc", "1");
		PXCAFDoc_Color(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		const Quantity_Color & _CSFDB_GetPXCAFDoc_ColormyColor() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PXCAFDoc_Color {
	Handle_PXCAFDoc_Color GetHandle() {
	return *(Handle_PXCAFDoc_Color*) &$self;
	}
};
%extend PXCAFDoc_Color {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") PXCAFDoc_Color::~PXCAFDoc_Color %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PXCAFDoc_Color {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PXCAFDoc_DocumentTool;
class PXCAFDoc_DocumentTool : public PDF_Attribute {
	public:
		%feature("autodoc", "1");
		PXCAFDoc_DocumentTool();
		%feature("autodoc", "1");
		PXCAFDoc_DocumentTool(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PXCAFDoc_DocumentTool {
	Handle_PXCAFDoc_DocumentTool GetHandle() {
	return *(Handle_PXCAFDoc_DocumentTool*) &$self;
	}
};
%extend PXCAFDoc_DocumentTool {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") PXCAFDoc_DocumentTool::~PXCAFDoc_DocumentTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PXCAFDoc_DocumentTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PXCAFDoc_ColorTool;
class PXCAFDoc_ColorTool : public PDF_Attribute {
	public:
		%feature("autodoc", "1");
		PXCAFDoc_ColorTool();
		%feature("autodoc", "1");
		PXCAFDoc_ColorTool(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PXCAFDoc_ColorTool {
	Handle_PXCAFDoc_ColorTool GetHandle() {
	return *(Handle_PXCAFDoc_ColorTool*) &$self;
	}
};
%extend PXCAFDoc_ColorTool {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") PXCAFDoc_ColorTool::~PXCAFDoc_ColorTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PXCAFDoc_ColorTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PXCAFDoc_Location;
class PXCAFDoc_Location : public PDF_Attribute {
	public:
		%feature("autodoc", "1");
		PXCAFDoc_Location();
		%feature("autodoc", "1");
		PXCAFDoc_Location(const PTopLoc_Location &Loc);
		%feature("autodoc", "1");
		void Set(const PTopLoc_Location &Loc);
		%feature("autodoc", "1");
		PTopLoc_Location Get() const;
		%feature("autodoc", "1");
		PXCAFDoc_Location(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		const PTopLoc_Location & _CSFDB_GetPXCAFDoc_LocationmyPLocation() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PXCAFDoc_Location {
	Handle_PXCAFDoc_Location GetHandle() {
	return *(Handle_PXCAFDoc_Location*) &$self;
	}
};
%extend PXCAFDoc_Location {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") PXCAFDoc_Location::~PXCAFDoc_Location %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PXCAFDoc_Location {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PXCAFDoc_Datum;
class PXCAFDoc_Datum : public PDF_Attribute {
	public:
		%feature("autodoc", "1");
		PXCAFDoc_Datum();
		%feature("autodoc", "1");
		PXCAFDoc_Datum(const Handle_PCollection_HAsciiString &theName, const Handle_PCollection_HAsciiString &theDescr, const Handle_PCollection_HAsciiString &theId);
		%feature("autodoc", "1");
		Handle_PCollection_HAsciiString GetName() const;
		%feature("autodoc", "1");
		Handle_PCollection_HAsciiString GetDescription() const;
		%feature("autodoc", "1");
		Handle_PCollection_HAsciiString GetIdentification() const;
		%feature("autodoc", "1");
		void Set(const Handle_PCollection_HAsciiString &theName, const Handle_PCollection_HAsciiString &theDescr, const Handle_PCollection_HAsciiString &theId);
		%feature("autodoc", "1");
		PXCAFDoc_Datum(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Handle_PCollection_HAsciiString _CSFDB_GetPXCAFDoc_DatummyName() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPXCAFDoc_DatummyName(const Handle_PCollection_HAsciiString &p);
		%feature("autodoc", "1");
		Handle_PCollection_HAsciiString _CSFDB_GetPXCAFDoc_DatummyDescr() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPXCAFDoc_DatummyDescr(const Handle_PCollection_HAsciiString &p);
		%feature("autodoc", "1");
		Handle_PCollection_HAsciiString _CSFDB_GetPXCAFDoc_DatummyId() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPXCAFDoc_DatummyId(const Handle_PCollection_HAsciiString &p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PXCAFDoc_Datum {
	Handle_PXCAFDoc_Datum GetHandle() {
	return *(Handle_PXCAFDoc_Datum*) &$self;
	}
};
%extend PXCAFDoc_Datum {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") PXCAFDoc_Datum::~PXCAFDoc_Datum %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PXCAFDoc_Datum {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PXCAFDoc_LayerTool;
class PXCAFDoc_LayerTool : public PDF_Attribute {
	public:
		%feature("autodoc", "1");
		PXCAFDoc_LayerTool();
		%feature("autodoc", "1");
		PXCAFDoc_LayerTool(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PXCAFDoc_LayerTool {
	Handle_PXCAFDoc_LayerTool GetHandle() {
	return *(Handle_PXCAFDoc_LayerTool*) &$self;
	}
};
%extend PXCAFDoc_LayerTool {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") PXCAFDoc_LayerTool::~PXCAFDoc_LayerTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PXCAFDoc_LayerTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PXCAFDoc_ShapeTool;
class PXCAFDoc_ShapeTool : public PDF_Attribute {
	public:
		%feature("autodoc", "1");
		PXCAFDoc_ShapeTool();
		%feature("autodoc", "1");
		PXCAFDoc_ShapeTool(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PXCAFDoc_ShapeTool {
	Handle_PXCAFDoc_ShapeTool GetHandle() {
	return *(Handle_PXCAFDoc_ShapeTool*) &$self;
	}
};
%extend PXCAFDoc_ShapeTool {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") PXCAFDoc_ShapeTool::~PXCAFDoc_ShapeTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PXCAFDoc_ShapeTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PXCAFDoc_Centroid;
class PXCAFDoc_Centroid : public PDF_Attribute {
	public:
		%feature("autodoc", "1");
		PXCAFDoc_Centroid();
		%feature("autodoc", "1");
		PXCAFDoc_Centroid(const gp_Pnt pnt);
		%feature("autodoc", "1");
		void Set(const gp_Pnt pnt);
		%feature("autodoc", "1");
		gp_Pnt Get() const;
		%feature("autodoc", "1");
		PXCAFDoc_Centroid(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		const gp_Pnt  _CSFDB_GetPXCAFDoc_CentroidmyPCentroid() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PXCAFDoc_Centroid {
	Handle_PXCAFDoc_Centroid GetHandle() {
	return *(Handle_PXCAFDoc_Centroid*) &$self;
	}
};
%extend PXCAFDoc_Centroid {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") PXCAFDoc_Centroid::~PXCAFDoc_Centroid %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PXCAFDoc_Centroid {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PXCAFDoc_Material;
class PXCAFDoc_Material : public PDF_Attribute {
	public:
		%feature("autodoc", "1");
		PXCAFDoc_Material();
		%feature("autodoc", "1");
		PXCAFDoc_Material(const Handle_PCollection_HAsciiString &theName, const Handle_PCollection_HAsciiString &theDescr, const Standard_Real theDensity, const Handle_PCollection_HAsciiString &theDensName, const Handle_PCollection_HAsciiString &theDensValType);
		%feature("autodoc", "1");
		Handle_PCollection_HAsciiString GetName() const;
		%feature("autodoc", "1");
		Handle_PCollection_HAsciiString GetDescription() const;
		%feature("autodoc", "1");
		Standard_Real GetDensity() const;
		%feature("autodoc", "1");
		Handle_PCollection_HAsciiString GetDensName() const;
		%feature("autodoc", "1");
		Handle_PCollection_HAsciiString GetDensValType() const;
		%feature("autodoc", "1");
		void Set(const Handle_PCollection_HAsciiString &theName, const Handle_PCollection_HAsciiString &theDescr, const Standard_Real theDensity, const Handle_PCollection_HAsciiString &theDensName, const Handle_PCollection_HAsciiString &theDensValType);
		%feature("autodoc", "1");
		PXCAFDoc_Material(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Handle_PCollection_HAsciiString _CSFDB_GetPXCAFDoc_MaterialmyName() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPXCAFDoc_MaterialmyName(const Handle_PCollection_HAsciiString &p);
		%feature("autodoc", "1");
		Handle_PCollection_HAsciiString _CSFDB_GetPXCAFDoc_MaterialmyDescr() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPXCAFDoc_MaterialmyDescr(const Handle_PCollection_HAsciiString &p);
		%feature("autodoc", "1");
		Standard_Real _CSFDB_GetPXCAFDoc_MaterialmyDensity() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPXCAFDoc_MaterialmyDensity(const Standard_Real p);
		%feature("autodoc", "1");
		Handle_PCollection_HAsciiString _CSFDB_GetPXCAFDoc_MaterialmyDensName() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPXCAFDoc_MaterialmyDensName(const Handle_PCollection_HAsciiString &p);
		%feature("autodoc", "1");
		Handle_PCollection_HAsciiString _CSFDB_GetPXCAFDoc_MaterialmyDensValType() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPXCAFDoc_MaterialmyDensValType(const Handle_PCollection_HAsciiString &p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PXCAFDoc_Material {
	Handle_PXCAFDoc_Material GetHandle() {
	return *(Handle_PXCAFDoc_Material*) &$self;
	}
};
%extend PXCAFDoc_Material {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") PXCAFDoc_Material::~PXCAFDoc_Material %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PXCAFDoc_Material {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PXCAFDoc_GraphNodeSequence;
class PXCAFDoc_GraphNodeSequence : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		PXCAFDoc_GraphNodeSequence();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Handle_PXCAFDoc_GraphNode First() const;
		%feature("autodoc", "1");
		Handle_PXCAFDoc_GraphNode Last() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const Handle_PXCAFDoc_GraphNode &T);
		%feature("autodoc", "1");
		void Append(const Handle_PXCAFDoc_GraphNodeSequence &S);
		%feature("autodoc", "1");
		void Prepend(const Handle_PXCAFDoc_GraphNode &T);
		%feature("autodoc", "1");
		void Prepend(const Handle_PXCAFDoc_GraphNodeSequence &S);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_PXCAFDoc_GraphNode &T);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_PXCAFDoc_GraphNodeSequence &S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_PXCAFDoc_GraphNode &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_PXCAFDoc_GraphNodeSequence &S);
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer I, const Standard_Integer J);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_GraphNodeSequence SubSequence(const Standard_Integer FromIndex, const Standard_Integer ToIndex) const;
		%feature("autodoc", "1");
		Handle_PXCAFDoc_GraphNodeSequence Split(const Standard_Integer Index);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_PXCAFDoc_GraphNode &T);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_GraphNode Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Handle_PXCAFDoc_GraphNode &T) const;
		%feature("autodoc", "1");
		Standard_Integer Location(const Standard_Integer N, const Handle_PXCAFDoc_GraphNode &T, const Standard_Integer FromIndex, const Standard_Integer ToIndex) const;
		%feature("autodoc", "1");
		Standard_Integer Location(const Standard_Integer N, const Handle_PXCAFDoc_GraphNode &T) const;
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);
		%feature("autodoc", "1");
		virtual		Handle_Standard_Persistent ShallowCopy() const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string ShallowDumpToString() {
			std::stringstream s;
			self->ShallowDump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		PXCAFDoc_GraphNodeSequence(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_SeqNodeOfGraphNodeSequence _CSFDB_GetPXCAFDoc_GraphNodeSequenceFirstItem() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPXCAFDoc_GraphNodeSequenceFirstItem(const Handle_PXCAFDoc_SeqNodeOfGraphNodeSequence &p);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_SeqNodeOfGraphNodeSequence _CSFDB_GetPXCAFDoc_GraphNodeSequenceLastItem() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPXCAFDoc_GraphNodeSequenceLastItem(const Handle_PXCAFDoc_SeqNodeOfGraphNodeSequence &p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPXCAFDoc_GraphNodeSequenceSize() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPXCAFDoc_GraphNodeSequenceSize(const Standard_Integer p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PXCAFDoc_GraphNodeSequence {
	Handle_PXCAFDoc_GraphNodeSequence GetHandle() {
	return *(Handle_PXCAFDoc_GraphNodeSequence*) &$self;
	}
};
%extend PXCAFDoc_GraphNodeSequence {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") PXCAFDoc_GraphNodeSequence::~PXCAFDoc_GraphNodeSequence %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PXCAFDoc_GraphNodeSequence {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PXCAFDoc_SeqExplorerOfGraphNodeSequence;
class PXCAFDoc_SeqExplorerOfGraphNodeSequence {
	public:
		%feature("autodoc", "1");
		PXCAFDoc_SeqExplorerOfGraphNodeSequence(const Handle_PXCAFDoc_GraphNodeSequence &S);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_GraphNode Value(const Standard_Integer Index);
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Handle_PXCAFDoc_GraphNode &T);
		%feature("autodoc", "1");
		Standard_Integer Location(const Standard_Integer N, const Handle_PXCAFDoc_GraphNode &T, const Standard_Integer FromIndex, const Standard_Integer ToIndex);
		%feature("autodoc", "1");
		Standard_Integer Location(const Standard_Integer N, const Handle_PXCAFDoc_GraphNode &T);

};
%feature("shadow") PXCAFDoc_SeqExplorerOfGraphNodeSequence::~PXCAFDoc_SeqExplorerOfGraphNodeSequence %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PXCAFDoc_SeqExplorerOfGraphNodeSequence {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PXCAFDoc_GraphNode;
class PXCAFDoc_GraphNode : public PDF_Attribute {
	public:
		%feature("autodoc", "1");
		PXCAFDoc_GraphNode();
		%feature("autodoc", "1");
		Standard_Integer SetFather(const Handle_PXCAFDoc_GraphNode &F);
		%feature("autodoc", "1");
		Standard_Integer SetChild(const Handle_PXCAFDoc_GraphNode &Ch);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_GraphNode GetFather(const Standard_Integer Findex) const;
		%feature("autodoc", "1");
		Handle_PXCAFDoc_GraphNode GetChild(const Standard_Integer Chindex) const;
		%feature("autodoc", "1");
		Standard_Integer FatherIndex(const Handle_PXCAFDoc_GraphNode &F) const;
		%feature("autodoc", "1");
		Standard_Integer ChildIndex(const Handle_PXCAFDoc_GraphNode &Ch) const;
		%feature("autodoc", "1");
		Standard_Integer NbFathers() const;
		%feature("autodoc", "1");
		Standard_Integer NbChildren() const;
		%feature("autodoc", "1");
		void SetGraphID(const Standard_GUID &GUID);
		%feature("autodoc", "1");
		Standard_GUID GetGraphID() const;
		%feature("autodoc", "1");
		PXCAFDoc_GraphNode(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_GraphNodeSequence _CSFDB_GetPXCAFDoc_GraphNodemyFathers() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPXCAFDoc_GraphNodemyFathers(const Handle_PXCAFDoc_GraphNodeSequence &p);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_GraphNodeSequence _CSFDB_GetPXCAFDoc_GraphNodemyChildren() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPXCAFDoc_GraphNodemyChildren(const Handle_PXCAFDoc_GraphNodeSequence &p);
		%feature("autodoc", "1");
		const Standard_GUID & _CSFDB_GetPXCAFDoc_GraphNodemyGraphID() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PXCAFDoc_GraphNode {
	Handle_PXCAFDoc_GraphNode GetHandle() {
	return *(Handle_PXCAFDoc_GraphNode*) &$self;
	}
};
%extend PXCAFDoc_GraphNode {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") PXCAFDoc_GraphNode::~PXCAFDoc_GraphNode %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PXCAFDoc_GraphNode {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PXCAFDoc_DimTolTool;
class PXCAFDoc_DimTolTool : public PDF_Attribute {
	public:
		%feature("autodoc", "1");
		PXCAFDoc_DimTolTool();
		%feature("autodoc", "1");
		PXCAFDoc_DimTolTool(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PXCAFDoc_DimTolTool {
	Handle_PXCAFDoc_DimTolTool GetHandle() {
	return *(Handle_PXCAFDoc_DimTolTool*) &$self;
	}
};
%extend PXCAFDoc_DimTolTool {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") PXCAFDoc_DimTolTool::~PXCAFDoc_DimTolTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PXCAFDoc_DimTolTool {
	void _kill_pointed() {
		delete $self;
	}
};
