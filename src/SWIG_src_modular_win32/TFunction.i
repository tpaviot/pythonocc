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
%module TFunction

%include typemaps.i
%include cmalloc.i
%include cpointer.i
%include carrays.i
%include exception.i
%include std_list.i
%include std_string.i

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

/*
Standard_Integer & function transformation
*/
%typemap(argout) Standard_Integer &OutValue {
    PyObject *o, *o2, *o3;
    o = PyInt_FromLong(*$1);
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

%typemap(in,numinputs=0) Standard_Integer &OutValue(Standard_Integer temp) {
    $1 = &temp;
}


%include TFunction_dependencies.i


%include TFunction_headers.i


enum TFunction_ExecutionStatus {
	TFunction_ES_WrongDefinition,
	TFunction_ES_NotExecuted,
	TFunction_ES_Executing,
	TFunction_ES_Succeeded,
	TFunction_ES_Failed,
	};



%nodefaultctor Handle_TFunction_GraphNode;
class Handle_TFunction_GraphNode : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_TFunction_GraphNode();
		%feature("autodoc", "1");
		Handle_TFunction_GraphNode(const Handle_TFunction_GraphNode &aHandle);
		%feature("autodoc", "1");
		Handle_TFunction_GraphNode(const TFunction_GraphNode *anItem);
		%feature("autodoc", "1");
		Handle_TFunction_GraphNode const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TFunction_GraphNode {
	TFunction_GraphNode* GetObject() {
	return (TFunction_GraphNode*)$self->Access();
	}
};
%extend Handle_TFunction_GraphNode {
	~Handle_TFunction_GraphNode() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_TFunction_GraphNode\n");}
	}
};

%nodefaultctor Handle_TFunction_DriverTable;
class Handle_TFunction_DriverTable : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TFunction_DriverTable();
		%feature("autodoc", "1");
		Handle_TFunction_DriverTable(const Handle_TFunction_DriverTable &aHandle);
		%feature("autodoc", "1");
		Handle_TFunction_DriverTable(const TFunction_DriverTable *anItem);
		%feature("autodoc", "1");
		Handle_TFunction_DriverTable const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TFunction_DriverTable {
	TFunction_DriverTable* GetObject() {
	return (TFunction_DriverTable*)$self->Access();
	}
};
%extend Handle_TFunction_DriverTable {
	~Handle_TFunction_DriverTable() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_TFunction_DriverTable\n");}
	}
};

%nodefaultctor Handle_TFunction_Scope;
class Handle_TFunction_Scope : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_TFunction_Scope();
		%feature("autodoc", "1");
		Handle_TFunction_Scope(const Handle_TFunction_Scope &aHandle);
		%feature("autodoc", "1");
		Handle_TFunction_Scope(const TFunction_Scope *anItem);
		%feature("autodoc", "1");
		Handle_TFunction_Scope const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TFunction_Scope {
	TFunction_Scope* GetObject() {
	return (TFunction_Scope*)$self->Access();
	}
};
%extend Handle_TFunction_Scope {
	~Handle_TFunction_Scope() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_TFunction_Scope\n");}
	}
};

%nodefaultctor Handle_TFunction_DoubleMapNodeOfDoubleMapOfIntegerLabel;
class Handle_TFunction_DoubleMapNodeOfDoubleMapOfIntegerLabel : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TFunction_DoubleMapNodeOfDoubleMapOfIntegerLabel();
		%feature("autodoc", "1");
		Handle_TFunction_DoubleMapNodeOfDoubleMapOfIntegerLabel(const Handle_TFunction_DoubleMapNodeOfDoubleMapOfIntegerLabel &aHandle);
		%feature("autodoc", "1");
		Handle_TFunction_DoubleMapNodeOfDoubleMapOfIntegerLabel(const TFunction_DoubleMapNodeOfDoubleMapOfIntegerLabel *anItem);
		%feature("autodoc", "1");
		Handle_TFunction_DoubleMapNodeOfDoubleMapOfIntegerLabel const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TFunction_DoubleMapNodeOfDoubleMapOfIntegerLabel {
	TFunction_DoubleMapNodeOfDoubleMapOfIntegerLabel* GetObject() {
	return (TFunction_DoubleMapNodeOfDoubleMapOfIntegerLabel*)$self->Access();
	}
};
%extend Handle_TFunction_DoubleMapNodeOfDoubleMapOfIntegerLabel {
	~Handle_TFunction_DoubleMapNodeOfDoubleMapOfIntegerLabel() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_TFunction_DoubleMapNodeOfDoubleMapOfIntegerLabel\n");}
	}
};

