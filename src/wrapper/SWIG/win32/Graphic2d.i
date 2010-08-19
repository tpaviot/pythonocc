/*

Copyright 2008-2010 Thomas Paviot (tpaviot@gmail.com)

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

$Revision
$Date
$Author
$HeaderURL

*/


%{
#ifdef WNT
#pragma warning(disable : 4716)
#endif
%}

%module Graphic2d
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include Graphic2d_renames.i


%include Graphic2d_required_python_modules.i


%include Graphic2d_dependencies.i


%include Graphic2d_headers.i

typedef Graphic2d_View * Graphic2d_ViewPtr;
typedef GGraphic2d_SetOfCurves Graphic2d_SetOfCurves;
typedef GGraphic2d_SequenceOfCurve Graphic2d_SequenceOfCurve;
typedef GGraphic2d_CurveDefinitionError Graphic2d_CurveDefinitionError;
typedef GGraphic2d_Curve Graphic2d_Curve;
typedef Graphic2d_GraphicObject * Graphic2d_GOPtr;

enum Graphic2d_DisplayStatus {
	Graphic2d_DS_DISPLAYED,
	Graphic2d_DS_ERASED,
	Graphic2d_DS_REMOVED,
	Graphic2d_DS_NONE,
	};

enum Graphic2d_TypeOfPrimitive {
	Graphic2d_TOP_UNKNOWN,
	Graphic2d_TOP_LINE,
	Graphic2d_TOP_MARKER,
	Graphic2d_TOP_TEXT,
	Graphic2d_TOP_IMAGE,
	};

enum Graphic2d_TypeOfComposition {
	Graphic2d_TOC_REPLACE,
	Graphic2d_TOC_POSTCONCATENATE,
	};

enum Graphic2d_TypeOfAlignment {
	Graphic2d_TOA_LEFT,
	Graphic2d_TOA_CENTER,
	Graphic2d_TOA_RIGHT,
	Graphic2d_TOA_TOPLEFT,
	Graphic2d_TOA_TOPCENTER,
	Graphic2d_TOA_TOPRIGHT,
	Graphic2d_TOA_MEDIUMLEFT,
	Graphic2d_TOA_MEDIUMCENTER,
	Graphic2d_TOA_MEDIUMRIGHT,
	Graphic2d_TOA_BOTTOMLEFT,
	Graphic2d_TOA_BOTTOMCENTER,
	Graphic2d_TOA_BOTTOMRIGHT,
	};

enum Graphic2d_TypeOfPolygonFilling {
	Graphic2d_TOPF_EMPTY,
	Graphic2d_TOPF_FILLED,
	Graphic2d_TOPF_PATTERNED,
	};

enum Graphic2d_PickMode {
	Graphic2d_PM_INCLUDE,
	Graphic2d_PM_EXCLUDE,
	Graphic2d_PM_INTERSECT,
	};

enum Graphic2d_TypeOfFrame {
	Graphic2d_TOF_UNKNOWN,
	Graphic2d_TOF_RECTANGULAR,
	Graphic2d_TOF_CIRCULAR,
	};



