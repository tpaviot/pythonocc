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

%module TFunction
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include TFunction_renames.i


%include TFunction_required_python_modules.i


%include TFunction_dependencies.i


%include TFunction_headers.i


enum TFunction_ExecutionStatus {
	TFunction_ES_WrongDefinition,
	TFunction_ES_NotExecuted,
	TFunction_ES_Executing,
	TFunction_ES_Succeeded,
	TFunction_ES_Failed,
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
		Handle_TFunction_HArray1OfDataMapOfGUIDDriver & operator=(const Handle_TFunction_HArray1OfDataMapOfGUIDDriver &aHandle);
		%feature("autodoc", "1");
		Handle_TFunction_HArray1OfDataMapOfGUIDDriver & operator=(const TFunction_HArray1OfDataMapOfGUIDDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_TFunction_HArray1OfDataMapOfGUIDDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TFunction_HArray1OfDataMapOfGUIDDriver {
	TFunction_HArray1OfDataMapOfGUIDDriver* GetObject() {
	return (TFunction_HArray1OfDataMapOfGUIDDriver*)$self->Access();
	}
};
%feature("shadow") Handle_TFunction_HArray1OfDataMapOfGUIDDriver::~Handle_TFunction_HArray1OfDataMapOfGUIDDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TFunction_HArray1OfDataMapOfGUIDDriver {
	void _kill_pointed() {
		delete $self;
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
		Handle_TFunction_DriverTable & operator=(const Handle_TFunction_DriverTable &aHandle);
		%feature("autodoc", "1");
		Handle_TFunction_DriverTable & operator=(const TFunction_DriverTable *anItem);
		%feature("autodoc", "1");
		static		Handle_TFunction_DriverTable DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TFunction_DriverTable {
	TFunction_DriverTable* GetObject() {
	return (TFunction_DriverTable*)$self->Access();
	}
};
%feature("shadow") Handle_TFunction_DriverTable::~Handle_TFunction_DriverTable %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TFunction_DriverTable {
	void _kill_pointed() {
		delete $self;
	}
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
		Handle_TFunction_GraphNode & operator=(const Handle_TFunction_GraphNode &aHandle);
		%feature("autodoc", "1");
		Handle_TFunction_GraphNode & operator=(const TFunction_GraphNode *anItem);
		%feature("autodoc", "1");
		static		Handle_TFunction_GraphNode DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TFunction_GraphNode {
	TFunction_GraphNode* GetObject() {
	return (TFunction_GraphNode*)$self->Access();
	}
};
%feature("shadow") Handle_TFunction_GraphNode::~Handle_TFunction_GraphNode %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TFunction_GraphNode {
	void _kill_pointed() {
		delete $self;
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
		Handle_TFunction_Scope & operator=(const Handle_TFunction_Scope &aHandle);
		%feature("autodoc", "1");
		Handle_TFunction_Scope & operator=(const TFunction_Scope *anItem);
		%feature("autodoc", "1");
		static		Handle_TFunction_Scope DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TFunction_Scope {
	TFunction_Scope* GetObject() {
	return (TFunction_Scope*)$self->Access();
	}
};
%feature("shadow") Handle_TFunction_Scope::~Handle_TFunction_Scope %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TFunction_Scope {
	void _kill_pointed() {
		delete $self;
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
		Handle_TFunction_Driver & operator=(const Handle_TFunction_Driver &aHandle);
		%feature("autodoc", "1");
		Handle_TFunction_Driver & operator=(const TFunction_Driver *anItem);
		%feature("autodoc", "1");
		static		Handle_TFunction_Driver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TFunction_Driver {
	TFunction_Driver* GetObject() {
	return (TFunction_Driver*)$self->Access();
	}
};
%feature("shadow") Handle_TFunction_Driver::~Handle_TFunction_Driver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TFunction_Driver {
	void _kill_pointed() {
		delete $self;
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
		Handle_TFunction_DataMapNodeOfDataMapOfGUIDDriver & operator=(const Handle_TFunction_DataMapNodeOfDataMapOfGUIDDriver &aHandle);
		%feature("autodoc", "1");
		Handle_TFunction_DataMapNodeOfDataMapOfGUIDDriver & operator=(const TFunction_DataMapNodeOfDataMapOfGUIDDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_TFunction_DataMapNodeOfDataMapOfGUIDDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TFunction_DataMapNodeOfDataMapOfGUIDDriver {
	TFunction_DataMapNodeOfDataMapOfGUIDDriver* GetObject() {
	return (TFunction_DataMapNodeOfDataMapOfGUIDDriver*)$self->Access();
	}
};
%feature("shadow") Handle_TFunction_DataMapNodeOfDataMapOfGUIDDriver::~Handle_TFunction_DataMapNodeOfDataMapOfGUIDDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TFunction_DataMapNodeOfDataMapOfGUIDDriver {
	void _kill_pointed() {
		delete $self;
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
		Handle_TFunction_DoubleMapNodeOfDoubleMapOfIntegerLabel & operator=(const Handle_TFunction_DoubleMapNodeOfDoubleMapOfIntegerLabel &aHandle);
		%feature("autodoc", "1");
		Handle_TFunction_DoubleMapNodeOfDoubleMapOfIntegerLabel & operator=(const TFunction_DoubleMapNodeOfDoubleMapOfIntegerLabel *anItem);
		%feature("autodoc", "1");
		static		Handle_TFunction_DoubleMapNodeOfDoubleMapOfIntegerLabel DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TFunction_DoubleMapNodeOfDoubleMapOfIntegerLabel {
	TFunction_DoubleMapNodeOfDoubleMapOfIntegerLabel* GetObject() {
	return (TFunction_DoubleMapNodeOfDoubleMapOfIntegerLabel*)$self->Access();
	}
};
%feature("shadow") Handle_TFunction_DoubleMapNodeOfDoubleMapOfIntegerLabel::~Handle_TFunction_DoubleMapNodeOfDoubleMapOfIntegerLabel %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TFunction_DoubleMapNodeOfDoubleMapOfIntegerLabel {
	void _kill_pointed() {
		delete $self;
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
		Handle_TFunction_Function & operator=(const Handle_TFunction_Function &aHandle);
		%feature("autodoc", "1");
		Handle_TFunction_Function & operator=(const TFunction_Function *anItem);
		%feature("autodoc", "1");
		static		Handle_TFunction_Function DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TFunction_Function {
	TFunction_Function* GetObject() {
	return (TFunction_Function*)$self->Access();
	}
};
%feature("shadow") Handle_TFunction_Function::~Handle_TFunction_Function %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TFunction_Function {
	void _kill_pointed() {
		delete $self;
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
		Handle_TFunction_DataMapNodeOfDataMapOfLabelListOfLabel & operator=(const Handle_TFunction_DataMapNodeOfDataMapOfLabelListOfLabel &aHandle);
		%feature("autodoc", "1");
		Handle_TFunction_DataMapNodeOfDataMapOfLabelListOfLabel & operator=(const TFunction_DataMapNodeOfDataMapOfLabelListOfLabel *anItem);
		%feature("autodoc", "1");
		static		Handle_TFunction_DataMapNodeOfDataMapOfLabelListOfLabel DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TFunction_DataMapNodeOfDataMapOfLabelListOfLabel {
	TFunction_DataMapNodeOfDataMapOfLabelListOfLabel* GetObject() {
	return (TFunction_DataMapNodeOfDataMapOfLabelListOfLabel*)$self->Access();
	}
};
%feature("shadow") Handle_TFunction_DataMapNodeOfDataMapOfLabelListOfLabel::~Handle_TFunction_DataMapNodeOfDataMapOfLabelListOfLabel %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TFunction_DataMapNodeOfDataMapOfLabelListOfLabel {
	void _kill_pointed() {
		delete $self;
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
		TFunction_DataMapOfLabelListOfLabel & operator=(const TFunction_DataMapOfLabelListOfLabel &Other);
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
		%feature("autodoc", "1");
		Standard_Address Find1(const TDF_Label &K) const;
		%feature("autodoc", "1");
		Standard_Address ChangeFind1(const TDF_Label &K);

};
%feature("shadow") TFunction_DataMapOfLabelListOfLabel::~TFunction_DataMapOfLabelListOfLabel %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TFunction_DataMapOfLabelListOfLabel {
	void _kill_pointed() {
		delete $self;
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
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") TFunction_HArray1OfDataMapOfGUIDDriver::~TFunction_HArray1OfDataMapOfGUIDDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TFunction_HArray1OfDataMapOfGUIDDriver {
	void _kill_pointed() {
		delete $self;
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
		TFunction_DoubleMapOfIntegerLabel & operator=(const TFunction_DoubleMapOfIntegerLabel &Other);
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
%feature("shadow") TFunction_DoubleMapOfIntegerLabel::~TFunction_DoubleMapOfIntegerLabel %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TFunction_DoubleMapOfIntegerLabel {
	void _kill_pointed() {
		delete $self;
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
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") TFunction_Driver::~TFunction_Driver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TFunction_Driver {
	void _kill_pointed() {
		delete $self;
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
		TFunction_DataMapOfGUIDDriver & operator=(const TFunction_DataMapOfGUIDDriver &Other);
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
		%feature("autodoc", "1");
		Standard_Address Find1(const Standard_GUID &K) const;
		%feature("autodoc", "1");
		Standard_Address ChangeFind1(const Standard_GUID &K);

};
%feature("shadow") TFunction_DataMapOfGUIDDriver::~TFunction_DataMapOfGUIDDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TFunction_DataMapOfGUIDDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TFunction_Function;
class TFunction_Function : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		static		Handle_TFunction_Function Set(const TDF_Label &L);
		%feature("autodoc", "1");
		static		Handle_TFunction_Function Set(const TDF_Label &L, const Standard_GUID &DriverID);
		%feature("autodoc", "1");
		static		const Standard_GUID & GetID();
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
%extend TFunction_Function {
	Handle_TFunction_Function GetHandle() {
	return *(Handle_TFunction_Function*) &$self;
	}
};
%extend TFunction_Function {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") TFunction_Function::~TFunction_Function %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TFunction_Function {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") TFunction_DataMapIteratorOfDataMapOfGUIDDriver::~TFunction_DataMapIteratorOfDataMapOfGUIDDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TFunction_DataMapIteratorOfDataMapOfGUIDDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TFunction_IFunction;
class TFunction_IFunction {
	public:
		%feature("autodoc", "1");
		static		Standard_Boolean NewFunction(const TDF_Label &L, const Standard_GUID &ID);
		%feature("autodoc", "1");
		static		Standard_Boolean DeleteFunction(const TDF_Label &L);
		%feature("autodoc", "1");
		static		Standard_Boolean UpdateDependencies(const TDF_Label &Access);
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
%feature("shadow") TFunction_IFunction::~TFunction_IFunction %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TFunction_IFunction {
	void _kill_pointed() {
		delete $self;
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
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") TFunction_DataMapNodeOfDataMapOfGUIDDriver::~TFunction_DataMapNodeOfDataMapOfGUIDDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TFunction_DataMapNodeOfDataMapOfGUIDDriver {
	void _kill_pointed() {
		delete $self;
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
		const TFunction_Array1OfDataMapOfGUIDDriver & operator=(const TFunction_Array1OfDataMapOfGUIDDriver &Other);
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
%feature("shadow") TFunction_Array1OfDataMapOfGUIDDriver::~TFunction_Array1OfDataMapOfGUIDDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TFunction_Array1OfDataMapOfGUIDDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TFunction_DoubleMapNodeOfDoubleMapOfIntegerLabel;
class TFunction_DoubleMapNodeOfDoubleMapOfIntegerLabel : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TFunction_DoubleMapNodeOfDoubleMapOfIntegerLabel(const Standard_Integer &K1, const TDF_Label &K2, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
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
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") TFunction_DoubleMapNodeOfDoubleMapOfIntegerLabel::~TFunction_DoubleMapNodeOfDoubleMapOfIntegerLabel %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TFunction_DoubleMapNodeOfDoubleMapOfIntegerLabel {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TFunction_DriverTable;
class TFunction_DriverTable : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		static		Handle_TFunction_DriverTable Get();
		%feature("autodoc", "1");
		TFunction_DriverTable();
		%feature("autodoc", "1");
		Standard_Boolean AddDriver(const Standard_GUID &guid, const Handle_TFunction_Driver &driver, const Standard_Integer thread=0);
		%feature("autodoc", "1");
		Standard_Boolean HasDriver(const Standard_GUID &guid, const Standard_Integer thread=0) const;
		%feature("autodoc", "1");
		Standard_Boolean FindDriver(const Standard_GUID &guid, Handle_TFunction_Driver & driver, const Standard_Integer thread=0) const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};
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
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") TFunction_DriverTable::~TFunction_DriverTable %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TFunction_DriverTable {
	void _kill_pointed() {
		delete $self;
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
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};

};
%feature("shadow") TFunction_Iterator::~TFunction_Iterator %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TFunction_Iterator {
	void _kill_pointed() {
		delete $self;
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
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") TFunction_DataMapNodeOfDataMapOfLabelListOfLabel::~TFunction_DataMapNodeOfDataMapOfLabelListOfLabel %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TFunction_DataMapNodeOfDataMapOfLabelListOfLabel {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") TFunction_DoubleMapIteratorOfDoubleMapOfIntegerLabel::~TFunction_DoubleMapIteratorOfDoubleMapOfIntegerLabel %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TFunction_DoubleMapIteratorOfDoubleMapOfIntegerLabel {
	void _kill_pointed() {
		delete $self;
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
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};

};
%feature("shadow") TFunction_Logbook::~TFunction_Logbook %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TFunction_Logbook {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TFunction_GraphNode;
class TFunction_GraphNode : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		static		Handle_TFunction_GraphNode Set(const TDF_Label &L);
		%feature("autodoc", "1");
		static		const Standard_GUID & GetID();
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
%extend TFunction_GraphNode {
	Handle_TFunction_GraphNode GetHandle() {
	return *(Handle_TFunction_GraphNode*) &$self;
	}
};
%extend TFunction_GraphNode {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") TFunction_GraphNode::~TFunction_GraphNode %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TFunction_GraphNode {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") TFunction_DataMapIteratorOfDataMapOfLabelListOfLabel::~TFunction_DataMapIteratorOfDataMapOfLabelListOfLabel %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TFunction_DataMapIteratorOfDataMapOfLabelListOfLabel {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TFunction_Scope;
class TFunction_Scope : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		static		Handle_TFunction_Scope Set(const TDF_Label &Access);
		%feature("autodoc", "1");
		static		const Standard_GUID & GetID();
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
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};
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
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") TFunction_Scope::~TFunction_Scope %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TFunction_Scope {
	void _kill_pointed() {
		delete $self;
	}
};
