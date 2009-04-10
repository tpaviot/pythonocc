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
%module Expr

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


%include Expr_dependencies.i


%include Expr_headers.i




%nodefaultctor Handle_Expr_GeneralExpression;
class Handle_Expr_GeneralExpression : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Expr_GeneralExpression();
		%feature("autodoc", "1");
		Handle_Expr_GeneralExpression(const Handle_Expr_GeneralExpression &aHandle);
		%feature("autodoc", "1");
		Handle_Expr_GeneralExpression(const Expr_GeneralExpression *anItem);
		%feature("autodoc", "1");
		Handle_Expr_GeneralExpression const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Expr_GeneralExpression {
	Expr_GeneralExpression* GetObject() {
	return (Expr_GeneralExpression*)$self->Access();
	}
};
%extend Handle_Expr_GeneralExpression {
	~Handle_Expr_GeneralExpression() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Expr_GeneralExpression\n");}
	}
};


%nodefaultctor Handle_Expr_UnaryExpression;
class Handle_Expr_UnaryExpression : public Handle_Expr_GeneralExpression {
	public:
		%feature("autodoc", "1");
		Handle_Expr_UnaryExpression();
		%feature("autodoc", "1");
		Handle_Expr_UnaryExpression(const Handle_Expr_UnaryExpression &aHandle);
		%feature("autodoc", "1");
		Handle_Expr_UnaryExpression(const Expr_UnaryExpression *anItem);
		%feature("autodoc", "1");
		Handle_Expr_UnaryExpression const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Expr_UnaryExpression {
	Expr_UnaryExpression* GetObject() {
	return (Expr_UnaryExpression*)$self->Access();
	}
};
%extend Handle_Expr_UnaryExpression {
	~Handle_Expr_UnaryExpression() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Expr_UnaryExpression\n");}
	}
};


%nodefaultctor Handle_Expr_Cosine;
class Handle_Expr_Cosine : public Handle_Expr_UnaryExpression {
	public:
		%feature("autodoc", "1");
		Handle_Expr_Cosine();
		%feature("autodoc", "1");
		Handle_Expr_Cosine(const Handle_Expr_Cosine &aHandle);
		%feature("autodoc", "1");
		Handle_Expr_Cosine(const Expr_Cosine *anItem);
		%feature("autodoc", "1");
		Handle_Expr_Cosine const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Expr_Cosine {
	Expr_Cosine* GetObject() {
	return (Expr_Cosine*)$self->Access();
	}
};
%extend Handle_Expr_Cosine {
	~Handle_Expr_Cosine() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Expr_Cosine\n");}
	}
};


%nodefaultctor Handle_Expr_ArcSine;
class Handle_Expr_ArcSine : public Handle_Expr_UnaryExpression {
	public:
		%feature("autodoc", "1");
		Handle_Expr_ArcSine();
		%feature("autodoc", "1");
		Handle_Expr_ArcSine(const Handle_Expr_ArcSine &aHandle);
		%feature("autodoc", "1");
		Handle_Expr_ArcSine(const Expr_ArcSine *anItem);
		%feature("autodoc", "1");
		Handle_Expr_ArcSine const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Expr_ArcSine {
	Expr_ArcSine* GetObject() {
	return (Expr_ArcSine*)$self->Access();
	}
};
%extend Handle_Expr_ArcSine {
	~Handle_Expr_ArcSine() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Expr_ArcSine\n");}
	}
};


%nodefaultctor Handle_Expr_UnaryMinus;
class Handle_Expr_UnaryMinus : public Handle_Expr_UnaryExpression {
	public:
		%feature("autodoc", "1");
		Handle_Expr_UnaryMinus();
		%feature("autodoc", "1");
		Handle_Expr_UnaryMinus(const Handle_Expr_UnaryMinus &aHandle);
		%feature("autodoc", "1");
		Handle_Expr_UnaryMinus(const Expr_UnaryMinus *anItem);
		%feature("autodoc", "1");
		Handle_Expr_UnaryMinus const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Expr_UnaryMinus {
	Expr_UnaryMinus* GetObject() {
	return (Expr_UnaryMinus*)$self->Access();
	}
};
%extend Handle_Expr_UnaryMinus {
	~Handle_Expr_UnaryMinus() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Expr_UnaryMinus\n");}
	}
};


%nodefaultctor Handle_Expr_ExprFailure;
class Handle_Expr_ExprFailure : public Handle_Standard_Failure {
	public:
		%feature("autodoc", "1");
		Handle_Expr_ExprFailure();
		%feature("autodoc", "1");
		Handle_Expr_ExprFailure(const Handle_Expr_ExprFailure &aHandle);
		%feature("autodoc", "1");
		Handle_Expr_ExprFailure(const Expr_ExprFailure *anItem);
		%feature("autodoc", "1");
		Handle_Expr_ExprFailure const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Expr_ExprFailure {
	Expr_ExprFailure* GetObject() {
	return (Expr_ExprFailure*)$self->Access();
	}
};
%extend Handle_Expr_ExprFailure {
	~Handle_Expr_ExprFailure() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Expr_ExprFailure\n");}
	}
};


%nodefaultctor Handle_Expr_NotEvaluable;
class Handle_Expr_NotEvaluable : public Handle_Expr_ExprFailure {
	public:
		%feature("autodoc", "1");
		Handle_Expr_NotEvaluable();
		%feature("autodoc", "1");
		Handle_Expr_NotEvaluable(const Handle_Expr_NotEvaluable &aHandle);
		%feature("autodoc", "1");
		Handle_Expr_NotEvaluable(const Expr_NotEvaluable *anItem);
		%feature("autodoc", "1");
		Handle_Expr_NotEvaluable const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Expr_NotEvaluable {
	Expr_NotEvaluable* GetObject() {
	return (Expr_NotEvaluable*)$self->Access();
	}
};
%extend Handle_Expr_NotEvaluable {
	~Handle_Expr_NotEvaluable() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Expr_NotEvaluable\n");}
	}
};


%nodefaultctor Handle_Expr_NumericValue;
class Handle_Expr_NumericValue : public Handle_Expr_GeneralExpression {
	public:
		%feature("autodoc", "1");
		Handle_Expr_NumericValue();
		%feature("autodoc", "1");
		Handle_Expr_NumericValue(const Handle_Expr_NumericValue &aHandle);
		%feature("autodoc", "1");
		Handle_Expr_NumericValue(const Expr_NumericValue *anItem);
		%feature("autodoc", "1");
		Handle_Expr_NumericValue const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Expr_NumericValue {
	Expr_NumericValue* GetObject() {
	return (Expr_NumericValue*)$self->Access();
	}
};
%extend Handle_Expr_NumericValue {
	~Handle_Expr_NumericValue() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Expr_NumericValue\n");}
	}
};


%nodefaultctor Handle_Expr_Sign;
class Handle_Expr_Sign : public Handle_Expr_UnaryExpression {
	public:
		%feature("autodoc", "1");
		Handle_Expr_Sign();
		%feature("autodoc", "1");
		Handle_Expr_Sign(const Handle_Expr_Sign &aHandle);
		%feature("autodoc", "1");
		Handle_Expr_Sign(const Expr_Sign *anItem);
		%feature("autodoc", "1");
		Handle_Expr_Sign const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Expr_Sign {
	Expr_Sign* GetObject() {
	return (Expr_Sign*)$self->Access();
	}
};
%extend Handle_Expr_Sign {
	~Handle_Expr_Sign() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Expr_Sign\n");}
	}
};


%nodefaultctor Handle_Expr_ArgCosh;
class Handle_Expr_ArgCosh : public Handle_Expr_UnaryExpression {
	public:
		%feature("autodoc", "1");
		Handle_Expr_ArgCosh();
		%feature("autodoc", "1");
		Handle_Expr_ArgCosh(const Handle_Expr_ArgCosh &aHandle);
		%feature("autodoc", "1");
		Handle_Expr_ArgCosh(const Expr_ArgCosh *anItem);
		%feature("autodoc", "1");
		Handle_Expr_ArgCosh const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Expr_ArgCosh {
	Expr_ArgCosh* GetObject() {
	return (Expr_ArgCosh*)$self->Access();
	}
};
%extend Handle_Expr_ArgCosh {
	~Handle_Expr_ArgCosh() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Expr_ArgCosh\n");}
	}
};


%nodefaultctor Handle_Expr_InvalidAssignment;
class Handle_Expr_InvalidAssignment : public Handle_Expr_ExprFailure {
	public:
		%feature("autodoc", "1");
		Handle_Expr_InvalidAssignment();
		%feature("autodoc", "1");
		Handle_Expr_InvalidAssignment(const Handle_Expr_InvalidAssignment &aHandle);
		%feature("autodoc", "1");
		Handle_Expr_InvalidAssignment(const Expr_InvalidAssignment *anItem);
		%feature("autodoc", "1");
		Handle_Expr_InvalidAssignment const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Expr_InvalidAssignment {
	Expr_InvalidAssignment* GetObject() {
	return (Expr_InvalidAssignment*)$self->Access();
	}
};
%extend Handle_Expr_InvalidAssignment {
	~Handle_Expr_InvalidAssignment() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Expr_InvalidAssignment\n");}
	}
};


%nodefaultctor Handle_Expr_ArcCosine;
class Handle_Expr_ArcCosine : public Handle_Expr_UnaryExpression {
	public:
		%feature("autodoc", "1");
		Handle_Expr_ArcCosine();
		%feature("autodoc", "1");
		Handle_Expr_ArcCosine(const Handle_Expr_ArcCosine &aHandle);
		%feature("autodoc", "1");
		Handle_Expr_ArcCosine(const Expr_ArcCosine *anItem);
		%feature("autodoc", "1");
		Handle_Expr_ArcCosine const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Expr_ArcCosine {
	Expr_ArcCosine* GetObject() {
	return (Expr_ArcCosine*)$self->Access();
	}
};
%extend Handle_Expr_ArcCosine {
	~Handle_Expr_ArcCosine() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Expr_ArcCosine\n");}
	}
};


%nodefaultctor Handle_Expr_InvalidOperand;
class Handle_Expr_InvalidOperand : public Handle_Expr_ExprFailure {
	public:
		%feature("autodoc", "1");
		Handle_Expr_InvalidOperand();
		%feature("autodoc", "1");
		Handle_Expr_InvalidOperand(const Handle_Expr_InvalidOperand &aHandle);
		%feature("autodoc", "1");
		Handle_Expr_InvalidOperand(const Expr_InvalidOperand *anItem);
		%feature("autodoc", "1");
		Handle_Expr_InvalidOperand const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Expr_InvalidOperand {
	Expr_InvalidOperand* GetObject() {
	return (Expr_InvalidOperand*)$self->Access();
	}
};
%extend Handle_Expr_InvalidOperand {
	~Handle_Expr_InvalidOperand() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Expr_InvalidOperand\n");}
	}
};


%nodefaultctor Handle_Expr_GeneralRelation;
class Handle_Expr_GeneralRelation : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Expr_GeneralRelation();
		%feature("autodoc", "1");
		Handle_Expr_GeneralRelation(const Handle_Expr_GeneralRelation &aHandle);
		%feature("autodoc", "1");
		Handle_Expr_GeneralRelation(const Expr_GeneralRelation *anItem);
		%feature("autodoc", "1");
		Handle_Expr_GeneralRelation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Expr_GeneralRelation {
	Expr_GeneralRelation* GetObject() {
	return (Expr_GeneralRelation*)$self->Access();
	}
};
%extend Handle_Expr_GeneralRelation {
	~Handle_Expr_GeneralRelation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Expr_GeneralRelation\n");}
	}
};


%nodefaultctor Handle_Expr_SingleRelation;
class Handle_Expr_SingleRelation : public Handle_Expr_GeneralRelation {
	public:
		%feature("autodoc", "1");
		Handle_Expr_SingleRelation();
		%feature("autodoc", "1");
		Handle_Expr_SingleRelation(const Handle_Expr_SingleRelation &aHandle);
		%feature("autodoc", "1");
		Handle_Expr_SingleRelation(const Expr_SingleRelation *anItem);
		%feature("autodoc", "1");
		Handle_Expr_SingleRelation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Expr_SingleRelation {
	Expr_SingleRelation* GetObject() {
	return (Expr_SingleRelation*)$self->Access();
	}
};
%extend Handle_Expr_SingleRelation {
	~Handle_Expr_SingleRelation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Expr_SingleRelation\n");}
	}
};


%nodefaultctor Handle_Expr_Different;
class Handle_Expr_Different : public Handle_Expr_SingleRelation {
	public:
		%feature("autodoc", "1");
		Handle_Expr_Different();
		%feature("autodoc", "1");
		Handle_Expr_Different(const Handle_Expr_Different &aHandle);
		%feature("autodoc", "1");
		Handle_Expr_Different(const Expr_Different *anItem);
		%feature("autodoc", "1");
		Handle_Expr_Different const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Expr_Different {
	Expr_Different* GetObject() {
	return (Expr_Different*)$self->Access();
	}
};
%extend Handle_Expr_Different {
	~Handle_Expr_Different() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Expr_Different\n");}
	}
};


%nodefaultctor Handle_Expr_BinaryExpression;
class Handle_Expr_BinaryExpression : public Handle_Expr_GeneralExpression {
	public:
		%feature("autodoc", "1");
		Handle_Expr_BinaryExpression();
		%feature("autodoc", "1");
		Handle_Expr_BinaryExpression(const Handle_Expr_BinaryExpression &aHandle);
		%feature("autodoc", "1");
		Handle_Expr_BinaryExpression(const Expr_BinaryExpression *anItem);
		%feature("autodoc", "1");
		Handle_Expr_BinaryExpression const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Expr_BinaryExpression {
	Expr_BinaryExpression* GetObject() {
	return (Expr_BinaryExpression*)$self->Access();
	}
};
%extend Handle_Expr_BinaryExpression {
	~Handle_Expr_BinaryExpression() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Expr_BinaryExpression\n");}
	}
};


