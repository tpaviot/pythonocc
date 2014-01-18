/*

Copyright 2008-2014 Thomas Paviot (tpaviot@gmail.com)

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

*/


%{
#ifdef WNT
#pragma warning(disable : 4716)
#endif
%}

%module IFGraph
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include IFGraph_renames.i


%include IFGraph_required_python_modules.i


%include IFGraph_dependencies.i


%include IFGraph_headers.i




%nodefaultctor IFGraph_Compare;
class IFGraph_Compare : public Interface_GraphContent {
	public:
		%feature("autodoc", "1");
		IFGraph_Compare(const Interface_Graph &agraph);
		%feature("autodoc", "1");
		void GetFromEntity(const Handle_Standard_Transient &ent, const Standard_Boolean first);
		%feature("autodoc", "1");
		void GetFromIter(const Interface_EntityIterator &iter, const Standard_Boolean first);
		%feature("autodoc", "1");
		void Merge();
		%feature("autodoc", "1");
		void RemoveSecond();
		%feature("autodoc", "1");
		void KeepCommon();
		%feature("autodoc", "1");
		void ResetData();
		%feature("autodoc", "1");
		virtual		void Evaluate();
		%feature("autodoc", "1");
		Interface_EntityIterator Common() const;
		%feature("autodoc", "1");
		Interface_EntityIterator FirstOnly() const;
		%feature("autodoc", "1");
		Interface_EntityIterator SecondOnly() const;

};
%feature("shadow") IFGraph_Compare::~IFGraph_Compare %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFGraph_Compare {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFGraph_SubPartsIterator;
class IFGraph_SubPartsIterator {
	public:
		%feature("autodoc", "1");
		IFGraph_SubPartsIterator(const Interface_Graph &agraph, const Standard_Boolean whole);
		%feature("autodoc", "1");
		IFGraph_SubPartsIterator(IFGraph_SubPartsIterator & other);
		%feature("autodoc", "1");
		void GetParts(IFGraph_SubPartsIterator & other);
		%feature("autodoc", "1");
		Handle_Interface_InterfaceModel Model() const;
		%feature("autodoc", "1");
		void AddPart();
		%feature("autodoc", "1");
		Standard_Integer NbParts() const;
		%feature("autodoc", "1");
		Standard_Integer PartNum() const;
		%feature("autodoc", "1");
		void SetLoad();
		%feature("autodoc", "1");
		void SetPartNum(const Standard_Integer num);
		%feature("autodoc", "1");
		void GetFromEntity(const Handle_Standard_Transient &ent, const Standard_Boolean shared);
		%feature("autodoc", "1");
		void GetFromIter(const Interface_EntityIterator &iter);
		%feature("autodoc", "1");
		void Reset();
		%feature("autodoc", "1");
		virtual		void Evaluate();
		%feature("autodoc", "1");
		Interface_GraphContent Loaded() const;
		%feature("autodoc", "1");
		Interface_Graph LoadedGraph() const;
		%feature("autodoc", "1");
		Standard_Boolean IsLoaded(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Standard_Boolean IsInPart(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Standard_Integer EntityPartNum(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		void Start();
		%feature("autodoc", "1");
		Standard_Boolean More();
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		Standard_Boolean IsSingle() const;
		%feature("autodoc", "1");
		Handle_Standard_Transient FirstEntity() const;
		%feature("autodoc", "1");
		Interface_EntityIterator Entities() const;
		%feature("autodoc", "1");
		virtual		void Delete();

};
%feature("shadow") IFGraph_SubPartsIterator::~IFGraph_SubPartsIterator %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFGraph_SubPartsIterator {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFGraph_StrongComponants;
class IFGraph_StrongComponants : public IFGraph_SubPartsIterator {
	public:
		%feature("autodoc", "1");
		IFGraph_StrongComponants(IFGraph_StrongComponants & arg0);
		%feature("autodoc", "1");
		IFGraph_StrongComponants(const Interface_Graph &agraph, const Standard_Boolean whole);

};
%feature("shadow") IFGraph_StrongComponants::~IFGraph_StrongComponants %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFGraph_StrongComponants {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFGraph_SCRoots;
class IFGraph_SCRoots : public IFGraph_StrongComponants {
	public:
		%feature("autodoc", "1");
		IFGraph_SCRoots(IFGraph_SCRoots & arg0);
		%feature("autodoc", "1");
		IFGraph_SCRoots(const Interface_Graph &agraph, const Standard_Boolean whole);
		%feature("autodoc", "1");
		IFGraph_SCRoots(IFGraph_StrongComponants & subparts);

};
%feature("shadow") IFGraph_SCRoots::~IFGraph_SCRoots %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFGraph_SCRoots {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFGraph_ConnectedComponants;
class IFGraph_ConnectedComponants : public IFGraph_SubPartsIterator {
	public:
		%feature("autodoc", "1");
		IFGraph_ConnectedComponants(IFGraph_ConnectedComponants & arg0);
		%feature("autodoc", "1");
		IFGraph_ConnectedComponants(const Interface_Graph &agraph, const Standard_Boolean whole);
		%feature("autodoc", "1");
		virtual		void Evaluate();

};
%feature("shadow") IFGraph_ConnectedComponants::~IFGraph_ConnectedComponants %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFGraph_ConnectedComponants {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFGraph_AllConnected;
class IFGraph_AllConnected : public Interface_GraphContent {
	public:
		%feature("autodoc", "1");
		IFGraph_AllConnected(const Interface_Graph &agraph);
		%feature("autodoc", "1");
		IFGraph_AllConnected(const Interface_Graph &agraph, const Handle_Standard_Transient &ent);
		%feature("autodoc", "1");
		void GetFromEntity(const Handle_Standard_Transient &ent);
		%feature("autodoc", "1");
		void ResetData();
		%feature("autodoc", "1");
		virtual		void Evaluate();

};
%feature("shadow") IFGraph_AllConnected::~IFGraph_AllConnected %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFGraph_AllConnected {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFGraph_Articulations;
class IFGraph_Articulations : public Interface_GraphContent {
	public:
		%feature("autodoc", "1");
		IFGraph_Articulations(const Interface_Graph &agraph, const Standard_Boolean whole);
		%feature("autodoc", "1");
		void GetFromEntity(const Handle_Standard_Transient &ent);
		%feature("autodoc", "1");
		void GetFromIter(const Interface_EntityIterator &iter);
		%feature("autodoc", "1");
		void ResetData();
		%feature("autodoc", "1");
		virtual		void Evaluate();

};
%feature("shadow") IFGraph_Articulations::~IFGraph_Articulations %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFGraph_Articulations {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFGraph_ExternalSources;
class IFGraph_ExternalSources : public Interface_GraphContent {
	public:
		%feature("autodoc", "1");
		IFGraph_ExternalSources(const Interface_Graph &agraph);
		%feature("autodoc", "1");
		void GetFromEntity(const Handle_Standard_Transient &ent);
		%feature("autodoc", "1");
		void GetFromIter(const Interface_EntityIterator &iter);
		%feature("autodoc", "1");
		void ResetData();
		%feature("autodoc", "1");
		virtual		void Evaluate();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty();

};
%feature("shadow") IFGraph_ExternalSources::~IFGraph_ExternalSources %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFGraph_ExternalSources {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFGraph_Cumulate;
class IFGraph_Cumulate : public Interface_GraphContent {
	public:
		%feature("autodoc", "1");
		IFGraph_Cumulate(const Interface_Graph &agraph);
		%feature("autodoc", "1");
		void GetFromEntity(const Handle_Standard_Transient &ent);
		%feature("autodoc", "1");
		void GetFromIter(const Interface_EntityIterator &iter);
		%feature("autodoc", "1");
		void ResetData();
		%feature("autodoc", "1");
		virtual		void Evaluate();
		%feature("autodoc", "1");
		Interface_EntityIterator Overlapped() const;
		%feature("autodoc", "1");
		Interface_EntityIterator Forgotten() const;
		%feature("autodoc", "1");
		Interface_EntityIterator PerCount(const Standard_Integer count=1) const;
		%feature("autodoc", "1");
		Standard_Integer NbTimes(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Standard_Integer HighestNbTimes() const;

};
%feature("shadow") IFGraph_Cumulate::~IFGraph_Cumulate %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFGraph_Cumulate {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFGraph_AllShared;
class IFGraph_AllShared : public Interface_GraphContent {
	public:
		%feature("autodoc", "1");
		IFGraph_AllShared(const Interface_Graph &agraph);
		%feature("autodoc", "1");
		IFGraph_AllShared(const Interface_Graph &agraph, const Handle_Standard_Transient &ent);
		%feature("autodoc", "1");
		void GetFromEntity(const Handle_Standard_Transient &ent);
		%feature("autodoc", "1");
		void GetFromIter(const Interface_EntityIterator &iter);
		%feature("autodoc", "1");
		void ResetData();
		%feature("autodoc", "1");
		virtual		void Evaluate();

};
%feature("shadow") IFGraph_AllShared::~IFGraph_AllShared %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFGraph_AllShared {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFGraph_Cycles;
class IFGraph_Cycles : public IFGraph_SubPartsIterator {
	public:
		%feature("autodoc", "1");
		IFGraph_Cycles(IFGraph_Cycles & arg0);
		%feature("autodoc", "1");
		IFGraph_Cycles(const Interface_Graph &agraph, const Standard_Boolean whole);
		%feature("autodoc", "1");
		IFGraph_Cycles(IFGraph_StrongComponants & subparts);
		%feature("autodoc", "1");
		virtual		void Evaluate();

};
%feature("shadow") IFGraph_Cycles::~IFGraph_Cycles %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFGraph_Cycles {
	void _kill_pointed() {
		delete $self;
	}
};
