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
%module GraphDS

%include GraphDS_renames.i
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%pythoncode {
import GarbageCollector
};

%include GraphDS_dependencies.i


%include GraphDS_headers.i


enum GraphDS_RelationRole {
	GraphDS_OnlyFront,
	GraphDS_OnlyBack,
	GraphDS_FrontAndBack,
	};

enum GraphDS_EntityRole {
	GraphDS_OnlyInput,
	GraphDS_OnlyOutput,
	GraphDS_InputAndOutput,
	};



%nodefaultctor Handle_GraphDS_DataMapNodeOfEntityRoleMap;
class Handle_GraphDS_DataMapNodeOfEntityRoleMap : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_GraphDS_DataMapNodeOfEntityRoleMap();
		%feature("autodoc", "1");
		Handle_GraphDS_DataMapNodeOfEntityRoleMap(const Handle_GraphDS_DataMapNodeOfEntityRoleMap &aHandle);
		%feature("autodoc", "1");
		Handle_GraphDS_DataMapNodeOfEntityRoleMap(const GraphDS_DataMapNodeOfEntityRoleMap *anItem);
		%feature("autodoc", "1");
		Handle_GraphDS_DataMapNodeOfEntityRoleMap & operator=(const Handle_GraphDS_DataMapNodeOfEntityRoleMap &aHandle);
		%feature("autodoc", "1");
		Handle_GraphDS_DataMapNodeOfEntityRoleMap & operator=(const GraphDS_DataMapNodeOfEntityRoleMap *anItem);
		%feature("autodoc", "1");
		Handle_GraphDS_DataMapNodeOfEntityRoleMap const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GraphDS_DataMapNodeOfEntityRoleMap {
	GraphDS_DataMapNodeOfEntityRoleMap* GetObject() {
	return (GraphDS_DataMapNodeOfEntityRoleMap*)$self->Access();
	}
};
%feature("shadow") Handle_GraphDS_DataMapNodeOfEntityRoleMap::~Handle_GraphDS_DataMapNodeOfEntityRoleMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GraphDS_DataMapNodeOfEntityRoleMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GraphDS_EntityRoleMap;
class GraphDS_EntityRoleMap : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		GraphDS_EntityRoleMap(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		GraphDS_EntityRoleMap & Assign(const GraphDS_EntityRoleMap &Other);
		%feature("autodoc", "1");
		GraphDS_EntityRoleMap & operator=(const GraphDS_EntityRoleMap &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Handle_Standard_Transient &K, const GraphDS_EntityRole &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Handle_Standard_Transient &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Handle_Standard_Transient &K);
		%feature("autodoc", "1");
		const GraphDS_EntityRole & Find(const Handle_Standard_Transient &K) const;
		%feature("autodoc", "1");
		const GraphDS_EntityRole & operator()(const Handle_Standard_Transient &K) const;
		%feature("autodoc", "1");
		GraphDS_EntityRole & ChangeFind(const Handle_Standard_Transient &K);
		%feature("autodoc", "1");
		GraphDS_EntityRole & operator()(const Handle_Standard_Transient &K);

};
%feature("shadow") GraphDS_EntityRoleMap::~GraphDS_EntityRoleMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GraphDS_EntityRoleMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GraphDS_DataMapNodeOfEntityRoleMap;
class GraphDS_DataMapNodeOfEntityRoleMap : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		GraphDS_DataMapNodeOfEntityRoleMap(const Handle_Standard_Transient &K, const GraphDS_EntityRole &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Handle_Standard_Transient & Key() const;
		%feature("autodoc", "1");
		GraphDS_EntityRole & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GraphDS_DataMapNodeOfEntityRoleMap {
	Handle_GraphDS_DataMapNodeOfEntityRoleMap GetHandle() {
	return *(Handle_GraphDS_DataMapNodeOfEntityRoleMap*) &$self;
	}
};
%extend GraphDS_DataMapNodeOfEntityRoleMap {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") GraphDS_DataMapNodeOfEntityRoleMap::~GraphDS_DataMapNodeOfEntityRoleMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GraphDS_DataMapNodeOfEntityRoleMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GraphDS_DataMapIteratorOfEntityRoleMap;
class GraphDS_DataMapIteratorOfEntityRoleMap : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		GraphDS_DataMapIteratorOfEntityRoleMap();
		%feature("autodoc", "1");
		GraphDS_DataMapIteratorOfEntityRoleMap(const GraphDS_EntityRoleMap &aMap);
		%feature("autodoc", "1");
		void Initialize(const GraphDS_EntityRoleMap &aMap);
		%feature("autodoc", "1");
		const Handle_Standard_Transient & Key() const;
		%feature("autodoc", "1");
		const GraphDS_EntityRole & Value() const;

};
%feature("shadow") GraphDS_DataMapIteratorOfEntityRoleMap::~GraphDS_DataMapIteratorOfEntityRoleMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GraphDS_DataMapIteratorOfEntityRoleMap {
	void _kill_pointed() {
		delete $self;
	}
};