%nodefaultctor Handle_TFunction_Function;
class Handle_TFunction_Function : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_TFunction_Function();
		%feature("autodoc", "1");
		Handle_TFunction_Function(const Handle_TFunction_Function &aHandle);
		%feature("autodoc", "1");
		Handle_TFunction_Function(const TFunction_Function *anItem);
		%feature("autodoc", "1");
		Handle_TFunction_Function const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TFunction_Function {
	TFunction_Function* GetObject() {
	return (TFunction_Function*)$self->Access();
	}
};
%extend Handle_TFunction_Function {
	~Handle_TFunction_Function() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_TFunction_Function\n");}
	}
};

%nodefaultctor Handle_TFunction_DataMapNodeOfDataMapOfLabelListOfLabel;
class Handle_TFunction_DataMapNodeOfDataMapOfLabelListOfLabel : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TFunction_DataMapNodeOfDataMapOfLabelListOfLabel();
		%feature("autodoc", "1");
		Handle_TFunction_DataMapNodeOfDataMapOfLabelListOfLabel(const Handle_TFunction_DataMapNodeOfDataMapOfLabelListOfLabel &aHandle);
		%feature("autodoc", "1");
		Handle_TFunction_DataMapNodeOfDataMapOfLabelListOfLabel(const TFunction_DataMapNodeOfDataMapOfLabelListOfLabel *anItem);
		%feature("autodoc", "1");
		Handle_TFunction_DataMapNodeOfDataMapOfLabelListOfLabel const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TFunction_DataMapNodeOfDataMapOfLabelListOfLabel {
	TFunction_DataMapNodeOfDataMapOfLabelListOfLabel* GetObject() {
	return (TFunction_DataMapNodeOfDataMapOfLabelListOfLabel*)$self->Access();
	}
};
%extend Handle_TFunction_DataMapNodeOfDataMapOfLabelListOfLabel {
	~Handle_TFunction_DataMapNodeOfDataMapOfLabelListOfLabel() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_TFunction_DataMapNodeOfDataMapOfLabelListOfLabel\n");}
	}
};

%nodefaultctor Handle_TFunction_HArray1OfDataMapOfGUIDDriver;
class Handle_TFunction_HArray1OfDataMapOfGUIDDriver : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TFunction_HArray1OfDataMapOfGUIDDriver();
		%feature("autodoc", "1");
		Handle_TFunction_HArray1OfDataMapOfGUIDDriver(const Handle_TFunction_HArray1OfDataMapOfGUIDDriver &aHandle);
		%feature("autodoc", "1");
		Handle_TFunction_HArray1OfDataMapOfGUIDDriver(const TFunction_HArray1OfDataMapOfGUIDDriver *anItem);
		%feature("autodoc", "1");
		Handle_TFunction_HArray1OfDataMapOfGUIDDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TFunction_HArray1OfDataMapOfGUIDDriver {
	TFunction_HArray1OfDataMapOfGUIDDriver* GetObject() {
	return (TFunction_HArray1OfDataMapOfGUIDDriver*)$self->Access();
	}
};
%extend Handle_TFunction_HArray1OfDataMapOfGUIDDriver {
	~Handle_TFunction_HArray1OfDataMapOfGUIDDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_TFunction_HArray1OfDataMapOfGUIDDriver\n");}
	}
};

