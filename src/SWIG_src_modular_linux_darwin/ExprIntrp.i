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
%module ExprIntrp

%include ExprIntrp_renames.i

%include typemaps.i
%include cmalloc.i
%include cpointer.i
%include carrays.i
%include exception.i
%include std_list.i
%include std_string.i
%include <python/std_basic_string.i>

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


%include ExprIntrp_dependencies.i


%include ExprIntrp_headers.i




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
		Handle_ExprIntrp_SequenceNodeOfSequenceOfNamedFunction const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ExprIntrp_SequenceNodeOfSequenceOfNamedFunction {
	ExprIntrp_SequenceNodeOfSequenceOfNamedFunction* GetObject() {
	return (ExprIntrp_SequenceNodeOfSequenceOfNamedFunction*)$self->Access();
	}
};
%extend Handle_ExprIntrp_SequenceNodeOfSequenceOfNamedFunction {
	~Handle_ExprIntrp_SequenceNodeOfSequenceOfNamedFunction() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_ExprIntrp_SequenceNodeOfSequenceOfNamedFunction\n");}
	}
};


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
		Handle_ExprIntrp_StackNodeOfStackOfGeneralFunction const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ExprIntrp_StackNodeOfStackOfGeneralFunction {
	ExprIntrp_StackNodeOfStackOfGeneralFunction* GetObject() {
	return (ExprIntrp_StackNodeOfStackOfGeneralFunction*)$self->Access();
	}
};
%extend Handle_ExprIntrp_StackNodeOfStackOfGeneralFunction {
	~Handle_ExprIntrp_StackNodeOfStackOfGeneralFunction() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_ExprIntrp_StackNodeOfStackOfGeneralFunction\n");}
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
		Handle_ExprIntrp_Generator const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ExprIntrp_Generator {
	ExprIntrp_Generator* GetObject() {
	return (ExprIntrp_Generator*)$self->Access();
	}
};
%extend Handle_ExprIntrp_Generator {
	~Handle_ExprIntrp_Generator() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_ExprIntrp_Generator\n");}
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
		Handle_ExprIntrp_GenExp const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ExprIntrp_GenExp {
	ExprIntrp_GenExp* GetObject() {
	return (ExprIntrp_GenExp*)$self->Access();
	}
};
%extend Handle_ExprIntrp_GenExp {
	~Handle_ExprIntrp_GenExp() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_ExprIntrp_GenExp\n");}
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
		Handle_ExprIntrp_SyntaxError const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ExprIntrp_SyntaxError {
	ExprIntrp_SyntaxError* GetObject() {
	return (ExprIntrp_SyntaxError*)$self->Access();
	}
};
%extend Handle_ExprIntrp_SyntaxError {
	~Handle_ExprIntrp_SyntaxError() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_ExprIntrp_SyntaxError\n");}
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
		Handle_ExprIntrp_StackNodeOfStackOfGeneralExpression const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ExprIntrp_StackNodeOfStackOfGeneralExpression {
	ExprIntrp_StackNodeOfStackOfGeneralExpression* GetObject() {
	return (ExprIntrp_StackNodeOfStackOfGeneralExpression*)$self->Access();
	}
};
%extend Handle_ExprIntrp_StackNodeOfStackOfGeneralExpression {
	~Handle_ExprIntrp_StackNodeOfStackOfGeneralExpression() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_ExprIntrp_StackNodeOfStackOfGeneralExpression\n");}
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
		Handle_ExprIntrp_StackNodeOfStackOfGeneralRelation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ExprIntrp_StackNodeOfStackOfGeneralRelation {
	ExprIntrp_StackNodeOfStackOfGeneralRelation* GetObject() {
	return (ExprIntrp_StackNodeOfStackOfGeneralRelation*)$self->Access();
	}
};
%extend Handle_ExprIntrp_StackNodeOfStackOfGeneralRelation {
	~Handle_ExprIntrp_StackNodeOfStackOfGeneralRelation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_ExprIntrp_StackNodeOfStackOfGeneralRelation\n");}
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
		Handle_ExprIntrp_SequenceNodeOfSequenceOfNamedExpression const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ExprIntrp_SequenceNodeOfSequenceOfNamedExpression {
	ExprIntrp_SequenceNodeOfSequenceOfNamedExpression* GetObject() {
	return (ExprIntrp_SequenceNodeOfSequenceOfNamedExpression*)$self->Access();
	}
};
%extend Handle_ExprIntrp_SequenceNodeOfSequenceOfNamedExpression {
	~Handle_ExprIntrp_SequenceNodeOfSequenceOfNamedExpression() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_ExprIntrp_SequenceNodeOfSequenceOfNamedExpression\n");}
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
		Handle_ExprIntrp_GenFct const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ExprIntrp_GenFct {
	ExprIntrp_GenFct* GetObject() {
	return (ExprIntrp_GenFct*)$self->Access();
	}
};
%extend Handle_ExprIntrp_GenFct {
	~Handle_ExprIntrp_GenFct() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_ExprIntrp_GenFct\n");}
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
		Handle_ExprIntrp_StackNodeOfStackOfNames const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ExprIntrp_StackNodeOfStackOfNames {
	ExprIntrp_StackNodeOfStackOfNames* GetObject() {
	return (ExprIntrp_StackNodeOfStackOfNames*)$self->Access();
	}
};
%extend Handle_ExprIntrp_StackNodeOfStackOfNames {
	~Handle_ExprIntrp_StackNodeOfStackOfNames() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_ExprIntrp_StackNodeOfStackOfNames\n");}
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
		Handle_ExprIntrp_GenRel const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ExprIntrp_GenRel {
	ExprIntrp_GenRel* GetObject() {
	return (ExprIntrp_GenRel*)$self->Access();
	}
};
%extend Handle_ExprIntrp_GenRel {
	~Handle_ExprIntrp_GenRel() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_ExprIntrp_GenRel\n");}
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
%extend ExprIntrp_Generator {
	~ExprIntrp_Generator() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of ExprIntrp_Generator\n");}
	}
};


%nodefaultctor ExprIntrp_GenFct;
class ExprIntrp_GenFct : public ExprIntrp_Generator {
	public:
		%feature("autodoc", "1");
		Handle_ExprIntrp_GenFct Create();
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
%extend ExprIntrp_GenFct {
	~ExprIntrp_GenFct() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of ExprIntrp_GenFct\n");}
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
%extend ExprIntrp_StackNodeOfStackOfNames {
	~ExprIntrp_StackNodeOfStackOfNames() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of ExprIntrp_StackNodeOfStackOfNames\n");}
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
		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		Handle_ExprIntrp_SyntaxError NewInstance(const char * aMessage);
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
%extend ExprIntrp_SyntaxError {
	~ExprIntrp_SyntaxError() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of ExprIntrp_SyntaxError\n");}
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
%extend ExprIntrp_SequenceNodeOfSequenceOfNamedExpression {
	~ExprIntrp_SequenceNodeOfSequenceOfNamedExpression() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of ExprIntrp_SequenceNodeOfSequenceOfNamedExpression\n");}
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
%extend ExprIntrp_StackIteratorOfStackOfNames {
	~ExprIntrp_StackIteratorOfStackOfNames() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of ExprIntrp_StackIteratorOfStackOfNames\n");}
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
%extend ExprIntrp_SequenceOfNamedFunction {
	~ExprIntrp_SequenceOfNamedFunction() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of ExprIntrp_SequenceOfNamedFunction\n");}
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
%extend ExprIntrp_StackIteratorOfStackOfGeneralExpression {
	~ExprIntrp_StackIteratorOfStackOfGeneralExpression() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of ExprIntrp_StackIteratorOfStackOfGeneralExpression\n");}
	}
};


%nodefaultctor ExprIntrp;
class ExprIntrp {
	public:

};
%extend ExprIntrp {
	~ExprIntrp() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of ExprIntrp\n");}
	}
};


%nodefaultctor ExprIntrp_GenRel;
class ExprIntrp_GenRel : public ExprIntrp_Generator {
	public:
		%feature("autodoc", "1");
		Handle_ExprIntrp_GenRel Create();
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
%extend ExprIntrp_GenRel {
	~ExprIntrp_GenRel() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of ExprIntrp_GenRel\n");}
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
%extend ExprIntrp_StackIteratorOfStackOfGeneralRelation {
	~ExprIntrp_StackIteratorOfStackOfGeneralRelation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of ExprIntrp_StackIteratorOfStackOfGeneralRelation\n");}
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
%extend ExprIntrp_StackNodeOfStackOfGeneralFunction {
	~ExprIntrp_StackNodeOfStackOfGeneralFunction() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of ExprIntrp_StackNodeOfStackOfGeneralFunction\n");}
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
%extend ExprIntrp_StackNodeOfStackOfGeneralRelation {
	~ExprIntrp_StackNodeOfStackOfGeneralRelation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of ExprIntrp_StackNodeOfStackOfGeneralRelation\n");}
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
%extend ExprIntrp_StackOfGeneralRelation {
	~ExprIntrp_StackOfGeneralRelation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of ExprIntrp_StackOfGeneralRelation\n");}
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
%extend ExprIntrp_StackNodeOfStackOfGeneralExpression {
	~ExprIntrp_StackNodeOfStackOfGeneralExpression() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of ExprIntrp_StackNodeOfStackOfGeneralExpression\n");}
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
%extend ExprIntrp_StackIteratorOfStackOfGeneralFunction {
	~ExprIntrp_StackIteratorOfStackOfGeneralFunction() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of ExprIntrp_StackIteratorOfStackOfGeneralFunction\n");}
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
%extend ExprIntrp_SequenceOfNamedExpression {
	~ExprIntrp_SequenceOfNamedExpression() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of ExprIntrp_SequenceOfNamedExpression\n");}
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
%extend ExprIntrp_StackOfGeneralFunction {
	~ExprIntrp_StackOfGeneralFunction() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of ExprIntrp_StackOfGeneralFunction\n");}
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
%extend ExprIntrp_StackOfGeneralExpression {
	~ExprIntrp_StackOfGeneralExpression() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of ExprIntrp_StackOfGeneralExpression\n");}
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
%extend ExprIntrp_SequenceNodeOfSequenceOfNamedFunction {
	~ExprIntrp_SequenceNodeOfSequenceOfNamedFunction() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of ExprIntrp_SequenceNodeOfSequenceOfNamedFunction\n");}
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
%extend ExprIntrp_StackOfNames {
	~ExprIntrp_StackOfNames() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of ExprIntrp_StackOfNames\n");}
	}
};


%nodefaultctor ExprIntrp_GenExp;
class ExprIntrp_GenExp : public ExprIntrp_Generator {
	public:
		%feature("autodoc", "1");
		Handle_ExprIntrp_GenExp Create();
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
%extend ExprIntrp_GenExp {
	~ExprIntrp_GenExp() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of ExprIntrp_GenExp\n");}
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
%extend ExprIntrp_Analysis {
	~ExprIntrp_Analysis() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of ExprIntrp_Analysis\n");}
	}
};
