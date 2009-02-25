/*
##Copyright 2008-2009 Thomas Paviot
##
##thomas.paviot@free.fr
##
##pythonOCC is a computer program whose purpose is to provide a complete set
##of python bindings for OpenCascade library.
##
##This software is governed by the CeCILL license under French law and
##abiding by the rules of distribution of free software.  You can  use, 
##modify and/ or redistribute the software under the terms of the CeCILL
##license as circulated by CEA, CNRS and INRIA at the following URL
##"http://www.cecill.info". 
##
##As a counterpart to the access to the source code and  rights to copy,
##modify and redistribute granted by the license, users are provided only
##with a limited warranty  and the software's author,  the holder of the
##economic rights,  and the successive licensors  have only  limited
##liability. 
##
##In this respect, the user's attention is drawn to the risks associated
##with loading,  using,  modifying and/or developing or reproducing the
##software by the user in light of its specific status of free software,
##that may mean  that it is complicated to manipulate,  and  that  also
##therefore means  that it is reserved for developers  and  experienced
##professionals having in-depth computer knowledge. Users are therefore
##encouraged to load and test the software's suitability as regards their
##requirements in conditions enabling the security of their systems and/or 
##data to be ensured and,  more generally, to use and operate it in the 
##same conditions as regards security. 
##
##The fact that you are presently reading this means that you have had
##knowledge of the CeCILL license and that you accept its terms.
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
		%feature("autodoc", "1");
		virtual		~IFGraph_Compare();

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
		%feature("autodoc", "1");
		virtual		~IFGraph_SubPartsIterator();

};

%nodefaultctor IFGraph_StrongComponants;
class IFGraph_StrongComponants : public IFGraph_SubPartsIterator {
	public:
		%feature("autodoc", "1");
		IFGraph_StrongComponants(IFGraph_StrongComponants & arg0);
		%feature("autodoc", "1");
		IFGraph_StrongComponants(const Interface_Graph &agraph, const Standard_Boolean whole);
		%feature("autodoc", "1");
		virtual		~IFGraph_StrongComponants();

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
		virtual		~IFGraph_SCRoots();

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
		%feature("autodoc", "1");
		virtual		~IFGraph_AllConnected();

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
		%feature("autodoc", "1");
		virtual		~IFGraph_ConnectedComponants();

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
		%feature("autodoc", "1");
		virtual		~IFGraph_AllShared();

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
		%feature("autodoc", "1");
		virtual		~IFGraph_Articulations();

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
		%feature("autodoc", "1");
		virtual		~IFGraph_ExternalSources();

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
		%feature("autodoc", "1");
		virtual		~IFGraph_Cumulate();

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
		%feature("autodoc", "1");
		virtual		~IFGraph_Cycles();

};