%nodefaultctor Handle_TFunction_DataMapNodeOfDataMapOfGUIDDriver;
class Handle_TFunction_DataMapNodeOfDataMapOfGUIDDriver : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TFunction_DataMapNodeOfDataMapOfGUIDDriver();
		%feature("autodoc", "1");
		Handle_TFunction_DataMapNodeOfDataMapOfGUIDDriver(const Handle_TFunction_DataMapNodeOfDataMapOfGUIDDriver &aHandle);
		%feature("autodoc", "1");
		Handle_TFunction_DataMapNodeOfDataMapOfGUIDDriver(const TFunction_DataMapNodeOfDataMapOfGUIDDriver *anItem);
		%feature("autodoc", "1");
		Handle_TFunction_DataMapNodeOfDataMapOfGUIDDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TFunction_DataMapNodeOfDataMapOfGUIDDriver {
	TFunction_DataMapNodeOfDataMapOfGUIDDriver* GetObject() {
	return (TFunction_DataMapNodeOfDataMapOfGUIDDriver*)$self->Access();
	}
};
%extend Handle_TFunction_DataMapNodeOfDataMapOfGUIDDriver {
	~Handle_TFunction_DataMapNodeOfDataMapOfGUIDDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_TFunction_DataMapNodeOfDataMapOfGUIDDriver\n");}
	}
};

%nodefaultctor Handle_TFunction_Driver;
class Handle_TFunction_Driver : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TFunction_Driver();
		%feature("autodoc", "1");
		Handle_TFunction_Driver(const Handle_TFunction_Driver &aHandle);
		%feature("autodoc", "1");
		Handle_TFunction_Driver(const TFunction_Driver *anItem);
		%feature("autodoc", "1");
		Handle_TFunction_Driver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TFunction_Driver {
	TFunction_Driver* GetObject() {
	return (TFunction_Driver*)$self->Access();
	}
};
%extend Handle_TFunction_Driver {
	~Handle_TFunction_Driver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_TFunction_Driver\n");}
	}
};

%nodefaultctor TFunction_HArray1OfDataMapOfGUIDDriver;
class TFunction_HArray1OfDataMapOfGUIDDriver : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TFunction_HArray1OfDataMapOfGUIDDriver(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TFunction_HArray1OfDataMapOfGUIDDriver(const Standard_Integer Low, const Standard_Integer Up, const TFunction_DataMapOfGUIDDriver &V);
		%feature("autodoc", "1");
		void Init(const TFunction_DataMapOfGUIDDriver &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const TFunction_DataMapOfGUIDDriver &Value);
		%feature("autodoc", "1");
		const TFunction_DataMapOfGUIDDriver & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		TFunction_DataMapOfGUIDDriver & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const TFunction_Array1OfDataMapOfGUIDDriver & Array1() const;
		%feature("autodoc", "1");
		TFunction_Array1OfDataMapOfGUIDDriver & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TFunction_HArray1OfDataMapOfGUIDDriver {
	Handle_TFunction_HArray1OfDataMapOfGUIDDriver GetHandle() {
	return *(Handle_TFunction_HArray1OfDataMapOfGUIDDriver*) &$self;
	}
};
%extend TFunction_HArray1OfDataMapOfGUIDDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend TFunction_HArray1OfDataMapOfGUIDDriver {
	~TFunction_HArray1OfDataMapOfGUIDDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TFunction_HArray1OfDataMapOfGUIDDriver\n");}
	}
};

