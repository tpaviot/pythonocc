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

%module BRepMesh
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include BRepMesh_renames.i


%include BRepMesh_required_python_modules.i


%include BRepMesh_dependencies.i


%include BRepMesh_headers.i

typedef NCollection_Handle<BRepMesh_Classifier> BRepMesh_ClassifierPtr;
typedef NCollection_CellFilter<BRepMesh_CircleInspector> BRepMesh_CellFilter;
typedef Handle_NCollection_IncAllocator BRepMesh_BaseAllocator;
typedef NCollection_DataMap<int,int> BRepMesh_MapOfIntegerInteger;
typedef NCollection_Map<int> BRepMesh_MapOfInteger;
typedef NCollection_List<int> BRepMesh_ListOfInteger;
typedef BRepMesh_DiscretRoot * BRepMesh_PDiscretRoot;

enum BRepMesh_FactoryError {
	BRepMesh_FE_NOERROR,
	BRepMesh_FE_LIBRARYNOTFOUND,
	BRepMesh_FE_FUNCTIONNOTFOUND,
	BRepMesh_FE_CANNOTCREATEALGO,
	};

enum BRepMesh_Status {
	BRepMesh_NoError,
	BRepMesh_OpenWire,
	BRepMesh_SelfIntersectingWire,
	BRepMesh_Failure,
	BRepMesh_ReMesh,
	};

enum BRepMesh_DegreeOfFreedom {
	BRepMesh_Free,
	BRepMesh_InVolume,
	BRepMesh_OnSurface,
	BRepMesh_OnCurve,
	BRepMesh_Fixed,
	BRepMesh_Frontier,
	BRepMesh_Deleted,
	};



