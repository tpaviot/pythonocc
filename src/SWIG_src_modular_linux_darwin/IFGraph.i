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
%module IFGraph

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
%extend IFGraph_Compare {
	~IFGraph_Compare() {
	printf("Call custom destructor for instance of IFGraph_Compare\n");
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
%extend IFGraph_SubPartsIterator {
	~IFGraph_SubPartsIterator() {
	printf("Call custom destructor for instance of IFGraph_SubPartsIterator\n");
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

};
%extend IFGraph_Cycles {
	~IFGraph_Cycles() {
	printf("Call custom destructor for instance of IFGraph_Cycles\n");
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
%extend IFGraph_AllConnected {
	~IFGraph_AllConnected() {
	printf("Call custom destructor for instance of IFGraph_AllConnected\n");
	}
};

%nodefaultctor IFGraph_StrongComponants;
class IFGraph_StrongComponants : public IFGraph_SubPartsIterator {
	public:
		%feature("autodoc", "1");
		IFGraph_StrongComponants(IFGraph_StrongComponants & arg0);
		%feature("autodoc", "1");
		IFGraph_StrongComponants(const Interface_Graph &agraph, const Standard_Boolean whole);
		%feature("autodoc", "1");
		virtual		void Evaluate();

};
%extend IFGraph_StrongComponants {
	~IFGraph_StrongComponants() {
	printf("Call custom destructor for instance of IFGraph_StrongComponants\n");
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
%extend IFGraph_ConnectedComponants {
	~IFGraph_ConnectedComponants() {
	printf("Call custom destructor for instance of IFGraph_ConnectedComponants\n");
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
%extend IFGraph_AllShared {
	~IFGraph_AllShared() {
	printf("Call custom destructor for instance of IFGraph_AllShared\n");
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
%extend IFGraph_Articulations {
	~IFGraph_Articulations() {
	printf("Call custom destructor for instance of IFGraph_Articulations\n");
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
%extend IFGraph_ExternalSources {
	~IFGraph_ExternalSources() {
	printf("Call custom destructor for instance of IFGraph_ExternalSources\n");
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
%extend IFGraph_Cumulate {
	~IFGraph_Cumulate() {
	printf("Call custom destructor for instance of IFGraph_Cumulate\n");
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
		%feature("autodoc", "1");
		virtual		void Evaluate();

};
%extend IFGraph_SCRoots {
	~IFGraph_SCRoots() {
	printf("Call custom destructor for instance of IFGraph_SCRoots\n");
	}
};