%nodefaultctor TFunction_DataMapNodeOfDataMapOfLabelListOfLabel;
class TFunction_DataMapNodeOfDataMapOfLabelListOfLabel : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TFunction_DataMapNodeOfDataMapOfLabelListOfLabel(const TDF_Label &K, const TDF_LabelList &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TDF_Label & Key() const;
		%feature("autodoc", "1");
		TDF_LabelList & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TFunction_DataMapNodeOfDataMapOfLabelListOfLabel {
	Handle_TFunction_DataMapNodeOfDataMapOfLabelListOfLabel GetHandle() {
	return *(Handle_TFunction_DataMapNodeOfDataMapOfLabelListOfLabel*) &$self;
	}
};
%extend TFunction_DataMapNodeOfDataMapOfLabelListOfLabel {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend TFunction_DataMapNodeOfDataMapOfLabelListOfLabel {
	~TFunction_DataMapNodeOfDataMapOfLabelListOfLabel() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TFunction_DataMapNodeOfDataMapOfLabelListOfLabel\n");}
	}
};

%nodefaultctor TFunction_DoubleMapOfIntegerLabel;
class TFunction_DoubleMapOfIntegerLabel : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TFunction_DoubleMapOfIntegerLabel(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TFunction_DoubleMapOfIntegerLabel & Assign(const TFunction_DoubleMapOfIntegerLabel &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Bind(const Standard_Integer &K1, const TDF_Label &K2);
		%feature("autodoc", "1");
		Standard_Boolean AreBound(const Standard_Integer &K1, const TDF_Label &K2) const;
		%feature("autodoc", "1");
		Standard_Boolean IsBound1(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Standard_Boolean IsBound2(const TDF_Label &K) const;
		%feature("autodoc", "1");
		const TDF_Label & Find1(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		const Standard_Integer & Find2(const TDF_Label &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind1(const Standard_Integer &K);
		%feature("autodoc", "1");
		Standard_Boolean UnBind2(const TDF_Label &K);

};
%extend TFunction_DoubleMapOfIntegerLabel {
	~TFunction_DoubleMapOfIntegerLabel() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TFunction_DoubleMapOfIntegerLabel\n");}
	}
};

%nodefaultctor TFunction_Scope;
class TFunction_Scope : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_TFunction_Scope Set(const TDF_Label &Access);
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		TFunction_Scope();
		%feature("autodoc", "1");
		Standard_Boolean AddFunction(const TDF_Label &L);
		%feature("autodoc", "1");
		Standard_Boolean RemoveFunction(const TDF_Label &L);
		%feature("autodoc", "1");
		Standard_Boolean RemoveFunction(const Standard_Integer ID);
		%feature("autodoc", "1");
		void RemoveAllFunctions();
		%feature("autodoc", "1");
		Standard_Boolean HasFunction(const Standard_Integer ID) const;
		%feature("autodoc", "1");
		Standard_Boolean HasFunction(const TDF_Label &L) const;
		%feature("autodoc", "1");
		Standard_Integer GetFunction(const TDF_Label &L) const;
		%feature("autodoc", "1");
		const TDF_Label & GetFunction(const Standard_Integer ID) const;
		%feature("autodoc", "1");
		TFunction_Logbook & GetLogbook();
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &with);
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &into, const Handle_TDF_RelocationTable &RT) const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_OStream & Dump(Standard_OStream & anOS) const;
		%feature("autodoc", "1");
		const TFunction_DoubleMapOfIntegerLabel & GetFunctions() const;
		%feature("autodoc", "1");
		TFunction_DoubleMapOfIntegerLabel & ChangeFunctions();
		%feature("autodoc", "1");
		void SetFreeID(const Standard_Integer ID);
		%feature("autodoc", "1");
		Standard_Integer GetFreeID() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TFunction_Scope {
	Handle_TFunction_Scope GetHandle() {
	return *(Handle_TFunction_Scope*) &$self;
	}
};
%extend TFunction_Scope {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend TFunction_Scope {
	~TFunction_Scope() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TFunction_Scope\n");}
	}
};

%nodefaultctor TFunction_DataMapOfGUIDDriver;
class TFunction_DataMapOfGUIDDriver : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TFunction_DataMapOfGUIDDriver(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TFunction_DataMapOfGUIDDriver & Assign(const TFunction_DataMapOfGUIDDriver &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Standard_GUID &K, const Handle_TFunction_Driver &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Standard_GUID &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Standard_GUID &K);
		%feature("autodoc", "1");
		const Handle_TFunction_Driver & Find(const Standard_GUID &K) const;
		%feature("autodoc", "1");
		const Handle_TFunction_Driver & operator()(const Standard_GUID &K) const;
		%feature("autodoc", "1");
		Handle_TFunction_Driver & ChangeFind(const Standard_GUID &K);
		%feature("autodoc", "1");
		Handle_TFunction_Driver & operator()(const Standard_GUID &K);

};
%extend TFunction_DataMapOfGUIDDriver {
	~TFunction_DataMapOfGUIDDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TFunction_DataMapOfGUIDDriver\n");}
	}
};

%nodefaultctor TFunction_IFunction;
class TFunction_IFunction {
	public:
		%feature("autodoc", "1");
		Standard_Boolean NewFunction(const TDF_Label &L, const Standard_GUID &ID);
		%feature("autodoc", "1");
		Standard_Boolean DeleteFunction(const TDF_Label &L);
		%feature("autodoc", "1");
		Standard_Boolean UpdateDependencies(const TDF_Label &Access);
		%feature("autodoc", "1");
		TFunction_IFunction();
		%feature("autodoc", "1");
		TFunction_IFunction(const TDF_Label &L);
		%feature("autodoc", "1");
		void Init(const TDF_Label &L);
		%feature("autodoc", "1");
		const TDF_Label & Label() const;
		%feature("autodoc", "1");
		Standard_Boolean UpdateDependencies() const;
		%feature("autodoc", "1");
		void Arguments(TDF_LabelList & args) const;
		%feature("autodoc", "1");
		void Results(TDF_LabelList & res) const;
		%feature("autodoc", "1");
		void GetPrevious(TDF_LabelList & prev) const;
		%feature("autodoc", "1");
		void GetNext(TDF_LabelList & prev) const;
		%feature("autodoc", "1");
		TFunction_ExecutionStatus GetStatus() const;
		%feature("autodoc", "1");
		void SetStatus(const TFunction_ExecutionStatus status) const;
		%feature("autodoc", "1");
		const TFunction_DoubleMapOfIntegerLabel & GetAllFunctions() const;
		%feature("autodoc", "1");
		TFunction_Logbook & GetLogbook() const;
		%feature("autodoc", "1");
		Handle_TFunction_Driver GetDriver(const Standard_Integer thread=0) const;
		%feature("autodoc", "1");
		Handle_TFunction_GraphNode GetGraphNode() const;

};
%extend TFunction_IFunction {
	~TFunction_IFunction() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TFunction_IFunction\n");}
	}
};