%nodefaultctor Handle_Expr_Division;
class Handle_Expr_Division : public Handle_Expr_BinaryExpression {
	public:
		%feature("autodoc", "1");
		Handle_Expr_Division();
		%feature("autodoc", "1");
		Handle_Expr_Division(const Handle_Expr_Division &aHandle);
		%feature("autodoc", "1");
		Handle_Expr_Division(const Expr_Division *anItem);
		%feature("autodoc", "1");
		Handle_Expr_Division const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Expr_Division {
	Expr_Division* GetObject() {
	return (Expr_Division*)$self->Access();
	}
};
%extend Handle_Expr_Division {
	~Handle_Expr_Division() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Expr_Division\n");}
	}
};


%nodefaultctor Handle_Expr_PolyExpression;
class Handle_Expr_PolyExpression : public Handle_Expr_GeneralExpression {
	public:
		%feature("autodoc", "1");
		Handle_Expr_PolyExpression();
		%feature("autodoc", "1");
		Handle_Expr_PolyExpression(const Handle_Expr_PolyExpression &aHandle);
		%feature("autodoc", "1");
		Handle_Expr_PolyExpression(const Expr_PolyExpression *anItem);
		%feature("autodoc", "1");
		Handle_Expr_PolyExpression const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Expr_PolyExpression {
	Expr_PolyExpression* GetObject() {
	return (Expr_PolyExpression*)$self->Access();
	}
};
%extend Handle_Expr_PolyExpression {
	~Handle_Expr_PolyExpression() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Expr_PolyExpression\n");}
	}
};


%nodefaultctor Handle_Expr_ArgSinh;
class Handle_Expr_ArgSinh : public Handle_Expr_UnaryExpression {
	public:
		%feature("autodoc", "1");
		Handle_Expr_ArgSinh();
		%feature("autodoc", "1");
		Handle_Expr_ArgSinh(const Handle_Expr_ArgSinh &aHandle);
		%feature("autodoc", "1");
		Handle_Expr_ArgSinh(const Expr_ArgSinh *anItem);
		%feature("autodoc", "1");
		Handle_Expr_ArgSinh const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Expr_ArgSinh {
	Expr_ArgSinh* GetObject() {
	return (Expr_ArgSinh*)$self->Access();
	}
};
%extend Handle_Expr_ArgSinh {
	~Handle_Expr_ArgSinh() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Expr_ArgSinh\n");}
	}
};


%nodefaultctor Handle_Expr_InvalidFunction;
class Handle_Expr_InvalidFunction : public Handle_Expr_ExprFailure {
	public:
		%feature("autodoc", "1");
		Handle_Expr_InvalidFunction();
		%feature("autodoc", "1");
		Handle_Expr_InvalidFunction(const Handle_Expr_InvalidFunction &aHandle);
		%feature("autodoc", "1");
		Handle_Expr_InvalidFunction(const Expr_InvalidFunction *anItem);
		%feature("autodoc", "1");
		Handle_Expr_InvalidFunction const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Expr_InvalidFunction {
	Expr_InvalidFunction* GetObject() {
	return (Expr_InvalidFunction*)$self->Access();
	}
};
%extend Handle_Expr_InvalidFunction {
	~Handle_Expr_InvalidFunction() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Expr_InvalidFunction\n");}
	}
};


%nodefaultctor Handle_Expr_LessThan;
class Handle_Expr_LessThan : public Handle_Expr_SingleRelation {
	public:
		%feature("autodoc", "1");
		Handle_Expr_LessThan();
		%feature("autodoc", "1");
		Handle_Expr_LessThan(const Handle_Expr_LessThan &aHandle);
		%feature("autodoc", "1");
		Handle_Expr_LessThan(const Expr_LessThan *anItem);
		%feature("autodoc", "1");
		Handle_Expr_LessThan const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Expr_LessThan {
	Expr_LessThan* GetObject() {
	return (Expr_LessThan*)$self->Access();
	}
};
%extend Handle_Expr_LessThan {
	~Handle_Expr_LessThan() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Expr_LessThan\n");}
	}
};


%nodefaultctor Handle_Expr_GreaterThanOrEqual;
class Handle_Expr_GreaterThanOrEqual : public Handle_Expr_SingleRelation {
	public:
		%feature("autodoc", "1");
		Handle_Expr_GreaterThanOrEqual();
		%feature("autodoc", "1");
		Handle_Expr_GreaterThanOrEqual(const Handle_Expr_GreaterThanOrEqual &aHandle);
		%feature("autodoc", "1");
		Handle_Expr_GreaterThanOrEqual(const Expr_GreaterThanOrEqual *anItem);
		%feature("autodoc", "1");
		Handle_Expr_GreaterThanOrEqual const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Expr_GreaterThanOrEqual {
	Expr_GreaterThanOrEqual* GetObject() {
	return (Expr_GreaterThanOrEqual*)$self->Access();
	}
};
%extend Handle_Expr_GreaterThanOrEqual {
	~Handle_Expr_GreaterThanOrEqual() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Expr_GreaterThanOrEqual\n");}
	}
};


%nodefaultctor Handle_Expr_LogOf10;
class Handle_Expr_LogOf10 : public Handle_Expr_UnaryExpression {
	public:
		%feature("autodoc", "1");
		Handle_Expr_LogOf10();
		%feature("autodoc", "1");
		Handle_Expr_LogOf10(const Handle_Expr_LogOf10 &aHandle);
		%feature("autodoc", "1");
		Handle_Expr_LogOf10(const Expr_LogOf10 *anItem);
		%feature("autodoc", "1");
		Handle_Expr_LogOf10 const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Expr_LogOf10 {
	Expr_LogOf10* GetObject() {
	return (Expr_LogOf10*)$self->Access();
	}
};
%extend Handle_Expr_LogOf10 {
	~Handle_Expr_LogOf10() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Expr_LogOf10\n");}
	}
};


%nodefaultctor Handle_Expr_Exponential;
class Handle_Expr_Exponential : public Handle_Expr_UnaryExpression {
	public:
		%feature("autodoc", "1");
		Handle_Expr_Exponential();
		%feature("autodoc", "1");
		Handle_Expr_Exponential(const Handle_Expr_Exponential &aHandle);
		%feature("autodoc", "1");
		Handle_Expr_Exponential(const Expr_Exponential *anItem);
		%feature("autodoc", "1");
		Handle_Expr_Exponential const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Expr_Exponential {
	Expr_Exponential* GetObject() {
	return (Expr_Exponential*)$self->Access();
	}
};
%extend Handle_Expr_Exponential {
	~Handle_Expr_Exponential() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Expr_Exponential\n");}
	}
};


%nodefaultctor Handle_Expr_Absolute;
class Handle_Expr_Absolute : public Handle_Expr_UnaryExpression {
	public:
		%feature("autodoc", "1");
		Handle_Expr_Absolute();
		%feature("autodoc", "1");
		Handle_Expr_Absolute(const Handle_Expr_Absolute &aHandle);
		%feature("autodoc", "1");
		Handle_Expr_Absolute(const Expr_Absolute *anItem);
		%feature("autodoc", "1");
		Handle_Expr_Absolute const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Expr_Absolute {
	Expr_Absolute* GetObject() {
	return (Expr_Absolute*)$self->Access();
	}
};
%extend Handle_Expr_Absolute {
	~Handle_Expr_Absolute() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Expr_Absolute\n");}
	}
};


%nodefaultctor Handle_Expr_PolyFunction;
class Handle_Expr_PolyFunction : public Handle_Expr_PolyExpression {
	public:
		%feature("autodoc", "1");
		Handle_Expr_PolyFunction();
		%feature("autodoc", "1");
		Handle_Expr_PolyFunction(const Handle_Expr_PolyFunction &aHandle);
		%feature("autodoc", "1");
		Handle_Expr_PolyFunction(const Expr_PolyFunction *anItem);
		%feature("autodoc", "1");
		Handle_Expr_PolyFunction const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Expr_PolyFunction {
	Expr_PolyFunction* GetObject() {
	return (Expr_PolyFunction*)$self->Access();
	}
};
%extend Handle_Expr_PolyFunction {
	~Handle_Expr_PolyFunction() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Expr_PolyFunction\n");}
	}
};


%nodefaultctor Handle_Expr_NamedExpression;
class Handle_Expr_NamedExpression : public Handle_Expr_GeneralExpression {
	public:
		%feature("autodoc", "1");
		Handle_Expr_NamedExpression();
		%feature("autodoc", "1");
		Handle_Expr_NamedExpression(const Handle_Expr_NamedExpression &aHandle);
		%feature("autodoc", "1");
		Handle_Expr_NamedExpression(const Expr_NamedExpression *anItem);
		%feature("autodoc", "1");
		Handle_Expr_NamedExpression const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Expr_NamedExpression {
	Expr_NamedExpression* GetObject() {
	return (Expr_NamedExpression*)$self->Access();
	}
};
%extend Handle_Expr_NamedExpression {
	~Handle_Expr_NamedExpression() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Expr_NamedExpression\n");}
	}
};


%nodefaultctor Handle_Expr_NamedConstant;
class Handle_Expr_NamedConstant : public Handle_Expr_NamedExpression {
	public:
		%feature("autodoc", "1");
		Handle_Expr_NamedConstant();
		%feature("autodoc", "1");
		Handle_Expr_NamedConstant(const Handle_Expr_NamedConstant &aHandle);
		%feature("autodoc", "1");
		Handle_Expr_NamedConstant(const Expr_NamedConstant *anItem);
		%feature("autodoc", "1");
		Handle_Expr_NamedConstant const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Expr_NamedConstant {
	Expr_NamedConstant* GetObject() {
	return (Expr_NamedConstant*)$self->Access();
	}
};
%extend Handle_Expr_NamedConstant {
	~Handle_Expr_NamedConstant() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Expr_NamedConstant\n");}
	}
};


%nodefaultctor Handle_Expr_NotAssigned;
class Handle_Expr_NotAssigned : public Handle_Expr_ExprFailure {
	public:
		%feature("autodoc", "1");
		Handle_Expr_NotAssigned();
		%feature("autodoc", "1");
		Handle_Expr_NotAssigned(const Handle_Expr_NotAssigned &aHandle);
		%feature("autodoc", "1");
		Handle_Expr_NotAssigned(const Expr_NotAssigned *anItem);
		%feature("autodoc", "1");
		Handle_Expr_NotAssigned const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Expr_NotAssigned {
	Expr_NotAssigned* GetObject() {
	return (Expr_NotAssigned*)$self->Access();
	}
};
%extend Handle_Expr_NotAssigned {
	~Handle_Expr_NotAssigned() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Expr_NotAssigned\n");}
	}
};


%nodefaultctor Handle_Expr_NamedUnknown;
class Handle_Expr_NamedUnknown : public Handle_Expr_NamedExpression {
	public:
		%feature("autodoc", "1");
		Handle_Expr_NamedUnknown();
		%feature("autodoc", "1");
		Handle_Expr_NamedUnknown(const Handle_Expr_NamedUnknown &aHandle);
		%feature("autodoc", "1");
		Handle_Expr_NamedUnknown(const Expr_NamedUnknown *anItem);
		%feature("autodoc", "1");
		Handle_Expr_NamedUnknown const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Expr_NamedUnknown {
	Expr_NamedUnknown* GetObject() {
	return (Expr_NamedUnknown*)$self->Access();
	}
};
%extend Handle_Expr_NamedUnknown {
	~Handle_Expr_NamedUnknown() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Expr_NamedUnknown\n");}
	}
};


%nodefaultctor Handle_Expr_Sum;
class Handle_Expr_Sum : public Handle_Expr_PolyExpression {
	public:
		%feature("autodoc", "1");
		Handle_Expr_Sum();
		%feature("autodoc", "1");
		Handle_Expr_Sum(const Handle_Expr_Sum &aHandle);
		%feature("autodoc", "1");
		Handle_Expr_Sum(const Expr_Sum *anItem);
		%feature("autodoc", "1");
		Handle_Expr_Sum const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Expr_Sum {
	Expr_Sum* GetObject() {
	return (Expr_Sum*)$self->Access();
	}
};
%extend Handle_Expr_Sum {
	~Handle_Expr_Sum() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Expr_Sum\n");}
	}
};


%nodefaultctor Handle_Expr_LogOfe;
class Handle_Expr_LogOfe : public Handle_Expr_UnaryExpression {
	public:
		%feature("autodoc", "1");
		Handle_Expr_LogOfe();
		%feature("autodoc", "1");
		Handle_Expr_LogOfe(const Handle_Expr_LogOfe &aHandle);
		%feature("autodoc", "1");
		Handle_Expr_LogOfe(const Expr_LogOfe *anItem);
		%feature("autodoc", "1");
		Handle_Expr_LogOfe const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Expr_LogOfe {
	Expr_LogOfe* GetObject() {
	return (Expr_LogOfe*)$self->Access();
	}
};
%extend Handle_Expr_LogOfe {
	~Handle_Expr_LogOfe() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Expr_LogOfe\n");}
	}
};


%nodefaultctor Handle_Expr_UnaryFunction;
class Handle_Expr_UnaryFunction : public Handle_Expr_UnaryExpression {
	public:
		%feature("autodoc", "1");
		Handle_Expr_UnaryFunction();
		%feature("autodoc", "1");
		Handle_Expr_UnaryFunction(const Handle_Expr_UnaryFunction &aHandle);
		%feature("autodoc", "1");
		Handle_Expr_UnaryFunction(const Expr_UnaryFunction *anItem);
		%feature("autodoc", "1");
		Handle_Expr_UnaryFunction const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Expr_UnaryFunction {
	Expr_UnaryFunction* GetObject() {
	return (Expr_UnaryFunction*)$self->Access();
	}
};
%extend Handle_Expr_UnaryFunction {
	~Handle_Expr_UnaryFunction() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Expr_UnaryFunction\n");}
	}
};


