/*

Copyright 2008-2009 Thomas Paviot (tpaviot@gmail.com)

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
%module LProp

%include LProp_renames.i

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

/*
Renaming operator = that can't be wrapped in Python
*/
%rename(Set) *::operator=;


%include LProp_dependencies.i


%include LProp_headers.i


enum LProp_CIType {
	LProp_Inflection,
	LProp_MinCur,
	LProp_MaxCur,
	};

enum LProp_Status {
	LProp_Undecided,
	LProp_Undefined,
	LProp_Defined,
	LProp_Computed,
	};



%nodefaultctor Handle_LProp_SequenceNodeOfSequenceOfCIType;
class Handle_LProp_SequenceNodeOfSequenceOfCIType : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_LProp_SequenceNodeOfSequenceOfCIType();
		%feature("autodoc", "1");
		Handle_LProp_SequenceNodeOfSequenceOfCIType(const Handle_LProp_SequenceNodeOfSequenceOfCIType &aHandle);
		%feature("autodoc", "1");
		Handle_LProp_SequenceNodeOfSequenceOfCIType(const LProp_SequenceNodeOfSequenceOfCIType *anItem);
		%feature("autodoc", "1");
		Handle_LProp_SequenceNodeOfSequenceOfCIType & operator=(const Handle_LProp_SequenceNodeOfSequenceOfCIType &aHandle);
		%feature("autodoc", "1");
		Handle_LProp_SequenceNodeOfSequenceOfCIType & operator=(const LProp_SequenceNodeOfSequenceOfCIType *anItem);
		%feature("autodoc", "1");
		Handle_LProp_SequenceNodeOfSequenceOfCIType const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_LProp_SequenceNodeOfSequenceOfCIType {
	LProp_SequenceNodeOfSequenceOfCIType* GetObject() {
	return (LProp_SequenceNodeOfSequenceOfCIType*)$self->Access();
	}
};
%extend Handle_LProp_SequenceNodeOfSequenceOfCIType {
	~Handle_LProp_SequenceNodeOfSequenceOfCIType() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_LProp_SequenceNodeOfSequenceOfCIType\n");}
	}
};


%nodefaultctor Handle_LProp_BadContinuity;
class Handle_LProp_BadContinuity : public Handle_Standard_Failure {
	public:
		%feature("autodoc", "1");
		Handle_LProp_BadContinuity();
		%feature("autodoc", "1");
		Handle_LProp_BadContinuity(const Handle_LProp_BadContinuity &aHandle);
		%feature("autodoc", "1");
		Handle_LProp_BadContinuity(const LProp_BadContinuity *anItem);
		%feature("autodoc", "1");
		Handle_LProp_BadContinuity & operator=(const Handle_LProp_BadContinuity &aHandle);
		%feature("autodoc", "1");
		Handle_LProp_BadContinuity & operator=(const LProp_BadContinuity *anItem);
		%feature("autodoc", "1");
		Handle_LProp_BadContinuity const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_LProp_BadContinuity {
	LProp_BadContinuity* GetObject() {
	return (LProp_BadContinuity*)$self->Access();
	}
};
%extend Handle_LProp_BadContinuity {
	~Handle_LProp_BadContinuity() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_LProp_BadContinuity\n");}
	}
};


%nodefaultctor Handle_LProp_NotDefined;
class Handle_LProp_NotDefined : public Handle_Standard_Failure {
	public:
		%feature("autodoc", "1");
		Handle_LProp_NotDefined();
		%feature("autodoc", "1");
		Handle_LProp_NotDefined(const Handle_LProp_NotDefined &aHandle);
		%feature("autodoc", "1");
		Handle_LProp_NotDefined(const LProp_NotDefined *anItem);
		%feature("autodoc", "1");
		Handle_LProp_NotDefined & operator=(const Handle_LProp_NotDefined &aHandle);
		%feature("autodoc", "1");
		Handle_LProp_NotDefined & operator=(const LProp_NotDefined *anItem);
		%feature("autodoc", "1");
		Handle_LProp_NotDefined const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_LProp_NotDefined {
	LProp_NotDefined* GetObject() {
	return (LProp_NotDefined*)$self->Access();
	}
};
%extend Handle_LProp_NotDefined {
	~Handle_LProp_NotDefined() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_LProp_NotDefined\n");}
	}
};