%nodefaultctor TFunction_Array1OfDataMapOfGUIDDriver;
class TFunction_Array1OfDataMapOfGUIDDriver {
	public:
		%feature("autodoc", "1");
		TFunction_Array1OfDataMapOfGUIDDriver(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TFunction_Array1OfDataMapOfGUIDDriver(const TFunction_DataMapOfGUIDDriver &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const TFunction_DataMapOfGUIDDriver &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const TFunction_Array1OfDataMapOfGUIDDriver & Assign(const TFunction_Array1OfDataMapOfGUIDDriver &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const TFunction_DataMapOfGUIDDriver &Value);
		%feature("autodoc", "1");
		const TFunction_DataMapOfGUIDDriver & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const TFunction_DataMapOfGUIDDriver & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		TFunction_DataMapOfGUIDDriver & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		TFunction_DataMapOfGUIDDriver & operator()(const Standard_Integer Index);

};
%extend TFunction_Array1OfDataMapOfGUIDDriver {
	~TFunction_Array1OfDataMapOfGUIDDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TFunction_Array1OfDataMapOfGUIDDriver\n");}
	}
};

%nodefaultctor TFunction_Function;
class TFunction_Function : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_TFunction_Function Set(const TDF_Label &L);
		%feature("autodoc", "1");
		Handle_TFunction_Function Set(const TDF_Label &L, const Standard_GUID &DriverID);
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		TFunction_Function();
		%feature("autodoc", "1");
		const Standard_GUID & GetDriverGUID() const;
		%feature("autodoc", "1");
		void SetDriverGUID(const Standard_GUID &guid);
		%feature("autodoc", "1");
		Standard_Boolean Failed() const;
		%feature("autodoc", "1");
		void SetFailure(const Standard_Integer mode=0);
		%feature("autodoc", "1");
		Standard_Integer GetFailure() const;
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &with);
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &into, const Handle_TDF_RelocationTable &RT) const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void References(const Handle_TDF_DataSet &aDataSet) const;
		%feature("autodoc", "1");
		virtual		Standard_OStream & Dump(Standard_OStream & anOS) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TFunction_Function {
	Handle_TFunction_Function GetHandle() {
	return *(Handle_TFunction_Function*) &$self;
	}
};
%extend TFunction_Function {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend TFunction_Function {
	~TFunction_Function() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TFunction_Function\n");}
	}
};

