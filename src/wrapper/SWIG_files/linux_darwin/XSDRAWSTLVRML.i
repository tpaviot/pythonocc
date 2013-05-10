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

%module XSDRAWSTLVRML
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include XSDRAWSTLVRML_renames.i


%include XSDRAWSTLVRML_required_python_modules.i


%include XSDRAWSTLVRML_dependencies.i


%include XSDRAWSTLVRML_headers.i




%nodefaultctor Handle_XSDRAWSTLVRML_DataMapNodeOfCoordsMap;
class Handle_XSDRAWSTLVRML_DataMapNodeOfCoordsMap : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_XSDRAWSTLVRML_DataMapNodeOfCoordsMap();
		%feature("autodoc", "1");
		Handle_XSDRAWSTLVRML_DataMapNodeOfCoordsMap(const Handle_XSDRAWSTLVRML_DataMapNodeOfCoordsMap &aHandle);
		%feature("autodoc", "1");
		Handle_XSDRAWSTLVRML_DataMapNodeOfCoordsMap(const XSDRAWSTLVRML_DataMapNodeOfCoordsMap *anItem);
		%feature("autodoc", "1");
		Handle_XSDRAWSTLVRML_DataMapNodeOfCoordsMap & operator=(const Handle_XSDRAWSTLVRML_DataMapNodeOfCoordsMap &aHandle);
		%feature("autodoc", "1");
		Handle_XSDRAWSTLVRML_DataMapNodeOfCoordsMap & operator=(const XSDRAWSTLVRML_DataMapNodeOfCoordsMap *anItem);
		%feature("autodoc", "1");
		static		Handle_XSDRAWSTLVRML_DataMapNodeOfCoordsMap DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XSDRAWSTLVRML_DataMapNodeOfCoordsMap {
	XSDRAWSTLVRML_DataMapNodeOfCoordsMap* GetObject() {
	return (XSDRAWSTLVRML_DataMapNodeOfCoordsMap*)$self->Access();
	}
};
%feature("shadow") Handle_XSDRAWSTLVRML_DataMapNodeOfCoordsMap::~Handle_XSDRAWSTLVRML_DataMapNodeOfCoordsMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_XSDRAWSTLVRML_DataMapNodeOfCoordsMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_XSDRAWSTLVRML_DataMapNodeOfElemNodesMap;
class Handle_XSDRAWSTLVRML_DataMapNodeOfElemNodesMap : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_XSDRAWSTLVRML_DataMapNodeOfElemNodesMap();
		%feature("autodoc", "1");
		Handle_XSDRAWSTLVRML_DataMapNodeOfElemNodesMap(const Handle_XSDRAWSTLVRML_DataMapNodeOfElemNodesMap &aHandle);
		%feature("autodoc", "1");
		Handle_XSDRAWSTLVRML_DataMapNodeOfElemNodesMap(const XSDRAWSTLVRML_DataMapNodeOfElemNodesMap *anItem);
		%feature("autodoc", "1");
		Handle_XSDRAWSTLVRML_DataMapNodeOfElemNodesMap & operator=(const Handle_XSDRAWSTLVRML_DataMapNodeOfElemNodesMap &aHandle);
		%feature("autodoc", "1");
		Handle_XSDRAWSTLVRML_DataMapNodeOfElemNodesMap & operator=(const XSDRAWSTLVRML_DataMapNodeOfElemNodesMap *anItem);
		%feature("autodoc", "1");
		static		Handle_XSDRAWSTLVRML_DataMapNodeOfElemNodesMap DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XSDRAWSTLVRML_DataMapNodeOfElemNodesMap {
	XSDRAWSTLVRML_DataMapNodeOfElemNodesMap* GetObject() {
	return (XSDRAWSTLVRML_DataMapNodeOfElemNodesMap*)$self->Access();
	}
};
%feature("shadow") Handle_XSDRAWSTLVRML_DataMapNodeOfElemNodesMap::~Handle_XSDRAWSTLVRML_DataMapNodeOfElemNodesMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_XSDRAWSTLVRML_DataMapNodeOfElemNodesMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_XSDRAWSTLVRML_DrawableMesh;
class Handle_XSDRAWSTLVRML_DrawableMesh : public Handle_Draw_Drawable3D {
	public:
		%feature("autodoc", "1");
		Handle_XSDRAWSTLVRML_DrawableMesh();
		%feature("autodoc", "1");
		Handle_XSDRAWSTLVRML_DrawableMesh(const Handle_XSDRAWSTLVRML_DrawableMesh &aHandle);
		%feature("autodoc", "1");
		Handle_XSDRAWSTLVRML_DrawableMesh(const XSDRAWSTLVRML_DrawableMesh *anItem);
		%feature("autodoc", "1");
		Handle_XSDRAWSTLVRML_DrawableMesh & operator=(const Handle_XSDRAWSTLVRML_DrawableMesh &aHandle);
		%feature("autodoc", "1");
		Handle_XSDRAWSTLVRML_DrawableMesh & operator=(const XSDRAWSTLVRML_DrawableMesh *anItem);
		%feature("autodoc", "1");
		static		Handle_XSDRAWSTLVRML_DrawableMesh DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XSDRAWSTLVRML_DrawableMesh {
	XSDRAWSTLVRML_DrawableMesh* GetObject() {
	return (XSDRAWSTLVRML_DrawableMesh*)$self->Access();
	}
};
%feature("shadow") Handle_XSDRAWSTLVRML_DrawableMesh::~Handle_XSDRAWSTLVRML_DrawableMesh %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_XSDRAWSTLVRML_DrawableMesh {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_XSDRAWSTLVRML_DataSource;
class Handle_XSDRAWSTLVRML_DataSource : public Handle_MeshVS_DataSource {
	public:
		%feature("autodoc", "1");
		Handle_XSDRAWSTLVRML_DataSource();
		%feature("autodoc", "1");
		Handle_XSDRAWSTLVRML_DataSource(const Handle_XSDRAWSTLVRML_DataSource &aHandle);
		%feature("autodoc", "1");
		Handle_XSDRAWSTLVRML_DataSource(const XSDRAWSTLVRML_DataSource *anItem);
		%feature("autodoc", "1");
		Handle_XSDRAWSTLVRML_DataSource & operator=(const Handle_XSDRAWSTLVRML_DataSource &aHandle);
		%feature("autodoc", "1");
		Handle_XSDRAWSTLVRML_DataSource & operator=(const XSDRAWSTLVRML_DataSource *anItem);
		%feature("autodoc", "1");
		static		Handle_XSDRAWSTLVRML_DataSource DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XSDRAWSTLVRML_DataSource {
	XSDRAWSTLVRML_DataSource* GetObject() {
	return (XSDRAWSTLVRML_DataSource*)$self->Access();
	}
};
%feature("shadow") Handle_XSDRAWSTLVRML_DataSource::~Handle_XSDRAWSTLVRML_DataSource %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_XSDRAWSTLVRML_DataSource {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XSDRAWSTLVRML_DataSource;
class XSDRAWSTLVRML_DataSource : public MeshVS_DataSource {
	public:
		%feature("autodoc", "1");
		XSDRAWSTLVRML_DataSource(const Handle_StlMesh_Mesh &aMesh);
		%feature("autodoc","GetGeom(Standard_Integer ID, Standard_Boolean IsElement) -> Standard_Integer");

		virtual		Standard_Boolean GetGeom(const Standard_Integer ID, const Standard_Boolean IsElement, TColStd_Array1OfReal & Coords, Standard_Integer &OutValue, MeshVS_EntityType & Type) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean GetGeomType(const Standard_Integer ID, const Standard_Boolean IsElement, MeshVS_EntityType & Type) const;
		%feature("autodoc", "1");
		virtual		Standard_Address GetAddr(const Standard_Integer ID, const Standard_Boolean IsElement) const;
		%feature("autodoc","GetNodesByElement(Standard_Integer ID) -> Standard_Integer");

		virtual		Standard_Boolean GetNodesByElement(const Standard_Integer ID, TColStd_Array1OfInteger & NodeIDs, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		virtual		const TColStd_PackedMapOfInteger & GetAllNodes() const;
		%feature("autodoc", "1");
		virtual		const TColStd_PackedMapOfInteger & GetAllElements() const;
		%feature("autodoc","GetNormal(Standard_Integer Id, Standard_Integer Max) -> [Standard_Real, Standard_Real, Standard_Real]");

		virtual		Standard_Boolean GetNormal(const Standard_Integer Id, const Standard_Integer Max, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XSDRAWSTLVRML_DataSource {
	Handle_XSDRAWSTLVRML_DataSource GetHandle() {
	return *(Handle_XSDRAWSTLVRML_DataSource*) &$self;
	}
};
%extend XSDRAWSTLVRML_DataSource {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") XSDRAWSTLVRML_DataSource::~XSDRAWSTLVRML_DataSource %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XSDRAWSTLVRML_DataSource {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XSDRAWSTLVRML_DataMapNodeOfCoordsMap;
class XSDRAWSTLVRML_DataMapNodeOfCoordsMap : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		XSDRAWSTLVRML_DataMapNodeOfCoordsMap(const Standard_Integer &K, const TColStd_DataMapOfIntegerReal &I, const TCollection_MapNodePtr &n);
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
		TColStd_DataMapOfIntegerReal & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XSDRAWSTLVRML_DataMapNodeOfCoordsMap {
	Handle_XSDRAWSTLVRML_DataMapNodeOfCoordsMap GetHandle() {
	return *(Handle_XSDRAWSTLVRML_DataMapNodeOfCoordsMap*) &$self;
	}
};
%extend XSDRAWSTLVRML_DataMapNodeOfCoordsMap {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") XSDRAWSTLVRML_DataMapNodeOfCoordsMap::~XSDRAWSTLVRML_DataMapNodeOfCoordsMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XSDRAWSTLVRML_DataMapNodeOfCoordsMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XSDRAWSTLVRML_CoordsMap;
class XSDRAWSTLVRML_CoordsMap : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		XSDRAWSTLVRML_CoordsMap(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		XSDRAWSTLVRML_CoordsMap & Assign(const XSDRAWSTLVRML_CoordsMap &Other);
		%feature("autodoc", "1");
		XSDRAWSTLVRML_CoordsMap & operator=(const XSDRAWSTLVRML_CoordsMap &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Standard_Integer &K, const TColStd_DataMapOfIntegerReal &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Standard_Integer &K);
		%feature("autodoc", "1");
		const TColStd_DataMapOfIntegerReal & Find(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		const TColStd_DataMapOfIntegerReal & operator()(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		TColStd_DataMapOfIntegerReal & ChangeFind(const Standard_Integer &K);
		%feature("autodoc", "1");
		TColStd_DataMapOfIntegerReal & operator()(const Standard_Integer &K);
		%feature("autodoc", "1");
		Standard_Address Find1(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Standard_Address ChangeFind1(const Standard_Integer &K);

};
%feature("shadow") XSDRAWSTLVRML_CoordsMap::~XSDRAWSTLVRML_CoordsMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XSDRAWSTLVRML_CoordsMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XSDRAWSTLVRML_DataMapIteratorOfElemNodesMap;
class XSDRAWSTLVRML_DataMapIteratorOfElemNodesMap : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		XSDRAWSTLVRML_DataMapIteratorOfElemNodesMap();
		%feature("autodoc", "1");
		XSDRAWSTLVRML_DataMapIteratorOfElemNodesMap(const XSDRAWSTLVRML_ElemNodesMap &aMap);
		%feature("autodoc", "1");
		void Initialize(const XSDRAWSTLVRML_ElemNodesMap &aMap);
		%feature("autodoc", "1");
		const Standard_Integer & Key() const;
		%feature("autodoc", "1");
		const TColStd_DataMapOfIntegerInteger & Value() const;

};
%feature("shadow") XSDRAWSTLVRML_DataMapIteratorOfElemNodesMap::~XSDRAWSTLVRML_DataMapIteratorOfElemNodesMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XSDRAWSTLVRML_DataMapIteratorOfElemNodesMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XSDRAWSTLVRML_DrawableMesh;
class XSDRAWSTLVRML_DrawableMesh : public Draw_Drawable3D {
	public:
		%feature("autodoc", "1");
		XSDRAWSTLVRML_DrawableMesh(const Handle_MeshVS_Mesh &aMesh);
		%feature("autodoc", "1");
		virtual		void DrawOn(Draw_Display & dis) const;
		%feature("autodoc", "1");
		Handle_MeshVS_Mesh GetMesh() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XSDRAWSTLVRML_DrawableMesh {
	Handle_XSDRAWSTLVRML_DrawableMesh GetHandle() {
	return *(Handle_XSDRAWSTLVRML_DrawableMesh*) &$self;
	}
};
%extend XSDRAWSTLVRML_DrawableMesh {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") XSDRAWSTLVRML_DrawableMesh::~XSDRAWSTLVRML_DrawableMesh %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XSDRAWSTLVRML_DrawableMesh {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XSDRAWSTLVRML_ElemNodesMap;
class XSDRAWSTLVRML_ElemNodesMap : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		XSDRAWSTLVRML_ElemNodesMap(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		XSDRAWSTLVRML_ElemNodesMap & Assign(const XSDRAWSTLVRML_ElemNodesMap &Other);
		%feature("autodoc", "1");
		XSDRAWSTLVRML_ElemNodesMap & operator=(const XSDRAWSTLVRML_ElemNodesMap &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Standard_Integer &K, const TColStd_DataMapOfIntegerInteger &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Standard_Integer &K);
		%feature("autodoc", "1");
		const TColStd_DataMapOfIntegerInteger & Find(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		const TColStd_DataMapOfIntegerInteger & operator()(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		TColStd_DataMapOfIntegerInteger & ChangeFind(const Standard_Integer &K);
		%feature("autodoc", "1");
		TColStd_DataMapOfIntegerInteger & operator()(const Standard_Integer &K);
		%feature("autodoc", "1");
		Standard_Address Find1(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Standard_Address ChangeFind1(const Standard_Integer &K);

};
%feature("shadow") XSDRAWSTLVRML_ElemNodesMap::~XSDRAWSTLVRML_ElemNodesMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XSDRAWSTLVRML_ElemNodesMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XSDRAWSTLVRML_DataMapNodeOfElemNodesMap;
class XSDRAWSTLVRML_DataMapNodeOfElemNodesMap : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		XSDRAWSTLVRML_DataMapNodeOfElemNodesMap(const Standard_Integer &K, const TColStd_DataMapOfIntegerInteger &I, const TCollection_MapNodePtr &n);
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
		TColStd_DataMapOfIntegerInteger & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XSDRAWSTLVRML_DataMapNodeOfElemNodesMap {
	Handle_XSDRAWSTLVRML_DataMapNodeOfElemNodesMap GetHandle() {
	return *(Handle_XSDRAWSTLVRML_DataMapNodeOfElemNodesMap*) &$self;
	}
};
%extend XSDRAWSTLVRML_DataMapNodeOfElemNodesMap {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") XSDRAWSTLVRML_DataMapNodeOfElemNodesMap::~XSDRAWSTLVRML_DataMapNodeOfElemNodesMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XSDRAWSTLVRML_DataMapNodeOfElemNodesMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XSDRAWSTLVRML;
class XSDRAWSTLVRML {
	public:
		%feature("autodoc", "1");
		XSDRAWSTLVRML();
		%feature("autodoc", "1");
		static		void InitCommands(Draw_Interpretor & theCommands);
		%feature("autodoc", "1");
		static		void Factory(Draw_Interpretor & theDI);

};
%feature("shadow") XSDRAWSTLVRML::~XSDRAWSTLVRML %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XSDRAWSTLVRML {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XSDRAWSTLVRML_DataMapIteratorOfCoordsMap;
class XSDRAWSTLVRML_DataMapIteratorOfCoordsMap : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		XSDRAWSTLVRML_DataMapIteratorOfCoordsMap();
		%feature("autodoc", "1");
		XSDRAWSTLVRML_DataMapIteratorOfCoordsMap(const XSDRAWSTLVRML_CoordsMap &aMap);
		%feature("autodoc", "1");
		void Initialize(const XSDRAWSTLVRML_CoordsMap &aMap);
		%feature("autodoc", "1");
		const Standard_Integer & Key() const;
		%feature("autodoc", "1");
		const TColStd_DataMapOfIntegerReal & Value() const;

};
%feature("shadow") XSDRAWSTLVRML_DataMapIteratorOfCoordsMap::~XSDRAWSTLVRML_DataMapIteratorOfCoordsMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XSDRAWSTLVRML_DataMapIteratorOfCoordsMap {
	void _kill_pointed() {
		delete $self;
	}
};