%nodefaultctor Handle_Expr_SequenceNodeOfSequenceOfGeneralRelation;
class Handle_Expr_SequenceNodeOfSequenceOfGeneralRelation : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_Expr_SequenceNodeOfSequenceOfGeneralRelation();
		%feature("autodoc", "1");
		Handle_Expr_SequenceNodeOfSequenceOfGeneralRelation(const Handle_Expr_SequenceNodeOfSequenceOfGeneralRelation &aHandle);
		%feature("autodoc", "1");
		Handle_Expr_SequenceNodeOfSequenceOfGeneralRelation(const Expr_SequenceNodeOfSequenceOfGeneralRelation *anItem);
		%feature("autodoc", "1");
		Handle_Expr_SequenceNodeOfSequenceOfGeneralRelation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Expr_SequenceNodeOfSequenceOfGeneralRelation {
	Expr_SequenceNodeOfSequenceOfGeneralRelation* GetObject() {
	return (Expr_SequenceNodeOfSequenceOfGeneralRelation*)$self->Access();
	}
};
%extend Handle_Expr_SequenceNodeOfSequenceOfGeneralRelation {
	~Handle_Expr_SequenceNodeOfSequenceOfGeneralRelation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Expr_SequenceNodeOfSequenceOfGeneralRelation\n");}
	}
};


%nodefaultctor Handle_Expr_BinaryFunction;
class Handle_Expr_BinaryFunction : public Handle_Expr_BinaryExpression {
	public:
		%feature("autodoc", "1");
		Handle_Expr_BinaryFunction();
		%feature("autodoc", "1");
		Handle_Expr_BinaryFunction(const Handle_Expr_BinaryFunction &aHandle);
		%feature("autodoc", "1");
		Handle_Expr_BinaryFunction(const Expr_BinaryFunction *anItem);
		%feature("autodoc", "1");
		Handle_Expr_BinaryFunction const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Expr_BinaryFunction {
	Expr_BinaryFunction* GetObject() {
	return (Expr_BinaryFunction*)$self->Access();
	}
};
%extend Handle_Expr_BinaryFunction {
	~Handle_Expr_BinaryFunction() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Expr_BinaryFunction\n");}
	}
};


%nodefaultctor Handle_Expr_Difference;
class Handle_Expr_Difference : public Handle_Expr_BinaryExpression {
	public:
		%feature("autodoc", "1");
		Handle_Expr_Difference();
		%feature("autodoc", "1");
		Handle_Expr_Difference(const Handle_Expr_Difference &aHandle);
		%feature("autodoc", "1");
		Handle_Expr_Difference(const Expr_Difference *anItem);
		%feature("autodoc", "1");
		Handle_Expr_Difference const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Expr_Difference {
	Expr_Difference* GetObject() {
	return (Expr_Difference*)$self->Access();
	}
};
%extend Handle_Expr_Difference {
	~Handle_Expr_Difference() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Expr_Difference\n");}
	}
};


%nodefaultctor Handle_Expr_SquareRoot;
class Handle_Expr_SquareRoot : public Handle_Expr_UnaryExpression {
	public:
		%feature("autodoc", "1");
		Handle_Expr_SquareRoot();
		%feature("autodoc", "1");
		Handle_Expr_SquareRoot(const Handle_Expr_SquareRoot &aHandle);
		%feature("autodoc", "1");
		Handle_Expr_SquareRoot(const Expr_SquareRoot *anItem);
		%feature("autodoc", "1");
		Handle_Expr_SquareRoot const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Expr_SquareRoot {
	Expr_SquareRoot* GetObject() {
	return (Expr_SquareRoot*)$self->Access();
	}
};
%extend Handle_Expr_SquareRoot {
	~Handle_Expr_SquareRoot() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Expr_SquareRoot\n");}
	}
};


%nodefaultctor Handle_Expr_Sinh;
class Handle_Expr_Sinh : public Handle_Expr_UnaryExpression {
	public:
		%feature("autodoc", "1");
		Handle_Expr_Sinh();
		%feature("autodoc", "1");
		Handle_Expr_Sinh(const Handle_Expr_Sinh &aHandle);
		%feature("autodoc", "1");
		Handle_Expr_Sinh(const Expr_Sinh *anItem);
		%feature("autodoc", "1");
		Handle_Expr_Sinh const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Expr_Sinh {
	Expr_Sinh* GetObject() {
	return (Expr_Sinh*)$self->Access();
	}
};
%extend Handle_Expr_Sinh {
	~Handle_Expr_Sinh() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Expr_Sinh\n");}
	}
};


%nodefaultctor Handle_Expr_Cosh;
class Handle_Expr_Cosh : public Handle_Expr_UnaryExpression {
	public:
		%feature("autodoc", "1");
		Handle_Expr_Cosh();
		%feature("autodoc", "1");
		Handle_Expr_Cosh(const Handle_Expr_Cosh &aHandle);
		%feature("autodoc", "1");
		Handle_Expr_Cosh(const Expr_Cosh *anItem);
		%feature("autodoc", "1");
		Handle_Expr_Cosh const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Expr_Cosh {
	Expr_Cosh* GetObject() {
	return (Expr_Cosh*)$self->Access();
	}
};
%extend Handle_Expr_Cosh {
	~Handle_Expr_Cosh() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Expr_Cosh\n");}
	}
};


%nodefaultctor Handle_Expr_Equal;
class Handle_Expr_Equal : public Handle_Expr_SingleRelation {
	public:
		%feature("autodoc", "1");
		Handle_Expr_Equal();
		%feature("autodoc", "1");
		Handle_Expr_Equal(const Handle_Expr_Equal &aHandle);
		%feature("autodoc", "1");
		Handle_Expr_Equal(const Expr_Equal *anItem);
		%feature("autodoc", "1");
		Handle_Expr_Equal const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Expr_Equal {
	Expr_Equal* GetObject() {
	return (Expr_Equal*)$self->Access();
	}
};
%extend Handle_Expr_Equal {
	~Handle_Expr_Equal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Expr_Equal\n");}
	}
};


%nodefaultctor Handle_Expr_Sine;
class Handle_Expr_Sine : public Handle_Expr_UnaryExpression {
	public:
		%feature("autodoc", "1");
		Handle_Expr_Sine();
		%feature("autodoc", "1");
		Handle_Expr_Sine(const Handle_Expr_Sine &aHandle);
		%feature("autodoc", "1");
		Handle_Expr_Sine(const Expr_Sine *anItem);
		%feature("autodoc", "1");
		Handle_Expr_Sine const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Expr_Sine {
	Expr_Sine* GetObject() {
	return (Expr_Sine*)$self->Access();
	}
};
%extend Handle_Expr_Sine {
	~Handle_Expr_Sine() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Expr_Sine\n");}
	}
};


%nodefaultctor Handle_Expr_SequenceNodeOfSequenceOfGeneralExpression;
class Handle_Expr_SequenceNodeOfSequenceOfGeneralExpression : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_Expr_SequenceNodeOfSequenceOfGeneralExpression();
		%feature("autodoc", "1");
		Handle_Expr_SequenceNodeOfSequenceOfGeneralExpression(const Handle_Expr_SequenceNodeOfSequenceOfGeneralExpression &aHandle);
		%feature("autodoc", "1");
		Handle_Expr_SequenceNodeOfSequenceOfGeneralExpression(const Expr_SequenceNodeOfSequenceOfGeneralExpression *anItem);
		%feature("autodoc", "1");
		Handle_Expr_SequenceNodeOfSequenceOfGeneralExpression const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Expr_SequenceNodeOfSequenceOfGeneralExpression {
	Expr_SequenceNodeOfSequenceOfGeneralExpression* GetObject() {
	return (Expr_SequenceNodeOfSequenceOfGeneralExpression*)$self->Access();
	}
};
%extend Handle_Expr_SequenceNodeOfSequenceOfGeneralExpression {
	~Handle_Expr_SequenceNodeOfSequenceOfGeneralExpression() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Expr_SequenceNodeOfSequenceOfGeneralExpression\n");}
	}
};


%nodefaultctor Handle_Expr_ArcTangent;
class Handle_Expr_ArcTangent : public Handle_Expr_UnaryExpression {
	public:
		%feature("autodoc", "1");
		Handle_Expr_ArcTangent();
		%feature("autodoc", "1");
		Handle_Expr_ArcTangent(const Handle_Expr_ArcTangent &aHandle);
		%feature("autodoc", "1");
		Handle_Expr_ArcTangent(const Expr_ArcTangent *anItem);
		%feature("autodoc", "1");
		Handle_Expr_ArcTangent const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Expr_ArcTangent {
	Expr_ArcTangent* GetObject() {
	return (Expr_ArcTangent*)$self->Access();
	}
};
%extend Handle_Expr_ArcTangent {
	~Handle_Expr_ArcTangent() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Expr_ArcTangent\n");}
	}
};


%nodefaultctor Handle_Expr_GeneralFunction;
class Handle_Expr_GeneralFunction : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Expr_GeneralFunction();
		%feature("autodoc", "1");
		Handle_Expr_GeneralFunction(const Handle_Expr_GeneralFunction &aHandle);
		%feature("autodoc", "1");
		Handle_Expr_GeneralFunction(const Expr_GeneralFunction *anItem);
		%feature("autodoc", "1");
		Handle_Expr_GeneralFunction const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Expr_GeneralFunction {
	Expr_GeneralFunction* GetObject() {
	return (Expr_GeneralFunction*)$self->Access();
	}
};
%extend Handle_Expr_GeneralFunction {
	~Handle_Expr_GeneralFunction() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Expr_GeneralFunction\n");}
	}
};


%nodefaultctor Handle_Expr_IndexedMapNodeOfMapOfNamedUnknown;
class Handle_Expr_IndexedMapNodeOfMapOfNamedUnknown : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_Expr_IndexedMapNodeOfMapOfNamedUnknown();
		%feature("autodoc", "1");
		Handle_Expr_IndexedMapNodeOfMapOfNamedUnknown(const Handle_Expr_IndexedMapNodeOfMapOfNamedUnknown &aHandle);
		%feature("autodoc", "1");
		Handle_Expr_IndexedMapNodeOfMapOfNamedUnknown(const Expr_IndexedMapNodeOfMapOfNamedUnknown *anItem);
		%feature("autodoc", "1");
		Handle_Expr_IndexedMapNodeOfMapOfNamedUnknown const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Expr_IndexedMapNodeOfMapOfNamedUnknown {
	Expr_IndexedMapNodeOfMapOfNamedUnknown* GetObject() {
	return (Expr_IndexedMapNodeOfMapOfNamedUnknown*)$self->Access();
	}
};
%extend Handle_Expr_IndexedMapNodeOfMapOfNamedUnknown {
	~Handle_Expr_IndexedMapNodeOfMapOfNamedUnknown() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Expr_IndexedMapNodeOfMapOfNamedUnknown\n");}
	}
};


%nodefaultctor Handle_Expr_Exponentiate;
class Handle_Expr_Exponentiate : public Handle_Expr_BinaryExpression {
	public:
		%feature("autodoc", "1");
		Handle_Expr_Exponentiate();
		%feature("autodoc", "1");
		Handle_Expr_Exponentiate(const Handle_Expr_Exponentiate &aHandle);
		%feature("autodoc", "1");
		Handle_Expr_Exponentiate(const Expr_Exponentiate *anItem);
		%feature("autodoc", "1");
		Handle_Expr_Exponentiate const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Expr_Exponentiate {
	Expr_Exponentiate* GetObject() {
	return (Expr_Exponentiate*)$self->Access();
	}
};
%extend Handle_Expr_Exponentiate {
	~Handle_Expr_Exponentiate() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Expr_Exponentiate\n");}
	}
};


%nodefaultctor Handle_Expr_Tanh;
class Handle_Expr_Tanh : public Handle_Expr_UnaryExpression {
	public:
		%feature("autodoc", "1");
		Handle_Expr_Tanh();
		%feature("autodoc", "1");
		Handle_Expr_Tanh(const Handle_Expr_Tanh &aHandle);
		%feature("autodoc", "1");
		Handle_Expr_Tanh(const Expr_Tanh *anItem);
		%feature("autodoc", "1");
		Handle_Expr_Tanh const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Expr_Tanh {
	Expr_Tanh* GetObject() {
	return (Expr_Tanh*)$self->Access();
	}
};
%extend Handle_Expr_Tanh {
	~Handle_Expr_Tanh() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Expr_Tanh\n");}
	}
};


%nodefaultctor Handle_Expr_NamedFunction;
class Handle_Expr_NamedFunction : public Handle_Expr_GeneralFunction {
	public:
		%feature("autodoc", "1");
		Handle_Expr_NamedFunction();
		%feature("autodoc", "1");
		Handle_Expr_NamedFunction(const Handle_Expr_NamedFunction &aHandle);
		%feature("autodoc", "1");
		Handle_Expr_NamedFunction(const Expr_NamedFunction *anItem);
		%feature("autodoc", "1");
		Handle_Expr_NamedFunction const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Expr_NamedFunction {
	Expr_NamedFunction* GetObject() {
	return (Expr_NamedFunction*)$self->Access();
	}
};
%extend Handle_Expr_NamedFunction {
	~Handle_Expr_NamedFunction() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Expr_NamedFunction\n");}
	}
};