%nodefaultctor TFunction_Iterator;
class TFunction_Iterator {
	public:
		%feature("autodoc", "1");
		TFunction_Iterator();
		%feature("autodoc", "1");
		TFunction_Iterator(const TDF_Label &Access);
		%feature("autodoc", "1");
		virtual		void Init(const TDF_Label &Access);
		%feature("autodoc", "1");
		void SetUsageOfExecutionStatus(const Standard_Boolean usage);
		%feature("autodoc", "1");
		Standard_Boolean GetUsageOfExecutionStatus() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer GetMaxNbThreads() const;
		%feature("autodoc", "1");
		virtual		const TDF_LabelList & Current() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean More() const;
		%feature("autodoc", "1");
		virtual		void Next();
		%feature("autodoc", "1");
		TFunction_ExecutionStatus GetStatus(const TDF_Label &func) const;
		%feature("autodoc", "1");
		void SetStatus(const TDF_Label &func, const TFunction_ExecutionStatus status) const;
		%feature("autodoc", "1");
		Standard_OStream & Dump(Standard_OStream & OS) const;

};
%extend TFunction_Iterator {
	~TFunction_Iterator() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TFunction_Iterator\n");}
	}
};

%nodefaultctor TFunction_DataMapOfLabelListOfLabel;
class TFunction_DataMapOfLabelListOfLabel : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TFunction_DataMapOfLabelListOfLabel(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TFunction_DataMapOfLabelListOfLabel & Assign(const TFunction_DataMapOfLabelListOfLabel &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TDF_Label &K, const TDF_LabelList &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TDF_Label &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TDF_Label &K);
		%feature("autodoc", "1");
		const TDF_LabelList & Find(const TDF_Label &K) const;
		%feature("autodoc", "1");
		const TDF_LabelList & operator()(const TDF_Label &K) const;
		%feature("autodoc", "1");
		TDF_LabelList & ChangeFind(const TDF_Label &K);
		%feature("autodoc", "1");
		TDF_LabelList & operator()(const TDF_Label &K);

};
%extend TFunction_DataMapOfLabelListOfLabel {
	~TFunction_DataMapOfLabelListOfLabel() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TFunction_DataMapOfLabelListOfLabel\n");}
	}
};

%nodefaultctor TFunction_DataMapIteratorOfDataMapOfGUIDDriver;
class TFunction_DataMapIteratorOfDataMapOfGUIDDriver : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		TFunction_DataMapIteratorOfDataMapOfGUIDDriver();
		%feature("autodoc", "1");
		TFunction_DataMapIteratorOfDataMapOfGUIDDriver(const TFunction_DataMapOfGUIDDriver &aMap);
		%feature("autodoc", "1");
		void Initialize(const TFunction_DataMapOfGUIDDriver &aMap);
		%feature("autodoc", "1");
		const Standard_GUID & Key() const;
		%feature("autodoc", "1");
		const Handle_TFunction_Driver & Value() const;

};
%extend TFunction_DataMapIteratorOfDataMapOfGUIDDriver {
	~TFunction_DataMapIteratorOfDataMapOfGUIDDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TFunction_DataMapIteratorOfDataMapOfGUIDDriver\n");}
	}
};

%nodefaultctor TFunction_DriverTable;
class TFunction_DriverTable : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TFunction_DriverTable Get();
		%feature("autodoc", "1");
		TFunction_DriverTable();
		%feature("autodoc", "1");
		Standard_Boolean AddDriver(const Standard_GUID &guid, const Handle_TFunction_Driver &driver, const Standard_Integer thread=0);
		%feature("autodoc", "1");
		Standard_Boolean HasDriver(const Standard_GUID &guid, const Standard_Integer thread=0) const;
		%feature("autodoc", "1");
		Standard_Boolean FindDriver(const Standard_GUID &guid, Handle_TFunction_Driver & driver, const Standard_Integer thread=0) const;
		%feature("autodoc", "1");
		Standard_OStream & Dump(Standard_OStream & anOS) const;
		%feature("autodoc", "1");
		Standard_Boolean RemoveDriver(const Standard_GUID &guid, const Standard_Integer thread=0);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TFunction_DriverTable {
	Handle_TFunction_DriverTable GetHandle() {
	return *(Handle_TFunction_DriverTable*) &$self;
	}
};
%extend TFunction_DriverTable {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend TFunction_DriverTable {
	~TFunction_DriverTable() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TFunction_DriverTable\n");}
	}
};