%nodefaultctor Handle_BRepMesh_DataMapNodeOfDataMapOfIntegerListOfXY;
class Handle_BRepMesh_DataMapNodeOfDataMapOfIntegerListOfXY : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_BRepMesh_DataMapNodeOfDataMapOfIntegerListOfXY();
		%feature("autodoc", "1");
		Handle_BRepMesh_DataMapNodeOfDataMapOfIntegerListOfXY(const Handle_BRepMesh_DataMapNodeOfDataMapOfIntegerListOfXY &aHandle);
		%feature("autodoc", "1");
		Handle_BRepMesh_DataMapNodeOfDataMapOfIntegerListOfXY(const BRepMesh_DataMapNodeOfDataMapOfIntegerListOfXY *anItem);
		%feature("autodoc", "1");
		Handle_BRepMesh_DataMapNodeOfDataMapOfIntegerListOfXY & operator=(const Handle_BRepMesh_DataMapNodeOfDataMapOfIntegerListOfXY &aHandle);
		%feature("autodoc", "1");
		Handle_BRepMesh_DataMapNodeOfDataMapOfIntegerListOfXY & operator=(const BRepMesh_DataMapNodeOfDataMapOfIntegerListOfXY *anItem);
		%feature("autodoc", "1");
		static		Handle_BRepMesh_DataMapNodeOfDataMapOfIntegerListOfXY DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepMesh_DataMapNodeOfDataMapOfIntegerListOfXY {
	BRepMesh_DataMapNodeOfDataMapOfIntegerListOfXY* GetObject() {
	return (BRepMesh_DataMapNodeOfDataMapOfIntegerListOfXY*)$self->Access();
	}
};
%feature("shadow") Handle_BRepMesh_DataMapNodeOfDataMapOfIntegerListOfXY::~Handle_BRepMesh_DataMapNodeOfDataMapOfIntegerListOfXY %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BRepMesh_DataMapNodeOfDataMapOfIntegerListOfXY {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BRepMesh_IndexedMapNodeOfIMapOfElementOfDataStructureOfDelaun;
class Handle_BRepMesh_IndexedMapNodeOfIMapOfElementOfDataStructureOfDelaun : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_BRepMesh_IndexedMapNodeOfIMapOfElementOfDataStructureOfDelaun();
		%feature("autodoc", "1");
		Handle_BRepMesh_IndexedMapNodeOfIMapOfElementOfDataStructureOfDelaun(const Handle_BRepMesh_IndexedMapNodeOfIMapOfElementOfDataStructureOfDelaun &aHandle);
		%feature("autodoc", "1");
		Handle_BRepMesh_IndexedMapNodeOfIMapOfElementOfDataStructureOfDelaun(const BRepMesh_IndexedMapNodeOfIMapOfElementOfDataStructureOfDelaun *anItem);
		%feature("autodoc", "1");
		Handle_BRepMesh_IndexedMapNodeOfIMapOfElementOfDataStructureOfDelaun & operator=(const Handle_BRepMesh_IndexedMapNodeOfIMapOfElementOfDataStructureOfDelaun &aHandle);
		%feature("autodoc", "1");
		Handle_BRepMesh_IndexedMapNodeOfIMapOfElementOfDataStructureOfDelaun & operator=(const BRepMesh_IndexedMapNodeOfIMapOfElementOfDataStructureOfDelaun *anItem);
		%feature("autodoc", "1");
		static		Handle_BRepMesh_IndexedMapNodeOfIMapOfElementOfDataStructureOfDelaun DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepMesh_IndexedMapNodeOfIMapOfElementOfDataStructureOfDelaun {
	BRepMesh_IndexedMapNodeOfIMapOfElementOfDataStructureOfDelaun* GetObject() {
	return (BRepMesh_IndexedMapNodeOfIMapOfElementOfDataStructureOfDelaun*)$self->Access();
	}
};
%feature("shadow") Handle_BRepMesh_IndexedMapNodeOfIMapOfElementOfDataStructureOfDelaun::~Handle_BRepMesh_IndexedMapNodeOfIMapOfElementOfDataStructureOfDelaun %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BRepMesh_IndexedMapNodeOfIMapOfElementOfDataStructureOfDelaun {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BRepMesh_HArray1OfVertexOfDelaun;
class Handle_BRepMesh_HArray1OfVertexOfDelaun : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_BRepMesh_HArray1OfVertexOfDelaun();
		%feature("autodoc", "1");
		Handle_BRepMesh_HArray1OfVertexOfDelaun(const Handle_BRepMesh_HArray1OfVertexOfDelaun &aHandle);
		%feature("autodoc", "1");
		Handle_BRepMesh_HArray1OfVertexOfDelaun(const BRepMesh_HArray1OfVertexOfDelaun *anItem);
		%feature("autodoc", "1");
		Handle_BRepMesh_HArray1OfVertexOfDelaun & operator=(const Handle_BRepMesh_HArray1OfVertexOfDelaun &aHandle);
		%feature("autodoc", "1");
		Handle_BRepMesh_HArray1OfVertexOfDelaun & operator=(const BRepMesh_HArray1OfVertexOfDelaun *anItem);
		%feature("autodoc", "1");
		static		Handle_BRepMesh_HArray1OfVertexOfDelaun DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepMesh_HArray1OfVertexOfDelaun {
	BRepMesh_HArray1OfVertexOfDelaun* GetObject() {
	return (BRepMesh_HArray1OfVertexOfDelaun*)$self->Access();
	}
};
%feature("shadow") Handle_BRepMesh_HArray1OfVertexOfDelaun::~Handle_BRepMesh_HArray1OfVertexOfDelaun %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BRepMesh_HArray1OfVertexOfDelaun {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BRepMesh_FaceAttribute;
class Handle_BRepMesh_FaceAttribute : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_BRepMesh_FaceAttribute();
		%feature("autodoc", "1");
		Handle_BRepMesh_FaceAttribute(const Handle_BRepMesh_FaceAttribute &aHandle);
		%feature("autodoc", "1");
		Handle_BRepMesh_FaceAttribute(const BRepMesh_FaceAttribute *anItem);
		%feature("autodoc", "1");
		Handle_BRepMesh_FaceAttribute & operator=(const Handle_BRepMesh_FaceAttribute &aHandle);
		%feature("autodoc", "1");
		Handle_BRepMesh_FaceAttribute & operator=(const BRepMesh_FaceAttribute *anItem);
		%feature("autodoc", "1");
		static		Handle_BRepMesh_FaceAttribute DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepMesh_FaceAttribute {
	BRepMesh_FaceAttribute* GetObject() {
	return (BRepMesh_FaceAttribute*)$self->Access();
	}
};
%feature("shadow") Handle_BRepMesh_FaceAttribute::~Handle_BRepMesh_FaceAttribute %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BRepMesh_FaceAttribute {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BRepMesh_FastDiscret;
class Handle_BRepMesh_FastDiscret : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_BRepMesh_FastDiscret();
		%feature("autodoc", "1");
		Handle_BRepMesh_FastDiscret(const Handle_BRepMesh_FastDiscret &aHandle);
		%feature("autodoc", "1");
		Handle_BRepMesh_FastDiscret(const BRepMesh_FastDiscret *anItem);
		%feature("autodoc", "1");
		Handle_BRepMesh_FastDiscret & operator=(const Handle_BRepMesh_FastDiscret &aHandle);
		%feature("autodoc", "1");
		Handle_BRepMesh_FastDiscret & operator=(const BRepMesh_FastDiscret *anItem);
		%feature("autodoc", "1");
		static		Handle_BRepMesh_FastDiscret DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepMesh_FastDiscret {
	BRepMesh_FastDiscret* GetObject() {
	return (BRepMesh_FastDiscret*)$self->Access();
	}
};
%feature("shadow") Handle_BRepMesh_FastDiscret::~Handle_BRepMesh_FastDiscret %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BRepMesh_FastDiscret {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BRepMesh_DataStructureOfDelaun;
class Handle_BRepMesh_DataStructureOfDelaun : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_BRepMesh_DataStructureOfDelaun();
		%feature("autodoc", "1");
		Handle_BRepMesh_DataStructureOfDelaun(const Handle_BRepMesh_DataStructureOfDelaun &aHandle);
		%feature("autodoc", "1");
		Handle_BRepMesh_DataStructureOfDelaun(const BRepMesh_DataStructureOfDelaun *anItem);
		%feature("autodoc", "1");
		Handle_BRepMesh_DataStructureOfDelaun & operator=(const Handle_BRepMesh_DataStructureOfDelaun &aHandle);
		%feature("autodoc", "1");
		Handle_BRepMesh_DataStructureOfDelaun & operator=(const BRepMesh_DataStructureOfDelaun *anItem);
		%feature("autodoc", "1");
		static		Handle_BRepMesh_DataStructureOfDelaun DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepMesh_DataStructureOfDelaun {
	BRepMesh_DataStructureOfDelaun* GetObject() {
	return (BRepMesh_DataStructureOfDelaun*)$self->Access();
	}
};
%feature("shadow") Handle_BRepMesh_DataStructureOfDelaun::~Handle_BRepMesh_DataStructureOfDelaun %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BRepMesh_DataStructureOfDelaun {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BRepMesh_DataMapNodeOfDataMapOfShapePairOfPolygon;
class Handle_BRepMesh_DataMapNodeOfDataMapOfShapePairOfPolygon : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_BRepMesh_DataMapNodeOfDataMapOfShapePairOfPolygon();
		%feature("autodoc", "1");
		Handle_BRepMesh_DataMapNodeOfDataMapOfShapePairOfPolygon(const Handle_BRepMesh_DataMapNodeOfDataMapOfShapePairOfPolygon &aHandle);
		%feature("autodoc", "1");
		Handle_BRepMesh_DataMapNodeOfDataMapOfShapePairOfPolygon(const BRepMesh_DataMapNodeOfDataMapOfShapePairOfPolygon *anItem);
		%feature("autodoc", "1");
		Handle_BRepMesh_DataMapNodeOfDataMapOfShapePairOfPolygon & operator=(const Handle_BRepMesh_DataMapNodeOfDataMapOfShapePairOfPolygon &aHandle);
		%feature("autodoc", "1");
		Handle_BRepMesh_DataMapNodeOfDataMapOfShapePairOfPolygon & operator=(const BRepMesh_DataMapNodeOfDataMapOfShapePairOfPolygon *anItem);
		%feature("autodoc", "1");
		static		Handle_BRepMesh_DataMapNodeOfDataMapOfShapePairOfPolygon DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepMesh_DataMapNodeOfDataMapOfShapePairOfPolygon {
	BRepMesh_DataMapNodeOfDataMapOfShapePairOfPolygon* GetObject() {
	return (BRepMesh_DataMapNodeOfDataMapOfShapePairOfPolygon*)$self->Access();
	}
};
%feature("shadow") Handle_BRepMesh_DataMapNodeOfDataMapOfShapePairOfPolygon::~Handle_BRepMesh_DataMapNodeOfDataMapOfShapePairOfPolygon %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BRepMesh_DataMapNodeOfDataMapOfShapePairOfPolygon {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BRepMesh_FastDiscretFace;
class Handle_BRepMesh_FastDiscretFace : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_BRepMesh_FastDiscretFace();
		%feature("autodoc", "1");
		Handle_BRepMesh_FastDiscretFace(const Handle_BRepMesh_FastDiscretFace &aHandle);
		%feature("autodoc", "1");
		Handle_BRepMesh_FastDiscretFace(const BRepMesh_FastDiscretFace *anItem);
		%feature("autodoc", "1");
		Handle_BRepMesh_FastDiscretFace & operator=(const Handle_BRepMesh_FastDiscretFace &aHandle);
		%feature("autodoc", "1");
		Handle_BRepMesh_FastDiscretFace & operator=(const BRepMesh_FastDiscretFace *anItem);
		%feature("autodoc", "1");
		static		Handle_BRepMesh_FastDiscretFace DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepMesh_FastDiscretFace {
	BRepMesh_FastDiscretFace* GetObject() {
	return (BRepMesh_FastDiscretFace*)$self->Access();
	}
};
%feature("shadow") Handle_BRepMesh_FastDiscretFace::~Handle_BRepMesh_FastDiscretFace %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BRepMesh_FastDiscretFace {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BRepMesh_DataMapNodeOfDataMapOfVertexInteger;
class Handle_BRepMesh_DataMapNodeOfDataMapOfVertexInteger : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_BRepMesh_DataMapNodeOfDataMapOfVertexInteger();
		%feature("autodoc", "1");
		Handle_BRepMesh_DataMapNodeOfDataMapOfVertexInteger(const Handle_BRepMesh_DataMapNodeOfDataMapOfVertexInteger &aHandle);
		%feature("autodoc", "1");
		Handle_BRepMesh_DataMapNodeOfDataMapOfVertexInteger(const BRepMesh_DataMapNodeOfDataMapOfVertexInteger *anItem);
		%feature("autodoc", "1");
		Handle_BRepMesh_DataMapNodeOfDataMapOfVertexInteger & operator=(const Handle_BRepMesh_DataMapNodeOfDataMapOfVertexInteger &aHandle);
		%feature("autodoc", "1");
		Handle_BRepMesh_DataMapNodeOfDataMapOfVertexInteger & operator=(const BRepMesh_DataMapNodeOfDataMapOfVertexInteger *anItem);
		%feature("autodoc", "1");
		static		Handle_BRepMesh_DataMapNodeOfDataMapOfVertexInteger DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepMesh_DataMapNodeOfDataMapOfVertexInteger {
	BRepMesh_DataMapNodeOfDataMapOfVertexInteger* GetObject() {
	return (BRepMesh_DataMapNodeOfDataMapOfVertexInteger*)$self->Access();
	}
};
%feature("shadow") Handle_BRepMesh_DataMapNodeOfDataMapOfVertexInteger::~Handle_BRepMesh_DataMapNodeOfDataMapOfVertexInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BRepMesh_DataMapNodeOfDataMapOfVertexInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BRepMesh_ListNodeOfListOfVertex;
class Handle_BRepMesh_ListNodeOfListOfVertex : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_BRepMesh_ListNodeOfListOfVertex();
		%feature("autodoc", "1");
		Handle_BRepMesh_ListNodeOfListOfVertex(const Handle_BRepMesh_ListNodeOfListOfVertex &aHandle);
		%feature("autodoc", "1");
		Handle_BRepMesh_ListNodeOfListOfVertex(const BRepMesh_ListNodeOfListOfVertex *anItem);
		%feature("autodoc", "1");
		Handle_BRepMesh_ListNodeOfListOfVertex & operator=(const Handle_BRepMesh_ListNodeOfListOfVertex &aHandle);
		%feature("autodoc", "1");
		Handle_BRepMesh_ListNodeOfListOfVertex & operator=(const BRepMesh_ListNodeOfListOfVertex *anItem);
		%feature("autodoc", "1");
		static		Handle_BRepMesh_ListNodeOfListOfVertex DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepMesh_ListNodeOfListOfVertex {
	BRepMesh_ListNodeOfListOfVertex* GetObject() {
	return (BRepMesh_ListNodeOfListOfVertex*)$self->Access();
	}
};
%feature("shadow") Handle_BRepMesh_ListNodeOfListOfVertex::~Handle_BRepMesh_ListNodeOfListOfVertex %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BRepMesh_ListNodeOfListOfVertex {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BRepMesh_DataMapNodeOfDataMapOfIntegerPnt;
class Handle_BRepMesh_DataMapNodeOfDataMapOfIntegerPnt : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_BRepMesh_DataMapNodeOfDataMapOfIntegerPnt();
		%feature("autodoc", "1");
		Handle_BRepMesh_DataMapNodeOfDataMapOfIntegerPnt(const Handle_BRepMesh_DataMapNodeOfDataMapOfIntegerPnt &aHandle);
		%feature("autodoc", "1");
		Handle_BRepMesh_DataMapNodeOfDataMapOfIntegerPnt(const BRepMesh_DataMapNodeOfDataMapOfIntegerPnt *anItem);
		%feature("autodoc", "1");
		Handle_BRepMesh_DataMapNodeOfDataMapOfIntegerPnt & operator=(const Handle_BRepMesh_DataMapNodeOfDataMapOfIntegerPnt &aHandle);
		%feature("autodoc", "1");
		Handle_BRepMesh_DataMapNodeOfDataMapOfIntegerPnt & operator=(const BRepMesh_DataMapNodeOfDataMapOfIntegerPnt *anItem);
		%feature("autodoc", "1");
		static		Handle_BRepMesh_DataMapNodeOfDataMapOfIntegerPnt DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepMesh_DataMapNodeOfDataMapOfIntegerPnt {
	BRepMesh_DataMapNodeOfDataMapOfIntegerPnt* GetObject() {
	return (BRepMesh_DataMapNodeOfDataMapOfIntegerPnt*)$self->Access();
	}
};
%feature("shadow") Handle_BRepMesh_DataMapNodeOfDataMapOfIntegerPnt::~Handle_BRepMesh_DataMapNodeOfDataMapOfIntegerPnt %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BRepMesh_DataMapNodeOfDataMapOfIntegerPnt {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BRepMesh_DataMapNodeOfDataMapOfFaceAttribute;
class Handle_BRepMesh_DataMapNodeOfDataMapOfFaceAttribute : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_BRepMesh_DataMapNodeOfDataMapOfFaceAttribute();
		%feature("autodoc", "1");
		Handle_BRepMesh_DataMapNodeOfDataMapOfFaceAttribute(const Handle_BRepMesh_DataMapNodeOfDataMapOfFaceAttribute &aHandle);
		%feature("autodoc", "1");
		Handle_BRepMesh_DataMapNodeOfDataMapOfFaceAttribute(const BRepMesh_DataMapNodeOfDataMapOfFaceAttribute *anItem);
		%feature("autodoc", "1");
		Handle_BRepMesh_DataMapNodeOfDataMapOfFaceAttribute & operator=(const Handle_BRepMesh_DataMapNodeOfDataMapOfFaceAttribute &aHandle);
		%feature("autodoc", "1");
		Handle_BRepMesh_DataMapNodeOfDataMapOfFaceAttribute & operator=(const BRepMesh_DataMapNodeOfDataMapOfFaceAttribute *anItem);
		%feature("autodoc", "1");
		static		Handle_BRepMesh_DataMapNodeOfDataMapOfFaceAttribute DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepMesh_DataMapNodeOfDataMapOfFaceAttribute {
	BRepMesh_DataMapNodeOfDataMapOfFaceAttribute* GetObject() {
	return (BRepMesh_DataMapNodeOfDataMapOfFaceAttribute*)$self->Access();
	}
};
%feature("shadow") Handle_BRepMesh_DataMapNodeOfDataMapOfFaceAttribute::~Handle_BRepMesh_DataMapNodeOfDataMapOfFaceAttribute %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BRepMesh_DataMapNodeOfDataMapOfFaceAttribute {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BRepMesh_IndexedDataMapNodeOfIDMapOfLinkOfDataStructureOfDelaun;
class Handle_BRepMesh_IndexedDataMapNodeOfIDMapOfLinkOfDataStructureOfDelaun : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_BRepMesh_IndexedDataMapNodeOfIDMapOfLinkOfDataStructureOfDelaun();
		%feature("autodoc", "1");
		Handle_BRepMesh_IndexedDataMapNodeOfIDMapOfLinkOfDataStructureOfDelaun(const Handle_BRepMesh_IndexedDataMapNodeOfIDMapOfLinkOfDataStructureOfDelaun &aHandle);
		%feature("autodoc", "1");
		Handle_BRepMesh_IndexedDataMapNodeOfIDMapOfLinkOfDataStructureOfDelaun(const BRepMesh_IndexedDataMapNodeOfIDMapOfLinkOfDataStructureOfDelaun *anItem);
		%feature("autodoc", "1");
		Handle_BRepMesh_IndexedDataMapNodeOfIDMapOfLinkOfDataStructureOfDelaun & operator=(const Handle_BRepMesh_IndexedDataMapNodeOfIDMapOfLinkOfDataStructureOfDelaun &aHandle);
		%feature("autodoc", "1");
		Handle_BRepMesh_IndexedDataMapNodeOfIDMapOfLinkOfDataStructureOfDelaun & operator=(const BRepMesh_IndexedDataMapNodeOfIDMapOfLinkOfDataStructureOfDelaun *anItem);
		%feature("autodoc", "1");
		static		Handle_BRepMesh_IndexedDataMapNodeOfIDMapOfLinkOfDataStructureOfDelaun DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepMesh_IndexedDataMapNodeOfIDMapOfLinkOfDataStructureOfDelaun {
	BRepMesh_IndexedDataMapNodeOfIDMapOfLinkOfDataStructureOfDelaun* GetObject() {
	return (BRepMesh_IndexedDataMapNodeOfIDMapOfLinkOfDataStructureOfDelaun*)$self->Access();
	}
};
%feature("shadow") Handle_BRepMesh_IndexedDataMapNodeOfIDMapOfLinkOfDataStructureOfDelaun::~Handle_BRepMesh_IndexedDataMapNodeOfIDMapOfLinkOfDataStructureOfDelaun %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BRepMesh_IndexedDataMapNodeOfIDMapOfLinkOfDataStructureOfDelaun {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BRepMesh_IndexedMapNodeOfIndexedMapOfVertex;
class Handle_BRepMesh_IndexedMapNodeOfIndexedMapOfVertex : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_BRepMesh_IndexedMapNodeOfIndexedMapOfVertex();
		%feature("autodoc", "1");
		Handle_BRepMesh_IndexedMapNodeOfIndexedMapOfVertex(const Handle_BRepMesh_IndexedMapNodeOfIndexedMapOfVertex &aHandle);
		%feature("autodoc", "1");
		Handle_BRepMesh_IndexedMapNodeOfIndexedMapOfVertex(const BRepMesh_IndexedMapNodeOfIndexedMapOfVertex *anItem);
		%feature("autodoc", "1");
		Handle_BRepMesh_IndexedMapNodeOfIndexedMapOfVertex & operator=(const Handle_BRepMesh_IndexedMapNodeOfIndexedMapOfVertex &aHandle);
		%feature("autodoc", "1");
		Handle_BRepMesh_IndexedMapNodeOfIndexedMapOfVertex & operator=(const BRepMesh_IndexedMapNodeOfIndexedMapOfVertex *anItem);
		%feature("autodoc", "1");
		static		Handle_BRepMesh_IndexedMapNodeOfIndexedMapOfVertex DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepMesh_IndexedMapNodeOfIndexedMapOfVertex {
	BRepMesh_IndexedMapNodeOfIndexedMapOfVertex* GetObject() {
	return (BRepMesh_IndexedMapNodeOfIndexedMapOfVertex*)$self->Access();
	}
};
%feature("shadow") Handle_BRepMesh_IndexedMapNodeOfIndexedMapOfVertex::~Handle_BRepMesh_IndexedMapNodeOfIndexedMapOfVertex %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BRepMesh_IndexedMapNodeOfIndexedMapOfVertex {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BRepMesh_ListNodeOfListOfXY;
class Handle_BRepMesh_ListNodeOfListOfXY : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_BRepMesh_ListNodeOfListOfXY();
		%feature("autodoc", "1");
		Handle_BRepMesh_ListNodeOfListOfXY(const Handle_BRepMesh_ListNodeOfListOfXY &aHandle);
		%feature("autodoc", "1");
		Handle_BRepMesh_ListNodeOfListOfXY(const BRepMesh_ListNodeOfListOfXY *anItem);
		%feature("autodoc", "1");
		Handle_BRepMesh_ListNodeOfListOfXY & operator=(const Handle_BRepMesh_ListNodeOfListOfXY &aHandle);
		%feature("autodoc", "1");
		Handle_BRepMesh_ListNodeOfListOfXY & operator=(const BRepMesh_ListNodeOfListOfXY *anItem);
		%feature("autodoc", "1");
		static		Handle_BRepMesh_ListNodeOfListOfXY DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepMesh_ListNodeOfListOfXY {
	BRepMesh_ListNodeOfListOfXY* GetObject() {
	return (BRepMesh_ListNodeOfListOfXY*)$self->Access();
	}
};
%feature("shadow") Handle_BRepMesh_ListNodeOfListOfXY::~Handle_BRepMesh_ListNodeOfListOfXY %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BRepMesh_ListNodeOfListOfXY {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BRepMesh_IndexedDataMapNodeOfIDMapOfNodeOfDataStructureOfDelaun;
class Handle_BRepMesh_IndexedDataMapNodeOfIDMapOfNodeOfDataStructureOfDelaun : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_BRepMesh_IndexedDataMapNodeOfIDMapOfNodeOfDataStructureOfDelaun();
		%feature("autodoc", "1");
		Handle_BRepMesh_IndexedDataMapNodeOfIDMapOfNodeOfDataStructureOfDelaun(const Handle_BRepMesh_IndexedDataMapNodeOfIDMapOfNodeOfDataStructureOfDelaun &aHandle);
		%feature("autodoc", "1");
		Handle_BRepMesh_IndexedDataMapNodeOfIDMapOfNodeOfDataStructureOfDelaun(const BRepMesh_IndexedDataMapNodeOfIDMapOfNodeOfDataStructureOfDelaun *anItem);
		%feature("autodoc", "1");
		Handle_BRepMesh_IndexedDataMapNodeOfIDMapOfNodeOfDataStructureOfDelaun & operator=(const Handle_BRepMesh_IndexedDataMapNodeOfIDMapOfNodeOfDataStructureOfDelaun &aHandle);
		%feature("autodoc", "1");
		Handle_BRepMesh_IndexedDataMapNodeOfIDMapOfNodeOfDataStructureOfDelaun & operator=(const BRepMesh_IndexedDataMapNodeOfIDMapOfNodeOfDataStructureOfDelaun *anItem);
		%feature("autodoc", "1");
		static		Handle_BRepMesh_IndexedDataMapNodeOfIDMapOfNodeOfDataStructureOfDelaun DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepMesh_IndexedDataMapNodeOfIDMapOfNodeOfDataStructureOfDelaun {
	BRepMesh_IndexedDataMapNodeOfIDMapOfNodeOfDataStructureOfDelaun* GetObject() {
	return (BRepMesh_IndexedDataMapNodeOfIDMapOfNodeOfDataStructureOfDelaun*)$self->Access();
	}
};
%feature("shadow") Handle_BRepMesh_IndexedDataMapNodeOfIDMapOfNodeOfDataStructureOfDelaun::~Handle_BRepMesh_IndexedDataMapNodeOfIDMapOfNodeOfDataStructureOfDelaun %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BRepMesh_IndexedDataMapNodeOfIDMapOfNodeOfDataStructureOfDelaun {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BRepMesh_DataMapNodeOfDataMapOfShapeReal;
class Handle_BRepMesh_DataMapNodeOfDataMapOfShapeReal : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_BRepMesh_DataMapNodeOfDataMapOfShapeReal();
		%feature("autodoc", "1");
		Handle_BRepMesh_DataMapNodeOfDataMapOfShapeReal(const Handle_BRepMesh_DataMapNodeOfDataMapOfShapeReal &aHandle);
		%feature("autodoc", "1");
		Handle_BRepMesh_DataMapNodeOfDataMapOfShapeReal(const BRepMesh_DataMapNodeOfDataMapOfShapeReal *anItem);
		%feature("autodoc", "1");
		Handle_BRepMesh_DataMapNodeOfDataMapOfShapeReal & operator=(const Handle_BRepMesh_DataMapNodeOfDataMapOfShapeReal &aHandle);
		%feature("autodoc", "1");
		Handle_BRepMesh_DataMapNodeOfDataMapOfShapeReal & operator=(const BRepMesh_DataMapNodeOfDataMapOfShapeReal *anItem);
		%feature("autodoc", "1");
		static		Handle_BRepMesh_DataMapNodeOfDataMapOfShapeReal DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepMesh_DataMapNodeOfDataMapOfShapeReal {
	BRepMesh_DataMapNodeOfDataMapOfShapeReal* GetObject() {
	return (BRepMesh_DataMapNodeOfDataMapOfShapeReal*)$self->Access();
	}
};
%feature("shadow") Handle_BRepMesh_DataMapNodeOfDataMapOfShapeReal::~Handle_BRepMesh_DataMapNodeOfDataMapOfShapeReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BRepMesh_DataMapNodeOfDataMapOfShapeReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepMesh_DataStructureOfDelaun;
class BRepMesh_DataStructureOfDelaun : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		BRepMesh_DataStructureOfDelaun(const BRepMesh_BaseAllocator &theAllocator, const Standard_Integer NodeNumber=100);
		%feature("autodoc", "1");
		Standard_Integer AddNode(const BRepMesh_Vertex &theNode);
		%feature("autodoc", "1");
		const BRepMesh_Vertex & GetNode(const Standard_Integer Index);
		%feature("autodoc", "1");
		const BRepMesh_Vertex & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		const BRepMesh_ListOfInteger & GetNodeList(const Standard_Integer Index);
		%feature("autodoc", "1");
		void ForceRemoveNode(const Standard_Integer Index);
		%feature("autodoc", "1");
		void ForceRemoveLink(const Standard_Integer Index);
		%feature("autodoc", "1");
		void ReplaceNodes(const BRepMesh_IDMapOfNodeOfDataStructureOfDelaun &NewNodes);
		%feature("autodoc", "1");
		void RemoveNode(const Standard_Integer Index);
		%feature("autodoc", "1");
		Standard_Boolean MoveNode(const Standard_Integer Index, const BRepMesh_Vertex &newNode);
		%feature("autodoc", "1");
		Standard_Integer NbNodes() const;
		%feature("autodoc", "1");
		Standard_Integer AddLink(const BRepMesh_Edge &theLink);
		%feature("autodoc", "1");
		const BRepMesh_Edge & GetLink(const Standard_Integer Index);
		%feature("autodoc", "1");
		void RemoveLink(const Standard_Integer Index);
		%feature("autodoc", "1");
		Standard_Boolean SubstituteLink(const Standard_Integer Index, const BRepMesh_Edge &newLink);
		%feature("autodoc", "1");
		Standard_Integer NbLinks() const;
		%feature("autodoc", "1");
		Standard_Integer AddElement(const BRepMesh_Triangle &theElement);
		%feature("autodoc", "1");
		const BRepMesh_Triangle & GetElement(const Standard_Integer Index);
		%feature("autodoc", "1");
		void RemoveElement(const Standard_Integer Index);
		%feature("autodoc", "1");
		Standard_Boolean SubstituteElement(const Standard_Integer Index, const BRepMesh_Triangle &newElement);
		%feature("autodoc", "1");
		Standard_Integer NbElements() const;
		%feature("autodoc", "1");
		void ClearDomain();
		%feature("autodoc", "1");
		Standard_Integer IndexOf(const BRepMesh_Vertex &aNode) const;
		%feature("autodoc", "1");
		Standard_Integer IndexOf(const BRepMesh_Edge &aLink) const;
		%feature("autodoc", "1");
		Standard_Integer IndexOf(const BRepMesh_Triangle &anElement) const;
		%feature("autodoc", "1");
		const BRepMesh_ListOfInteger & LinkNeighboursOf(const Standard_Integer theNode) const;
		%feature("autodoc", "1");
		const BRepMesh_PairOfIndex & ElemConnectedTo(const Standard_Integer theLink) const;
		%feature("autodoc", "1");
		const BRepMesh_MapOfInteger & ElemOfDomain() const;
		%feature("autodoc", "1");
		const BRepMesh_MapOfInteger & LinkOfDomain() const;
		%feature("autodoc", "1");
		void ClearDeleted();
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string StatisticsToString() {
			std::stringstream s;
			self->Statistics(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		const BRepMesh_BaseAllocator & Allocator() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepMesh_DataStructureOfDelaun {
	Handle_BRepMesh_DataStructureOfDelaun GetHandle() {
	return *(Handle_BRepMesh_DataStructureOfDelaun*) &$self;
	}
};
%extend BRepMesh_DataStructureOfDelaun {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") BRepMesh_DataStructureOfDelaun::~BRepMesh_DataStructureOfDelaun %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepMesh_DataStructureOfDelaun {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepMesh_IndexedMapOfVertex;
class BRepMesh_IndexedMapOfVertex : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		BRepMesh_IndexedMapOfVertex(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		BRepMesh_IndexedMapOfVertex & Assign(const BRepMesh_IndexedMapOfVertex &Other);
		%feature("autodoc", "1");
		BRepMesh_IndexedMapOfVertex & operator=(const BRepMesh_IndexedMapOfVertex &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer Add(const BRepMesh_Vertex &K);
		%feature("autodoc", "1");
		void Substitute(const Standard_Integer I, const BRepMesh_Vertex &K);
		%feature("autodoc", "1");
		void RemoveLast();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const BRepMesh_Vertex &K) const;
		%feature("autodoc", "1");
		const BRepMesh_Vertex & FindKey(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const BRepMesh_Vertex & operator()(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Standard_Integer FindIndex(const BRepMesh_Vertex &K) const;

};
%feature("shadow") BRepMesh_IndexedMapOfVertex::~BRepMesh_IndexedMapOfVertex %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepMesh_IndexedMapOfVertex {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepMesh_DataMapIteratorOfDataMapOfVertexInteger;
class BRepMesh_DataMapIteratorOfDataMapOfVertexInteger : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		BRepMesh_DataMapIteratorOfDataMapOfVertexInteger();
		%feature("autodoc", "1");
		BRepMesh_DataMapIteratorOfDataMapOfVertexInteger(const BRepMesh_DataMapOfVertexInteger &aMap);
		%feature("autodoc", "1");
		void Initialize(const BRepMesh_DataMapOfVertexInteger &aMap);
		%feature("autodoc", "1");
		const TopoDS_Vertex  Key() const;
		%feature("autodoc", "1");
		const Standard_Integer & Value() const;

};
%feature("shadow") BRepMesh_DataMapIteratorOfDataMapOfVertexInteger::~BRepMesh_DataMapIteratorOfDataMapOfVertexInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepMesh_DataMapIteratorOfDataMapOfVertexInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepMesh_DataMapIteratorOfDataMapOfShapePairOfPolygon;
class BRepMesh_DataMapIteratorOfDataMapOfShapePairOfPolygon : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		BRepMesh_DataMapIteratorOfDataMapOfShapePairOfPolygon();
		%feature("autodoc", "1");
		BRepMesh_DataMapIteratorOfDataMapOfShapePairOfPolygon(const BRepMesh_DataMapOfShapePairOfPolygon &aMap);
		%feature("autodoc", "1");
		void Initialize(const BRepMesh_DataMapOfShapePairOfPolygon &aMap);
		%feature("autodoc", "1");
		const TopoDS_Shape  Key() const;
		%feature("autodoc", "1");
		const BRepMesh_PairOfPolygon & Value() const;

};
%feature("shadow") BRepMesh_DataMapIteratorOfDataMapOfShapePairOfPolygon::~BRepMesh_DataMapIteratorOfDataMapOfShapePairOfPolygon %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepMesh_DataMapIteratorOfDataMapOfShapePairOfPolygon {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepMesh_DataMapIteratorOfDataMapOfIntegerListOfXY;
class BRepMesh_DataMapIteratorOfDataMapOfIntegerListOfXY : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		BRepMesh_DataMapIteratorOfDataMapOfIntegerListOfXY();
		%feature("autodoc", "1");
		BRepMesh_DataMapIteratorOfDataMapOfIntegerListOfXY(const BRepMesh_DataMapOfIntegerListOfXY &aMap);
		%feature("autodoc", "1");
		void Initialize(const BRepMesh_DataMapOfIntegerListOfXY &aMap);
		%feature("autodoc", "1");
		const Standard_Integer & Key() const;
		%feature("autodoc", "1");
		const BRepMesh_ListOfXY & Value() const;

};
%feature("shadow") BRepMesh_DataMapIteratorOfDataMapOfIntegerListOfXY::~BRepMesh_DataMapIteratorOfDataMapOfIntegerListOfXY %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepMesh_DataMapIteratorOfDataMapOfIntegerListOfXY {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepMesh_HeapSortIndexedVertexOfDelaun;
class BRepMesh_HeapSortIndexedVertexOfDelaun {
	public:
		%feature("autodoc", "1");
		BRepMesh_HeapSortIndexedVertexOfDelaun();
		%feature("autodoc", "1");
		static		void Sort(TColStd_Array1OfInteger & TheArray, const BRepMesh_ComparatorOfIndexedVertexOfDelaun &Comp);

};
%feature("shadow") BRepMesh_HeapSortIndexedVertexOfDelaun::~BRepMesh_HeapSortIndexedVertexOfDelaun %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepMesh_HeapSortIndexedVertexOfDelaun {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepMesh_BiPoint;
class BRepMesh_BiPoint {
	public:
		%feature("autodoc", "1");
		BRepMesh_BiPoint();
		%feature("autodoc", "1");
		BRepMesh_BiPoint(const Standard_Real X1, const Standard_Real Y1, const Standard_Real X2, const Standard_Real Y2);
		%feature("autodoc", "1");
		Standard_Address Indices() const;
		%feature("autodoc", "1");
		Standard_Address Coordinates() const;

};
%feature("shadow") BRepMesh_BiPoint::~BRepMesh_BiPoint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepMesh_BiPoint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepMesh_HArray1OfVertexOfDelaun;
class BRepMesh_HArray1OfVertexOfDelaun : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		BRepMesh_HArray1OfVertexOfDelaun(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		BRepMesh_HArray1OfVertexOfDelaun(const Standard_Integer Low, const Standard_Integer Up, const BRepMesh_Vertex &V);
		%feature("autodoc", "1");
		void Init(const BRepMesh_Vertex &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const BRepMesh_Vertex &Value);
		%feature("autodoc", "1");
		const BRepMesh_Vertex & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		BRepMesh_Vertex & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const BRepMesh_Array1OfVertexOfDelaun & Array1() const;
		%feature("autodoc", "1");
		BRepMesh_Array1OfVertexOfDelaun & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepMesh_HArray1OfVertexOfDelaun {
	Handle_BRepMesh_HArray1OfVertexOfDelaun GetHandle() {
	return *(Handle_BRepMesh_HArray1OfVertexOfDelaun*) &$self;
	}
};
%extend BRepMesh_HArray1OfVertexOfDelaun {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") BRepMesh_HArray1OfVertexOfDelaun::~BRepMesh_HArray1OfVertexOfDelaun %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepMesh_HArray1OfVertexOfDelaun {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepMesh_ListOfXY;
class BRepMesh_ListOfXY {
	public:
		%feature("autodoc", "1");
		BRepMesh_ListOfXY();
		%feature("autodoc", "1");
		void Assign(const BRepMesh_ListOfXY &Other);
		%feature("autodoc", "1");
		void operator=(const BRepMesh_ListOfXY &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const gp_XY I);
		%feature("autodoc", "1");
		void Prepend(const gp_XY I, BRepMesh_ListIteratorOfListOfXY & theIt);
		%feature("autodoc", "1");
		void Prepend(BRepMesh_ListOfXY & Other);
		%feature("autodoc", "1");
		void Append(const gp_XY I);
		%feature("autodoc", "1");
		void Append(const gp_XY I, BRepMesh_ListIteratorOfListOfXY & theIt);
		%feature("autodoc", "1");
		void Append(BRepMesh_ListOfXY & Other);
		%feature("autodoc", "1");
		gp_XY  First() const;
		%feature("autodoc", "1");
		gp_XY  Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(BRepMesh_ListIteratorOfListOfXY & It);
		%feature("autodoc", "1");
		void InsertBefore(const gp_XY I, BRepMesh_ListIteratorOfListOfXY & It);
		%feature("autodoc", "1");
		void InsertBefore(BRepMesh_ListOfXY & Other, BRepMesh_ListIteratorOfListOfXY & It);
		%feature("autodoc", "1");
		void InsertAfter(const gp_XY I, BRepMesh_ListIteratorOfListOfXY & It);
		%feature("autodoc", "1");
		void InsertAfter(BRepMesh_ListOfXY & Other, BRepMesh_ListIteratorOfListOfXY & It);

};
%feature("shadow") BRepMesh_ListOfXY::~BRepMesh_ListOfXY %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepMesh_ListOfXY {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepMesh;
class BRepMesh {
	public:
		%feature("autodoc", "1");
		BRepMesh();
		%feature("autodoc", "1");
		static		void Mesh(const TopoDS_Shape S, const Standard_Real d);

};
%feature("shadow") BRepMesh::~BRepMesh %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepMesh {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepMesh_IMapOfElementOfDataStructureOfDelaun;
class BRepMesh_IMapOfElementOfDataStructureOfDelaun : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		BRepMesh_IMapOfElementOfDataStructureOfDelaun(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		BRepMesh_IMapOfElementOfDataStructureOfDelaun & Assign(const BRepMesh_IMapOfElementOfDataStructureOfDelaun &Other);
		%feature("autodoc", "1");
		BRepMesh_IMapOfElementOfDataStructureOfDelaun & operator=(const BRepMesh_IMapOfElementOfDataStructureOfDelaun &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer Add(const BRepMesh_Triangle &K);
		%feature("autodoc", "1");
		void Substitute(const Standard_Integer I, const BRepMesh_Triangle &K);
		%feature("autodoc", "1");
		void RemoveLast();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const BRepMesh_Triangle &K) const;
		%feature("autodoc", "1");
		const BRepMesh_Triangle & FindKey(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const BRepMesh_Triangle & operator()(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Standard_Integer FindIndex(const BRepMesh_Triangle &K) const;

};
%feature("shadow") BRepMesh_IMapOfElementOfDataStructureOfDelaun::~BRepMesh_IMapOfElementOfDataStructureOfDelaun %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepMesh_IMapOfElementOfDataStructureOfDelaun {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepMesh_CircleTool;
class BRepMesh_CircleTool {
	public:
		%feature("autodoc", "1");
		BRepMesh_CircleTool(const BRepMesh_BaseAllocator &theAlloc);
		%feature("autodoc", "1");
		BRepMesh_CircleTool(const Standard_Integer numberOfComponents, const BRepMesh_BaseAllocator &theAlloc);
		%feature("autodoc", "1");
		void Initialize(const Standard_Integer numberOfComponents);
		%feature("autodoc", "1");
		void SetCellSize(const Standard_Real theSize);
		%feature("autodoc", "1");
		void SetCellSize(const Standard_Real theXSize, const Standard_Real theYSize);
		%feature("autodoc", "1");
		void SetMinMaxSize(const gp_XY theMin, const gp_XY theMax);
		%feature("autodoc", "1");
		void Add(const gp_Circ2d theCirc, const Standard_Integer theIndex);
		%feature("autodoc", "1");
		Standard_Boolean Add(const gp_XY p1, const gp_XY p2, const gp_XY p3, const Standard_Integer theIndex);
		%feature("autodoc", "1");
		void MocAdd(const Standard_Integer theIndex);
		%feature("autodoc", "1");
		void Delete(const Standard_Integer theIndex);
		%feature("autodoc", "1");
		BRepMesh_ListOfInteger & Select(const gp_XY thePnt);

};
%feature("shadow") BRepMesh_CircleTool::~BRepMesh_CircleTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepMesh_CircleTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepMesh_Array1OfBiPoint;
class BRepMesh_Array1OfBiPoint {
	public:
		%feature("autodoc", "1");
		BRepMesh_Array1OfBiPoint(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		BRepMesh_Array1OfBiPoint(const BRepMesh_BiPoint &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const BRepMesh_BiPoint &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const BRepMesh_Array1OfBiPoint & Assign(const BRepMesh_Array1OfBiPoint &Other);
		%feature("autodoc", "1");
		const BRepMesh_Array1OfBiPoint & operator=(const BRepMesh_Array1OfBiPoint &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const BRepMesh_BiPoint &Value);
		%feature("autodoc", "1");
		const BRepMesh_BiPoint & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const BRepMesh_BiPoint & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		BRepMesh_BiPoint & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		BRepMesh_BiPoint & operator()(const Standard_Integer Index);

};
%feature("shadow") BRepMesh_Array1OfBiPoint::~BRepMesh_Array1OfBiPoint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepMesh_Array1OfBiPoint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepMesh_DataMapNodeOfDataMapOfIntegerListOfXY;
class BRepMesh_DataMapNodeOfDataMapOfIntegerListOfXY : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BRepMesh_DataMapNodeOfDataMapOfIntegerListOfXY(const Standard_Integer &K, const BRepMesh_ListOfXY &I, const TCollection_MapNodePtr &n);
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
		BRepMesh_ListOfXY & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepMesh_DataMapNodeOfDataMapOfIntegerListOfXY {
	Handle_BRepMesh_DataMapNodeOfDataMapOfIntegerListOfXY GetHandle() {
	return *(Handle_BRepMesh_DataMapNodeOfDataMapOfIntegerListOfXY*) &$self;
	}
};
%extend BRepMesh_DataMapNodeOfDataMapOfIntegerListOfXY {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") BRepMesh_DataMapNodeOfDataMapOfIntegerListOfXY::~BRepMesh_DataMapNodeOfDataMapOfIntegerListOfXY %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepMesh_DataMapNodeOfDataMapOfIntegerListOfXY {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepMesh_PairOfPolygon;
class BRepMesh_PairOfPolygon {
	public:
		%feature("autodoc", "1");
		BRepMesh_PairOfPolygon();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Prepend(const Handle_Poly_PolygonOnTriangulation &thePoly);
		%feature("autodoc", "1");
		void Append(const Handle_Poly_PolygonOnTriangulation &thePoly);
		%feature("autodoc", "1");
		const Handle_Poly_PolygonOnTriangulation & First() const;
		%feature("autodoc", "1");
		const Handle_Poly_PolygonOnTriangulation & Last() const;

};
%feature("shadow") BRepMesh_PairOfPolygon::~BRepMesh_PairOfPolygon %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepMesh_PairOfPolygon {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepMesh_ListNodeOfListOfVertex;
class BRepMesh_ListNodeOfListOfVertex : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BRepMesh_ListNodeOfListOfVertex(const BRepMesh_Vertex &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		BRepMesh_Vertex & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepMesh_ListNodeOfListOfVertex {
	Handle_BRepMesh_ListNodeOfListOfVertex GetHandle() {
	return *(Handle_BRepMesh_ListNodeOfListOfVertex*) &$self;
	}
};
%extend BRepMesh_ListNodeOfListOfVertex {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") BRepMesh_ListNodeOfListOfVertex::~BRepMesh_ListNodeOfListOfVertex %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepMesh_ListNodeOfListOfVertex {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepMesh_DataMapNodeOfDataMapOfShapeReal;
class BRepMesh_DataMapNodeOfDataMapOfShapeReal : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BRepMesh_DataMapNodeOfDataMapOfShapeReal(const TopoDS_Shape K, const Standard_Real &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Shape  Key() const;
		%feature("autodoc","1");
		%extend {
				Standard_Real GetValue() {
				return (Standard_Real) $self->Value();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetValue(Standard_Real value ) {
				$self->Value()=value;
				}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepMesh_DataMapNodeOfDataMapOfShapeReal {
	Handle_BRepMesh_DataMapNodeOfDataMapOfShapeReal GetHandle() {
	return *(Handle_BRepMesh_DataMapNodeOfDataMapOfShapeReal*) &$self;
	}
};
%extend BRepMesh_DataMapNodeOfDataMapOfShapeReal {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") BRepMesh_DataMapNodeOfDataMapOfShapeReal::~BRepMesh_DataMapNodeOfDataMapOfShapeReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepMesh_DataMapNodeOfDataMapOfShapeReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepMesh_DataMapIteratorOfDataMapOfShapeReal;
class BRepMesh_DataMapIteratorOfDataMapOfShapeReal : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		BRepMesh_DataMapIteratorOfDataMapOfShapeReal();
		%feature("autodoc", "1");
		BRepMesh_DataMapIteratorOfDataMapOfShapeReal(const BRepMesh_DataMapOfShapeReal &aMap);
		%feature("autodoc", "1");
		void Initialize(const BRepMesh_DataMapOfShapeReal &aMap);
		%feature("autodoc", "1");
		const TopoDS_Shape  Key() const;
		%feature("autodoc", "1");
		const Standard_Real & Value() const;

};
%feature("shadow") BRepMesh_DataMapIteratorOfDataMapOfShapeReal::~BRepMesh_DataMapIteratorOfDataMapOfShapeReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepMesh_DataMapIteratorOfDataMapOfShapeReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepMesh_Array1OfVertexOfDelaun;
class BRepMesh_Array1OfVertexOfDelaun {
	public:
		%feature("autodoc", "1");
		BRepMesh_Array1OfVertexOfDelaun(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		BRepMesh_Array1OfVertexOfDelaun(const BRepMesh_Vertex &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const BRepMesh_Vertex &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const BRepMesh_Array1OfVertexOfDelaun & Assign(const BRepMesh_Array1OfVertexOfDelaun &Other);
		%feature("autodoc", "1");
		const BRepMesh_Array1OfVertexOfDelaun & operator=(const BRepMesh_Array1OfVertexOfDelaun &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const BRepMesh_Vertex &Value);
		%feature("autodoc", "1");
		const BRepMesh_Vertex & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const BRepMesh_Vertex & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		BRepMesh_Vertex & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		BRepMesh_Vertex & operator()(const Standard_Integer Index);

};
%feature("shadow") BRepMesh_Array1OfVertexOfDelaun::~BRepMesh_Array1OfVertexOfDelaun %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepMesh_Array1OfVertexOfDelaun {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepMesh_DiscretRoot;
class BRepMesh_DiscretRoot {
	public:
		%feature("autodoc", "1");
		void SetDeflection(const Standard_Real theDeflection);
		%feature("autodoc", "1");
		Standard_Real Deflection() const;
		%feature("autodoc", "1");
		void SetAngle(const Standard_Real theAngle);
		%feature("autodoc", "1");
		Standard_Real Angle() const;
		%feature("autodoc", "1");
		void SetShape(const TopoDS_Shape theShape);
		%feature("autodoc", "1");
		const TopoDS_Shape  Shape() const;
		%feature("autodoc", "1");
		virtual		void Perform();
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;

};
%feature("shadow") BRepMesh_DiscretRoot::~BRepMesh_DiscretRoot %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepMesh_DiscretRoot {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepMesh_Vertex;
class BRepMesh_Vertex {
	public:
		%feature("autodoc", "1");
		BRepMesh_Vertex();
		%feature("autodoc", "1");
		BRepMesh_Vertex(const gp_XY UV, const Standard_Integer Locat3d, const BRepMesh_DegreeOfFreedom Move);
		%feature("autodoc", "1");
		BRepMesh_Vertex(const Standard_Real U, const Standard_Real V, const BRepMesh_DegreeOfFreedom Move);
		%feature("autodoc", "1");
		void Initialize(const gp_XY UV, const Standard_Integer Locat3d, const BRepMesh_DegreeOfFreedom Move);
		%feature("autodoc", "1");
		const gp_XY  Coord() const;
		%feature("autodoc", "1");
		Standard_Integer Location3d() const;
		%feature("autodoc", "1");
		BRepMesh_DegreeOfFreedom Movability() const;
		%feature("autodoc", "1");
		void SetMovability(const BRepMesh_DegreeOfFreedom Move);
		%feature("autodoc", "1");
		Standard_Integer HashCode(const Standard_Integer Upper) const;
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const BRepMesh_Vertex &Other) const;
		%extend{
			bool __eq_wrapper__(const BRepMesh_Vertex &Other) {
				if (*self==Other) return true;
				else return false;
			}
		}
		%pythoncode {
		def __eq__(self,right):
			try:
				return self.__eq_wrapper__(right)
			except:
				return False
		}

};
%extend BRepMesh_Vertex {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") BRepMesh_Vertex::~BRepMesh_Vertex %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepMesh_Vertex {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepMesh_IncrementalMesh;
class BRepMesh_IncrementalMesh : public BRepMesh_DiscretRoot {
	public:
		%feature("autodoc", "1");
		BRepMesh_IncrementalMesh();
		%feature("autodoc", "1");
		BRepMesh_IncrementalMesh(const TopoDS_Shape S, const Standard_Real D, const Standard_Boolean Relatif=0, const Standard_Real Ang=5.0e-1);
		%feature("autodoc", "1");
		void SetRelative(const Standard_Boolean theFlag);
		%feature("autodoc", "1");
		Standard_Boolean Relative() const;
		%feature("autodoc", "1");
		virtual		void Perform();
		%feature("autodoc", "1");
		void Update(const TopoDS_Shape S);
		%feature("autodoc", "1");
		Standard_Boolean IsModified() const;
		%feature("autodoc", "1");
		Standard_Integer GetStatusFlags() const;

};
%feature("shadow") BRepMesh_IncrementalMesh::~BRepMesh_IncrementalMesh %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepMesh_IncrementalMesh {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepMesh_DataMapOfFaceAttribute;
class BRepMesh_DataMapOfFaceAttribute : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		BRepMesh_DataMapOfFaceAttribute(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		BRepMesh_DataMapOfFaceAttribute & Assign(const BRepMesh_DataMapOfFaceAttribute &Other);
		%feature("autodoc", "1");
		BRepMesh_DataMapOfFaceAttribute & operator=(const BRepMesh_DataMapOfFaceAttribute &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TopoDS_Face K, const Handle_BRepMesh_FaceAttribute &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TopoDS_Face K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TopoDS_Face K);
		%feature("autodoc", "1");
		const Handle_BRepMesh_FaceAttribute & Find(const TopoDS_Face K) const;
		%feature("autodoc", "1");
		const Handle_BRepMesh_FaceAttribute & operator()(const TopoDS_Face K) const;
		%feature("autodoc", "1");
		Handle_BRepMesh_FaceAttribute & ChangeFind(const TopoDS_Face K);
		%feature("autodoc", "1");
		Handle_BRepMesh_FaceAttribute & operator()(const TopoDS_Face K);

};
%feature("shadow") BRepMesh_DataMapOfFaceAttribute::~BRepMesh_DataMapOfFaceAttribute %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepMesh_DataMapOfFaceAttribute {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepMesh_ListIteratorOfListOfXY;
class BRepMesh_ListIteratorOfListOfXY {
	public:
		%feature("autodoc", "1");
		BRepMesh_ListIteratorOfListOfXY();
		%feature("autodoc", "1");
		BRepMesh_ListIteratorOfListOfXY(const BRepMesh_ListOfXY &L);
		%feature("autodoc", "1");
		void Initialize(const BRepMesh_ListOfXY &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		gp_XY  Value() const;

};
%feature("shadow") BRepMesh_ListIteratorOfListOfXY::~BRepMesh_ListIteratorOfListOfXY %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepMesh_ListIteratorOfListOfXY {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepMesh_ShapeTool;
class BRepMesh_ShapeTool {
	public:
		%feature("autodoc", "1");
		BRepMesh_ShapeTool();
		%feature("autodoc", "1");
		void Init(const TopoDS_Shape S);
		%feature("autodoc", "1");
		Standard_Boolean MoreFace();
		%feature("autodoc", "1");
		void NextFace();
		%feature("autodoc", "1");
		const TopoDS_Face  CurrentFace();
		%feature("autodoc", "1");
		void Init(const TopoDS_Face F);
		%feature("autodoc", "1");
		Standard_Boolean MoreEdge();
		%feature("autodoc", "1");
		void NextEdge();
		%feature("autodoc", "1");
		const TopoDS_Edge  CurrentEdge();
		%feature("autodoc", "1");
		void Init(const TopoDS_Edge E);
		%feature("autodoc", "1");
		Standard_Boolean MoreInternalVertex();
		%feature("autodoc", "1");
		void NextInternalVertex();
		%feature("autodoc", "1");
		const TopoDS_Vertex  CurrentInternalVertex();
		%feature("autodoc", "1");
		static		TopAbs_Orientation Orientation(const TopoDS_Face F);
		%feature("autodoc", "1");
		static		TopAbs_Orientation Orientation(const TopoDS_Edge E);
		%feature("autodoc", "1");
		static		Bnd_Box Bound(const TopoDS_Face F);
		%feature("autodoc", "1");
		static		Bnd_Box Bound(const TopoDS_Edge E);
		%feature("autodoc", "1");
		static		TopoDS_Vertex FirstVertex(const TopoDS_Edge E);
		%feature("autodoc", "1");
		static		TopoDS_Vertex LastVertex(const TopoDS_Edge E);
		%feature("autodoc", "1");
		static		void Vertices(const TopoDS_Edge E, TopoDS_Vertex & Vfirst, TopoDS_Vertex & Vlast);
		%feature("autodoc","Range(const E, const F) -> [Standard_Real, Standard_Real]");

		static		void Range(const TopoDS_Edge E, const TopoDS_Face F, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		static		void UVPoints(const TopoDS_Edge E, const TopoDS_Face F, gp_Pnt2d & uvFirst, gp_Pnt2d & uvLast);
		%feature("autodoc", "1");
		static		Standard_Boolean Degenerated(const TopoDS_Edge E);
		%feature("autodoc", "1");
		static		Standard_Real Tolerance(const TopoDS_Vertex V);
		%feature("autodoc", "1");
		static		Standard_Real Parameter(const TopoDS_Vertex V, const TopoDS_Edge E, const TopoDS_Face F);
		%feature("autodoc", "1");
		static		void Parameters(const TopoDS_Edge E, const TopoDS_Face F, const Standard_Real W, gp_Pnt2d & UV);
		%feature("autodoc","Locate(const C, Standard_Real W, const p3d) -> Standard_Real");

		static		void Locate(const BRepAdaptor_Curve &C, const Standard_Real W, Standard_Real &OutValue, const gp_Pnt p3d, gp_Pnt2d & UV);
		%feature("autodoc", "1");
		static		gp_Pnt Pnt(const TopoDS_Vertex V);
		%feature("autodoc", "1");
		static		void AddInFace(const TopoDS_Face F, Handle_Poly_Triangulation & T);

};
%feature("shadow") BRepMesh_ShapeTool::~BRepMesh_ShapeTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepMesh_ShapeTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepMesh_ListNodeOfListOfXY;
class BRepMesh_ListNodeOfListOfXY : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BRepMesh_ListNodeOfListOfXY(const gp_XY I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		gp_XY  Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepMesh_ListNodeOfListOfXY {
	Handle_BRepMesh_ListNodeOfListOfXY GetHandle() {
	return *(Handle_BRepMesh_ListNodeOfListOfXY*) &$self;
	}
};
%extend BRepMesh_ListNodeOfListOfXY {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") BRepMesh_ListNodeOfListOfXY::~BRepMesh_ListNodeOfListOfXY %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepMesh_ListNodeOfListOfXY {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepMesh_IndexedMapNodeOfIndexedMapOfVertex;
class BRepMesh_IndexedMapNodeOfIndexedMapOfVertex : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BRepMesh_IndexedMapNodeOfIndexedMapOfVertex(const BRepMesh_Vertex &K1, const Standard_Integer K2, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
		%feature("autodoc", "1");
		BRepMesh_Vertex & Key1() const;
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
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepMesh_IndexedMapNodeOfIndexedMapOfVertex {
	Handle_BRepMesh_IndexedMapNodeOfIndexedMapOfVertex GetHandle() {
	return *(Handle_BRepMesh_IndexedMapNodeOfIndexedMapOfVertex*) &$self;
	}
};
%extend BRepMesh_IndexedMapNodeOfIndexedMapOfVertex {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") BRepMesh_IndexedMapNodeOfIndexedMapOfVertex::~BRepMesh_IndexedMapNodeOfIndexedMapOfVertex %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepMesh_IndexedMapNodeOfIndexedMapOfVertex {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepMesh_DataMapOfShapePairOfPolygon;
class BRepMesh_DataMapOfShapePairOfPolygon : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		BRepMesh_DataMapOfShapePairOfPolygon(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		BRepMesh_DataMapOfShapePairOfPolygon & Assign(const BRepMesh_DataMapOfShapePairOfPolygon &Other);
		%feature("autodoc", "1");
		BRepMesh_DataMapOfShapePairOfPolygon & operator=(const BRepMesh_DataMapOfShapePairOfPolygon &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TopoDS_Shape K, const BRepMesh_PairOfPolygon &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TopoDS_Shape K);
		%feature("autodoc", "1");
		const BRepMesh_PairOfPolygon & Find(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		const BRepMesh_PairOfPolygon & operator()(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		BRepMesh_PairOfPolygon & ChangeFind(const TopoDS_Shape K);
		%feature("autodoc", "1");
		BRepMesh_PairOfPolygon & operator()(const TopoDS_Shape K);

};
%feature("shadow") BRepMesh_DataMapOfShapePairOfPolygon::~BRepMesh_DataMapOfShapePairOfPolygon %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepMesh_DataMapOfShapePairOfPolygon {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepMesh_IndexedDataMapNodeOfIDMapOfLinkOfDataStructureOfDelaun;
class BRepMesh_IndexedDataMapNodeOfIDMapOfLinkOfDataStructureOfDelaun : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BRepMesh_IndexedDataMapNodeOfIDMapOfLinkOfDataStructureOfDelaun(const BRepMesh_Edge &K1, const Standard_Integer K2, const BRepMesh_PairOfIndex &I, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
		%feature("autodoc", "1");
		BRepMesh_Edge & Key1() const;
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
		BRepMesh_PairOfIndex & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepMesh_IndexedDataMapNodeOfIDMapOfLinkOfDataStructureOfDelaun {
	Handle_BRepMesh_IndexedDataMapNodeOfIDMapOfLinkOfDataStructureOfDelaun GetHandle() {
	return *(Handle_BRepMesh_IndexedDataMapNodeOfIDMapOfLinkOfDataStructureOfDelaun*) &$self;
	}
};
%extend BRepMesh_IndexedDataMapNodeOfIDMapOfLinkOfDataStructureOfDelaun {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") BRepMesh_IndexedDataMapNodeOfIDMapOfLinkOfDataStructureOfDelaun::~BRepMesh_IndexedDataMapNodeOfIDMapOfLinkOfDataStructureOfDelaun %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepMesh_IndexedDataMapNodeOfIDMapOfLinkOfDataStructureOfDelaun {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepMesh_FaceAttribute;
class BRepMesh_FaceAttribute : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		BRepMesh_FaceAttribute();
		%feature("autodoc","1");
		%extend {
				Standard_Real GetGetDefFace() {
				return (Standard_Real) $self->GetDefFace();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetGetDefFace(Standard_Real value ) {
				$self->GetDefFace()=value;
				}
		};
		%feature("autodoc","1");
		%extend {
				Standard_Real GetGetUMin() {
				return (Standard_Real) $self->GetUMin();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetGetUMin(Standard_Real value ) {
				$self->GetUMin()=value;
				}
		};
		%feature("autodoc","1");
		%extend {
				Standard_Real GetGetVMin() {
				return (Standard_Real) $self->GetVMin();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetGetVMin(Standard_Real value ) {
				$self->GetVMin()=value;
				}
		};
		%feature("autodoc","1");
		%extend {
				Standard_Real GetGetUMax() {
				return (Standard_Real) $self->GetUMax();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetGetUMax(Standard_Real value ) {
				$self->GetUMax()=value;
				}
		};
		%feature("autodoc","1");
		%extend {
				Standard_Real GetGetVMax() {
				return (Standard_Real) $self->GetVMax();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetGetVMax(Standard_Real value ) {
				$self->GetVMax()=value;
				}
		};
		%feature("autodoc","1");
		%extend {
				Standard_Real GetGetDeltaX() {
				return (Standard_Real) $self->GetDeltaX();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetGetDeltaX(Standard_Real value ) {
				$self->GetDeltaX()=value;
				}
		};
		%feature("autodoc","1");
		%extend {
				Standard_Real GetGetDeltaY() {
				return (Standard_Real) $self->GetDeltaY();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetGetDeltaY(Standard_Real value ) {
				$self->GetDeltaY()=value;
				}
		};
		%feature("autodoc","1");
		%extend {
				Standard_Real GetGetMinX() {
				return (Standard_Real) $self->GetMinX();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetGetMinX(Standard_Real value ) {
				$self->GetMinX()=value;
				}
		};
		%feature("autodoc","1");
		%extend {
				Standard_Real GetGetMinY() {
				return (Standard_Real) $self->GetMinY();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetGetMinY(Standard_Real value ) {
				$self->GetMinY()=value;
				}
		};
		%feature("autodoc", "1");
		BRepMesh_ClassifierPtr & GetClassifier();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepMesh_FaceAttribute {
	Handle_BRepMesh_FaceAttribute GetHandle() {
	return *(Handle_BRepMesh_FaceAttribute*) &$self;
	}
};
%extend BRepMesh_FaceAttribute {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") BRepMesh_FaceAttribute::~BRepMesh_FaceAttribute %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepMesh_FaceAttribute {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepMesh_ListOfVertex;
class BRepMesh_ListOfVertex {
	public:
		%feature("autodoc", "1");
		BRepMesh_ListOfVertex();
		%feature("autodoc", "1");
		void Assign(const BRepMesh_ListOfVertex &Other);
		%feature("autodoc", "1");
		void operator=(const BRepMesh_ListOfVertex &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const BRepMesh_Vertex &I);
		%feature("autodoc", "1");
		void Prepend(const BRepMesh_Vertex &I, BRepMesh_ListIteratorOfListOfVertex & theIt);
		%feature("autodoc", "1");
		void Prepend(BRepMesh_ListOfVertex & Other);
		%feature("autodoc", "1");
		void Append(const BRepMesh_Vertex &I);
		%feature("autodoc", "1");
		void Append(const BRepMesh_Vertex &I, BRepMesh_ListIteratorOfListOfVertex & theIt);
		%feature("autodoc", "1");
		void Append(BRepMesh_ListOfVertex & Other);
		%feature("autodoc", "1");
		BRepMesh_Vertex & First() const;
		%feature("autodoc", "1");
		BRepMesh_Vertex & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(BRepMesh_ListIteratorOfListOfVertex & It);
		%feature("autodoc", "1");
		void InsertBefore(const BRepMesh_Vertex &I, BRepMesh_ListIteratorOfListOfVertex & It);
		%feature("autodoc", "1");
		void InsertBefore(BRepMesh_ListOfVertex & Other, BRepMesh_ListIteratorOfListOfVertex & It);
		%feature("autodoc", "1");
		void InsertAfter(const BRepMesh_Vertex &I, BRepMesh_ListIteratorOfListOfVertex & It);
		%feature("autodoc", "1");
		void InsertAfter(BRepMesh_ListOfVertex & Other, BRepMesh_ListIteratorOfListOfVertex & It);

};
%feature("shadow") BRepMesh_ListOfVertex::~BRepMesh_ListOfVertex %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepMesh_ListOfVertex {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepMesh_Classifier;
class BRepMesh_Classifier {
	public:
		%feature("autodoc", "1");
		BRepMesh_Classifier(const TopoDS_Face F, const Standard_Real Tol, const BRepMesh_DataMapOfShapePairOfPolygon &edges, const TColStd_IndexedMapOfInteger &themap, const BRepMesh_IndexedMapOfVertex &Str, const Standard_Real Umin, const Standard_Real Umax, const Standard_Real Vmin, const Standard_Real Vmax);
		%feature("autodoc", "1");
		BRepMesh_Classifier(const TopoDS_Face F, const Standard_Real Tol, const BRepMesh_DataMapOfShapePairOfPolygon &edges, const TColStd_IndexedMapOfInteger &themap, const Handle_BRepMesh_DataStructureOfDelaun &Str, const Standard_Real Umin, const Standard_Real Umax, const Standard_Real Vmin, const Standard_Real Vmax);
		%feature("autodoc", "1");
		TopAbs_State Perform(const gp_Pnt2d Puv) const;
		%feature("autodoc", "1");
		BRepMesh_Status State() const;
		%feature("autodoc", "1");
		Standard_Boolean NaturalRestriction() const;
		%feature("autodoc", "1");
		void Destroy();

};
%feature("shadow") BRepMesh_Classifier::~BRepMesh_Classifier %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepMesh_Classifier {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepMesh_ComparatorOfVertexOfDelaun;
class BRepMesh_ComparatorOfVertexOfDelaun {
	public:
		%feature("autodoc", "1");
		BRepMesh_ComparatorOfVertexOfDelaun(const gp_XY theDir, const Standard_Real TheTol);
		%feature("autodoc", "1");
		Standard_Boolean IsLower(const BRepMesh_Vertex &Left, const BRepMesh_Vertex &Right) const;
		%feature("autodoc", "1");
		Standard_Boolean IsGreater(const BRepMesh_Vertex &Left, const BRepMesh_Vertex &Right) const;
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const BRepMesh_Vertex &Left, const BRepMesh_Vertex &Right) const;

};
%feature("shadow") BRepMesh_ComparatorOfVertexOfDelaun::~BRepMesh_ComparatorOfVertexOfDelaun %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepMesh_ComparatorOfVertexOfDelaun {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepMesh_FastDiscret;
class BRepMesh_FastDiscret : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		BRepMesh_FastDiscret(const Standard_Real defle, const Standard_Real angle, const Bnd_Box &B, const Standard_Boolean withShare=1, const Standard_Boolean inshape=0, const Standard_Boolean relative=0, const Standard_Boolean shapetrigu=0);
		%feature("autodoc", "1");
		BRepMesh_FastDiscret(const Standard_Real defle, const TopoDS_Shape shape, const Bnd_Box &B, const Standard_Real angle, const Standard_Boolean withShare=1, const Standard_Boolean inshape=0, const Standard_Boolean relative=0, const Standard_Boolean shapetrigu=0);
		%feature("autodoc", "1");
		void Perform(const TopoDS_Shape shape);
		%feature("autodoc", "1");
		void Add(const TopoDS_Face face);
		%feature("autodoc", "1");
		void Process(const TopoDS_Face face) const;
		%feature("autodoc", "1");
		void operator()(const TopoDS_Face face) const;
		%feature("autodoc", "1");
		BRepMesh_Status CurrentFaceStatus() const;
		%feature("autodoc", "1");
		Standard_Integer NbTriangles() const;
		%feature("autodoc", "1");
		const BRepMesh_Triangle & Triangle(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Integer NbEdges() const;
		%feature("autodoc", "1");
		const BRepMesh_Edge & Edge(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Integer NbVertices() const;
		%feature("autodoc", "1");
		const BRepMesh_Vertex & Vertex(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const gp_Pnt  Pnt(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void VerticesOfDomain(BRepMesh_MapOfInteger & Indices) const;
		%feature("autodoc", "1");
		void EdgesOfDomain(BRepMesh_MapOfInteger & Indices) const;
		%feature("autodoc", "1");
		void TrianglesOfDomain(BRepMesh_MapOfInteger & Indices) const;
		%feature("autodoc", "1");
		Standard_Integer NbPoint3d() const;
		%feature("autodoc", "1");
		const gp_Pnt  Point3d(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Real GetDeflection() const;
		%feature("autodoc", "1");
		Standard_Real GetAngle() const;
		%feature("autodoc", "1");
		Standard_Boolean WithShare() const;
		%feature("autodoc", "1");
		Standard_Boolean InShape() const;
		%feature("autodoc", "1");
		Standard_Boolean ShapeTrigu() const;
		%feature("autodoc", "1");
		Standard_Boolean GetFaceAttribute(const TopoDS_Face face, Handle_BRepMesh_FaceAttribute & fattrib) const;
		%feature("autodoc", "1");
		void RemoveFaceAttribute(const TopoDS_Face face);
		%feature("autodoc", "1");
		const TopTools_DataMapOfShapeReal & GetMapOfDefEdge() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepMesh_FastDiscret {
	Handle_BRepMesh_FastDiscret GetHandle() {
	return *(Handle_BRepMesh_FastDiscret*) &$self;
	}
};
%extend BRepMesh_FastDiscret {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") BRepMesh_FastDiscret::~BRepMesh_FastDiscret %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepMesh_FastDiscret {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepMesh_GeomTool;
class BRepMesh_GeomTool {
	public:
		%feature("autodoc", "1");
		BRepMesh_GeomTool(BRepAdaptor_Curve & C, const Standard_Real Ufirst, const Standard_Real Ulast, const Standard_Real AngDefl, const Standard_Real Deflection, const Standard_Integer nbpointsmin=2);
		%feature("autodoc", "1");
		BRepMesh_GeomTool(const Handle_BRepAdaptor_HSurface &S, const Standard_Real ParamIso, const GeomAbs_IsoType Type, const Standard_Real Ufirst, const Standard_Real Ulast, const Standard_Real AngDefl, const Standard_Real Deflection, const Standard_Integer nbpointsmin=2);
		%feature("autodoc", "1");
		Standard_Integer AddPoint(const gp_Pnt thePnt, const Standard_Real theParam, const Standard_Boolean theIsReplace=1);
		%feature("autodoc", "1");
		Standard_Integer NbPoints() const;
		%feature("autodoc","Value(Standard_Real IsoParam, Standard_Integer Index) -> Standard_Real");

		void Value(const Standard_Real IsoParam, const Standard_Integer Index, Standard_Real &OutValue, gp_Pnt & P, gp_Pnt2d & UV) const;
		%feature("autodoc","Value(const C, const S, Standard_Integer Index) -> Standard_Real");

		void Value(const BRepAdaptor_Curve &C, const Handle_BRepAdaptor_HSurface &S, const Standard_Integer Index, Standard_Real &OutValue, gp_Pnt & P, gp_Pnt2d & UV) const;
		%feature("autodoc", "1");
		static		void D0(const Handle_BRepAdaptor_HSurface &F, const Standard_Real U, const Standard_Real V, gp_Pnt & P);
		%feature("autodoc", "1");
		static		Standard_Boolean Normal(const Handle_BRepAdaptor_HSurface &F, const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Dir & Nor);

};
%feature("shadow") BRepMesh_GeomTool::~BRepMesh_GeomTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepMesh_GeomTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepMesh_DataMapOfVertexInteger;
class BRepMesh_DataMapOfVertexInteger : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		BRepMesh_DataMapOfVertexInteger(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		BRepMesh_DataMapOfVertexInteger & Assign(const BRepMesh_DataMapOfVertexInteger &Other);
		%feature("autodoc", "1");
		BRepMesh_DataMapOfVertexInteger & operator=(const BRepMesh_DataMapOfVertexInteger &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TopoDS_Vertex K, const Standard_Integer &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TopoDS_Vertex K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TopoDS_Vertex K);
		%feature("autodoc", "1");
		const Standard_Integer & Find(const TopoDS_Vertex K) const;
		%feature("autodoc", "1");
		const Standard_Integer & operator()(const TopoDS_Vertex K) const;
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetChangeFind(const TopoDS_Vertex K) {
				return (Standard_Integer) $self->ChangeFind(K);
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetChangeFind(Standard_Integer value ,const TopoDS_Vertex K) {
				$self->ChangeFind(K)=value;
				}
		};
		%feature("autodoc", "1");
		Standard_Integer & operator()(const TopoDS_Vertex K);

};
%feature("shadow") BRepMesh_DataMapOfVertexInteger::~BRepMesh_DataMapOfVertexInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepMesh_DataMapOfVertexInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepMesh_Circ;
class BRepMesh_Circ {
	public:
		%feature("autodoc", "1");
		BRepMesh_Circ();
		%feature("autodoc", "1");
		BRepMesh_Circ(const gp_XY loc, const Standard_Real rad);
		%feature("autodoc", "1");
		void SetLocation(const gp_XY loc);
		%feature("autodoc", "1");
		void SetRadius(const Standard_Real rad);
		%feature("autodoc", "1");
		const gp_XY  Location() const;
		%feature("autodoc", "1");
		const Standard_Real & Radius() const;

};
%feature("shadow") BRepMesh_Circ::~BRepMesh_Circ %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepMesh_Circ {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepMesh_SelectorOfDataStructureOfDelaun;
class BRepMesh_SelectorOfDataStructureOfDelaun {
	public:
		%feature("autodoc", "1");
		BRepMesh_SelectorOfDataStructureOfDelaun();
		%feature("autodoc", "1");
		BRepMesh_SelectorOfDataStructureOfDelaun(const Handle_BRepMesh_DataStructureOfDelaun &theMesh);
		%feature("autodoc", "1");
		void Initialize(const Handle_BRepMesh_DataStructureOfDelaun &theMesh);
		%feature("autodoc", "1");
		void NeighboursOf(const BRepMesh_Vertex &theNode);
		%feature("autodoc", "1");
		void NeighboursOfNode(const Standard_Integer indexNode);
		%feature("autodoc", "1");
		void NeighboursOf(const BRepMesh_Edge &theLink);
		%feature("autodoc", "1");
		void NeighboursOfLink(const Standard_Integer indexLink);
		%feature("autodoc", "1");
		void NeighboursOf(const BRepMesh_Triangle &theElem);
		%feature("autodoc", "1");
		void NeighboursOfElement(const Standard_Integer indexElem);
		%feature("autodoc", "1");
		void NeighboursByEdgeOf(const BRepMesh_Triangle &theElem);
		%feature("autodoc", "1");
		void NeighboursOf(const BRepMesh_SelectorOfDataStructureOfDelaun &theSelector);
		%feature("autodoc", "1");
		void AddNeighbours();
		%feature("autodoc", "1");
		const BRepMesh_MapOfInteger & Nodes() const;
		%feature("autodoc", "1");
		const BRepMesh_MapOfInteger & Links() const;
		%feature("autodoc", "1");
		const BRepMesh_MapOfInteger & Elements() const;
		%feature("autodoc", "1");
		const BRepMesh_MapOfInteger & FrontierLinks() const;

};
%feature("shadow") BRepMesh_SelectorOfDataStructureOfDelaun::~BRepMesh_SelectorOfDataStructureOfDelaun %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepMesh_SelectorOfDataStructureOfDelaun {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepMesh_DataMapOfShapeReal;
class BRepMesh_DataMapOfShapeReal : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		BRepMesh_DataMapOfShapeReal(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		BRepMesh_DataMapOfShapeReal & Assign(const BRepMesh_DataMapOfShapeReal &Other);
		%feature("autodoc", "1");
		BRepMesh_DataMapOfShapeReal & operator=(const BRepMesh_DataMapOfShapeReal &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TopoDS_Shape K, const Standard_Real &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TopoDS_Shape K);
		%feature("autodoc", "1");
		const Standard_Real & Find(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		const Standard_Real & operator()(const TopoDS_Shape K) const;
		%feature("autodoc","1");
		%extend {
				Standard_Real GetChangeFind(const TopoDS_Shape K) {
				return (Standard_Real) $self->ChangeFind(K);
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetChangeFind(Standard_Real value ,const TopoDS_Shape K) {
				$self->ChangeFind(K)=value;
				}
		};
		%feature("autodoc", "1");
		Standard_Real & operator()(const TopoDS_Shape K);

};
%feature("shadow") BRepMesh_DataMapOfShapeReal::~BRepMesh_DataMapOfShapeReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepMesh_DataMapOfShapeReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepMesh_IndexedMapNodeOfIMapOfElementOfDataStructureOfDelaun;
class BRepMesh_IndexedMapNodeOfIMapOfElementOfDataStructureOfDelaun : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BRepMesh_IndexedMapNodeOfIMapOfElementOfDataStructureOfDelaun(const BRepMesh_Triangle &K1, const Standard_Integer K2, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
		%feature("autodoc", "1");
		BRepMesh_Triangle & Key1() const;
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
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepMesh_IndexedMapNodeOfIMapOfElementOfDataStructureOfDelaun {
	Handle_BRepMesh_IndexedMapNodeOfIMapOfElementOfDataStructureOfDelaun GetHandle() {
	return *(Handle_BRepMesh_IndexedMapNodeOfIMapOfElementOfDataStructureOfDelaun*) &$self;
	}
};
%extend BRepMesh_IndexedMapNodeOfIMapOfElementOfDataStructureOfDelaun {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") BRepMesh_IndexedMapNodeOfIMapOfElementOfDataStructureOfDelaun::~BRepMesh_IndexedMapNodeOfIMapOfElementOfDataStructureOfDelaun %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepMesh_IndexedMapNodeOfIMapOfElementOfDataStructureOfDelaun {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepMesh_DataMapNodeOfDataMapOfFaceAttribute;
class BRepMesh_DataMapNodeOfDataMapOfFaceAttribute : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BRepMesh_DataMapNodeOfDataMapOfFaceAttribute(const TopoDS_Face K, const Handle_BRepMesh_FaceAttribute &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Face  Key() const;
		%feature("autodoc", "1");
		Handle_BRepMesh_FaceAttribute & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepMesh_DataMapNodeOfDataMapOfFaceAttribute {
	Handle_BRepMesh_DataMapNodeOfDataMapOfFaceAttribute GetHandle() {
	return *(Handle_BRepMesh_DataMapNodeOfDataMapOfFaceAttribute*) &$self;
	}
};
%extend BRepMesh_DataMapNodeOfDataMapOfFaceAttribute {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") BRepMesh_DataMapNodeOfDataMapOfFaceAttribute::~BRepMesh_DataMapNodeOfDataMapOfFaceAttribute %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepMesh_DataMapNodeOfDataMapOfFaceAttribute {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepMesh_HeapSortVertexOfDelaun;
class BRepMesh_HeapSortVertexOfDelaun {
	public:
		%feature("autodoc", "1");
		BRepMesh_HeapSortVertexOfDelaun();
		%feature("autodoc", "1");
		static		void Sort(BRepMesh_Array1OfVertexOfDelaun & TheArray, const BRepMesh_ComparatorOfVertexOfDelaun &Comp);

};
%feature("shadow") BRepMesh_HeapSortVertexOfDelaun::~BRepMesh_HeapSortVertexOfDelaun %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepMesh_HeapSortVertexOfDelaun {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepMesh_DataMapNodeOfDataMapOfShapePairOfPolygon;
class BRepMesh_DataMapNodeOfDataMapOfShapePairOfPolygon : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BRepMesh_DataMapNodeOfDataMapOfShapePairOfPolygon(const TopoDS_Shape K, const BRepMesh_PairOfPolygon &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Shape  Key() const;
		%feature("autodoc", "1");
		BRepMesh_PairOfPolygon & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepMesh_DataMapNodeOfDataMapOfShapePairOfPolygon {
	Handle_BRepMesh_DataMapNodeOfDataMapOfShapePairOfPolygon GetHandle() {
	return *(Handle_BRepMesh_DataMapNodeOfDataMapOfShapePairOfPolygon*) &$self;
	}
};
%extend BRepMesh_DataMapNodeOfDataMapOfShapePairOfPolygon {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") BRepMesh_DataMapNodeOfDataMapOfShapePairOfPolygon::~BRepMesh_DataMapNodeOfDataMapOfShapePairOfPolygon %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepMesh_DataMapNodeOfDataMapOfShapePairOfPolygon {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepMesh_DataMapNodeOfDataMapOfIntegerPnt;
class BRepMesh_DataMapNodeOfDataMapOfIntegerPnt : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BRepMesh_DataMapNodeOfDataMapOfIntegerPnt(const Standard_Integer &K, const gp_Pnt I, const TCollection_MapNodePtr &n);
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
		gp_Pnt  Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepMesh_DataMapNodeOfDataMapOfIntegerPnt {
	Handle_BRepMesh_DataMapNodeOfDataMapOfIntegerPnt GetHandle() {
	return *(Handle_BRepMesh_DataMapNodeOfDataMapOfIntegerPnt*) &$self;
	}
};
%extend BRepMesh_DataMapNodeOfDataMapOfIntegerPnt {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") BRepMesh_DataMapNodeOfDataMapOfIntegerPnt::~BRepMesh_DataMapNodeOfDataMapOfIntegerPnt %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepMesh_DataMapNodeOfDataMapOfIntegerPnt {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepMesh_DataMapOfIntegerPnt;
class BRepMesh_DataMapOfIntegerPnt : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		BRepMesh_DataMapOfIntegerPnt(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		BRepMesh_DataMapOfIntegerPnt & Assign(const BRepMesh_DataMapOfIntegerPnt &Other);
		%feature("autodoc", "1");
		BRepMesh_DataMapOfIntegerPnt & operator=(const BRepMesh_DataMapOfIntegerPnt &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Standard_Integer &K, const gp_Pnt I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Standard_Integer &K);
		%feature("autodoc", "1");
		const gp_Pnt  Find(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		const gp_Pnt  operator()(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		gp_Pnt  ChangeFind(const Standard_Integer &K);
		%feature("autodoc", "1");
		gp_Pnt  operator()(const Standard_Integer &K);

};
%feature("shadow") BRepMesh_DataMapOfIntegerPnt::~BRepMesh_DataMapOfIntegerPnt %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepMesh_DataMapOfIntegerPnt {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepMesh_DataMapIteratorOfDataMapOfIntegerPnt;
class BRepMesh_DataMapIteratorOfDataMapOfIntegerPnt : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		BRepMesh_DataMapIteratorOfDataMapOfIntegerPnt();
		%feature("autodoc", "1");
		BRepMesh_DataMapIteratorOfDataMapOfIntegerPnt(const BRepMesh_DataMapOfIntegerPnt &aMap);
		%feature("autodoc", "1");
		void Initialize(const BRepMesh_DataMapOfIntegerPnt &aMap);
		%feature("autodoc", "1");
		const Standard_Integer & Key() const;
		%feature("autodoc", "1");
		const gp_Pnt  Value() const;

};
%feature("shadow") BRepMesh_DataMapIteratorOfDataMapOfIntegerPnt::~BRepMesh_DataMapIteratorOfDataMapOfIntegerPnt %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepMesh_DataMapIteratorOfDataMapOfIntegerPnt {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepMesh_IndexedDataMapNodeOfIDMapOfNodeOfDataStructureOfDelaun;
class BRepMesh_IndexedDataMapNodeOfIDMapOfNodeOfDataStructureOfDelaun : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BRepMesh_IndexedDataMapNodeOfIDMapOfNodeOfDataStructureOfDelaun(const BRepMesh_Vertex &K1, const Standard_Integer K2, const BRepMesh_ListOfInteger &I, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
		%feature("autodoc", "1");
		BRepMesh_Vertex & Key1() const;
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
		BRepMesh_ListOfInteger & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepMesh_IndexedDataMapNodeOfIDMapOfNodeOfDataStructureOfDelaun {
	Handle_BRepMesh_IndexedDataMapNodeOfIDMapOfNodeOfDataStructureOfDelaun GetHandle() {
	return *(Handle_BRepMesh_IndexedDataMapNodeOfIDMapOfNodeOfDataStructureOfDelaun*) &$self;
	}
};
%extend BRepMesh_IndexedDataMapNodeOfIDMapOfNodeOfDataStructureOfDelaun {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") BRepMesh_IndexedDataMapNodeOfIDMapOfNodeOfDataStructureOfDelaun::~BRepMesh_IndexedDataMapNodeOfIDMapOfNodeOfDataStructureOfDelaun %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepMesh_IndexedDataMapNodeOfIDMapOfNodeOfDataStructureOfDelaun {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepMesh_DataMapIteratorOfDataMapOfFaceAttribute;
class BRepMesh_DataMapIteratorOfDataMapOfFaceAttribute : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		BRepMesh_DataMapIteratorOfDataMapOfFaceAttribute();
		%feature("autodoc", "1");
		BRepMesh_DataMapIteratorOfDataMapOfFaceAttribute(const BRepMesh_DataMapOfFaceAttribute &aMap);
		%feature("autodoc", "1");
		void Initialize(const BRepMesh_DataMapOfFaceAttribute &aMap);
		%feature("autodoc", "1");
		const TopoDS_Face  Key() const;
		%feature("autodoc", "1");
		const Handle_BRepMesh_FaceAttribute & Value() const;

};
%feature("shadow") BRepMesh_DataMapIteratorOfDataMapOfFaceAttribute::~BRepMesh_DataMapIteratorOfDataMapOfFaceAttribute %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepMesh_DataMapIteratorOfDataMapOfFaceAttribute {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepMesh_IDMapOfLinkOfDataStructureOfDelaun;
class BRepMesh_IDMapOfLinkOfDataStructureOfDelaun : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		BRepMesh_IDMapOfLinkOfDataStructureOfDelaun(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		BRepMesh_IDMapOfLinkOfDataStructureOfDelaun & Assign(const BRepMesh_IDMapOfLinkOfDataStructureOfDelaun &Other);
		%feature("autodoc", "1");
		BRepMesh_IDMapOfLinkOfDataStructureOfDelaun & operator=(const BRepMesh_IDMapOfLinkOfDataStructureOfDelaun &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer Add(const BRepMesh_Edge &K, const BRepMesh_PairOfIndex &I);
		%feature("autodoc", "1");
		void Substitute(const Standard_Integer I, const BRepMesh_Edge &K, const BRepMesh_PairOfIndex &T);
		%feature("autodoc", "1");
		void RemoveLast();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const BRepMesh_Edge &K) const;
		%feature("autodoc", "1");
		const BRepMesh_Edge & FindKey(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const BRepMesh_PairOfIndex & FindFromIndex(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const BRepMesh_PairOfIndex & operator()(const Standard_Integer I) const;
		%feature("autodoc", "1");
		BRepMesh_PairOfIndex & ChangeFromIndex(const Standard_Integer I);
		%feature("autodoc", "1");
		BRepMesh_PairOfIndex & operator()(const Standard_Integer I);
		%feature("autodoc", "1");
		Standard_Integer FindIndex(const BRepMesh_Edge &K) const;
		%feature("autodoc", "1");
		const BRepMesh_PairOfIndex & FindFromKey(const BRepMesh_Edge &K) const;
		%feature("autodoc", "1");
		BRepMesh_PairOfIndex & ChangeFromKey(const BRepMesh_Edge &K);

};
%feature("shadow") BRepMesh_IDMapOfLinkOfDataStructureOfDelaun::~BRepMesh_IDMapOfLinkOfDataStructureOfDelaun %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepMesh_IDMapOfLinkOfDataStructureOfDelaun {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepMesh_DataMapOfIntegerListOfXY;
class BRepMesh_DataMapOfIntegerListOfXY : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		BRepMesh_DataMapOfIntegerListOfXY(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		BRepMesh_DataMapOfIntegerListOfXY & Assign(const BRepMesh_DataMapOfIntegerListOfXY &Other);
		%feature("autodoc", "1");
		BRepMesh_DataMapOfIntegerListOfXY & operator=(const BRepMesh_DataMapOfIntegerListOfXY &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Standard_Integer &K, const BRepMesh_ListOfXY &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Standard_Integer &K);
		%feature("autodoc", "1");
		const BRepMesh_ListOfXY & Find(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		const BRepMesh_ListOfXY & operator()(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		BRepMesh_ListOfXY & ChangeFind(const Standard_Integer &K);
		%feature("autodoc", "1");
		BRepMesh_ListOfXY & operator()(const Standard_Integer &K);

};
%feature("shadow") BRepMesh_DataMapOfIntegerListOfXY::~BRepMesh_DataMapOfIntegerListOfXY %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepMesh_DataMapOfIntegerListOfXY {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepMesh_IDMapOfNodeOfDataStructureOfDelaun;
class BRepMesh_IDMapOfNodeOfDataStructureOfDelaun : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		BRepMesh_IDMapOfNodeOfDataStructureOfDelaun(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		BRepMesh_IDMapOfNodeOfDataStructureOfDelaun & Assign(const BRepMesh_IDMapOfNodeOfDataStructureOfDelaun &Other);
		%feature("autodoc", "1");
		BRepMesh_IDMapOfNodeOfDataStructureOfDelaun & operator=(const BRepMesh_IDMapOfNodeOfDataStructureOfDelaun &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer Add(const BRepMesh_Vertex &K, const BRepMesh_ListOfInteger &I);
		%feature("autodoc", "1");
		void Substitute(const Standard_Integer I, const BRepMesh_Vertex &K, const BRepMesh_ListOfInteger &T);
		%feature("autodoc", "1");
		void RemoveLast();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const BRepMesh_Vertex &K) const;
		%feature("autodoc", "1");
		const BRepMesh_Vertex & FindKey(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const BRepMesh_ListOfInteger & FindFromIndex(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const BRepMesh_ListOfInteger & operator()(const Standard_Integer I) const;
		%feature("autodoc", "1");
		BRepMesh_ListOfInteger & ChangeFromIndex(const Standard_Integer I);
		%feature("autodoc", "1");
		BRepMesh_ListOfInteger & operator()(const Standard_Integer I);
		%feature("autodoc", "1");
		Standard_Integer FindIndex(const BRepMesh_Vertex &K) const;
		%feature("autodoc", "1");
		const BRepMesh_ListOfInteger & FindFromKey(const BRepMesh_Vertex &K) const;
		%feature("autodoc", "1");
		BRepMesh_ListOfInteger & ChangeFromKey(const BRepMesh_Vertex &K);

};
%feature("shadow") BRepMesh_IDMapOfNodeOfDataStructureOfDelaun::~BRepMesh_IDMapOfNodeOfDataStructureOfDelaun %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepMesh_IDMapOfNodeOfDataStructureOfDelaun {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepMesh_VertexHasher;
class BRepMesh_VertexHasher {
	public:
		%feature("autodoc", "1");
		BRepMesh_VertexHasher();
		%feature("autodoc", "1");
		static		Standard_Integer HashCode(const BRepMesh_Vertex &K, const Standard_Integer Upper);
		%feature("autodoc", "1");
		static		Standard_Boolean IsEqual(const BRepMesh_Vertex &K1, const BRepMesh_Vertex &K2);

};
%feature("shadow") BRepMesh_VertexHasher::~BRepMesh_VertexHasher %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepMesh_VertexHasher {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepMesh_LinkHasherOfDataStructureOfDelaun;
class BRepMesh_LinkHasherOfDataStructureOfDelaun {
	public:
		%feature("autodoc", "1");
		BRepMesh_LinkHasherOfDataStructureOfDelaun();
		%feature("autodoc", "1");
		static		Standard_Integer HashCode(const BRepMesh_Edge &K, const Standard_Integer Upper);
		%feature("autodoc", "1");
		static		Standard_Boolean IsEqual(const BRepMesh_Edge &K1, const BRepMesh_Edge &K2);

};
%feature("shadow") BRepMesh_LinkHasherOfDataStructureOfDelaun::~BRepMesh_LinkHasherOfDataStructureOfDelaun %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepMesh_LinkHasherOfDataStructureOfDelaun {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepMesh_NodeHasherOfDataStructureOfDelaun;
class BRepMesh_NodeHasherOfDataStructureOfDelaun {
	public:
		%feature("autodoc", "1");
		BRepMesh_NodeHasherOfDataStructureOfDelaun();
		%feature("autodoc", "1");
		static		Standard_Integer HashCode(const BRepMesh_Vertex &K, const Standard_Integer Upper);
		%feature("autodoc", "1");
		static		Standard_Boolean IsEqual(const BRepMesh_Vertex &K1, const BRepMesh_Vertex &K2);

};
%feature("shadow") BRepMesh_NodeHasherOfDataStructureOfDelaun::~BRepMesh_NodeHasherOfDataStructureOfDelaun %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepMesh_NodeHasherOfDataStructureOfDelaun {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepMesh_FastDiscretFace;
class BRepMesh_FastDiscretFace : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		BRepMesh_FastDiscretFace(const Standard_Real theAngle, const Standard_Boolean theWithShare=1);
		%feature("autodoc", "1");
		void Add(const TopoDS_Face theFace, const Handle_BRepMesh_FaceAttribute &theAttrib, const TopTools_DataMapOfShapeReal &theMapDefle);
		%feature("autodoc", "1");
		Standard_Real Control(const Handle_BRepAdaptor_HSurface &theCaro, const Standard_Real theDefFace, BRepMesh_ListOfVertex & theInternalV, TColStd_ListOfInteger & theBadTriangles, TColStd_ListOfInteger & theNulTriangles, BRepMesh_Delaun & theTrigu, const Standard_Boolean theIsFirst);
		%feature("autodoc", "1");
		static		gp_XY FindUV(const TopoDS_Vertex theV, const gp_Pnt2d theXY, const Standard_Integer theIp, const Handle_BRepAdaptor_HSurface &theSFace, const Standard_Real theMinDist, BRepMesh_DataMapOfIntegerListOfXY & theLocation2dMap);
		%feature("autodoc", "1");
		const BRepMesh_Triangle & Triangle(const Standard_Integer theIndex) const;
		%feature("autodoc", "1");
		const BRepMesh_Edge & Edge(const Standard_Integer theIndex) const;
		%feature("autodoc", "1");
		const BRepMesh_Vertex & Vertex(const Standard_Integer theIndex) const;
		%feature("autodoc", "1");
		const gp_Pnt  Pnt(const Standard_Integer theIndex) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepMesh_FastDiscretFace {
	Handle_BRepMesh_FastDiscretFace GetHandle() {
	return *(Handle_BRepMesh_FastDiscretFace*) &$self;
	}
};
%extend BRepMesh_FastDiscretFace {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") BRepMesh_FastDiscretFace::~BRepMesh_FastDiscretFace %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepMesh_FastDiscretFace {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepMesh_Delaun;
class BRepMesh_Delaun {
	public:
		%feature("autodoc", "1");
		BRepMesh_Delaun(BRepMesh_Array1OfVertexOfDelaun & Vertices, const Standard_Boolean ZPositive=1);
		%feature("autodoc", "1");
		BRepMesh_Delaun(const Handle_BRepMesh_DataStructureOfDelaun &OldMesh, BRepMesh_Array1OfVertexOfDelaun & Vertices, const Standard_Boolean ZPositive=1);
		%feature("autodoc", "1");
		BRepMesh_Delaun(const Handle_BRepMesh_DataStructureOfDelaun &OldMesh, TColStd_Array1OfInteger & VertexIndices, const Standard_Boolean ZPositive=1);
		%feature("autodoc", "1");
		void AddVertex(const BRepMesh_Vertex &theVertex);
		%feature("autodoc", "1");
		void RemoveVertex(const BRepMesh_Vertex &theVertex);
		%feature("autodoc", "1");
		void AddVertices(BRepMesh_Array1OfVertexOfDelaun & Vertices);
		%feature("autodoc", "1");
		Standard_Boolean RevertDiagonal(const Standard_Integer theEdge);
		%feature("autodoc", "1");
		Standard_Boolean UseEdge(const Standard_Integer theEdge);
		%feature("autodoc", "1");
		void SmoothMesh(const Standard_Real Epsilon);
		%feature("autodoc", "1");
		const Handle_BRepMesh_DataStructureOfDelaun & Result() const;
		%feature("autodoc", "1");
		const BRepMesh_MapOfInteger & Frontier();
		%feature("autodoc", "1");
		const BRepMesh_MapOfInteger & InternalEdges();
		%feature("autodoc", "1");
		const BRepMesh_MapOfInteger & FreeEdges();
		%feature("autodoc", "1");
		const BRepMesh_Vertex & GetVertex(const Standard_Integer vIndex) const;
		%feature("autodoc", "1");
		const BRepMesh_Edge & GetEdge(const Standard_Integer eIndex) const;
		%feature("autodoc", "1");
		const BRepMesh_Triangle & GetTriangle(const Standard_Integer tIndex) const;
		%feature("autodoc", "1");
		void Init(BRepMesh_Array1OfVertexOfDelaun & Vertices);
		%feature("autodoc", "1");
		void Compute(TColStd_Array1OfInteger & VertexIndices);
		%feature("autodoc", "1");
		void ReCompute(TColStd_Array1OfInteger & VertexIndices);
		%feature("autodoc", "1");
		void SuperMesh(const Bnd_Box2d &theBox);
		%feature("autodoc","Contains(Standard_Integer TrianIndex, const theVertex) -> Standard_Integer");

		Standard_Boolean Contains(const Standard_Integer TrianIndex, const BRepMesh_Vertex &theVertex, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		Standard_Integer TriangleContaining(const BRepMesh_Vertex &theVertex);

};
%feature("shadow") BRepMesh_Delaun::~BRepMesh_Delaun %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepMesh_Delaun {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepMesh_ComparatorOfIndexedVertexOfDelaun;
class BRepMesh_ComparatorOfIndexedVertexOfDelaun {
	public:
		%feature("autodoc", "1");
		BRepMesh_ComparatorOfIndexedVertexOfDelaun(const gp_XY theDir, const Standard_Real TheTol, const Handle_BRepMesh_DataStructureOfDelaun &HDS);
		%feature("autodoc", "1");
		Standard_Boolean IsLower(const Standard_Integer Left, const Standard_Integer Right) const;
		%feature("autodoc", "1");
		Standard_Boolean IsGreater(const Standard_Integer Left, const Standard_Integer Right) const;
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const Standard_Integer Left, const Standard_Integer Right) const;

};
%feature("shadow") BRepMesh_ComparatorOfIndexedVertexOfDelaun::~BRepMesh_ComparatorOfIndexedVertexOfDelaun %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepMesh_ComparatorOfIndexedVertexOfDelaun {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepMesh_DataMapNodeOfDataMapOfVertexInteger;
class BRepMesh_DataMapNodeOfDataMapOfVertexInteger : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BRepMesh_DataMapNodeOfDataMapOfVertexInteger(const TopoDS_Vertex K, const Standard_Integer &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Vertex  Key() const;
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetValue() {
				return (Standard_Integer) $self->Value();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetValue(Standard_Integer value ) {
				$self->Value()=value;
				}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepMesh_DataMapNodeOfDataMapOfVertexInteger {
	Handle_BRepMesh_DataMapNodeOfDataMapOfVertexInteger GetHandle() {
	return *(Handle_BRepMesh_DataMapNodeOfDataMapOfVertexInteger*) &$self;
	}
};
%extend BRepMesh_DataMapNodeOfDataMapOfVertexInteger {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") BRepMesh_DataMapNodeOfDataMapOfVertexInteger::~BRepMesh_DataMapNodeOfDataMapOfVertexInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepMesh_DataMapNodeOfDataMapOfVertexInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepMesh_Edge;
class BRepMesh_Edge {
	public:
		%feature("autodoc", "1");
		BRepMesh_Edge(const Standard_Integer vDebut, const Standard_Integer vFin, const BRepMesh_DegreeOfFreedom canMove);
		%feature("autodoc", "1");
		Standard_Integer FirstNode() const;
		%feature("autodoc", "1");
		Standard_Integer LastNode() const;
		%feature("autodoc", "1");
		BRepMesh_DegreeOfFreedom Movability() const;
		%feature("autodoc", "1");
		void SetMovability(const BRepMesh_DegreeOfFreedom Move);
		%feature("autodoc", "1");
		Standard_Integer HashCode(const Standard_Integer Upper) const;
		%feature("autodoc", "1");
		Standard_Boolean SameOrientation(const BRepMesh_Edge &Other) const;
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const BRepMesh_Edge &Other) const;
		%extend{
			bool __eq_wrapper__(const BRepMesh_Edge &Other) {
				if (*self==Other) return true;
				else return false;
			}
		}
		%pythoncode {
		def __eq__(self,right):
			try:
				return self.__eq_wrapper__(right)
			except:
				return False
		}

};
%extend BRepMesh_Edge {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") BRepMesh_Edge::~BRepMesh_Edge %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepMesh_Edge {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepMesh_PairOfIndex;
class BRepMesh_PairOfIndex {
	public:
		%feature("autodoc", "1");
		BRepMesh_PairOfIndex();
		%feature("autodoc", "1");
		BRepMesh_PairOfIndex(const BRepMesh_PairOfIndex &theOther);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const Standard_Integer theIndx);
		%feature("autodoc", "1");
		void Prepend(const Standard_Integer theIndx);
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		Standard_Integer FirstIndex() const;
		%feature("autodoc", "1");
		Standard_Integer LastIndex() const;
		%feature("autodoc", "1");
		Standard_Integer Index(const Standard_Integer theNum) const;
		%feature("autodoc", "1");
		void SetIndex(const Standard_Integer theNum, const Standard_Integer theIndex);
		%feature("autodoc", "1");
		void RemoveIndex(const Standard_Integer theNum);

};
%feature("shadow") BRepMesh_PairOfIndex::~BRepMesh_PairOfIndex %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepMesh_PairOfIndex {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepMesh_Triangle;
class BRepMesh_Triangle {
	public:
		%feature("autodoc", "1");
		BRepMesh_Triangle();
		%feature("autodoc", "1");
		BRepMesh_Triangle(const Standard_Integer e1, const Standard_Integer e2, const Standard_Integer e3, const Standard_Boolean o1, const Standard_Boolean o2, const Standard_Boolean o3, const BRepMesh_DegreeOfFreedom canMove);
		%feature("autodoc", "1");
		void Initialize(const Standard_Integer e1, const Standard_Integer e2, const Standard_Integer e3, const Standard_Boolean o1, const Standard_Boolean o2, const Standard_Boolean o3, const BRepMesh_DegreeOfFreedom canMove);
		%feature("autodoc","Edges() -> [Standard_Integer, Standard_Integer, Standard_Integer]");

		void Edges(Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Boolean & o1, Standard_Boolean & o2, Standard_Boolean & o3) const;
		%feature("autodoc", "1");
		BRepMesh_DegreeOfFreedom Movability() const;
		%feature("autodoc", "1");
		void SetMovability(const BRepMesh_DegreeOfFreedom Move);
		%feature("autodoc", "1");
		Standard_Integer HashCode(const Standard_Integer Upper) const;
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const BRepMesh_Triangle &Other) const;
		%extend{
			bool __eq_wrapper__(const BRepMesh_Triangle &Other) {
				if (*self==Other) return true;
				else return false;
			}
		}
		%pythoncode {
		def __eq__(self,right):
			try:
				return self.__eq_wrapper__(right)
			except:
				return False
		}

};
%extend BRepMesh_Triangle {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") BRepMesh_Triangle::~BRepMesh_Triangle %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepMesh_Triangle {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepMesh_ListIteratorOfListOfVertex;
class BRepMesh_ListIteratorOfListOfVertex {
	public:
		%feature("autodoc", "1");
		BRepMesh_ListIteratorOfListOfVertex();
		%feature("autodoc", "1");
		BRepMesh_ListIteratorOfListOfVertex(const BRepMesh_ListOfVertex &L);
		%feature("autodoc", "1");
		void Initialize(const BRepMesh_ListOfVertex &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		BRepMesh_Vertex & Value() const;

};
%feature("shadow") BRepMesh_ListIteratorOfListOfVertex::~BRepMesh_ListIteratorOfListOfVertex %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepMesh_ListIteratorOfListOfVertex {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepMesh_ElemHasherOfDataStructureOfDelaun;
class BRepMesh_ElemHasherOfDataStructureOfDelaun {
	public:
		%feature("autodoc", "1");
		BRepMesh_ElemHasherOfDataStructureOfDelaun();
		%feature("autodoc", "1");
		static		Standard_Integer HashCode(const BRepMesh_Triangle &K, const Standard_Integer Upper);
		%feature("autodoc", "1");
		static		Standard_Boolean IsEqual(const BRepMesh_Triangle &K1, const BRepMesh_Triangle &K2);

};
%feature("shadow") BRepMesh_ElemHasherOfDataStructureOfDelaun::~BRepMesh_ElemHasherOfDataStructureOfDelaun %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepMesh_ElemHasherOfDataStructureOfDelaun {
	void _kill_pointed() {
		delete $self;
	}
};
