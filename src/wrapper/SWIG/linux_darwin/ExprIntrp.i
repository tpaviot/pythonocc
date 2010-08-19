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

%module ExprIntrp
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include ExprIntrp_renames.i


%include ExprIntrp_required_python_modules.i


%include ExprIntrp_dependencies.i


%include ExprIntrp_headers.i




%nodefaultctor Handle_ExprIntrp_StackNodeOfStackOfGeneralFunction;
class Handle_ExprIntrp_StackNodeOfStackOfGeneralFunction : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_ExprIntrp_StackNodeOfStackOfGeneralFunction();
		%feature("autodoc", "1");
		Handle_ExprIntrp_StackNodeOfStackOfGeneralFunction(const Handle_ExprIntrp_StackNodeOfStackOfGeneralFunction &aHandle);
		%feature("autodoc", "1");
		Handle_ExprIntrp_StackNodeOfStackOfGeneralFunction(const ExprIntrp_StackNodeOfStackOfGeneralFunction *anItem);
		%feature("autodoc", "1");
		Handle_ExprIntrp_StackNodeOfStackOfGeneralFunction & operator=(const Handle_ExprIntrp_StackNodeOfStackOfGeneralFunction &aHandle);
		%feature("autodoc", "1");
		Handle_ExprIntrp_StackNodeOfStackOfGeneralFunction & operator=(const ExprIntrp_StackNodeOfStackOfGeneralFunction *anItem);
		%feature("autodoc", "1");
		static		Handle_ExprIntrp_StackNodeOfStackOfGeneralFunction const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ExprIntrp_StackNodeOfStackOfGeneralFunction {
	ExprIntrp_StackNodeOfStackOfGeneralFunction* GetObject() {
	return (ExprIntrp_StackNodeOfStackOfGeneralFunction*)$self->Access();
	}
};
%feature("shadow") Handle_ExprIntrp_StackNodeOfStackOfGeneralFunction::~Handle_ExprIntrp_StackNodeOfStackOfGeneralFunction %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ExprIntrp_StackNodeOfStackOfGeneralFunction {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_ExprIntrp_StackNodeOfStackOfGeneralExpression;
class Handle_ExprIntrp_StackNodeOfStackOfGeneralExpression : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_ExprIntrp_StackNodeOfStackOfGeneralExpression();
		%feature("autodoc", "1");
		Handle_ExprIntrp_StackNodeOfStackOfGeneralExpression(const Handle_ExprIntrp_StackNodeOfStackOfGeneralExpression &aHandle);
		%feature("autodoc", "1");
		Handle_ExprIntrp_StackNodeOfStackOfGeneralExpression(const ExprIntrp_StackNodeOfStackOfGeneralExpression *anItem);
		%feature("autodoc", "1");
		Handle_ExprIntrp_StackNodeOfStackOfGeneralExpression & operator=(const Handle_ExprIntrp_StackNodeOfStackOfGeneralExpression &aHandle);
		%feature("autodoc", "1");
		Handle_ExprIntrp_StackNodeOfStackOfGeneralExpression & operator=(const ExprIntrp_StackNodeOfStackOfGeneralExpression *anItem);
		%feature("autodoc", "1");
		static		Handle_ExprIntrp_StackNodeOfStackOfGeneralExpression const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ExprIntrp_StackNodeOfStackOfGeneralExpression {
	ExprIntrp_StackNodeOfStackOfGeneralExpression* GetObject() {
	return (ExprIntrp_StackNodeOfStackOfGeneralExpression*)$self->Access();
	}
};
%feature("shadow") Handle_ExprIntrp_StackNodeOfStackOfGeneralExpression::~Handle_ExprIntrp_StackNodeOfStackOfGeneralExpression %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ExprIntrp_StackNodeOfStackOfGeneralExpression {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_ExprIntrp_Generator;
class Handle_ExprIntrp_Generator : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_ExprIntrp_Generator();
		%feature("autodoc", "1");
		Handle_ExprIntrp_Generator(const Handle_ExprIntrp_Generator &aHandle);
		%feature("autodoc", "1");
		Handle_ExprIntrp_Generator(const ExprIntrp_Generator *anItem);
		%feature("autodoc", "1");
		Handle_ExprIntrp_Generator & operator=(const Handle_ExprIntrp_Generator &aHandle);
		%feature("autodoc", "1");
		Handle_ExprIntrp_Generator & operator=(const ExprIntrp_Generator *anItem);
		%feature("autodoc", "1");
		static		Handle_ExprIntrp_Generator const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ExprIntrp_Generator {
	ExprIntrp_Generator* GetObject() {
	return (ExprIntrp_Generator*)$self->Access();
	}
};
%feature("shadow") Handle_ExprIntrp_Generator::~Handle_ExprIntrp_Generator %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ExprIntrp_Generator {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_ExprIntrp_GenExp;
class Handle_ExprIntrp_GenExp : public Handle_ExprIntrp_Generator {
	public:
		%feature("autodoc", "1");
		Handle_ExprIntrp_GenExp();
		%feature("autodoc", "1");
		Handle_ExprIntrp_GenExp(const Handle_ExprIntrp_GenExp &aHandle);
		%feature("autodoc", "1");
		Handle_ExprIntrp_GenExp(const ExprIntrp_GenExp *anItem);
		%feature("autodoc", "1");
		Handle_ExprIntrp_GenExp & operator=(const Handle_ExprIntrp_GenExp &aHandle);
		%feature("autodoc", "1");
		Handle_ExprIntrp_GenExp & operator=(const ExprIntrp_GenExp *anItem);
		%feature("autodoc", "1");
		static		Handle_ExprIntrp_GenExp const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ExprIntrp_GenExp {
	ExprIntrp_GenExp* GetObject() {
	return (ExprIntrp_GenExp*)$self->Access();
	}
};
%feature("shadow") Handle_ExprIntrp_GenExp::~Handle_ExprIntrp_GenExp %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ExprIntrp_GenExp {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_ExprIntrp_SyntaxError;
class Handle_ExprIntrp_SyntaxError : public Handle_Standard_Failure {
	public:
		%feature("autodoc", "1");
		Handle_ExprIntrp_SyntaxError();
		%feature("autodoc", "1");
		Handle_ExprIntrp_SyntaxError(const Handle_ExprIntrp_SyntaxError &aHandle);
		%feature("autodoc", "1");
		Handle_ExprIntrp_SyntaxError(const ExprIntrp_SyntaxError *anItem);
		%feature("autodoc", "1");
		Handle_ExprIntrp_SyntaxError & operator=(const Handle_ExprIntrp_SyntaxError &aHandle);
		%feature("autodoc", "1");
		Handle_ExprIntrp_SyntaxError & operator=(const ExprIntrp_SyntaxError *anItem);
		%feature("autodoc", "1");
		static		Handle_ExprIntrp_SyntaxError const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ExprIntrp_SyntaxError {
	ExprIntrp_SyntaxError* GetObject() {
	return (ExprIntrp_SyntaxError*)$self->Access();
	}
};
%feature("shadow") Handle_ExprIntrp_SyntaxError::~Handle_ExprIntrp_SyntaxError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ExprIntrp_SyntaxError {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_ExprIntrp_GenRel;
class Handle_ExprIntrp_GenRel : public Handle_ExprIntrp_Generator {
	public:
		%feature("autodoc", "1");
		Handle_ExprIntrp_GenRel();
		%feature("autodoc", "1");
		Handle_ExprIntrp_GenRel(const Handle_ExprIntrp_GenRel &aHandle);
		%feature("autodoc", "1");
		Handle_ExprIntrp_GenRel(const ExprIntrp_GenRel *anItem);
		%feature("autodoc", "1");
		Handle_ExprIntrp_GenRel & operator=(const Handle_ExprIntrp_GenRel &aHandle);
		%feature("autodoc", "1");
		Handle_ExprIntrp_GenRel & operator=(const ExprIntrp_GenRel *anItem);
		%feature("autodoc", "1");
		static		Handle_ExprIntrp_GenRel const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ExprIntrp_GenRel {
	ExprIntrp_GenRel* GetObject() {
	return (ExprIntrp_GenRel*)$self->Access();
	}
};
%feature("shadow") Handle_ExprIntrp_GenRel::~Handle_ExprIntrp_GenRel %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ExprIntrp_GenRel {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_ExprIntrp_StackNodeOfStackOfGeneralRelation;
class Handle_ExprIntrp_StackNodeOfStackOfGeneralRelation : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_ExprIntrp_StackNodeOfStackOfGeneralRelation();
		%feature("autodoc", "1");
		Handle_ExprIntrp_StackNodeOfStackOfGeneralRelation(const Handle_ExprIntrp_StackNodeOfStackOfGeneralRelation &aHandle);
		%feature("autodoc", "1");
		Handle_ExprIntrp_StackNodeOfStackOfGeneralRelation(const ExprIntrp_StackNodeOfStackOfGeneralRelation *anItem);
		%feature("autodoc", "1");
		Handle_ExprIntrp_StackNodeOfStackOfGeneralRelation & operator=(const Handle_ExprIntrp_StackNodeOfStackOfGeneralRelation &aHandle);
		%feature("autodoc", "1");
		Handle_ExprIntrp_StackNodeOfStackOfGeneralRelation & operator=(const ExprIntrp_StackNodeOfStackOfGeneralRelation *anItem);
		%feature("autodoc", "1");
		static		Handle_ExprIntrp_StackNodeOfStackOfGeneralRelation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ExprIntrp_StackNodeOfStackOfGeneralRelation {
	ExprIntrp_StackNodeOfStackOfGeneralRelation* GetObject() {
	return (ExprIntrp_StackNodeOfStackOfGeneralRelation*)$self->Access();
	}
};
%feature("shadow") Handle_ExprIntrp_StackNodeOfStackOfGeneralRelation::~Handle_ExprIntrp_StackNodeOfStackOfGeneralRelation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ExprIntrp_StackNodeOfStackOfGeneralRelation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_ExprIntrp_SequenceNodeOfSequenceOfNamedExpression;
class Handle_ExprIntrp_SequenceNodeOfSequenceOfNamedExpression : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_ExprIntrp_SequenceNodeOfSequenceOfNamedExpression();
		%feature("autodoc", "1");
		Handle_ExprIntrp_SequenceNodeOfSequenceOfNamedExpression(const Handle_ExprIntrp_SequenceNodeOfSequenceOfNamedExpression &aHandle);
		%feature("autodoc", "1");
		Handle_ExprIntrp_SequenceNodeOfSequenceOfNamedExpression(const ExprIntrp_SequenceNodeOfSequenceOfNamedExpression *anItem);
		%feature("autodoc", "1");
		Handle_ExprIntrp_SequenceNodeOfSequenceOfNamedExpression & operator=(const Handle_ExprIntrp_SequenceNodeOfSequenceOfNamedExpression &aHandle);
		%feature("autodoc", "1");
		Handle_ExprIntrp_SequenceNodeOfSequenceOfNamedExpression & operator=(const ExprIntrp_SequenceNodeOfSequenceOfNamedExpression *anItem);
		%feature("autodoc", "1");
		static		Handle_ExprIntrp_SequenceNodeOfSequenceOfNamedExpression const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ExprIntrp_SequenceNodeOfSequenceOfNamedExpression {
	ExprIntrp_SequenceNodeOfSequenceOfNamedExpression* GetObject() {
	return (ExprIntrp_SequenceNodeOfSequenceOfNamedExpression*)$self->Access();
	}
};
%feature("shadow") Handle_ExprIntrp_SequenceNodeOfSequenceOfNamedExpression::~Handle_ExprIntrp_SequenceNodeOfSequenceOfNamedExpression %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ExprIntrp_SequenceNodeOfSequenceOfNamedExpression {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_ExprIntrp_GenFct;
class Handle_ExprIntrp_GenFct : public Handle_ExprIntrp_Generator {
	public:
		%feature("autodoc", "1");
		Handle_ExprIntrp_GenFct();
		%feature("autodoc", "1");
		Handle_ExprIntrp_GenFct(const Handle_ExprIntrp_GenFct &aHandle);
		%feature("autodoc", "1");
		Handle_ExprIntrp_GenFct(const ExprIntrp_GenFct *anItem);
		%feature("autodoc", "1");
		Handle_ExprIntrp_GenFct & operator=(const Handle_ExprIntrp_GenFct &aHandle);
		%feature("autodoc", "1");
		Handle_ExprIntrp_GenFct & operator=(const ExprIntrp_GenFct *anItem);
		%feature("autodoc", "1");
		static		Handle_ExprIntrp_GenFct const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ExprIntrp_GenFct {
	ExprIntrp_GenFct* GetObject() {
	return (ExprIntrp_GenFct*)$self->Access();
	}
};
%feature("shadow") Handle_ExprIntrp_GenFct::~Handle_ExprIntrp_GenFct %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ExprIntrp_GenFct {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_ExprIntrp_SequenceNodeOfSequenceOfNamedFunction;
class Handle_ExprIntrp_SequenceNodeOfSequenceOfNamedFunction : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_ExprIntrp_SequenceNodeOfSequenceOfNamedFunction();
		%feature("autodoc", "1");
		Handle_ExprIntrp_SequenceNodeOfSequenceOfNamedFunction(const Handle_ExprIntrp_SequenceNodeOfSequenceOfNamedFunction &aHandle);
		%feature("autodoc", "1");
		Handle_ExprIntrp_SequenceNodeOfSequenceOfNamedFunction(const ExprIntrp_SequenceNodeOfSequenceOfNamedFunction *anItem);
		%feature("autodoc", "1");
		Handle_ExprIntrp_SequenceNodeOfSequenceOfNamedFunction & operator=(const Handle_ExprIntrp_SequenceNodeOfSequenceOfNamedFunction &aHandle);
		%feature("autodoc", "1");
		Handle_ExprIntrp_SequenceNodeOfSequenceOfNamedFunction & operator=(const ExprIntrp_SequenceNodeOfSequenceOfNamedFunction *anItem);
		%feature("autodoc", "1");
		static		Handle_ExprIntrp_SequenceNodeOfSequenceOfNamedFunction const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ExprIntrp_SequenceNodeOfSequenceOfNamedFunction {
	ExprIntrp_SequenceNodeOfSequenceOfNamedFunction* GetObject() {
	return (ExprIntrp_SequenceNodeOfSequenceOfNamedFunction*)$self->Access();
	}
};
%feature("shadow") Handle_ExprIntrp_SequenceNodeOfSequenceOfNamedFunction::~Handle_ExprIntrp_SequenceNodeOfSequenceOfNamedFunction %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ExprIntrp_SequenceNodeOfSequenceOfNamedFunction {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_ExprIntrp_StackNodeOfStackOfNames;
class Handle_ExprIntrp_StackNodeOfStackOfNames : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_ExprIntrp_StackNodeOfStackOfNames();
		%feature("autodoc", "1");
		Handle_ExprIntrp_StackNodeOfStackOfNames(const Handle_ExprIntrp_StackNodeOfStackOfNames &aHandle);
		%feature("autodoc", "1");
		Handle_ExprIntrp_StackNodeOfStackOfNames(const ExprIntrp_StackNodeOfStackOfNames *anItem);
		%feature("autodoc", "1");
		Handle_ExprIntrp_StackNodeOfStackOfNames & operator=(const Handle_ExprIntrp_StackNodeOfStackOfNames &aHandle);
		%feature("autodoc", "1");
		Handle_ExprIntrp_StackNodeOfStackOfNames & operator=(const ExprIntrp_StackNodeOfStackOfNames *anItem);
		%feature("autodoc", "1");
		static		Handle_ExprIntrp_StackNodeOfStackOfNames const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ExprIntrp_StackNodeOfStackOfNames {
	ExprIntrp_StackNodeOfStackOfNames* GetObject() {
	return (ExprIntrp_StackNodeOfStackOfNames*)$self->Access();
	}
};
%feature("shadow") Handle_ExprIntrp_StackNodeOfStackOfNames::~Handle_ExprIntrp_StackNodeOfStackOfNames %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ExprIntrp_StackNodeOfStackOfNames {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ExprIntrp_Generator;
class ExprIntrp_Generator : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		void Use(const Handle_Expr_NamedFunction &func);
		%feature("autodoc", "1");
		void Use(const Handle_Expr_NamedExpression &named);
		%feature("autodoc", "1");
		const ExprIntrp_SequenceOfNamedExpression & GetNamed() const;
		%feature("autodoc", "1");
		const ExprIntrp_SequenceOfNamedFunction & GetFunctions() const;
		%feature("autodoc", "1");
		Handle_Expr_NamedExpression GetNamed(const TCollection_AsciiString &name) const;
		%feature("autodoc", "1");
		Handle_Expr_NamedFunction GetFunction(const TCollection_AsciiString &name) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ExprIntrp_Generator {
	Handle_ExprIntrp_Generator GetHandle() {
	return *(Handle_ExprIntrp_Generator*) &$self;
	}
};
%extend ExprIntrp_Generator {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") ExprIntrp_Generator::~ExprIntrp_Generator %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ExprIntrp_Generator {
	void _kill_pointed() {
		delete $self;
	}
};
%extend ExprIntrp_Generator {
	ExprIntrp_Generator () {}
};


%nodefaultctor ExprIntrp_GenFct;
class ExprIntrp_GenFct : public ExprIntrp_Generator {
	public:
		%feature("autodoc", "1");
		static		Handle_ExprIntrp_GenFct Create();
		%feature("autodoc", "1");
		void Process(const TCollection_AsciiString &str);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;

};
%extend ExprIntrp_GenFct {
	Handle_ExprIntrp_GenFct GetHandle() {
	return *(Handle_ExprIntrp_GenFct*) &$self;
	}
};
%extend ExprIntrp_GenFct {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") ExprIntrp_GenFct::~ExprIntrp_GenFct %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ExprIntrp_GenFct {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ExprIntrp_StackNodeOfStackOfNames;
class ExprIntrp_StackNodeOfStackOfNames : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		ExprIntrp_StackNodeOfStackOfNames(const TCollection_AsciiString &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TCollection_AsciiString & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ExprIntrp_StackNodeOfStackOfNames {
	Handle_ExprIntrp_StackNodeOfStackOfNames GetHandle() {
	return *(Handle_ExprIntrp_StackNodeOfStackOfNames*) &$self;
	}
};
%extend ExprIntrp_StackNodeOfStackOfNames {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") ExprIntrp_StackNodeOfStackOfNames::~ExprIntrp_StackNodeOfStackOfNames %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ExprIntrp_StackNodeOfStackOfNames {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ExprIntrp_SyntaxError;
class ExprIntrp_SyntaxError : public Standard_Failure {
	public:
		%feature("autodoc", "1");
		ExprIntrp_SyntaxError();
		%feature("autodoc", "1");
		ExprIntrp_SyntaxError(const char * AString);
		%feature("autodoc", "1");
		static		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		static		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		static		Handle_ExprIntrp_SyntaxError NewInstance(const char * aMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ExprIntrp_SyntaxError {
	Handle_ExprIntrp_SyntaxError GetHandle() {
	return *(Handle_ExprIntrp_SyntaxError*) &$self;
	}
};
%extend ExprIntrp_SyntaxError {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") ExprIntrp_SyntaxError::~ExprIntrp_SyntaxError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ExprIntrp_SyntaxError {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ExprIntrp_StackIteratorOfStackOfNames;
class ExprIntrp_StackIteratorOfStackOfNames {
	public:
		%feature("autodoc", "1");
		ExprIntrp_StackIteratorOfStackOfNames();
		%feature("autodoc", "1");
		ExprIntrp_StackIteratorOfStackOfNames(const ExprIntrp_StackOfNames &S);
		%feature("autodoc", "1");
		void Initialize(const ExprIntrp_StackOfNames &S);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		const TCollection_AsciiString & Value() const;

};
%feature("shadow") ExprIntrp_StackIteratorOfStackOfNames::~ExprIntrp_StackIteratorOfStackOfNames %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ExprIntrp_StackIteratorOfStackOfNames {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ExprIntrp_SequenceOfNamedFunction;
class ExprIntrp_SequenceOfNamedFunction : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		ExprIntrp_SequenceOfNamedFunction();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const ExprIntrp_SequenceOfNamedFunction & Assign(const ExprIntrp_SequenceOfNamedFunction &Other);
		%feature("autodoc", "1");
		const ExprIntrp_SequenceOfNamedFunction & operator=(const ExprIntrp_SequenceOfNamedFunction &Other);
		%feature("autodoc", "1");
		void Append(const Handle_Expr_NamedFunction &T);
		%feature("autodoc", "1");
		void Append(ExprIntrp_SequenceOfNamedFunction & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_Expr_NamedFunction &T);
		%feature("autodoc", "1");
		void Prepend(ExprIntrp_SequenceOfNamedFunction & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_Expr_NamedFunction &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, ExprIntrp_SequenceOfNamedFunction & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_Expr_NamedFunction &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, ExprIntrp_SequenceOfNamedFunction & S);
		%feature("autodoc", "1");
		const Handle_Expr_NamedFunction & First() const;
		%feature("autodoc", "1");
		const Handle_Expr_NamedFunction & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, ExprIntrp_SequenceOfNamedFunction & S);
		%feature("autodoc", "1");
		const Handle_Expr_NamedFunction & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_Expr_NamedFunction & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_Expr_NamedFunction &I);
		%feature("autodoc", "1");
		Handle_Expr_NamedFunction & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_Expr_NamedFunction & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") ExprIntrp_SequenceOfNamedFunction::~ExprIntrp_SequenceOfNamedFunction %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ExprIntrp_SequenceOfNamedFunction {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ExprIntrp_StackOfNames;
class ExprIntrp_StackOfNames {
	public:
		%feature("autodoc", "1");
		ExprIntrp_StackOfNames();
		%feature("autodoc", "1");
		const ExprIntrp_StackOfNames & Assign(const ExprIntrp_StackOfNames &Other);
		%feature("autodoc", "1");
		const ExprIntrp_StackOfNames & operator=(const ExprIntrp_StackOfNames &Other);
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Depth() const;
		%feature("autodoc", "1");
		const TCollection_AsciiString & Top() const;
		%feature("autodoc", "1");
		void Push(const TCollection_AsciiString &I);
		%feature("autodoc", "1");
		void Pop();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		TCollection_AsciiString & ChangeTop();

};
%feature("shadow") ExprIntrp_StackOfNames::~ExprIntrp_StackOfNames %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ExprIntrp_StackOfNames {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ExprIntrp_SequenceNodeOfSequenceOfNamedExpression;
class ExprIntrp_SequenceNodeOfSequenceOfNamedExpression : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		ExprIntrp_SequenceNodeOfSequenceOfNamedExpression(const Handle_Expr_NamedExpression &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_Expr_NamedExpression & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ExprIntrp_SequenceNodeOfSequenceOfNamedExpression {
	Handle_ExprIntrp_SequenceNodeOfSequenceOfNamedExpression GetHandle() {
	return *(Handle_ExprIntrp_SequenceNodeOfSequenceOfNamedExpression*) &$self;
	}
};
%extend ExprIntrp_SequenceNodeOfSequenceOfNamedExpression {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") ExprIntrp_SequenceNodeOfSequenceOfNamedExpression::~ExprIntrp_SequenceNodeOfSequenceOfNamedExpression %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ExprIntrp_SequenceNodeOfSequenceOfNamedExpression {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ExprIntrp;
class ExprIntrp {
	public:
		%feature("autodoc", "1");
		ExprIntrp();

};
%feature("shadow") ExprIntrp::~ExprIntrp %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ExprIntrp {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ExprIntrp_StackIteratorOfStackOfGeneralExpression;
class ExprIntrp_StackIteratorOfStackOfGeneralExpression {
	public:
		%feature("autodoc", "1");
		ExprIntrp_StackIteratorOfStackOfGeneralExpression();
		%feature("autodoc", "1");
		ExprIntrp_StackIteratorOfStackOfGeneralExpression(const ExprIntrp_StackOfGeneralExpression &S);
		%feature("autodoc", "1");
		void Initialize(const ExprIntrp_StackOfGeneralExpression &S);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		const Handle_Expr_GeneralExpression & Value() const;

};
%feature("shadow") ExprIntrp_StackIteratorOfStackOfGeneralExpression::~ExprIntrp_StackIteratorOfStackOfGeneralExpression %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ExprIntrp_StackIteratorOfStackOfGeneralExpression {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ExprIntrp_GenRel;
class ExprIntrp_GenRel : public ExprIntrp_Generator {
	public:
		%feature("autodoc", "1");
		static		Handle_ExprIntrp_GenRel Create();
		%feature("autodoc", "1");
		void Process(const TCollection_AsciiString &str);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Handle_Expr_GeneralRelation Relation() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ExprIntrp_GenRel {
	Handle_ExprIntrp_GenRel GetHandle() {
	return *(Handle_ExprIntrp_GenRel*) &$self;
	}
};
%extend ExprIntrp_GenRel {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") ExprIntrp_GenRel::~ExprIntrp_GenRel %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ExprIntrp_GenRel {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ExprIntrp_StackIteratorOfStackOfGeneralRelation;
class ExprIntrp_StackIteratorOfStackOfGeneralRelation {
	public:
		%feature("autodoc", "1");
		ExprIntrp_StackIteratorOfStackOfGeneralRelation();
		%feature("autodoc", "1");
		ExprIntrp_StackIteratorOfStackOfGeneralRelation(const ExprIntrp_StackOfGeneralRelation &S);
		%feature("autodoc", "1");
		void Initialize(const ExprIntrp_StackOfGeneralRelation &S);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		const Handle_Expr_GeneralRelation & Value() const;

};
%feature("shadow") ExprIntrp_StackIteratorOfStackOfGeneralRelation::~ExprIntrp_StackIteratorOfStackOfGeneralRelation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ExprIntrp_StackIteratorOfStackOfGeneralRelation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ExprIntrp_StackNodeOfStackOfGeneralFunction;
class ExprIntrp_StackNodeOfStackOfGeneralFunction : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		ExprIntrp_StackNodeOfStackOfGeneralFunction(const Handle_Expr_GeneralFunction &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Handle_Expr_GeneralFunction & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ExprIntrp_StackNodeOfStackOfGeneralFunction {
	Handle_ExprIntrp_StackNodeOfStackOfGeneralFunction GetHandle() {
	return *(Handle_ExprIntrp_StackNodeOfStackOfGeneralFunction*) &$self;
	}
};
%extend ExprIntrp_StackNodeOfStackOfGeneralFunction {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") ExprIntrp_StackNodeOfStackOfGeneralFunction::~ExprIntrp_StackNodeOfStackOfGeneralFunction %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ExprIntrp_StackNodeOfStackOfGeneralFunction {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ExprIntrp_StackIteratorOfStackOfGeneralFunction;
class ExprIntrp_StackIteratorOfStackOfGeneralFunction {
	public:
		%feature("autodoc", "1");
		ExprIntrp_StackIteratorOfStackOfGeneralFunction();
		%feature("autodoc", "1");
		ExprIntrp_StackIteratorOfStackOfGeneralFunction(const ExprIntrp_StackOfGeneralFunction &S);
		%feature("autodoc", "1");
		void Initialize(const ExprIntrp_StackOfGeneralFunction &S);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		const Handle_Expr_GeneralFunction & Value() const;

};
%feature("shadow") ExprIntrp_StackIteratorOfStackOfGeneralFunction::~ExprIntrp_StackIteratorOfStackOfGeneralFunction %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ExprIntrp_StackIteratorOfStackOfGeneralFunction {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ExprIntrp_StackNodeOfStackOfGeneralRelation;
class ExprIntrp_StackNodeOfStackOfGeneralRelation : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		ExprIntrp_StackNodeOfStackOfGeneralRelation(const Handle_Expr_GeneralRelation &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Handle_Expr_GeneralRelation & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ExprIntrp_StackNodeOfStackOfGeneralRelation {
	Handle_ExprIntrp_StackNodeOfStackOfGeneralRelation GetHandle() {
	return *(Handle_ExprIntrp_StackNodeOfStackOfGeneralRelation*) &$self;
	}
};
%extend ExprIntrp_StackNodeOfStackOfGeneralRelation {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") ExprIntrp_StackNodeOfStackOfGeneralRelation::~ExprIntrp_StackNodeOfStackOfGeneralRelation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ExprIntrp_StackNodeOfStackOfGeneralRelation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ExprIntrp_StackOfGeneralRelation;
class ExprIntrp_StackOfGeneralRelation {
	public:
		%feature("autodoc", "1");
		ExprIntrp_StackOfGeneralRelation();
		%feature("autodoc", "1");
		const ExprIntrp_StackOfGeneralRelation & Assign(const ExprIntrp_StackOfGeneralRelation &Other);
		%feature("autodoc", "1");
		const ExprIntrp_StackOfGeneralRelation & operator=(const ExprIntrp_StackOfGeneralRelation &Other);
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Depth() const;
		%feature("autodoc", "1");
		const Handle_Expr_GeneralRelation & Top() const;
		%feature("autodoc", "1");
		void Push(const Handle_Expr_GeneralRelation &I);
		%feature("autodoc", "1");
		void Pop();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Handle_Expr_GeneralRelation & ChangeTop();

};
%feature("shadow") ExprIntrp_StackOfGeneralRelation::~ExprIntrp_StackOfGeneralRelation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ExprIntrp_StackOfGeneralRelation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ExprIntrp_SequenceOfNamedExpression;
class ExprIntrp_SequenceOfNamedExpression : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		ExprIntrp_SequenceOfNamedExpression();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const ExprIntrp_SequenceOfNamedExpression & Assign(const ExprIntrp_SequenceOfNamedExpression &Other);
		%feature("autodoc", "1");
		const ExprIntrp_SequenceOfNamedExpression & operator=(const ExprIntrp_SequenceOfNamedExpression &Other);
		%feature("autodoc", "1");
		void Append(const Handle_Expr_NamedExpression &T);
		%feature("autodoc", "1");
		void Append(ExprIntrp_SequenceOfNamedExpression & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_Expr_NamedExpression &T);
		%feature("autodoc", "1");
		void Prepend(ExprIntrp_SequenceOfNamedExpression & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_Expr_NamedExpression &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, ExprIntrp_SequenceOfNamedExpression & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_Expr_NamedExpression &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, ExprIntrp_SequenceOfNamedExpression & S);
		%feature("autodoc", "1");
		const Handle_Expr_NamedExpression & First() const;
		%feature("autodoc", "1");
		const Handle_Expr_NamedExpression & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, ExprIntrp_SequenceOfNamedExpression & S);
		%feature("autodoc", "1");
		const Handle_Expr_NamedExpression & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_Expr_NamedExpression & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_Expr_NamedExpression &I);
		%feature("autodoc", "1");
		Handle_Expr_NamedExpression & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_Expr_NamedExpression & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") ExprIntrp_SequenceOfNamedExpression::~ExprIntrp_SequenceOfNamedExpression %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ExprIntrp_SequenceOfNamedExpression {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ExprIntrp_StackOfGeneralFunction;
class ExprIntrp_StackOfGeneralFunction {
	public:
		%feature("autodoc", "1");
		ExprIntrp_StackOfGeneralFunction();
		%feature("autodoc", "1");
		const ExprIntrp_StackOfGeneralFunction & Assign(const ExprIntrp_StackOfGeneralFunction &Other);
		%feature("autodoc", "1");
		const ExprIntrp_StackOfGeneralFunction & operator=(const ExprIntrp_StackOfGeneralFunction &Other);
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Depth() const;
		%feature("autodoc", "1");
		const Handle_Expr_GeneralFunction & Top() const;
		%feature("autodoc", "1");
		void Push(const Handle_Expr_GeneralFunction &I);
		%feature("autodoc", "1");
		void Pop();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Handle_Expr_GeneralFunction & ChangeTop();

};
%feature("shadow") ExprIntrp_StackOfGeneralFunction::~ExprIntrp_StackOfGeneralFunction %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ExprIntrp_StackOfGeneralFunction {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ExprIntrp_StackOfGeneralExpression;
class ExprIntrp_StackOfGeneralExpression {
	public:
		%feature("autodoc", "1");
		ExprIntrp_StackOfGeneralExpression();
		%feature("autodoc", "1");
		const ExprIntrp_StackOfGeneralExpression & Assign(const ExprIntrp_StackOfGeneralExpression &Other);
		%feature("autodoc", "1");
		const ExprIntrp_StackOfGeneralExpression & operator=(const ExprIntrp_StackOfGeneralExpression &Other);
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Depth() const;
		%feature("autodoc", "1");
		const Handle_Expr_GeneralExpression & Top() const;
		%feature("autodoc", "1");
		void Push(const Handle_Expr_GeneralExpression &I);
		%feature("autodoc", "1");
		void Pop();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Handle_Expr_GeneralExpression & ChangeTop();

};
%feature("shadow") ExprIntrp_StackOfGeneralExpression::~ExprIntrp_StackOfGeneralExpression %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ExprIntrp_StackOfGeneralExpression {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ExprIntrp_SequenceNodeOfSequenceOfNamedFunction;
class ExprIntrp_SequenceNodeOfSequenceOfNamedFunction : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		ExprIntrp_SequenceNodeOfSequenceOfNamedFunction(const Handle_Expr_NamedFunction &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_Expr_NamedFunction & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ExprIntrp_SequenceNodeOfSequenceOfNamedFunction {
	Handle_ExprIntrp_SequenceNodeOfSequenceOfNamedFunction GetHandle() {
	return *(Handle_ExprIntrp_SequenceNodeOfSequenceOfNamedFunction*) &$self;
	}
};
%extend ExprIntrp_SequenceNodeOfSequenceOfNamedFunction {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") ExprIntrp_SequenceNodeOfSequenceOfNamedFunction::~ExprIntrp_SequenceNodeOfSequenceOfNamedFunction %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ExprIntrp_SequenceNodeOfSequenceOfNamedFunction {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ExprIntrp_StackNodeOfStackOfGeneralExpression;
class ExprIntrp_StackNodeOfStackOfGeneralExpression : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		ExprIntrp_StackNodeOfStackOfGeneralExpression(const Handle_Expr_GeneralExpression &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Handle_Expr_GeneralExpression & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ExprIntrp_StackNodeOfStackOfGeneralExpression {
	Handle_ExprIntrp_StackNodeOfStackOfGeneralExpression GetHandle() {
	return *(Handle_ExprIntrp_StackNodeOfStackOfGeneralExpression*) &$self;
	}
};
%extend ExprIntrp_StackNodeOfStackOfGeneralExpression {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") ExprIntrp_StackNodeOfStackOfGeneralExpression::~ExprIntrp_StackNodeOfStackOfGeneralExpression %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ExprIntrp_StackNodeOfStackOfGeneralExpression {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ExprIntrp_GenExp;
class ExprIntrp_GenExp : public ExprIntrp_Generator {
	public:
		%feature("autodoc", "1");
		static		Handle_ExprIntrp_GenExp Create();
		%feature("autodoc", "1");
		void Process(const TCollection_AsciiString &str);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Handle_Expr_GeneralExpression Expression() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ExprIntrp_GenExp {
	Handle_ExprIntrp_GenExp GetHandle() {
	return *(Handle_ExprIntrp_GenExp*) &$self;
	}
};
%extend ExprIntrp_GenExp {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") ExprIntrp_GenExp::~ExprIntrp_GenExp %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ExprIntrp_GenExp {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ExprIntrp_Analysis;
class ExprIntrp_Analysis {
	public:
		%feature("autodoc", "1");
		ExprIntrp_Analysis();
		%feature("autodoc", "1");
		void SetMaster(const Handle_ExprIntrp_Generator &agen);
		%feature("autodoc", "1");
		void Push(const Handle_Expr_GeneralExpression &exp);
		%feature("autodoc", "1");
		void PushRelation(const Handle_Expr_GeneralRelation &rel);
		%feature("autodoc", "1");
		void PushName(const TCollection_AsciiString &name);
		%feature("autodoc", "1");
		void PushValue(const Standard_Integer degree);
		%feature("autodoc", "1");
		void PushFunction(const Handle_Expr_GeneralFunction &func);
		%feature("autodoc", "1");
		Handle_Expr_GeneralExpression Pop();
		%feature("autodoc", "1");
		Handle_Expr_GeneralRelation PopRelation();
		%feature("autodoc", "1");
		TCollection_AsciiString PopName();
		%feature("autodoc", "1");
		Standard_Integer PopValue();
		%feature("autodoc", "1");
		Handle_Expr_GeneralFunction PopFunction();
		%feature("autodoc", "1");
		Standard_Boolean IsExpStackEmpty() const;
		%feature("autodoc", "1");
		Standard_Boolean IsRelStackEmpty() const;
		%feature("autodoc", "1");
		void ResetAll();
		%feature("autodoc", "1");
		void Use(const Handle_Expr_NamedFunction &func);
		%feature("autodoc", "1");
		void Use(const Handle_Expr_NamedExpression &named);
		%feature("autodoc", "1");
		Handle_Expr_NamedExpression GetNamed(const TCollection_AsciiString &name);
		%feature("autodoc", "1");
		Handle_Expr_NamedFunction GetFunction(const TCollection_AsciiString &name);

};
%feature("shadow") ExprIntrp_Analysis::~ExprIntrp_Analysis %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ExprIntrp_Analysis {
	void _kill_pointed() {
		delete $self;
	}
};