%nodefaultctor TFunction_DoubleMapIteratorOfDoubleMapOfIntegerLabel;
class TFunction_DoubleMapIteratorOfDoubleMapOfIntegerLabel : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		TFunction_DoubleMapIteratorOfDoubleMapOfIntegerLabel();
		%feature("autodoc", "1");
		TFunction_DoubleMapIteratorOfDoubleMapOfIntegerLabel(const TFunction_DoubleMapOfIntegerLabel &aMap);
		%feature("autodoc", "1");
		void Initialize(const TFunction_DoubleMapOfIntegerLabel &aMap);
		%feature("autodoc", "1");
		const Standard_Integer & Key1() const;
		%feature("autodoc", "1");
		const TDF_Label & Key2() const;

};
%extend TFunction_DoubleMapIteratorOfDoubleMapOfIntegerLabel {
	~TFunction_DoubleMapIteratorOfDoubleMapOfIntegerLabel() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TFunction_DoubleMapIteratorOfDoubleMapOfIntegerLabel\n");}
	}
};

%nodefaultctor TFunction_DataMapNodeOfDataMapOfGUIDDriver;
class TFunction_DataMapNodeOfDataMapOfGUIDDriver : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TFunction_DataMapNodeOfDataMapOfGUIDDriver(const Standard_GUID &K, const Handle_TFunction_Driver &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Standard_GUID & Key() const;
		%feature("autodoc", "1");
		Handle_TFunction_Driver & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TFunction_DataMapNodeOfDataMapOfGUIDDriver {
	Handle_TFunction_DataMapNodeOfDataMapOfGUIDDriver GetHandle() {
	return *(Handle_TFunction_DataMapNodeOfDataMapOfGUIDDriver*) &$self;
	}
};
%extend TFunction_DataMapNodeOfDataMapOfGUIDDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend TFunction_DataMapNodeOfDataMapOfGUIDDriver {
	~TFunction_DataMapNodeOfDataMapOfGUIDDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TFunction_DataMapNodeOfDataMapOfGUIDDriver\n");}
	}
};

%nodefaultctor TFunction_DoubleMapNodeOfDoubleMapOfIntegerLabel;
class TFunction_DoubleMapNodeOfDoubleMapOfIntegerLabel : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TFunction_DoubleMapNodeOfDoubleMapOfIntegerLabel(const Standard_Integer &K1, const TDF_Label &K2, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
		%feature("autodoc", "1");
		Standard_Integer & Key1() const;
		%feature("autodoc", "1");
		TDF_Label & Key2() const;
		%feature("autodoc", "1");
		TCollection_MapNodePtr & Next2() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TFunction_DoubleMapNodeOfDoubleMapOfIntegerLabel {
	Handle_TFunction_DoubleMapNodeOfDoubleMapOfIntegerLabel GetHandle() {
	return *(Handle_TFunction_DoubleMapNodeOfDoubleMapOfIntegerLabel*) &$self;
	}
};
%extend TFunction_DoubleMapNodeOfDoubleMapOfIntegerLabel {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend TFunction_DoubleMapNodeOfDoubleMapOfIntegerLabel {
	~TFunction_DoubleMapNodeOfDoubleMapOfIntegerLabel() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TFunction_DoubleMapNodeOfDoubleMapOfIntegerLabel\n");}
	}
};

%nodefaultctor TFunction_GraphNode;
class TFunction_GraphNode : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_TFunction_GraphNode Set(const TDF_Label &L);
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		TFunction_GraphNode();
		%feature("autodoc", "1");
		Standard_Boolean AddPrevious(const Standard_Integer funcID);
		%feature("autodoc", "1");
		Standard_Boolean AddPrevious(const TDF_Label &func);
		%feature("autodoc", "1");
		Standard_Boolean RemovePrevious(const Standard_Integer funcID);
		%feature("autodoc", "1");
		Standard_Boolean RemovePrevious(const TDF_Label &func);
		%feature("autodoc", "1");
		const TColStd_MapOfInteger & GetPrevious() const;
		%feature("autodoc", "1");
		void RemoveAllPrevious();
		%feature("autodoc", "1");
		Standard_Boolean AddNext(const Standard_Integer funcID);
		%feature("autodoc", "1");
		Standard_Boolean AddNext(const TDF_Label &func);
		%feature("autodoc", "1");
		Standard_Boolean RemoveNext(const Standard_Integer funcID);
		%feature("autodoc", "1");
		Standard_Boolean RemoveNext(const TDF_Label &func);
		%feature("autodoc", "1");
		const TColStd_MapOfInteger & GetNext() const;
		%feature("autodoc", "1");
		void RemoveAllNext();
		%feature("autodoc", "1");
		TFunction_ExecutionStatus GetStatus() const;
		%feature("autodoc", "1");
		void SetStatus(const TFunction_ExecutionStatus status);
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &with);
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &into, const Handle_TDF_RelocationTable &RT) const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void References(const Handle_TDF_DataSet &aDataSet) const;
		%feature("autodoc", "1");
		virtual		Standard_OStream & Dump(Standard_OStream & anOS) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TFunction_GraphNode {
	Handle_TFunction_GraphNode GetHandle() {
	return *(Handle_TFunction_GraphNode*) &$self;
	}
};
%extend TFunction_GraphNode {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend TFunction_GraphNode {
	~TFunction_GraphNode() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TFunction_GraphNode\n");}
	}
};