%nodefaultctor LProp_SequenceNodeOfSequenceOfCIType;
class LProp_SequenceNodeOfSequenceOfCIType : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		LProp_SequenceNodeOfSequenceOfCIType(const LProp_CIType &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		LProp_CIType & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend LProp_SequenceNodeOfSequenceOfCIType {
	Handle_LProp_SequenceNodeOfSequenceOfCIType GetHandle() {
	return *(Handle_LProp_SequenceNodeOfSequenceOfCIType*) &$self;
	}
};
%extend LProp_SequenceNodeOfSequenceOfCIType {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend LProp_SequenceNodeOfSequenceOfCIType {
	~LProp_SequenceNodeOfSequenceOfCIType() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of LProp_SequenceNodeOfSequenceOfCIType\n");}
	}
};


%nodefaultctor LProp_BadContinuity;
class LProp_BadContinuity : public Standard_Failure {
	public:
		%feature("autodoc", "1");
		LProp_BadContinuity();
		%feature("autodoc", "1");
		LProp_BadContinuity(const char * AString);
		%feature("autodoc", "1");
		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		Handle_LProp_BadContinuity NewInstance(const char * aMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend LProp_BadContinuity {
	Handle_LProp_BadContinuity GetHandle() {
	return *(Handle_LProp_BadContinuity*) &$self;
	}
};
%extend LProp_BadContinuity {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend LProp_BadContinuity {
	~LProp_BadContinuity() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of LProp_BadContinuity\n");}
	}
};


%nodefaultctor LProp_SequenceOfCIType;
class LProp_SequenceOfCIType : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		LProp_SequenceOfCIType();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const LProp_SequenceOfCIType & Assign(const LProp_SequenceOfCIType &Other);
		%feature("autodoc", "1");
		const LProp_SequenceOfCIType & operator=(const LProp_SequenceOfCIType &Other);
		%feature("autodoc", "1");
		void Append(const LProp_CIType &T);
		%feature("autodoc", "1");
		void Append(LProp_SequenceOfCIType & S);
		%feature("autodoc", "1");
		void Prepend(const LProp_CIType &T);
		%feature("autodoc", "1");
		void Prepend(LProp_SequenceOfCIType & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const LProp_CIType &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, LProp_SequenceOfCIType & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const LProp_CIType &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, LProp_SequenceOfCIType & S);
		%feature("autodoc", "1");
		const LProp_CIType & First() const;
		%feature("autodoc", "1");
		const LProp_CIType & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, LProp_SequenceOfCIType & S);
		%feature("autodoc", "1");
		const LProp_CIType & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const LProp_CIType & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const LProp_CIType &I);
		%feature("autodoc", "1");
		LProp_CIType & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		LProp_CIType & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%extend LProp_SequenceOfCIType {
	~LProp_SequenceOfCIType() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of LProp_SequenceOfCIType\n");}
	}
};


%nodefaultctor LProp_AnalyticCurInf;
class LProp_AnalyticCurInf {
	public:
		%feature("autodoc", "1");
		LProp_AnalyticCurInf();
		%feature("autodoc", "1");
		void Perform(const GeomAbs_CurveType T, const Standard_Real UFirst, const Standard_Real ULast, LProp_CurAndInf & Result);

};
%extend LProp_AnalyticCurInf {
	~LProp_AnalyticCurInf() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of LProp_AnalyticCurInf\n");}
	}
};


%nodefaultctor LProp_CurAndInf;
class LProp_CurAndInf {
	public:
		%feature("autodoc", "1");
		LProp_CurAndInf();
		%feature("autodoc", "1");
		void AddInflection(const Standard_Real Param);
		%feature("autodoc", "1");
		void AddExtCur(const Standard_Real Param, const Standard_Boolean IsMin);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer NbPoints() const;
		%feature("autodoc", "1");
		Standard_Real Parameter(const Standard_Integer N) const;
		%feature("autodoc", "1");
		LProp_CIType Type(const Standard_Integer N) const;

};
%extend LProp_CurAndInf {
	~LProp_CurAndInf() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of LProp_CurAndInf\n");}
	}
};


%nodefaultctor LProp_NotDefined;
class LProp_NotDefined : public Standard_Failure {
	public:
		%feature("autodoc", "1");
		LProp_NotDefined();
		%feature("autodoc", "1");
		LProp_NotDefined(const char * AString);
		%feature("autodoc", "1");
		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		Handle_LProp_NotDefined NewInstance(const char * aMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend LProp_NotDefined {
	Handle_LProp_NotDefined GetHandle() {
	return *(Handle_LProp_NotDefined*) &$self;
	}
};
%extend LProp_NotDefined {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend LProp_NotDefined {
	~LProp_NotDefined() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of LProp_NotDefined\n");}
	}
};
