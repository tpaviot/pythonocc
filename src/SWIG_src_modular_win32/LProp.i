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
%module LProp

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
		~Handle_LProp_SequenceNodeOfSequenceOfCIType();
		%feature("autodoc", "1");
		Handle_LProp_SequenceNodeOfSequenceOfCIType();
		%feature("autodoc", "1");
		Handle_LProp_SequenceNodeOfSequenceOfCIType(const Handle_LProp_SequenceNodeOfSequenceOfCIType &aHandle);
		%feature("autodoc", "1");
		Handle_LProp_SequenceNodeOfSequenceOfCIType(const LProp_SequenceNodeOfSequenceOfCIType *anItem);
		%feature("autodoc", "1");
		Handle_LProp_SequenceNodeOfSequenceOfCIType const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_LProp_SequenceNodeOfSequenceOfCIType {
	LProp_SequenceNodeOfSequenceOfCIType* GetObject() {
	return (LProp_SequenceNodeOfSequenceOfCIType*)$self->Access();
	}
};

%nodefaultctor Handle_LProp_BadContinuity;
class Handle_LProp_BadContinuity : public Handle_Standard_Failure {
	public:
		%feature("autodoc", "1");
		~Handle_LProp_BadContinuity();
		%feature("autodoc", "1");
		Handle_LProp_BadContinuity();
		%feature("autodoc", "1");
		Handle_LProp_BadContinuity(const Handle_LProp_BadContinuity &aHandle);
		%feature("autodoc", "1");
		Handle_LProp_BadContinuity(const LProp_BadContinuity *anItem);
		%feature("autodoc", "1");
		Handle_LProp_BadContinuity const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_LProp_BadContinuity {
	LProp_BadContinuity* GetObject() {
	return (LProp_BadContinuity*)$self->Access();
	}
};

%nodefaultctor Handle_LProp_NotDefined;
class Handle_LProp_NotDefined : public Handle_Standard_Failure {
	public:
		%feature("autodoc", "1");
		~Handle_LProp_NotDefined();
		%feature("autodoc", "1");
		Handle_LProp_NotDefined();
		%feature("autodoc", "1");
		Handle_LProp_NotDefined(const Handle_LProp_NotDefined &aHandle);
		%feature("autodoc", "1");
		Handle_LProp_NotDefined(const LProp_NotDefined *anItem);
		%feature("autodoc", "1");
		Handle_LProp_NotDefined const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_LProp_NotDefined {
	LProp_NotDefined* GetObject() {
	return (LProp_NotDefined*)$self->Access();
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
		%feature("autodoc", "1");
		virtual		~LProp_SequenceNodeOfSequenceOfCIType();

};
%extend LProp_SequenceNodeOfSequenceOfCIType {
	Handle_LProp_SequenceNodeOfSequenceOfCIType GetHandle() {
	return *(Handle_LProp_SequenceNodeOfSequenceOfCIType*) &$self;
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
		~LProp_SequenceOfCIType();
		%feature("autodoc", "1");
		const LProp_SequenceOfCIType & Assign(const LProp_SequenceOfCIType &Other);
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

%nodefaultctor LProp_AnalyticCurInf;
class LProp_AnalyticCurInf {
	public:
		%feature("autodoc", "1");
		~LProp_AnalyticCurInf();
		%feature("autodoc", "1");
		LProp_AnalyticCurInf();
		%feature("autodoc", "1");
		void Perform(const GeomAbs_CurveType T, const Standard_Real UFirst, const Standard_Real ULast, LProp_CurAndInf & Result);

};

%nodefaultctor LProp_CurAndInf;
class LProp_CurAndInf {
	public:
		%feature("autodoc", "1");
		~LProp_CurAndInf();
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
		%feature("autodoc", "1");
		virtual		~LProp_NotDefined();

};
%extend LProp_NotDefined {
	Handle_LProp_NotDefined GetHandle() {
	return *(Handle_LProp_NotDefined*) &$self;
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
		%feature("autodoc", "1");
		virtual		~LProp_BadContinuity();

};
%extend LProp_BadContinuity {
	Handle_LProp_BadContinuity GetHandle() {
	return *(Handle_LProp_BadContinuity*) &$self;
	}
};