%nodefaultctor Handle_Expr_SystemRelation;
class Handle_Expr_SystemRelation : public Handle_Expr_GeneralRelation {
	public:
		%feature("autodoc", "1");
		Handle_Expr_SystemRelation();
		%feature("autodoc", "1");
		Handle_Expr_SystemRelation(const Handle_Expr_SystemRelation &aHandle);
		%feature("autodoc", "1");
		Handle_Expr_SystemRelation(const Expr_SystemRelation *anItem);
		%feature("autodoc", "1");
		Handle_Expr_SystemRelation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Expr_SystemRelation {
	Expr_SystemRelation* GetObject() {
	return (Expr_SystemRelation*)$self->Access();
	}
};
%extend Handle_Expr_SystemRelation {
	~Handle_Expr_SystemRelation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Expr_SystemRelation\n");}
	}
};


%nodefaultctor Handle_Expr_Product;
class Handle_Expr_Product : public Handle_Expr_PolyExpression {
	public:
		%feature("autodoc", "1");
		Handle_Expr_Product();
		%feature("autodoc", "1");
		Handle_Expr_Product(const Handle_Expr_Product &aHandle);
		%feature("autodoc", "1");
		Handle_Expr_Product(const Expr_Product *anItem);
		%feature("autodoc", "1");
		Handle_Expr_Product const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Expr_Product {
	Expr_Product* GetObject() {
	return (Expr_Product*)$self->Access();
	}
};
%extend Handle_Expr_Product {
	~Handle_Expr_Product() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Expr_Product\n");}
	}
};


%nodefaultctor Handle_Expr_LessThanOrEqual;
class Handle_Expr_LessThanOrEqual : public Handle_Expr_SingleRelation {
	public:
		%feature("autodoc", "1");
		Handle_Expr_LessThanOrEqual();
		%feature("autodoc", "1");
		Handle_Expr_LessThanOrEqual(const Handle_Expr_LessThanOrEqual &aHandle);
		%feature("autodoc", "1");
		Handle_Expr_LessThanOrEqual(const Expr_LessThanOrEqual *anItem);
		%feature("autodoc", "1");
		Handle_Expr_LessThanOrEqual const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Expr_LessThanOrEqual {
	Expr_LessThanOrEqual* GetObject() {
	return (Expr_LessThanOrEqual*)$self->Access();
	}
};
%extend Handle_Expr_LessThanOrEqual {
	~Handle_Expr_LessThanOrEqual() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Expr_LessThanOrEqual\n");}
	}
};


%nodefaultctor Handle_Expr_ArgTanh;
class Handle_Expr_ArgTanh : public Handle_Expr_UnaryExpression {
	public:
		%feature("autodoc", "1");
		Handle_Expr_ArgTanh();
		%feature("autodoc", "1");
		Handle_Expr_ArgTanh(const Handle_Expr_ArgTanh &aHandle);
		%feature("autodoc", "1");
		Handle_Expr_ArgTanh(const Expr_ArgTanh *anItem);
		%feature("autodoc", "1");
		Handle_Expr_ArgTanh const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Expr_ArgTanh {
	Expr_ArgTanh* GetObject() {
	return (Expr_ArgTanh*)$self->Access();
	}
};
%extend Handle_Expr_ArgTanh {
	~Handle_Expr_ArgTanh() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Expr_ArgTanh\n");}
	}
};


%nodefaultctor Handle_Expr_FunctionDerivative;
class Handle_Expr_FunctionDerivative : public Handle_Expr_GeneralFunction {
	public:
		%feature("autodoc", "1");
		Handle_Expr_FunctionDerivative();
		%feature("autodoc", "1");
		Handle_Expr_FunctionDerivative(const Handle_Expr_FunctionDerivative &aHandle);
		%feature("autodoc", "1");
		Handle_Expr_FunctionDerivative(const Expr_FunctionDerivative *anItem);
		%feature("autodoc", "1");
		Handle_Expr_FunctionDerivative const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Expr_FunctionDerivative {
	Expr_FunctionDerivative* GetObject() {
	return (Expr_FunctionDerivative*)$self->Access();
	}
};
%extend Handle_Expr_FunctionDerivative {
	~Handle_Expr_FunctionDerivative() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Expr_FunctionDerivative\n");}
	}
};


%nodefaultctor Handle_Expr_Tangent;
class Handle_Expr_Tangent : public Handle_Expr_UnaryExpression {
	public:
		%feature("autodoc", "1");
		Handle_Expr_Tangent();
		%feature("autodoc", "1");
		Handle_Expr_Tangent(const Handle_Expr_Tangent &aHandle);
		%feature("autodoc", "1");
		Handle_Expr_Tangent(const Expr_Tangent *anItem);
		%feature("autodoc", "1");
		Handle_Expr_Tangent const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Expr_Tangent {
	Expr_Tangent* GetObject() {
	return (Expr_Tangent*)$self->Access();
	}
};
%extend Handle_Expr_Tangent {
	~Handle_Expr_Tangent() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Expr_Tangent\n");}
	}
};


%nodefaultctor Handle_Expr_GreaterThan;
class Handle_Expr_GreaterThan : public Handle_Expr_SingleRelation {
	public:
		%feature("autodoc", "1");
		Handle_Expr_GreaterThan();
		%feature("autodoc", "1");
		Handle_Expr_GreaterThan(const Handle_Expr_GreaterThan &aHandle);
		%feature("autodoc", "1");
		Handle_Expr_GreaterThan(const Expr_GreaterThan *anItem);
		%feature("autodoc", "1");
		Handle_Expr_GreaterThan const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Expr_GreaterThan {
	Expr_GreaterThan* GetObject() {
	return (Expr_GreaterThan*)$self->Access();
	}
};
%extend Handle_Expr_GreaterThan {
	~Handle_Expr_GreaterThan() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Expr_GreaterThan\n");}
	}
};


%nodefaultctor Handle_Expr_Square;
class Handle_Expr_Square : public Handle_Expr_UnaryExpression {
	public:
		%feature("autodoc", "1");
		Handle_Expr_Square();
		%feature("autodoc", "1");
		Handle_Expr_Square(const Handle_Expr_Square &aHandle);
		%feature("autodoc", "1");
		Handle_Expr_Square(const Expr_Square *anItem);
		%feature("autodoc", "1");
		Handle_Expr_Square const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Expr_Square {
	Expr_Square* GetObject() {
	return (Expr_Square*)$self->Access();
	}
};
%extend Handle_Expr_Square {
	~Handle_Expr_Square() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Expr_Square\n");}
	}
};


