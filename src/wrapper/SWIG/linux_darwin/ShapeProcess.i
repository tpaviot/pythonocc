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

%module ShapeProcess
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include ShapeProcess_renames.i


%include ShapeProcess_required_python_modules.i


%include ShapeProcess_dependencies.i


%include ShapeProcess_headers.i




%nodefaultctor Handle_ShapeProcess_StackItemOfDictionaryOfOperator;
class Handle_ShapeProcess_StackItemOfDictionaryOfOperator : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_ShapeProcess_StackItemOfDictionaryOfOperator();
		%feature("autodoc", "1");
		Handle_ShapeProcess_StackItemOfDictionaryOfOperator(const Handle_ShapeProcess_StackItemOfDictionaryOfOperator &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeProcess_StackItemOfDictionaryOfOperator(const ShapeProcess_StackItemOfDictionaryOfOperator *anItem);
		%feature("autodoc", "1");
		Handle_ShapeProcess_StackItemOfDictionaryOfOperator & operator=(const Handle_ShapeProcess_StackItemOfDictionaryOfOperator &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeProcess_StackItemOfDictionaryOfOperator & operator=(const ShapeProcess_StackItemOfDictionaryOfOperator *anItem);
		%feature("autodoc", "1");
		static		Handle_ShapeProcess_StackItemOfDictionaryOfOperator const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeProcess_StackItemOfDictionaryOfOperator {
	ShapeProcess_StackItemOfDictionaryOfOperator* GetObject() {
	return (ShapeProcess_StackItemOfDictionaryOfOperator*)$self->Access();
	}
};
%feature("shadow") Handle_ShapeProcess_StackItemOfDictionaryOfOperator::~Handle_ShapeProcess_StackItemOfDictionaryOfOperator %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ShapeProcess_StackItemOfDictionaryOfOperator {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_ShapeProcess_Operator;
class Handle_ShapeProcess_Operator : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_ShapeProcess_Operator();
		%feature("autodoc", "1");
		Handle_ShapeProcess_Operator(const Handle_ShapeProcess_Operator &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeProcess_Operator(const ShapeProcess_Operator *anItem);
		%feature("autodoc", "1");
		Handle_ShapeProcess_Operator & operator=(const Handle_ShapeProcess_Operator &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeProcess_Operator & operator=(const ShapeProcess_Operator *anItem);
		%feature("autodoc", "1");
		static		Handle_ShapeProcess_Operator const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeProcess_Operator {
	ShapeProcess_Operator* GetObject() {
	return (ShapeProcess_Operator*)$self->Access();
	}
};
%feature("shadow") Handle_ShapeProcess_Operator::~Handle_ShapeProcess_Operator %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ShapeProcess_Operator {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_ShapeProcess_UOperator;
class Handle_ShapeProcess_UOperator : public Handle_ShapeProcess_Operator {
	public:
		%feature("autodoc", "1");
		Handle_ShapeProcess_UOperator();
		%feature("autodoc", "1");
		Handle_ShapeProcess_UOperator(const Handle_ShapeProcess_UOperator &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeProcess_UOperator(const ShapeProcess_UOperator *anItem);
		%feature("autodoc", "1");
		Handle_ShapeProcess_UOperator & operator=(const Handle_ShapeProcess_UOperator &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeProcess_UOperator & operator=(const ShapeProcess_UOperator *anItem);
		%feature("autodoc", "1");
		static		Handle_ShapeProcess_UOperator const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeProcess_UOperator {
	ShapeProcess_UOperator* GetObject() {
	return (ShapeProcess_UOperator*)$self->Access();
	}
};
%feature("shadow") Handle_ShapeProcess_UOperator::~Handle_ShapeProcess_UOperator %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ShapeProcess_UOperator {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_ShapeProcess_Context;
class Handle_ShapeProcess_Context : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_ShapeProcess_Context();
		%feature("autodoc", "1");
		Handle_ShapeProcess_Context(const Handle_ShapeProcess_Context &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeProcess_Context(const ShapeProcess_Context *anItem);
		%feature("autodoc", "1");
		Handle_ShapeProcess_Context & operator=(const Handle_ShapeProcess_Context &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeProcess_Context & operator=(const ShapeProcess_Context *anItem);
		%feature("autodoc", "1");
		static		Handle_ShapeProcess_Context const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeProcess_Context {
	ShapeProcess_Context* GetObject() {
	return (ShapeProcess_Context*)$self->Access();
	}
};
%feature("shadow") Handle_ShapeProcess_Context::~Handle_ShapeProcess_Context %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ShapeProcess_Context {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_ShapeProcess_DictionaryOfOperator;
class Handle_ShapeProcess_DictionaryOfOperator : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_ShapeProcess_DictionaryOfOperator();
		%feature("autodoc", "1");
		Handle_ShapeProcess_DictionaryOfOperator(const Handle_ShapeProcess_DictionaryOfOperator &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeProcess_DictionaryOfOperator(const ShapeProcess_DictionaryOfOperator *anItem);
		%feature("autodoc", "1");
		Handle_ShapeProcess_DictionaryOfOperator & operator=(const Handle_ShapeProcess_DictionaryOfOperator &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeProcess_DictionaryOfOperator & operator=(const ShapeProcess_DictionaryOfOperator *anItem);
		%feature("autodoc", "1");
		static		Handle_ShapeProcess_DictionaryOfOperator const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeProcess_DictionaryOfOperator {
	ShapeProcess_DictionaryOfOperator* GetObject() {
	return (ShapeProcess_DictionaryOfOperator*)$self->Access();
	}
};
%feature("shadow") Handle_ShapeProcess_DictionaryOfOperator::~Handle_ShapeProcess_DictionaryOfOperator %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ShapeProcess_DictionaryOfOperator {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_ShapeProcess_ShapeContext;
class Handle_ShapeProcess_ShapeContext : public Handle_ShapeProcess_Context {
	public:
		%feature("autodoc", "1");
		Handle_ShapeProcess_ShapeContext();
		%feature("autodoc", "1");
		Handle_ShapeProcess_ShapeContext(const Handle_ShapeProcess_ShapeContext &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeProcess_ShapeContext(const ShapeProcess_ShapeContext *anItem);
		%feature("autodoc", "1");
		Handle_ShapeProcess_ShapeContext & operator=(const Handle_ShapeProcess_ShapeContext &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeProcess_ShapeContext & operator=(const ShapeProcess_ShapeContext *anItem);
		%feature("autodoc", "1");
		static		Handle_ShapeProcess_ShapeContext const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeProcess_ShapeContext {
	ShapeProcess_ShapeContext* GetObject() {
	return (ShapeProcess_ShapeContext*)$self->Access();
	}
};
%feature("shadow") Handle_ShapeProcess_ShapeContext::~Handle_ShapeProcess_ShapeContext %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ShapeProcess_ShapeContext {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeProcess_Operator;
class ShapeProcess_Operator : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		virtual		Standard_Boolean Perform(const Handle_ShapeProcess_Context &context);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ShapeProcess_Operator {
	Handle_ShapeProcess_Operator GetHandle() {
	return *(Handle_ShapeProcess_Operator*) &$self;
	}
};
%extend ShapeProcess_Operator {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") ShapeProcess_Operator::~ShapeProcess_Operator %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeProcess_Operator {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeProcess_UOperator;
class ShapeProcess_UOperator : public ShapeProcess_Operator {
	public:
		%feature("autodoc", "1");
		ShapeProcess_UOperator(const ShapeProcess_OperFunc func);

};
%extend ShapeProcess_UOperator {
	Handle_ShapeProcess_UOperator GetHandle() {
	return *(Handle_ShapeProcess_UOperator*) &$self;
	}
};
%extend ShapeProcess_UOperator {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") ShapeProcess_UOperator::~ShapeProcess_UOperator %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeProcess_UOperator {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeProcess_OperLibrary;
class ShapeProcess_OperLibrary {
	public:
		%feature("autodoc", "1");
		ShapeProcess_OperLibrary();
		%feature("autodoc", "1");
		static		void Init();
		%feature("autodoc", "1");
		static		TopoDS_Shape ApplyModifier(const TopoDS_Shape S, const Handle_ShapeProcess_ShapeContext &context, const Handle_BRepTools_Modification &M, TopTools_DataMapOfShapeShape & map);

};
%feature("shadow") ShapeProcess_OperLibrary::~ShapeProcess_OperLibrary %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeProcess_OperLibrary {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeProcess;
class ShapeProcess {
	public:
		%feature("autodoc", "1");
		ShapeProcess();
		%feature("autodoc", "1");
		static		Standard_Boolean RegisterOperator(const char * name, const Handle_ShapeProcess_Operator &op);
		%feature("autodoc", "1");
		static		Standard_Boolean FindOperator(const char * name, Handle_ShapeProcess_Operator & op);
		%feature("autodoc", "1");
		static		Standard_Boolean Perform(const Handle_ShapeProcess_Context &context, const char * seq);

};
%feature("shadow") ShapeProcess::~ShapeProcess %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeProcess {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeProcess_StackItemOfDictionaryOfOperator;
class ShapeProcess_StackItemOfDictionaryOfOperator : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		ShapeProcess_StackItemOfDictionaryOfOperator();
		%feature("autodoc", "1");
		ShapeProcess_StackItemOfDictionaryOfOperator(const Handle_ShapeProcess_StackItemOfDictionaryOfOperator &previous);
		%feature("autodoc", "1");
		Handle_ShapeProcess_StackItemOfDictionaryOfOperator Previous() const;
		%feature("autodoc", "1");
		Handle_ShapeProcess_DictionaryOfOperator Value() const;
		%feature("autodoc", "1");
		void SetValue(const Handle_ShapeProcess_DictionaryOfOperator &cval);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ShapeProcess_StackItemOfDictionaryOfOperator {
	Handle_ShapeProcess_StackItemOfDictionaryOfOperator GetHandle() {
	return *(Handle_ShapeProcess_StackItemOfDictionaryOfOperator*) &$self;
	}
};
%extend ShapeProcess_StackItemOfDictionaryOfOperator {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") ShapeProcess_StackItemOfDictionaryOfOperator::~ShapeProcess_StackItemOfDictionaryOfOperator %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeProcess_StackItemOfDictionaryOfOperator {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeProcess_IteratorOfDictionaryOfOperator;
class ShapeProcess_IteratorOfDictionaryOfOperator {
	public:
		%feature("autodoc", "1");
		ShapeProcess_IteratorOfDictionaryOfOperator(const Handle_ShapeProcess_DictionaryOfOperator &acell);
		%feature("autodoc", "1");
		ShapeProcess_IteratorOfDictionaryOfOperator(const Handle_ShapeProcess_DictionaryOfOperator &acell, const char * basename);
		%feature("autodoc", "1");
		ShapeProcess_IteratorOfDictionaryOfOperator(const Handle_ShapeProcess_DictionaryOfOperator &acell, const TCollection_AsciiString &basename);
		%feature("autodoc", "1");
		void Start();
		%feature("autodoc", "1");
		Standard_Boolean More();
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		const Handle_ShapeProcess_Operator & Value() const;
		%feature("autodoc", "1");
		TCollection_AsciiString Name() const;

};
%feature("shadow") ShapeProcess_IteratorOfDictionaryOfOperator::~ShapeProcess_IteratorOfDictionaryOfOperator %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeProcess_IteratorOfDictionaryOfOperator {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeProcess_Context;
class ShapeProcess_Context : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		ShapeProcess_Context();
		%feature("autodoc", "1");
		ShapeProcess_Context(const char * file, const char * scope="");
		%feature("autodoc", "1");
		Standard_Boolean Init(const char * file, const char * scope="");
		%feature("autodoc", "1");
		Handle_Resource_Manager LoadResourceManager(const char * file);
		%feature("autodoc", "1");
		const Handle_Resource_Manager & ResourceManager() const;
		%feature("autodoc", "1");
		void SetScope(const char * scope);
		%feature("autodoc", "1");
		void UnSetScope();
		%feature("autodoc", "1");
		Standard_Boolean IsParamSet(const char * param) const;
		%feature("autodoc","GetReal(Standard_CString param) -> Standard_Real");

		Standard_Boolean GetReal(const char * param, Standard_Real &OutValue) const;
		%feature("autodoc","GetInteger(Standard_CString param) -> Standard_Integer");

		Standard_Boolean GetInteger(const char * param, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		Standard_Boolean GetBoolean(const char * param, Standard_Boolean & val) const;
		%feature("autodoc", "1");
		Standard_Boolean GetString(const char * param, TCollection_AsciiString & val) const;
		%feature("autodoc", "1");
		Standard_Real RealVal(const char * param, const Standard_Real def) const;
		%feature("autodoc", "1");
		Standard_Integer IntegerVal(const char * param, const Standard_Integer def) const;
		%feature("autodoc", "1");
		Standard_Boolean BooleanVal(const char * param, const Standard_Boolean def) const;
		%feature("autodoc", "1");
		char * StringVal(const char * param, const char * def) const;
		%feature("autodoc", "1");
		void SetMessenger(const Handle_Message_Messenger &messenger);
		%feature("autodoc", "1");
		Handle_Message_Messenger Messenger() const;
		%feature("autodoc", "1");
		void SetTraceLevel(const Standard_Integer tracelev);
		%feature("autodoc", "1");
		Standard_Integer TraceLevel() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ShapeProcess_Context {
	Handle_ShapeProcess_Context GetHandle() {
	return *(Handle_ShapeProcess_Context*) &$self;
	}
};
%extend ShapeProcess_Context {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") ShapeProcess_Context::~ShapeProcess_Context %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeProcess_Context {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeProcess_ShapeContext;
class ShapeProcess_ShapeContext : public ShapeProcess_Context {
	public:
		%feature("autodoc", "1");
		ShapeProcess_ShapeContext(const char * file, const char * seq="");
		%feature("autodoc", "1");
		ShapeProcess_ShapeContext(const TopoDS_Shape S, const char * file, const char * seq="");
		%feature("autodoc", "1");
		void Init(const TopoDS_Shape S);
		%feature("autodoc", "1");
		const TopoDS_Shape  Shape() const;
		%feature("autodoc", "1");
		const TopoDS_Shape  Result() const;
		%feature("autodoc", "1");
		const TopTools_DataMapOfShapeShape & Map() const;
		%feature("autodoc", "1");
		const Handle_ShapeExtend_MsgRegistrator & Messages() const;
		%feature("autodoc", "1");
		Handle_ShapeExtend_MsgRegistrator & Messages();
		%feature("autodoc", "1");
		void SetDetalisation(const TopAbs_ShapeEnum level);
		%feature("autodoc", "1");
		TopAbs_ShapeEnum GetDetalisation() const;
		%feature("autodoc", "1");
		void SetResult(const TopoDS_Shape S);
		%feature("autodoc", "1");
		void RecordModification(const TopTools_DataMapOfShapeShape &repl);
		%feature("autodoc", "1");
		void RecordModification(const Handle_ShapeBuild_ReShape &repl, const Handle_ShapeExtend_MsgRegistrator &msg);
		%feature("autodoc", "1");
		void RecordModification(const Handle_ShapeBuild_ReShape &repl);
		%feature("autodoc", "1");
		void RecordModification(const TopoDS_Shape sh, const BRepTools_Modifier &repl);
		%feature("autodoc", "1");
		void AddMessage(const TopoDS_Shape S, const Message_Msg &msg, const Message_Gravity gravity=Message_Warning);
		%feature("autodoc", "1");
		Standard_Boolean GetContinuity(const char * param, GeomAbs_Shape & val) const;
		%feature("autodoc", "1");
		GeomAbs_Shape ContinuityVal(const char * param, const GeomAbs_Shape def) const;
		%feature("autodoc", "1");
		void PrintStatistics() const;

};
%extend ShapeProcess_ShapeContext {
	Handle_ShapeProcess_ShapeContext GetHandle() {
	return *(Handle_ShapeProcess_ShapeContext*) &$self;
	}
};
%extend ShapeProcess_ShapeContext {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") ShapeProcess_ShapeContext::~ShapeProcess_ShapeContext %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeProcess_ShapeContext {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeProcess_DictionaryOfOperator;
class ShapeProcess_DictionaryOfOperator : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		ShapeProcess_DictionaryOfOperator();
		%feature("autodoc", "1");
		Standard_Boolean HasItem(const char * name, const Standard_Boolean exact=0) const;
		%feature("autodoc", "1");
		Standard_Boolean HasItem(const TCollection_AsciiString &name, const Standard_Boolean exact=1) const;
		%feature("autodoc", "1");
		const Handle_ShapeProcess_Operator & Item(const char * name, const Standard_Boolean exact=1) const;
		%feature("autodoc", "1");
		const Handle_ShapeProcess_Operator & Item(const TCollection_AsciiString &name, const Standard_Boolean exact=1) const;
		%feature("autodoc", "1");
		Standard_Boolean GetItem(const char * name, Handle_ShapeProcess_Operator & anitem, const Standard_Boolean exact=1) const;
		%feature("autodoc", "1");
		Standard_Boolean GetItem(const TCollection_AsciiString &name, Handle_ShapeProcess_Operator & anitem, const Standard_Boolean exact=1) const;
		%feature("autodoc", "1");
		void SetItem(const char * name, const Handle_ShapeProcess_Operator &anitem, const Standard_Boolean exact=1);
		%feature("autodoc", "1");
		void SetItem(const TCollection_AsciiString &name, const Handle_ShapeProcess_Operator &anitem, const Standard_Boolean exact=1);
		%feature("autodoc", "1");
		Handle_ShapeProcess_Operator & NewItem(const char * name, Standard_Boolean & isvalued, const Standard_Boolean exact=1);
		%feature("autodoc", "1");
		Handle_ShapeProcess_Operator & NewItem(const TCollection_AsciiString &name, Standard_Boolean & isvalued, const Standard_Boolean exact=1);
		%feature("autodoc", "1");
		Standard_Boolean RemoveItem(const char * name, const Standard_Boolean cln=1, const Standard_Boolean exact=1);
		%feature("autodoc", "1");
		Standard_Boolean RemoveItem(const TCollection_AsciiString &name, const Standard_Boolean cln=1, const Standard_Boolean exact=1);
		%feature("autodoc", "1");
		void Clean();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Handle_ShapeProcess_DictionaryOfOperator Copy() const;
		%feature("autodoc", "1");
		Standard_Boolean Complete(Handle_ShapeProcess_DictionaryOfOperator & acell) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ShapeProcess_DictionaryOfOperator {
	Handle_ShapeProcess_DictionaryOfOperator GetHandle() {
	return *(Handle_ShapeProcess_DictionaryOfOperator*) &$self;
	}
};
%extend ShapeProcess_DictionaryOfOperator {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") ShapeProcess_DictionaryOfOperator::~ShapeProcess_DictionaryOfOperator %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeProcess_DictionaryOfOperator {
	void _kill_pointed() {
		delete $self;
	}
};