%nodefaultctor Handle_Graphic2d_Primitive;
class Handle_Graphic2d_Primitive : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Graphic2d_Primitive();
		%feature("autodoc", "1");
		Handle_Graphic2d_Primitive(const Handle_Graphic2d_Primitive &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_Primitive(const Graphic2d_Primitive *anItem);
		%feature("autodoc", "1");
		Handle_Graphic2d_Primitive & operator=(const Handle_Graphic2d_Primitive &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_Primitive & operator=(const Graphic2d_Primitive *anItem);
		%feature("autodoc", "1");
		static		Handle_Graphic2d_Primitive const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic2d_Primitive {
	Graphic2d_Primitive* GetObject() {
	return (Graphic2d_Primitive*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic2d_Primitive::~Handle_Graphic2d_Primitive %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic2d_Primitive {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic2d_Line;
class Handle_Graphic2d_Line : public Handle_Graphic2d_Primitive {
	public:
		%feature("autodoc", "1");
		Handle_Graphic2d_Line();
		%feature("autodoc", "1");
		Handle_Graphic2d_Line(const Handle_Graphic2d_Line &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_Line(const Graphic2d_Line *anItem);
		%feature("autodoc", "1");
		Handle_Graphic2d_Line & operator=(const Handle_Graphic2d_Line &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_Line & operator=(const Graphic2d_Line *anItem);
		%feature("autodoc", "1");
		static		Handle_Graphic2d_Line const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic2d_Line {
	Graphic2d_Line* GetObject() {
	return (Graphic2d_Line*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic2d_Line::~Handle_Graphic2d_Line %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic2d_Line {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic2d_Marker;
class Handle_Graphic2d_Marker : public Handle_Graphic2d_Line {
	public:
		%feature("autodoc", "1");
		Handle_Graphic2d_Marker();
		%feature("autodoc", "1");
		Handle_Graphic2d_Marker(const Handle_Graphic2d_Marker &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_Marker(const Graphic2d_Marker *anItem);
		%feature("autodoc", "1");
		Handle_Graphic2d_Marker & operator=(const Handle_Graphic2d_Marker &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_Marker & operator=(const Graphic2d_Marker *anItem);
		%feature("autodoc", "1");
		static		Handle_Graphic2d_Marker const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic2d_Marker {
	Graphic2d_Marker* GetObject() {
	return (Graphic2d_Marker*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic2d_Marker::~Handle_Graphic2d_Marker %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic2d_Marker {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic2d_SetOfMarkers;
class Handle_Graphic2d_SetOfMarkers : public Handle_Graphic2d_Line {
	public:
		%feature("autodoc", "1");
		Handle_Graphic2d_SetOfMarkers();
		%feature("autodoc", "1");
		Handle_Graphic2d_SetOfMarkers(const Handle_Graphic2d_SetOfMarkers &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_SetOfMarkers(const Graphic2d_SetOfMarkers *anItem);
		%feature("autodoc", "1");
		Handle_Graphic2d_SetOfMarkers & operator=(const Handle_Graphic2d_SetOfMarkers &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_SetOfMarkers & operator=(const Graphic2d_SetOfMarkers *anItem);
		%feature("autodoc", "1");
		static		Handle_Graphic2d_SetOfMarkers const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic2d_SetOfMarkers {
	Graphic2d_SetOfMarkers* GetObject() {
	return (Graphic2d_SetOfMarkers*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic2d_SetOfMarkers::~Handle_Graphic2d_SetOfMarkers %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic2d_SetOfMarkers {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic2d_EllipsDefinitionError;
class Handle_Graphic2d_EllipsDefinitionError : public Handle_Standard_OutOfRange {
	public:
		%feature("autodoc", "1");
		Handle_Graphic2d_EllipsDefinitionError();
		%feature("autodoc", "1");
		Handle_Graphic2d_EllipsDefinitionError(const Handle_Graphic2d_EllipsDefinitionError &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_EllipsDefinitionError(const Graphic2d_EllipsDefinitionError *anItem);
		%feature("autodoc", "1");
		Handle_Graphic2d_EllipsDefinitionError & operator=(const Handle_Graphic2d_EllipsDefinitionError &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_EllipsDefinitionError & operator=(const Graphic2d_EllipsDefinitionError *anItem);
		%feature("autodoc", "1");
		static		Handle_Graphic2d_EllipsDefinitionError const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic2d_EllipsDefinitionError {
	Graphic2d_EllipsDefinitionError* GetObject() {
	return (Graphic2d_EllipsDefinitionError*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic2d_EllipsDefinitionError::~Handle_Graphic2d_EllipsDefinitionError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic2d_EllipsDefinitionError {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic2d_Text;
class Handle_Graphic2d_Text : public Handle_Graphic2d_Primitive {
	public:
		%feature("autodoc", "1");
		Handle_Graphic2d_Text();
		%feature("autodoc", "1");
		Handle_Graphic2d_Text(const Handle_Graphic2d_Text &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_Text(const Graphic2d_Text *anItem);
		%feature("autodoc", "1");
		Handle_Graphic2d_Text & operator=(const Handle_Graphic2d_Text &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_Text & operator=(const Graphic2d_Text *anItem);
		%feature("autodoc", "1");
		static		Handle_Graphic2d_Text const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic2d_Text {
	Graphic2d_Text* GetObject() {
	return (Graphic2d_Text*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic2d_Text::~Handle_Graphic2d_Text %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic2d_Text {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic2d_HidingText;
class Handle_Graphic2d_HidingText : public Handle_Graphic2d_Text {
	public:
		%feature("autodoc", "1");
		Handle_Graphic2d_HidingText();
		%feature("autodoc", "1");
		Handle_Graphic2d_HidingText(const Handle_Graphic2d_HidingText &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_HidingText(const Graphic2d_HidingText *anItem);
		%feature("autodoc", "1");
		Handle_Graphic2d_HidingText & operator=(const Handle_Graphic2d_HidingText &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_HidingText & operator=(const Graphic2d_HidingText *anItem);
		%feature("autodoc", "1");
		static		Handle_Graphic2d_HidingText const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic2d_HidingText {
	Graphic2d_HidingText* GetObject() {
	return (Graphic2d_HidingText*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic2d_HidingText::~Handle_Graphic2d_HidingText %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic2d_HidingText {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic2d_Drawer;
class Handle_Graphic2d_Drawer : public Handle_Standard_Transient {
	public:
		%feature("autodoc", "1");
		Handle_Graphic2d_Drawer();
		%feature("autodoc", "1");
		Handle_Graphic2d_Drawer(const Handle_Graphic2d_Drawer &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_Drawer(const Graphic2d_Drawer *anItem);
		%feature("autodoc", "1");
		Handle_Graphic2d_Drawer & operator=(const Handle_Graphic2d_Drawer &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_Drawer & operator=(const Graphic2d_Drawer *anItem);
		%feature("autodoc", "1");
		static		Handle_Graphic2d_Drawer const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic2d_Drawer {
	Graphic2d_Drawer* GetObject() {
	return (Graphic2d_Drawer*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic2d_Drawer::~Handle_Graphic2d_Drawer %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic2d_Drawer {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic2d_TransientManager;
class Handle_Graphic2d_TransientManager : public Handle_Graphic2d_Drawer {
	public:
		%feature("autodoc", "1");
		Handle_Graphic2d_TransientManager();
		%feature("autodoc", "1");
		Handle_Graphic2d_TransientManager(const Handle_Graphic2d_TransientManager &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_TransientManager(const Graphic2d_TransientManager *anItem);
		%feature("autodoc", "1");
		Handle_Graphic2d_TransientManager & operator=(const Handle_Graphic2d_TransientManager &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_TransientManager & operator=(const Graphic2d_TransientManager *anItem);
		%feature("autodoc", "1");
		static		Handle_Graphic2d_TransientManager const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic2d_TransientManager {
	Graphic2d_TransientManager* GetObject() {
	return (Graphic2d_TransientManager*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic2d_TransientManager::~Handle_Graphic2d_TransientManager %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic2d_TransientManager {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic2d_SetOfSegments;
class Handle_Graphic2d_SetOfSegments : public Handle_Graphic2d_Line {
	public:
		%feature("autodoc", "1");
		Handle_Graphic2d_SetOfSegments();
		%feature("autodoc", "1");
		Handle_Graphic2d_SetOfSegments(const Handle_Graphic2d_SetOfSegments &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_SetOfSegments(const Graphic2d_SetOfSegments *anItem);
		%feature("autodoc", "1");
		Handle_Graphic2d_SetOfSegments & operator=(const Handle_Graphic2d_SetOfSegments &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_SetOfSegments & operator=(const Graphic2d_SetOfSegments *anItem);
		%feature("autodoc", "1");
		static		Handle_Graphic2d_SetOfSegments const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic2d_SetOfSegments {
	Graphic2d_SetOfSegments* GetObject() {
	return (Graphic2d_SetOfSegments*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic2d_SetOfSegments::~Handle_Graphic2d_SetOfSegments %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic2d_SetOfSegments {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic2d_HSequenceOfVertex;
class Handle_Graphic2d_HSequenceOfVertex : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Graphic2d_HSequenceOfVertex();
		%feature("autodoc", "1");
		Handle_Graphic2d_HSequenceOfVertex(const Handle_Graphic2d_HSequenceOfVertex &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_HSequenceOfVertex(const Graphic2d_HSequenceOfVertex *anItem);
		%feature("autodoc", "1");
		Handle_Graphic2d_HSequenceOfVertex & operator=(const Handle_Graphic2d_HSequenceOfVertex &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_HSequenceOfVertex & operator=(const Graphic2d_HSequenceOfVertex *anItem);
		%feature("autodoc", "1");
		static		Handle_Graphic2d_HSequenceOfVertex const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic2d_HSequenceOfVertex {
	Graphic2d_HSequenceOfVertex* GetObject() {
	return (Graphic2d_HSequenceOfVertex*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic2d_HSequenceOfVertex::~Handle_Graphic2d_HSequenceOfVertex %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic2d_HSequenceOfVertex {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic2d_ViewMapping;
class Handle_Graphic2d_ViewMapping : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Graphic2d_ViewMapping();
		%feature("autodoc", "1");
		Handle_Graphic2d_ViewMapping(const Handle_Graphic2d_ViewMapping &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_ViewMapping(const Graphic2d_ViewMapping *anItem);
		%feature("autodoc", "1");
		Handle_Graphic2d_ViewMapping & operator=(const Handle_Graphic2d_ViewMapping &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_ViewMapping & operator=(const Graphic2d_ViewMapping *anItem);
		%feature("autodoc", "1");
		static		Handle_Graphic2d_ViewMapping const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic2d_ViewMapping {
	Graphic2d_ViewMapping* GetObject() {
	return (Graphic2d_ViewMapping*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic2d_ViewMapping::~Handle_Graphic2d_ViewMapping %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic2d_ViewMapping {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic2d_VectorialMarker;
class Handle_Graphic2d_VectorialMarker : public Handle_Graphic2d_Line {
	public:
		%feature("autodoc", "1");
		Handle_Graphic2d_VectorialMarker();
		%feature("autodoc", "1");
		Handle_Graphic2d_VectorialMarker(const Handle_Graphic2d_VectorialMarker &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_VectorialMarker(const Graphic2d_VectorialMarker *anItem);
		%feature("autodoc", "1");
		Handle_Graphic2d_VectorialMarker & operator=(const Handle_Graphic2d_VectorialMarker &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_VectorialMarker & operator=(const Graphic2d_VectorialMarker *anItem);
		%feature("autodoc", "1");
		static		Handle_Graphic2d_VectorialMarker const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic2d_VectorialMarker {
	Graphic2d_VectorialMarker* GetObject() {
	return (Graphic2d_VectorialMarker*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic2d_VectorialMarker::~Handle_Graphic2d_VectorialMarker %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic2d_VectorialMarker {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic2d_EllipsMarker;
class Handle_Graphic2d_EllipsMarker : public Handle_Graphic2d_VectorialMarker {
	public:
		%feature("autodoc", "1");
		Handle_Graphic2d_EllipsMarker();
		%feature("autodoc", "1");
		Handle_Graphic2d_EllipsMarker(const Handle_Graphic2d_EllipsMarker &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_EllipsMarker(const Graphic2d_EllipsMarker *anItem);
		%feature("autodoc", "1");
		Handle_Graphic2d_EllipsMarker & operator=(const Handle_Graphic2d_EllipsMarker &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_EllipsMarker & operator=(const Graphic2d_EllipsMarker *anItem);
		%feature("autodoc", "1");
		static		Handle_Graphic2d_EllipsMarker const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic2d_EllipsMarker {
	Graphic2d_EllipsMarker* GetObject() {
	return (Graphic2d_EllipsMarker*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic2d_EllipsMarker::~Handle_Graphic2d_EllipsMarker %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic2d_EllipsMarker {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic2d_PolylineDefinitionError;
class Handle_Graphic2d_PolylineDefinitionError : public Handle_Standard_OutOfRange {
	public:
		%feature("autodoc", "1");
		Handle_Graphic2d_PolylineDefinitionError();
		%feature("autodoc", "1");
		Handle_Graphic2d_PolylineDefinitionError(const Handle_Graphic2d_PolylineDefinitionError &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_PolylineDefinitionError(const Graphic2d_PolylineDefinitionError *anItem);
		%feature("autodoc", "1");
		Handle_Graphic2d_PolylineDefinitionError & operator=(const Handle_Graphic2d_PolylineDefinitionError &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_PolylineDefinitionError & operator=(const Graphic2d_PolylineDefinitionError *anItem);
		%feature("autodoc", "1");
		static		Handle_Graphic2d_PolylineDefinitionError const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic2d_PolylineDefinitionError {
	Graphic2d_PolylineDefinitionError* GetObject() {
	return (Graphic2d_PolylineDefinitionError*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic2d_PolylineDefinitionError::~Handle_Graphic2d_PolylineDefinitionError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic2d_PolylineDefinitionError {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic2d_Segment;
class Handle_Graphic2d_Segment : public Handle_Graphic2d_Line {
	public:
		%feature("autodoc", "1");
		Handle_Graphic2d_Segment();
		%feature("autodoc", "1");
		Handle_Graphic2d_Segment(const Handle_Graphic2d_Segment &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_Segment(const Graphic2d_Segment *anItem);
		%feature("autodoc", "1");
		Handle_Graphic2d_Segment & operator=(const Handle_Graphic2d_Segment &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_Segment & operator=(const Graphic2d_Segment *anItem);
		%feature("autodoc", "1");
		static		Handle_Graphic2d_Segment const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic2d_Segment {
	Graphic2d_Segment* GetObject() {
	return (Graphic2d_Segment*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic2d_Segment::~Handle_Graphic2d_Segment %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic2d_Segment {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic2d_Circle;
class Handle_Graphic2d_Circle : public Handle_Graphic2d_Line {
	public:
		%feature("autodoc", "1");
		Handle_Graphic2d_Circle();
		%feature("autodoc", "1");
		Handle_Graphic2d_Circle(const Handle_Graphic2d_Circle &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_Circle(const Graphic2d_Circle *anItem);
		%feature("autodoc", "1");
		Handle_Graphic2d_Circle & operator=(const Handle_Graphic2d_Circle &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_Circle & operator=(const Graphic2d_Circle *anItem);
		%feature("autodoc", "1");
		static		Handle_Graphic2d_Circle const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic2d_Circle {
	Graphic2d_Circle* GetObject() {
	return (Graphic2d_Circle*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic2d_Circle::~Handle_Graphic2d_Circle %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic2d_Circle {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic2d_HArray1OfVertex;
class Handle_Graphic2d_HArray1OfVertex : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Graphic2d_HArray1OfVertex();
		%feature("autodoc", "1");
		Handle_Graphic2d_HArray1OfVertex(const Handle_Graphic2d_HArray1OfVertex &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_HArray1OfVertex(const Graphic2d_HArray1OfVertex *anItem);
		%feature("autodoc", "1");
		Handle_Graphic2d_HArray1OfVertex & operator=(const Handle_Graphic2d_HArray1OfVertex &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_HArray1OfVertex & operator=(const Graphic2d_HArray1OfVertex *anItem);
		%feature("autodoc", "1");
		static		Handle_Graphic2d_HArray1OfVertex const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic2d_HArray1OfVertex {
	Graphic2d_HArray1OfVertex* GetObject() {
	return (Graphic2d_HArray1OfVertex*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic2d_HArray1OfVertex::~Handle_Graphic2d_HArray1OfVertex %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic2d_HArray1OfVertex {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic2d_Polyline;
class Handle_Graphic2d_Polyline : public Handle_Graphic2d_Line {
	public:
		%feature("autodoc", "1");
		Handle_Graphic2d_Polyline();
		%feature("autodoc", "1");
		Handle_Graphic2d_Polyline(const Handle_Graphic2d_Polyline &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_Polyline(const Graphic2d_Polyline *anItem);
		%feature("autodoc", "1");
		Handle_Graphic2d_Polyline & operator=(const Handle_Graphic2d_Polyline &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_Polyline & operator=(const Graphic2d_Polyline *anItem);
		%feature("autodoc", "1");
		static		Handle_Graphic2d_Polyline const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic2d_Polyline {
	Graphic2d_Polyline* GetObject() {
	return (Graphic2d_Polyline*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic2d_Polyline::~Handle_Graphic2d_Polyline %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic2d_Polyline {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic2d_Paragraph;
class Handle_Graphic2d_Paragraph : public Handle_Graphic2d_Primitive {
	public:
		%feature("autodoc", "1");
		Handle_Graphic2d_Paragraph();
		%feature("autodoc", "1");
		Handle_Graphic2d_Paragraph(const Handle_Graphic2d_Paragraph &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_Paragraph(const Graphic2d_Paragraph *anItem);
		%feature("autodoc", "1");
		Handle_Graphic2d_Paragraph & operator=(const Handle_Graphic2d_Paragraph &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_Paragraph & operator=(const Graphic2d_Paragraph *anItem);
		%feature("autodoc", "1");
		static		Handle_Graphic2d_Paragraph const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic2d_Paragraph {
	Graphic2d_Paragraph* GetObject() {
	return (Graphic2d_Paragraph*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic2d_Paragraph::~Handle_Graphic2d_Paragraph %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic2d_Paragraph {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic2d_InfiniteLineDefinitionError;
class Handle_Graphic2d_InfiniteLineDefinitionError : public Handle_Standard_OutOfRange {
	public:
		%feature("autodoc", "1");
		Handle_Graphic2d_InfiniteLineDefinitionError();
		%feature("autodoc", "1");
		Handle_Graphic2d_InfiniteLineDefinitionError(const Handle_Graphic2d_InfiniteLineDefinitionError &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_InfiniteLineDefinitionError(const Graphic2d_InfiniteLineDefinitionError *anItem);
		%feature("autodoc", "1");
		Handle_Graphic2d_InfiniteLineDefinitionError & operator=(const Handle_Graphic2d_InfiniteLineDefinitionError &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_InfiniteLineDefinitionError & operator=(const Graphic2d_InfiniteLineDefinitionError *anItem);
		%feature("autodoc", "1");
		static		Handle_Graphic2d_InfiniteLineDefinitionError const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic2d_InfiniteLineDefinitionError {
	Graphic2d_InfiniteLineDefinitionError* GetObject() {
	return (Graphic2d_InfiniteLineDefinitionError*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic2d_InfiniteLineDefinitionError::~Handle_Graphic2d_InfiniteLineDefinitionError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic2d_InfiniteLineDefinitionError {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic2d_PolylineMarker;
class Handle_Graphic2d_PolylineMarker : public Handle_Graphic2d_VectorialMarker {
	public:
		%feature("autodoc", "1");
		Handle_Graphic2d_PolylineMarker();
		%feature("autodoc", "1");
		Handle_Graphic2d_PolylineMarker(const Handle_Graphic2d_PolylineMarker &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_PolylineMarker(const Graphic2d_PolylineMarker *anItem);
		%feature("autodoc", "1");
		Handle_Graphic2d_PolylineMarker & operator=(const Handle_Graphic2d_PolylineMarker &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_PolylineMarker & operator=(const Graphic2d_PolylineMarker *anItem);
		%feature("autodoc", "1");
		static		Handle_Graphic2d_PolylineMarker const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic2d_PolylineMarker {
	Graphic2d_PolylineMarker* GetObject() {
	return (Graphic2d_PolylineMarker*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic2d_PolylineMarker::~Handle_Graphic2d_PolylineMarker %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic2d_PolylineMarker {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic2d_CircleDefinitionError;
class Handle_Graphic2d_CircleDefinitionError : public Handle_Standard_OutOfRange {
	public:
		%feature("autodoc", "1");
		Handle_Graphic2d_CircleDefinitionError();
		%feature("autodoc", "1");
		Handle_Graphic2d_CircleDefinitionError(const Handle_Graphic2d_CircleDefinitionError &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_CircleDefinitionError(const Graphic2d_CircleDefinitionError *anItem);
		%feature("autodoc", "1");
		Handle_Graphic2d_CircleDefinitionError & operator=(const Handle_Graphic2d_CircleDefinitionError &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_CircleDefinitionError & operator=(const Graphic2d_CircleDefinitionError *anItem);
		%feature("autodoc", "1");
		static		Handle_Graphic2d_CircleDefinitionError const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic2d_CircleDefinitionError {
	Graphic2d_CircleDefinitionError* GetObject() {
	return (Graphic2d_CircleDefinitionError*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic2d_CircleDefinitionError::~Handle_Graphic2d_CircleDefinitionError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic2d_CircleDefinitionError {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic2d_SequenceNodeOfSequenceOfPolyline;
class Handle_Graphic2d_SequenceNodeOfSequenceOfPolyline : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_Graphic2d_SequenceNodeOfSequenceOfPolyline();
		%feature("autodoc", "1");
		Handle_Graphic2d_SequenceNodeOfSequenceOfPolyline(const Handle_Graphic2d_SequenceNodeOfSequenceOfPolyline &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_SequenceNodeOfSequenceOfPolyline(const Graphic2d_SequenceNodeOfSequenceOfPolyline *anItem);
		%feature("autodoc", "1");
		Handle_Graphic2d_SequenceNodeOfSequenceOfPolyline & operator=(const Handle_Graphic2d_SequenceNodeOfSequenceOfPolyline &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_SequenceNodeOfSequenceOfPolyline & operator=(const Graphic2d_SequenceNodeOfSequenceOfPolyline *anItem);
		%feature("autodoc", "1");
		static		Handle_Graphic2d_SequenceNodeOfSequenceOfPolyline const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic2d_SequenceNodeOfSequenceOfPolyline {
	Graphic2d_SequenceNodeOfSequenceOfPolyline* GetObject() {
	return (Graphic2d_SequenceNodeOfSequenceOfPolyline*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic2d_SequenceNodeOfSequenceOfPolyline::~Handle_Graphic2d_SequenceNodeOfSequenceOfPolyline %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic2d_SequenceNodeOfSequenceOfPolyline {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic2d_SetOfPolylines;
class Handle_Graphic2d_SetOfPolylines : public Handle_Graphic2d_Line {
	public:
		%feature("autodoc", "1");
		Handle_Graphic2d_SetOfPolylines();
		%feature("autodoc", "1");
		Handle_Graphic2d_SetOfPolylines(const Handle_Graphic2d_SetOfPolylines &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_SetOfPolylines(const Graphic2d_SetOfPolylines *anItem);
		%feature("autodoc", "1");
		Handle_Graphic2d_SetOfPolylines & operator=(const Handle_Graphic2d_SetOfPolylines &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_SetOfPolylines & operator=(const Graphic2d_SetOfPolylines *anItem);
		%feature("autodoc", "1");
		static		Handle_Graphic2d_SetOfPolylines const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic2d_SetOfPolylines {
	Graphic2d_SetOfPolylines* GetObject() {
	return (Graphic2d_SetOfPolylines*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic2d_SetOfPolylines::~Handle_Graphic2d_SetOfPolylines %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic2d_SetOfPolylines {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic2d_ImageDefinitionError;
class Handle_Graphic2d_ImageDefinitionError : public Handle_Standard_OutOfRange {
	public:
		%feature("autodoc", "1");
		Handle_Graphic2d_ImageDefinitionError();
		%feature("autodoc", "1");
		Handle_Graphic2d_ImageDefinitionError(const Handle_Graphic2d_ImageDefinitionError &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_ImageDefinitionError(const Graphic2d_ImageDefinitionError *anItem);
		%feature("autodoc", "1");
		Handle_Graphic2d_ImageDefinitionError & operator=(const Handle_Graphic2d_ImageDefinitionError &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_ImageDefinitionError & operator=(const Graphic2d_ImageDefinitionError *anItem);
		%feature("autodoc", "1");
		static		Handle_Graphic2d_ImageDefinitionError const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic2d_ImageDefinitionError {
	Graphic2d_ImageDefinitionError* GetObject() {
	return (Graphic2d_ImageDefinitionError*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic2d_ImageDefinitionError::~Handle_Graphic2d_ImageDefinitionError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic2d_ImageDefinitionError {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic2d_OverrideColorError;
class Handle_Graphic2d_OverrideColorError : public Handle_Standard_OutOfRange {
	public:
		%feature("autodoc", "1");
		Handle_Graphic2d_OverrideColorError();
		%feature("autodoc", "1");
		Handle_Graphic2d_OverrideColorError(const Handle_Graphic2d_OverrideColorError &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_OverrideColorError(const Graphic2d_OverrideColorError *anItem);
		%feature("autodoc", "1");
		Handle_Graphic2d_OverrideColorError & operator=(const Handle_Graphic2d_OverrideColorError &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_OverrideColorError & operator=(const Graphic2d_OverrideColorError *anItem);
		%feature("autodoc", "1");
		static		Handle_Graphic2d_OverrideColorError const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic2d_OverrideColorError {
	Graphic2d_OverrideColorError* GetObject() {
	return (Graphic2d_OverrideColorError*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic2d_OverrideColorError::~Handle_Graphic2d_OverrideColorError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic2d_OverrideColorError {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic2d_GraphicObject;
class Handle_Graphic2d_GraphicObject : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Graphic2d_GraphicObject();
		%feature("autodoc", "1");
		Handle_Graphic2d_GraphicObject(const Handle_Graphic2d_GraphicObject &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_GraphicObject(const Graphic2d_GraphicObject *anItem);
		%feature("autodoc", "1");
		Handle_Graphic2d_GraphicObject & operator=(const Handle_Graphic2d_GraphicObject &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_GraphicObject & operator=(const Graphic2d_GraphicObject *anItem);
		%feature("autodoc", "1");
		static		Handle_Graphic2d_GraphicObject const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic2d_GraphicObject {
	Graphic2d_GraphicObject* GetObject() {
	return (Graphic2d_GraphicObject*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic2d_GraphicObject::~Handle_Graphic2d_GraphicObject %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic2d_GraphicObject {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic2d_HidingGraphicObject;
class Handle_Graphic2d_HidingGraphicObject : public Handle_Graphic2d_GraphicObject {
	public:
		%feature("autodoc", "1");
		Handle_Graphic2d_HidingGraphicObject();
		%feature("autodoc", "1");
		Handle_Graphic2d_HidingGraphicObject(const Handle_Graphic2d_HidingGraphicObject &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_HidingGraphicObject(const Graphic2d_HidingGraphicObject *anItem);
		%feature("autodoc", "1");
		Handle_Graphic2d_HidingGraphicObject & operator=(const Handle_Graphic2d_HidingGraphicObject &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_HidingGraphicObject & operator=(const Graphic2d_HidingGraphicObject *anItem);
		%feature("autodoc", "1");
		static		Handle_Graphic2d_HidingGraphicObject const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic2d_HidingGraphicObject {
	Graphic2d_HidingGraphicObject* GetObject() {
	return (Graphic2d_HidingGraphicObject*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic2d_HidingGraphicObject::~Handle_Graphic2d_HidingGraphicObject %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic2d_HidingGraphicObject {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic2d_DisplayList;
class Handle_Graphic2d_DisplayList : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Graphic2d_DisplayList();
		%feature("autodoc", "1");
		Handle_Graphic2d_DisplayList(const Handle_Graphic2d_DisplayList &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_DisplayList(const Graphic2d_DisplayList *anItem);
		%feature("autodoc", "1");
		Handle_Graphic2d_DisplayList & operator=(const Handle_Graphic2d_DisplayList &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_DisplayList & operator=(const Graphic2d_DisplayList *anItem);
		%feature("autodoc", "1");
		static		Handle_Graphic2d_DisplayList const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic2d_DisplayList {
	Graphic2d_DisplayList* GetObject() {
	return (Graphic2d_DisplayList*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic2d_DisplayList::~Handle_Graphic2d_DisplayList %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic2d_DisplayList {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic2d_DetectionColorError;
class Handle_Graphic2d_DetectionColorError : public Handle_Standard_OutOfRange {
	public:
		%feature("autodoc", "1");
		Handle_Graphic2d_DetectionColorError();
		%feature("autodoc", "1");
		Handle_Graphic2d_DetectionColorError(const Handle_Graphic2d_DetectionColorError &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_DetectionColorError(const Graphic2d_DetectionColorError *anItem);
		%feature("autodoc", "1");
		Handle_Graphic2d_DetectionColorError & operator=(const Handle_Graphic2d_DetectionColorError &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_DetectionColorError & operator=(const Graphic2d_DetectionColorError *anItem);
		%feature("autodoc", "1");
		static		Handle_Graphic2d_DetectionColorError const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic2d_DetectionColorError {
	Graphic2d_DetectionColorError* GetObject() {
	return (Graphic2d_DetectionColorError*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic2d_DetectionColorError::~Handle_Graphic2d_DetectionColorError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic2d_DetectionColorError {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic2d_BufferList;
class Handle_Graphic2d_BufferList : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Graphic2d_BufferList();
		%feature("autodoc", "1");
		Handle_Graphic2d_BufferList(const Handle_Graphic2d_BufferList &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_BufferList(const Graphic2d_BufferList *anItem);
		%feature("autodoc", "1");
		Handle_Graphic2d_BufferList & operator=(const Handle_Graphic2d_BufferList &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_BufferList & operator=(const Graphic2d_BufferList *anItem);
		%feature("autodoc", "1");
		static		Handle_Graphic2d_BufferList const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic2d_BufferList {
	Graphic2d_BufferList* GetObject() {
	return (Graphic2d_BufferList*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic2d_BufferList::~Handle_Graphic2d_BufferList %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic2d_BufferList {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic2d_MarkerDefinitionError;
class Handle_Graphic2d_MarkerDefinitionError : public Handle_Standard_OutOfRange {
	public:
		%feature("autodoc", "1");
		Handle_Graphic2d_MarkerDefinitionError();
		%feature("autodoc", "1");
		Handle_Graphic2d_MarkerDefinitionError(const Handle_Graphic2d_MarkerDefinitionError &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_MarkerDefinitionError(const Graphic2d_MarkerDefinitionError *anItem);
		%feature("autodoc", "1");
		Handle_Graphic2d_MarkerDefinitionError & operator=(const Handle_Graphic2d_MarkerDefinitionError &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_MarkerDefinitionError & operator=(const Graphic2d_MarkerDefinitionError *anItem);
		%feature("autodoc", "1");
		static		Handle_Graphic2d_MarkerDefinitionError const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic2d_MarkerDefinitionError {
	Graphic2d_MarkerDefinitionError* GetObject() {
	return (Graphic2d_MarkerDefinitionError*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic2d_MarkerDefinitionError::~Handle_Graphic2d_MarkerDefinitionError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic2d_MarkerDefinitionError {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic2d_Ellips;
class Handle_Graphic2d_Ellips : public Handle_Graphic2d_Line {
	public:
		%feature("autodoc", "1");
		Handle_Graphic2d_Ellips();
		%feature("autodoc", "1");
		Handle_Graphic2d_Ellips(const Handle_Graphic2d_Ellips &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_Ellips(const Graphic2d_Ellips *anItem);
		%feature("autodoc", "1");
		Handle_Graphic2d_Ellips & operator=(const Handle_Graphic2d_Ellips &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_Ellips & operator=(const Graphic2d_Ellips *anItem);
		%feature("autodoc", "1");
		static		Handle_Graphic2d_Ellips const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic2d_Ellips {
	Graphic2d_Ellips* GetObject() {
	return (Graphic2d_Ellips*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic2d_Ellips::~Handle_Graphic2d_Ellips %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic2d_Ellips {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic2d_View;
class Handle_Graphic2d_View : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Graphic2d_View();
		%feature("autodoc", "1");
		Handle_Graphic2d_View(const Handle_Graphic2d_View &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_View(const Graphic2d_View *anItem);
		%feature("autodoc", "1");
		Handle_Graphic2d_View & operator=(const Handle_Graphic2d_View &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_View & operator=(const Graphic2d_View *anItem);
		%feature("autodoc", "1");
		static		Handle_Graphic2d_View const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic2d_View {
	Graphic2d_View* GetObject() {
	return (Graphic2d_View*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic2d_View::~Handle_Graphic2d_View %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic2d_View {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic2d_TransientDefinitionError;
class Handle_Graphic2d_TransientDefinitionError : public Handle_Standard_OutOfRange {
	public:
		%feature("autodoc", "1");
		Handle_Graphic2d_TransientDefinitionError();
		%feature("autodoc", "1");
		Handle_Graphic2d_TransientDefinitionError(const Handle_Graphic2d_TransientDefinitionError &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_TransientDefinitionError(const Graphic2d_TransientDefinitionError *anItem);
		%feature("autodoc", "1");
		Handle_Graphic2d_TransientDefinitionError & operator=(const Handle_Graphic2d_TransientDefinitionError &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_TransientDefinitionError & operator=(const Graphic2d_TransientDefinitionError *anItem);
		%feature("autodoc", "1");
		static		Handle_Graphic2d_TransientDefinitionError const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic2d_TransientDefinitionError {
	Graphic2d_TransientDefinitionError* GetObject() {
	return (Graphic2d_TransientDefinitionError*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic2d_TransientDefinitionError::~Handle_Graphic2d_TransientDefinitionError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic2d_TransientDefinitionError {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic2d_DrawerDefinitionError;
class Handle_Graphic2d_DrawerDefinitionError : public Handle_Standard_OutOfRange {
	public:
		%feature("autodoc", "1");
		Handle_Graphic2d_DrawerDefinitionError();
		%feature("autodoc", "1");
		Handle_Graphic2d_DrawerDefinitionError(const Handle_Graphic2d_DrawerDefinitionError &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_DrawerDefinitionError(const Graphic2d_DrawerDefinitionError *anItem);
		%feature("autodoc", "1");
		Handle_Graphic2d_DrawerDefinitionError & operator=(const Handle_Graphic2d_DrawerDefinitionError &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_DrawerDefinitionError & operator=(const Graphic2d_DrawerDefinitionError *anItem);
		%feature("autodoc", "1");
		static		Handle_Graphic2d_DrawerDefinitionError const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic2d_DrawerDefinitionError {
	Graphic2d_DrawerDefinitionError* GetObject() {
	return (Graphic2d_DrawerDefinitionError*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic2d_DrawerDefinitionError::~Handle_Graphic2d_DrawerDefinitionError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic2d_DrawerDefinitionError {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic2d_Buffer;
class Handle_Graphic2d_Buffer : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Graphic2d_Buffer();
		%feature("autodoc", "1");
		Handle_Graphic2d_Buffer(const Handle_Graphic2d_Buffer &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_Buffer(const Graphic2d_Buffer *anItem);
		%feature("autodoc", "1");
		Handle_Graphic2d_Buffer & operator=(const Handle_Graphic2d_Buffer &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_Buffer & operator=(const Graphic2d_Buffer *anItem);
		%feature("autodoc", "1");
		static		Handle_Graphic2d_Buffer const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic2d_Buffer {
	Graphic2d_Buffer* GetObject() {
	return (Graphic2d_Buffer*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic2d_Buffer::~Handle_Graphic2d_Buffer %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic2d_Buffer {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic2d_Image;
class Handle_Graphic2d_Image : public Handle_Graphic2d_Primitive {
	public:
		%feature("autodoc", "1");
		Handle_Graphic2d_Image();
		%feature("autodoc", "1");
		Handle_Graphic2d_Image(const Handle_Graphic2d_Image &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_Image(const Graphic2d_Image *anItem);
		%feature("autodoc", "1");
		Handle_Graphic2d_Image & operator=(const Handle_Graphic2d_Image &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_Image & operator=(const Graphic2d_Image *anItem);
		%feature("autodoc", "1");
		static		Handle_Graphic2d_Image const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic2d_Image {
	Graphic2d_Image* GetObject() {
	return (Graphic2d_Image*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic2d_Image::~Handle_Graphic2d_Image %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic2d_Image {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic2d_SequenceNodeOfSequenceOfPrimitives;
class Handle_Graphic2d_SequenceNodeOfSequenceOfPrimitives : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_Graphic2d_SequenceNodeOfSequenceOfPrimitives();
		%feature("autodoc", "1");
		Handle_Graphic2d_SequenceNodeOfSequenceOfPrimitives(const Handle_Graphic2d_SequenceNodeOfSequenceOfPrimitives &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_SequenceNodeOfSequenceOfPrimitives(const Graphic2d_SequenceNodeOfSequenceOfPrimitives *anItem);
		%feature("autodoc", "1");
		Handle_Graphic2d_SequenceNodeOfSequenceOfPrimitives & operator=(const Handle_Graphic2d_SequenceNodeOfSequenceOfPrimitives &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_SequenceNodeOfSequenceOfPrimitives & operator=(const Graphic2d_SequenceNodeOfSequenceOfPrimitives *anItem);
		%feature("autodoc", "1");
		static		Handle_Graphic2d_SequenceNodeOfSequenceOfPrimitives const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic2d_SequenceNodeOfSequenceOfPrimitives {
	Graphic2d_SequenceNodeOfSequenceOfPrimitives* GetObject() {
	return (Graphic2d_SequenceNodeOfSequenceOfPrimitives*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic2d_SequenceNodeOfSequenceOfPrimitives::~Handle_Graphic2d_SequenceNodeOfSequenceOfPrimitives %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic2d_SequenceNodeOfSequenceOfPrimitives {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic2d_SequenceNodeOfSequenceOfVertex;
class Handle_Graphic2d_SequenceNodeOfSequenceOfVertex : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_Graphic2d_SequenceNodeOfSequenceOfVertex();
		%feature("autodoc", "1");
		Handle_Graphic2d_SequenceNodeOfSequenceOfVertex(const Handle_Graphic2d_SequenceNodeOfSequenceOfVertex &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_SequenceNodeOfSequenceOfVertex(const Graphic2d_SequenceNodeOfSequenceOfVertex *anItem);
		%feature("autodoc", "1");
		Handle_Graphic2d_SequenceNodeOfSequenceOfVertex & operator=(const Handle_Graphic2d_SequenceNodeOfSequenceOfVertex &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_SequenceNodeOfSequenceOfVertex & operator=(const Graphic2d_SequenceNodeOfSequenceOfVertex *anItem);
		%feature("autodoc", "1");
		static		Handle_Graphic2d_SequenceNodeOfSequenceOfVertex const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic2d_SequenceNodeOfSequenceOfVertex {
	Graphic2d_SequenceNodeOfSequenceOfVertex* GetObject() {
	return (Graphic2d_SequenceNodeOfSequenceOfVertex*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic2d_SequenceNodeOfSequenceOfVertex::~Handle_Graphic2d_SequenceNodeOfSequenceOfVertex %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic2d_SequenceNodeOfSequenceOfVertex {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic2d_SequenceNodeOfSequenceOfBuffer;
class Handle_Graphic2d_SequenceNodeOfSequenceOfBuffer : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_Graphic2d_SequenceNodeOfSequenceOfBuffer();
		%feature("autodoc", "1");
		Handle_Graphic2d_SequenceNodeOfSequenceOfBuffer(const Handle_Graphic2d_SequenceNodeOfSequenceOfBuffer &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_SequenceNodeOfSequenceOfBuffer(const Graphic2d_SequenceNodeOfSequenceOfBuffer *anItem);
		%feature("autodoc", "1");
		Handle_Graphic2d_SequenceNodeOfSequenceOfBuffer & operator=(const Handle_Graphic2d_SequenceNodeOfSequenceOfBuffer &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_SequenceNodeOfSequenceOfBuffer & operator=(const Graphic2d_SequenceNodeOfSequenceOfBuffer *anItem);
		%feature("autodoc", "1");
		static		Handle_Graphic2d_SequenceNodeOfSequenceOfBuffer const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic2d_SequenceNodeOfSequenceOfBuffer {
	Graphic2d_SequenceNodeOfSequenceOfBuffer* GetObject() {
	return (Graphic2d_SequenceNodeOfSequenceOfBuffer*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic2d_SequenceNodeOfSequenceOfBuffer::~Handle_Graphic2d_SequenceNodeOfSequenceOfBuffer %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic2d_SequenceNodeOfSequenceOfBuffer {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic2d_SegmentDefinitionError;
class Handle_Graphic2d_SegmentDefinitionError : public Handle_Standard_OutOfRange {
	public:
		%feature("autodoc", "1");
		Handle_Graphic2d_SegmentDefinitionError();
		%feature("autodoc", "1");
		Handle_Graphic2d_SegmentDefinitionError(const Handle_Graphic2d_SegmentDefinitionError &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_SegmentDefinitionError(const Graphic2d_SegmentDefinitionError *anItem);
		%feature("autodoc", "1");
		Handle_Graphic2d_SegmentDefinitionError & operator=(const Handle_Graphic2d_SegmentDefinitionError &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_SegmentDefinitionError & operator=(const Graphic2d_SegmentDefinitionError *anItem);
		%feature("autodoc", "1");
		static		Handle_Graphic2d_SegmentDefinitionError const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic2d_SegmentDefinitionError {
	Graphic2d_SegmentDefinitionError* GetObject() {
	return (Graphic2d_SegmentDefinitionError*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic2d_SegmentDefinitionError::~Handle_Graphic2d_SegmentDefinitionError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic2d_SegmentDefinitionError {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic2d_FramedText;
class Handle_Graphic2d_FramedText : public Handle_Graphic2d_Text {
	public:
		%feature("autodoc", "1");
		Handle_Graphic2d_FramedText();
		%feature("autodoc", "1");
		Handle_Graphic2d_FramedText(const Handle_Graphic2d_FramedText &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_FramedText(const Graphic2d_FramedText *anItem);
		%feature("autodoc", "1");
		Handle_Graphic2d_FramedText & operator=(const Handle_Graphic2d_FramedText &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_FramedText & operator=(const Graphic2d_FramedText *anItem);
		%feature("autodoc", "1");
		static		Handle_Graphic2d_FramedText const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic2d_FramedText {
	Graphic2d_FramedText* GetObject() {
	return (Graphic2d_FramedText*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic2d_FramedText::~Handle_Graphic2d_FramedText %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic2d_FramedText {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic2d_InfiniteLine;
class Handle_Graphic2d_InfiniteLine : public Handle_Graphic2d_Line {
	public:
		%feature("autodoc", "1");
		Handle_Graphic2d_InfiniteLine();
		%feature("autodoc", "1");
		Handle_Graphic2d_InfiniteLine(const Handle_Graphic2d_InfiniteLine &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_InfiniteLine(const Graphic2d_InfiniteLine *anItem);
		%feature("autodoc", "1");
		Handle_Graphic2d_InfiniteLine & operator=(const Handle_Graphic2d_InfiniteLine &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_InfiniteLine & operator=(const Graphic2d_InfiniteLine *anItem);
		%feature("autodoc", "1");
		static		Handle_Graphic2d_InfiniteLine const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic2d_InfiniteLine {
	Graphic2d_InfiniteLine* GetObject() {
	return (Graphic2d_InfiniteLine*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic2d_InfiniteLine::~Handle_Graphic2d_InfiniteLine %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic2d_InfiniteLine {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic2d_HSequenceOfPrimitives;
class Handle_Graphic2d_HSequenceOfPrimitives : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Graphic2d_HSequenceOfPrimitives();
		%feature("autodoc", "1");
		Handle_Graphic2d_HSequenceOfPrimitives(const Handle_Graphic2d_HSequenceOfPrimitives &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_HSequenceOfPrimitives(const Graphic2d_HSequenceOfPrimitives *anItem);
		%feature("autodoc", "1");
		Handle_Graphic2d_HSequenceOfPrimitives & operator=(const Handle_Graphic2d_HSequenceOfPrimitives &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_HSequenceOfPrimitives & operator=(const Graphic2d_HSequenceOfPrimitives *anItem);
		%feature("autodoc", "1");
		static		Handle_Graphic2d_HSequenceOfPrimitives const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic2d_HSequenceOfPrimitives {
	Graphic2d_HSequenceOfPrimitives* GetObject() {
	return (Graphic2d_HSequenceOfPrimitives*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic2d_HSequenceOfPrimitives::~Handle_Graphic2d_HSequenceOfPrimitives %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic2d_HSequenceOfPrimitives {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic2d_CircleMarker;
class Handle_Graphic2d_CircleMarker : public Handle_Graphic2d_VectorialMarker {
	public:
		%feature("autodoc", "1");
		Handle_Graphic2d_CircleMarker();
		%feature("autodoc", "1");
		Handle_Graphic2d_CircleMarker(const Handle_Graphic2d_CircleMarker &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_CircleMarker(const Graphic2d_CircleMarker *anItem);
		%feature("autodoc", "1");
		Handle_Graphic2d_CircleMarker & operator=(const Handle_Graphic2d_CircleMarker &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_CircleMarker & operator=(const Graphic2d_CircleMarker *anItem);
		%feature("autodoc", "1");
		static		Handle_Graphic2d_CircleMarker const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic2d_CircleMarker {
	Graphic2d_CircleMarker* GetObject() {
	return (Graphic2d_CircleMarker*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic2d_CircleMarker::~Handle_Graphic2d_CircleMarker %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic2d_CircleMarker {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic2d_SequenceNodeOfSequenceOfGraphicObject;
class Handle_Graphic2d_SequenceNodeOfSequenceOfGraphicObject : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_Graphic2d_SequenceNodeOfSequenceOfGraphicObject();
		%feature("autodoc", "1");
		Handle_Graphic2d_SequenceNodeOfSequenceOfGraphicObject(const Handle_Graphic2d_SequenceNodeOfSequenceOfGraphicObject &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_SequenceNodeOfSequenceOfGraphicObject(const Graphic2d_SequenceNodeOfSequenceOfGraphicObject *anItem);
		%feature("autodoc", "1");
		Handle_Graphic2d_SequenceNodeOfSequenceOfGraphicObject & operator=(const Handle_Graphic2d_SequenceNodeOfSequenceOfGraphicObject &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_SequenceNodeOfSequenceOfGraphicObject & operator=(const Graphic2d_SequenceNodeOfSequenceOfGraphicObject *anItem);
		%feature("autodoc", "1");
		static		Handle_Graphic2d_SequenceNodeOfSequenceOfGraphicObject const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic2d_SequenceNodeOfSequenceOfGraphicObject {
	Graphic2d_SequenceNodeOfSequenceOfGraphicObject* GetObject() {
	return (Graphic2d_SequenceNodeOfSequenceOfGraphicObject*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic2d_SequenceNodeOfSequenceOfGraphicObject::~Handle_Graphic2d_SequenceNodeOfSequenceOfGraphicObject %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic2d_SequenceNodeOfSequenceOfGraphicObject {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic2d_ImageFile;
class Handle_Graphic2d_ImageFile : public Handle_Graphic2d_Primitive {
	public:
		%feature("autodoc", "1");
		Handle_Graphic2d_ImageFile();
		%feature("autodoc", "1");
		Handle_Graphic2d_ImageFile(const Handle_Graphic2d_ImageFile &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_ImageFile(const Graphic2d_ImageFile *anItem);
		%feature("autodoc", "1");
		Handle_Graphic2d_ImageFile & operator=(const Handle_Graphic2d_ImageFile &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_ImageFile & operator=(const Graphic2d_ImageFile *anItem);
		%feature("autodoc", "1");
		static		Handle_Graphic2d_ImageFile const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic2d_ImageFile {
	Graphic2d_ImageFile* GetObject() {
	return (Graphic2d_ImageFile*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic2d_ImageFile::~Handle_Graphic2d_ImageFile %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic2d_ImageFile {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic2d_TextDefinitionError;
class Handle_Graphic2d_TextDefinitionError : public Handle_Standard_OutOfRange {
	public:
		%feature("autodoc", "1");
		Handle_Graphic2d_TextDefinitionError();
		%feature("autodoc", "1");
		Handle_Graphic2d_TextDefinitionError(const Handle_Graphic2d_TextDefinitionError &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_TextDefinitionError(const Graphic2d_TextDefinitionError *anItem);
		%feature("autodoc", "1");
		Handle_Graphic2d_TextDefinitionError & operator=(const Handle_Graphic2d_TextDefinitionError &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic2d_TextDefinitionError & operator=(const Graphic2d_TextDefinitionError *anItem);
		%feature("autodoc", "1");
		static		Handle_Graphic2d_TextDefinitionError const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic2d_TextDefinitionError {
	Graphic2d_TextDefinitionError* GetObject() {
	return (Graphic2d_TextDefinitionError*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic2d_TextDefinitionError::~Handle_Graphic2d_TextDefinitionError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic2d_TextDefinitionError {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic2d_Primitive;
class Graphic2d_Primitive : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		void SetColorIndex(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		Standard_Integer ColorIndex() const;
		%feature("autodoc", "1");
		virtual		void Draw(const Handle_Graphic2d_Drawer &aDrawer);
		%feature("autodoc", "1");
		virtual		Standard_Boolean SetElementsSelected();
		%feature("autodoc", "1");
		virtual		Standard_Boolean HasSelectedElements();
		%feature("autodoc", "1");
		virtual		void ClearSelectedElements();
		%feature("autodoc", "1");
		virtual		Standard_Integer NumOfElemIndices() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NumOfVertIndices() const;
		%feature("autodoc", "1");
		Standard_Integer PickedIndex() const;
		%feature("autodoc", "1");
		const TColStd_MapOfInteger & PickedIndices() const;
		%feature("autodoc", "1");
		void Highlight(const Standard_Integer anIndex=0);
		%feature("autodoc", "1");
		void Unhighlight();
		%feature("autodoc", "1");
		Standard_Boolean IsHighlighted() const;
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfInteger HighlightIndices() const;
		%feature("autodoc", "1");
		void SetDisplayMode(const Standard_Integer aMode);
		%feature("autodoc", "1");
		Standard_Integer DisplayMode() const;
		%feature("autodoc", "1");
		Standard_Boolean MinMax(Standard_ShortReal & Minx, Standard_ShortReal & Maxx, Standard_ShortReal & Miny, Standard_ShortReal & Maxy);
		%feature("autodoc", "1");
		Standard_Boolean IsInMinMax(const Standard_ShortReal X, const Standard_ShortReal Y, const Standard_ShortReal aPrecision);
		%feature("autodoc", "1");
		virtual		void Save(Aspect_FStream & aFStream) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic2d_Primitive {
	Handle_Graphic2d_Primitive GetHandle() {
	return *(Handle_Graphic2d_Primitive*) &$self;
	}
};
%extend Graphic2d_Primitive {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic2d_Primitive::~Graphic2d_Primitive %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic2d_Primitive {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic2d_Image;
class Graphic2d_Image : public Graphic2d_Primitive {
	public:
		%feature("autodoc", "1");
		Graphic2d_Image(const Handle_Graphic2d_GraphicObject &aGraphicObject, const Handle_Image_Image &anImage, const Quantity_Length X, const Quantity_Length Y, const Quantity_Length adx=0.0, const Quantity_Length ady=0.0, const Aspect_CardinalPoints aTypeOfPlacement=Aspect_CP_Center);
		%feature("autodoc", "1");
		void SetCenter(const Quantity_Length X, const Quantity_Length Y);
		%feature("autodoc", "1");
		void SetOffset(const Quantity_Length dx, const Quantity_Length dy);
		%feature("autodoc", "1");
		void SetPlacement(const Aspect_CardinalPoints aPlacement);
		%feature("autodoc", "1");
		void Translate(const Quantity_Length DX, const Quantity_Length DY);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		static		void SetSmallSize(const Standard_Integer aSize);
		%feature("autodoc", "1");
		static		Standard_Integer SmallSize();
		%feature("autodoc","Position() -> [Standard_Real, Standard_Real]");

		void Position(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc","Offset() -> [Standard_Real, Standard_Real]");

		void Offset(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Aspect_CardinalPoints Placement() const;
		%feature("autodoc", "1");
		Handle_Image_Image Image() const;

};
%extend Graphic2d_Image {
	Handle_Graphic2d_Image GetHandle() {
	return *(Handle_Graphic2d_Image*) &$self;
	}
};
%extend Graphic2d_Image {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic2d_Image::~Graphic2d_Image %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic2d_Image {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic2d_Line;
class Graphic2d_Line : public Graphic2d_Primitive {
	public:
		%feature("autodoc", "1");
		void SetWidthIndex(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void SetTypeIndex(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void SetInteriorColorIndex(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void SetDrawEdge(const Standard_Boolean aDraw);
		%feature("autodoc", "1");
		void SetInteriorPattern(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void SetTypeOfPolygonFilling(const Graphic2d_TypeOfPolygonFilling aType);
		%feature("autodoc", "1");
		Standard_Integer InteriorColorIndex() const;
		%feature("autodoc", "1");
		Standard_Integer InteriorPattern() const;
		%feature("autodoc", "1");
		Graphic2d_TypeOfPolygonFilling TypeOfPolygonFilling() const;
		%feature("autodoc", "1");
		Standard_Integer TypeIndex() const;
		%feature("autodoc", "1");
		Standard_Integer WidthIndex() const;
		%feature("autodoc", "1");
		virtual		void Save(Aspect_FStream & aFStream) const;
		%feature("autodoc", "1");
		void Retrieve(Aspect_IFStream & anIFStream);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic2d_Line {
	Handle_Graphic2d_Line GetHandle() {
	return *(Handle_Graphic2d_Line*) &$self;
	}
};
%extend Graphic2d_Line {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic2d_Line::~Graphic2d_Line %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic2d_Line {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic2d_Polyline;
class Graphic2d_Polyline : public Graphic2d_Line {
	public:
		%feature("autodoc", "1");
		Graphic2d_Polyline(const Handle_Graphic2d_GraphicObject &aGraphicObject, const Graphic2d_Array1OfVertex &aListVertex);
		%feature("autodoc", "1");
		Graphic2d_Polyline(const Handle_Graphic2d_GraphicObject &aGraphicObject, const TColStd_Array1OfReal &aListX, const TColStd_Array1OfReal &aListY);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc","Values(Standard_Integer aRank) -> [Standard_Real, Standard_Real]");

		void Values(const Standard_Integer aRank, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		static		void Retrieve(Aspect_IFStream & anIFStream, const Handle_Graphic2d_GraphicObject &aGraphicObject);

};
%extend Graphic2d_Polyline {
	Handle_Graphic2d_Polyline GetHandle() {
	return *(Handle_Graphic2d_Polyline*) &$self;
	}
};
%extend Graphic2d_Polyline {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic2d_Polyline::~Graphic2d_Polyline %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic2d_Polyline {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic2d_ViewMapping;
class Graphic2d_ViewMapping : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Graphic2d_ViewMapping();
		%feature("autodoc", "1");
		void SetViewMapping(const Quantity_Length aXCenter, const Quantity_Length aYCenter, const Quantity_Length aSize);
		%feature("autodoc", "1");
		void SetCenter(const Quantity_Length aXCenter, const Quantity_Length aYCenter);
		%feature("autodoc", "1");
		void SetSize(const Quantity_Length aSize);
		%feature("autodoc", "1");
		void SetViewMappingDefault();
		%feature("autodoc", "1");
		void ViewMappingReset();
		%feature("autodoc","ViewMapping() -> [Standard_Real, Standard_Real, Standard_Real]");

		void ViewMapping(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc","Center() -> [Standard_Real, Standard_Real]");

		void Center(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc","ViewMappingDefault() -> [Standard_Real, Standard_Real, Standard_Real]");

		void ViewMappingDefault(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Quantity_Factor Zoom() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic2d_ViewMapping {
	Handle_Graphic2d_ViewMapping GetHandle() {
	return *(Handle_Graphic2d_ViewMapping*) &$self;
	}
};
%extend Graphic2d_ViewMapping {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic2d_ViewMapping::~Graphic2d_ViewMapping %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic2d_ViewMapping {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic2d_SequenceNodeOfSequenceOfGraphicObject;
class Graphic2d_SequenceNodeOfSequenceOfGraphicObject : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Graphic2d_SequenceNodeOfSequenceOfGraphicObject(const Handle_Graphic2d_GraphicObject &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_Graphic2d_GraphicObject & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic2d_SequenceNodeOfSequenceOfGraphicObject {
	Handle_Graphic2d_SequenceNodeOfSequenceOfGraphicObject GetHandle() {
	return *(Handle_Graphic2d_SequenceNodeOfSequenceOfGraphicObject*) &$self;
	}
};
%extend Graphic2d_SequenceNodeOfSequenceOfGraphicObject {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic2d_SequenceNodeOfSequenceOfGraphicObject::~Graphic2d_SequenceNodeOfSequenceOfGraphicObject %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic2d_SequenceNodeOfSequenceOfGraphicObject {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic2d_VectorialMarker;
class Graphic2d_VectorialMarker : public Graphic2d_Line {
	public:
		%feature("autodoc", "1");
		void SetPosition(const Quantity_Length aXPosition, const Quantity_Length aYPosition);
		%feature("autodoc", "1");
		Quantity_Length XPosition() const;
		%feature("autodoc", "1");
		Quantity_Length YPosition() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic2d_VectorialMarker {
	Handle_Graphic2d_VectorialMarker GetHandle() {
	return *(Handle_Graphic2d_VectorialMarker*) &$self;
	}
};
%extend Graphic2d_VectorialMarker {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic2d_VectorialMarker::~Graphic2d_VectorialMarker %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic2d_VectorialMarker {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic2d_PolylineMarker;
class Graphic2d_PolylineMarker : public Graphic2d_VectorialMarker {
	public:
		%feature("autodoc", "1");
		Graphic2d_PolylineMarker(const Handle_Graphic2d_GraphicObject &aGraphicObject, const Quantity_Length aXPosition, const Quantity_Length aYPosition, const Graphic2d_Array1OfVertex &aListVertex);
		%feature("autodoc", "1");
		Graphic2d_PolylineMarker(const Handle_Graphic2d_GraphicObject &aGraphicObject, const Quantity_Length aXPosition, const Quantity_Length aYPosition, const TColStd_Array1OfReal &aListX, const TColStd_Array1OfReal &aListY);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc","Values(Standard_Integer aRank) -> [Standard_Real, Standard_Real]");

		void Values(const Standard_Integer aRank, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		virtual		void Save(Aspect_FStream & aFStream) const;
		%feature("autodoc", "1");
		static		void Retrieve(Aspect_IFStream & anIFStream, const Handle_Graphic2d_GraphicObject &aGraphicObject);

};
%extend Graphic2d_PolylineMarker {
	Handle_Graphic2d_PolylineMarker GetHandle() {
	return *(Handle_Graphic2d_PolylineMarker*) &$self;
	}
};
%extend Graphic2d_PolylineMarker {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic2d_PolylineMarker::~Graphic2d_PolylineMarker %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic2d_PolylineMarker {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic2d_TextDefinitionError;
class Graphic2d_TextDefinitionError : public Standard_OutOfRange {
	public:
		%feature("autodoc", "1");
		Graphic2d_TextDefinitionError();
		%feature("autodoc", "1");
		Graphic2d_TextDefinitionError(const char * AString);
		%feature("autodoc", "1");
		static		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		static		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		static		Handle_Graphic2d_TextDefinitionError NewInstance(const char * aMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic2d_TextDefinitionError {
	Handle_Graphic2d_TextDefinitionError GetHandle() {
	return *(Handle_Graphic2d_TextDefinitionError*) &$self;
	}
};
%extend Graphic2d_TextDefinitionError {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic2d_TextDefinitionError::~Graphic2d_TextDefinitionError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic2d_TextDefinitionError {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic2d_GraphicObject;
class Graphic2d_GraphicObject : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Graphic2d_GraphicObject();
		%feature("autodoc", "1");
		Graphic2d_GraphicObject(const Handle_Graphic2d_View &aView);
		%feature("autodoc", "1");
		void SetView(const Handle_Graphic2d_View &aView);
		%feature("autodoc", "1");
		void SetTransform(const gp_GTrsf2d &aTrsf, const Graphic2d_TypeOfComposition aType=Graphic2d_TOC_REPLACE);
		%feature("autodoc", "1");
		const gp_GTrsf2d & Transform() const;
		%feature("autodoc", "1");
		Standard_Boolean IsTransformed() const;
		%feature("autodoc", "1");
		void SetLayer(const Standard_Integer aLayer);
		%feature("autodoc", "1");
		Standard_Integer Layer() const;
		%feature("autodoc", "1");
		void SetPriority(const Standard_Integer aPriority);
		%feature("autodoc", "1");
		Standard_Integer Priority() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer MaxPriority() const;
		%feature("autodoc", "1");
		void EnablePlot();
		%feature("autodoc", "1");
		void DisablePlot();
		%feature("autodoc", "1");
		Standard_Boolean IsPlottable() const;
		%feature("autodoc", "1");
		void EnableDraw();
		%feature("autodoc", "1");
		void DisableDraw();
		%feature("autodoc", "1");
		Standard_Boolean IsDrawable() const;
		%feature("autodoc", "1");
		Standard_Boolean IsIn(const Handle_Graphic2d_Primitive &aPrimitive) const;
		%feature("autodoc", "1");
		void RemovePrimitive(const Handle_Graphic2d_Primitive &aPrimitive);
		%feature("autodoc", "1");
		void RemovePrimitives();
		%feature("autodoc", "1");
		void Remove();
		%feature("autodoc", "1");
		void EnablePick();
		%feature("autodoc", "1");
		void DisablePick();
		%feature("autodoc", "1");
		Standard_Boolean IsPickable() const;
		%feature("autodoc", "1");
		void Display();
		%feature("autodoc", "1");
		void Erase();
		%feature("autodoc", "1");
		Standard_Boolean IsDisplayed() const;
		%feature("autodoc", "1");
		void Highlight();
		%feature("autodoc", "1");
		void Highlight(const Standard_Integer aColorIndex);
		%feature("autodoc", "1");
		void Unhighlight();
		%feature("autodoc", "1");
		Standard_Boolean IsHighlighted() const;
		%feature("autodoc", "1");
		void SetOffSet(const Standard_Integer anOffSet);
		%feature("autodoc", "1");
		Standard_Integer OffSet() const;
		%feature("autodoc", "1");
		Standard_Integer OverrideColor() const;
		%feature("autodoc", "1");
		void SetOverrideColor(const Standard_Integer indColor);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Handle_Graphic2d_Primitive Primitive(const Standard_Integer aRank) const;
		%feature("autodoc","MinMax() -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real]");

		virtual		Standard_Boolean MinMax(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc","MarkerMinMax() -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real]");

		virtual		Standard_Boolean MarkerMinMax(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Integer PickedIndex() const;
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfInteger PickList() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic2d_GraphicObject {
	Handle_Graphic2d_GraphicObject GetHandle() {
	return *(Handle_Graphic2d_GraphicObject*) &$self;
	}
};
%extend Graphic2d_GraphicObject {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic2d_GraphicObject::~Graphic2d_GraphicObject %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic2d_GraphicObject {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic2d_Text;
class Graphic2d_Text : public Graphic2d_Primitive {
	public:
		%feature("autodoc", "1");
		Graphic2d_Text(const Handle_Graphic2d_GraphicObject &aGraphicObject, const TCollection_ExtendedString &aText, const Standard_Real X, const Standard_Real Y, const Quantity_PlaneAngle anAngle=0.0, const Aspect_TypeOfText aType=Aspect_TOT_SOLID, const Quantity_Factor aScale=1.0e+0);
		%feature("autodoc", "1");
		void SetFontIndex(const Standard_Integer anIndex=0);
		%feature("autodoc", "1");
		void SetSlant(const Quantity_PlaneAngle aSlant=0.0);
		%feature("autodoc", "1");
		void SetZoomable(const Standard_Boolean aFlag=1);
		%feature("autodoc", "1");
		void SetOffset(const Standard_Real aDx=0.0, const Standard_Real aDy=0.0);
		%feature("autodoc", "1");
		void SetUnderline(const Standard_Boolean isUnderlined=0);
		%feature("autodoc", "1");
		void SetAlignment(const Graphic2d_TypeOfAlignment anAlignment=Graphic2d_TOA_LEFT);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Fit(const Quantity_Length aWidth, const Quantity_Length aHeight, const Standard_Boolean Adjust=1, const Standard_Boolean Expand=1);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Trunc(const Quantity_Length aWidth);
		%feature("autodoc", "1");
		Standard_Boolean IsZoomable() const;
		%feature("autodoc", "1");
		Standard_Boolean IsUnderlined() const;
		%feature("autodoc","TextSize() -> [Standard_Real, Standard_Real]");

		Standard_Boolean TextSize(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc","TextSize() -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real]");

		virtual		Standard_Boolean TextSize(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc","Position() -> [Standard_Real, Standard_Real]");

		void Position(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc","Offset() -> [Standard_Real, Standard_Real]");

		void Offset(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Quantity_PlaneAngle Slant() const;
		%feature("autodoc", "1");
		Quantity_PlaneAngle Angle() const;
		%feature("autodoc", "1");
		Standard_Integer FontIndex() const;
		%feature("autodoc", "1");
		Quantity_Factor Scale() const;
		%feature("autodoc", "1");
		Graphic2d_TypeOfAlignment Alignment() const;
		%feature("autodoc", "1");
		TCollection_ExtendedString GetText() const;
		%feature("autodoc", "1");
		Aspect_TypeOfText GetType() const;
		%feature("autodoc", "1");
		virtual		void Save(Aspect_FStream & aFStream) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic2d_Text {
	Handle_Graphic2d_Text GetHandle() {
	return *(Handle_Graphic2d_Text*) &$self;
	}
};
%extend Graphic2d_Text {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic2d_Text::~Graphic2d_Text %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic2d_Text {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic2d_Array1OfVertex;
class Graphic2d_Array1OfVertex {
	public:
		%feature("autodoc", "1");
		Graphic2d_Array1OfVertex(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		Graphic2d_Array1OfVertex(const Graphic2d_Vertex &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Graphic2d_Vertex &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const Graphic2d_Array1OfVertex & Assign(const Graphic2d_Array1OfVertex &Other);
		%feature("autodoc", "1");
		const Graphic2d_Array1OfVertex & operator=(const Graphic2d_Array1OfVertex &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Graphic2d_Vertex &Value);
		%feature("autodoc", "1");
		const Graphic2d_Vertex & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Graphic2d_Vertex & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Graphic2d_Vertex & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Graphic2d_Vertex & operator()(const Standard_Integer Index);

};
%feature("shadow") Graphic2d_Array1OfVertex::~Graphic2d_Array1OfVertex %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic2d_Array1OfVertex {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic2d_SegmentDefinitionError;
class Graphic2d_SegmentDefinitionError : public Standard_OutOfRange {
	public:
		%feature("autodoc", "1");
		Graphic2d_SegmentDefinitionError();
		%feature("autodoc", "1");
		Graphic2d_SegmentDefinitionError(const char * AString);
		%feature("autodoc", "1");
		static		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		static		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		static		Handle_Graphic2d_SegmentDefinitionError NewInstance(const char * aMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic2d_SegmentDefinitionError {
	Handle_Graphic2d_SegmentDefinitionError GetHandle() {
	return *(Handle_Graphic2d_SegmentDefinitionError*) &$self;
	}
};
%extend Graphic2d_SegmentDefinitionError {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic2d_SegmentDefinitionError::~Graphic2d_SegmentDefinitionError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic2d_SegmentDefinitionError {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic2d_ImageFile;
class Graphic2d_ImageFile : public Graphic2d_Primitive {
	public:
		%feature("autodoc", "1");
		Graphic2d_ImageFile(const Handle_Graphic2d_GraphicObject &aGraphicObject, OSD_File & aFile, const Quantity_Length X, const Quantity_Length Y, const Quantity_Length adx=0.0, const Quantity_Length ady=0.0, const Aspect_CardinalPoints aTypeOfPlacement=Aspect_CP_Center, const Quantity_Factor aScale=1.0e+0);
		%feature("autodoc", "1");
		void SetCenter(const Quantity_Length X, const Quantity_Length Y);
		%feature("autodoc", "1");
		void SetOffset(const Quantity_Length dx, const Quantity_Length dy);
		%feature("autodoc", "1");
		void SetPlacement(const Aspect_CardinalPoints aPlacement);
		%feature("autodoc", "1");
		void Translate(const Quantity_Length DX, const Quantity_Length DY);
		%feature("autodoc", "1");
		void SetScale(const Quantity_Factor aScale);
		%feature("autodoc", "1");
		void SetZoomable(const Standard_Boolean aFlag=0);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Quantity_Factor Scale() const;
		%feature("autodoc", "1");
		Standard_Boolean IsZoomable() const;
		%feature("autodoc","Position() -> [Standard_Real, Standard_Real]");

		void Position(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc","Offset() -> [Standard_Real, Standard_Real]");

		void Offset(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Aspect_CardinalPoints Placement() const;
		%feature("autodoc", "1");
		OSD_File ImageFile() const;
		%feature("autodoc","Values() -> [Standard_Integer, Standard_Integer, Standard_Integer]");

		static		Standard_Boolean Values(OSD_File & aFile, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue);
		%feature("autodoc", "1");
		static		void SwapLong(const Standard_Address anAddress, const Standard_Integer aNumOfBytes);
		%feature("autodoc", "1");
		virtual		void Save(Aspect_FStream & aFStream) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic2d_ImageFile {
	Handle_Graphic2d_ImageFile GetHandle() {
	return *(Handle_Graphic2d_ImageFile*) &$self;
	}
};
%extend Graphic2d_ImageFile {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic2d_ImageFile::~Graphic2d_ImageFile %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic2d_ImageFile {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic2d_HidingGraphicObject;
class Graphic2d_HidingGraphicObject : public Graphic2d_GraphicObject {
	public:
		%feature("autodoc", "1");
		Graphic2d_HidingGraphicObject(const Handle_Graphic2d_View &aView, const Graphic2d_Array1OfVertex &aFrame);
		%feature("autodoc", "1");
		Graphic2d_HidingGraphicObject(const Handle_Graphic2d_View &aView, const Graphic2d_TypeOfFrame aType=Graphic2d_TOF_RECTANGULAR, const Quantity_Length aMargin1=0.0, const Quantity_Length aMargin2=0.0);
		%feature("autodoc", "1");
		void SetFrame(const Graphic2d_Array1OfVertex &aFrame);
		%feature("autodoc", "1");
		void SetFrame(const Graphic2d_TypeOfFrame aFrameType, const Quantity_Length aMargin1=0.0, const Quantity_Length aMargin2=0.0);
		%feature("autodoc", "1");
		void SetHidingColorIndex(const Standard_Integer anIndex=0);
		%feature("autodoc", "1");
		void SetFrameColorIndex(const Standard_Integer anIndex=1);
		%feature("autodoc", "1");
		void SetFrameTypeIndex(const Standard_Integer anIndex=0);
		%feature("autodoc", "1");
		void SetFrameWidthIndex(const Standard_Integer anIndex=0);
		%feature("autodoc", "1");
		virtual		Standard_Integer MaxPriority() const;
		%feature("autodoc","FrameMinMax() -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real]");

		Standard_Boolean FrameMinMax(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc","MinMax() -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real]");

		virtual		Standard_Boolean MinMax(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Graphic2d_TypeOfFrame Frame(Graphic2d_Array1OfVertex & aFrame) const;
		%feature("autodoc", "1");
		Standard_Integer HidingColorIndex() const;
		%feature("autodoc", "1");
		Standard_Integer FrameColorIndex() const;
		%feature("autodoc", "1");
		Standard_Integer FrameTypeIndex() const;
		%feature("autodoc", "1");
		Standard_Integer FrameWidthIndex() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic2d_HidingGraphicObject {
	Handle_Graphic2d_HidingGraphicObject GetHandle() {
	return *(Handle_Graphic2d_HidingGraphicObject*) &$self;
	}
};
%extend Graphic2d_HidingGraphicObject {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic2d_HidingGraphicObject::~Graphic2d_HidingGraphicObject %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic2d_HidingGraphicObject {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic2d_InfiniteLine;
class Graphic2d_InfiniteLine : public Graphic2d_Line {
	public:
		%feature("autodoc", "1");
		Graphic2d_InfiniteLine(const Handle_Graphic2d_GraphicObject &aGraphicObject, const Quantity_Length X, const Quantity_Length Y, const Quantity_Length DX, const Quantity_Length DY);
		%feature("autodoc","Reference() -> [Standard_Real, Standard_Real]");

		void Reference(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc","Slope() -> [Standard_Real, Standard_Real]");

		void Slope(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		virtual		void Save(Aspect_FStream & aFStream) const;
		%feature("autodoc", "1");
		static		void Retrieve(Aspect_IFStream & anIFStream, const Handle_Graphic2d_GraphicObject &aGraphicObject);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic2d_InfiniteLine {
	Handle_Graphic2d_InfiniteLine GetHandle() {
	return *(Handle_Graphic2d_InfiniteLine*) &$self;
	}
};
%extend Graphic2d_InfiniteLine {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic2d_InfiniteLine::~Graphic2d_InfiniteLine %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic2d_InfiniteLine {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic2d_CBitFields8;
class Graphic2d_CBitFields8 {
	public:
		%feature("autodoc", "1");
		Graphic2d_CBitFields8();

};
%feature("shadow") Graphic2d_CBitFields8::~Graphic2d_CBitFields8 %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic2d_CBitFields8 {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic2d_SetOfSegments;
class Graphic2d_SetOfSegments : public Graphic2d_Line {
	public:
		%feature("autodoc", "1");
		Graphic2d_SetOfSegments(const Handle_Graphic2d_GraphicObject &aGraphicObject);
		%feature("autodoc", "1");
		void Add(const Quantity_Length X1, const Quantity_Length Y1, const Quantity_Length X2, const Quantity_Length Y2);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc","Values(Standard_Integer aRank) -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real]");

		void Values(const Standard_Integer aRank, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		virtual		void Save(Aspect_FStream & aFStream) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic2d_SetOfSegments {
	Handle_Graphic2d_SetOfSegments GetHandle() {
	return *(Handle_Graphic2d_SetOfSegments*) &$self;
	}
};
%extend Graphic2d_SetOfSegments {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic2d_SetOfSegments::~Graphic2d_SetOfSegments %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic2d_SetOfSegments {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic2d_SetOfMarkers;
class Graphic2d_SetOfMarkers : public Graphic2d_Line {
	public:
		%feature("autodoc", "1");
		Graphic2d_SetOfMarkers(const Handle_Graphic2d_GraphicObject &aGraphicObject);
		%feature("autodoc", "1");
		void Add(const Quantity_Length X, const Quantity_Length Y);
		%feature("autodoc", "1");
		void Add(const Standard_Integer anIndex, const Quantity_Length X, const Quantity_Length Y, const Quantity_Length aWidth, const Quantity_Length anHeight, const Quantity_PlaneAngle anAngle=0.0);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc","Values(Standard_Integer aRank) -> [Standard_Integer, Standard_Real, Standard_Real, Standard_Real, Standard_Real]");

		void Values(const Standard_Integer aRank, Standard_Integer &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Quantity_PlaneAngle & anAngle) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean SetElementsSelected();
		%feature("autodoc", "1");
		virtual		Standard_Boolean HasSelectedElements();
		%feature("autodoc", "1");
		virtual		void ClearSelectedElements();
		%feature("autodoc", "1");
		const TColStd_MapOfInteger & GetSelectedElements() const;
		%feature("autodoc", "1");
		void AddOrRemoveSelected(const Standard_Integer index);
		%feature("autodoc", "1");
		virtual		void Save(Aspect_FStream & aFStream) const;
		%feature("autodoc", "1");
		void SetHighlightedLimit(const Standard_Integer number);
		%feature("autodoc", "1");
		void SetScaledWidth(const Standard_ShortReal width);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic2d_SetOfMarkers {
	Handle_Graphic2d_SetOfMarkers GetHandle() {
	return *(Handle_Graphic2d_SetOfMarkers*) &$self;
	}
};
%extend Graphic2d_SetOfMarkers {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic2d_SetOfMarkers::~Graphic2d_SetOfMarkers %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic2d_SetOfMarkers {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic2d_CircleDefinitionError;
class Graphic2d_CircleDefinitionError : public Standard_OutOfRange {
	public:
		%feature("autodoc", "1");
		Graphic2d_CircleDefinitionError();
		%feature("autodoc", "1");
		Graphic2d_CircleDefinitionError(const char * AString);
		%feature("autodoc", "1");
		static		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		static		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		static		Handle_Graphic2d_CircleDefinitionError NewInstance(const char * aMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic2d_CircleDefinitionError {
	Handle_Graphic2d_CircleDefinitionError GetHandle() {
	return *(Handle_Graphic2d_CircleDefinitionError*) &$self;
	}
};
%extend Graphic2d_CircleDefinitionError {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic2d_CircleDefinitionError::~Graphic2d_CircleDefinitionError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic2d_CircleDefinitionError {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic2d_FramedText;
class Graphic2d_FramedText : public Graphic2d_Text {
	public:
		%feature("autodoc", "1");
		Graphic2d_FramedText(const Handle_Graphic2d_GraphicObject &aGraphicObject, const TCollection_ExtendedString &aText, const Standard_Real X, const Standard_Real Y, const Quantity_PlaneAngle anAngle=0.0, const Quantity_Ratio aMargin=1.00000000000000005551115123125782702118158340454e-1, const Aspect_TypeOfText aType=Aspect_TOT_SOLID, const Quantity_Factor aScale=1.0e+0);
		%feature("autodoc", "1");
		void SetFrameColorIndex(const Standard_Integer anIndex=0);
		%feature("autodoc", "1");
		void SetFrameWidthIndex(const Standard_Integer anIndex=0);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Fit(const Quantity_Length aWidth, const Quantity_Length aHeight, const Standard_Boolean Adjust=1, const Standard_Boolean Expand=1);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Trunc(const Quantity_Length aWidth);
		%feature("autodoc","TextSize() -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real]");

		virtual		Standard_Boolean TextSize(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Quantity_Ratio Margin() const;
		%feature("autodoc", "1");
		Standard_Integer FrameColorIndex() const;
		%feature("autodoc", "1");
		Standard_Integer FrameWidthIndex() const;
		%feature("autodoc", "1");
		virtual		void Save(Aspect_FStream & aFStream) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic2d_FramedText {
	Handle_Graphic2d_FramedText GetHandle() {
	return *(Handle_Graphic2d_FramedText*) &$self;
	}
};
%extend Graphic2d_FramedText {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic2d_FramedText::~Graphic2d_FramedText %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic2d_FramedText {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic2d_HSequenceOfPrimitives;
class Graphic2d_HSequenceOfPrimitives : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Graphic2d_HSequenceOfPrimitives();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const Handle_Graphic2d_Primitive &anItem);
		%feature("autodoc", "1");
		void Append(const Handle_Graphic2d_HSequenceOfPrimitives &aSequence);
		%feature("autodoc", "1");
		void Prepend(const Handle_Graphic2d_Primitive &anItem);
		%feature("autodoc", "1");
		void Prepend(const Handle_Graphic2d_HSequenceOfPrimitives &aSequence);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_Graphic2d_Primitive &anItem);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_Graphic2d_HSequenceOfPrimitives &aSequence);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_Graphic2d_Primitive &anItem);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_Graphic2d_HSequenceOfPrimitives &aSequence);
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer anIndex, const Standard_Integer anOtherIndex);
		%feature("autodoc", "1");
		Handle_Graphic2d_HSequenceOfPrimitives Split(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer anIndex, const Handle_Graphic2d_Primitive &anItem);
		%feature("autodoc", "1");
		const Handle_Graphic2d_Primitive & Value(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		Handle_Graphic2d_Primitive & ChangeValue(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer fromIndex, const Standard_Integer toIndex);
		%feature("autodoc", "1");
		const Graphic2d_SequenceOfPrimitives & Sequence() const;
		%feature("autodoc", "1");
		Graphic2d_SequenceOfPrimitives & ChangeSequence();
		%feature("autodoc", "1");
		Handle_Graphic2d_HSequenceOfPrimitives ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic2d_HSequenceOfPrimitives {
	Handle_Graphic2d_HSequenceOfPrimitives GetHandle() {
	return *(Handle_Graphic2d_HSequenceOfPrimitives*) &$self;
	}
};
%extend Graphic2d_HSequenceOfPrimitives {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic2d_HSequenceOfPrimitives::~Graphic2d_HSequenceOfPrimitives %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic2d_HSequenceOfPrimitives {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic2d_HSequenceOfVertex;
class Graphic2d_HSequenceOfVertex : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Graphic2d_HSequenceOfVertex();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const Graphic2d_Vertex &anItem);
		%feature("autodoc", "1");
		void Append(const Handle_Graphic2d_HSequenceOfVertex &aSequence);
		%feature("autodoc", "1");
		void Prepend(const Graphic2d_Vertex &anItem);
		%feature("autodoc", "1");
		void Prepend(const Handle_Graphic2d_HSequenceOfVertex &aSequence);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Graphic2d_Vertex &anItem);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_Graphic2d_HSequenceOfVertex &aSequence);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Graphic2d_Vertex &anItem);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_Graphic2d_HSequenceOfVertex &aSequence);
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer anIndex, const Standard_Integer anOtherIndex);
		%feature("autodoc", "1");
		Handle_Graphic2d_HSequenceOfVertex Split(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer anIndex, const Graphic2d_Vertex &anItem);
		%feature("autodoc", "1");
		const Graphic2d_Vertex & Value(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		Graphic2d_Vertex & ChangeValue(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer fromIndex, const Standard_Integer toIndex);
		%feature("autodoc", "1");
		const Graphic2d_SequenceOfVertex & Sequence() const;
		%feature("autodoc", "1");
		Graphic2d_SequenceOfVertex & ChangeSequence();
		%feature("autodoc", "1");
		Handle_Graphic2d_HSequenceOfVertex ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic2d_HSequenceOfVertex {
	Handle_Graphic2d_HSequenceOfVertex GetHandle() {
	return *(Handle_Graphic2d_HSequenceOfVertex*) &$self;
	}
};
%extend Graphic2d_HSequenceOfVertex {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic2d_HSequenceOfVertex::~Graphic2d_HSequenceOfVertex %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic2d_HSequenceOfVertex {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic2d_SequenceOfBuffer;
class Graphic2d_SequenceOfBuffer : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		Graphic2d_SequenceOfBuffer();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const Graphic2d_SequenceOfBuffer & Assign(const Graphic2d_SequenceOfBuffer &Other);
		%feature("autodoc", "1");
		const Graphic2d_SequenceOfBuffer & operator=(const Graphic2d_SequenceOfBuffer &Other);
		%feature("autodoc", "1");
		void Append(const Handle_Graphic2d_Buffer &T);
		%feature("autodoc", "1");
		void Append(Graphic2d_SequenceOfBuffer & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_Graphic2d_Buffer &T);
		%feature("autodoc", "1");
		void Prepend(Graphic2d_SequenceOfBuffer & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_Graphic2d_Buffer &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, Graphic2d_SequenceOfBuffer & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_Graphic2d_Buffer &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, Graphic2d_SequenceOfBuffer & S);
		%feature("autodoc", "1");
		const Handle_Graphic2d_Buffer & First() const;
		%feature("autodoc", "1");
		const Handle_Graphic2d_Buffer & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, Graphic2d_SequenceOfBuffer & S);
		%feature("autodoc", "1");
		const Handle_Graphic2d_Buffer & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_Graphic2d_Buffer & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_Graphic2d_Buffer &I);
		%feature("autodoc", "1");
		Handle_Graphic2d_Buffer & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_Graphic2d_Buffer & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") Graphic2d_SequenceOfBuffer::~Graphic2d_SequenceOfBuffer %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic2d_SequenceOfBuffer {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic2d_Ellips;
class Graphic2d_Ellips : public Graphic2d_Line {
	public:
		%feature("autodoc", "1");
		Graphic2d_Ellips(const Handle_Graphic2d_GraphicObject &aGraphicObject, const Quantity_Length X, const Quantity_Length Y, const Quantity_Length MajorRadius, const Quantity_Length MinorRadius, const Quantity_PlaneAngle anAngle);
		%feature("autodoc","Center() -> [Standard_Real, Standard_Real]");

		void Center(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Quantity_Length MajorRadius() const;
		%feature("autodoc", "1");
		Quantity_Length MinorRadius() const;
		%feature("autodoc", "1");
		Quantity_PlaneAngle Angle() const;
		%feature("autodoc", "1");
		virtual		void Save(Aspect_FStream & aFStream) const;
		%feature("autodoc", "1");
		static		void Retrieve(Aspect_IFStream & anIFStream, const Handle_Graphic2d_GraphicObject &aGraphicObject);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic2d_Ellips {
	Handle_Graphic2d_Ellips GetHandle() {
	return *(Handle_Graphic2d_Ellips*) &$self;
	}
};
%extend Graphic2d_Ellips {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic2d_Ellips::~Graphic2d_Ellips %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic2d_Ellips {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic2d_OverrideColorError;
class Graphic2d_OverrideColorError : public Standard_OutOfRange {
	public:
		%feature("autodoc", "1");
		Graphic2d_OverrideColorError();
		%feature("autodoc", "1");
		Graphic2d_OverrideColorError(const char * AString);
		%feature("autodoc", "1");
		static		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		static		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		static		Handle_Graphic2d_OverrideColorError NewInstance(const char * aMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic2d_OverrideColorError {
	Handle_Graphic2d_OverrideColorError GetHandle() {
	return *(Handle_Graphic2d_OverrideColorError*) &$self;
	}
};
%extend Graphic2d_OverrideColorError {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic2d_OverrideColorError::~Graphic2d_OverrideColorError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic2d_OverrideColorError {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic2d_SetOfPolylines;
class Graphic2d_SetOfPolylines : public Graphic2d_Line {
	public:
		%feature("autodoc", "1");
		Graphic2d_SetOfPolylines(const Handle_Graphic2d_GraphicObject &aGraphicObject);
		%feature("autodoc", "1");
		void Add(const Quantity_Length X, const Quantity_Length Y, const Standard_Boolean NewPolyline=0);
		%feature("autodoc", "1");
		void Add(const Quantity_Length X1, const Quantity_Length Y1, const Quantity_Length X2, const Quantity_Length Y2);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Length(const Standard_Integer aPrank) const;
		%feature("autodoc","Values(Standard_Integer aPrank, Standard_Integer aVrank) -> [Standard_Real, Standard_Real]");

		void Values(const Standard_Integer aPrank, const Standard_Integer aVrank, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		virtual		void Save(Aspect_FStream & aFStream) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic2d_SetOfPolylines {
	Handle_Graphic2d_SetOfPolylines GetHandle() {
	return *(Handle_Graphic2d_SetOfPolylines*) &$self;
	}
};
%extend Graphic2d_SetOfPolylines {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic2d_SetOfPolylines::~Graphic2d_SetOfPolylines %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic2d_SetOfPolylines {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic2d_Buffer;
class Graphic2d_Buffer : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Graphic2d_Buffer(const Handle_Graphic2d_View &aView, const Quantity_Length aPivotX, const Quantity_Length aPivotY, const Standard_Integer aWidthIndex=0, const Standard_Integer aColorIndex=0, const Standard_Integer aFontIndex=0, const Aspect_TypeOfDrawMode aDrawMode=Aspect_TODM_REPLACE);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		void Add(const Handle_Graphic2d_GraphicObject &anObject);
		%feature("autodoc", "1");
		void Add(const Handle_Graphic2d_Primitive &aPrimitive);
		%feature("autodoc", "1");
		void Remove(const Handle_Graphic2d_GraphicObject &anObject);
		%feature("autodoc", "1");
		void Remove(const Handle_Graphic2d_Primitive &aPrimitive);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void SetAttrib(const Standard_Integer aWidthIndex, const Standard_Integer aColorIndex, const Standard_Integer aFontIndex, const Aspect_TypeOfDrawMode aDrawMode);
		%feature("autodoc", "1");
		void SetPivot(const Quantity_Length aPivotX, const Quantity_Length aPivotY);
		%feature("autodoc", "1");
		void SetPivot();
		%feature("autodoc", "1");
		void Move(const Quantity_Length aDeltaX, const Quantity_Length aDeltaY);
		%feature("autodoc", "1");
		void Rotate(const Quantity_PlaneAngle anAngle);
		%feature("autodoc", "1");
		void Scale(const Quantity_Factor aFactor);
		%feature("autodoc", "1");
		Handle_Graphic2d_View View() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Boolean IsIn(const Handle_Graphic2d_Primitive &aPrimitive) const;
		%feature("autodoc", "1");
		Standard_Boolean IsIn(const Handle_Graphic2d_GraphicObject &anObject) const;
		%feature("autodoc", "1");
		void Post();
		%feature("autodoc", "1");
		void Post(const Handle_Aspect_WindowDriver &aDriver, const Handle_Graphic2d_ViewMapping &aViewMapping, const Standard_Real aXPosition, const Standard_Real aYPosition, const Standard_Real aScale);
		%feature("autodoc", "1");
		void UnPost();
		%feature("autodoc", "1");
		Standard_Boolean IsPosted() const;
		%feature("autodoc", "1");
		Quantity_PlaneAngle Angle() const;
		%feature("autodoc", "1");
		Quantity_Factor Scale() const;
		%feature("autodoc", "1");
		Quantity_Length Xpivot() const;
		%feature("autodoc", "1");
		Quantity_Length Ypivot() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic2d_Buffer {
	Handle_Graphic2d_Buffer GetHandle() {
	return *(Handle_Graphic2d_Buffer*) &$self;
	}
};
%extend Graphic2d_Buffer {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic2d_Buffer::~Graphic2d_Buffer %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic2d_Buffer {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic2d_DetectionColorError;
class Graphic2d_DetectionColorError : public Standard_OutOfRange {
	public:
		%feature("autodoc", "1");
		Graphic2d_DetectionColorError();
		%feature("autodoc", "1");
		Graphic2d_DetectionColorError(const char * AString);
		%feature("autodoc", "1");
		static		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		static		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		static		Handle_Graphic2d_DetectionColorError NewInstance(const char * aMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic2d_DetectionColorError {
	Handle_Graphic2d_DetectionColorError GetHandle() {
	return *(Handle_Graphic2d_DetectionColorError*) &$self;
	}
};
%extend Graphic2d_DetectionColorError {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic2d_DetectionColorError::~Graphic2d_DetectionColorError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic2d_DetectionColorError {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic2d_DisplayList;
class Graphic2d_DisplayList : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Graphic2d_DisplayList();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const Handle_Graphic2d_GraphicObject &anItem);
		%feature("autodoc", "1");
		void Append(const Handle_Graphic2d_DisplayList &aSequence);
		%feature("autodoc", "1");
		void Prepend(const Handle_Graphic2d_GraphicObject &anItem);
		%feature("autodoc", "1");
		void Prepend(const Handle_Graphic2d_DisplayList &aSequence);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_Graphic2d_GraphicObject &anItem);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_Graphic2d_DisplayList &aSequence);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_Graphic2d_GraphicObject &anItem);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_Graphic2d_DisplayList &aSequence);
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer anIndex, const Standard_Integer anOtherIndex);
		%feature("autodoc", "1");
		Handle_Graphic2d_DisplayList Split(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer anIndex, const Handle_Graphic2d_GraphicObject &anItem);
		%feature("autodoc", "1");
		const Handle_Graphic2d_GraphicObject & Value(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		Handle_Graphic2d_GraphicObject & ChangeValue(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer fromIndex, const Standard_Integer toIndex);
		%feature("autodoc", "1");
		const Graphic2d_SequenceOfGraphicObject & Sequence() const;
		%feature("autodoc", "1");
		Graphic2d_SequenceOfGraphicObject & ChangeSequence();
		%feature("autodoc", "1");
		Handle_Graphic2d_DisplayList ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic2d_DisplayList {
	Handle_Graphic2d_DisplayList GetHandle() {
	return *(Handle_Graphic2d_DisplayList*) &$self;
	}
};
%extend Graphic2d_DisplayList {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic2d_DisplayList::~Graphic2d_DisplayList %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic2d_DisplayList {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic2d_SequenceNodeOfSequenceOfPolyline;
class Graphic2d_SequenceNodeOfSequenceOfPolyline : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Graphic2d_SequenceNodeOfSequenceOfPolyline(const Handle_Graphic2d_HSequenceOfVertex &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_Graphic2d_HSequenceOfVertex & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic2d_SequenceNodeOfSequenceOfPolyline {
	Handle_Graphic2d_SequenceNodeOfSequenceOfPolyline GetHandle() {
	return *(Handle_Graphic2d_SequenceNodeOfSequenceOfPolyline*) &$self;
	}
};
%extend Graphic2d_SequenceNodeOfSequenceOfPolyline {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic2d_SequenceNodeOfSequenceOfPolyline::~Graphic2d_SequenceNodeOfSequenceOfPolyline %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic2d_SequenceNodeOfSequenceOfPolyline {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic2d_SequenceNodeOfSequenceOfPrimitives;
class Graphic2d_SequenceNodeOfSequenceOfPrimitives : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Graphic2d_SequenceNodeOfSequenceOfPrimitives(const Handle_Graphic2d_Primitive &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_Graphic2d_Primitive & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic2d_SequenceNodeOfSequenceOfPrimitives {
	Handle_Graphic2d_SequenceNodeOfSequenceOfPrimitives GetHandle() {
	return *(Handle_Graphic2d_SequenceNodeOfSequenceOfPrimitives*) &$self;
	}
};
%extend Graphic2d_SequenceNodeOfSequenceOfPrimitives {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic2d_SequenceNodeOfSequenceOfPrimitives::~Graphic2d_SequenceNodeOfSequenceOfPrimitives %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic2d_SequenceNodeOfSequenceOfPrimitives {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic2d_BufferList;
class Graphic2d_BufferList : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Graphic2d_BufferList();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const Handle_Graphic2d_Buffer &anItem);
		%feature("autodoc", "1");
		void Append(const Handle_Graphic2d_BufferList &aSequence);
		%feature("autodoc", "1");
		void Prepend(const Handle_Graphic2d_Buffer &anItem);
		%feature("autodoc", "1");
		void Prepend(const Handle_Graphic2d_BufferList &aSequence);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_Graphic2d_Buffer &anItem);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_Graphic2d_BufferList &aSequence);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_Graphic2d_Buffer &anItem);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_Graphic2d_BufferList &aSequence);
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer anIndex, const Standard_Integer anOtherIndex);
		%feature("autodoc", "1");
		Handle_Graphic2d_BufferList Split(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer anIndex, const Handle_Graphic2d_Buffer &anItem);
		%feature("autodoc", "1");
		const Handle_Graphic2d_Buffer & Value(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		Handle_Graphic2d_Buffer & ChangeValue(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer fromIndex, const Standard_Integer toIndex);
		%feature("autodoc", "1");
		const Graphic2d_SequenceOfBuffer & Sequence() const;
		%feature("autodoc", "1");
		Graphic2d_SequenceOfBuffer & ChangeSequence();
		%feature("autodoc", "1");
		Handle_Graphic2d_BufferList ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic2d_BufferList {
	Handle_Graphic2d_BufferList GetHandle() {
	return *(Handle_Graphic2d_BufferList*) &$self;
	}
};
%extend Graphic2d_BufferList {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic2d_BufferList::~Graphic2d_BufferList %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic2d_BufferList {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic2d_SequenceNodeOfSequenceOfBuffer;
class Graphic2d_SequenceNodeOfSequenceOfBuffer : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Graphic2d_SequenceNodeOfSequenceOfBuffer(const Handle_Graphic2d_Buffer &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_Graphic2d_Buffer & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic2d_SequenceNodeOfSequenceOfBuffer {
	Handle_Graphic2d_SequenceNodeOfSequenceOfBuffer GetHandle() {
	return *(Handle_Graphic2d_SequenceNodeOfSequenceOfBuffer*) &$self;
	}
};
%extend Graphic2d_SequenceNodeOfSequenceOfBuffer {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic2d_SequenceNodeOfSequenceOfBuffer::~Graphic2d_SequenceNodeOfSequenceOfBuffer %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic2d_SequenceNodeOfSequenceOfBuffer {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic2d_CircleMarker;
class Graphic2d_CircleMarker : public Graphic2d_VectorialMarker {
	public:
		%feature("autodoc", "1");
		Graphic2d_CircleMarker(const Handle_Graphic2d_GraphicObject &aGraphicObject, const Quantity_Length aXPosition, const Quantity_Length aYPosition, const Quantity_Length X, const Quantity_Length Y, const Quantity_Length Radius);
		%feature("autodoc", "1");
		Graphic2d_CircleMarker(const Handle_Graphic2d_GraphicObject &aGraphicObject, const Quantity_Length aXPosition, const Quantity_Length aYPosition, const Quantity_Length X, const Quantity_Length Y, const Quantity_Length Radius, const Quantity_PlaneAngle Alpha, const Quantity_PlaneAngle Beta);
		%feature("autodoc","Center() -> [Standard_Real, Standard_Real]");

		void Center(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Quantity_Length Radius() const;
		%feature("autodoc", "1");
		Quantity_PlaneAngle FirstAngle() const;
		%feature("autodoc", "1");
		Quantity_PlaneAngle SecondAngle() const;
		%feature("autodoc", "1");
		virtual		void Save(Aspect_FStream & aFStream) const;
		%feature("autodoc", "1");
		static		void Retrieve(Aspect_IFStream & anIFStream, const Handle_Graphic2d_GraphicObject &aGraphicObject);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic2d_CircleMarker {
	Handle_Graphic2d_CircleMarker GetHandle() {
	return *(Handle_Graphic2d_CircleMarker*) &$self;
	}
};
%extend Graphic2d_CircleMarker {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic2d_CircleMarker::~Graphic2d_CircleMarker %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic2d_CircleMarker {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic2d_HidingText;
class Graphic2d_HidingText : public Graphic2d_Text {
	public:
		%feature("autodoc", "1");
		Graphic2d_HidingText(const Handle_Graphic2d_GraphicObject &aGraphicObject, const TCollection_ExtendedString &aText, const Standard_Real X, const Standard_Real Y, const Quantity_PlaneAngle anAngle=0.0, const Quantity_Ratio aMargin=1.00000000000000005551115123125782702118158340454e-1, const Aspect_TypeOfText aType=Aspect_TOT_SOLID, const Quantity_Factor aScale=1.0e+0);
		%feature("autodoc", "1");
		void SetFrameColorIndex(const Standard_Integer anIndex=0);
		%feature("autodoc", "1");
		void SetFrameWidthIndex(const Standard_Integer anIndex=0);
		%feature("autodoc", "1");
		void SetHidingColorIndex(const Standard_Integer anIndex=0);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Fit(const Quantity_Length aWidth, const Quantity_Length aHeight, const Standard_Boolean Adjust=1, const Standard_Boolean Expand=1);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Trunc(const Quantity_Length aWidth);
		%feature("autodoc","TextSize() -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real]");

		virtual		Standard_Boolean TextSize(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Quantity_Ratio Margin() const;
		%feature("autodoc", "1");
		Standard_Integer HidingColorIndex() const;
		%feature("autodoc", "1");
		Standard_Integer FrameColorIndex() const;
		%feature("autodoc", "1");
		Standard_Integer FrameWidthIndex() const;
		%feature("autodoc", "1");
		virtual		void Save(Aspect_FStream & aFStream) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic2d_HidingText {
	Handle_Graphic2d_HidingText GetHandle() {
	return *(Handle_Graphic2d_HidingText*) &$self;
	}
};
%extend Graphic2d_HidingText {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic2d_HidingText::~Graphic2d_HidingText %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic2d_HidingText {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic2d_SequenceOfVertex;
class Graphic2d_SequenceOfVertex : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		Graphic2d_SequenceOfVertex();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const Graphic2d_SequenceOfVertex & Assign(const Graphic2d_SequenceOfVertex &Other);
		%feature("autodoc", "1");
		const Graphic2d_SequenceOfVertex & operator=(const Graphic2d_SequenceOfVertex &Other);
		%feature("autodoc", "1");
		void Append(const Graphic2d_Vertex &T);
		%feature("autodoc", "1");
		void Append(Graphic2d_SequenceOfVertex & S);
		%feature("autodoc", "1");
		void Prepend(const Graphic2d_Vertex &T);
		%feature("autodoc", "1");
		void Prepend(Graphic2d_SequenceOfVertex & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Graphic2d_Vertex &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, Graphic2d_SequenceOfVertex & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Graphic2d_Vertex &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, Graphic2d_SequenceOfVertex & S);
		%feature("autodoc", "1");
		const Graphic2d_Vertex & First() const;
		%feature("autodoc", "1");
		const Graphic2d_Vertex & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, Graphic2d_SequenceOfVertex & S);
		%feature("autodoc", "1");
		const Graphic2d_Vertex & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Graphic2d_Vertex & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Graphic2d_Vertex &I);
		%feature("autodoc", "1");
		Graphic2d_Vertex & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Graphic2d_Vertex & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") Graphic2d_SequenceOfVertex::~Graphic2d_SequenceOfVertex %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic2d_SequenceOfVertex {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic2d_TransientDefinitionError;
class Graphic2d_TransientDefinitionError : public Standard_OutOfRange {
	public:
		%feature("autodoc", "1");
		Graphic2d_TransientDefinitionError();
		%feature("autodoc", "1");
		Graphic2d_TransientDefinitionError(const char * AString);
		%feature("autodoc", "1");
		static		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		static		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		static		Handle_Graphic2d_TransientDefinitionError NewInstance(const char * aMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic2d_TransientDefinitionError {
	Handle_Graphic2d_TransientDefinitionError GetHandle() {
	return *(Handle_Graphic2d_TransientDefinitionError*) &$self;
	}
};
%extend Graphic2d_TransientDefinitionError {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic2d_TransientDefinitionError::~Graphic2d_TransientDefinitionError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic2d_TransientDefinitionError {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic2d_Marker;
class Graphic2d_Marker : public Graphic2d_Line {
	public:
		%feature("autodoc", "1");
		Graphic2d_Marker(const Handle_Graphic2d_GraphicObject &aGraphicObject, const Quantity_Length X, const Quantity_Length Y);
		%feature("autodoc", "1");
		Graphic2d_Marker(const Handle_Graphic2d_GraphicObject &aGraphicObject, const Standard_Integer anIndex, const Quantity_Length X, const Quantity_Length Y, const Quantity_Length aWidth, const Quantity_Length anHeight, const Quantity_PlaneAngle anAngle=0.0);
		%feature("autodoc","Position() -> [Standard_Real, Standard_Real]");

		void Position(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc","Size() -> [Standard_Real, Standard_Real]");

		void Size(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Integer Index() const;
		%feature("autodoc", "1");
		Quantity_PlaneAngle Angle() const;
		%feature("autodoc", "1");
		virtual		void Save(Aspect_FStream & aFStream) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic2d_Marker {
	Handle_Graphic2d_Marker GetHandle() {
	return *(Handle_Graphic2d_Marker*) &$self;
	}
};
%extend Graphic2d_Marker {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic2d_Marker::~Graphic2d_Marker %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic2d_Marker {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic2d_Vertex;
class Graphic2d_Vertex {
	public:
		%feature("autodoc", "1");
		Graphic2d_Vertex();
		%feature("autodoc", "1");
		Graphic2d_Vertex(const Standard_Real AX, const Standard_Real AY);
		%feature("autodoc", "1");
		Graphic2d_Vertex(const Standard_ShortReal AX, const Standard_ShortReal AY);
		%feature("autodoc", "1");
		void SetCoord(const Quantity_Length Xnew, const Quantity_Length Ynew);
		%feature("autodoc", "1");
		void SetXCoord(const Quantity_Length Xnew);
		%feature("autodoc", "1");
		void SetYCoord(const Quantity_Length Ynew);
		%feature("autodoc","Coord() -> [Standard_Real, Standard_Real]");

		void Coord(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Quantity_Length X() const;
		%feature("autodoc", "1");
		Quantity_Length Y() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const Graphic2d_Vertex &other) const;
		%feature("autodoc", "1");
		Standard_Boolean operator==(const Graphic2d_Vertex &other) const;
		%feature("autodoc", "1");
		static		Quantity_Length Distance(const Graphic2d_Vertex &AV1, const Graphic2d_Vertex &AV2);

};
%feature("shadow") Graphic2d_Vertex::~Graphic2d_Vertex %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic2d_Vertex {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic2d_DrawerDefinitionError;
class Graphic2d_DrawerDefinitionError : public Standard_OutOfRange {
	public:
		%feature("autodoc", "1");
		Graphic2d_DrawerDefinitionError();
		%feature("autodoc", "1");
		Graphic2d_DrawerDefinitionError(const char * AString);
		%feature("autodoc", "1");
		static		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		static		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		static		Handle_Graphic2d_DrawerDefinitionError NewInstance(const char * aMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic2d_DrawerDefinitionError {
	Handle_Graphic2d_DrawerDefinitionError GetHandle() {
	return *(Handle_Graphic2d_DrawerDefinitionError*) &$self;
	}
};
%extend Graphic2d_DrawerDefinitionError {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic2d_DrawerDefinitionError::~Graphic2d_DrawerDefinitionError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic2d_DrawerDefinitionError {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic2d_Segment;
class Graphic2d_Segment : public Graphic2d_Line {
	public:
		%feature("autodoc", "1");
		Graphic2d_Segment(const Handle_Graphic2d_GraphicObject &aGraphicObject, const Quantity_Length X1, const Quantity_Length Y1, const Quantity_Length X2, const Quantity_Length Y2);
		%feature("autodoc","FirstPoint() -> [Standard_Real, Standard_Real]");

		void FirstPoint(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc","SecondPoint() -> [Standard_Real, Standard_Real]");

		void SecondPoint(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		virtual		void Save(Aspect_FStream & aFStream) const;
		%feature("autodoc", "1");
		static		void Retrieve(Aspect_IFStream & anIFStream, const Handle_Graphic2d_GraphicObject &aGraphicObject);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic2d_Segment {
	Handle_Graphic2d_Segment GetHandle() {
	return *(Handle_Graphic2d_Segment*) &$self;
	}
};
%extend Graphic2d_Segment {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic2d_Segment::~Graphic2d_Segment %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic2d_Segment {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic2d_Paragraph;
class Graphic2d_Paragraph : public Graphic2d_Primitive {
	public:
		%feature("autodoc", "1");
		Graphic2d_Paragraph(const Handle_Graphic2d_GraphicObject &aGraphicObject, const Standard_Real X, const Standard_Real Y, const Quantity_PlaneAngle anAngle=0.0, const Aspect_CardinalPoints anOffset=Aspect_CP_Center, const Quantity_Factor aScale=1.0e+0);
		%feature("autodoc", "1");
		void SetSlant(const Quantity_PlaneAngle aSlant=0.0);
		%feature("autodoc", "1");
		void SetSpacing(const Quantity_Ratio aSpacing=5.0e-1);
		%feature("autodoc", "1");
		void SetMargin(const Quantity_Length aMargin=0.0);
		%feature("autodoc", "1");
		void SetZoomable(const Standard_Boolean aFlag=0);
		%feature("autodoc", "1");
		void SetFrameColorIndex(const Standard_Integer anIndex=0);
		%feature("autodoc", "1");
		void SetFrameWidthIndex(const Standard_Integer anIndex=0);
		%feature("autodoc", "1");
		void SetHidingColorIndex(const Standard_Integer anIndex=0);
		%feature("autodoc", "1");
		void SetCurrentColorIndex(const Standard_Integer anIndex=1);
		%feature("autodoc", "1");
		void SetCurrentFontIndex(const Standard_Integer anIndex=0, const Quantity_Length aHScale=1.0e+0, const Quantity_Length aWScale=1.0e+0);
		%feature("autodoc", "1");
		void SetCurrentAlignment(const Graphic2d_TypeOfAlignment anAlignment=Graphic2d_TOA_LEFT);
		%feature("autodoc", "1");
		void SetCurrentUnderline(const Standard_Boolean isUnderlined=0);
		%feature("autodoc", "1");
		void AddText(const TCollection_ExtendedString &aText, const Standard_Integer aRow=0, const Standard_Integer aColumn=0);
		%feature("autodoc", "1");
		void ChangeText(const TCollection_ExtendedString &aText, const Standard_Integer aRow, const Standard_Integer aColumn);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsZoomable() const;
		%feature("autodoc","Size() -> [Standard_Real, Standard_Real]");

		void Size(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc","Position() -> [Standard_Real, Standard_Real]");

		void Position(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc","Offset() -> [Standard_Real, Standard_Real]");

		Aspect_CardinalPoints Offset(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Quantity_PlaneAngle Angle() const;
		%feature("autodoc", "1");
		Quantity_PlaneAngle Slant() const;
		%feature("autodoc", "1");
		Quantity_Ratio Spacing() const;
		%feature("autodoc", "1");
		Quantity_Length Margin() const;
		%feature("autodoc", "1");
		Standard_Integer HidingColorIndex() const;
		%feature("autodoc", "1");
		Standard_Integer FrameColorIndex() const;
		%feature("autodoc", "1");
		Standard_Integer FrameWidthIndex() const;
		%feature("autodoc","Text(Standard_Integer aRank) -> [Standard_Integer, Standard_Integer, Standard_Integer, Standard_Integer]");

		TCollection_ExtendedString Text(const Standard_Integer aRank, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue, Graphic2d_TypeOfAlignment & anAlignment) const;
		%feature("autodoc","TextSize(Standard_Integer aRank) -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real]");

		Standard_Boolean TextSize(const Standard_Integer aRank, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer MaxRow() const;
		%feature("autodoc", "1");
		Standard_Integer MaxColumn() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean ComputeMinMax();
		%feature("autodoc", "1");
		virtual		void Save(Aspect_FStream & aFStream) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic2d_Paragraph {
	Handle_Graphic2d_Paragraph GetHandle() {
	return *(Handle_Graphic2d_Paragraph*) &$self;
	}
};
%extend Graphic2d_Paragraph {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic2d_Paragraph::~Graphic2d_Paragraph %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic2d_Paragraph {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic2d_SequenceNodeOfSequenceOfVertex;
class Graphic2d_SequenceNodeOfSequenceOfVertex : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Graphic2d_SequenceNodeOfSequenceOfVertex(const Graphic2d_Vertex &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Graphic2d_Vertex & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic2d_SequenceNodeOfSequenceOfVertex {
	Handle_Graphic2d_SequenceNodeOfSequenceOfVertex GetHandle() {
	return *(Handle_Graphic2d_SequenceNodeOfSequenceOfVertex*) &$self;
	}
};
%extend Graphic2d_SequenceNodeOfSequenceOfVertex {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic2d_SequenceNodeOfSequenceOfVertex::~Graphic2d_SequenceNodeOfSequenceOfVertex %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic2d_SequenceNodeOfSequenceOfVertex {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic2d_Drawer;
class Graphic2d_Drawer : public Standard_Transient {
	public:
		%feature("autodoc", "1");
		Graphic2d_Drawer();
		%feature("autodoc", "1");
		void SetDriver(const Handle_Aspect_Driver &aDriver);
		%feature("autodoc", "1");
		Handle_Aspect_Driver Driver() const;
		%feature("autodoc", "1");
		Standard_Boolean IsWindowDriver() const;
		%feature("autodoc", "1");
		Handle_Aspect_WindowDriver WindowDriver() const;
		%feature("autodoc", "1");
		Standard_Boolean IsPlotterDriver() const;
		%feature("autodoc", "1");
		Handle_PlotMgt_PlotterDriver PlotterDriver() const;
		%feature("autodoc", "1");
		void SetDrawPrecision(const Standard_Real aPrecision, const Standard_Real aCoefficient, const Aspect_TypeOfDeflection aType);
		%feature("autodoc", "1");
		void DrawPrecision(Standard_ShortReal & aPrecision, Standard_ShortReal & aCoefficient, Aspect_TypeOfDeflection & aType) const;
		%feature("autodoc", "1");
		void SetTextPrecision(const Standard_ShortReal aPrecision);
		%feature("autodoc", "1");
		Standard_ShortReal TextPrecision() const;
		%feature("autodoc", "1");
		void SetValues(const Standard_Real XF, const Standard_Real YF, const Standard_Real SF, const Standard_Real XT, const Standard_Real YT, const Standard_Real ST, const Standard_Real ZF);
		%feature("autodoc", "1");
		void Values(Standard_ShortReal & XF, Standard_ShortReal & YF, Standard_ShortReal & SF, Standard_ShortReal & XT, Standard_ShortReal & YT, Standard_ShortReal & ST, Standard_ShortReal & ZF) const;
		%feature("autodoc", "1");
		void SetOverride(const Standard_Boolean aValue);
		%feature("autodoc", "1");
		void SetOverrideColor(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void SetOffSet(const Standard_Integer anOffSet);
		%feature("autodoc", "1");
		virtual		void SetLineAttrib(const Standard_Integer ColorIndex, const Standard_Integer TypeIndex, const Standard_Integer WidthIndex);
		%feature("autodoc", "1");
		void SetMarkerAttrib(const Standard_Integer ColorIndex, const Standard_Integer WidthIndex, const Standard_Boolean FillMarker);
		%feature("autodoc", "1");
		void SetPolyAttrib(const Standard_Integer ColorIndex, const Standard_Integer TileIndex, const Standard_Boolean DrawEdge);
		%feature("autodoc", "1");
		void SetHidingPolyAttrib(const Standard_Integer HidingColorIndex, const Standard_Integer FrameColorIndex, const Standard_Integer FrameTypeIndex, const Standard_Integer FrameWidthIndex);
		%feature("autodoc", "1");
		void SetTextAttrib(const Standard_Integer ColorIndex, const Standard_Integer FontIndex, const Standard_ShortReal aSlant, const Standard_ShortReal aHScale, const Standard_ShortReal aWScale, const Standard_Boolean isUnderlined);
		%feature("autodoc", "1");
		void SetHidingTextAttrib(const Standard_Integer ColorIndex, const Standard_Integer HidingColorIndex, const Standard_Integer FrameColorIndex, const Standard_Integer FrameWidthIndex, const Standard_Integer FontIndex, const Standard_ShortReal aSlant, const Standard_ShortReal aHScale, const Standard_ShortReal aWScale, const Standard_Boolean isUnderlined);
		%feature("autodoc", "1");
		void SetFramedTextAttrib(const Standard_Integer ColorIndex, const Standard_Integer FrameColorIndex, const Standard_Integer FrameWidthIndex, const Standard_Integer FontIndex, const Standard_ShortReal aSlant, const Standard_ShortReal aHScale, const Standard_ShortReal aWScale, const Standard_Boolean isUnderlined);
		%feature("autodoc", "1");
		Standard_Boolean IsKnownImage(const Handle_Standard_Transient &anImageId);
		%feature("autodoc", "1");
		void ClearImage(const Handle_Standard_Transient &anImageId);
		%feature("autodoc", "1");
		void DrawImage(const Handle_Standard_Transient &anImageId, const Standard_ShortReal aX, const Standard_ShortReal aY);
		%feature("autodoc", "1");
		void ClearImageFile(const char * aName);
		%feature("autodoc", "1");
		void DrawImageFile(const char * aName, const Standard_ShortReal aX, const Standard_ShortReal aY, const Quantity_Factor aScale);
		%feature("autodoc", "1");
		void FillAndDrawImage(const Handle_Standard_Transient &anImageId, const Standard_ShortReal aX, const Standard_ShortReal aY, const Standard_Integer aWidth, const Standard_Integer aHeight, const Standard_Address anArrayOfPixels);
		%feature("autodoc", "1");
		void FillAndDrawImage(const Handle_Standard_Transient &anImageId, const Standard_ShortReal aX, const Standard_ShortReal aY, const Standard_Integer anIndexOfLine, const Standard_Integer aWidth, const Standard_Integer aHeight, const Standard_Address anArrayOfPixels);
		%feature("autodoc", "1");
		void GetMapFrom(const Standard_ShortReal x1, const Standard_ShortReal y1, Standard_ShortReal & x2, Standard_ShortReal & y2) const;
		%feature("autodoc", "1");
		void GetMapFromTo(const Standard_ShortReal x1, const Standard_ShortReal y1, Standard_ShortReal & x2, Standard_ShortReal & y2) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean GetTextSize(const TCollection_ExtendedString &aText, Standard_ShortReal & aWidth, Standard_ShortReal & aHeight) const;
		%feature("autodoc", "1");
		Standard_Boolean GetTextSize(const TCollection_ExtendedString &aText, Standard_ShortReal & aWidth, Standard_ShortReal & aHeight, Standard_ShortReal & anXoffset, Standard_ShortReal & anYoffset) const;
		%feature("autodoc", "1");
		Standard_Boolean GetFontSize(Standard_ShortReal & aHeight, Standard_ShortReal & aBheight, Standard_ShortReal & aSlant) const;
		%feature("autodoc", "1");
		Standard_Boolean GetImageSize(const char * aFileName, Standard_ShortReal & aWidth, Standard_ShortReal & aHeight) const;
		%feature("autodoc","GetImageSize(Standard_CString aFileName) -> [Standard_Integer, Standard_Integer]");

		Standard_Boolean GetImageSize(const char * aFileName, Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		void UnMapFromTo(const Standard_ShortReal x1, const Standard_ShortReal y1, Standard_ShortReal & x2, Standard_ShortReal & y2) const;
		%feature("autodoc", "1");
		Standard_ShortReal Convert(const Standard_ShortReal aValue) const;
		%feature("autodoc", "1");
		Standard_ShortReal Convert(const Standard_Integer aValue) const;
		%feature("autodoc", "1");
		Standard_ShortReal ConvertMapToFrom(const Standard_ShortReal x) const;
		%feature("autodoc", "1");
		Standard_ShortReal Scale() const;
		%feature("autodoc", "1");
		void DrawSegment(const Standard_ShortReal x1, const Standard_ShortReal y1, const Standard_ShortReal x2, const Standard_ShortReal y2);
		%feature("autodoc", "1");
		void DrawPolyline(const Standard_Real aDeltaX, const Standard_Real aDeltaY, const TShort_Array1OfShortReal &aListX, const TShort_Array1OfShortReal &aListY);
		%feature("autodoc", "1");
		void DrawPolygon(const Standard_Real aDeltaX, const Standard_Real aDeltaY, const TShort_Array1OfShortReal &aListX, const TShort_Array1OfShortReal &aListY);
		%feature("autodoc", "1");
		void DrawArc(const Standard_Real aDeltaX, const Standard_Real aDeltaY, const Standard_ShortReal aRadius, const Standard_ShortReal angle1, const Standard_ShortReal angle2);
		%feature("autodoc", "1");
		void DrawPolyArc(const Standard_Real aDeltaX, const Standard_Real aDeltaY, const Standard_ShortReal aRadius, const Standard_ShortReal angle1, const Standard_ShortReal angle2);
		%feature("autodoc", "1");
		void DrawInfiniteLine(const Standard_ShortReal x, const Standard_ShortReal y, const Standard_ShortReal dx, const Standard_ShortReal dy);
		%feature("autodoc", "1");
		void DrawMarker(const Standard_Integer anindex, const Standard_ShortReal x, const Standard_ShortReal y, const Standard_ShortReal awidth, const Standard_ShortReal anheight, const Standard_ShortReal angle);
		%feature("autodoc", "1");
		void DrawText(const TCollection_ExtendedString &aText, const Standard_ShortReal x, const Standard_ShortReal y, const Standard_ShortReal angle, const Aspect_TypeOfText aType);
		%feature("autodoc", "1");
		void DrawPolyText(const TCollection_ExtendedString &aText, const Standard_ShortReal x, const Standard_ShortReal y, const Standard_ShortReal angle, const Standard_ShortReal margin, const Aspect_TypeOfText aType);
		%feature("autodoc", "1");
		void DrawFramedText(const TCollection_ExtendedString &aText, const Standard_ShortReal x, const Standard_ShortReal y, const Standard_ShortReal angle, const Standard_ShortReal margin, const Aspect_TypeOfText aType);
		%feature("autodoc", "1");
		void MapInfiniteLineFromTo(const Standard_ShortReal x, const Standard_ShortReal y, const Standard_ShortReal dx, const Standard_ShortReal dy);
		%feature("autodoc", "1");
		virtual		void MapSegmentFromTo(const Standard_ShortReal x1, const Standard_ShortReal y1, const Standard_ShortReal x2, const Standard_ShortReal y2, const Standard_Integer aMode=0);
		%feature("autodoc", "1");
		void MapMarkerFromTo(const Standard_Integer anindex, const Standard_ShortReal x, const Standard_ShortReal y, const Standard_ShortReal awidth, const Standard_ShortReal anheight, const Standard_ShortReal angle, const Standard_Integer aMode=0);
		%feature("autodoc", "1");
		void MapMarkersFromTo(const Standard_Integer index, const Handle_TShort_HArray1OfShortReal &x, const Handle_TShort_HArray1OfShortReal &y, const Standard_ShortReal awidth, const Standard_ShortReal anheight, const Standard_ShortReal angle, const Standard_Integer aMode=0);
		%feature("autodoc", "1");
		void MapPolylineFromTo(const TShort_Array1OfShortReal &aListX, const TShort_Array1OfShortReal &aListY, const Standard_Integer aNumber=0);
		%feature("autodoc", "1");
		void MapPolylineFromTo(const Standard_ShortReal x, const Standard_ShortReal y, const Standard_Integer aMode=0);
		%feature("autodoc", "1");
		void MapPolygonFromTo(const TShort_Array1OfShortReal &aListX, const TShort_Array1OfShortReal &aListY, const Standard_Integer aNumber=0);
		%feature("autodoc", "1");
		void MapPolygonFromTo(const Standard_ShortReal x, const Standard_ShortReal y, const Standard_Integer aMode=0);
		%feature("autodoc", "1");
		virtual		void MapTextFromTo(const TCollection_ExtendedString &aText, const Standard_ShortReal x, const Standard_ShortReal y, const Standard_ShortReal angle, const Standard_ShortReal aDeltax, const Standard_ShortReal aDeltay, const Aspect_TypeOfText aType);
		%feature("autodoc", "1");
		void MapPolyTextFromTo(const TCollection_ExtendedString &aText, const Standard_ShortReal x, const Standard_ShortReal y, const Standard_ShortReal angle, const Standard_ShortReal margin, const Standard_ShortReal aDeltax, const Standard_ShortReal aDeltay, const Aspect_TypeOfText aType);
		%feature("autodoc", "1");
		void MapFramedTextFromTo(const TCollection_ExtendedString &aText, const Standard_ShortReal x, const Standard_ShortReal y, const Standard_ShortReal angle, const Standard_ShortReal margin, const Standard_ShortReal aDeltax, const Standard_ShortReal aDeltay, const Aspect_TypeOfText aType);
		%feature("autodoc", "1");
		virtual		void MapArcFromTo(const Standard_ShortReal x, const Standard_ShortReal y, const Standard_ShortReal aRadius, const Standard_ShortReal angle1, const Standard_ShortReal angle2, const Standard_Integer aMode=0);
		%feature("autodoc", "1");
		void MapPolyArcFromTo(const Standard_ShortReal x, const Standard_ShortReal y, const Standard_ShortReal aRadius, const Standard_ShortReal angle1, const Standard_ShortReal angle2, const Standard_Integer aMode=0);
		%feature("autodoc", "1");
		void SetRejection(const Standard_Boolean aClipFlag);
		%feature("autodoc", "1");
		Standard_Boolean IsIn(const Standard_ShortReal aMinX, const Standard_ShortReal aMaxX, const Standard_ShortReal aMinY, const Standard_ShortReal aMaxY) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic2d_Drawer {
	Handle_Graphic2d_Drawer GetHandle() {
	return *(Handle_Graphic2d_Drawer*) &$self;
	}
};
%extend Graphic2d_Drawer {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic2d_Drawer::~Graphic2d_Drawer %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic2d_Drawer {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic2d_PolylineDefinitionError;
class Graphic2d_PolylineDefinitionError : public Standard_OutOfRange {
	public:
		%feature("autodoc", "1");
		Graphic2d_PolylineDefinitionError();
		%feature("autodoc", "1");
		Graphic2d_PolylineDefinitionError(const char * AString);
		%feature("autodoc", "1");
		static		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		static		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		static		Handle_Graphic2d_PolylineDefinitionError NewInstance(const char * aMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic2d_PolylineDefinitionError {
	Handle_Graphic2d_PolylineDefinitionError GetHandle() {
	return *(Handle_Graphic2d_PolylineDefinitionError*) &$self;
	}
};
%extend Graphic2d_PolylineDefinitionError {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic2d_PolylineDefinitionError::~Graphic2d_PolylineDefinitionError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic2d_PolylineDefinitionError {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic2d_EllipsMarker;
class Graphic2d_EllipsMarker : public Graphic2d_VectorialMarker {
	public:
		%feature("autodoc", "1");
		Graphic2d_EllipsMarker(const Handle_Graphic2d_GraphicObject &aGraphicObject, const Quantity_Length aXPosition, const Quantity_Length aYPosition, const Quantity_Length X, const Quantity_Length Y, const Quantity_Length MajorRadius, const Quantity_Length MinorRadius, const Quantity_PlaneAngle anAngle);
		%feature("autodoc","Center() -> [Standard_Real, Standard_Real]");

		void Center(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Quantity_Length MajorRadius() const;
		%feature("autodoc", "1");
		Quantity_Length MinorRadius() const;
		%feature("autodoc", "1");
		Quantity_PlaneAngle Angle() const;
		%feature("autodoc", "1");
		virtual		void Save(Aspect_FStream & aFStream) const;
		%feature("autodoc", "1");
		static		void Retrieve(Aspect_IFStream & anIFStream, const Handle_Graphic2d_GraphicObject &aGraphicObject);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic2d_EllipsMarker {
	Handle_Graphic2d_EllipsMarker GetHandle() {
	return *(Handle_Graphic2d_EllipsMarker*) &$self;
	}
};
%extend Graphic2d_EllipsMarker {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic2d_EllipsMarker::~Graphic2d_EllipsMarker %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic2d_EllipsMarker {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic2d_InfiniteLineDefinitionError;
class Graphic2d_InfiniteLineDefinitionError : public Standard_OutOfRange {
	public:
		%feature("autodoc", "1");
		Graphic2d_InfiniteLineDefinitionError();
		%feature("autodoc", "1");
		Graphic2d_InfiniteLineDefinitionError(const char * AString);
		%feature("autodoc", "1");
		static		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		static		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		static		Handle_Graphic2d_InfiniteLineDefinitionError NewInstance(const char * aMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic2d_InfiniteLineDefinitionError {
	Handle_Graphic2d_InfiniteLineDefinitionError GetHandle() {
	return *(Handle_Graphic2d_InfiniteLineDefinitionError*) &$self;
	}
};
%extend Graphic2d_InfiniteLineDefinitionError {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic2d_InfiniteLineDefinitionError::~Graphic2d_InfiniteLineDefinitionError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic2d_InfiniteLineDefinitionError {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic2d_HArray1OfVertex;
class Graphic2d_HArray1OfVertex : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Graphic2d_HArray1OfVertex(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		Graphic2d_HArray1OfVertex(const Standard_Integer Low, const Standard_Integer Up, const Graphic2d_Vertex &V);
		%feature("autodoc", "1");
		void Init(const Graphic2d_Vertex &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Graphic2d_Vertex &Value);
		%feature("autodoc", "1");
		const Graphic2d_Vertex & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Graphic2d_Vertex & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const Graphic2d_Array1OfVertex & Array1() const;
		%feature("autodoc", "1");
		Graphic2d_Array1OfVertex & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic2d_HArray1OfVertex {
	Handle_Graphic2d_HArray1OfVertex GetHandle() {
	return *(Handle_Graphic2d_HArray1OfVertex*) &$self;
	}
};
%extend Graphic2d_HArray1OfVertex {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic2d_HArray1OfVertex::~Graphic2d_HArray1OfVertex %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic2d_HArray1OfVertex {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic2d_ImageDefinitionError;
class Graphic2d_ImageDefinitionError : public Standard_OutOfRange {
	public:
		%feature("autodoc", "1");
		Graphic2d_ImageDefinitionError();
		%feature("autodoc", "1");
		Graphic2d_ImageDefinitionError(const char * AString);
		%feature("autodoc", "1");
		static		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		static		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		static		Handle_Graphic2d_ImageDefinitionError NewInstance(const char * aMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic2d_ImageDefinitionError {
	Handle_Graphic2d_ImageDefinitionError GetHandle() {
	return *(Handle_Graphic2d_ImageDefinitionError*) &$self;
	}
};
%extend Graphic2d_ImageDefinitionError {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic2d_ImageDefinitionError::~Graphic2d_ImageDefinitionError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic2d_ImageDefinitionError {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic2d_EllipsDefinitionError;
class Graphic2d_EllipsDefinitionError : public Standard_OutOfRange {
	public:
		%feature("autodoc", "1");
		Graphic2d_EllipsDefinitionError();
		%feature("autodoc", "1");
		Graphic2d_EllipsDefinitionError(const char * AString);
		%feature("autodoc", "1");
		static		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		static		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		static		Handle_Graphic2d_EllipsDefinitionError NewInstance(const char * aMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic2d_EllipsDefinitionError {
	Handle_Graphic2d_EllipsDefinitionError GetHandle() {
	return *(Handle_Graphic2d_EllipsDefinitionError*) &$self;
	}
};
%extend Graphic2d_EllipsDefinitionError {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic2d_EllipsDefinitionError::~Graphic2d_EllipsDefinitionError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic2d_EllipsDefinitionError {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic2d_SequenceOfPolyline;
class Graphic2d_SequenceOfPolyline : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		Graphic2d_SequenceOfPolyline();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const Graphic2d_SequenceOfPolyline & Assign(const Graphic2d_SequenceOfPolyline &Other);
		%feature("autodoc", "1");
		const Graphic2d_SequenceOfPolyline & operator=(const Graphic2d_SequenceOfPolyline &Other);
		%feature("autodoc", "1");
		void Append(const Handle_Graphic2d_HSequenceOfVertex &T);
		%feature("autodoc", "1");
		void Append(Graphic2d_SequenceOfPolyline & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_Graphic2d_HSequenceOfVertex &T);
		%feature("autodoc", "1");
		void Prepend(Graphic2d_SequenceOfPolyline & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_Graphic2d_HSequenceOfVertex &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, Graphic2d_SequenceOfPolyline & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_Graphic2d_HSequenceOfVertex &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, Graphic2d_SequenceOfPolyline & S);
		%feature("autodoc", "1");
		const Handle_Graphic2d_HSequenceOfVertex & First() const;
		%feature("autodoc", "1");
		const Handle_Graphic2d_HSequenceOfVertex & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, Graphic2d_SequenceOfPolyline & S);
		%feature("autodoc", "1");
		const Handle_Graphic2d_HSequenceOfVertex & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_Graphic2d_HSequenceOfVertex & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_Graphic2d_HSequenceOfVertex &I);
		%feature("autodoc", "1");
		Handle_Graphic2d_HSequenceOfVertex & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_Graphic2d_HSequenceOfVertex & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") Graphic2d_SequenceOfPolyline::~Graphic2d_SequenceOfPolyline %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic2d_SequenceOfPolyline {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic2d_SequenceOfPrimitives;
class Graphic2d_SequenceOfPrimitives : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		Graphic2d_SequenceOfPrimitives();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const Graphic2d_SequenceOfPrimitives & Assign(const Graphic2d_SequenceOfPrimitives &Other);
		%feature("autodoc", "1");
		const Graphic2d_SequenceOfPrimitives & operator=(const Graphic2d_SequenceOfPrimitives &Other);
		%feature("autodoc", "1");
		void Append(const Handle_Graphic2d_Primitive &T);
		%feature("autodoc", "1");
		void Append(Graphic2d_SequenceOfPrimitives & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_Graphic2d_Primitive &T);
		%feature("autodoc", "1");
		void Prepend(Graphic2d_SequenceOfPrimitives & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_Graphic2d_Primitive &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, Graphic2d_SequenceOfPrimitives & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_Graphic2d_Primitive &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, Graphic2d_SequenceOfPrimitives & S);
		%feature("autodoc", "1");
		const Handle_Graphic2d_Primitive & First() const;
		%feature("autodoc", "1");
		const Handle_Graphic2d_Primitive & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, Graphic2d_SequenceOfPrimitives & S);
		%feature("autodoc", "1");
		const Handle_Graphic2d_Primitive & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_Graphic2d_Primitive & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_Graphic2d_Primitive &I);
		%feature("autodoc", "1");
		Handle_Graphic2d_Primitive & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_Graphic2d_Primitive & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") Graphic2d_SequenceOfPrimitives::~Graphic2d_SequenceOfPrimitives %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic2d_SequenceOfPrimitives {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic2d_Circle;
class Graphic2d_Circle : public Graphic2d_Line {
	public:
		%feature("autodoc", "1");
		Graphic2d_Circle(const Handle_Graphic2d_GraphicObject &aGraphicObject, const Quantity_Length X, const Quantity_Length Y, const Quantity_Length Radius);
		%feature("autodoc", "1");
		Graphic2d_Circle(const Handle_Graphic2d_GraphicObject &aGraphicObject, const Quantity_Length X, const Quantity_Length Y, const Quantity_Length Radius, const Quantity_PlaneAngle Alpha, const Quantity_PlaneAngle Beta);
		%feature("autodoc","Center() -> [Standard_Real, Standard_Real]");

		void Center(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Quantity_Length Radius() const;
		%feature("autodoc", "1");
		Quantity_PlaneAngle FirstAngle() const;
		%feature("autodoc", "1");
		Quantity_PlaneAngle SecondAngle() const;
		%feature("autodoc", "1");
		void SetCenter(const Quantity_Length X, const Quantity_Length Y);
		%feature("autodoc", "1");
		void SetRadius(const Quantity_Length theR);
		%feature("autodoc", "1");
		void SetAngles(const Quantity_PlaneAngle Alpha, const Quantity_PlaneAngle Beta);
		%feature("autodoc", "1");
		virtual		void Save(Aspect_FStream & aFStream) const;
		%feature("autodoc", "1");
		static		void Retrieve(Aspect_IFStream & anIFStream, const Handle_Graphic2d_GraphicObject &aGraphicObject);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic2d_Circle {
	Handle_Graphic2d_Circle GetHandle() {
	return *(Handle_Graphic2d_Circle*) &$self;
	}
};
%extend Graphic2d_Circle {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic2d_Circle::~Graphic2d_Circle %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic2d_Circle {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic2d_View;
class Graphic2d_View : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Graphic2d_View();
		%feature("autodoc", "1");
		void Remove();
		%feature("autodoc", "1");
		void Erase();
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		void Update(const Handle_Aspect_Driver &aDriver, const Handle_Graphic2d_ViewMapping &aViewMapping, const Standard_Real aXPosition, const Standard_Real aYPosition, const Standard_Real aScale, const Standard_Boolean ClearBefore=1);
		%feature("autodoc", "1");
		void TinyUpdate(const Handle_Aspect_Driver &aDriver, const Handle_Graphic2d_ViewMapping &aViewMapping, const Standard_Real aXPosition, const Standard_Real aYPosition, const Standard_Real aScale, const Standard_Boolean Reset=0);
		%feature("autodoc", "1");
		void Update(const Handle_Aspect_Driver &aDriver, const Handle_Graphic2d_GraphicObject &aGraphicObject, const Handle_Graphic2d_ViewMapping &aViewMapping, const Standard_Real aXPosition, const Standard_Real aYPosition, const Standard_Real aScale);
		%feature("autodoc", "1");
		void Update(const Handle_Aspect_Driver &aDriver, const Handle_Graphic2d_Primitive &aPrimitive, const Handle_Graphic2d_ViewMapping &aViewMapping, const Standard_Real aXPosition, const Standard_Real aYPosition, const Standard_Real aScale);
		%feature("autodoc", "1");
		Handle_Graphic2d_DisplayList DisplayList() const;
		%feature("autodoc", "1");
		Standard_Boolean IsIn(const Handle_Graphic2d_GraphicObject &aGraphicObject) const;
		%feature("autodoc","MinMax(const aList) -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real]");

		void MinMax(const Handle_Graphic2d_DisplayList &aList, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc","MinMax() -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real]");

		void MinMax(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc","MarkerMinMax(const aList) -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real]");

		void MarkerMinMax(const Handle_Graphic2d_DisplayList &aList, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc","MarkerMinMax() -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real]");

		void MarkerMinMax(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Handle_Graphic2d_DisplayList Pick(const Handle_Graphic2d_ViewMapping &aViewMapping, const Standard_Real X, const Standard_Real Y, const Standard_Real aPrecision, const Standard_Real aXPosition, const Standard_Real aYPosition, const Standard_Real aScale);
		%feature("autodoc", "1");
		Handle_Graphic2d_DisplayList PickByCircle(const Handle_Graphic2d_ViewMapping &aViewMapping, const Standard_Real X, const Standard_Real Y, const Standard_Real Radius, const Standard_Real aXPosition, const Standard_Real aYPosition, const Standard_Real aScale);
		%feature("autodoc", "1");
		Handle_Graphic2d_DisplayList Pick(const Handle_Graphic2d_ViewMapping &aViewMapping, const Standard_Real Xmin, const Standard_Real Ymin, const Standard_Real Xmax, const Standard_Real Ymax, const Standard_Real aXPosition, const Standard_Real aYPosition, const Standard_Real aScale, const Graphic2d_PickMode aPickMode=Graphic2d_PM_INCLUDE);
		%feature("autodoc", "1");
		Standard_Integer DefaultOverrideColor() const;
		%feature("autodoc", "1");
		Standard_Boolean IsDefinedColor() const;
		%feature("autodoc", "1");
		void SetDefaultOverrideColor(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void SetTypeOfDeflection(const Aspect_TypeOfDeflection aTypeOfDeflection=Aspect_TOD_RELATIVE);
		%feature("autodoc", "1");
		Aspect_TypeOfDeflection TypeOfDeflection() const;
		%feature("autodoc", "1");
		void SetDeflection(const Quantity_Length aDeflection=1.0000000000000000208166817117216851329430937767e-3);
		%feature("autodoc", "1");
		Standard_Real Deflection() const;
		%feature("autodoc", "1");
		void SetDeflectionCoefficient(const Standard_Real aCoefficient=3.29999999999999998195887584984120621811598539352e-4);
		%feature("autodoc", "1");
		Standard_Real DeflectionCoefficient() const;
		%feature("autodoc", "1");
		void SetTextPrecision(const Standard_Real aPrecision=1.50000000000000003122502256758252769941464066505e-3);
		%feature("autodoc", "1");
		Standard_Real TextPrecision() const;
		%feature("autodoc","Convert(const aViewMapping, Standard_Real aDrawPositionX, Standard_Real aDrawPositionY, Standard_Real aXPosition, Standard_Real aYPosition, Standard_Real aScale) -> [Standard_Real, Standard_Real]");

		void Convert(const Handle_Graphic2d_ViewMapping &aViewMapping, const Standard_Real aDrawPositionX, const Standard_Real aDrawPositionY, const Standard_Real aXPosition, const Standard_Real aYPosition, const Standard_Real aScale, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Real Convert(const Handle_Graphic2d_ViewMapping &aViewMapping, const Standard_Real aScalar, const Standard_Real aScale) const;
		%feature("autodoc", "1");
		Handle_Graphic2d_Drawer Drawer() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic2d_View {
	Handle_Graphic2d_View GetHandle() {
	return *(Handle_Graphic2d_View*) &$self;
	}
};
%extend Graphic2d_View {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic2d_View::~Graphic2d_View %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic2d_View {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic2d_TransientManager;
class Graphic2d_TransientManager : public Graphic2d_Drawer {
	public:
		%feature("autodoc", "1");
		Graphic2d_TransientManager(const Handle_Graphic2d_View &aView);
		%feature("autodoc", "1");
		Graphic2d_TransientManager(const Graphic2d_ViewPtr &aView);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean BeginDraw(const Handle_Aspect_WindowDriver &aDriver, const Standard_Boolean ClearBefore=1);
		%feature("autodoc", "1");
		Standard_Boolean BeginDraw(const Handle_Aspect_WindowDriver &aDriver, const Handle_Graphic2d_ViewMapping &aViewMapping, const Standard_Real aXPosition, const Standard_Real aYPosition, const Standard_Real aScale, const Standard_Boolean ClearBefore=1);
		%feature("autodoc", "1");
		void EndDraw(const Standard_Boolean Synchronize=1);
		%feature("autodoc", "1");
		Standard_Boolean Restore(const Handle_Aspect_WindowDriver &aDriver);
		%feature("autodoc", "1");
		Standard_Boolean RestoreArea(const Handle_Aspect_WindowDriver &aDriver);
		%feature("autodoc", "1");
		void Draw(const Handle_Graphic2d_Primitive &aPrimitive);
		%feature("autodoc", "1");
		void Draw(const Handle_Graphic2d_GraphicObject &aGraphicObject);
		%feature("autodoc", "1");
		void DrawElement(const Handle_Graphic2d_Primitive &aPrimitive, const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void DrawPickedElements(const Handle_Graphic2d_Primitive &aPrimitive);
		%feature("autodoc", "1");
		void DrawVertex(const Handle_Graphic2d_Primitive &aPrimitive, const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void BeginPrimitive(const Aspect_TypeOfPrimitive aType, const Standard_Integer aSize=0);
		%feature("autodoc", "1");
		void ClosePrimitive();
		%feature("autodoc", "1");
		void DrawSegment(const Quantity_Length X1, const Quantity_Length Y1, const Quantity_Length X2, const Quantity_Length Y2);
		%feature("autodoc", "1");
		void DrawInfiniteLine(const Quantity_Length X, const Quantity_Length Y, const Quantity_Length Dx, const Quantity_Length Dy);
		%feature("autodoc", "1");
		void DrawArc(const Quantity_Length Xc, const Quantity_Length Yc, const Quantity_Length aRadius, const Quantity_PlaneAngle anAngle1=0.0, const Quantity_PlaneAngle anAngle2=0.0);
		%feature("autodoc", "1");
		void DrawPolyArc(const Quantity_Length Xc, const Quantity_Length Yc, const Quantity_Length aRadius, const Quantity_PlaneAngle anAngle1=0.0, const Quantity_PlaneAngle anAngle2=0.0);
		%feature("autodoc", "1");
		void DrawPoint(const Quantity_Length X, const Quantity_Length Y);
		%feature("autodoc", "1");
		void DrawMarker(const Standard_Integer anIndex, const Quantity_Length X, const Quantity_Length Y, const Quantity_Length aWidth, const Quantity_Length anHeight, const Quantity_PlaneAngle anAngle=0.0);
		%feature("autodoc", "1");
		void DrawText(const TCollection_ExtendedString &aText, const Quantity_Length X, const Quantity_Length Y, const Quantity_PlaneAngle anAngle=0.0, const Standard_Real aDeltaX=0.0, const Standard_Real aDeltaY=0.0, const Aspect_TypeOfText aType=Aspect_TOT_SOLID, const Graphic2d_TypeOfAlignment anAlignment=Graphic2d_TOA_LEFT);
		%feature("autodoc", "1");
		void DrawPolyText(const TCollection_ExtendedString &aText, const Quantity_Length X, const Quantity_Length Y, const Quantity_PlaneAngle anAngle=0.0, const Quantity_Ratio aMargin=1.00000000000000005551115123125782702118158340454e-1, const Standard_Real aDeltaX=0.0, const Standard_Real aDeltaY=0.0, const Aspect_TypeOfText aType=Aspect_TOT_SOLID, const Graphic2d_TypeOfAlignment anAlignment=Graphic2d_TOA_LEFT);
		%feature("autodoc", "1");
		void DrawFramedText(const TCollection_ExtendedString &aText, const Quantity_Length X, const Quantity_Length Y, const Quantity_PlaneAngle anAngle=0.0, const Quantity_Ratio aMargin=1.00000000000000005551115123125782702118158340454e-1, const Standard_Real aDeltaX=0.0, const Standard_Real aDeltaY=0.0, const Aspect_TypeOfText aType=Aspect_TOT_SOLID, const Graphic2d_TypeOfAlignment anAlignment=Graphic2d_TOA_LEFT);
		%feature("autodoc", "1");
		void SetTextAttrib(const Standard_Integer ColorIndex, const Standard_Integer FontIndex, const Quantity_PlaneAngle aSlant=0.0, const Quantity_Factor aHScale=1.0e+0, const Quantity_Factor aWScale=1.0e+0, const Standard_Boolean isUnderlined=0, const Standard_Boolean isZoomable=1);
		%feature("autodoc", "1");
		void SetHidingTextAttrib(const Standard_Integer ColorIndex, const Standard_Integer HidingColorIndex, const Standard_Integer FrameColorIndex, const Standard_Integer FrameWidthIndex, const Standard_Integer FontIndex, const Quantity_PlaneAngle aSlant=0.0, const Quantity_Factor aHScale=1.0e+0, const Quantity_Factor aWScale=1.0e+0, const Standard_Boolean isUnderlined=0, const Standard_Boolean isZoomable=1);
		%feature("autodoc", "1");
		void SetFramedTextAttrib(const Standard_Integer ColorIndex, const Standard_Integer FrameColorIndex, const Standard_Integer FrameWidthIndex, const Standard_Integer FontIndex, const Quantity_PlaneAngle aSlant=0.0, const Quantity_Factor aHScale=1.0e+0, const Quantity_Factor aWScale=1.0e+0, const Standard_Boolean isUnderlined=0, const Standard_Boolean isZoomable=1);
		%feature("autodoc", "1");
		void SetTransform(const gp_GTrsf2d &aTrsf, const Graphic2d_TypeOfComposition aType=Graphic2d_TOC_REPLACE);
		%feature("autodoc", "1");
		void SetMapping(const Standard_Boolean aStatus=1);
		%feature("autodoc","MinMax() -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real]");

		Standard_Boolean MinMax(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic2d_TransientManager {
	Handle_Graphic2d_TransientManager GetHandle() {
	return *(Handle_Graphic2d_TransientManager*) &$self;
	}
};
%extend Graphic2d_TransientManager {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic2d_TransientManager::~Graphic2d_TransientManager %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic2d_TransientManager {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic2d_SequenceOfGraphicObject;
class Graphic2d_SequenceOfGraphicObject : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		Graphic2d_SequenceOfGraphicObject();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const Graphic2d_SequenceOfGraphicObject & Assign(const Graphic2d_SequenceOfGraphicObject &Other);
		%feature("autodoc", "1");
		const Graphic2d_SequenceOfGraphicObject & operator=(const Graphic2d_SequenceOfGraphicObject &Other);
		%feature("autodoc", "1");
		void Append(const Handle_Graphic2d_GraphicObject &T);
		%feature("autodoc", "1");
		void Append(Graphic2d_SequenceOfGraphicObject & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_Graphic2d_GraphicObject &T);
		%feature("autodoc", "1");
		void Prepend(Graphic2d_SequenceOfGraphicObject & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_Graphic2d_GraphicObject &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, Graphic2d_SequenceOfGraphicObject & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_Graphic2d_GraphicObject &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, Graphic2d_SequenceOfGraphicObject & S);
		%feature("autodoc", "1");
		const Handle_Graphic2d_GraphicObject & First() const;
		%feature("autodoc", "1");
		const Handle_Graphic2d_GraphicObject & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, Graphic2d_SequenceOfGraphicObject & S);
		%feature("autodoc", "1");
		const Handle_Graphic2d_GraphicObject & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_Graphic2d_GraphicObject & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_Graphic2d_GraphicObject &I);
		%feature("autodoc", "1");
		Handle_Graphic2d_GraphicObject & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_Graphic2d_GraphicObject & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") Graphic2d_SequenceOfGraphicObject::~Graphic2d_SequenceOfGraphicObject %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic2d_SequenceOfGraphicObject {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic2d_MarkerDefinitionError;
class Graphic2d_MarkerDefinitionError : public Standard_OutOfRange {
	public:
		%feature("autodoc", "1");
		Graphic2d_MarkerDefinitionError();
		%feature("autodoc", "1");
		Graphic2d_MarkerDefinitionError(const char * AString);
		%feature("autodoc", "1");
		static		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		static		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		static		Handle_Graphic2d_MarkerDefinitionError NewInstance(const char * aMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic2d_MarkerDefinitionError {
	Handle_Graphic2d_MarkerDefinitionError GetHandle() {
	return *(Handle_Graphic2d_MarkerDefinitionError*) &$self;
	}
};
%extend Graphic2d_MarkerDefinitionError {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic2d_MarkerDefinitionError::~Graphic2d_MarkerDefinitionError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic2d_MarkerDefinitionError {
	void _kill_pointed() {
		delete $self;
	}
};