%nodefaultctor Expr_IndexedMapNodeOfMapOfNamedUnknown;
class Expr_IndexedMapNodeOfMapOfNamedUnknown : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Expr_IndexedMapNodeOfMapOfNamedUnknown(const Handle_Expr_NamedUnknown &K1, const Standard_Integer K2, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
		%feature("autodoc", "1");
		Handle_Expr_NamedUnknown & Key1() const;
		%feature("autodoc", "1");
		Standard_Integer & Key2() const;
		%feature("autodoc", "1");
		TCollection_MapNodePtr & Next2() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Expr_IndexedMapNodeOfMapOfNamedUnknown {
	Handle_Expr_IndexedMapNodeOfMapOfNamedUnknown GetHandle() {
	return *(Handle_Expr_IndexedMapNodeOfMapOfNamedUnknown*) &$self;
	}
};
%extend Expr_IndexedMapNodeOfMapOfNamedUnknown {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Expr_IndexedMapNodeOfMapOfNamedUnknown {
	~Expr_IndexedMapNodeOfMapOfNamedUnknown() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Expr_IndexedMapNodeOfMapOfNamedUnknown\n");}
	}
};


%nodefaultctor Expr_GeneralExpression;
class Expr_GeneralExpression : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		virtual		Standard_Integer NbSubExpressions() const;
		%feature("autodoc", "1");
		virtual		const Handle_Expr_GeneralExpression & SubExpression(const Standard_Integer I) const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression Simplified() const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression ShallowSimplified() const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression Copy() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean ContainsUnknowns() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Contains(const Handle_Expr_GeneralExpression &exp) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsLinear() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsShareable() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsIdentical(const Handle_Expr_GeneralExpression &Other) const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression Derivative(const Handle_Expr_NamedUnknown &X) const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression NDerivative(const Handle_Expr_NamedUnknown &X, const Standard_Integer N) const;
		%feature("autodoc", "1");
		virtual		void Replace(const Handle_Expr_NamedUnknown &var, const Handle_Expr_GeneralExpression &with);
		%feature("autodoc", "1");
		virtual		Standard_Real Evaluate(const Expr_Array1OfNamedUnknown &vars, const TColStd_Array1OfReal &vals) const;
		%feature("autodoc", "1");
		Standard_Real EvaluateNumeric() const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString String() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Expr_GeneralExpression {
	Handle_Expr_GeneralExpression GetHandle() {
	return *(Handle_Expr_GeneralExpression*) &$self;
	}
};
%extend Expr_GeneralExpression {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Expr_GeneralExpression {
	~Expr_GeneralExpression() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Expr_GeneralExpression\n");}
	}
};


%nodefaultctor Expr_BinaryExpression;
class Expr_BinaryExpression : public Expr_GeneralExpression {
	public:
		%feature("autodoc", "1");
		const Handle_Expr_GeneralExpression & FirstOperand() const;
		%feature("autodoc", "1");
		const Handle_Expr_GeneralExpression & SecondOperand() const;
		%feature("autodoc", "1");
		void SetFirstOperand(const Handle_Expr_GeneralExpression &exp);
		%feature("autodoc", "1");
		void SetSecondOperand(const Handle_Expr_GeneralExpression &exp);

};
%extend Expr_BinaryExpression {
	Handle_Expr_BinaryExpression GetHandle() {
	return *(Handle_Expr_BinaryExpression*) &$self;
	}
};
%extend Expr_BinaryExpression {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Expr_BinaryExpression {
	~Expr_BinaryExpression() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Expr_BinaryExpression\n");}
	}
};


%nodefaultctor Expr_Division;
class Expr_Division : public Expr_BinaryExpression {
	public:
		%feature("autodoc", "1");
		Expr_Division(const Handle_Expr_GeneralExpression &exp1, const Handle_Expr_GeneralExpression &exp2);

};
%extend Expr_Division {
	Handle_Expr_Division GetHandle() {
	return *(Handle_Expr_Division*) &$self;
	}
};
%extend Expr_Division {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Expr_Division {
	~Expr_Division() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Expr_Division\n");}
	}
};


%nodefaultctor Expr_ExprFailure;
class Expr_ExprFailure : public Standard_Failure {
	public:
		%feature("autodoc", "1");
		Expr_ExprFailure();
		%feature("autodoc", "1");
		Expr_ExprFailure(const char * AString);
		%feature("autodoc", "1");
		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		Handle_Expr_ExprFailure NewInstance(const char * aMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Expr_ExprFailure {
	Handle_Expr_ExprFailure GetHandle() {
	return *(Handle_Expr_ExprFailure*) &$self;
	}
};
%extend Expr_ExprFailure {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Expr_ExprFailure {
	~Expr_ExprFailure() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Expr_ExprFailure\n");}
	}
};


%nodefaultctor Expr_NotEvaluable;
class Expr_NotEvaluable : public Expr_ExprFailure {
	public:
		%feature("autodoc", "1");
		Expr_NotEvaluable();
		%feature("autodoc", "1");
		Expr_NotEvaluable(const char * AString);
		%feature("autodoc", "1");
		Handle_Expr_NotEvaluable NewInstance(const char * aMessage);

};
%extend Expr_NotEvaluable {
	Handle_Expr_NotEvaluable GetHandle() {
	return *(Handle_Expr_NotEvaluable*) &$self;
	}
};
%extend Expr_NotEvaluable {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Expr_NotEvaluable {
	~Expr_NotEvaluable() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Expr_NotEvaluable\n");}
	}
};


%nodefaultctor Expr_UnaryExpression;
class Expr_UnaryExpression : public Expr_GeneralExpression {
	public:
		%feature("autodoc", "1");
		const Handle_Expr_GeneralExpression & Operand() const;
		%feature("autodoc", "1");
		void SetOperand(const Handle_Expr_GeneralExpression &exp);
		%feature("autodoc", "1");
		virtual		Standard_Integer NbSubExpressions() const;
		%feature("autodoc", "1");
		virtual		const Handle_Expr_GeneralExpression & SubExpression(const Standard_Integer I) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean ContainsUnknowns() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Contains(const Handle_Expr_GeneralExpression &exp) const;
		%feature("autodoc", "1");
		virtual		void Replace(const Handle_Expr_NamedUnknown &var, const Handle_Expr_GeneralExpression &with);
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression Simplified() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Expr_UnaryExpression {
	Handle_Expr_UnaryExpression GetHandle() {
	return *(Handle_Expr_UnaryExpression*) &$self;
	}
};
%extend Expr_UnaryExpression {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Expr_UnaryExpression {
	~Expr_UnaryExpression() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Expr_UnaryExpression\n");}
	}
};


%nodefaultctor Expr_Exponential;
class Expr_Exponential : public Expr_UnaryExpression {
	public:
		%feature("autodoc", "1");
		Expr_Exponential(const Handle_Expr_GeneralExpression &exp);
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression ShallowSimplified() const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression Copy() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsIdentical(const Handle_Expr_GeneralExpression &Other) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsLinear() const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression Derivative(const Handle_Expr_NamedUnknown &X) const;
		%feature("autodoc", "1");
		virtual		Standard_Real Evaluate(const Expr_Array1OfNamedUnknown &vars, const TColStd_Array1OfReal &vals) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString String() const;

};
%extend Expr_Exponential {
	Handle_Expr_Exponential GetHandle() {
	return *(Handle_Expr_Exponential*) &$self;
	}
};
%extend Expr_Exponential {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Expr_Exponential {
	~Expr_Exponential() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Expr_Exponential\n");}
	}
};


%nodefaultctor Expr_Exponentiate;
class Expr_Exponentiate : public Expr_BinaryExpression {
	public:
		%feature("autodoc", "1");
		Expr_Exponentiate(const Handle_Expr_GeneralExpression &exp1, const Handle_Expr_GeneralExpression &exp2);
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression ShallowSimplified() const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression Copy() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsIdentical(const Handle_Expr_GeneralExpression &Other) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsLinear() const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression Derivative(const Handle_Expr_NamedUnknown &X) const;
		%feature("autodoc", "1");
		virtual		Standard_Real Evaluate(const Expr_Array1OfNamedUnknown &vars, const TColStd_Array1OfReal &vals) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString String() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Expr_Exponentiate {
	Handle_Expr_Exponentiate GetHandle() {
	return *(Handle_Expr_Exponentiate*) &$self;
	}
};
%extend Expr_Exponentiate {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Expr_Exponentiate {
	~Expr_Exponentiate() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Expr_Exponentiate\n");}
	}
};


%nodefaultctor Expr_NotAssigned;
class Expr_NotAssigned : public Expr_ExprFailure {
	public:
		%feature("autodoc", "1");
		Expr_NotAssigned();
		%feature("autodoc", "1");
		Expr_NotAssigned(const char * AString);
		%feature("autodoc", "1");
		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		Handle_Expr_NotAssigned NewInstance(const char * aMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Expr_NotAssigned {
	Handle_Expr_NotAssigned GetHandle() {
	return *(Handle_Expr_NotAssigned*) &$self;
	}
};
%extend Expr_NotAssigned {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Expr_NotAssigned {
	~Expr_NotAssigned() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Expr_NotAssigned\n");}
	}
};


%nodefaultctor Expr_ArcCosine;
class Expr_ArcCosine : public Expr_UnaryExpression {
	public:
		%feature("autodoc", "1");
		Expr_ArcCosine(const Handle_Expr_GeneralExpression &exp);
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression ShallowSimplified() const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression Copy() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsIdentical(const Handle_Expr_GeneralExpression &Other) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsLinear() const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression Derivative(const Handle_Expr_NamedUnknown &X) const;
		%feature("autodoc", "1");
		virtual		Standard_Real Evaluate(const Expr_Array1OfNamedUnknown &vars, const TColStd_Array1OfReal &vals) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString String() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Expr_ArcCosine {
	Handle_Expr_ArcCosine GetHandle() {
	return *(Handle_Expr_ArcCosine*) &$self;
	}
};
%extend Expr_ArcCosine {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Expr_ArcCosine {
	~Expr_ArcCosine() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Expr_ArcCosine\n");}
	}
};


%nodefaultctor Expr_InvalidFunction;
class Expr_InvalidFunction : public Expr_ExprFailure {
	public:
		%feature("autodoc", "1");
		Expr_InvalidFunction();
		%feature("autodoc", "1");
		Expr_InvalidFunction(const char * AString);
		%feature("autodoc", "1");
		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		Handle_Expr_InvalidFunction NewInstance(const char * aMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Expr_InvalidFunction {
	Handle_Expr_InvalidFunction GetHandle() {
	return *(Handle_Expr_InvalidFunction*) &$self;
	}
};
%extend Expr_InvalidFunction {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Expr_InvalidFunction {
	~Expr_InvalidFunction() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Expr_InvalidFunction\n");}
	}
};


%nodefaultctor Expr_GeneralRelation;
class Expr_GeneralRelation : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsSatisfied() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsLinear() const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralRelation Simplified() const;
		%feature("autodoc", "1");
		virtual		void Simplify();
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralRelation Copy() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbOfSubRelations() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbOfSingleRelations() const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralRelation SubRelation(const Standard_Integer index) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Contains(const Handle_Expr_GeneralExpression &exp) const;
		%feature("autodoc", "1");
		virtual		void Replace(const Handle_Expr_NamedUnknown &var, const Handle_Expr_GeneralExpression &with);
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString String() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Expr_GeneralRelation {
	Handle_Expr_GeneralRelation GetHandle() {
	return *(Handle_Expr_GeneralRelation*) &$self;
	}
};
%extend Expr_GeneralRelation {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Expr_GeneralRelation {
	~Expr_GeneralRelation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Expr_GeneralRelation\n");}
	}
};


%nodefaultctor Expr_SingleRelation;
class Expr_SingleRelation : public Expr_GeneralRelation {
	public:
		%feature("autodoc", "1");
		void SetFirstMember(const Handle_Expr_GeneralExpression &exp);
		%feature("autodoc", "1");
		void SetSecondMember(const Handle_Expr_GeneralExpression &exp);
		%feature("autodoc", "1");
		Handle_Expr_GeneralExpression FirstMember() const;
		%feature("autodoc", "1");
		Handle_Expr_GeneralExpression SecondMember() const;

};
%extend Expr_SingleRelation {
	Handle_Expr_SingleRelation GetHandle() {
	return *(Handle_Expr_SingleRelation*) &$self;
	}
};
%extend Expr_SingleRelation {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Expr_SingleRelation {
	~Expr_SingleRelation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Expr_SingleRelation\n");}
	}
};


%nodefaultctor Expr_LessThan;
class Expr_LessThan : public Expr_SingleRelation {
	public:
		%feature("autodoc", "1");
		Expr_LessThan(const Handle_Expr_GeneralExpression &exp1, const Handle_Expr_GeneralExpression &exp2);

};
%extend Expr_LessThan {
	Handle_Expr_LessThan GetHandle() {
	return *(Handle_Expr_LessThan*) &$self;
	}
};
%extend Expr_LessThan {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Expr_LessThan {
	~Expr_LessThan() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Expr_LessThan\n");}
	}
};


%nodefaultctor Expr_UnaryMinus;
class Expr_UnaryMinus : public Expr_UnaryExpression {
	public:
		%feature("autodoc", "1");
		Expr_UnaryMinus(const Handle_Expr_GeneralExpression &exp);
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression ShallowSimplified() const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression Copy() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsIdentical(const Handle_Expr_GeneralExpression &Other) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsLinear() const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression Derivative(const Handle_Expr_NamedUnknown &X) const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression NDerivative(const Handle_Expr_NamedUnknown &X, const Standard_Integer N) const;
		%feature("autodoc", "1");
		virtual		Standard_Real Evaluate(const Expr_Array1OfNamedUnknown &vars, const TColStd_Array1OfReal &vals) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString String() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Expr_UnaryMinus {
	Handle_Expr_UnaryMinus GetHandle() {
	return *(Handle_Expr_UnaryMinus*) &$self;
	}
};
%extend Expr_UnaryMinus {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Expr_UnaryMinus {
	~Expr_UnaryMinus() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Expr_UnaryMinus\n");}
	}
};


%nodefaultctor Expr_LogOfe;
class Expr_LogOfe : public Expr_UnaryExpression {
	public:
		%feature("autodoc", "1");
		Expr_LogOfe(const Handle_Expr_GeneralExpression &exp);
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression ShallowSimplified() const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression Copy() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsIdentical(const Handle_Expr_GeneralExpression &Other) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsLinear() const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression Derivative(const Handle_Expr_NamedUnknown &X) const;
		%feature("autodoc", "1");
		virtual		Standard_Real Evaluate(const Expr_Array1OfNamedUnknown &vars, const TColStd_Array1OfReal &vals) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString String() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Expr_LogOfe {
	Handle_Expr_LogOfe GetHandle() {
	return *(Handle_Expr_LogOfe*) &$self;
	}
};
%extend Expr_LogOfe {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Expr_LogOfe {
	~Expr_LogOfe() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Expr_LogOfe\n");}
	}
};


%nodefaultctor Expr_BinaryFunction;
class Expr_BinaryFunction : public Expr_BinaryExpression {
	public:
		%feature("autodoc", "1");
		Expr_BinaryFunction(const Handle_Expr_GeneralFunction &func, const Handle_Expr_GeneralExpression &exp1, const Handle_Expr_GeneralExpression &exp2);
		%feature("autodoc", "1");
		Handle_Expr_GeneralFunction Function() const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression ShallowSimplified() const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression Copy() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsIdentical(const Handle_Expr_GeneralExpression &Other) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsLinear() const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression Derivative(const Handle_Expr_NamedUnknown &X) const;
		%feature("autodoc", "1");
		virtual		Standard_Real Evaluate(const Expr_Array1OfNamedUnknown &vars, const TColStd_Array1OfReal &vals) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString String() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Expr_BinaryFunction {
	Handle_Expr_BinaryFunction GetHandle() {
	return *(Handle_Expr_BinaryFunction*) &$self;
	}
};
%extend Expr_BinaryFunction {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Expr_BinaryFunction {
	~Expr_BinaryFunction() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Expr_BinaryFunction\n");}
	}
};


%nodefaultctor Expr_RelationIterator;
class Expr_RelationIterator {
	public:
		%feature("autodoc", "1");
		Expr_RelationIterator(const Handle_Expr_GeneralRelation &rel);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		Handle_Expr_SingleRelation Value() const;

};
%extend Expr_RelationIterator {
	~Expr_RelationIterator() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Expr_RelationIterator\n");}
	}
};


%nodefaultctor Expr;
class Expr {
	public:
		%feature("autodoc", "1");
		Expr();
		%feature("autodoc", "1");
		Handle_Expr_GeneralExpression CopyShare(const Handle_Expr_GeneralExpression &exp);
		%feature("autodoc", "1");
		Standard_Integer NbOfFreeVariables(const Handle_Expr_GeneralExpression &exp);
		%feature("autodoc", "1");
		Standard_Integer NbOfFreeVariables(const Handle_Expr_GeneralRelation &exp);
		%feature("autodoc", "1");
		Standard_Real Sign(const Standard_Real val);

};
%extend Expr {
	~Expr() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Expr\n");}
	}
};


%nodefaultctor Expr_SequenceNodeOfSequenceOfGeneralRelation;
class Expr_SequenceNodeOfSequenceOfGeneralRelation : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Expr_SequenceNodeOfSequenceOfGeneralRelation(const Handle_Expr_GeneralRelation &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_Expr_GeneralRelation & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Expr_SequenceNodeOfSequenceOfGeneralRelation {
	Handle_Expr_SequenceNodeOfSequenceOfGeneralRelation GetHandle() {
	return *(Handle_Expr_SequenceNodeOfSequenceOfGeneralRelation*) &$self;
	}
};
%extend Expr_SequenceNodeOfSequenceOfGeneralRelation {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Expr_SequenceNodeOfSequenceOfGeneralRelation {
	~Expr_SequenceNodeOfSequenceOfGeneralRelation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Expr_SequenceNodeOfSequenceOfGeneralRelation\n");}
	}
};


%nodefaultctor Expr_Absolute;
class Expr_Absolute : public Expr_UnaryExpression {
	public:
		%feature("autodoc", "1");
		Expr_Absolute(const Handle_Expr_GeneralExpression &exp);
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression ShallowSimplified() const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression Copy() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsIdentical(const Handle_Expr_GeneralExpression &Other) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsLinear() const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression Derivative(const Handle_Expr_NamedUnknown &X) const;
		%feature("autodoc", "1");
		virtual		Standard_Real Evaluate(const Expr_Array1OfNamedUnknown &vars, const TColStd_Array1OfReal &vals) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString String() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Expr_Absolute {
	Handle_Expr_Absolute GetHandle() {
	return *(Handle_Expr_Absolute*) &$self;
	}
};
%extend Expr_Absolute {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Expr_Absolute {
	~Expr_Absolute() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Expr_Absolute\n");}
	}
};


%nodefaultctor Expr_NamedExpression;
class Expr_NamedExpression : public Expr_GeneralExpression {
	public:
		%feature("autodoc", "1");
		const TCollection_AsciiString & GetName() const;
		%feature("autodoc", "1");
		void SetName(const TCollection_AsciiString &name);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsShareable() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsIdentical(const Handle_Expr_GeneralExpression &Other) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString String() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Expr_NamedExpression {
	Handle_Expr_NamedExpression GetHandle() {
	return *(Handle_Expr_NamedExpression*) &$self;
	}
};
%extend Expr_NamedExpression {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Expr_NamedExpression {
	~Expr_NamedExpression() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Expr_NamedExpression\n");}
	}
};


%nodefaultctor Expr_NamedConstant;
class Expr_NamedConstant : public Expr_NamedExpression {
	public:
		%feature("autodoc", "1");
		Expr_NamedConstant(const TCollection_AsciiString &name, const Standard_Real value);
		%feature("autodoc", "1");
		Standard_Real GetValue() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbSubExpressions() const;
		%feature("autodoc", "1");
		virtual		const Handle_Expr_GeneralExpression & SubExpression(const Standard_Integer I) const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression Simplified() const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression ShallowSimplified() const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression Copy() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean ContainsUnknowns() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Contains(const Handle_Expr_GeneralExpression &exp) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsLinear() const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression Derivative(const Handle_Expr_NamedUnknown &X) const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression NDerivative(const Handle_Expr_NamedUnknown &X, const Standard_Integer N) const;
		%feature("autodoc", "1");
		virtual		void Replace(const Handle_Expr_NamedUnknown &var, const Handle_Expr_GeneralExpression &with);
		%feature("autodoc", "1");
		virtual		Standard_Real Evaluate(const Expr_Array1OfNamedUnknown &vars, const TColStd_Array1OfReal &vals) const;

};
%extend Expr_NamedConstant {
	Handle_Expr_NamedConstant GetHandle() {
	return *(Handle_Expr_NamedConstant*) &$self;
	}
};
%extend Expr_NamedConstant {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Expr_NamedConstant {
	~Expr_NamedConstant() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Expr_NamedConstant\n");}
	}
};


%nodefaultctor Expr_UnaryFunction;
class Expr_UnaryFunction : public Expr_UnaryExpression {
	public:
		%feature("autodoc", "1");
		Expr_UnaryFunction(const Handle_Expr_GeneralFunction &func, const Handle_Expr_GeneralExpression &exp);
		%feature("autodoc", "1");
		Handle_Expr_GeneralFunction Function() const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression ShallowSimplified() const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression Copy() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsIdentical(const Handle_Expr_GeneralExpression &Other) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsLinear() const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression Derivative(const Handle_Expr_NamedUnknown &X) const;
		%feature("autodoc", "1");
		virtual		Standard_Real Evaluate(const Expr_Array1OfNamedUnknown &vars, const TColStd_Array1OfReal &vals) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString String() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Expr_UnaryFunction {
	Handle_Expr_UnaryFunction GetHandle() {
	return *(Handle_Expr_UnaryFunction*) &$self;
	}
};
%extend Expr_UnaryFunction {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Expr_UnaryFunction {
	~Expr_UnaryFunction() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Expr_UnaryFunction\n");}
	}
};


%nodefaultctor Expr_PolyExpression;
class Expr_PolyExpression : public Expr_GeneralExpression {
	public:
		%feature("autodoc", "1");
		Standard_Integer NbOperands() const;
		%feature("autodoc", "1");
		const Handle_Expr_GeneralExpression & Operand(const Standard_Integer index) const;
		%feature("autodoc", "1");
		void SetOperand(const Handle_Expr_GeneralExpression &exp, const Standard_Integer index);
		%feature("autodoc", "1");
		virtual		Standard_Integer NbSubExpressions() const;
		%feature("autodoc", "1");
		virtual		const Handle_Expr_GeneralExpression & SubExpression(const Standard_Integer I) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean ContainsUnknowns() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Contains(const Handle_Expr_GeneralExpression &exp) const;
		%feature("autodoc", "1");
		virtual		void Replace(const Handle_Expr_NamedUnknown &var, const Handle_Expr_GeneralExpression &with);
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression Simplified() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Expr_PolyExpression {
	Handle_Expr_PolyExpression GetHandle() {
	return *(Handle_Expr_PolyExpression*) &$self;
	}
};
%extend Expr_PolyExpression {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Expr_PolyExpression {
	~Expr_PolyExpression() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Expr_PolyExpression\n");}
	}
};


%nodefaultctor Expr_PolyFunction;
class Expr_PolyFunction : public Expr_PolyExpression {
	public:
		%feature("autodoc", "1");
		Expr_PolyFunction(const Handle_Expr_GeneralFunction &func, const Expr_Array1OfGeneralExpression &exps);
		%feature("autodoc", "1");
		Handle_Expr_GeneralFunction Function() const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression ShallowSimplified() const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression Copy() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsIdentical(const Handle_Expr_GeneralExpression &Other) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsLinear() const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression Derivative(const Handle_Expr_NamedUnknown &X) const;
		%feature("autodoc", "1");
		virtual		Standard_Real Evaluate(const Expr_Array1OfNamedUnknown &vars, const TColStd_Array1OfReal &vals) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString String() const;

};
%extend Expr_PolyFunction {
	Handle_Expr_PolyFunction GetHandle() {
	return *(Handle_Expr_PolyFunction*) &$self;
	}
};
%extend Expr_PolyFunction {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Expr_PolyFunction {
	~Expr_PolyFunction() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Expr_PolyFunction\n");}
	}
};


%nodefaultctor Expr_Different;
class Expr_Different : public Expr_SingleRelation {
	public:
		%feature("autodoc", "1");
		Expr_Different(const Handle_Expr_GeneralExpression &exp1, const Handle_Expr_GeneralExpression &exp2);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsSatisfied() const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralRelation Simplified() const;
		%feature("autodoc", "1");
		virtual		void Simplify();
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralRelation Copy() const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString String() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Expr_Different {
	Handle_Expr_Different GetHandle() {
	return *(Handle_Expr_Different*) &$self;
	}
};
%extend Expr_Different {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Expr_Different {
	~Expr_Different() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Expr_Different\n");}
	}
};


%nodefaultctor Expr_SquareRoot;
class Expr_SquareRoot : public Expr_UnaryExpression {
	public:
		%feature("autodoc", "1");
		Expr_SquareRoot(const Handle_Expr_GeneralExpression &exp);
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression ShallowSimplified() const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression Copy() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsIdentical(const Handle_Expr_GeneralExpression &Other) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsLinear() const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression Derivative(const Handle_Expr_NamedUnknown &X) const;
		%feature("autodoc", "1");
		virtual		Standard_Real Evaluate(const Expr_Array1OfNamedUnknown &vars, const TColStd_Array1OfReal &vals) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString String() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Expr_SquareRoot {
	Handle_Expr_SquareRoot GetHandle() {
	return *(Handle_Expr_SquareRoot*) &$self;
	}
};
%extend Expr_SquareRoot {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Expr_SquareRoot {
	~Expr_SquareRoot() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Expr_SquareRoot\n");}
	}
};


%nodefaultctor Expr_SequenceOfGeneralRelation;
class Expr_SequenceOfGeneralRelation : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		Expr_SequenceOfGeneralRelation();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const Expr_SequenceOfGeneralRelation & Assign(const Expr_SequenceOfGeneralRelation &Other);
		%feature("autodoc", "1");
		void Append(const Handle_Expr_GeneralRelation &T);
		%feature("autodoc", "1");
		void Append(Expr_SequenceOfGeneralRelation & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_Expr_GeneralRelation &T);
		%feature("autodoc", "1");
		void Prepend(Expr_SequenceOfGeneralRelation & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_Expr_GeneralRelation &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, Expr_SequenceOfGeneralRelation & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_Expr_GeneralRelation &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, Expr_SequenceOfGeneralRelation & S);
		%feature("autodoc", "1");
		const Handle_Expr_GeneralRelation & First() const;
		%feature("autodoc", "1");
		const Handle_Expr_GeneralRelation & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, Expr_SequenceOfGeneralRelation & S);
		%feature("autodoc", "1");
		const Handle_Expr_GeneralRelation & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_Expr_GeneralRelation & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_Expr_GeneralRelation &I);
		%feature("autodoc", "1");
		Handle_Expr_GeneralRelation & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_Expr_GeneralRelation & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%extend Expr_SequenceOfGeneralRelation {
	~Expr_SequenceOfGeneralRelation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Expr_SequenceOfGeneralRelation\n");}
	}
};


%nodefaultctor Expr_NamedUnknown;
class Expr_NamedUnknown : public Expr_NamedExpression {
	public:
		%feature("autodoc", "1");
		Expr_NamedUnknown(const TCollection_AsciiString &name);
		%feature("autodoc", "1");
		Standard_Boolean IsAssigned() const;
		%feature("autodoc", "1");
		const Handle_Expr_GeneralExpression & AssignedExpression() const;
		%feature("autodoc", "1");
		void Assign(const Handle_Expr_GeneralExpression &exp);
		%feature("autodoc", "1");
		void Deassign();
		%feature("autodoc", "1");
		virtual		Standard_Integer NbSubExpressions() const;
		%feature("autodoc", "1");
		virtual		const Handle_Expr_GeneralExpression & SubExpression(const Standard_Integer I) const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression Simplified() const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression ShallowSimplified() const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression Copy() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean ContainsUnknowns() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Contains(const Handle_Expr_GeneralExpression &exp) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsLinear() const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression Derivative(const Handle_Expr_NamedUnknown &X) const;
		%feature("autodoc", "1");
		virtual		void Replace(const Handle_Expr_NamedUnknown &var, const Handle_Expr_GeneralExpression &with);
		%feature("autodoc", "1");
		virtual		Standard_Real Evaluate(const Expr_Array1OfNamedUnknown &vars, const TColStd_Array1OfReal &vals) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Expr_NamedUnknown {
	Handle_Expr_NamedUnknown GetHandle() {
	return *(Handle_Expr_NamedUnknown*) &$self;
	}
};
%extend Expr_NamedUnknown {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Expr_NamedUnknown {
	~Expr_NamedUnknown() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Expr_NamedUnknown\n");}
	}
};


%nodefaultctor Expr_ArgCosh;
class Expr_ArgCosh : public Expr_UnaryExpression {
	public:
		%feature("autodoc", "1");
		Expr_ArgCosh(const Handle_Expr_GeneralExpression &exp);
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression ShallowSimplified() const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression Copy() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsIdentical(const Handle_Expr_GeneralExpression &Other) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsLinear() const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression Derivative(const Handle_Expr_NamedUnknown &X) const;
		%feature("autodoc", "1");
		virtual		Standard_Real Evaluate(const Expr_Array1OfNamedUnknown &vars, const TColStd_Array1OfReal &vals) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString String() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Expr_ArgCosh {
	Handle_Expr_ArgCosh GetHandle() {
	return *(Handle_Expr_ArgCosh*) &$self;
	}
};
%extend Expr_ArgCosh {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Expr_ArgCosh {
	~Expr_ArgCosh() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Expr_ArgCosh\n");}
	}
};


%nodefaultctor Expr_GreaterThanOrEqual;
class Expr_GreaterThanOrEqual : public Expr_SingleRelation {
	public:
		%feature("autodoc", "1");
		Expr_GreaterThanOrEqual(const Handle_Expr_GeneralExpression &exp1, const Handle_Expr_GeneralExpression &exp2);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsSatisfied() const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralRelation Simplified() const;
		%feature("autodoc", "1");
		virtual		void Simplify();
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralRelation Copy() const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString String() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Expr_GreaterThanOrEqual {
	Handle_Expr_GreaterThanOrEqual GetHandle() {
	return *(Handle_Expr_GreaterThanOrEqual*) &$self;
	}
};
%extend Expr_GreaterThanOrEqual {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Expr_GreaterThanOrEqual {
	~Expr_GreaterThanOrEqual() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Expr_GreaterThanOrEqual\n");}
	}
};


%nodefaultctor Expr_MapOfNamedUnknown;
class Expr_MapOfNamedUnknown : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		Expr_MapOfNamedUnknown(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		Expr_MapOfNamedUnknown & Assign(const Expr_MapOfNamedUnknown &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer Add(const Handle_Expr_NamedUnknown &K);
		%feature("autodoc", "1");
		void Substitute(const Standard_Integer I, const Handle_Expr_NamedUnknown &K);
		%feature("autodoc", "1");
		void RemoveLast();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Handle_Expr_NamedUnknown &K) const;
		%feature("autodoc", "1");
		const Handle_Expr_NamedUnknown & FindKey(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const Handle_Expr_NamedUnknown & operator()(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Standard_Integer FindIndex(const Handle_Expr_NamedUnknown &K) const;

};
%extend Expr_MapOfNamedUnknown {
	~Expr_MapOfNamedUnknown() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Expr_MapOfNamedUnknown\n");}
	}
};


%nodefaultctor Expr_SystemRelation;
class Expr_SystemRelation : public Expr_GeneralRelation {
	public:
		%feature("autodoc", "1");
		Expr_SystemRelation(const Handle_Expr_GeneralRelation &relation);
		%feature("autodoc", "1");
		void Add(const Handle_Expr_GeneralRelation &relation);
		%feature("autodoc", "1");
		void Remove(const Handle_Expr_GeneralRelation &relation);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsLinear() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbOfSubRelations() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbOfSingleRelations() const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralRelation SubRelation(const Standard_Integer index) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsSatisfied() const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralRelation Simplified() const;
		%feature("autodoc", "1");
		virtual		void Simplify();
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralRelation Copy() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Contains(const Handle_Expr_GeneralExpression &exp) const;
		%feature("autodoc", "1");
		virtual		void Replace(const Handle_Expr_NamedUnknown &var, const Handle_Expr_GeneralExpression &with);
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString String() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Expr_SystemRelation {
	Handle_Expr_SystemRelation GetHandle() {
	return *(Handle_Expr_SystemRelation*) &$self;
	}
};
%extend Expr_SystemRelation {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Expr_SystemRelation {
	~Expr_SystemRelation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Expr_SystemRelation\n");}
	}
};


%nodefaultctor Expr_ArgSinh;
class Expr_ArgSinh : public Expr_UnaryExpression {
	public:
		%feature("autodoc", "1");
		Expr_ArgSinh(const Handle_Expr_GeneralExpression &exp);
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression ShallowSimplified() const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression Copy() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsIdentical(const Handle_Expr_GeneralExpression &Other) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsLinear() const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression Derivative(const Handle_Expr_NamedUnknown &X) const;
		%feature("autodoc", "1");
		virtual		Standard_Real Evaluate(const Expr_Array1OfNamedUnknown &vars, const TColStd_Array1OfReal &vals) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString String() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Expr_ArgSinh {
	Handle_Expr_ArgSinh GetHandle() {
	return *(Handle_Expr_ArgSinh*) &$self;
	}
};
%extend Expr_ArgSinh {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Expr_ArgSinh {
	~Expr_ArgSinh() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Expr_ArgSinh\n");}
	}
};


%nodefaultctor Expr_Array1OfNamedUnknown;
class Expr_Array1OfNamedUnknown {
	public:
		%feature("autodoc", "1");
		Expr_Array1OfNamedUnknown(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		Expr_Array1OfNamedUnknown(const Handle_Expr_NamedUnknown &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Handle_Expr_NamedUnknown &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const Expr_Array1OfNamedUnknown & Assign(const Expr_Array1OfNamedUnknown &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_Expr_NamedUnknown &Value);
		%feature("autodoc", "1");
		const Handle_Expr_NamedUnknown & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_Expr_NamedUnknown & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_Expr_NamedUnknown & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_Expr_NamedUnknown & operator()(const Standard_Integer Index);

};
%extend Expr_Array1OfNamedUnknown {
	~Expr_Array1OfNamedUnknown() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Expr_Array1OfNamedUnknown\n");}
	}
};


%nodefaultctor Expr_Product;
class Expr_Product : public Expr_PolyExpression {
	public:
		%feature("autodoc", "1");
		Expr_Product(const Expr_SequenceOfGeneralExpression &exps);
		%feature("autodoc", "1");
		Expr_Product(const Handle_Expr_GeneralExpression &exp1, const Handle_Expr_GeneralExpression &exp2);
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression ShallowSimplified() const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression Copy() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsIdentical(const Handle_Expr_GeneralExpression &Other) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsLinear() const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression Derivative(const Handle_Expr_NamedUnknown &X) const;
		%feature("autodoc", "1");
		virtual		Standard_Real Evaluate(const Expr_Array1OfNamedUnknown &vars, const TColStd_Array1OfReal &vals) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString String() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Expr_Product {
	Handle_Expr_Product GetHandle() {
	return *(Handle_Expr_Product*) &$self;
	}
};
%extend Expr_Product {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Expr_Product {
	~Expr_Product() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Expr_Product\n");}
	}
};


%nodefaultctor Expr_Equal;
class Expr_Equal : public Expr_SingleRelation {
	public:
		%feature("autodoc", "1");
		Expr_Equal(const Handle_Expr_GeneralExpression &exp1, const Handle_Expr_GeneralExpression &exp2);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsSatisfied() const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralRelation Simplified() const;
		%feature("autodoc", "1");
		virtual		void Simplify();
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralRelation Copy() const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString String() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Expr_Equal {
	Handle_Expr_Equal GetHandle() {
	return *(Handle_Expr_Equal*) &$self;
	}
};
%extend Expr_Equal {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Expr_Equal {
	~Expr_Equal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Expr_Equal\n");}
	}
};


%nodefaultctor Expr_Square;
class Expr_Square : public Expr_UnaryExpression {
	public:
		%feature("autodoc", "1");
		Expr_Square(const Handle_Expr_GeneralExpression &exp);
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression ShallowSimplified() const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression Copy() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsIdentical(const Handle_Expr_GeneralExpression &Other) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsLinear() const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression Derivative(const Handle_Expr_NamedUnknown &X) const;
		%feature("autodoc", "1");
		virtual		Standard_Real Evaluate(const Expr_Array1OfNamedUnknown &vars, const TColStd_Array1OfReal &vals) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString String() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Expr_Square {
	Handle_Expr_Square GetHandle() {
	return *(Handle_Expr_Square*) &$self;
	}
};
%extend Expr_Square {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Expr_Square {
	~Expr_Square() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Expr_Square\n");}
	}
};


%nodefaultctor Expr_InvalidOperand;
class Expr_InvalidOperand : public Expr_ExprFailure {
	public:
		%feature("autodoc", "1");
		Expr_InvalidOperand();
		%feature("autodoc", "1");
		Expr_InvalidOperand(const char * AString);
		%feature("autodoc", "1");
		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		Handle_Expr_InvalidOperand NewInstance(const char * aMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Expr_InvalidOperand {
	Handle_Expr_InvalidOperand GetHandle() {
	return *(Handle_Expr_InvalidOperand*) &$self;
	}
};
%extend Expr_InvalidOperand {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Expr_InvalidOperand {
	~Expr_InvalidOperand() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Expr_InvalidOperand\n");}
	}
};


%nodefaultctor Expr_ArgTanh;
class Expr_ArgTanh : public Expr_UnaryExpression {
	public:
		%feature("autodoc", "1");
		Expr_ArgTanh(const Handle_Expr_GeneralExpression &exp);
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression ShallowSimplified() const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression Copy() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsIdentical(const Handle_Expr_GeneralExpression &Other) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsLinear() const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression Derivative(const Handle_Expr_NamedUnknown &X) const;
		%feature("autodoc", "1");
		virtual		Standard_Real Evaluate(const Expr_Array1OfNamedUnknown &vars, const TColStd_Array1OfReal &vals) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString String() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Expr_ArgTanh {
	Handle_Expr_ArgTanh GetHandle() {
	return *(Handle_Expr_ArgTanh*) &$self;
	}
};
%extend Expr_ArgTanh {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Expr_ArgTanh {
	~Expr_ArgTanh() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Expr_ArgTanh\n");}
	}
};


%nodefaultctor Expr_Cosine;
class Expr_Cosine : public Expr_UnaryExpression {
	public:
		%feature("autodoc", "1");
		Expr_Cosine(const Handle_Expr_GeneralExpression &Exp);
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression ShallowSimplified() const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression Copy() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsIdentical(const Handle_Expr_GeneralExpression &Other) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsLinear() const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression Derivative(const Handle_Expr_NamedUnknown &X) const;
		%feature("autodoc", "1");
		virtual		Standard_Real Evaluate(const Expr_Array1OfNamedUnknown &vars, const TColStd_Array1OfReal &vals) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString String() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Expr_Cosine {
	Handle_Expr_Cosine GetHandle() {
	return *(Handle_Expr_Cosine*) &$self;
	}
};
%extend Expr_Cosine {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Expr_Cosine {
	~Expr_Cosine() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Expr_Cosine\n");}
	}
};


%nodefaultctor Expr_Tangent;
class Expr_Tangent : public Expr_UnaryExpression {
	public:
		%feature("autodoc", "1");
		Expr_Tangent(const Handle_Expr_GeneralExpression &exp);
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression ShallowSimplified() const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression Copy() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsIdentical(const Handle_Expr_GeneralExpression &Other) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsLinear() const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression Derivative(const Handle_Expr_NamedUnknown &X) const;
		%feature("autodoc", "1");
		virtual		Standard_Real Evaluate(const Expr_Array1OfNamedUnknown &vars, const TColStd_Array1OfReal &vals) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString String() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Expr_Tangent {
	Handle_Expr_Tangent GetHandle() {
	return *(Handle_Expr_Tangent*) &$self;
	}
};
%extend Expr_Tangent {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Expr_Tangent {
	~Expr_Tangent() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Expr_Tangent\n");}
	}
};


%nodefaultctor Expr_RUIterator;
class Expr_RUIterator {
	public:
		%feature("autodoc", "1");
		Expr_RUIterator(const Handle_Expr_GeneralRelation &rel);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		Handle_Expr_NamedUnknown Value() const;

};
%extend Expr_RUIterator {
	~Expr_RUIterator() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Expr_RUIterator\n");}
	}
};


%nodefaultctor Expr_Array1OfGeneralExpression;
class Expr_Array1OfGeneralExpression {
	public:
		%feature("autodoc", "1");
		Expr_Array1OfGeneralExpression(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		Expr_Array1OfGeneralExpression(const Handle_Expr_GeneralExpression &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Handle_Expr_GeneralExpression &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const Expr_Array1OfGeneralExpression & Assign(const Expr_Array1OfGeneralExpression &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_Expr_GeneralExpression &Value);
		%feature("autodoc", "1");
		const Handle_Expr_GeneralExpression & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_Expr_GeneralExpression & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_Expr_GeneralExpression & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_Expr_GeneralExpression & operator()(const Standard_Integer Index);

};
%extend Expr_Array1OfGeneralExpression {
	~Expr_Array1OfGeneralExpression() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Expr_Array1OfGeneralExpression\n");}
	}
};


%nodefaultctor Expr_UnknownIterator;
class Expr_UnknownIterator {
	public:
		%feature("autodoc", "1");
		Expr_UnknownIterator(const Handle_Expr_GeneralExpression &exp);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		Handle_Expr_NamedUnknown Value() const;

};
%extend Expr_UnknownIterator {
	~Expr_UnknownIterator() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Expr_UnknownIterator\n");}
	}
};


%nodefaultctor Expr_Tanh;
class Expr_Tanh : public Expr_UnaryExpression {
	public:
		%feature("autodoc", "1");
		Expr_Tanh(const Handle_Expr_GeneralExpression &exp);
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression ShallowSimplified() const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression Copy() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsIdentical(const Handle_Expr_GeneralExpression &Other) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsLinear() const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression Derivative(const Handle_Expr_NamedUnknown &X) const;
		%feature("autodoc", "1");
		virtual		Standard_Real Evaluate(const Expr_Array1OfNamedUnknown &vars, const TColStd_Array1OfReal &vals) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString String() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Expr_Tanh {
	Handle_Expr_Tanh GetHandle() {
	return *(Handle_Expr_Tanh*) &$self;
	}
};
%extend Expr_Tanh {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Expr_Tanh {
	~Expr_Tanh() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Expr_Tanh\n");}
	}
};


%nodefaultctor Expr_SequenceOfGeneralExpression;
class Expr_SequenceOfGeneralExpression : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		Expr_SequenceOfGeneralExpression();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const Expr_SequenceOfGeneralExpression & Assign(const Expr_SequenceOfGeneralExpression &Other);
		%feature("autodoc", "1");
		void Append(const Handle_Expr_GeneralExpression &T);
		%feature("autodoc", "1");
		void Append(Expr_SequenceOfGeneralExpression & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_Expr_GeneralExpression &T);
		%feature("autodoc", "1");
		void Prepend(Expr_SequenceOfGeneralExpression & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_Expr_GeneralExpression &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, Expr_SequenceOfGeneralExpression & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_Expr_GeneralExpression &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, Expr_SequenceOfGeneralExpression & S);
		%feature("autodoc", "1");
		const Handle_Expr_GeneralExpression & First() const;
		%feature("autodoc", "1");
		const Handle_Expr_GeneralExpression & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, Expr_SequenceOfGeneralExpression & S);
		%feature("autodoc", "1");
		const Handle_Expr_GeneralExpression & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_Expr_GeneralExpression & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_Expr_GeneralExpression &I);
		%feature("autodoc", "1");
		Handle_Expr_GeneralExpression & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_Expr_GeneralExpression & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%extend Expr_SequenceOfGeneralExpression {
	~Expr_SequenceOfGeneralExpression() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Expr_SequenceOfGeneralExpression\n");}
	}
};


%nodefaultctor Expr_Array1OfSingleRelation;
class Expr_Array1OfSingleRelation {
	public:
		%feature("autodoc", "1");
		Expr_Array1OfSingleRelation(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		Expr_Array1OfSingleRelation(const Handle_Expr_SingleRelation &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Handle_Expr_SingleRelation &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const Expr_Array1OfSingleRelation & Assign(const Expr_Array1OfSingleRelation &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_Expr_SingleRelation &Value);
		%feature("autodoc", "1");
		const Handle_Expr_SingleRelation & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_Expr_SingleRelation & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_Expr_SingleRelation & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_Expr_SingleRelation & operator()(const Standard_Integer Index);

};
%extend Expr_Array1OfSingleRelation {
	~Expr_Array1OfSingleRelation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Expr_Array1OfSingleRelation\n");}
	}
};


%nodefaultctor Expr_ArcSine;
class Expr_ArcSine : public Expr_UnaryExpression {
	public:
		%feature("autodoc", "1");
		Expr_ArcSine(const Handle_Expr_GeneralExpression &exp);
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression ShallowSimplified() const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression Copy() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsIdentical(const Handle_Expr_GeneralExpression &Other) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsLinear() const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression Derivative(const Handle_Expr_NamedUnknown &X) const;
		%feature("autodoc", "1");
		virtual		Standard_Real Evaluate(const Expr_Array1OfNamedUnknown &vars, const TColStd_Array1OfReal &vals) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString String() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Expr_ArcSine {
	Handle_Expr_ArcSine GetHandle() {
	return *(Handle_Expr_ArcSine*) &$self;
	}
};
%extend Expr_ArcSine {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Expr_ArcSine {
	~Expr_ArcSine() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Expr_ArcSine\n");}
	}
};


%nodefaultctor Expr_Sum;
class Expr_Sum : public Expr_PolyExpression {
	public:
		%feature("autodoc", "1");
		Expr_Sum(const Expr_SequenceOfGeneralExpression &exps);
		%feature("autodoc", "1");
		Expr_Sum(const Handle_Expr_GeneralExpression &exp1, const Handle_Expr_GeneralExpression &exp2);
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression ShallowSimplified() const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression Copy() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsIdentical(const Handle_Expr_GeneralExpression &Other) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsLinear() const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression Derivative(const Handle_Expr_NamedUnknown &X) const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression NDerivative(const Handle_Expr_NamedUnknown &X, const Standard_Integer N) const;
		%feature("autodoc", "1");
		virtual		Standard_Real Evaluate(const Expr_Array1OfNamedUnknown &vars, const TColStd_Array1OfReal &vals) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString String() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Expr_Sum {
	Handle_Expr_Sum GetHandle() {
	return *(Handle_Expr_Sum*) &$self;
	}
};
%extend Expr_Sum {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Expr_Sum {
	~Expr_Sum() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Expr_Sum\n");}
	}
};


%nodefaultctor Expr_GreaterThan;
class Expr_GreaterThan : public Expr_SingleRelation {
	public:
		%feature("autodoc", "1");
		Expr_GreaterThan(const Handle_Expr_GeneralExpression &exp1, const Handle_Expr_GeneralExpression &exp2);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsSatisfied() const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralRelation Simplified() const;
		%feature("autodoc", "1");
		virtual		void Simplify();
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralRelation Copy() const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString String() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Expr_GreaterThan {
	Handle_Expr_GreaterThan GetHandle() {
	return *(Handle_Expr_GreaterThan*) &$self;
	}
};
%extend Expr_GreaterThan {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Expr_GreaterThan {
	~Expr_GreaterThan() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Expr_GreaterThan\n");}
	}
};


%nodefaultctor Expr_SequenceNodeOfSequenceOfGeneralExpression;
class Expr_SequenceNodeOfSequenceOfGeneralExpression : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Expr_SequenceNodeOfSequenceOfGeneralExpression(const Handle_Expr_GeneralExpression &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_Expr_GeneralExpression & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Expr_SequenceNodeOfSequenceOfGeneralExpression {
	Handle_Expr_SequenceNodeOfSequenceOfGeneralExpression GetHandle() {
	return *(Handle_Expr_SequenceNodeOfSequenceOfGeneralExpression*) &$self;
	}
};
%extend Expr_SequenceNodeOfSequenceOfGeneralExpression {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Expr_SequenceNodeOfSequenceOfGeneralExpression {
	~Expr_SequenceNodeOfSequenceOfGeneralExpression() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Expr_SequenceNodeOfSequenceOfGeneralExpression\n");}
	}
};


%nodefaultctor Expr_InvalidAssignment;
class Expr_InvalidAssignment : public Expr_ExprFailure {
	public:
		%feature("autodoc", "1");
		Expr_InvalidAssignment();
		%feature("autodoc", "1");
		Expr_InvalidAssignment(const char * AString);
		%feature("autodoc", "1");
		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		Handle_Expr_InvalidAssignment NewInstance(const char * aMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Expr_InvalidAssignment {
	Handle_Expr_InvalidAssignment GetHandle() {
	return *(Handle_Expr_InvalidAssignment*) &$self;
	}
};
%extend Expr_InvalidAssignment {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Expr_InvalidAssignment {
	~Expr_InvalidAssignment() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Expr_InvalidAssignment\n");}
	}
};


%nodefaultctor Expr_Difference;
class Expr_Difference : public Expr_BinaryExpression {
	public:
		%feature("autodoc", "1");
		Expr_Difference(const Handle_Expr_GeneralExpression &exp1, const Handle_Expr_GeneralExpression &exp2);
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression ShallowSimplified() const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression Copy() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsIdentical(const Handle_Expr_GeneralExpression &Other) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsLinear() const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression Derivative(const Handle_Expr_NamedUnknown &X) const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression NDerivative(const Handle_Expr_NamedUnknown &X, const Standard_Integer N) const;
		%feature("autodoc", "1");
		virtual		Standard_Real Evaluate(const Expr_Array1OfNamedUnknown &vars, const TColStd_Array1OfReal &vals) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString String() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Expr_Difference {
	Handle_Expr_Difference GetHandle() {
	return *(Handle_Expr_Difference*) &$self;
	}
};
%extend Expr_Difference {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Expr_Difference {
	~Expr_Difference() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Expr_Difference\n");}
	}
};


%nodefaultctor Expr_ArcTangent;
class Expr_ArcTangent : public Expr_UnaryExpression {
	public:
		%feature("autodoc", "1");
		Expr_ArcTangent(const Handle_Expr_GeneralExpression &exp);
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression ShallowSimplified() const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression Copy() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsIdentical(const Handle_Expr_GeneralExpression &Other) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsLinear() const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression Derivative(const Handle_Expr_NamedUnknown &X) const;
		%feature("autodoc", "1");
		virtual		Standard_Real Evaluate(const Expr_Array1OfNamedUnknown &vars, const TColStd_Array1OfReal &vals) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString String() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Expr_ArcTangent {
	Handle_Expr_ArcTangent GetHandle() {
	return *(Handle_Expr_ArcTangent*) &$self;
	}
};
%extend Expr_ArcTangent {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Expr_ArcTangent {
	~Expr_ArcTangent() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Expr_ArcTangent\n");}
	}
};


%nodefaultctor Expr_Cosh;
class Expr_Cosh : public Expr_UnaryExpression {
	public:
		%feature("autodoc", "1");
		Expr_Cosh(const Handle_Expr_GeneralExpression &exp);
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression ShallowSimplified() const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression Copy() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsIdentical(const Handle_Expr_GeneralExpression &Other) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsLinear() const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression Derivative(const Handle_Expr_NamedUnknown &X) const;
		%feature("autodoc", "1");
		virtual		Standard_Real Evaluate(const Expr_Array1OfNamedUnknown &vars, const TColStd_Array1OfReal &vals) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString String() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Expr_Cosh {
	Handle_Expr_Cosh GetHandle() {
	return *(Handle_Expr_Cosh*) &$self;
	}
};
%extend Expr_Cosh {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Expr_Cosh {
	~Expr_Cosh() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Expr_Cosh\n");}
	}
};


%nodefaultctor Expr_GeneralFunction;
class Expr_GeneralFunction : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		virtual		Standard_Integer NbOfVariables() const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_NamedUnknown Variable(const Standard_Integer index) const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralFunction Copy() const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralFunction Derivative(const Handle_Expr_NamedUnknown &var) const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralFunction Derivative(const Handle_Expr_NamedUnknown &var, const Standard_Integer deg) const;
		%feature("autodoc", "1");
		virtual		Standard_Real Evaluate(const Expr_Array1OfNamedUnknown &vars, const TColStd_Array1OfReal &vals) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsIdentical(const Handle_Expr_GeneralFunction &func) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsLinearOnVariable(const Standard_Integer index) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString GetStringName() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Expr_GeneralFunction {
	Handle_Expr_GeneralFunction GetHandle() {
	return *(Handle_Expr_GeneralFunction*) &$self;
	}
};
%extend Expr_GeneralFunction {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Expr_GeneralFunction {
	~Expr_GeneralFunction() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Expr_GeneralFunction\n");}
	}
};


%nodefaultctor Expr_FunctionDerivative;
class Expr_FunctionDerivative : public Expr_GeneralFunction {
	public:
		%feature("autodoc", "1");
		Expr_FunctionDerivative(const Handle_Expr_GeneralFunction &func, const Handle_Expr_NamedUnknown &withX, const Standard_Integer deg);
		%feature("autodoc", "1");
		virtual		Standard_Real Evaluate(const Expr_Array1OfNamedUnknown &vars, const TColStd_Array1OfReal &values) const;
		%feature("autodoc", "1");
		Handle_Expr_GeneralFunction Function() const;
		%feature("autodoc", "1");
		Standard_Integer Degree() const;
		%feature("autodoc", "1");
		Handle_Expr_NamedUnknown DerivVariable() const;
		%feature("autodoc", "1");
		Handle_Expr_GeneralExpression Expression() const;
		%feature("autodoc", "1");
		void UpdateExpression();

};
%extend Expr_FunctionDerivative {
	Handle_Expr_FunctionDerivative GetHandle() {
	return *(Handle_Expr_FunctionDerivative*) &$self;
	}
};
%extend Expr_FunctionDerivative {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Expr_FunctionDerivative {
	~Expr_FunctionDerivative() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Expr_FunctionDerivative\n");}
	}
};


%nodefaultctor Expr_LogOf10;
class Expr_LogOf10 : public Expr_UnaryExpression {
	public:
		%feature("autodoc", "1");
		Expr_LogOf10(const Handle_Expr_GeneralExpression &exp);
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression ShallowSimplified() const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression Copy() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsIdentical(const Handle_Expr_GeneralExpression &Other) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsLinear() const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression Derivative(const Handle_Expr_NamedUnknown &X) const;
		%feature("autodoc", "1");
		virtual		Standard_Real Evaluate(const Expr_Array1OfNamedUnknown &vars, const TColStd_Array1OfReal &vals) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString String() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Expr_LogOf10 {
	Handle_Expr_LogOf10 GetHandle() {
	return *(Handle_Expr_LogOf10*) &$self;
	}
};
%extend Expr_LogOf10 {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Expr_LogOf10 {
	~Expr_LogOf10() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Expr_LogOf10\n");}
	}
};


%nodefaultctor Expr_NumericValue;
class Expr_NumericValue : public Expr_GeneralExpression {
	public:
		%feature("autodoc", "1");
		Expr_NumericValue(const Standard_Real val);
		%feature("autodoc", "1");
		Standard_Real GetValue() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Real val);
		%feature("autodoc", "1");
		virtual		Standard_Integer NbSubExpressions() const;
		%feature("autodoc", "1");
		virtual		const Handle_Expr_GeneralExpression & SubExpression(const Standard_Integer I) const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression Simplified() const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression ShallowSimplified() const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression Copy() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean ContainsUnknowns() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Contains(const Handle_Expr_GeneralExpression &exp) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsIdentical(const Handle_Expr_GeneralExpression &Other) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsLinear() const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression Derivative(const Handle_Expr_NamedUnknown &X) const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression NDerivative(const Handle_Expr_NamedUnknown &X, const Standard_Integer N) const;
		%feature("autodoc", "1");
		virtual		void Replace(const Handle_Expr_NamedUnknown &var, const Handle_Expr_GeneralExpression &with);
		%feature("autodoc", "1");
		virtual		Standard_Real Evaluate(const Expr_Array1OfNamedUnknown &vars, const TColStd_Array1OfReal &vals) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString String() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Expr_NumericValue {
	Handle_Expr_NumericValue GetHandle() {
	return *(Handle_Expr_NumericValue*) &$self;
	}
};
%extend Expr_NumericValue {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Expr_NumericValue {
	~Expr_NumericValue() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Expr_NumericValue\n");}
	}
};


%nodefaultctor Expr_NamedFunction;
class Expr_NamedFunction : public Expr_GeneralFunction {
	public:
		%feature("autodoc", "1");
		Expr_NamedFunction(const TCollection_AsciiString &name, const Handle_Expr_GeneralExpression &exp, const Expr_Array1OfNamedUnknown &vars);
		%feature("autodoc", "1");
		void SetName(const TCollection_AsciiString &newname);
		%feature("autodoc", "1");
		TCollection_AsciiString GetName() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbOfVariables() const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_NamedUnknown Variable(const Standard_Integer index) const;
		%feature("autodoc", "1");
		virtual		Standard_Real Evaluate(const Expr_Array1OfNamedUnknown &vars, const TColStd_Array1OfReal &values) const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralFunction Copy() const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralFunction Derivative(const Handle_Expr_NamedUnknown &var) const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralFunction Derivative(const Handle_Expr_NamedUnknown &var, const Standard_Integer deg) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsIdentical(const Handle_Expr_GeneralFunction &func) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsLinearOnVariable(const Standard_Integer index) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString GetStringName() const;
		%feature("autodoc", "1");
		Handle_Expr_GeneralExpression Expression() const;
		%feature("autodoc", "1");
		void SetExpression(const Handle_Expr_GeneralExpression &exp);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Expr_NamedFunction {
	Handle_Expr_NamedFunction GetHandle() {
	return *(Handle_Expr_NamedFunction*) &$self;
	}
};
%extend Expr_NamedFunction {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Expr_NamedFunction {
	~Expr_NamedFunction() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Expr_NamedFunction\n");}
	}
};


%nodefaultctor Expr_Sine;
class Expr_Sine : public Expr_UnaryExpression {
	public:
		%feature("autodoc", "1");
		Expr_Sine(const Handle_Expr_GeneralExpression &exp);
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression ShallowSimplified() const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression Copy() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsIdentical(const Handle_Expr_GeneralExpression &Other) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsLinear() const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression Derivative(const Handle_Expr_NamedUnknown &X) const;
		%feature("autodoc", "1");
		virtual		Standard_Real Evaluate(const Expr_Array1OfNamedUnknown &vars, const TColStd_Array1OfReal &vals) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString String() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Expr_Sine {
	Handle_Expr_Sine GetHandle() {
	return *(Handle_Expr_Sine*) &$self;
	}
};
%extend Expr_Sine {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Expr_Sine {
	~Expr_Sine() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Expr_Sine\n");}
	}
};


%nodefaultctor Expr_Sinh;
class Expr_Sinh : public Expr_UnaryExpression {
	public:
		%feature("autodoc", "1");
		Expr_Sinh(const Handle_Expr_GeneralExpression &exp);
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression ShallowSimplified() const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression Copy() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsIdentical(const Handle_Expr_GeneralExpression &Other) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsLinear() const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralExpression Derivative(const Handle_Expr_NamedUnknown &X) const;
		%feature("autodoc", "1");
		virtual		Standard_Real Evaluate(const Expr_Array1OfNamedUnknown &vars, const TColStd_Array1OfReal &vals) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString String() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Expr_Sinh {
	Handle_Expr_Sinh GetHandle() {
	return *(Handle_Expr_Sinh*) &$self;
	}
};
%extend Expr_Sinh {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Expr_Sinh {
	~Expr_Sinh() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Expr_Sinh\n");}
	}
};


%nodefaultctor Expr_LessThanOrEqual;
class Expr_LessThanOrEqual : public Expr_SingleRelation {
	public:
		%feature("autodoc", "1");
		Expr_LessThanOrEqual(const Handle_Expr_GeneralExpression &exp1, const Handle_Expr_GeneralExpression &exp2);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsSatisfied() const;
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralRelation Simplified() const;
		%feature("autodoc", "1");
		virtual		void Simplify();
		%feature("autodoc", "1");
		virtual		Handle_Expr_GeneralRelation Copy() const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString String() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Expr_LessThanOrEqual {
	Handle_Expr_LessThanOrEqual GetHandle() {
	return *(Handle_Expr_LessThanOrEqual*) &$self;
	}
};
%extend Expr_LessThanOrEqual {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Expr_LessThanOrEqual {
	~Expr_LessThanOrEqual() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Expr_LessThanOrEqual\n");}
	}
};