%nodefaultctor TFunction_Driver;
class TFunction_Driver : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		void Init(const TDF_Label &L);
		%feature("autodoc", "1");
		TDF_Label Label() const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &log) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Arguments(TDF_LabelList & args) const;
		%feature("autodoc", "1");
		virtual		void Results(TDF_LabelList & res) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TFunction_Driver {
	Handle_TFunction_Driver GetHandle() {
	return *(Handle_TFunction_Driver*) &$self;
	}
};
%extend TFunction_Driver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend TFunction_Driver {
	~TFunction_Driver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TFunction_Driver\n");}
	}
};

%nodefaultctor TFunction_DataMapIteratorOfDataMapOfLabelListOfLabel;
class TFunction_DataMapIteratorOfDataMapOfLabelListOfLabel : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		TFunction_DataMapIteratorOfDataMapOfLabelListOfLabel();
		%feature("autodoc", "1");
		TFunction_DataMapIteratorOfDataMapOfLabelListOfLabel(const TFunction_DataMapOfLabelListOfLabel &aMap);
		%feature("autodoc", "1");
		void Initialize(const TFunction_DataMapOfLabelListOfLabel &aMap);
		%feature("autodoc", "1");
		const TDF_Label & Key() const;
		%feature("autodoc", "1");
		const TDF_LabelList & Value() const;

};
%extend TFunction_DataMapIteratorOfDataMapOfLabelListOfLabel {
	~TFunction_DataMapIteratorOfDataMapOfLabelListOfLabel() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TFunction_DataMapIteratorOfDataMapOfLabelListOfLabel\n");}
	}
};

%nodefaultctor TFunction_Logbook;
class TFunction_Logbook {
	public:
		%feature("autodoc", "1");
		TFunction_Logbook();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void SetTouched(const TDF_Label &L);
		%feature("autodoc", "1");
		void SetImpacted(const TDF_Label &L, const Standard_Boolean WithChildren=0);
		%feature("autodoc", "1");
		void SetValid(const TDF_Label &L, const Standard_Boolean WithChildren=0);
		%feature("autodoc", "1");
		TDF_LabelMap & ChangeValid();
		%feature("autodoc", "1");
		Standard_Boolean IsModified(const TDF_Label &L, const Standard_Boolean WithChildren=0) const;
		%feature("autodoc", "1");
		const TDF_LabelMap & GetTouched() const;
		%feature("autodoc", "1");
		const TDF_LabelMap & GetImpacted() const;
		%feature("autodoc", "1");
		const TDF_LabelMap & GetValid() const;
		%feature("autodoc", "1");
		void Done(const Standard_Boolean status);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_OStream & Dump(Standard_OStream & stream) const;

};
%extend TFunction_Logbook {
	~TFunction_Logbook() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TFunction_Logbook\n");}
	}
};