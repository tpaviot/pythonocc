/*

Copyright 2008-2009 Thomas Paviot (tpaviot@gmail.com)

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
%module TopOpeBRepDS
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%pythoncode {
import GarbageCollector
};

%include TopOpeBRepDS_dependencies.i


%include TopOpeBRepDS_headers.i

typedef TopOpeBRepDS_DataStructure * TopOpeBRepDS_PDataStructure;

enum TopOpeBRepDS_Kind {
	TopOpeBRepDS_POINT,
	TopOpeBRepDS_CURVE,
	TopOpeBRepDS_SURFACE,
	TopOpeBRepDS_VERTEX,
	TopOpeBRepDS_EDGE,
	TopOpeBRepDS_WIRE,
	TopOpeBRepDS_FACE,
	TopOpeBRepDS_SHELL,
	TopOpeBRepDS_SOLID,
	TopOpeBRepDS_COMPSOLID,
	TopOpeBRepDS_COMPOUND,
	TopOpeBRepDS_UNKNOWN,
	};

enum TopOpeBRepDS_Config {
	TopOpeBRepDS_UNSHGEOMETRY,
	TopOpeBRepDS_SAMEORIENTED,
	TopOpeBRepDS_DIFFORIENTED,
	};

enum TopOpeBRepDS_CheckStatus {
	TopOpeBRepDS_OK,
	TopOpeBRepDS_NOK,
	};



%nodefaultctor Handle_TopOpeBRepDS_IndexedDataMapNodeOfIndexedDataMapOfShapeWithState;
class Handle_TopOpeBRepDS_IndexedDataMapNodeOfIndexedDataMapOfShapeWithState : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_IndexedDataMapNodeOfIndexedDataMapOfShapeWithState();
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_IndexedDataMapNodeOfIndexedDataMapOfShapeWithState(const TopOpeBRepDS_IndexedDataMapNodeOfIndexedDataMapOfShapeWithState *aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_IndexedDataMapNodeOfIndexedDataMapOfShapeWithState(const TopOpeBRepDS_IndexedDataMapNodeOfIndexedDataMapOfShapeWithState *anItem);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_IndexedDataMapNodeOfIndexedDataMapOfShapeWithState & operator=(const TopOpeBRepDS_IndexedDataMapNodeOfIndexedDataMapOfShapeWithState *aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_IndexedDataMapNodeOfIndexedDataMapOfShapeWithState & operator=(const TopOpeBRepDS_IndexedDataMapNodeOfIndexedDataMapOfShapeWithState *anItem);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_IndexedDataMapNodeOfIndexedDataMapOfShapeWithState const DownCast(const Standard_Transient *AnObject);

};
%extend Handle_TopOpeBRepDS_IndexedDataMapNodeOfIndexedDataMapOfShapeWithState {
	TopOpeBRepDS_IndexedDataMapNodeOfIndexedDataMapOfShapeWithState* GetObject() {
	return (TopOpeBRepDS_IndexedDataMapNodeOfIndexedDataMapOfShapeWithState*)$self->Access();
	}
};
%feature("shadow") Handle_TopOpeBRepDS_IndexedDataMapNodeOfIndexedDataMapOfShapeWithState::~Handle_TopOpeBRepDS_IndexedDataMapNodeOfIndexedDataMapOfShapeWithState %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TopOpeBRepDS_IndexedDataMapNodeOfIndexedDataMapOfShapeWithState {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TopOpeBRepDS_Interference;
class Handle_TopOpeBRepDS_Interference : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_Interference();
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_Interference(const TopOpeBRepDS_Interference *aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_Interference(const TopOpeBRepDS_Interference *anItem);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_Interference & operator=(const TopOpeBRepDS_Interference *aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_Interference & operator=(const TopOpeBRepDS_Interference *anItem);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_Interference const DownCast(const Standard_Transient *AnObject);

};
%extend Handle_TopOpeBRepDS_Interference {
	TopOpeBRepDS_Interference* GetObject() {
	return (TopOpeBRepDS_Interference*)$self->Access();
	}
};
%feature("shadow") Handle_TopOpeBRepDS_Interference::~Handle_TopOpeBRepDS_Interference %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TopOpeBRepDS_Interference {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TopOpeBRepDS_SurfaceCurveInterference;
class Handle_TopOpeBRepDS_SurfaceCurveInterference : public Handle_TopOpeBRepDS_Interference {
	public:
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_SurfaceCurveInterference();
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_SurfaceCurveInterference(const TopOpeBRepDS_SurfaceCurveInterference *aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_SurfaceCurveInterference(const TopOpeBRepDS_SurfaceCurveInterference *anItem);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_SurfaceCurveInterference & operator=(const TopOpeBRepDS_SurfaceCurveInterference *aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_SurfaceCurveInterference & operator=(const TopOpeBRepDS_SurfaceCurveInterference *anItem);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_SurfaceCurveInterference const DownCast(const Standard_Transient *AnObject);

};
%extend Handle_TopOpeBRepDS_SurfaceCurveInterference {
	TopOpeBRepDS_SurfaceCurveInterference* GetObject() {
	return (TopOpeBRepDS_SurfaceCurveInterference*)$self->Access();
	}
};
%feature("shadow") Handle_TopOpeBRepDS_SurfaceCurveInterference::~Handle_TopOpeBRepDS_SurfaceCurveInterference %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TopOpeBRepDS_SurfaceCurveInterference {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfInterferenceShape;
class Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfInterferenceShape : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfInterferenceShape();
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfInterferenceShape(const TopOpeBRepDS_DataMapNodeOfDataMapOfInterferenceShape *aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfInterferenceShape(const TopOpeBRepDS_DataMapNodeOfDataMapOfInterferenceShape *anItem);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfInterferenceShape & operator=(const TopOpeBRepDS_DataMapNodeOfDataMapOfInterferenceShape *aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfInterferenceShape & operator=(const TopOpeBRepDS_DataMapNodeOfDataMapOfInterferenceShape *anItem);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfInterferenceShape const DownCast(const Standard_Transient *AnObject);

};
%extend Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfInterferenceShape {
	TopOpeBRepDS_DataMapNodeOfDataMapOfInterferenceShape* GetObject() {
	return (TopOpeBRepDS_DataMapNodeOfDataMapOfInterferenceShape*)$self->Access();
	}
};
%feature("shadow") Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfInterferenceShape::~Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfInterferenceShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfInterferenceShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TopOpeBRepDS_Marker;
class Handle_TopOpeBRepDS_Marker : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_Marker();
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_Marker(const TopOpeBRepDS_Marker *aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_Marker(const TopOpeBRepDS_Marker *anItem);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_Marker & operator=(const TopOpeBRepDS_Marker *aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_Marker & operator=(const TopOpeBRepDS_Marker *anItem);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_Marker const DownCast(const Standard_Transient *AnObject);

};
%extend Handle_TopOpeBRepDS_Marker {
	TopOpeBRepDS_Marker* GetObject() {
	return (TopOpeBRepDS_Marker*)$self->Access();
	}
};
%feature("shadow") Handle_TopOpeBRepDS_Marker::~Handle_TopOpeBRepDS_Marker %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TopOpeBRepDS_Marker {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TopOpeBRepDS_Association;
class Handle_TopOpeBRepDS_Association : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_Association();
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_Association(const TopOpeBRepDS_Association *aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_Association(const TopOpeBRepDS_Association *anItem);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_Association & operator=(const TopOpeBRepDS_Association *aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_Association & operator=(const TopOpeBRepDS_Association *anItem);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_Association const DownCast(const Standard_Transient *AnObject);

};
%extend Handle_TopOpeBRepDS_Association {
	TopOpeBRepDS_Association* GetObject() {
	return (TopOpeBRepDS_Association*)$self->Access();
	}
};
%feature("shadow") Handle_TopOpeBRepDS_Association::~Handle_TopOpeBRepDS_Association %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TopOpeBRepDS_Association {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TopOpeBRepDS_HArray1OfDataMapOfIntegerListOfInterference;
class Handle_TopOpeBRepDS_HArray1OfDataMapOfIntegerListOfInterference : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_HArray1OfDataMapOfIntegerListOfInterference();
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_HArray1OfDataMapOfIntegerListOfInterference(const TopOpeBRepDS_HArray1OfDataMapOfIntegerListOfInterference *aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_HArray1OfDataMapOfIntegerListOfInterference(const TopOpeBRepDS_HArray1OfDataMapOfIntegerListOfInterference *anItem);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_HArray1OfDataMapOfIntegerListOfInterference & operator=(const TopOpeBRepDS_HArray1OfDataMapOfIntegerListOfInterference *aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_HArray1OfDataMapOfIntegerListOfInterference & operator=(const TopOpeBRepDS_HArray1OfDataMapOfIntegerListOfInterference *anItem);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_HArray1OfDataMapOfIntegerListOfInterference const DownCast(const Standard_Transient *AnObject);

};
%extend Handle_TopOpeBRepDS_HArray1OfDataMapOfIntegerListOfInterference {
	TopOpeBRepDS_HArray1OfDataMapOfIntegerListOfInterference* GetObject() {
	return (TopOpeBRepDS_HArray1OfDataMapOfIntegerListOfInterference*)$self->Access();
	}
};
%feature("shadow") Handle_TopOpeBRepDS_HArray1OfDataMapOfIntegerListOfInterference::~Handle_TopOpeBRepDS_HArray1OfDataMapOfIntegerListOfInterference %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TopOpeBRepDS_HArray1OfDataMapOfIntegerListOfInterference {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfCheckStatus;
class Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfCheckStatus : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfCheckStatus();
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfCheckStatus(const TopOpeBRepDS_DataMapNodeOfDataMapOfCheckStatus *aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfCheckStatus(const TopOpeBRepDS_DataMapNodeOfDataMapOfCheckStatus *anItem);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfCheckStatus & operator=(const TopOpeBRepDS_DataMapNodeOfDataMapOfCheckStatus *aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfCheckStatus & operator=(const TopOpeBRepDS_DataMapNodeOfDataMapOfCheckStatus *anItem);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfCheckStatus const DownCast(const Standard_Transient *AnObject);

};
%extend Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfCheckStatus {
	TopOpeBRepDS_DataMapNodeOfDataMapOfCheckStatus* GetObject() {
	return (TopOpeBRepDS_DataMapNodeOfDataMapOfCheckStatus*)$self->Access();
	}
};
%feature("shadow") Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfCheckStatus::~Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfCheckStatus %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfCheckStatus {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TopOpeBRepDS_DataMapNodeOfMapOfSurface;
class Handle_TopOpeBRepDS_DataMapNodeOfMapOfSurface : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_DataMapNodeOfMapOfSurface();
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_DataMapNodeOfMapOfSurface(const TopOpeBRepDS_DataMapNodeOfMapOfSurface *aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_DataMapNodeOfMapOfSurface(const TopOpeBRepDS_DataMapNodeOfMapOfSurface *anItem);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_DataMapNodeOfMapOfSurface & operator=(const TopOpeBRepDS_DataMapNodeOfMapOfSurface *aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_DataMapNodeOfMapOfSurface & operator=(const TopOpeBRepDS_DataMapNodeOfMapOfSurface *anItem);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_DataMapNodeOfMapOfSurface const DownCast(const Standard_Transient *AnObject);

};
%extend Handle_TopOpeBRepDS_DataMapNodeOfMapOfSurface {
	TopOpeBRepDS_DataMapNodeOfMapOfSurface* GetObject() {
	return (TopOpeBRepDS_DataMapNodeOfMapOfSurface*)$self->Access();
	}
};
%feature("shadow") Handle_TopOpeBRepDS_DataMapNodeOfMapOfSurface::~Handle_TopOpeBRepDS_DataMapNodeOfMapOfSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TopOpeBRepDS_DataMapNodeOfMapOfSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfShapeState;
class Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfShapeState : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfShapeState();
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfShapeState(const TopOpeBRepDS_DataMapNodeOfDataMapOfShapeState *aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfShapeState(const TopOpeBRepDS_DataMapNodeOfDataMapOfShapeState *anItem);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfShapeState & operator=(const TopOpeBRepDS_DataMapNodeOfDataMapOfShapeState *aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfShapeState & operator=(const TopOpeBRepDS_DataMapNodeOfDataMapOfShapeState *anItem);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfShapeState const DownCast(const Standard_Transient *AnObject);

};
%extend Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfShapeState {
	TopOpeBRepDS_DataMapNodeOfDataMapOfShapeState* GetObject() {
	return (TopOpeBRepDS_DataMapNodeOfDataMapOfShapeState*)$self->Access();
	}
};
%feature("shadow") Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfShapeState::~Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfShapeState %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfShapeState {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfInterferenceListOfInterference;
class Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfInterferenceListOfInterference : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfInterferenceListOfInterference();
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfInterferenceListOfInterference(const TopOpeBRepDS_DataMapNodeOfDataMapOfInterferenceListOfInterference *aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfInterferenceListOfInterference(const TopOpeBRepDS_DataMapNodeOfDataMapOfInterferenceListOfInterference *anItem);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfInterferenceListOfInterference & operator=(const TopOpeBRepDS_DataMapNodeOfDataMapOfInterferenceListOfInterference *aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfInterferenceListOfInterference & operator=(const TopOpeBRepDS_DataMapNodeOfDataMapOfInterferenceListOfInterference *anItem);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfInterferenceListOfInterference const DownCast(const Standard_Transient *AnObject);

};
%extend Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfInterferenceListOfInterference {
	TopOpeBRepDS_DataMapNodeOfDataMapOfInterferenceListOfInterference* GetObject() {
	return (TopOpeBRepDS_DataMapNodeOfDataMapOfInterferenceListOfInterference*)$self->Access();
	}
};
%feature("shadow") Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfInterferenceListOfInterference::~Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfInterferenceListOfInterference %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfInterferenceListOfInterference {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TopOpeBRepDS_DataMapNodeOfShapeSurface;
class Handle_TopOpeBRepDS_DataMapNodeOfShapeSurface : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_DataMapNodeOfShapeSurface();
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_DataMapNodeOfShapeSurface(const TopOpeBRepDS_DataMapNodeOfShapeSurface *aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_DataMapNodeOfShapeSurface(const TopOpeBRepDS_DataMapNodeOfShapeSurface *anItem);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_DataMapNodeOfShapeSurface & operator=(const TopOpeBRepDS_DataMapNodeOfShapeSurface *aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_DataMapNodeOfShapeSurface & operator=(const TopOpeBRepDS_DataMapNodeOfShapeSurface *anItem);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_DataMapNodeOfShapeSurface const DownCast(const Standard_Transient *AnObject);

};
%extend Handle_TopOpeBRepDS_DataMapNodeOfShapeSurface {
	TopOpeBRepDS_DataMapNodeOfShapeSurface* GetObject() {
	return (TopOpeBRepDS_DataMapNodeOfShapeSurface*)$self->Access();
	}
};
%feature("shadow") Handle_TopOpeBRepDS_DataMapNodeOfShapeSurface::~Handle_TopOpeBRepDS_DataMapNodeOfShapeSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TopOpeBRepDS_DataMapNodeOfShapeSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TopOpeBRepDS_HDataStructure;
class Handle_TopOpeBRepDS_HDataStructure : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_HDataStructure();
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_HDataStructure(const TopOpeBRepDS_HDataStructure *aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_HDataStructure(const TopOpeBRepDS_HDataStructure *anItem);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_HDataStructure & operator=(const TopOpeBRepDS_HDataStructure *aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_HDataStructure & operator=(const TopOpeBRepDS_HDataStructure *anItem);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_HDataStructure const DownCast(const Standard_Transient *AnObject);

};
%extend Handle_TopOpeBRepDS_HDataStructure {
	TopOpeBRepDS_HDataStructure* GetObject() {
	return (TopOpeBRepDS_HDataStructure*)$self->Access();
	}
};
%feature("shadow") Handle_TopOpeBRepDS_HDataStructure::~Handle_TopOpeBRepDS_HDataStructure %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TopOpeBRepDS_HDataStructure {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TopOpeBRepDS_DataMapNodeOfMapOfPoint;
class Handle_TopOpeBRepDS_DataMapNodeOfMapOfPoint : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_DataMapNodeOfMapOfPoint();
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_DataMapNodeOfMapOfPoint(const TopOpeBRepDS_DataMapNodeOfMapOfPoint *aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_DataMapNodeOfMapOfPoint(const TopOpeBRepDS_DataMapNodeOfMapOfPoint *anItem);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_DataMapNodeOfMapOfPoint & operator=(const TopOpeBRepDS_DataMapNodeOfMapOfPoint *aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_DataMapNodeOfMapOfPoint & operator=(const TopOpeBRepDS_DataMapNodeOfMapOfPoint *anItem);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_DataMapNodeOfMapOfPoint const DownCast(const Standard_Transient *AnObject);

};
%extend Handle_TopOpeBRepDS_DataMapNodeOfMapOfPoint {
	TopOpeBRepDS_DataMapNodeOfMapOfPoint* GetObject() {
	return (TopOpeBRepDS_DataMapNodeOfMapOfPoint*)$self->Access();
	}
};
%feature("shadow") Handle_TopOpeBRepDS_DataMapNodeOfMapOfPoint::~Handle_TopOpeBRepDS_DataMapNodeOfMapOfPoint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TopOpeBRepDS_DataMapNodeOfMapOfPoint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TopOpeBRepDS_IndexedDataMapNodeOfMapOfShapeData;
class Handle_TopOpeBRepDS_IndexedDataMapNodeOfMapOfShapeData : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_IndexedDataMapNodeOfMapOfShapeData();
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_IndexedDataMapNodeOfMapOfShapeData(const TopOpeBRepDS_IndexedDataMapNodeOfMapOfShapeData *aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_IndexedDataMapNodeOfMapOfShapeData(const TopOpeBRepDS_IndexedDataMapNodeOfMapOfShapeData *anItem);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_IndexedDataMapNodeOfMapOfShapeData & operator=(const TopOpeBRepDS_IndexedDataMapNodeOfMapOfShapeData *aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_IndexedDataMapNodeOfMapOfShapeData & operator=(const TopOpeBRepDS_IndexedDataMapNodeOfMapOfShapeData *anItem);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_IndexedDataMapNodeOfMapOfShapeData const DownCast(const Standard_Transient *AnObject);

};
%extend Handle_TopOpeBRepDS_IndexedDataMapNodeOfMapOfShapeData {
	TopOpeBRepDS_IndexedDataMapNodeOfMapOfShapeData* GetObject() {
	return (TopOpeBRepDS_IndexedDataMapNodeOfMapOfShapeData*)$self->Access();
	}
};
%feature("shadow") Handle_TopOpeBRepDS_IndexedDataMapNodeOfMapOfShapeData::~Handle_TopOpeBRepDS_IndexedDataMapNodeOfMapOfShapeData %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TopOpeBRepDS_IndexedDataMapNodeOfMapOfShapeData {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TopOpeBRepDS_ShapeShapeInterference;
class Handle_TopOpeBRepDS_ShapeShapeInterference : public Handle_TopOpeBRepDS_Interference {
	public:
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_ShapeShapeInterference();
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_ShapeShapeInterference(const TopOpeBRepDS_ShapeShapeInterference *aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_ShapeShapeInterference(const TopOpeBRepDS_ShapeShapeInterference *anItem);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_ShapeShapeInterference & operator=(const TopOpeBRepDS_ShapeShapeInterference *aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_ShapeShapeInterference & operator=(const TopOpeBRepDS_ShapeShapeInterference *anItem);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_ShapeShapeInterference const DownCast(const Standard_Transient *AnObject);

};
%extend Handle_TopOpeBRepDS_ShapeShapeInterference {
	TopOpeBRepDS_ShapeShapeInterference* GetObject() {
	return (TopOpeBRepDS_ShapeShapeInterference*)$self->Access();
	}
};
%feature("shadow") Handle_TopOpeBRepDS_ShapeShapeInterference::~Handle_TopOpeBRepDS_ShapeShapeInterference %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TopOpeBRepDS_ShapeShapeInterference {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfShapeListOfShapeOn1State;
class Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfShapeListOfShapeOn1State : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfShapeListOfShapeOn1State();
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfShapeListOfShapeOn1State(const TopOpeBRepDS_DataMapNodeOfDataMapOfShapeListOfShapeOn1State *aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfShapeListOfShapeOn1State(const TopOpeBRepDS_DataMapNodeOfDataMapOfShapeListOfShapeOn1State *anItem);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfShapeListOfShapeOn1State & operator=(const TopOpeBRepDS_DataMapNodeOfDataMapOfShapeListOfShapeOn1State *aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfShapeListOfShapeOn1State & operator=(const TopOpeBRepDS_DataMapNodeOfDataMapOfShapeListOfShapeOn1State *anItem);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfShapeListOfShapeOn1State const DownCast(const Standard_Transient *AnObject);

};
%extend Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfShapeListOfShapeOn1State {
	TopOpeBRepDS_DataMapNodeOfDataMapOfShapeListOfShapeOn1State* GetObject() {
	return (TopOpeBRepDS_DataMapNodeOfDataMapOfShapeListOfShapeOn1State*)$self->Access();
	}
};
%feature("shadow") Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfShapeListOfShapeOn1State::~Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfShapeListOfShapeOn1State %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfShapeListOfShapeOn1State {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TopOpeBRepDS_DoubleMapNodeOfDoubleMapOfIntegerShape;
class Handle_TopOpeBRepDS_DoubleMapNodeOfDoubleMapOfIntegerShape : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_DoubleMapNodeOfDoubleMapOfIntegerShape();
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_DoubleMapNodeOfDoubleMapOfIntegerShape(const TopOpeBRepDS_DoubleMapNodeOfDoubleMapOfIntegerShape *aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_DoubleMapNodeOfDoubleMapOfIntegerShape(const TopOpeBRepDS_DoubleMapNodeOfDoubleMapOfIntegerShape *anItem);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_DoubleMapNodeOfDoubleMapOfIntegerShape & operator=(const TopOpeBRepDS_DoubleMapNodeOfDoubleMapOfIntegerShape *aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_DoubleMapNodeOfDoubleMapOfIntegerShape & operator=(const TopOpeBRepDS_DoubleMapNodeOfDoubleMapOfIntegerShape *anItem);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_DoubleMapNodeOfDoubleMapOfIntegerShape const DownCast(const Standard_Transient *AnObject);

};
%extend Handle_TopOpeBRepDS_DoubleMapNodeOfDoubleMapOfIntegerShape {
	TopOpeBRepDS_DoubleMapNodeOfDoubleMapOfIntegerShape* GetObject() {
	return (TopOpeBRepDS_DoubleMapNodeOfDoubleMapOfIntegerShape*)$self->Access();
	}
};
%feature("shadow") Handle_TopOpeBRepDS_DoubleMapNodeOfDoubleMapOfIntegerShape::~Handle_TopOpeBRepDS_DoubleMapNodeOfDoubleMapOfIntegerShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TopOpeBRepDS_DoubleMapNodeOfDoubleMapOfIntegerShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfIntegerListOfInterference;
class Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfIntegerListOfInterference : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfIntegerListOfInterference();
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfIntegerListOfInterference(const TopOpeBRepDS_DataMapNodeOfDataMapOfIntegerListOfInterference *aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfIntegerListOfInterference(const TopOpeBRepDS_DataMapNodeOfDataMapOfIntegerListOfInterference *anItem);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfIntegerListOfInterference & operator=(const TopOpeBRepDS_DataMapNodeOfDataMapOfIntegerListOfInterference *aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfIntegerListOfInterference & operator=(const TopOpeBRepDS_DataMapNodeOfDataMapOfIntegerListOfInterference *anItem);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfIntegerListOfInterference const DownCast(const Standard_Transient *AnObject);

};
%extend Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfIntegerListOfInterference {
	TopOpeBRepDS_DataMapNodeOfDataMapOfIntegerListOfInterference* GetObject() {
	return (TopOpeBRepDS_DataMapNodeOfDataMapOfIntegerListOfInterference*)$self->Access();
	}
};
%feature("shadow") Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfIntegerListOfInterference::~Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfIntegerListOfInterference %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfIntegerListOfInterference {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TopOpeBRepDS_SolidSurfaceInterference;
class Handle_TopOpeBRepDS_SolidSurfaceInterference : public Handle_TopOpeBRepDS_Interference {
	public:
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_SolidSurfaceInterference();
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_SolidSurfaceInterference(const TopOpeBRepDS_SolidSurfaceInterference *aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_SolidSurfaceInterference(const TopOpeBRepDS_SolidSurfaceInterference *anItem);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_SolidSurfaceInterference & operator=(const TopOpeBRepDS_SolidSurfaceInterference *aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_SolidSurfaceInterference & operator=(const TopOpeBRepDS_SolidSurfaceInterference *anItem);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_SolidSurfaceInterference const DownCast(const Standard_Transient *AnObject);

};
%extend Handle_TopOpeBRepDS_SolidSurfaceInterference {
	TopOpeBRepDS_SolidSurfaceInterference* GetObject() {
	return (TopOpeBRepDS_SolidSurfaceInterference*)$self->Access();
	}
};
%feature("shadow") Handle_TopOpeBRepDS_SolidSurfaceInterference::~Handle_TopOpeBRepDS_SolidSurfaceInterference %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TopOpeBRepDS_SolidSurfaceInterference {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TopOpeBRepDS_ListNodeOfListOfInterference;
class Handle_TopOpeBRepDS_ListNodeOfListOfInterference : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_ListNodeOfListOfInterference();
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_ListNodeOfListOfInterference(const TopOpeBRepDS_ListNodeOfListOfInterference *aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_ListNodeOfListOfInterference(const TopOpeBRepDS_ListNodeOfListOfInterference *anItem);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_ListNodeOfListOfInterference & operator=(const TopOpeBRepDS_ListNodeOfListOfInterference *aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_ListNodeOfListOfInterference & operator=(const TopOpeBRepDS_ListNodeOfListOfInterference *anItem);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_ListNodeOfListOfInterference const DownCast(const Standard_Transient *AnObject);

};
%extend Handle_TopOpeBRepDS_ListNodeOfListOfInterference {
	TopOpeBRepDS_ListNodeOfListOfInterference* GetObject() {
	return (TopOpeBRepDS_ListNodeOfListOfInterference*)$self->Access();
	}
};
%feature("shadow") Handle_TopOpeBRepDS_ListNodeOfListOfInterference::~Handle_TopOpeBRepDS_ListNodeOfListOfInterference %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TopOpeBRepDS_ListNodeOfListOfInterference {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TopOpeBRepDS_DataMapNodeOfMapOfCurve;
class Handle_TopOpeBRepDS_DataMapNodeOfMapOfCurve : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_DataMapNodeOfMapOfCurve();
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_DataMapNodeOfMapOfCurve(const TopOpeBRepDS_DataMapNodeOfMapOfCurve *aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_DataMapNodeOfMapOfCurve(const TopOpeBRepDS_DataMapNodeOfMapOfCurve *anItem);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_DataMapNodeOfMapOfCurve & operator=(const TopOpeBRepDS_DataMapNodeOfMapOfCurve *aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_DataMapNodeOfMapOfCurve & operator=(const TopOpeBRepDS_DataMapNodeOfMapOfCurve *anItem);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_DataMapNodeOfMapOfCurve const DownCast(const Standard_Transient *AnObject);

};
%extend Handle_TopOpeBRepDS_DataMapNodeOfMapOfCurve {
	TopOpeBRepDS_DataMapNodeOfMapOfCurve* GetObject() {
	return (TopOpeBRepDS_DataMapNodeOfMapOfCurve*)$self->Access();
	}
};
%feature("shadow") Handle_TopOpeBRepDS_DataMapNodeOfMapOfCurve::~Handle_TopOpeBRepDS_DataMapNodeOfMapOfCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TopOpeBRepDS_DataMapNodeOfMapOfCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TopOpeBRepDS_DataMapNodeOfMapOfIntegerShapeData;
class Handle_TopOpeBRepDS_DataMapNodeOfMapOfIntegerShapeData : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_DataMapNodeOfMapOfIntegerShapeData();
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_DataMapNodeOfMapOfIntegerShapeData(const TopOpeBRepDS_DataMapNodeOfMapOfIntegerShapeData *aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_DataMapNodeOfMapOfIntegerShapeData(const TopOpeBRepDS_DataMapNodeOfMapOfIntegerShapeData *anItem);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_DataMapNodeOfMapOfIntegerShapeData & operator=(const TopOpeBRepDS_DataMapNodeOfMapOfIntegerShapeData *aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_DataMapNodeOfMapOfIntegerShapeData & operator=(const TopOpeBRepDS_DataMapNodeOfMapOfIntegerShapeData *anItem);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_DataMapNodeOfMapOfIntegerShapeData const DownCast(const Standard_Transient *AnObject);

};
%extend Handle_TopOpeBRepDS_DataMapNodeOfMapOfIntegerShapeData {
	TopOpeBRepDS_DataMapNodeOfMapOfIntegerShapeData* GetObject() {
	return (TopOpeBRepDS_DataMapNodeOfMapOfIntegerShapeData*)$self->Access();
	}
};
%feature("shadow") Handle_TopOpeBRepDS_DataMapNodeOfMapOfIntegerShapeData::~Handle_TopOpeBRepDS_DataMapNodeOfMapOfIntegerShapeData %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TopOpeBRepDS_DataMapNodeOfMapOfIntegerShapeData {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TopOpeBRepDS_Check;
class Handle_TopOpeBRepDS_Check : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_Check();
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_Check(const TopOpeBRepDS_Check *aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_Check(const TopOpeBRepDS_Check *anItem);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_Check & operator=(const TopOpeBRepDS_Check *aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_Check & operator=(const TopOpeBRepDS_Check *anItem);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_Check const DownCast(const Standard_Transient *AnObject);

};
%extend Handle_TopOpeBRepDS_Check {
	TopOpeBRepDS_Check* GetObject() {
	return (TopOpeBRepDS_Check*)$self->Access();
	}
};
%feature("shadow") Handle_TopOpeBRepDS_Check::~Handle_TopOpeBRepDS_Check %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TopOpeBRepDS_Check {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TopOpeBRepDS_FaceEdgeInterference;
class Handle_TopOpeBRepDS_FaceEdgeInterference : public Handle_TopOpeBRepDS_ShapeShapeInterference {
	public:
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_FaceEdgeInterference();
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_FaceEdgeInterference(const TopOpeBRepDS_FaceEdgeInterference *aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_FaceEdgeInterference(const TopOpeBRepDS_FaceEdgeInterference *anItem);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_FaceEdgeInterference & operator=(const TopOpeBRepDS_FaceEdgeInterference *aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_FaceEdgeInterference & operator=(const TopOpeBRepDS_FaceEdgeInterference *anItem);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_FaceEdgeInterference const DownCast(const Standard_Transient *AnObject);

};
%extend Handle_TopOpeBRepDS_FaceEdgeInterference {
	TopOpeBRepDS_FaceEdgeInterference* GetObject() {
	return (TopOpeBRepDS_FaceEdgeInterference*)$self->Access();
	}
};
%feature("shadow") Handle_TopOpeBRepDS_FaceEdgeInterference::~Handle_TopOpeBRepDS_FaceEdgeInterference %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TopOpeBRepDS_FaceEdgeInterference {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TopOpeBRepDS_IndexedDataMapNodeOfIndexedDataMapOfVertexPoint;
class Handle_TopOpeBRepDS_IndexedDataMapNodeOfIndexedDataMapOfVertexPoint : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_IndexedDataMapNodeOfIndexedDataMapOfVertexPoint();
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_IndexedDataMapNodeOfIndexedDataMapOfVertexPoint(const TopOpeBRepDS_IndexedDataMapNodeOfIndexedDataMapOfVertexPoint *aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_IndexedDataMapNodeOfIndexedDataMapOfVertexPoint(const TopOpeBRepDS_IndexedDataMapNodeOfIndexedDataMapOfVertexPoint *anItem);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_IndexedDataMapNodeOfIndexedDataMapOfVertexPoint & operator=(const TopOpeBRepDS_IndexedDataMapNodeOfIndexedDataMapOfVertexPoint *aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_IndexedDataMapNodeOfIndexedDataMapOfVertexPoint & operator=(const TopOpeBRepDS_IndexedDataMapNodeOfIndexedDataMapOfVertexPoint *anItem);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_IndexedDataMapNodeOfIndexedDataMapOfVertexPoint const DownCast(const Standard_Transient *AnObject);

};
%extend Handle_TopOpeBRepDS_IndexedDataMapNodeOfIndexedDataMapOfVertexPoint {
	TopOpeBRepDS_IndexedDataMapNodeOfIndexedDataMapOfVertexPoint* GetObject() {
	return (TopOpeBRepDS_IndexedDataMapNodeOfIndexedDataMapOfVertexPoint*)$self->Access();
	}
};
%feature("shadow") Handle_TopOpeBRepDS_IndexedDataMapNodeOfIndexedDataMapOfVertexPoint::~Handle_TopOpeBRepDS_IndexedDataMapNodeOfIndexedDataMapOfVertexPoint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TopOpeBRepDS_IndexedDataMapNodeOfIndexedDataMapOfVertexPoint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TopOpeBRepDS_GapTool;
class Handle_TopOpeBRepDS_GapTool : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_GapTool();
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_GapTool(const TopOpeBRepDS_GapTool *aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_GapTool(const TopOpeBRepDS_GapTool *anItem);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_GapTool & operator=(const TopOpeBRepDS_GapTool *aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_GapTool & operator=(const TopOpeBRepDS_GapTool *anItem);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_GapTool const DownCast(const Standard_Transient *AnObject);

};
%extend Handle_TopOpeBRepDS_GapTool {
	TopOpeBRepDS_GapTool* GetObject() {
	return (TopOpeBRepDS_GapTool*)$self->Access();
	}
};
%feature("shadow") Handle_TopOpeBRepDS_GapTool::~Handle_TopOpeBRepDS_GapTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TopOpeBRepDS_GapTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TopOpeBRepDS_EdgeVertexInterference;
class Handle_TopOpeBRepDS_EdgeVertexInterference : public Handle_TopOpeBRepDS_ShapeShapeInterference {
	public:
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_EdgeVertexInterference();
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_EdgeVertexInterference(const TopOpeBRepDS_EdgeVertexInterference *aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_EdgeVertexInterference(const TopOpeBRepDS_EdgeVertexInterference *anItem);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_EdgeVertexInterference & operator=(const TopOpeBRepDS_EdgeVertexInterference *aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_EdgeVertexInterference & operator=(const TopOpeBRepDS_EdgeVertexInterference *anItem);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_EdgeVertexInterference const DownCast(const Standard_Transient *AnObject);

};
%extend Handle_TopOpeBRepDS_EdgeVertexInterference {
	TopOpeBRepDS_EdgeVertexInterference* GetObject() {
	return (TopOpeBRepDS_EdgeVertexInterference*)$self->Access();
	}
};
%feature("shadow") Handle_TopOpeBRepDS_EdgeVertexInterference::~Handle_TopOpeBRepDS_EdgeVertexInterference %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TopOpeBRepDS_EdgeVertexInterference {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TopOpeBRepDS_CurvePointInterference;
class Handle_TopOpeBRepDS_CurvePointInterference : public Handle_TopOpeBRepDS_Interference {
	public:
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_CurvePointInterference();
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_CurvePointInterference(const TopOpeBRepDS_CurvePointInterference *aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_CurvePointInterference(const TopOpeBRepDS_CurvePointInterference *anItem);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_CurvePointInterference & operator=(const TopOpeBRepDS_CurvePointInterference *aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_CurvePointInterference & operator=(const TopOpeBRepDS_CurvePointInterference *anItem);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_CurvePointInterference const DownCast(const Standard_Transient *AnObject);

};
%extend Handle_TopOpeBRepDS_CurvePointInterference {
	TopOpeBRepDS_CurvePointInterference* GetObject() {
	return (TopOpeBRepDS_CurvePointInterference*)$self->Access();
	}
};
%feature("shadow") Handle_TopOpeBRepDS_CurvePointInterference::~Handle_TopOpeBRepDS_CurvePointInterference %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TopOpeBRepDS_CurvePointInterference {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRepDS_ListIteratorOfListOfInterference;
class TopOpeBRepDS_ListIteratorOfListOfInterference {
	public:
		%feature("autodoc", "1");
		TopOpeBRepDS_ListIteratorOfListOfInterference();
		%feature("autodoc", "1");
		TopOpeBRepDS_ListIteratorOfListOfInterference(const TopOpeBRepDS_ListOfInterference &L);
		%feature("autodoc", "1");
		void Initialize(const TopOpeBRepDS_ListOfInterference &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_Interference & Value() const;

};
%feature("shadow") TopOpeBRepDS_ListIteratorOfListOfInterference::~TopOpeBRepDS_ListIteratorOfListOfInterference %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRepDS_ListIteratorOfListOfInterference {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRepDS_InterferenceTool;
class TopOpeBRepDS_InterferenceTool {
	public:
		%feature("autodoc", "1");
		TopOpeBRepDS_InterferenceTool();
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_Interference MakeEdgeInterference(const TopOpeBRepDS_Transition &T, const TopOpeBRepDS_Kind SK, const Standard_Integer SI, const TopOpeBRepDS_Kind GK, const Standard_Integer GI, const Standard_Real P);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_Interference MakeCurveInterference(const TopOpeBRepDS_Transition &T, const TopOpeBRepDS_Kind SK, const Standard_Integer SI, const TopOpeBRepDS_Kind GK, const Standard_Integer GI, const Standard_Real P);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_Interference DuplicateCurvePointInterference(const TopOpeBRepDS_Interference *I);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_Interference MakeFaceCurveInterference(const TopOpeBRepDS_Transition &Transition, const Standard_Integer FaceI, const Standard_Integer CurveI, const Geom2d_Curve *PC);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_Interference MakeSolidSurfaceInterference(const TopOpeBRepDS_Transition &Transition, const Standard_Integer SolidI, const Standard_Integer SurfaceI);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_Interference MakeEdgeVertexInterference(const TopOpeBRepDS_Transition &Transition, const Standard_Integer EdgeI, const Standard_Integer VertexI, const Standard_Boolean VertexIsBound, const TopOpeBRepDS_Config Config, const Standard_Real param);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_Interference MakeFaceEdgeInterference(const TopOpeBRepDS_Transition &Transition, const Standard_Integer FaceI, const Standard_Integer EdgeI, const Standard_Boolean EdgeIsBound, const TopOpeBRepDS_Config Config);
		%feature("autodoc", "1");
		Standard_Real Parameter(const TopOpeBRepDS_Interference *CPI);
		%feature("autodoc", "1");
		void Parameter(const TopOpeBRepDS_Interference *CPI, const Standard_Real Par);

};
%feature("shadow") TopOpeBRepDS_InterferenceTool::~TopOpeBRepDS_InterferenceTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRepDS_InterferenceTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRepDS_TOOL;
class TopOpeBRepDS_TOOL {
	public:
		%feature("autodoc", "1");
		TopOpeBRepDS_TOOL();
		%feature("autodoc", "1");
		Standard_Integer EShareG(const TopOpeBRepDS_HDataStructure *HDS, const TopoDS_Edge &E, TopTools_ListOfShape & lEsd);
		%feature("autodoc", "1");
		Standard_Boolean ShareG(const TopOpeBRepDS_HDataStructure *HDS, const Standard_Integer is1, const Standard_Integer is2);
		%feature("autodoc","GetEsd(const HDS, const S, Standard_Integer ie) -> Standard_Integer");

		Standard_Boolean GetEsd(const TopOpeBRepDS_HDataStructure *HDS, const TopoDS_Shape &S, const Standard_Integer ie, Standard_Integer &OutValue);
		%feature("autodoc", "1");
		Standard_Boolean ShareSplitON(const TopOpeBRepDS_HDataStructure *HDS, const TopOpeBRepDS_DataMapOfShapeListOfShapeOn1State &MspON, const Standard_Integer i1, const Standard_Integer i2, TopoDS_Shape & spON);
		%feature("autodoc","GetConfig(const HDS, const MEspON, Standard_Integer ie, Standard_Integer iesd) -> Standard_Integer");

		Standard_Boolean GetConfig(const TopOpeBRepDS_HDataStructure *HDS, const TopOpeBRepDS_DataMapOfShapeListOfShapeOn1State &MEspON, const Standard_Integer ie, const Standard_Integer iesd, Standard_Integer &OutValue);

};
%feature("shadow") TopOpeBRepDS_TOOL::~TopOpeBRepDS_TOOL %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRepDS_TOOL {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRepDS_InterferenceIterator;
class TopOpeBRepDS_InterferenceIterator {
	public:
		%feature("autodoc", "1");
		TopOpeBRepDS_InterferenceIterator();
		%feature("autodoc", "1");
		TopOpeBRepDS_InterferenceIterator(const TopOpeBRepDS_ListOfInterference &L);
		%feature("autodoc", "1");
		void Init(const TopOpeBRepDS_ListOfInterference &L);
		%feature("autodoc", "1");
		void GeometryKind(const TopOpeBRepDS_Kind GK);
		%feature("autodoc", "1");
		void Geometry(const Standard_Integer G);
		%feature("autodoc", "1");
		void SupportKind(const TopOpeBRepDS_Kind ST);
		%feature("autodoc", "1");
		void Support(const Standard_Integer S);
		%feature("autodoc", "1");
		void Match();
		%feature("autodoc", "1");
		virtual		Standard_Boolean MatchInterference(const TopOpeBRepDS_Interference *I) const;
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_Interference & Value() const;
		%feature("autodoc", "1");
		TopOpeBRepDS_ListIteratorOfListOfInterference & ChangeIterator();

};
%feature("shadow") TopOpeBRepDS_InterferenceIterator::~TopOpeBRepDS_InterferenceIterator %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRepDS_InterferenceIterator {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRepDS_CurveIterator;
class TopOpeBRepDS_CurveIterator : public TopOpeBRepDS_InterferenceIterator {
	public:
		%feature("autodoc", "1");
		TopOpeBRepDS_CurveIterator(const TopOpeBRepDS_ListOfInterference &L);
		%feature("autodoc", "1");
		Standard_Integer Current() const;
		%feature("autodoc", "1");
		TopAbs_Orientation Orientation(const TopAbs_State S) const;
		%feature("autodoc", "1");
		const Handle_Geom2d_Curve & PCurve() const;

};
%feature("shadow") TopOpeBRepDS_CurveIterator::~TopOpeBRepDS_CurveIterator %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRepDS_CurveIterator {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRepDS_GapTool;
class TopOpeBRepDS_GapTool : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TopOpeBRepDS_GapTool();
		%feature("autodoc", "1");
		TopOpeBRepDS_GapTool(const TopOpeBRepDS_HDataStructure *HDS);
		%feature("autodoc", "1");
		void Init(const TopOpeBRepDS_HDataStructure *HDS);
		%feature("autodoc", "1");
		const TopOpeBRepDS_ListOfInterference & Interferences(const Standard_Integer IndexPoint) const;
		%feature("autodoc", "1");
		const TopOpeBRepDS_ListOfInterference & SameInterferences(const TopOpeBRepDS_Interference *I) const;
		%feature("autodoc", "1");
		TopOpeBRepDS_ListOfInterference & ChangeSameInterferences(const TopOpeBRepDS_Interference *I);
		%feature("autodoc", "1");
		Standard_Boolean Curve(const TopOpeBRepDS_Interference *I, TopOpeBRepDS_Curve & C) const;
		%feature("autodoc", "1");
		Standard_Boolean EdgeSupport(const TopOpeBRepDS_Interference *I, TopoDS_Shape & E) const;
		%feature("autodoc", "1");
		Standard_Boolean FacesSupport(const TopOpeBRepDS_Interference *I, TopoDS_Shape & F1, TopoDS_Shape & F2) const;
		%feature("autodoc","ParameterOnEdge(const I, const E) -> Standard_Real");

		Standard_Boolean ParameterOnEdge(const TopOpeBRepDS_Interference *I, const TopoDS_Shape &E, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		void SetPoint(const TopOpeBRepDS_Interference *I, const Standard_Integer IndexPoint);
		%feature("autodoc", "1");
		void SetParameterOnEdge(const TopOpeBRepDS_Interference *I, const TopoDS_Shape &E, const Standard_Real U);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TopOpeBRepDS_GapTool {
	Handle_TopOpeBRepDS_GapTool GetHandle() {
	return *(Handle_TopOpeBRepDS_GapTool*) &$self;
	}
};
%extend TopOpeBRepDS_GapTool {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") TopOpeBRepDS_GapTool::~TopOpeBRepDS_GapTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRepDS_GapTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRepDS_FIR;
class TopOpeBRepDS_FIR {
	public:
		%feature("autodoc", "1");
		TopOpeBRepDS_FIR(const TopOpeBRepDS_HDataStructure *HDS);
		%feature("autodoc", "1");
		void ProcessFaceInterferences(const TopOpeBRepDS_DataMapOfShapeListOfShapeOn1State &M);
		%feature("autodoc", "1");
		void ProcessFaceInterferences(const Standard_Integer I, const TopOpeBRepDS_DataMapOfShapeListOfShapeOn1State &M);

};
%feature("shadow") TopOpeBRepDS_FIR::~TopOpeBRepDS_FIR %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRepDS_FIR {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRepDS_ShapeWithState;
class TopOpeBRepDS_ShapeWithState {
	public:
		%feature("autodoc", "1");
		TopOpeBRepDS_ShapeWithState();
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Part(const TopAbs_State aState) const;
		%feature("autodoc", "1");
		void AddPart(const TopoDS_Shape &aShape, const TopAbs_State aState);
		%feature("autodoc", "1");
		void AddParts(const TopTools_ListOfShape &aListOfShape, const TopAbs_State aState);
		%feature("autodoc", "1");
		void SetState(const TopAbs_State aState);
		%feature("autodoc", "1");
		TopAbs_State State() const;
		%feature("autodoc", "1");
		void SetIsSplitted(const Standard_Boolean anIsSplitted);
		%feature("autodoc", "1");
		Standard_Boolean IsSplitted() const;

};
%feature("shadow") TopOpeBRepDS_ShapeWithState::~TopOpeBRepDS_ShapeWithState %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRepDS_ShapeWithState {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRepDS_Transition;
class TopOpeBRepDS_Transition {
	public:
		%feature("autodoc", "1");
		TopOpeBRepDS_Transition();
		%feature("autodoc", "1");
		TopOpeBRepDS_Transition(const TopAbs_State StateBefore, const TopAbs_State StateAfter, const TopAbs_ShapeEnum ShapeBefore=TopAbs_FACE, const TopAbs_ShapeEnum ShapeAfter=TopAbs_FACE);
		%feature("autodoc", "1");
		TopOpeBRepDS_Transition(const TopAbs_Orientation O);
		%feature("autodoc", "1");
		void Set(const TopAbs_State StateBefore, const TopAbs_State StateAfter, const TopAbs_ShapeEnum ShapeBefore=TopAbs_FACE, const TopAbs_ShapeEnum ShapeAfter=TopAbs_FACE);
		%feature("autodoc", "1");
		void StateBefore(const TopAbs_State S);
		%feature("autodoc", "1");
		void StateAfter(const TopAbs_State S);
		%feature("autodoc", "1");
		void ShapeBefore(const TopAbs_ShapeEnum SE);
		%feature("autodoc", "1");
		void ShapeAfter(const TopAbs_ShapeEnum SE);
		%feature("autodoc", "1");
		void Before(const TopAbs_State S, const TopAbs_ShapeEnum ShapeBefore=TopAbs_FACE);
		%feature("autodoc", "1");
		void After(const TopAbs_State S, const TopAbs_ShapeEnum ShapeAfter=TopAbs_FACE);
		%feature("autodoc", "1");
		void Index(const Standard_Integer I);
		%feature("autodoc", "1");
		void IndexBefore(const Standard_Integer I);
		%feature("autodoc", "1");
		void IndexAfter(const Standard_Integer I);
		%feature("autodoc", "1");
		TopAbs_State Before() const;
		%feature("autodoc", "1");
		TopAbs_ShapeEnum ONBefore() const;
		%feature("autodoc", "1");
		TopAbs_State After() const;
		%feature("autodoc", "1");
		TopAbs_ShapeEnum ONAfter() const;
		%feature("autodoc", "1");
		TopAbs_ShapeEnum ShapeBefore() const;
		%feature("autodoc", "1");
		TopAbs_ShapeEnum ShapeAfter() const;
		%feature("autodoc", "1");
		Standard_Integer Index() const;
		%feature("autodoc", "1");
		Standard_Integer IndexBefore() const;
		%feature("autodoc", "1");
		Standard_Integer IndexAfter() const;
		%feature("autodoc", "1");
		void Set(const TopAbs_Orientation O);
		%feature("autodoc", "1");
		TopAbs_Orientation Orientation(const TopAbs_State S, const TopAbs_ShapeEnum T=TopAbs_FACE) const;
		%feature("autodoc", "1");
		TopOpeBRepDS_Transition Complement() const;
		%feature("autodoc", "1");
		Standard_Boolean IsUnknown() const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string DumpAToString() {
			std::stringstream s;
			self->DumpA(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string DumpBToString() {
			std::stringstream s;
			self->DumpB(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};

};
%feature("shadow") TopOpeBRepDS_Transition::~TopOpeBRepDS_Transition %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRepDS_Transition {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRepDS_GeometryData;
class TopOpeBRepDS_GeometryData {
	public:
		%feature("autodoc", "1");
		TopOpeBRepDS_GeometryData();
		%feature("autodoc", "1");
		TopOpeBRepDS_GeometryData(const TopOpeBRepDS_GeometryData &Other);
		%feature("autodoc", "1");
		void Assign(const TopOpeBRepDS_GeometryData &Other);
		%feature("autodoc", "1");
		void operator=(const TopOpeBRepDS_GeometryData &Other);
		%feature("autodoc", "1");
		const TopOpeBRepDS_ListOfInterference & Interferences() const;
		%feature("autodoc", "1");
		TopOpeBRepDS_ListOfInterference & ChangeInterferences();
		%feature("autodoc", "1");
		void AddInterference(const TopOpeBRepDS_Interference *I);

};
%feature("shadow") TopOpeBRepDS_GeometryData::~TopOpeBRepDS_GeometryData %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRepDS_GeometryData {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRepDS_DoubleMapIteratorOfDoubleMapOfIntegerShape;
class TopOpeBRepDS_DoubleMapIteratorOfDoubleMapOfIntegerShape : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		TopOpeBRepDS_DoubleMapIteratorOfDoubleMapOfIntegerShape();
		%feature("autodoc", "1");
		TopOpeBRepDS_DoubleMapIteratorOfDoubleMapOfIntegerShape(const TopOpeBRepDS_DoubleMapOfIntegerShape &aMap);
		%feature("autodoc", "1");
		void Initialize(const TopOpeBRepDS_DoubleMapOfIntegerShape &aMap);
		%feature("autodoc", "1");
		const Standard_Integer & Key1() const;
		%feature("autodoc", "1");
		const TopoDS_Shape & Key2() const;

};
%feature("shadow") TopOpeBRepDS_DoubleMapIteratorOfDoubleMapOfIntegerShape::~TopOpeBRepDS_DoubleMapIteratorOfDoubleMapOfIntegerShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRepDS_DoubleMapIteratorOfDoubleMapOfIntegerShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRepDS_Reducer;
class TopOpeBRepDS_Reducer {
	public:
		%feature("autodoc", "1");
		TopOpeBRepDS_Reducer(const TopOpeBRepDS_HDataStructure *HDS);
		%feature("autodoc", "1");
		void ProcessFaceInterferences(const TopOpeBRepDS_DataMapOfShapeListOfShapeOn1State &M);
		%feature("autodoc", "1");
		void ProcessEdgeInterferences();

};
%feature("shadow") TopOpeBRepDS_Reducer::~TopOpeBRepDS_Reducer %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRepDS_Reducer {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRepDS_DataMapNodeOfMapOfSurface;
class TopOpeBRepDS_DataMapNodeOfMapOfSurface : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TopOpeBRepDS_DataMapNodeOfMapOfSurface(const Standard_Integer &K, const TopOpeBRepDS_SurfaceData &I, const TCollection_MapNodePtr &n);
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetKey() {
				return (Standard_Integer) $self->Key();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetKey(Standard_Integer value ) {
				$self->Key()=value;
				}
		};
		%feature("autodoc", "1");
		TopOpeBRepDS_SurfaceData & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TopOpeBRepDS_DataMapNodeOfMapOfSurface {
	Handle_TopOpeBRepDS_DataMapNodeOfMapOfSurface GetHandle() {
	return *(Handle_TopOpeBRepDS_DataMapNodeOfMapOfSurface*) &$self;
	}
};
%extend TopOpeBRepDS_DataMapNodeOfMapOfSurface {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") TopOpeBRepDS_DataMapNodeOfMapOfSurface::~TopOpeBRepDS_DataMapNodeOfMapOfSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRepDS_DataMapNodeOfMapOfSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRepDS_ListNodeOfListOfInterference;
class TopOpeBRepDS_ListNodeOfListOfInterference : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TopOpeBRepDS_ListNodeOfListOfInterference(const TopOpeBRepDS_Interference *I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_Interference & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TopOpeBRepDS_ListNodeOfListOfInterference {
	Handle_TopOpeBRepDS_ListNodeOfListOfInterference GetHandle() {
	return *(Handle_TopOpeBRepDS_ListNodeOfListOfInterference*) &$self;
	}
};
%extend TopOpeBRepDS_ListNodeOfListOfInterference {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") TopOpeBRepDS_ListNodeOfListOfInterference::~TopOpeBRepDS_ListNodeOfListOfInterference %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRepDS_ListNodeOfListOfInterference {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRepDS_DataMapNodeOfMapOfPoint;
class TopOpeBRepDS_DataMapNodeOfMapOfPoint : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TopOpeBRepDS_DataMapNodeOfMapOfPoint(const Standard_Integer &K, const TopOpeBRepDS_PointData &I, const TCollection_MapNodePtr &n);
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetKey() {
				return (Standard_Integer) $self->Key();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetKey(Standard_Integer value ) {
				$self->Key()=value;
				}
		};
		%feature("autodoc", "1");
		TopOpeBRepDS_PointData & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TopOpeBRepDS_DataMapNodeOfMapOfPoint {
	Handle_TopOpeBRepDS_DataMapNodeOfMapOfPoint GetHandle() {
	return *(Handle_TopOpeBRepDS_DataMapNodeOfMapOfPoint*) &$self;
	}
};
%extend TopOpeBRepDS_DataMapNodeOfMapOfPoint {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") TopOpeBRepDS_DataMapNodeOfMapOfPoint::~TopOpeBRepDS_DataMapNodeOfMapOfPoint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRepDS_DataMapNodeOfMapOfPoint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRepDS_DataMapIteratorOfDataMapOfInterferenceShape;
class TopOpeBRepDS_DataMapIteratorOfDataMapOfInterferenceShape : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		TopOpeBRepDS_DataMapIteratorOfDataMapOfInterferenceShape();
		%feature("autodoc", "1");
		TopOpeBRepDS_DataMapIteratorOfDataMapOfInterferenceShape(const TopOpeBRepDS_DataMapOfInterferenceShape &aMap);
		%feature("autodoc", "1");
		void Initialize(const TopOpeBRepDS_DataMapOfInterferenceShape &aMap);
		%feature("autodoc", "1");
		const Handle_TopOpeBRepDS_Interference & Key() const;
		%feature("autodoc", "1");
		const TopoDS_Shape & Value() const;

};
%feature("shadow") TopOpeBRepDS_DataMapIteratorOfDataMapOfInterferenceShape::~TopOpeBRepDS_DataMapIteratorOfDataMapOfInterferenceShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRepDS_DataMapIteratorOfDataMapOfInterferenceShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRepDS_DoubleMapNodeOfDoubleMapOfIntegerShape;
class TopOpeBRepDS_DoubleMapNodeOfDoubleMapOfIntegerShape : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TopOpeBRepDS_DoubleMapNodeOfDoubleMapOfIntegerShape(const Standard_Integer &K1, const TopoDS_Shape &K2, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetKey1() {
				return (Standard_Integer) $self->Key1();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetKey1(Standard_Integer value ) {
				$self->Key1()=value;
				}
		};
		%feature("autodoc", "1");
		TopoDS_Shape & Key2() const;
		%feature("autodoc", "1");
		TCollection_MapNodePtr & Next2() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TopOpeBRepDS_DoubleMapNodeOfDoubleMapOfIntegerShape {
	Handle_TopOpeBRepDS_DoubleMapNodeOfDoubleMapOfIntegerShape GetHandle() {
	return *(Handle_TopOpeBRepDS_DoubleMapNodeOfDoubleMapOfIntegerShape*) &$self;
	}
};
%extend TopOpeBRepDS_DoubleMapNodeOfDoubleMapOfIntegerShape {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") TopOpeBRepDS_DoubleMapNodeOfDoubleMapOfIntegerShape::~TopOpeBRepDS_DoubleMapNodeOfDoubleMapOfIntegerShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRepDS_DoubleMapNodeOfDoubleMapOfIntegerShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRepDS_PointIterator;
class TopOpeBRepDS_PointIterator : public TopOpeBRepDS_InterferenceIterator {
	public:
		%feature("autodoc", "1");
		TopOpeBRepDS_PointIterator(const TopOpeBRepDS_ListOfInterference &L);
		%feature("autodoc", "1");
		virtual		Standard_Boolean MatchInterference(const TopOpeBRepDS_Interference *I) const;
		%feature("autodoc", "1");
		Standard_Integer Current() const;
		%feature("autodoc", "1");
		TopAbs_Orientation Orientation(const TopAbs_State S) const;
		%feature("autodoc", "1");
		Standard_Real Parameter() const;
		%feature("autodoc", "1");
		Standard_Boolean IsVertex() const;
		%feature("autodoc", "1");
		Standard_Boolean IsPoint() const;
		%feature("autodoc", "1");
		Standard_Boolean DiffOriented() const;
		%feature("autodoc", "1");
		Standard_Boolean SameOriented() const;
		%feature("autodoc", "1");
		Standard_Integer Support() const;

};
%feature("shadow") TopOpeBRepDS_PointIterator::~TopOpeBRepDS_PointIterator %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRepDS_PointIterator {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRepDS_Interference;
class TopOpeBRepDS_Interference : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TopOpeBRepDS_Interference();
		%feature("autodoc", "1");
		TopOpeBRepDS_Interference(const TopOpeBRepDS_Transition &Transition, const TopOpeBRepDS_Kind SupportType, const Standard_Integer Support, const TopOpeBRepDS_Kind GeometryType, const Standard_Integer Geometry);
		%feature("autodoc", "1");
		const TopOpeBRepDS_Transition & Transition() const;
		%feature("autodoc", "1");
		TopOpeBRepDS_Transition & ChangeTransition();
		%feature("autodoc", "1");
		void Transition(const TopOpeBRepDS_Transition &T);
		%feature("autodoc","GKGSKS() -> [Standard_Integer, Standard_Integer]");

		void GKGSKS(TopOpeBRepDS_Kind & GK, Standard_Integer &OutValue, TopOpeBRepDS_Kind & SK, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		TopOpeBRepDS_Kind SupportType() const;
		%feature("autodoc", "1");
		Standard_Integer Support() const;
		%feature("autodoc", "1");
		TopOpeBRepDS_Kind GeometryType() const;
		%feature("autodoc", "1");
		Standard_Integer Geometry() const;
		%feature("autodoc", "1");
		void SetGeometry(const Standard_Integer GI);
		%feature("autodoc", "1");
		void SupportType(const TopOpeBRepDS_Kind ST);
		%feature("autodoc", "1");
		void Support(const Standard_Integer S);
		%feature("autodoc", "1");
		void GeometryType(const TopOpeBRepDS_Kind GT);
		%feature("autodoc", "1");
		void Geometry(const Standard_Integer G);
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string DumpGToString() {
			std::stringstream s;
			self->DumpG(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string DumpSToString() {
			std::stringstream s;
			self->DumpS(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		Standard_OStream & Dump(Standard_OStream & OS, const TCollection_AsciiString &s1, const TCollection_AsciiString &s2) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TopOpeBRepDS_Interference {
	Handle_TopOpeBRepDS_Interference GetHandle() {
	return *(Handle_TopOpeBRepDS_Interference*) &$self;
	}
};
%extend TopOpeBRepDS_Interference {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") TopOpeBRepDS_Interference::~TopOpeBRepDS_Interference %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRepDS_Interference {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRepDS_CurvePointInterference;
class TopOpeBRepDS_CurvePointInterference : public TopOpeBRepDS_Interference {
	public:
		%feature("autodoc", "1");
		TopOpeBRepDS_CurvePointInterference(const TopOpeBRepDS_Transition &T, const TopOpeBRepDS_Kind ST, const Standard_Integer S, const TopOpeBRepDS_Kind GT, const Standard_Integer G, const Standard_Real P);
		%feature("autodoc", "1");
		Standard_Real Parameter() const;
		%feature("autodoc", "1");
		void Parameter(const Standard_Real P);
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};

};
%extend TopOpeBRepDS_CurvePointInterference {
	Handle_TopOpeBRepDS_CurvePointInterference GetHandle() {
	return *(Handle_TopOpeBRepDS_CurvePointInterference*) &$self;
	}
};
%extend TopOpeBRepDS_CurvePointInterference {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") TopOpeBRepDS_CurvePointInterference::~TopOpeBRepDS_CurvePointInterference %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRepDS_CurvePointInterference {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRepDS_DataMapOfCheckStatus;
class TopOpeBRepDS_DataMapOfCheckStatus : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TopOpeBRepDS_DataMapOfCheckStatus(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TopOpeBRepDS_DataMapOfCheckStatus & Assign(const TopOpeBRepDS_DataMapOfCheckStatus &Other);
		%feature("autodoc", "1");
		TopOpeBRepDS_DataMapOfCheckStatus & operator=(const TopOpeBRepDS_DataMapOfCheckStatus &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Standard_Integer &K, const TopOpeBRepDS_CheckStatus &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Standard_Integer &K);
		%feature("autodoc", "1");
		const TopOpeBRepDS_CheckStatus & Find(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		const TopOpeBRepDS_CheckStatus & operator()(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		TopOpeBRepDS_CheckStatus & ChangeFind(const Standard_Integer &K);
		%feature("autodoc", "1");
		TopOpeBRepDS_CheckStatus & operator()(const Standard_Integer &K);

};
%feature("shadow") TopOpeBRepDS_DataMapOfCheckStatus::~TopOpeBRepDS_DataMapOfCheckStatus %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRepDS_DataMapOfCheckStatus {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRepDS_MapOfPoint;
class TopOpeBRepDS_MapOfPoint : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TopOpeBRepDS_MapOfPoint(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TopOpeBRepDS_MapOfPoint & Assign(const TopOpeBRepDS_MapOfPoint &Other);
		%feature("autodoc", "1");
		TopOpeBRepDS_MapOfPoint & operator=(const TopOpeBRepDS_MapOfPoint &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Standard_Integer &K, const TopOpeBRepDS_PointData &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Standard_Integer &K);
		%feature("autodoc", "1");
		const TopOpeBRepDS_PointData & Find(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		const TopOpeBRepDS_PointData & operator()(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		TopOpeBRepDS_PointData & ChangeFind(const Standard_Integer &K);
		%feature("autodoc", "1");
		TopOpeBRepDS_PointData & operator()(const Standard_Integer &K);

};
%feature("shadow") TopOpeBRepDS_MapOfPoint::~TopOpeBRepDS_MapOfPoint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRepDS_MapOfPoint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRepDS_GapFiller;
class TopOpeBRepDS_GapFiller {
	public:
		%feature("autodoc", "1");
		TopOpeBRepDS_GapFiller(const TopOpeBRepDS_HDataStructure *HDS);
		%feature("autodoc", "1");
		void Perform();
		%feature("autodoc", "1");
		void FindAssociatedPoints(const TopOpeBRepDS_Interference *I, TopOpeBRepDS_ListOfInterference & LI);
		%feature("autodoc", "1");
		Standard_Boolean CheckConnexity(TopOpeBRepDS_ListOfInterference & LI);
		%feature("autodoc", "1");
		void AddPointsOnShape(const TopoDS_Shape &S, TopOpeBRepDS_ListOfInterference & LI);
		%feature("autodoc", "1");
		void AddPointsOnConnexShape(const TopoDS_Shape &F, const TopOpeBRepDS_ListOfInterference &LI);
		%feature("autodoc", "1");
		void FilterByFace(const TopoDS_Face &F, TopOpeBRepDS_ListOfInterference & LI);
		%feature("autodoc", "1");
		void FilterByEdge(const TopoDS_Edge &E, TopOpeBRepDS_ListOfInterference & LI);
		%feature("autodoc", "1");
		void FilterByIncidentDistance(const TopoDS_Face &F, const TopOpeBRepDS_Interference *I, TopOpeBRepDS_ListOfInterference & LI);
		%feature("autodoc", "1");
		Standard_Boolean IsOnFace(const TopOpeBRepDS_Interference *I, const TopoDS_Face &F) const;
		%feature("autodoc", "1");
		Standard_Boolean IsOnEdge(const TopOpeBRepDS_Interference *I, const TopoDS_Edge &E) const;
		%feature("autodoc", "1");
		void BuildNewGeometries();
		%feature("autodoc", "1");
		void ReBuildGeom(const TopOpeBRepDS_Interference *I1, TColStd_MapOfInteger & Done);

};
%feature("shadow") TopOpeBRepDS_GapFiller::~TopOpeBRepDS_GapFiller %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRepDS_GapFiller {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRepDS_DataMapIteratorOfMapOfSurface;
class TopOpeBRepDS_DataMapIteratorOfMapOfSurface : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		TopOpeBRepDS_DataMapIteratorOfMapOfSurface();
		%feature("autodoc", "1");
		TopOpeBRepDS_DataMapIteratorOfMapOfSurface(const TopOpeBRepDS_MapOfSurface &aMap);
		%feature("autodoc", "1");
		void Initialize(const TopOpeBRepDS_MapOfSurface &aMap);
		%feature("autodoc", "1");
		const Standard_Integer & Key() const;
		%feature("autodoc", "1");
		const TopOpeBRepDS_SurfaceData & Value() const;

};
%feature("shadow") TopOpeBRepDS_DataMapIteratorOfMapOfSurface::~TopOpeBRepDS_DataMapIteratorOfMapOfSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRepDS_DataMapIteratorOfMapOfSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRepDS_SolidSurfaceInterference;
class TopOpeBRepDS_SolidSurfaceInterference : public TopOpeBRepDS_Interference {
	public:
		%feature("autodoc", "1");
		TopOpeBRepDS_SolidSurfaceInterference(const TopOpeBRepDS_Transition &Transition, const TopOpeBRepDS_Kind SupportType, const Standard_Integer Support, const TopOpeBRepDS_Kind GeometryType, const Standard_Integer Geometry);
		%feature("autodoc", "1");
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
%extend TopOpeBRepDS_SolidSurfaceInterference {
	Handle_TopOpeBRepDS_SolidSurfaceInterference GetHandle() {
	return *(Handle_TopOpeBRepDS_SolidSurfaceInterference*) &$self;
	}
};
%extend TopOpeBRepDS_SolidSurfaceInterference {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") TopOpeBRepDS_SolidSurfaceInterference::~TopOpeBRepDS_SolidSurfaceInterference %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRepDS_SolidSurfaceInterference {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRepDS_Point;
class TopOpeBRepDS_Point {
	public:
		%feature("autodoc", "1");
		TopOpeBRepDS_Point();
		%feature("autodoc", "1");
		TopOpeBRepDS_Point(const gp_Pnt &P, const Standard_Real T);
		%feature("autodoc", "1");
		TopOpeBRepDS_Point(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const TopOpeBRepDS_Point &other) const;
		%feature("autodoc", "1");
		const gp_Pnt & Point() const;
		%feature("autodoc", "1");
		gp_Pnt & ChangePoint();
		%feature("autodoc", "1");
		Standard_Real Tolerance() const;
		%feature("autodoc", "1");
		void Tolerance(const Standard_Real Tol);
		%feature("autodoc", "1");
		Standard_Boolean Keep() const;
		%feature("autodoc", "1");
		void ChangeKeep(const Standard_Boolean B);

};
%feature("shadow") TopOpeBRepDS_Point::~TopOpeBRepDS_Point %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRepDS_Point {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRepDS_ShapeData;
class TopOpeBRepDS_ShapeData {
	public:
		%feature("autodoc", "1");
		TopOpeBRepDS_ShapeData();
		%feature("autodoc", "1");
		const TopOpeBRepDS_ListOfInterference & Interferences() const;
		%feature("autodoc", "1");
		TopOpeBRepDS_ListOfInterference & ChangeInterferences();
		%feature("autodoc", "1");
		Standard_Boolean Keep() const;
		%feature("autodoc", "1");
		void ChangeKeep(const Standard_Boolean B);

};
%feature("shadow") TopOpeBRepDS_ShapeData::~TopOpeBRepDS_ShapeData %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRepDS_ShapeData {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRepDS_DataMapIteratorOfMapOfIntegerShapeData;
class TopOpeBRepDS_DataMapIteratorOfMapOfIntegerShapeData : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		TopOpeBRepDS_DataMapIteratorOfMapOfIntegerShapeData();
		%feature("autodoc", "1");
		TopOpeBRepDS_DataMapIteratorOfMapOfIntegerShapeData(const TopOpeBRepDS_MapOfIntegerShapeData &aMap);
		%feature("autodoc", "1");
		void Initialize(const TopOpeBRepDS_MapOfIntegerShapeData &aMap);
		%feature("autodoc", "1");
		const Standard_Integer & Key() const;
		%feature("autodoc", "1");
		const TopOpeBRepDS_ShapeData & Value() const;

};
%feature("shadow") TopOpeBRepDS_DataMapIteratorOfMapOfIntegerShapeData::~TopOpeBRepDS_DataMapIteratorOfMapOfIntegerShapeData %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRepDS_DataMapIteratorOfMapOfIntegerShapeData {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRepDS_MapOfSurface;
class TopOpeBRepDS_MapOfSurface : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TopOpeBRepDS_MapOfSurface(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TopOpeBRepDS_MapOfSurface & Assign(const TopOpeBRepDS_MapOfSurface &Other);
		%feature("autodoc", "1");
		TopOpeBRepDS_MapOfSurface & operator=(const TopOpeBRepDS_MapOfSurface &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Standard_Integer &K, const TopOpeBRepDS_SurfaceData &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Standard_Integer &K);
		%feature("autodoc", "1");
		const TopOpeBRepDS_SurfaceData & Find(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		const TopOpeBRepDS_SurfaceData & operator()(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		TopOpeBRepDS_SurfaceData & ChangeFind(const Standard_Integer &K);
		%feature("autodoc", "1");
		TopOpeBRepDS_SurfaceData & operator()(const Standard_Integer &K);

};
%feature("shadow") TopOpeBRepDS_MapOfSurface::~TopOpeBRepDS_MapOfSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRepDS_MapOfSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRepDS_DataMapNodeOfDataMapOfInterferenceShape;
class TopOpeBRepDS_DataMapNodeOfDataMapOfInterferenceShape : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TopOpeBRepDS_DataMapNodeOfDataMapOfInterferenceShape(const TopOpeBRepDS_Interference *K, const TopoDS_Shape &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_Interference & Key() const;
		%feature("autodoc", "1");
		TopoDS_Shape & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TopOpeBRepDS_DataMapNodeOfDataMapOfInterferenceShape {
	Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfInterferenceShape GetHandle() {
	return *(Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfInterferenceShape*) &$self;
	}
};
%extend TopOpeBRepDS_DataMapNodeOfDataMapOfInterferenceShape {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") TopOpeBRepDS_DataMapNodeOfDataMapOfInterferenceShape::~TopOpeBRepDS_DataMapNodeOfDataMapOfInterferenceShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRepDS_DataMapNodeOfDataMapOfInterferenceShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRepDS_DataMapIteratorOfDataMapOfShapeState;
class TopOpeBRepDS_DataMapIteratorOfDataMapOfShapeState : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		TopOpeBRepDS_DataMapIteratorOfDataMapOfShapeState();
		%feature("autodoc", "1");
		TopOpeBRepDS_DataMapIteratorOfDataMapOfShapeState(const TopOpeBRepDS_DataMapOfShapeState &aMap);
		%feature("autodoc", "1");
		void Initialize(const TopOpeBRepDS_DataMapOfShapeState &aMap);
		%feature("autodoc", "1");
		const TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		const TopAbs_State & Value() const;

};
%feature("shadow") TopOpeBRepDS_DataMapIteratorOfDataMapOfShapeState::~TopOpeBRepDS_DataMapIteratorOfDataMapOfShapeState %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRepDS_DataMapIteratorOfDataMapOfShapeState {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRepDS_ShapeShapeInterference;
class TopOpeBRepDS_ShapeShapeInterference : public TopOpeBRepDS_Interference {
	public:
		%feature("autodoc", "1");
		TopOpeBRepDS_ShapeShapeInterference(const TopOpeBRepDS_Transition &T, const TopOpeBRepDS_Kind ST, const Standard_Integer S, const TopOpeBRepDS_Kind GT, const Standard_Integer G, const Standard_Boolean GBound, const TopOpeBRepDS_Config C);
		%feature("autodoc", "1");
		TopOpeBRepDS_Config Config() const;
		%feature("autodoc", "1");
		Standard_Boolean GBound() const;
		%feature("autodoc", "1");
		void SetGBound(const Standard_Boolean b);
		%feature("autodoc", "1");
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
%extend TopOpeBRepDS_ShapeShapeInterference {
	Handle_TopOpeBRepDS_ShapeShapeInterference GetHandle() {
	return *(Handle_TopOpeBRepDS_ShapeShapeInterference*) &$self;
	}
};
%extend TopOpeBRepDS_ShapeShapeInterference {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") TopOpeBRepDS_ShapeShapeInterference::~TopOpeBRepDS_ShapeShapeInterference %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRepDS_ShapeShapeInterference {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRepDS_EdgeVertexInterference;
class TopOpeBRepDS_EdgeVertexInterference : public TopOpeBRepDS_ShapeShapeInterference {
	public:
		%feature("autodoc", "1");
		TopOpeBRepDS_EdgeVertexInterference(const TopOpeBRepDS_Transition &T, const TopOpeBRepDS_Kind ST, const Standard_Integer S, const Standard_Integer G, const Standard_Boolean GIsBound, const TopOpeBRepDS_Config C, const Standard_Real P);
		%feature("autodoc", "1");
		TopOpeBRepDS_EdgeVertexInterference(const TopOpeBRepDS_Transition &T, const Standard_Integer S, const Standard_Integer G, const Standard_Boolean GIsBound, const TopOpeBRepDS_Config C, const Standard_Real P);
		%feature("autodoc", "1");
		Standard_Real Parameter() const;
		%feature("autodoc", "1");
		void Parameter(const Standard_Real P);
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};

};
%extend TopOpeBRepDS_EdgeVertexInterference {
	Handle_TopOpeBRepDS_EdgeVertexInterference GetHandle() {
	return *(Handle_TopOpeBRepDS_EdgeVertexInterference*) &$self;
	}
};
%extend TopOpeBRepDS_EdgeVertexInterference {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") TopOpeBRepDS_EdgeVertexInterference::~TopOpeBRepDS_EdgeVertexInterference %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRepDS_EdgeVertexInterference {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRepDS_DataMapOfInterferenceShape;
class TopOpeBRepDS_DataMapOfInterferenceShape : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TopOpeBRepDS_DataMapOfInterferenceShape(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TopOpeBRepDS_DataMapOfInterferenceShape & Assign(const TopOpeBRepDS_DataMapOfInterferenceShape &Other);
		%feature("autodoc", "1");
		TopOpeBRepDS_DataMapOfInterferenceShape & operator=(const TopOpeBRepDS_DataMapOfInterferenceShape &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TopOpeBRepDS_Interference *K, const TopoDS_Shape &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TopOpeBRepDS_Interference *K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TopOpeBRepDS_Interference *K);
		%feature("autodoc", "1");
		const TopoDS_Shape & Find(const TopOpeBRepDS_Interference *K) const;
		%feature("autodoc", "1");
		const TopoDS_Shape & operator()(const TopOpeBRepDS_Interference *K) const;
		%feature("autodoc", "1");
		TopoDS_Shape & ChangeFind(const TopOpeBRepDS_Interference *K);
		%feature("autodoc", "1");
		TopoDS_Shape & operator()(const TopOpeBRepDS_Interference *K);

};
%feature("shadow") TopOpeBRepDS_DataMapOfInterferenceShape::~TopOpeBRepDS_DataMapOfInterferenceShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRepDS_DataMapOfInterferenceShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRepDS_Explorer;
class TopOpeBRepDS_Explorer {
	public:
		%feature("autodoc", "1");
		TopOpeBRepDS_Explorer();
		%feature("autodoc", "1");
		TopOpeBRepDS_Explorer(const TopOpeBRepDS_HDataStructure *HDS, const TopAbs_ShapeEnum T=TopAbs_SHAPE, const Standard_Boolean findkeep=1);
		%feature("autodoc", "1");
		void Init(const TopOpeBRepDS_HDataStructure *HDS, const TopAbs_ShapeEnum T=TopAbs_SHAPE, const Standard_Boolean findkeep=1);
		%feature("autodoc", "1");
		TopAbs_ShapeEnum Type() const;
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		const TopoDS_Shape & Current() const;
		%feature("autodoc", "1");
		Standard_Integer Index() const;
		%feature("autodoc", "1");
		const TopoDS_Face & Face() const;
		%feature("autodoc", "1");
		const TopoDS_Edge & Edge() const;
		%feature("autodoc", "1");
		const TopoDS_Vertex & Vertex() const;

};
%feature("shadow") TopOpeBRepDS_Explorer::~TopOpeBRepDS_Explorer %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRepDS_Explorer {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRepDS_DataMapOfShapeListOfShapeOn1State;
class TopOpeBRepDS_DataMapOfShapeListOfShapeOn1State : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TopOpeBRepDS_DataMapOfShapeListOfShapeOn1State(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TopOpeBRepDS_DataMapOfShapeListOfShapeOn1State & Assign(const TopOpeBRepDS_DataMapOfShapeListOfShapeOn1State &Other);
		%feature("autodoc", "1");
		TopOpeBRepDS_DataMapOfShapeListOfShapeOn1State & operator=(const TopOpeBRepDS_DataMapOfShapeListOfShapeOn1State &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TopoDS_Shape &K, const TopOpeBRepDS_ListOfShapeOn1State &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TopoDS_Shape &K);
		%feature("autodoc", "1");
		const TopOpeBRepDS_ListOfShapeOn1State & Find(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		const TopOpeBRepDS_ListOfShapeOn1State & operator()(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		TopOpeBRepDS_ListOfShapeOn1State & ChangeFind(const TopoDS_Shape &K);
		%feature("autodoc", "1");
		TopOpeBRepDS_ListOfShapeOn1State & operator()(const TopoDS_Shape &K);

};
%feature("shadow") TopOpeBRepDS_DataMapOfShapeListOfShapeOn1State::~TopOpeBRepDS_DataMapOfShapeListOfShapeOn1State %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRepDS_DataMapOfShapeListOfShapeOn1State {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRepDS_BuildTool;
class TopOpeBRepDS_BuildTool {
	public:
		%feature("autodoc", "1");
		TopOpeBRepDS_BuildTool();
		%feature("autodoc", "1");
		TopOpeBRepDS_BuildTool(const TopOpeBRepTool_OutCurveType OutCurveType);
		%feature("autodoc", "1");
		TopOpeBRepDS_BuildTool(const TopOpeBRepTool_GeomTool &GT);
		%feature("autodoc", "1");
		const TopOpeBRepTool_GeomTool & GetGeomTool() const;
		%feature("autodoc", "1");
		TopOpeBRepTool_GeomTool & ChangeGeomTool();
		%feature("autodoc", "1");
		void MakeVertex(TopoDS_Shape & V, const TopOpeBRepDS_Point &P) const;
		%feature("autodoc", "1");
		void MakeEdge(TopoDS_Shape & E, const TopOpeBRepDS_Curve &C) const;
		%feature("autodoc", "1");
		void MakeEdge(TopoDS_Shape & E, const TopOpeBRepDS_Curve &C, const TopOpeBRepDS_DataStructure &DS) const;
		%feature("autodoc", "1");
		void MakeEdge(TopoDS_Shape & E, const Geom_Curve *C, const Standard_Real Tol) const;
		%feature("autodoc", "1");
		void MakeEdge(TopoDS_Shape & E) const;
		%feature("autodoc", "1");
		void MakeWire(TopoDS_Shape & W) const;
		%feature("autodoc", "1");
		void MakeFace(TopoDS_Shape & F, const TopOpeBRepDS_Surface &S) const;
		%feature("autodoc", "1");
		void MakeShell(TopoDS_Shape & Sh) const;
		%feature("autodoc", "1");
		void MakeSolid(TopoDS_Shape & S) const;
		%feature("autodoc", "1");
		void CopyEdge(const TopoDS_Shape &Ein, TopoDS_Shape & Eou) const;
		%feature("autodoc","GetOrientedEdgeVertices() -> [Standard_Real, Standard_Real]");

		void GetOrientedEdgeVertices(TopoDS_Edge & E, TopoDS_Vertex & Vmin, TopoDS_Vertex & Vmax, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc","UpdateEdgeCurveTol(const F1, const F2, const C3Dnew, Standard_Real tol3d, Standard_Real tol2d1, Standard_Real tol2d2) -> [Standard_Real, Standard_Real, Standard_Real]");

		void UpdateEdgeCurveTol(const TopoDS_Face &F1, const TopoDS_Face &F2, TopoDS_Edge & E, const Geom_Curve *C3Dnew, const Standard_Real tol3d, const Standard_Real tol2d1, const Standard_Real tol2d2, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc","ApproxCurves(const C, const HDS) -> Standard_Integer");

		void ApproxCurves(const TopOpeBRepDS_Curve &C, TopoDS_Edge & E, Standard_Integer &OutValue, const TopOpeBRepDS_HDataStructure *HDS) const;
		%feature("autodoc", "1");
		void ComputePCurves(const TopOpeBRepDS_Curve &C, TopoDS_Edge & E, TopOpeBRepDS_Curve & newC, const Standard_Boolean CompPC1, const Standard_Boolean CompPC2, const Standard_Boolean CompC3D) const;
		%feature("autodoc", "1");
		void PutPCurves(const TopOpeBRepDS_Curve &newC, TopoDS_Edge & E, const Standard_Boolean CompPC1, const Standard_Boolean CompPC2) const;
		%feature("autodoc","RecomputeCurves(const C, const oldE, const HDS) -> Standard_Integer");

		void RecomputeCurves(const TopOpeBRepDS_Curve &C, const TopoDS_Edge &oldE, TopoDS_Edge & E, Standard_Integer &OutValue, const TopOpeBRepDS_HDataStructure *HDS) const;
		%feature("autodoc", "1");
		void CopyFace(const TopoDS_Shape &Fin, TopoDS_Shape & Fou) const;
		%feature("autodoc", "1");
		void AddEdgeVertex(const TopoDS_Shape &Ein, TopoDS_Shape & Eou, const TopoDS_Shape &V) const;
		%feature("autodoc", "1");
		void AddEdgeVertex(TopoDS_Shape & E, const TopoDS_Shape &V) const;
		%feature("autodoc", "1");
		void AddWireEdge(TopoDS_Shape & W, const TopoDS_Shape &E) const;
		%feature("autodoc", "1");
		void AddFaceWire(TopoDS_Shape & F, const TopoDS_Shape &W) const;
		%feature("autodoc", "1");
		void AddShellFace(TopoDS_Shape & Sh, const TopoDS_Shape &F) const;
		%feature("autodoc", "1");
		void AddSolidShell(TopoDS_Shape & S, const TopoDS_Shape &Sh) const;
		%feature("autodoc", "1");
		void Parameter(const TopoDS_Shape &E, const TopoDS_Shape &V, const Standard_Real P) const;
		%feature("autodoc", "1");
		void Range(const TopoDS_Shape &E, const Standard_Real first, const Standard_Real last) const;
		%feature("autodoc", "1");
		void UpdateEdge(const TopoDS_Shape &Ein, TopoDS_Shape & Eou) const;
		%feature("autodoc", "1");
		void Parameter(const TopOpeBRepDS_Curve &C, TopoDS_Shape & E, TopoDS_Shape & V) const;
		%feature("autodoc", "1");
		void Curve3D(TopoDS_Shape & E, const Geom_Curve *C, const Standard_Real Tol) const;
		%feature("autodoc", "1");
		void PCurve(TopoDS_Shape & F, TopoDS_Shape & E, const Geom2d_Curve *C) const;
		%feature("autodoc", "1");
		void PCurve(TopoDS_Shape & F, TopoDS_Shape & E, const TopOpeBRepDS_Curve &CDS, const Geom2d_Curve *C) const;
		%feature("autodoc", "1");
		void Orientation(TopoDS_Shape & S, const TopAbs_Orientation O) const;
		%feature("autodoc", "1");
		TopAbs_Orientation Orientation(const TopoDS_Shape &S) const;
		%feature("autodoc", "1");
		void Closed(TopoDS_Shape & S, const Standard_Boolean B) const;
		%feature("autodoc", "1");
		Standard_Boolean Approximation() const;
		%feature("autodoc", "1");
		void UpdateSurface(const TopoDS_Shape &F, const Geom_Surface *SU) const;
		%feature("autodoc", "1");
		void UpdateSurface(const TopoDS_Shape &E, const TopoDS_Shape &oldF, const TopoDS_Shape &newF) const;
		%feature("autodoc", "1");
		Standard_Boolean OverWrite() const;
		%feature("autodoc", "1");
		void OverWrite(const Standard_Boolean O);
		%feature("autodoc", "1");
		Standard_Boolean Translate() const;
		%feature("autodoc", "1");
		void Translate(const Standard_Boolean T);

};
%feature("shadow") TopOpeBRepDS_BuildTool::~TopOpeBRepDS_BuildTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRepDS_BuildTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRepDS_DataMapNodeOfDataMapOfShapeListOfShapeOn1State;
class TopOpeBRepDS_DataMapNodeOfDataMapOfShapeListOfShapeOn1State : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TopOpeBRepDS_DataMapNodeOfDataMapOfShapeListOfShapeOn1State(const TopoDS_Shape &K, const TopOpeBRepDS_ListOfShapeOn1State &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		TopOpeBRepDS_ListOfShapeOn1State & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TopOpeBRepDS_DataMapNodeOfDataMapOfShapeListOfShapeOn1State {
	Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfShapeListOfShapeOn1State GetHandle() {
	return *(Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfShapeListOfShapeOn1State*) &$self;
	}
};
%extend TopOpeBRepDS_DataMapNodeOfDataMapOfShapeListOfShapeOn1State {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") TopOpeBRepDS_DataMapNodeOfDataMapOfShapeListOfShapeOn1State::~TopOpeBRepDS_DataMapNodeOfDataMapOfShapeListOfShapeOn1State %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRepDS_DataMapNodeOfDataMapOfShapeListOfShapeOn1State {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRepDS_Filter;
class TopOpeBRepDS_Filter {
	public:
		%feature("autodoc", "1");
		TopOpeBRepDS_Filter(const TopOpeBRepDS_HDataStructure *HDS, const TopOpeBRepTool_PShapeClassifier &pClassif=0);
		%feature("autodoc", "1");
		void ProcessInterferences();
		%feature("autodoc", "1");
		void ProcessFaceInterferences(const TopOpeBRepDS_DataMapOfShapeListOfShapeOn1State &MEsp);
		%feature("autodoc", "1");
		void ProcessFaceInterferences(const Standard_Integer I, const TopOpeBRepDS_DataMapOfShapeListOfShapeOn1State &MEsp);
		%feature("autodoc", "1");
		void ProcessEdgeInterferences();
		%feature("autodoc", "1");
		void ProcessEdgeInterferences(const Standard_Integer I);
		%feature("autodoc", "1");
		void ProcessCurveInterferences();
		%feature("autodoc", "1");
		void ProcessCurveInterferences(const Standard_Integer I);

};
%feature("shadow") TopOpeBRepDS_Filter::~TopOpeBRepDS_Filter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRepDS_Filter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRepDS_FaceEdgeInterference;
class TopOpeBRepDS_FaceEdgeInterference : public TopOpeBRepDS_ShapeShapeInterference {
	public:
		%feature("autodoc", "1");
		TopOpeBRepDS_FaceEdgeInterference(const TopOpeBRepDS_Transition &T, const Standard_Integer S, const Standard_Integer G, const Standard_Boolean GIsBound, const TopOpeBRepDS_Config C);
		%feature("autodoc", "1");
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
%extend TopOpeBRepDS_FaceEdgeInterference {
	Handle_TopOpeBRepDS_FaceEdgeInterference GetHandle() {
	return *(Handle_TopOpeBRepDS_FaceEdgeInterference*) &$self;
	}
};
%extend TopOpeBRepDS_FaceEdgeInterference {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") TopOpeBRepDS_FaceEdgeInterference::~TopOpeBRepDS_FaceEdgeInterference %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRepDS_FaceEdgeInterference {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRepDS_DataStructure;
class TopOpeBRepDS_DataStructure {
	public:
		%feature("autodoc", "1");
		TopOpeBRepDS_DataStructure();
		%feature("autodoc", "1");
		void Init();
		%feature("autodoc", "1");
		Standard_Integer AddSurface(const TopOpeBRepDS_Surface &S);
		%feature("autodoc", "1");
		void RemoveSurface(const Standard_Integer I);
		%feature("autodoc", "1");
		Standard_Boolean KeepSurface(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Standard_Boolean KeepSurface(TopOpeBRepDS_Surface & S) const;
		%feature("autodoc", "1");
		void ChangeKeepSurface(const Standard_Integer I, const Standard_Boolean FindKeep);
		%feature("autodoc", "1");
		void ChangeKeepSurface(TopOpeBRepDS_Surface & S, const Standard_Boolean FindKeep);
		%feature("autodoc", "1");
		Standard_Integer AddCurve(const TopOpeBRepDS_Curve &S);
		%feature("autodoc", "1");
		void RemoveCurve(const Standard_Integer I);
		%feature("autodoc", "1");
		Standard_Boolean KeepCurve(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Standard_Boolean KeepCurve(const TopOpeBRepDS_Curve &C) const;
		%feature("autodoc", "1");
		void ChangeKeepCurve(const Standard_Integer I, const Standard_Boolean FindKeep);
		%feature("autodoc", "1");
		void ChangeKeepCurve(TopOpeBRepDS_Curve & C, const Standard_Boolean FindKeep);
		%feature("autodoc", "1");
		Standard_Integer AddPoint(const TopOpeBRepDS_Point &PDS);
		%feature("autodoc", "1");
		Standard_Integer AddPointSS(const TopOpeBRepDS_Point &PDS, const TopoDS_Shape &S1, const TopoDS_Shape &S2);
		%feature("autodoc", "1");
		void RemovePoint(const Standard_Integer I);
		%feature("autodoc", "1");
		Standard_Boolean KeepPoint(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Standard_Boolean KeepPoint(const TopOpeBRepDS_Point &P) const;
		%feature("autodoc", "1");
		void ChangeKeepPoint(const Standard_Integer I, const Standard_Boolean FindKeep);
		%feature("autodoc", "1");
		void ChangeKeepPoint(TopOpeBRepDS_Point & P, const Standard_Boolean FindKeep);
		%feature("autodoc", "1");
		Standard_Integer AddShape(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		Standard_Integer AddShape(const TopoDS_Shape &S, const Standard_Integer I);
		%feature("autodoc", "1");
		Standard_Boolean KeepShape(const Standard_Integer I, const Standard_Boolean FindKeep=1) const;
		%feature("autodoc", "1");
		Standard_Boolean KeepShape(const TopoDS_Shape &S, const Standard_Boolean FindKeep=1) const;
		%feature("autodoc", "1");
		void ChangeKeepShape(const Standard_Integer I, const Standard_Boolean FindKeep);
		%feature("autodoc", "1");
		void ChangeKeepShape(const TopoDS_Shape &S, const Standard_Boolean FindKeep);
		%feature("autodoc", "1");
		void InitSectionEdges();
		%feature("autodoc", "1");
		Standard_Integer AddSectionEdge(const TopoDS_Edge &E);
		%feature("autodoc", "1");
		const TopOpeBRepDS_ListOfInterference & SurfaceInterferences(const Standard_Integer I) const;
		%feature("autodoc", "1");
		TopOpeBRepDS_ListOfInterference & ChangeSurfaceInterferences(const Standard_Integer I);
		%feature("autodoc", "1");
		const TopOpeBRepDS_ListOfInterference & CurveInterferences(const Standard_Integer I) const;
		%feature("autodoc", "1");
		TopOpeBRepDS_ListOfInterference & ChangeCurveInterferences(const Standard_Integer I);
		%feature("autodoc", "1");
		const TopOpeBRepDS_ListOfInterference & PointInterferences(const Standard_Integer I) const;
		%feature("autodoc", "1");
		TopOpeBRepDS_ListOfInterference & ChangePointInterferences(const Standard_Integer I);
		%feature("autodoc", "1");
		const TopOpeBRepDS_ListOfInterference & ShapeInterferences(const TopoDS_Shape &S, const Standard_Boolean FindKeep=1) const;
		%feature("autodoc", "1");
		TopOpeBRepDS_ListOfInterference & ChangeShapeInterferences(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		const TopOpeBRepDS_ListOfInterference & ShapeInterferences(const Standard_Integer I, const Standard_Boolean FindKeep=1) const;
		%feature("autodoc", "1");
		TopOpeBRepDS_ListOfInterference & ChangeShapeInterferences(const Standard_Integer I);
		%feature("autodoc", "1");
		const TopTools_ListOfShape & ShapeSameDomain(const TopoDS_Shape &S) const;
		%feature("autodoc", "1");
		TopTools_ListOfShape & ChangeShapeSameDomain(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		const TopTools_ListOfShape & ShapeSameDomain(const Standard_Integer I) const;
		%feature("autodoc", "1");
		TopTools_ListOfShape & ChangeShapeSameDomain(const Standard_Integer I);
		%feature("autodoc", "1");
		TopOpeBRepDS_MapOfShapeData & ChangeShapes();
		%feature("autodoc", "1");
		void AddShapeSameDomain(const TopoDS_Shape &S, const TopoDS_Shape &SSD);
		%feature("autodoc", "1");
		void RemoveShapeSameDomain(const TopoDS_Shape &S, const TopoDS_Shape &SSD);
		%feature("autodoc", "1");
		Standard_Integer SameDomainRef(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Standard_Integer SameDomainRef(const TopoDS_Shape &S) const;
		%feature("autodoc", "1");
		void SameDomainRef(const Standard_Integer I, const Standard_Integer Ref);
		%feature("autodoc", "1");
		void SameDomainRef(const TopoDS_Shape &S, const Standard_Integer Ref);
		%feature("autodoc", "1");
		TopOpeBRepDS_Config SameDomainOri(const Standard_Integer I) const;
		%feature("autodoc", "1");
		TopOpeBRepDS_Config SameDomainOri(const TopoDS_Shape &S) const;
		%feature("autodoc", "1");
		void SameDomainOri(const Standard_Integer I, const TopOpeBRepDS_Config Ori);
		%feature("autodoc", "1");
		void SameDomainOri(const TopoDS_Shape &S, const TopOpeBRepDS_Config Ori);
		%feature("autodoc", "1");
		Standard_Integer SameDomainInd(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Standard_Integer SameDomainInd(const TopoDS_Shape &S) const;
		%feature("autodoc", "1");
		void SameDomainInd(const Standard_Integer I, const Standard_Integer Ind);
		%feature("autodoc", "1");
		void SameDomainInd(const TopoDS_Shape &S, const Standard_Integer Ind);
		%feature("autodoc", "1");
		Standard_Integer AncestorRank(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Standard_Integer AncestorRank(const TopoDS_Shape &S) const;
		%feature("autodoc", "1");
		void AncestorRank(const Standard_Integer I, const Standard_Integer Ianc);
		%feature("autodoc", "1");
		void AncestorRank(const TopoDS_Shape &S, const Standard_Integer Ianc);
		%feature("autodoc", "1");
		void AddShapeInterference(const TopoDS_Shape &S, const TopOpeBRepDS_Interference *I);
		%feature("autodoc", "1");
		void RemoveShapeInterference(const TopoDS_Shape &S, const TopOpeBRepDS_Interference *I);
		%feature("autodoc", "1");
		void FillShapesSameDomain(const TopoDS_Shape &S1, const TopoDS_Shape &S2, const Standard_Boolean refFirst=1);
		%feature("autodoc", "1");
		void FillShapesSameDomain(const TopoDS_Shape &S1, const TopoDS_Shape &S2, const TopOpeBRepDS_Config c1, const TopOpeBRepDS_Config c2, const Standard_Boolean refFirst=1);
		%feature("autodoc", "1");
		void UnfillShapesSameDomain(const TopoDS_Shape &S1, const TopoDS_Shape &S2);
		%feature("autodoc", "1");
		Standard_Integer NbSurfaces() const;
		%feature("autodoc", "1");
		Standard_Integer NbCurves() const;
		%feature("autodoc", "1");
		void ChangeNbCurves(const Standard_Integer N);
		%feature("autodoc", "1");
		Standard_Integer NbPoints() const;
		%feature("autodoc", "1");
		Standard_Integer NbShapes() const;
		%feature("autodoc", "1");
		Standard_Integer NbSectionEdges() const;
		%feature("autodoc", "1");
		const TopOpeBRepDS_Surface & Surface(const Standard_Integer I) const;
		%feature("autodoc", "1");
		TopOpeBRepDS_Surface & ChangeSurface(const Standard_Integer I);
		%feature("autodoc", "1");
		const TopOpeBRepDS_Curve & Curve(const Standard_Integer I) const;
		%feature("autodoc", "1");
		TopOpeBRepDS_Curve & ChangeCurve(const Standard_Integer I);
		%feature("autodoc", "1");
		const TopOpeBRepDS_Point & Point(const Standard_Integer I) const;
		%feature("autodoc", "1");
		TopOpeBRepDS_Point & ChangePoint(const Standard_Integer I);
		%feature("autodoc", "1");
		const TopoDS_Shape & Shape(const Standard_Integer I, const Standard_Boolean FindKeep=1) const;
		%feature("autodoc", "1");
		Standard_Integer Shape(const TopoDS_Shape &S, const Standard_Boolean FindKeep=1) const;
		%feature("autodoc", "1");
		const TopoDS_Edge & SectionEdge(const Standard_Integer I, const Standard_Boolean FindKeep=1) const;
		%feature("autodoc", "1");
		Standard_Integer SectionEdge(const TopoDS_Edge &E, const Standard_Boolean FindKeep=1) const;
		%feature("autodoc", "1");
		Standard_Boolean IsSectionEdge(const TopoDS_Edge &E, const Standard_Boolean FindKeep=1) const;
		%feature("autodoc", "1");
		Standard_Boolean HasGeometry(const TopoDS_Shape &S) const;
		%feature("autodoc", "1");
		Standard_Boolean HasShape(const TopoDS_Shape &S, const Standard_Boolean FindKeep=1) const;
		%feature("autodoc", "1");
		void SetNewSurface(const TopoDS_Shape &F, const Geom_Surface *S);
		%feature("autodoc", "1");
		Standard_Boolean HasNewSurface(const TopoDS_Shape &F) const;
		%feature("autodoc", "1");
		const Handle_Geom_Surface & NewSurface(const TopoDS_Shape &F) const;
		%feature("autodoc", "1");
		void Isfafa(const Standard_Boolean isfafa);
		%feature("autodoc", "1");
		Standard_Boolean Isfafa() const;
		%feature("autodoc", "1");
		TopOpeBRepDS_IndexedDataMapOfShapeWithState & ChangeMapOfShapeWithStateObj();
		%feature("autodoc", "1");
		TopOpeBRepDS_IndexedDataMapOfShapeWithState & ChangeMapOfShapeWithStateTool();
		%feature("autodoc", "1");
		TopOpeBRepDS_IndexedDataMapOfShapeWithState & ChangeMapOfShapeWithState(const TopoDS_Shape &aShape, Standard_Boolean & aFlag);
		%feature("autodoc", "1");
		const TopOpeBRepDS_ShapeWithState & GetShapeWithState(const TopoDS_Shape &aShape) const;
		%feature("autodoc", "1");
		TopTools_IndexedMapOfShape & ChangeMapOfRejectedShapesObj();
		%feature("autodoc", "1");
		TopTools_IndexedMapOfShape & ChangeMapOfRejectedShapesTool();

};
%feature("shadow") TopOpeBRepDS_DataStructure::~TopOpeBRepDS_DataStructure %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRepDS_DataStructure {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRepDS;
class TopOpeBRepDS {
	public:
		%feature("autodoc", "1");
		TopOpeBRepDS();
		%feature("autodoc", "1");
		TCollection_AsciiString SPrint(const TopAbs_State S);
		%feature("autodoc", "1");
		Standard_OStream & Print(const TopAbs_State S, Standard_OStream & OS);
		%feature("autodoc", "1");
		TCollection_AsciiString SPrint(const TopOpeBRepDS_Kind K);
		%feature("autodoc", "1");
		TCollection_AsciiString SPrint(const TopOpeBRepDS_Kind K, const Standard_Integer I, const TCollection_AsciiString &B="", const TCollection_AsciiString &A="");
		%feature("autodoc", "1");
		Standard_OStream & Print(const TopOpeBRepDS_Kind K, Standard_OStream & S);
		%feature("autodoc", "1");
		Standard_OStream & Print(const TopOpeBRepDS_Kind K, const Standard_Integer I, Standard_OStream & S, const TCollection_AsciiString &B="", const TCollection_AsciiString &A="");
		%feature("autodoc", "1");
		TCollection_AsciiString SPrint(const TopAbs_ShapeEnum T);
		%feature("autodoc", "1");
		TCollection_AsciiString SPrint(const TopAbs_ShapeEnum T, const Standard_Integer I);
		%feature("autodoc", "1");
		Standard_OStream & Print(const TopAbs_ShapeEnum T, const Standard_Integer I, Standard_OStream & S);
		%feature("autodoc", "1");
		TCollection_AsciiString SPrint(const TopAbs_Orientation O);
		%feature("autodoc", "1");
		TCollection_AsciiString SPrint(const TopOpeBRepDS_Config C);
		%feature("autodoc", "1");
		Standard_OStream & Print(const TopOpeBRepDS_Config C, Standard_OStream & S);
		%feature("autodoc", "1");
		Standard_Boolean IsGeometry(const TopOpeBRepDS_Kind K);
		%feature("autodoc", "1");
		Standard_Boolean IsTopology(const TopOpeBRepDS_Kind K);
		%feature("autodoc", "1");
		TopAbs_ShapeEnum KindToShape(const TopOpeBRepDS_Kind K);
		%feature("autodoc", "1");
		TopOpeBRepDS_Kind ShapeToKind(const TopAbs_ShapeEnum S);

};
%feature("shadow") TopOpeBRepDS::~TopOpeBRepDS %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRepDS {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRepDS_Check;
class TopOpeBRepDS_Check : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TopOpeBRepDS_Check();
		%feature("autodoc", "1");
		TopOpeBRepDS_Check(const TopOpeBRepDS_HDataStructure *HDS);
		%feature("autodoc", "1");
		Standard_Boolean ChkIntg();
		%feature("autodoc", "1");
		Standard_Boolean ChkIntgInterf(const TopOpeBRepDS_ListOfInterference &LI);
		%feature("autodoc", "1");
		Standard_Boolean CheckDS(const Standard_Integer i, const TopOpeBRepDS_Kind K);
		%feature("autodoc", "1");
		Standard_Boolean ChkIntgSamDom();
		%feature("autodoc", "1");
		Standard_Boolean CheckShapes(const TopTools_ListOfShape &LS) const;
		%feature("autodoc", "1");
		Standard_Boolean OneVertexOnPnt();
		%feature("autodoc", "1");
		const Handle_TopOpeBRepDS_HDataStructure & HDS() const;
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_HDataStructure & ChangeHDS();
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string PrintIntgToString() {
			std::stringstream s;
			self->PrintIntg(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		Standard_OStream & Print(const TopOpeBRepDS_CheckStatus stat, Standard_OStream & S);
		%feature("autodoc", "1");
		Standard_OStream & PrintShape(const TopAbs_ShapeEnum SE, Standard_OStream & S);
		%feature("autodoc", "1");
		Standard_OStream & PrintShape(const Standard_Integer index, Standard_OStream & S);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TopOpeBRepDS_Check {
	Handle_TopOpeBRepDS_Check GetHandle() {
	return *(Handle_TopOpeBRepDS_Check*) &$self;
	}
};
%extend TopOpeBRepDS_Check {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") TopOpeBRepDS_Check::~TopOpeBRepDS_Check %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRepDS_Check {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRepDS_Association;
class TopOpeBRepDS_Association : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TopOpeBRepDS_Association();
		%feature("autodoc", "1");
		void Associate(const TopOpeBRepDS_Interference *I, const TopOpeBRepDS_Interference *K);
		%feature("autodoc", "1");
		void Associate(const TopOpeBRepDS_Interference *I, const TopOpeBRepDS_ListOfInterference &LI);
		%feature("autodoc", "1");
		Standard_Boolean HasAssociation(const TopOpeBRepDS_Interference *I) const;
		%feature("autodoc", "1");
		TopOpeBRepDS_ListOfInterference & Associated(const TopOpeBRepDS_Interference *I);
		%feature("autodoc", "1");
		Standard_Boolean AreAssociated(const TopOpeBRepDS_Interference *I, const TopOpeBRepDS_Interference *K) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TopOpeBRepDS_Association {
	Handle_TopOpeBRepDS_Association GetHandle() {
	return *(Handle_TopOpeBRepDS_Association*) &$self;
	}
};
%extend TopOpeBRepDS_Association {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") TopOpeBRepDS_Association::~TopOpeBRepDS_Association %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRepDS_Association {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRepDS_DataMapNodeOfDataMapOfInterferenceListOfInterference;
class TopOpeBRepDS_DataMapNodeOfDataMapOfInterferenceListOfInterference : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TopOpeBRepDS_DataMapNodeOfDataMapOfInterferenceListOfInterference(const TopOpeBRepDS_Interference *K, const TopOpeBRepDS_ListOfInterference &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_Interference & Key() const;
		%feature("autodoc", "1");
		TopOpeBRepDS_ListOfInterference & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TopOpeBRepDS_DataMapNodeOfDataMapOfInterferenceListOfInterference {
	Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfInterferenceListOfInterference GetHandle() {
	return *(Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfInterferenceListOfInterference*) &$self;
	}
};
%extend TopOpeBRepDS_DataMapNodeOfDataMapOfInterferenceListOfInterference {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") TopOpeBRepDS_DataMapNodeOfDataMapOfInterferenceListOfInterference::~TopOpeBRepDS_DataMapNodeOfDataMapOfInterferenceListOfInterference %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRepDS_DataMapNodeOfDataMapOfInterferenceListOfInterference {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRepDS_SurfaceData;
class TopOpeBRepDS_SurfaceData : public TopOpeBRepDS_GeometryData {
	public:
		%feature("autodoc", "1");
		TopOpeBRepDS_SurfaceData();
		%feature("autodoc", "1");
		TopOpeBRepDS_SurfaceData(const TopOpeBRepDS_Surface &S);

};
%feature("shadow") TopOpeBRepDS_SurfaceData::~TopOpeBRepDS_SurfaceData %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRepDS_SurfaceData {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRepDS_PointData;
class TopOpeBRepDS_PointData : public TopOpeBRepDS_GeometryData {
	public:
		%feature("autodoc", "1");
		TopOpeBRepDS_PointData();
		%feature("autodoc", "1");
		TopOpeBRepDS_PointData(const TopOpeBRepDS_Point &P);
		%feature("autodoc", "1");
		TopOpeBRepDS_PointData(const TopOpeBRepDS_Point &P, const Standard_Integer I1, const Standard_Integer I2);
		%feature("autodoc", "1");
		void SetShapes(const Standard_Integer I1, const Standard_Integer I2);
		%feature("autodoc","GetShapes() -> [Standard_Integer, Standard_Integer]");

		void GetShapes(Standard_Integer &OutValue, Standard_Integer &OutValue) const;

};
%feature("shadow") TopOpeBRepDS_PointData::~TopOpeBRepDS_PointData %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRepDS_PointData {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRepDS_IndexedDataMapOfShapeWithState;
class TopOpeBRepDS_IndexedDataMapOfShapeWithState : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TopOpeBRepDS_IndexedDataMapOfShapeWithState(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TopOpeBRepDS_IndexedDataMapOfShapeWithState & Assign(const TopOpeBRepDS_IndexedDataMapOfShapeWithState &Other);
		%feature("autodoc", "1");
		TopOpeBRepDS_IndexedDataMapOfShapeWithState & operator=(const TopOpeBRepDS_IndexedDataMapOfShapeWithState &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer Add(const TopoDS_Shape &K, const TopOpeBRepDS_ShapeWithState &I);
		%feature("autodoc", "1");
		void Substitute(const Standard_Integer I, const TopoDS_Shape &K, const TopOpeBRepDS_ShapeWithState &T);
		%feature("autodoc", "1");
		void RemoveLast();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		const TopoDS_Shape & FindKey(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const TopOpeBRepDS_ShapeWithState & FindFromIndex(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const TopOpeBRepDS_ShapeWithState & operator()(const Standard_Integer I) const;
		%feature("autodoc", "1");
		TopOpeBRepDS_ShapeWithState & ChangeFromIndex(const Standard_Integer I);
		%feature("autodoc", "1");
		TopOpeBRepDS_ShapeWithState & operator()(const Standard_Integer I);
		%feature("autodoc", "1");
		Standard_Integer FindIndex(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		const TopOpeBRepDS_ShapeWithState & FindFromKey(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		TopOpeBRepDS_ShapeWithState & ChangeFromKey(const TopoDS_Shape &K);

};
%feature("shadow") TopOpeBRepDS_IndexedDataMapOfShapeWithState::~TopOpeBRepDS_IndexedDataMapOfShapeWithState %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRepDS_IndexedDataMapOfShapeWithState {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRepDS_DataMapNodeOfDataMapOfShapeState;
class TopOpeBRepDS_DataMapNodeOfDataMapOfShapeState : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TopOpeBRepDS_DataMapNodeOfDataMapOfShapeState(const TopoDS_Shape &K, const TopAbs_State &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		TopAbs_State & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TopOpeBRepDS_DataMapNodeOfDataMapOfShapeState {
	Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfShapeState GetHandle() {
	return *(Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfShapeState*) &$self;
	}
};
%extend TopOpeBRepDS_DataMapNodeOfDataMapOfShapeState {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") TopOpeBRepDS_DataMapNodeOfDataMapOfShapeState::~TopOpeBRepDS_DataMapNodeOfDataMapOfShapeState %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRepDS_DataMapNodeOfDataMapOfShapeState {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRepDS_DataMapIteratorOfDataMapOfShapeListOfShapeOn1State;
class TopOpeBRepDS_DataMapIteratorOfDataMapOfShapeListOfShapeOn1State : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		TopOpeBRepDS_DataMapIteratorOfDataMapOfShapeListOfShapeOn1State();
		%feature("autodoc", "1");
		TopOpeBRepDS_DataMapIteratorOfDataMapOfShapeListOfShapeOn1State(const TopOpeBRepDS_DataMapOfShapeListOfShapeOn1State &aMap);
		%feature("autodoc", "1");
		void Initialize(const TopOpeBRepDS_DataMapOfShapeListOfShapeOn1State &aMap);
		%feature("autodoc", "1");
		const TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		const TopOpeBRepDS_ListOfShapeOn1State & Value() const;

};
%feature("shadow") TopOpeBRepDS_DataMapIteratorOfDataMapOfShapeListOfShapeOn1State::~TopOpeBRepDS_DataMapIteratorOfDataMapOfShapeListOfShapeOn1State %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRepDS_DataMapIteratorOfDataMapOfShapeListOfShapeOn1State {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRepDS_ShapeSurface;
class TopOpeBRepDS_ShapeSurface : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TopOpeBRepDS_ShapeSurface(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TopOpeBRepDS_ShapeSurface & Assign(const TopOpeBRepDS_ShapeSurface &Other);
		%feature("autodoc", "1");
		TopOpeBRepDS_ShapeSurface & operator=(const TopOpeBRepDS_ShapeSurface &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TopoDS_Shape &K, const Geom_Surface *I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TopoDS_Shape &K);
		%feature("autodoc", "1");
		const Handle_Geom_Surface & Find(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		const Handle_Geom_Surface & operator()(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		Handle_Geom_Surface & ChangeFind(const TopoDS_Shape &K);
		%feature("autodoc", "1");
		Handle_Geom_Surface & operator()(const TopoDS_Shape &K);

};
%feature("shadow") TopOpeBRepDS_ShapeSurface::~TopOpeBRepDS_ShapeSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRepDS_ShapeSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRepDS_EdgeInterferenceTool;
class TopOpeBRepDS_EdgeInterferenceTool {
	public:
		%feature("autodoc", "1");
		TopOpeBRepDS_EdgeInterferenceTool();
		%feature("autodoc", "1");
		void Init(const TopoDS_Shape &E, const TopOpeBRepDS_Interference *I);
		%feature("autodoc", "1");
		void Add(const TopoDS_Shape &E, const TopoDS_Shape &V, const TopOpeBRepDS_Interference *I);
		%feature("autodoc", "1");
		void Add(const TopoDS_Shape &E, const TopOpeBRepDS_Point &P, const TopOpeBRepDS_Interference *I);
		%feature("autodoc", "1");
		void Transition(const TopOpeBRepDS_Interference *I) const;

};
%feature("shadow") TopOpeBRepDS_EdgeInterferenceTool::~TopOpeBRepDS_EdgeInterferenceTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRepDS_EdgeInterferenceTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRepDS_DataMapIteratorOfMapOfPoint;
class TopOpeBRepDS_DataMapIteratorOfMapOfPoint : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		TopOpeBRepDS_DataMapIteratorOfMapOfPoint();
		%feature("autodoc", "1");
		TopOpeBRepDS_DataMapIteratorOfMapOfPoint(const TopOpeBRepDS_MapOfPoint &aMap);
		%feature("autodoc", "1");
		void Initialize(const TopOpeBRepDS_MapOfPoint &aMap);
		%feature("autodoc", "1");
		const Standard_Integer & Key() const;
		%feature("autodoc", "1");
		const TopOpeBRepDS_PointData & Value() const;

};
%feature("shadow") TopOpeBRepDS_DataMapIteratorOfMapOfPoint::~TopOpeBRepDS_DataMapIteratorOfMapOfPoint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRepDS_DataMapIteratorOfMapOfPoint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRepDS_DataMapOfShapeState;
class TopOpeBRepDS_DataMapOfShapeState : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TopOpeBRepDS_DataMapOfShapeState(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TopOpeBRepDS_DataMapOfShapeState & Assign(const TopOpeBRepDS_DataMapOfShapeState &Other);
		%feature("autodoc", "1");
		TopOpeBRepDS_DataMapOfShapeState & operator=(const TopOpeBRepDS_DataMapOfShapeState &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TopoDS_Shape &K, const TopAbs_State &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TopoDS_Shape &K);
		%feature("autodoc", "1");
		const TopAbs_State & Find(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		const TopAbs_State & operator()(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		TopAbs_State & ChangeFind(const TopoDS_Shape &K);
		%feature("autodoc", "1");
		TopAbs_State & operator()(const TopoDS_Shape &K);

};
%feature("shadow") TopOpeBRepDS_DataMapOfShapeState::~TopOpeBRepDS_DataMapOfShapeState %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRepDS_DataMapOfShapeState {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRepDS_IndexedDataMapOfVertexPoint;
class TopOpeBRepDS_IndexedDataMapOfVertexPoint : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TopOpeBRepDS_IndexedDataMapOfVertexPoint(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TopOpeBRepDS_IndexedDataMapOfVertexPoint & Assign(const TopOpeBRepDS_IndexedDataMapOfVertexPoint &Other);
		%feature("autodoc", "1");
		TopOpeBRepDS_IndexedDataMapOfVertexPoint & operator=(const TopOpeBRepDS_IndexedDataMapOfVertexPoint &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer Add(const TopoDS_Shape &K, const TopOpeBRepDS_Point &I);
		%feature("autodoc", "1");
		void Substitute(const Standard_Integer I, const TopoDS_Shape &K, const TopOpeBRepDS_Point &T);
		%feature("autodoc", "1");
		void RemoveLast();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		const TopoDS_Shape & FindKey(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const TopOpeBRepDS_Point & FindFromIndex(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const TopOpeBRepDS_Point & operator()(const Standard_Integer I) const;
		%feature("autodoc", "1");
		TopOpeBRepDS_Point & ChangeFromIndex(const Standard_Integer I);
		%feature("autodoc", "1");
		TopOpeBRepDS_Point & operator()(const Standard_Integer I);
		%feature("autodoc", "1");
		Standard_Integer FindIndex(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		const TopOpeBRepDS_Point & FindFromKey(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		TopOpeBRepDS_Point & ChangeFromKey(const TopoDS_Shape &K);

};
%feature("shadow") TopOpeBRepDS_IndexedDataMapOfVertexPoint::~TopOpeBRepDS_IndexedDataMapOfVertexPoint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRepDS_IndexedDataMapOfVertexPoint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRepDS_DataMapNodeOfDataMapOfCheckStatus;
class TopOpeBRepDS_DataMapNodeOfDataMapOfCheckStatus : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TopOpeBRepDS_DataMapNodeOfDataMapOfCheckStatus(const Standard_Integer &K, const TopOpeBRepDS_CheckStatus &I, const TCollection_MapNodePtr &n);
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetKey() {
				return (Standard_Integer) $self->Key();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetKey(Standard_Integer value ) {
				$self->Key()=value;
				}
		};
		%feature("autodoc", "1");
		TopOpeBRepDS_CheckStatus & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TopOpeBRepDS_DataMapNodeOfDataMapOfCheckStatus {
	Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfCheckStatus GetHandle() {
	return *(Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfCheckStatus*) &$self;
	}
};
%extend TopOpeBRepDS_DataMapNodeOfDataMapOfCheckStatus {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") TopOpeBRepDS_DataMapNodeOfDataMapOfCheckStatus::~TopOpeBRepDS_DataMapNodeOfDataMapOfCheckStatus %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRepDS_DataMapNodeOfDataMapOfCheckStatus {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRepDS_DataMapNodeOfDataMapOfIntegerListOfInterference;
class TopOpeBRepDS_DataMapNodeOfDataMapOfIntegerListOfInterference : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TopOpeBRepDS_DataMapNodeOfDataMapOfIntegerListOfInterference(const Standard_Integer &K, const TopOpeBRepDS_ListOfInterference &I, const TCollection_MapNodePtr &n);
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetKey() {
				return (Standard_Integer) $self->Key();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetKey(Standard_Integer value ) {
				$self->Key()=value;
				}
		};
		%feature("autodoc", "1");
		TopOpeBRepDS_ListOfInterference & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TopOpeBRepDS_DataMapNodeOfDataMapOfIntegerListOfInterference {
	Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfIntegerListOfInterference GetHandle() {
	return *(Handle_TopOpeBRepDS_DataMapNodeOfDataMapOfIntegerListOfInterference*) &$self;
	}
};
%extend TopOpeBRepDS_DataMapNodeOfDataMapOfIntegerListOfInterference {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") TopOpeBRepDS_DataMapNodeOfDataMapOfIntegerListOfInterference::~TopOpeBRepDS_DataMapNodeOfDataMapOfIntegerListOfInterference %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRepDS_DataMapNodeOfDataMapOfIntegerListOfInterference {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRepDS_MapOfIntegerShapeData;
class TopOpeBRepDS_MapOfIntegerShapeData : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TopOpeBRepDS_MapOfIntegerShapeData(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TopOpeBRepDS_MapOfIntegerShapeData & Assign(const TopOpeBRepDS_MapOfIntegerShapeData &Other);
		%feature("autodoc", "1");
		TopOpeBRepDS_MapOfIntegerShapeData & operator=(const TopOpeBRepDS_MapOfIntegerShapeData &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Standard_Integer &K, const TopOpeBRepDS_ShapeData &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Standard_Integer &K);
		%feature("autodoc", "1");
		const TopOpeBRepDS_ShapeData & Find(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		const TopOpeBRepDS_ShapeData & operator()(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		TopOpeBRepDS_ShapeData & ChangeFind(const Standard_Integer &K);
		%feature("autodoc", "1");
		TopOpeBRepDS_ShapeData & operator()(const Standard_Integer &K);

};
%feature("shadow") TopOpeBRepDS_MapOfIntegerShapeData::~TopOpeBRepDS_MapOfIntegerShapeData %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRepDS_MapOfIntegerShapeData {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRepDS_MapOfShapeData;
class TopOpeBRepDS_MapOfShapeData : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TopOpeBRepDS_MapOfShapeData(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TopOpeBRepDS_MapOfShapeData & Assign(const TopOpeBRepDS_MapOfShapeData &Other);
		%feature("autodoc", "1");
		TopOpeBRepDS_MapOfShapeData & operator=(const TopOpeBRepDS_MapOfShapeData &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer Add(const TopoDS_Shape &K, const TopOpeBRepDS_ShapeData &I);
		%feature("autodoc", "1");
		void Substitute(const Standard_Integer I, const TopoDS_Shape &K, const TopOpeBRepDS_ShapeData &T);
		%feature("autodoc", "1");
		void RemoveLast();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		const TopoDS_Shape & FindKey(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const TopOpeBRepDS_ShapeData & FindFromIndex(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const TopOpeBRepDS_ShapeData & operator()(const Standard_Integer I) const;
		%feature("autodoc", "1");
		TopOpeBRepDS_ShapeData & ChangeFromIndex(const Standard_Integer I);
		%feature("autodoc", "1");
		TopOpeBRepDS_ShapeData & operator()(const Standard_Integer I);
		%feature("autodoc", "1");
		Standard_Integer FindIndex(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		const TopOpeBRepDS_ShapeData & FindFromKey(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		TopOpeBRepDS_ShapeData & ChangeFromKey(const TopoDS_Shape &K);

};
%feature("shadow") TopOpeBRepDS_MapOfShapeData::~TopOpeBRepDS_MapOfShapeData %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRepDS_MapOfShapeData {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRepDS_ListOfInterference;
class TopOpeBRepDS_ListOfInterference {
	public:
		%feature("autodoc", "1");
		TopOpeBRepDS_ListOfInterference();
		%feature("autodoc", "1");
		void Assign(const TopOpeBRepDS_ListOfInterference &Other);
		%feature("autodoc", "1");
		void operator=(const TopOpeBRepDS_ListOfInterference &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const TopOpeBRepDS_Interference *I);
		%feature("autodoc", "1");
		void Prepend(const TopOpeBRepDS_Interference *I, TopOpeBRepDS_ListIteratorOfListOfInterference & theIt);
		%feature("autodoc", "1");
		void Prepend(TopOpeBRepDS_ListOfInterference & Other);
		%feature("autodoc", "1");
		void Append(const TopOpeBRepDS_Interference *I);
		%feature("autodoc", "1");
		void Append(const TopOpeBRepDS_Interference *I, TopOpeBRepDS_ListIteratorOfListOfInterference & theIt);
		%feature("autodoc", "1");
		void Append(TopOpeBRepDS_ListOfInterference & Other);
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_Interference & First() const;
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_Interference & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(TopOpeBRepDS_ListIteratorOfListOfInterference & It);
		%feature("autodoc", "1");
		void InsertBefore(const TopOpeBRepDS_Interference *I, TopOpeBRepDS_ListIteratorOfListOfInterference & It);
		%feature("autodoc", "1");
		void InsertBefore(TopOpeBRepDS_ListOfInterference & Other, TopOpeBRepDS_ListIteratorOfListOfInterference & It);
		%feature("autodoc", "1");
		void InsertAfter(const TopOpeBRepDS_Interference *I, TopOpeBRepDS_ListIteratorOfListOfInterference & It);
		%feature("autodoc", "1");
		void InsertAfter(TopOpeBRepDS_ListOfInterference & Other, TopOpeBRepDS_ListIteratorOfListOfInterference & It);

};
%feature("shadow") TopOpeBRepDS_ListOfInterference::~TopOpeBRepDS_ListOfInterference %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRepDS_ListOfInterference {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRepDS_Surface;
class TopOpeBRepDS_Surface {
	public:
		%feature("autodoc", "1");
		TopOpeBRepDS_Surface();
		%feature("autodoc", "1");
		TopOpeBRepDS_Surface(const Geom_Surface *P, const Standard_Real T);
		%feature("autodoc", "1");
		TopOpeBRepDS_Surface(const TopOpeBRepDS_Surface &Other);
		%feature("autodoc", "1");
		void Assign(const TopOpeBRepDS_Surface &Other);
		%feature("autodoc", "1");
		void operator=(const TopOpeBRepDS_Surface &Other);
		%feature("autodoc", "1");
		const Handle_Geom_Surface & Surface() const;
		%feature("autodoc", "1");
		Standard_Real Tolerance() const;
		%feature("autodoc", "1");
		void Tolerance(const Standard_Real tol);
		%feature("autodoc", "1");
		Standard_Boolean Keep() const;
		%feature("autodoc", "1");
		void ChangeKeep(const Standard_Boolean B);

};
%feature("shadow") TopOpeBRepDS_Surface::~TopOpeBRepDS_Surface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRepDS_Surface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRepDS_PointExplorer;
class TopOpeBRepDS_PointExplorer {
	public:
		%feature("autodoc", "1");
		TopOpeBRepDS_PointExplorer();
		%feature("autodoc", "1");
		TopOpeBRepDS_PointExplorer(const TopOpeBRepDS_DataStructure &DS, const Standard_Boolean FindOnlyKeep=1);
		%feature("autodoc", "1");
		void Init(const TopOpeBRepDS_DataStructure &DS, const Standard_Boolean FindOnlyKeep=1);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		const TopOpeBRepDS_Point & Point() const;
		%feature("autodoc", "1");
		Standard_Boolean IsPoint(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Standard_Boolean IsPointKeep(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const TopOpeBRepDS_Point & Point(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Standard_Integer NbPoint();
		%feature("autodoc", "1");
		Standard_Integer Index() const;

};
%feature("shadow") TopOpeBRepDS_PointExplorer::~TopOpeBRepDS_PointExplorer %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRepDS_PointExplorer {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRepDS_IndexedDataMapNodeOfMapOfShapeData;
class TopOpeBRepDS_IndexedDataMapNodeOfMapOfShapeData : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TopOpeBRepDS_IndexedDataMapNodeOfMapOfShapeData(const TopoDS_Shape &K1, const Standard_Integer K2, const TopOpeBRepDS_ShapeData &I, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
		%feature("autodoc", "1");
		TopoDS_Shape & Key1() const;
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetKey2() {
				return (Standard_Integer) $self->Key2();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetKey2(Standard_Integer value ) {
				$self->Key2()=value;
				}
		};
		%feature("autodoc", "1");
		TCollection_MapNodePtr & Next2() const;
		%feature("autodoc", "1");
		TopOpeBRepDS_ShapeData & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TopOpeBRepDS_IndexedDataMapNodeOfMapOfShapeData {
	Handle_TopOpeBRepDS_IndexedDataMapNodeOfMapOfShapeData GetHandle() {
	return *(Handle_TopOpeBRepDS_IndexedDataMapNodeOfMapOfShapeData*) &$self;
	}
};
%extend TopOpeBRepDS_IndexedDataMapNodeOfMapOfShapeData {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") TopOpeBRepDS_IndexedDataMapNodeOfMapOfShapeData::~TopOpeBRepDS_IndexedDataMapNodeOfMapOfShapeData %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRepDS_IndexedDataMapNodeOfMapOfShapeData {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRepDS_CurveExplorer;
class TopOpeBRepDS_CurveExplorer {
	public:
		%feature("autodoc", "1");
		TopOpeBRepDS_CurveExplorer();
		%feature("autodoc", "1");
		TopOpeBRepDS_CurveExplorer(const TopOpeBRepDS_DataStructure &DS, const Standard_Boolean FindOnlyKeep=1);
		%feature("autodoc", "1");
		void Init(const TopOpeBRepDS_DataStructure &DS, const Standard_Boolean FindOnlyKeep=1);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		const TopOpeBRepDS_Curve & Curve() const;
		%feature("autodoc", "1");
		Standard_Boolean IsCurve(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Standard_Boolean IsCurveKeep(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const TopOpeBRepDS_Curve & Curve(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Standard_Integer NbCurve();
		%feature("autodoc", "1");
		Standard_Integer Index() const;

};
%feature("shadow") TopOpeBRepDS_CurveExplorer::~TopOpeBRepDS_CurveExplorer %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRepDS_CurveExplorer {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRepDS_SurfaceCurveInterference;
class TopOpeBRepDS_SurfaceCurveInterference : public TopOpeBRepDS_Interference {
	public:
		%feature("autodoc", "1");
		TopOpeBRepDS_SurfaceCurveInterference();
		%feature("autodoc", "1");
		TopOpeBRepDS_SurfaceCurveInterference(const TopOpeBRepDS_Transition &Transition, const TopOpeBRepDS_Kind SupportType, const Standard_Integer Support, const TopOpeBRepDS_Kind GeometryType, const Standard_Integer Geometry, const Geom2d_Curve *PC);
		%feature("autodoc", "1");
		TopOpeBRepDS_SurfaceCurveInterference(const TopOpeBRepDS_Interference *I);
		%feature("autodoc", "1");
		const Handle_Geom2d_Curve & PCurve() const;
		%feature("autodoc", "1");
		void PCurve(const Geom2d_Curve *PC);
		%feature("autodoc", "1");
		Standard_OStream & DumpPCurve(Standard_OStream & OS, const Standard_Boolean compact=1) const;
		%feature("autodoc", "1");
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
%extend TopOpeBRepDS_SurfaceCurveInterference {
	Handle_TopOpeBRepDS_SurfaceCurveInterference GetHandle() {
	return *(Handle_TopOpeBRepDS_SurfaceCurveInterference*) &$self;
	}
};
%extend TopOpeBRepDS_SurfaceCurveInterference {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") TopOpeBRepDS_SurfaceCurveInterference::~TopOpeBRepDS_SurfaceCurveInterference %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRepDS_SurfaceCurveInterference {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRepDS_SurfaceIterator;
class TopOpeBRepDS_SurfaceIterator : public TopOpeBRepDS_InterferenceIterator {
	public:
		%feature("autodoc", "1");
		TopOpeBRepDS_SurfaceIterator(const TopOpeBRepDS_ListOfInterference &L);
		%feature("autodoc", "1");
		Standard_Integer Current() const;
		%feature("autodoc", "1");
		TopAbs_Orientation Orientation(const TopAbs_State S) const;

};
%feature("shadow") TopOpeBRepDS_SurfaceIterator::~TopOpeBRepDS_SurfaceIterator %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRepDS_SurfaceIterator {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRepDS_DoubleMapOfIntegerShape;
class TopOpeBRepDS_DoubleMapOfIntegerShape : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TopOpeBRepDS_DoubleMapOfIntegerShape(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TopOpeBRepDS_DoubleMapOfIntegerShape & Assign(const TopOpeBRepDS_DoubleMapOfIntegerShape &Other);
		%feature("autodoc", "1");
		TopOpeBRepDS_DoubleMapOfIntegerShape & operator=(const TopOpeBRepDS_DoubleMapOfIntegerShape &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Bind(const Standard_Integer &K1, const TopoDS_Shape &K2);
		%feature("autodoc", "1");
		Standard_Boolean AreBound(const Standard_Integer &K1, const TopoDS_Shape &K2) const;
		%feature("autodoc", "1");
		Standard_Boolean IsBound1(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Standard_Boolean IsBound2(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		const TopoDS_Shape & Find1(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		const Standard_Integer & Find2(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind1(const Standard_Integer &K);
		%feature("autodoc", "1");
		Standard_Boolean UnBind2(const TopoDS_Shape &K);

};
%feature("shadow") TopOpeBRepDS_DoubleMapOfIntegerShape::~TopOpeBRepDS_DoubleMapOfIntegerShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRepDS_DoubleMapOfIntegerShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRepDS_DataMapNodeOfMapOfCurve;
class TopOpeBRepDS_DataMapNodeOfMapOfCurve : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TopOpeBRepDS_DataMapNodeOfMapOfCurve(const Standard_Integer &K, const TopOpeBRepDS_CurveData &I, const TCollection_MapNodePtr &n);
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetKey() {
				return (Standard_Integer) $self->Key();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetKey(Standard_Integer value ) {
				$self->Key()=value;
				}
		};
		%feature("autodoc", "1");
		TopOpeBRepDS_CurveData & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TopOpeBRepDS_DataMapNodeOfMapOfCurve {
	Handle_TopOpeBRepDS_DataMapNodeOfMapOfCurve GetHandle() {
	return *(Handle_TopOpeBRepDS_DataMapNodeOfMapOfCurve*) &$self;
	}
};
%extend TopOpeBRepDS_DataMapNodeOfMapOfCurve {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") TopOpeBRepDS_DataMapNodeOfMapOfCurve::~TopOpeBRepDS_DataMapNodeOfMapOfCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRepDS_DataMapNodeOfMapOfCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRepDS_DataMapIteratorOfMapOfCurve;
class TopOpeBRepDS_DataMapIteratorOfMapOfCurve : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		TopOpeBRepDS_DataMapIteratorOfMapOfCurve();
		%feature("autodoc", "1");
		TopOpeBRepDS_DataMapIteratorOfMapOfCurve(const TopOpeBRepDS_MapOfCurve &aMap);
		%feature("autodoc", "1");
		void Initialize(const TopOpeBRepDS_MapOfCurve &aMap);
		%feature("autodoc", "1");
		const Standard_Integer & Key() const;
		%feature("autodoc", "1");
		const TopOpeBRepDS_CurveData & Value() const;

};
%feature("shadow") TopOpeBRepDS_DataMapIteratorOfMapOfCurve::~TopOpeBRepDS_DataMapIteratorOfMapOfCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRepDS_DataMapIteratorOfMapOfCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRepDS_DataMapIteratorOfDataMapOfInterferenceListOfInterference;
class TopOpeBRepDS_DataMapIteratorOfDataMapOfInterferenceListOfInterference : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		TopOpeBRepDS_DataMapIteratorOfDataMapOfInterferenceListOfInterference();
		%feature("autodoc", "1");
		TopOpeBRepDS_DataMapIteratorOfDataMapOfInterferenceListOfInterference(const TopOpeBRepDS_DataMapOfInterferenceListOfInterference &aMap);
		%feature("autodoc", "1");
		void Initialize(const TopOpeBRepDS_DataMapOfInterferenceListOfInterference &aMap);
		%feature("autodoc", "1");
		const Handle_TopOpeBRepDS_Interference & Key() const;
		%feature("autodoc", "1");
		const TopOpeBRepDS_ListOfInterference & Value() const;

};
%feature("shadow") TopOpeBRepDS_DataMapIteratorOfDataMapOfInterferenceListOfInterference::~TopOpeBRepDS_DataMapIteratorOfDataMapOfInterferenceListOfInterference %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRepDS_DataMapIteratorOfDataMapOfInterferenceListOfInterference {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRepDS_DataMapNodeOfMapOfIntegerShapeData;
class TopOpeBRepDS_DataMapNodeOfMapOfIntegerShapeData : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TopOpeBRepDS_DataMapNodeOfMapOfIntegerShapeData(const Standard_Integer &K, const TopOpeBRepDS_ShapeData &I, const TCollection_MapNodePtr &n);
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetKey() {
				return (Standard_Integer) $self->Key();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetKey(Standard_Integer value ) {
				$self->Key()=value;
				}
		};
		%feature("autodoc", "1");
		TopOpeBRepDS_ShapeData & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TopOpeBRepDS_DataMapNodeOfMapOfIntegerShapeData {
	Handle_TopOpeBRepDS_DataMapNodeOfMapOfIntegerShapeData GetHandle() {
	return *(Handle_TopOpeBRepDS_DataMapNodeOfMapOfIntegerShapeData*) &$self;
	}
};
%extend TopOpeBRepDS_DataMapNodeOfMapOfIntegerShapeData {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") TopOpeBRepDS_DataMapNodeOfMapOfIntegerShapeData::~TopOpeBRepDS_DataMapNodeOfMapOfIntegerShapeData %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRepDS_DataMapNodeOfMapOfIntegerShapeData {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRepDS_IndexedDataMapNodeOfIndexedDataMapOfShapeWithState;
class TopOpeBRepDS_IndexedDataMapNodeOfIndexedDataMapOfShapeWithState : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TopOpeBRepDS_IndexedDataMapNodeOfIndexedDataMapOfShapeWithState(const TopoDS_Shape &K1, const Standard_Integer K2, const TopOpeBRepDS_ShapeWithState &I, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
		%feature("autodoc", "1");
		TopoDS_Shape & Key1() const;
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetKey2() {
				return (Standard_Integer) $self->Key2();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetKey2(Standard_Integer value ) {
				$self->Key2()=value;
				}
		};
		%feature("autodoc", "1");
		TCollection_MapNodePtr & Next2() const;
		%feature("autodoc", "1");
		TopOpeBRepDS_ShapeWithState & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TopOpeBRepDS_IndexedDataMapNodeOfIndexedDataMapOfShapeWithState {
	Handle_TopOpeBRepDS_IndexedDataMapNodeOfIndexedDataMapOfShapeWithState GetHandle() {
	return *(Handle_TopOpeBRepDS_IndexedDataMapNodeOfIndexedDataMapOfShapeWithState*) &$self;
	}
};
%extend TopOpeBRepDS_IndexedDataMapNodeOfIndexedDataMapOfShapeWithState {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") TopOpeBRepDS_IndexedDataMapNodeOfIndexedDataMapOfShapeWithState::~TopOpeBRepDS_IndexedDataMapNodeOfIndexedDataMapOfShapeWithState %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRepDS_IndexedDataMapNodeOfIndexedDataMapOfShapeWithState {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRepDS_EIR;
class TopOpeBRepDS_EIR {
	public:
		%feature("autodoc", "1");
		TopOpeBRepDS_EIR(const TopOpeBRepDS_HDataStructure *HDS);
		%feature("autodoc", "1");
		void ProcessEdgeInterferences();
		%feature("autodoc", "1");
		void ProcessEdgeInterferences(const Standard_Integer I);

};
%feature("shadow") TopOpeBRepDS_EIR::~TopOpeBRepDS_EIR %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRepDS_EIR {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRepDS_Curve;
class TopOpeBRepDS_Curve {
	public:
		%feature("autodoc", "1");
		TopOpeBRepDS_Curve();
		%feature("autodoc", "1");
		TopOpeBRepDS_Curve(const Geom_Curve *P, const Standard_Real T, const Standard_Boolean IsWalk=0);
		%feature("autodoc", "1");
		void DefineCurve(const Geom_Curve *P, const Standard_Real T, const Standard_Boolean IsWalk);
		%feature("autodoc", "1");
		void Tolerance(const Standard_Real tol);
		%feature("autodoc", "1");
		void SetSCI(const TopOpeBRepDS_Interference *I1, const TopOpeBRepDS_Interference *I2);
		%feature("autodoc", "1");
		const Handle_TopOpeBRepDS_Interference & GetSCI1() const;
		%feature("autodoc", "1");
		const Handle_TopOpeBRepDS_Interference & GetSCI2() const;
		%feature("autodoc", "1");
		void GetSCI(Handle_TopOpeBRepDS_Interference & I1, Handle_TopOpeBRepDS_Interference & I2) const;
		%feature("autodoc", "1");
		void SetShapes(const TopoDS_Shape &S1, const TopoDS_Shape &S2);
		%feature("autodoc", "1");
		void GetShapes(TopoDS_Shape & S1, TopoDS_Shape & S2) const;
		%feature("autodoc", "1");
		const TopoDS_Shape & Shape1() const;
		%feature("autodoc", "1");
		TopoDS_Shape & ChangeShape1();
		%feature("autodoc", "1");
		const TopoDS_Shape & Shape2() const;
		%feature("autodoc", "1");
		TopoDS_Shape & ChangeShape2();
		%feature("autodoc", "1");
		const Handle_Geom_Curve & Curve() const;
		%feature("autodoc", "1");
		void SetRange(const Standard_Real First, const Standard_Real Last);
		%feature("autodoc","Range() -> [Standard_Real, Standard_Real]");

		Standard_Boolean Range(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Real Tolerance() const;
		%feature("autodoc", "1");
		Handle_Geom_Curve & ChangeCurve();
		%feature("autodoc", "1");
		void Curve(const Geom_Curve *C3D, const Standard_Real Tol);
		%feature("autodoc", "1");
		const Handle_Geom2d_Curve & Curve1() const;
		%feature("autodoc", "1");
		void Curve1(const Geom2d_Curve *PC1);
		%feature("autodoc", "1");
		const Handle_Geom2d_Curve & Curve2() const;
		%feature("autodoc", "1");
		void Curve2(const Geom2d_Curve *PC2);
		%feature("autodoc", "1");
		Standard_Boolean IsWalk() const;
		%feature("autodoc", "1");
		void ChangeIsWalk(const Standard_Boolean B);
		%feature("autodoc", "1");
		Standard_Boolean Keep() const;
		%feature("autodoc", "1");
		void ChangeKeep(const Standard_Boolean B);
		%feature("autodoc", "1");
		Standard_Integer Mother() const;
		%feature("autodoc", "1");
		void ChangeMother(const Standard_Integer I);
		%feature("autodoc", "1");
		Standard_Integer DSIndex() const;
		%feature("autodoc", "1");
		void ChangeDSIndex(const Standard_Integer I);
		%feature("autodoc", "1");
		Standard_OStream & Dump(Standard_OStream & OS, const Standard_Integer index, const Standard_Boolean compact=1) const;

};
%feature("shadow") TopOpeBRepDS_Curve::~TopOpeBRepDS_Curve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRepDS_Curve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRepDS_MapOfCurve;
class TopOpeBRepDS_MapOfCurve : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TopOpeBRepDS_MapOfCurve(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TopOpeBRepDS_MapOfCurve & Assign(const TopOpeBRepDS_MapOfCurve &Other);
		%feature("autodoc", "1");
		TopOpeBRepDS_MapOfCurve & operator=(const TopOpeBRepDS_MapOfCurve &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Standard_Integer &K, const TopOpeBRepDS_CurveData &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Standard_Integer &K);
		%feature("autodoc", "1");
		const TopOpeBRepDS_CurveData & Find(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		const TopOpeBRepDS_CurveData & operator()(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		TopOpeBRepDS_CurveData & ChangeFind(const Standard_Integer &K);
		%feature("autodoc", "1");
		TopOpeBRepDS_CurveData & operator()(const Standard_Integer &K);

};
%feature("shadow") TopOpeBRepDS_MapOfCurve::~TopOpeBRepDS_MapOfCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRepDS_MapOfCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRepDS_DataMapIteratorOfDataMapOfIntegerListOfInterference;
class TopOpeBRepDS_DataMapIteratorOfDataMapOfIntegerListOfInterference : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		TopOpeBRepDS_DataMapIteratorOfDataMapOfIntegerListOfInterference();
		%feature("autodoc", "1");
		TopOpeBRepDS_DataMapIteratorOfDataMapOfIntegerListOfInterference(const TopOpeBRepDS_DataMapOfIntegerListOfInterference &aMap);
		%feature("autodoc", "1");
		void Initialize(const TopOpeBRepDS_DataMapOfIntegerListOfInterference &aMap);
		%feature("autodoc", "1");
		const Standard_Integer & Key() const;
		%feature("autodoc", "1");
		const TopOpeBRepDS_ListOfInterference & Value() const;

};
%feature("shadow") TopOpeBRepDS_DataMapIteratorOfDataMapOfIntegerListOfInterference::~TopOpeBRepDS_DataMapIteratorOfDataMapOfIntegerListOfInterference %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRepDS_DataMapIteratorOfDataMapOfIntegerListOfInterference {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRepDS_CurveData;
class TopOpeBRepDS_CurveData : public TopOpeBRepDS_GeometryData {
	public:
		%feature("autodoc", "1");
		TopOpeBRepDS_CurveData();
		%feature("autodoc", "1");
		TopOpeBRepDS_CurveData(const TopOpeBRepDS_Curve &C);

};
%feature("shadow") TopOpeBRepDS_CurveData::~TopOpeBRepDS_CurveData %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRepDS_CurveData {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRepDS_DataMapOfInterferenceListOfInterference;
class TopOpeBRepDS_DataMapOfInterferenceListOfInterference : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TopOpeBRepDS_DataMapOfInterferenceListOfInterference(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TopOpeBRepDS_DataMapOfInterferenceListOfInterference & Assign(const TopOpeBRepDS_DataMapOfInterferenceListOfInterference &Other);
		%feature("autodoc", "1");
		TopOpeBRepDS_DataMapOfInterferenceListOfInterference & operator=(const TopOpeBRepDS_DataMapOfInterferenceListOfInterference &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TopOpeBRepDS_Interference *K, const TopOpeBRepDS_ListOfInterference &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TopOpeBRepDS_Interference *K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TopOpeBRepDS_Interference *K);
		%feature("autodoc", "1");
		const TopOpeBRepDS_ListOfInterference & Find(const TopOpeBRepDS_Interference *K) const;
		%feature("autodoc", "1");
		const TopOpeBRepDS_ListOfInterference & operator()(const TopOpeBRepDS_Interference *K) const;
		%feature("autodoc", "1");
		TopOpeBRepDS_ListOfInterference & ChangeFind(const TopOpeBRepDS_Interference *K);
		%feature("autodoc", "1");
		TopOpeBRepDS_ListOfInterference & operator()(const TopOpeBRepDS_Interference *K);

};
%feature("shadow") TopOpeBRepDS_DataMapOfInterferenceListOfInterference::~TopOpeBRepDS_DataMapOfInterferenceListOfInterference %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRepDS_DataMapOfInterferenceListOfInterference {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRepDS_SurfaceExplorer;
class TopOpeBRepDS_SurfaceExplorer {
	public:
		%feature("autodoc", "1");
		TopOpeBRepDS_SurfaceExplorer();
		%feature("autodoc", "1");
		TopOpeBRepDS_SurfaceExplorer(const TopOpeBRepDS_DataStructure &DS, const Standard_Boolean FindOnlyKeep=1);
		%feature("autodoc", "1");
		void Init(const TopOpeBRepDS_DataStructure &DS, const Standard_Boolean FindOnlyKeep=1);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		const TopOpeBRepDS_Surface & Surface() const;
		%feature("autodoc", "1");
		Standard_Boolean IsSurface(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Standard_Boolean IsSurfaceKeep(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const TopOpeBRepDS_Surface & Surface(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Standard_Integer NbSurface();
		%feature("autodoc", "1");
		Standard_Integer Index() const;

};
%feature("shadow") TopOpeBRepDS_SurfaceExplorer::~TopOpeBRepDS_SurfaceExplorer %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRepDS_SurfaceExplorer {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRepDS_HArray1OfDataMapOfIntegerListOfInterference;
class TopOpeBRepDS_HArray1OfDataMapOfIntegerListOfInterference : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TopOpeBRepDS_HArray1OfDataMapOfIntegerListOfInterference(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TopOpeBRepDS_HArray1OfDataMapOfIntegerListOfInterference(const Standard_Integer Low, const Standard_Integer Up, const TopOpeBRepDS_DataMapOfIntegerListOfInterference &V);
		%feature("autodoc", "1");
		void Init(const TopOpeBRepDS_DataMapOfIntegerListOfInterference &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const TopOpeBRepDS_DataMapOfIntegerListOfInterference &Value);
		%feature("autodoc", "1");
		const TopOpeBRepDS_DataMapOfIntegerListOfInterference & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		TopOpeBRepDS_DataMapOfIntegerListOfInterference & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const TopOpeBRepDS_Array1OfDataMapOfIntegerListOfInterference & Array1() const;
		%feature("autodoc", "1");
		TopOpeBRepDS_Array1OfDataMapOfIntegerListOfInterference & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TopOpeBRepDS_HArray1OfDataMapOfIntegerListOfInterference {
	Handle_TopOpeBRepDS_HArray1OfDataMapOfIntegerListOfInterference GetHandle() {
	return *(Handle_TopOpeBRepDS_HArray1OfDataMapOfIntegerListOfInterference*) &$self;
	}
};
%extend TopOpeBRepDS_HArray1OfDataMapOfIntegerListOfInterference {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") TopOpeBRepDS_HArray1OfDataMapOfIntegerListOfInterference::~TopOpeBRepDS_HArray1OfDataMapOfIntegerListOfInterference %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRepDS_HArray1OfDataMapOfIntegerListOfInterference {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRepDS_IndexedDataMapNodeOfIndexedDataMapOfVertexPoint;
class TopOpeBRepDS_IndexedDataMapNodeOfIndexedDataMapOfVertexPoint : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TopOpeBRepDS_IndexedDataMapNodeOfIndexedDataMapOfVertexPoint(const TopoDS_Shape &K1, const Standard_Integer K2, const TopOpeBRepDS_Point &I, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
		%feature("autodoc", "1");
		TopoDS_Shape & Key1() const;
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetKey2() {
				return (Standard_Integer) $self->Key2();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetKey2(Standard_Integer value ) {
				$self->Key2()=value;
				}
		};
		%feature("autodoc", "1");
		TCollection_MapNodePtr & Next2() const;
		%feature("autodoc", "1");
		TopOpeBRepDS_Point & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TopOpeBRepDS_IndexedDataMapNodeOfIndexedDataMapOfVertexPoint {
	Handle_TopOpeBRepDS_IndexedDataMapNodeOfIndexedDataMapOfVertexPoint GetHandle() {
	return *(Handle_TopOpeBRepDS_IndexedDataMapNodeOfIndexedDataMapOfVertexPoint*) &$self;
	}
};
%extend TopOpeBRepDS_IndexedDataMapNodeOfIndexedDataMapOfVertexPoint {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") TopOpeBRepDS_IndexedDataMapNodeOfIndexedDataMapOfVertexPoint::~TopOpeBRepDS_IndexedDataMapNodeOfIndexedDataMapOfVertexPoint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRepDS_IndexedDataMapNodeOfIndexedDataMapOfVertexPoint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRepDS_ListOfShapeOn1State;
class TopOpeBRepDS_ListOfShapeOn1State {
	public:
		%feature("autodoc", "1");
		TopOpeBRepDS_ListOfShapeOn1State();
		%feature("autodoc", "1");
		const TopTools_ListOfShape & ListOnState() const;
		%feature("autodoc", "1");
		TopTools_ListOfShape & ChangeListOnState();
		%feature("autodoc", "1");
		Standard_Boolean IsSplit() const;
		%feature("autodoc", "1");
		void Split(const Standard_Boolean B=1);
		%feature("autodoc", "1");
		void Clear();

};
%feature("shadow") TopOpeBRepDS_ListOfShapeOn1State::~TopOpeBRepDS_ListOfShapeOn1State %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRepDS_ListOfShapeOn1State {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRepDS_Marker;
class TopOpeBRepDS_Marker : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TopOpeBRepDS_Marker();
		%feature("autodoc", "1");
		void Reset();
		%feature("autodoc", "1");
		void Set(const Standard_Integer i, const Standard_Boolean b);
		%feature("autodoc", "1");
		void Set(const Standard_Boolean b, const Standard_Integer n, const Standard_Address a);
		%feature("autodoc", "1");
		Standard_Boolean GetI(const Standard_Integer i) const;
		%feature("autodoc", "1");
		void Allocate(const Standard_Integer n);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TopOpeBRepDS_Marker {
	Handle_TopOpeBRepDS_Marker GetHandle() {
	return *(Handle_TopOpeBRepDS_Marker*) &$self;
	}
};
%extend TopOpeBRepDS_Marker {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") TopOpeBRepDS_Marker::~TopOpeBRepDS_Marker %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRepDS_Marker {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRepDS_TKI;
class TopOpeBRepDS_TKI {
	public:
		%feature("autodoc", "1");
		TopOpeBRepDS_TKI();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void FillOnGeometry(const TopOpeBRepDS_ListOfInterference &L);
		%feature("autodoc", "1");
		void FillOnSupport(const TopOpeBRepDS_ListOfInterference &L);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TopOpeBRepDS_Kind K, const Standard_Integer G) const;
		%feature("autodoc", "1");
		const TopOpeBRepDS_ListOfInterference & Interferences(const TopOpeBRepDS_Kind K, const Standard_Integer G) const;
		%feature("autodoc", "1");
		TopOpeBRepDS_ListOfInterference & ChangeInterferences(const TopOpeBRepDS_Kind K, const Standard_Integer G);
		%feature("autodoc", "1");
		Standard_Boolean HasInterferences(const TopOpeBRepDS_Kind K, const Standard_Integer G) const;
		%feature("autodoc", "1");
		void Add(const TopOpeBRepDS_Kind K, const Standard_Integer G);
		%feature("autodoc", "1");
		void Add(const TopOpeBRepDS_Kind K, const Standard_Integer G, const TopOpeBRepDS_Interference *HI);
		%feature("autodoc", "1");
		void DumpTKI(const TCollection_AsciiString &s1="", const TCollection_AsciiString &s2="") const;
		%feature("autodoc", "1");
		void DumpTKI(const TopOpeBRepDS_Kind K, const TCollection_AsciiString &s1="", const TCollection_AsciiString &s2="") const;
		%feature("autodoc", "1");
		void DumpTKI(const TopOpeBRepDS_Kind K, const Standard_Integer G, const TCollection_AsciiString &s1="", const TCollection_AsciiString &s2="") const;
		%feature("autodoc", "1");
		void DumpTKI(const TopOpeBRepDS_Kind K, const Standard_Integer G, const TopOpeBRepDS_ListOfInterference &L, const TCollection_AsciiString &s1="", const TCollection_AsciiString &s2="") const;
		%feature("autodoc", "1");
		void DumpTKIIterator(const TCollection_AsciiString &s1="", const TCollection_AsciiString &s2="");
		%feature("autodoc", "1");
		void Init();
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc","Value() -> Standard_Integer");

		const TopOpeBRepDS_ListOfInterference & Value(TopOpeBRepDS_Kind & K, Standard_Integer &OutValue) const;
		%feature("autodoc","ChangeValue() -> Standard_Integer");

		TopOpeBRepDS_ListOfInterference & ChangeValue(TopOpeBRepDS_Kind & K, Standard_Integer &OutValue);

};
%feature("shadow") TopOpeBRepDS_TKI::~TopOpeBRepDS_TKI %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRepDS_TKI {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRepDS_Edge3dInterferenceTool;
class TopOpeBRepDS_Edge3dInterferenceTool {
	public:
		%feature("autodoc", "1");
		TopOpeBRepDS_Edge3dInterferenceTool();
		%feature("autodoc", "1");
		void InitPointVertex(const Standard_Integer IsVertex, const TopoDS_Shape &VonOO);
		%feature("autodoc", "1");
		void Init(const TopoDS_Shape &Eref, const TopoDS_Shape &E, const TopoDS_Shape &F, const TopOpeBRepDS_Interference *I);
		%feature("autodoc", "1");
		void Add(const TopoDS_Shape &Eref, const TopoDS_Shape &E, const TopoDS_Shape &F, const TopOpeBRepDS_Interference *I);
		%feature("autodoc", "1");
		void Transition(const TopOpeBRepDS_Interference *I) const;

};
%feature("shadow") TopOpeBRepDS_Edge3dInterferenceTool::~TopOpeBRepDS_Edge3dInterferenceTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRepDS_Edge3dInterferenceTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRepDS_FaceInterferenceTool;
class TopOpeBRepDS_FaceInterferenceTool {
	public:
		%feature("autodoc", "1");
		TopOpeBRepDS_FaceInterferenceTool(const TopOpeBRepDS_PDataStructure &P);
		%feature("autodoc", "1");
		void Init(const TopoDS_Shape &FI, const TopoDS_Shape &E, const Standard_Boolean Eisnew, const TopOpeBRepDS_Interference *I);
		%feature("autodoc", "1");
		void Add(const TopoDS_Shape &FI, const TopoDS_Shape &F, const TopoDS_Shape &E, const Standard_Boolean Eisnew, const TopOpeBRepDS_Interference *I);
		%feature("autodoc", "1");
		void Add(const TopoDS_Shape &E, const TopOpeBRepDS_Curve &C, const TopOpeBRepDS_Interference *I);
		%feature("autodoc", "1");
		void SetEdgePntPar(const gp_Pnt &P, const Standard_Real par);
		%feature("autodoc","GetEdgePntPar() -> Standard_Real");

		void GetEdgePntPar(gp_Pnt & P, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Boolean IsEdgePntParDef() const;
		%feature("autodoc", "1");
		void Transition(const TopOpeBRepDS_Interference *I) const;

};
%feature("shadow") TopOpeBRepDS_FaceInterferenceTool::~TopOpeBRepDS_FaceInterferenceTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRepDS_FaceInterferenceTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRepDS_Array1OfDataMapOfIntegerListOfInterference;
class TopOpeBRepDS_Array1OfDataMapOfIntegerListOfInterference {
	public:
		%feature("autodoc", "1");
		TopOpeBRepDS_Array1OfDataMapOfIntegerListOfInterference(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TopOpeBRepDS_Array1OfDataMapOfIntegerListOfInterference(const TopOpeBRepDS_DataMapOfIntegerListOfInterference &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const TopOpeBRepDS_DataMapOfIntegerListOfInterference &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const TopOpeBRepDS_Array1OfDataMapOfIntegerListOfInterference & Assign(const TopOpeBRepDS_Array1OfDataMapOfIntegerListOfInterference &Other);
		%feature("autodoc", "1");
		const TopOpeBRepDS_Array1OfDataMapOfIntegerListOfInterference & operator=(const TopOpeBRepDS_Array1OfDataMapOfIntegerListOfInterference &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const TopOpeBRepDS_DataMapOfIntegerListOfInterference &Value);
		%feature("autodoc", "1");
		const TopOpeBRepDS_DataMapOfIntegerListOfInterference & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const TopOpeBRepDS_DataMapOfIntegerListOfInterference & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		TopOpeBRepDS_DataMapOfIntegerListOfInterference & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		TopOpeBRepDS_DataMapOfIntegerListOfInterference & operator()(const Standard_Integer Index);

};
%feature("shadow") TopOpeBRepDS_Array1OfDataMapOfIntegerListOfInterference::~TopOpeBRepDS_Array1OfDataMapOfIntegerListOfInterference %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRepDS_Array1OfDataMapOfIntegerListOfInterference {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRepDS_DataMapIteratorOfDataMapOfCheckStatus;
class TopOpeBRepDS_DataMapIteratorOfDataMapOfCheckStatus : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		TopOpeBRepDS_DataMapIteratorOfDataMapOfCheckStatus();
		%feature("autodoc", "1");
		TopOpeBRepDS_DataMapIteratorOfDataMapOfCheckStatus(const TopOpeBRepDS_DataMapOfCheckStatus &aMap);
		%feature("autodoc", "1");
		void Initialize(const TopOpeBRepDS_DataMapOfCheckStatus &aMap);
		%feature("autodoc", "1");
		const Standard_Integer & Key() const;
		%feature("autodoc", "1");
		const TopOpeBRepDS_CheckStatus & Value() const;

};
%feature("shadow") TopOpeBRepDS_DataMapIteratorOfDataMapOfCheckStatus::~TopOpeBRepDS_DataMapIteratorOfDataMapOfCheckStatus %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRepDS_DataMapIteratorOfDataMapOfCheckStatus {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRepDS_DataMapNodeOfShapeSurface;
class TopOpeBRepDS_DataMapNodeOfShapeSurface : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TopOpeBRepDS_DataMapNodeOfShapeSurface(const TopoDS_Shape &K, const Geom_Surface *I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		Handle_Geom_Surface & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TopOpeBRepDS_DataMapNodeOfShapeSurface {
	Handle_TopOpeBRepDS_DataMapNodeOfShapeSurface GetHandle() {
	return *(Handle_TopOpeBRepDS_DataMapNodeOfShapeSurface*) &$self;
	}
};
%extend TopOpeBRepDS_DataMapNodeOfShapeSurface {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") TopOpeBRepDS_DataMapNodeOfShapeSurface::~TopOpeBRepDS_DataMapNodeOfShapeSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRepDS_DataMapNodeOfShapeSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRepDS_DataMapOfIntegerListOfInterference;
class TopOpeBRepDS_DataMapOfIntegerListOfInterference : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TopOpeBRepDS_DataMapOfIntegerListOfInterference(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TopOpeBRepDS_DataMapOfIntegerListOfInterference & Assign(const TopOpeBRepDS_DataMapOfIntegerListOfInterference &Other);
		%feature("autodoc", "1");
		TopOpeBRepDS_DataMapOfIntegerListOfInterference & operator=(const TopOpeBRepDS_DataMapOfIntegerListOfInterference &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Standard_Integer &K, const TopOpeBRepDS_ListOfInterference &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Standard_Integer &K);
		%feature("autodoc", "1");
		const TopOpeBRepDS_ListOfInterference & Find(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		const TopOpeBRepDS_ListOfInterference & operator()(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		TopOpeBRepDS_ListOfInterference & ChangeFind(const Standard_Integer &K);
		%feature("autodoc", "1");
		TopOpeBRepDS_ListOfInterference & operator()(const Standard_Integer &K);

};
%feature("shadow") TopOpeBRepDS_DataMapOfIntegerListOfInterference::~TopOpeBRepDS_DataMapOfIntegerListOfInterference %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRepDS_DataMapOfIntegerListOfInterference {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRepDS_DataMapIteratorOfShapeSurface;
class TopOpeBRepDS_DataMapIteratorOfShapeSurface : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		TopOpeBRepDS_DataMapIteratorOfShapeSurface();
		%feature("autodoc", "1");
		TopOpeBRepDS_DataMapIteratorOfShapeSurface(const TopOpeBRepDS_ShapeSurface &aMap);
		%feature("autodoc", "1");
		void Initialize(const TopOpeBRepDS_ShapeSurface &aMap);
		%feature("autodoc", "1");
		const TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		const Handle_Geom_Surface & Value() const;

};
%feature("shadow") TopOpeBRepDS_DataMapIteratorOfShapeSurface::~TopOpeBRepDS_DataMapIteratorOfShapeSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRepDS_DataMapIteratorOfShapeSurface {
	void _kill_pointed() {
		delete $self;
	}
};
