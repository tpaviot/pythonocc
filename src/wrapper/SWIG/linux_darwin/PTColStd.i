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

%module PTColStd
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include PTColStd_renames.i


%include PTColStd_required_python_modules.i


%include PTColStd_dependencies.i


%include PTColStd_headers.i




%nodefaultctor Handle_PTColStd_DataMapNodeOfTransientPersistentMap;
class Handle_PTColStd_DataMapNodeOfTransientPersistentMap : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_PTColStd_DataMapNodeOfTransientPersistentMap();
		%feature("autodoc", "1");
		Handle_PTColStd_DataMapNodeOfTransientPersistentMap(const Handle_PTColStd_DataMapNodeOfTransientPersistentMap &aHandle);
		%feature("autodoc", "1");
		Handle_PTColStd_DataMapNodeOfTransientPersistentMap(const PTColStd_DataMapNodeOfTransientPersistentMap *anItem);
		%feature("autodoc", "1");
		Handle_PTColStd_DataMapNodeOfTransientPersistentMap & operator=(const Handle_PTColStd_DataMapNodeOfTransientPersistentMap &aHandle);
		%feature("autodoc", "1");
		Handle_PTColStd_DataMapNodeOfTransientPersistentMap & operator=(const PTColStd_DataMapNodeOfTransientPersistentMap *anItem);
		%feature("autodoc", "1");
		static		Handle_PTColStd_DataMapNodeOfTransientPersistentMap const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_PTColStd_DataMapNodeOfTransientPersistentMap {
	PTColStd_DataMapNodeOfTransientPersistentMap* GetObject() {
	return (PTColStd_DataMapNodeOfTransientPersistentMap*)$self->Access();
	}
};
%feature("shadow") Handle_PTColStd_DataMapNodeOfTransientPersistentMap::~Handle_PTColStd_DataMapNodeOfTransientPersistentMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PTColStd_DataMapNodeOfTransientPersistentMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PTColStd_DataMapNodeOfPersistentTransientMap;
class Handle_PTColStd_DataMapNodeOfPersistentTransientMap : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_PTColStd_DataMapNodeOfPersistentTransientMap();
		%feature("autodoc", "1");
		Handle_PTColStd_DataMapNodeOfPersistentTransientMap(const Handle_PTColStd_DataMapNodeOfPersistentTransientMap &aHandle);
		%feature("autodoc", "1");
		Handle_PTColStd_DataMapNodeOfPersistentTransientMap(const PTColStd_DataMapNodeOfPersistentTransientMap *anItem);
		%feature("autodoc", "1");
		Handle_PTColStd_DataMapNodeOfPersistentTransientMap & operator=(const Handle_PTColStd_DataMapNodeOfPersistentTransientMap &aHandle);
		%feature("autodoc", "1");
		Handle_PTColStd_DataMapNodeOfPersistentTransientMap & operator=(const PTColStd_DataMapNodeOfPersistentTransientMap *anItem);
		%feature("autodoc", "1");
		static		Handle_PTColStd_DataMapNodeOfPersistentTransientMap const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_PTColStd_DataMapNodeOfPersistentTransientMap {
	PTColStd_DataMapNodeOfPersistentTransientMap* GetObject() {
	return (PTColStd_DataMapNodeOfPersistentTransientMap*)$self->Access();
	}
};
%feature("shadow") Handle_PTColStd_DataMapNodeOfPersistentTransientMap::~Handle_PTColStd_DataMapNodeOfPersistentTransientMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PTColStd_DataMapNodeOfPersistentTransientMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PTColStd_DoubleMapNodeOfDoubleMapOfTransientPersistent;
class Handle_PTColStd_DoubleMapNodeOfDoubleMapOfTransientPersistent : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_PTColStd_DoubleMapNodeOfDoubleMapOfTransientPersistent();
		%feature("autodoc", "1");
		Handle_PTColStd_DoubleMapNodeOfDoubleMapOfTransientPersistent(const Handle_PTColStd_DoubleMapNodeOfDoubleMapOfTransientPersistent &aHandle);
		%feature("autodoc", "1");
		Handle_PTColStd_DoubleMapNodeOfDoubleMapOfTransientPersistent(const PTColStd_DoubleMapNodeOfDoubleMapOfTransientPersistent *anItem);
		%feature("autodoc", "1");
		Handle_PTColStd_DoubleMapNodeOfDoubleMapOfTransientPersistent & operator=(const Handle_PTColStd_DoubleMapNodeOfDoubleMapOfTransientPersistent &aHandle);
		%feature("autodoc", "1");
		Handle_PTColStd_DoubleMapNodeOfDoubleMapOfTransientPersistent & operator=(const PTColStd_DoubleMapNodeOfDoubleMapOfTransientPersistent *anItem);
		%feature("autodoc", "1");
		static		Handle_PTColStd_DoubleMapNodeOfDoubleMapOfTransientPersistent const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_PTColStd_DoubleMapNodeOfDoubleMapOfTransientPersistent {
	PTColStd_DoubleMapNodeOfDoubleMapOfTransientPersistent* GetObject() {
	return (PTColStd_DoubleMapNodeOfDoubleMapOfTransientPersistent*)$self->Access();
	}
};
%feature("shadow") Handle_PTColStd_DoubleMapNodeOfDoubleMapOfTransientPersistent::~Handle_PTColStd_DoubleMapNodeOfDoubleMapOfTransientPersistent %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PTColStd_DoubleMapNodeOfDoubleMapOfTransientPersistent {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PTColStd_MapPersistentHasher;
class PTColStd_MapPersistentHasher {
	public:
		%feature("autodoc", "1");
		PTColStd_MapPersistentHasher();
		%feature("autodoc", "1");
		static		Standard_Integer HashCode(const Handle_Standard_Persistent &K, const Standard_Integer Upper);
		%feature("autodoc", "1");
		static		Standard_Boolean IsEqual(const Handle_Standard_Persistent &K1, const Handle_Standard_Persistent &K2);

};
%feature("shadow") PTColStd_MapPersistentHasher::~PTColStd_MapPersistentHasher %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PTColStd_MapPersistentHasher {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PTColStd_DataMapNodeOfPersistentTransientMap;
class PTColStd_DataMapNodeOfPersistentTransientMap : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		PTColStd_DataMapNodeOfPersistentTransientMap(const Handle_Standard_Persistent &K, const Handle_Standard_Transient &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Handle_Standard_Persistent & Key() const;
		%feature("autodoc", "1");
		Handle_Standard_Transient & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PTColStd_DataMapNodeOfPersistentTransientMap {
	Handle_PTColStd_DataMapNodeOfPersistentTransientMap GetHandle() {
	return *(Handle_PTColStd_DataMapNodeOfPersistentTransientMap*) &$self;
	}
};
%extend PTColStd_DataMapNodeOfPersistentTransientMap {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") PTColStd_DataMapNodeOfPersistentTransientMap::~PTColStd_DataMapNodeOfPersistentTransientMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PTColStd_DataMapNodeOfPersistentTransientMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PTColStd_DoubleMapIteratorOfDoubleMapOfTransientPersistent;
class PTColStd_DoubleMapIteratorOfDoubleMapOfTransientPersistent : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		PTColStd_DoubleMapIteratorOfDoubleMapOfTransientPersistent();
		%feature("autodoc", "1");
		PTColStd_DoubleMapIteratorOfDoubleMapOfTransientPersistent(const PTColStd_DoubleMapOfTransientPersistent &aMap);
		%feature("autodoc", "1");
		void Initialize(const PTColStd_DoubleMapOfTransientPersistent &aMap);
		%feature("autodoc", "1");
		const Handle_Standard_Transient & Key1() const;
		%feature("autodoc", "1");
		const Handle_Standard_Persistent & Key2() const;

};
%feature("shadow") PTColStd_DoubleMapIteratorOfDoubleMapOfTransientPersistent::~PTColStd_DoubleMapIteratorOfDoubleMapOfTransientPersistent %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PTColStd_DoubleMapIteratorOfDoubleMapOfTransientPersistent {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PTColStd_DataMapIteratorOfPersistentTransientMap;
class PTColStd_DataMapIteratorOfPersistentTransientMap : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		PTColStd_DataMapIteratorOfPersistentTransientMap();
		%feature("autodoc", "1");
		PTColStd_DataMapIteratorOfPersistentTransientMap(const PTColStd_PersistentTransientMap &aMap);
		%feature("autodoc", "1");
		void Initialize(const PTColStd_PersistentTransientMap &aMap);
		%feature("autodoc", "1");
		const Handle_Standard_Persistent & Key() const;
		%feature("autodoc", "1");
		const Handle_Standard_Transient & Value() const;

};
%feature("shadow") PTColStd_DataMapIteratorOfPersistentTransientMap::~PTColStd_DataMapIteratorOfPersistentTransientMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PTColStd_DataMapIteratorOfPersistentTransientMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PTColStd_PersistentTransientMap;
class PTColStd_PersistentTransientMap : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		PTColStd_PersistentTransientMap(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		PTColStd_PersistentTransientMap & Assign(const PTColStd_PersistentTransientMap &Other);
		%feature("autodoc", "1");
		PTColStd_PersistentTransientMap & operator=(const PTColStd_PersistentTransientMap &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Handle_Standard_Persistent &K, const Handle_Standard_Transient &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Handle_Standard_Persistent &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Handle_Standard_Persistent &K);
		%feature("autodoc", "1");
		const Handle_Standard_Transient & Find(const Handle_Standard_Persistent &K) const;
		%feature("autodoc", "1");
		const Handle_Standard_Transient & operator()(const Handle_Standard_Persistent &K) const;
		%feature("autodoc", "1");
		Handle_Standard_Transient & ChangeFind(const Handle_Standard_Persistent &K);
		%feature("autodoc", "1");
		Handle_Standard_Transient & operator()(const Handle_Standard_Persistent &K);

};
%feature("shadow") PTColStd_PersistentTransientMap::~PTColStd_PersistentTransientMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PTColStd_PersistentTransientMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PTColStd_DoubleMapOfTransientPersistent;
class PTColStd_DoubleMapOfTransientPersistent : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		PTColStd_DoubleMapOfTransientPersistent(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		PTColStd_DoubleMapOfTransientPersistent & Assign(const PTColStd_DoubleMapOfTransientPersistent &Other);
		%feature("autodoc", "1");
		PTColStd_DoubleMapOfTransientPersistent & operator=(const PTColStd_DoubleMapOfTransientPersistent &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Bind(const Handle_Standard_Transient &K1, const Handle_Standard_Persistent &K2);
		%feature("autodoc", "1");
		Standard_Boolean AreBound(const Handle_Standard_Transient &K1, const Handle_Standard_Persistent &K2) const;
		%feature("autodoc", "1");
		Standard_Boolean IsBound1(const Handle_Standard_Transient &K) const;
		%feature("autodoc", "1");
		Standard_Boolean IsBound2(const Handle_Standard_Persistent &K) const;
		%feature("autodoc", "1");
		const Handle_Standard_Persistent & Find1(const Handle_Standard_Transient &K) const;
		%feature("autodoc", "1");
		const Handle_Standard_Transient & Find2(const Handle_Standard_Persistent &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind1(const Handle_Standard_Transient &K);
		%feature("autodoc", "1");
		Standard_Boolean UnBind2(const Handle_Standard_Persistent &K);

};
%feature("shadow") PTColStd_DoubleMapOfTransientPersistent::~PTColStd_DoubleMapOfTransientPersistent %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PTColStd_DoubleMapOfTransientPersistent {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PTColStd_TransientPersistentMap;
class PTColStd_TransientPersistentMap : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		PTColStd_TransientPersistentMap(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		PTColStd_TransientPersistentMap & Assign(const PTColStd_TransientPersistentMap &Other);
		%feature("autodoc", "1");
		PTColStd_TransientPersistentMap & operator=(const PTColStd_TransientPersistentMap &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Handle_Standard_Transient &K, const Handle_Standard_Persistent &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Handle_Standard_Transient &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Handle_Standard_Transient &K);
		%feature("autodoc", "1");
		const Handle_Standard_Persistent & Find(const Handle_Standard_Transient &K) const;
		%feature("autodoc", "1");
		const Handle_Standard_Persistent & operator()(const Handle_Standard_Transient &K) const;
		%feature("autodoc", "1");
		Handle_Standard_Persistent & ChangeFind(const Handle_Standard_Transient &K);
		%feature("autodoc", "1");
		Handle_Standard_Persistent & operator()(const Handle_Standard_Transient &K);

};
%feature("shadow") PTColStd_TransientPersistentMap::~PTColStd_TransientPersistentMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PTColStd_TransientPersistentMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PTColStd_DoubleMapNodeOfDoubleMapOfTransientPersistent;
class PTColStd_DoubleMapNodeOfDoubleMapOfTransientPersistent : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		PTColStd_DoubleMapNodeOfDoubleMapOfTransientPersistent(const Handle_Standard_Transient &K1, const Handle_Standard_Persistent &K2, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
		%feature("autodoc", "1");
		Handle_Standard_Transient & Key1() const;
		%feature("autodoc", "1");
		Handle_Standard_Persistent & Key2() const;
		%feature("autodoc", "1");
		TCollection_MapNodePtr & Next2() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PTColStd_DoubleMapNodeOfDoubleMapOfTransientPersistent {
	Handle_PTColStd_DoubleMapNodeOfDoubleMapOfTransientPersistent GetHandle() {
	return *(Handle_PTColStd_DoubleMapNodeOfDoubleMapOfTransientPersistent*) &$self;
	}
};
%extend PTColStd_DoubleMapNodeOfDoubleMapOfTransientPersistent {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") PTColStd_DoubleMapNodeOfDoubleMapOfTransientPersistent::~PTColStd_DoubleMapNodeOfDoubleMapOfTransientPersistent %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PTColStd_DoubleMapNodeOfDoubleMapOfTransientPersistent {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PTColStd_DataMapIteratorOfTransientPersistentMap;
class PTColStd_DataMapIteratorOfTransientPersistentMap : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		PTColStd_DataMapIteratorOfTransientPersistentMap();
		%feature("autodoc", "1");
		PTColStd_DataMapIteratorOfTransientPersistentMap(const PTColStd_TransientPersistentMap &aMap);
		%feature("autodoc", "1");
		void Initialize(const PTColStd_TransientPersistentMap &aMap);
		%feature("autodoc", "1");
		const Handle_Standard_Transient & Key() const;
		%feature("autodoc", "1");
		const Handle_Standard_Persistent & Value() const;

};
%feature("shadow") PTColStd_DataMapIteratorOfTransientPersistentMap::~PTColStd_DataMapIteratorOfTransientPersistentMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PTColStd_DataMapIteratorOfTransientPersistentMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PTColStd_DataMapNodeOfTransientPersistentMap;
class PTColStd_DataMapNodeOfTransientPersistentMap : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		PTColStd_DataMapNodeOfTransientPersistentMap(const Handle_Standard_Transient &K, const Handle_Standard_Persistent &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Handle_Standard_Transient & Key() const;
		%feature("autodoc", "1");
		Handle_Standard_Persistent & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PTColStd_DataMapNodeOfTransientPersistentMap {
	Handle_PTColStd_DataMapNodeOfTransientPersistentMap GetHandle() {
	return *(Handle_PTColStd_DataMapNodeOfTransientPersistentMap*) &$self;
	}
};
%extend PTColStd_DataMapNodeOfTransientPersistentMap {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") PTColStd_DataMapNodeOfTransientPersistentMap::~PTColStd_DataMapNodeOfTransientPersistentMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PTColStd_DataMapNodeOfTransientPersistentMap {
	void _kill_pointed() {
		delete $self;
	}
};
