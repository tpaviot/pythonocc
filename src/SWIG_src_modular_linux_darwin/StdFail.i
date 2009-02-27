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
%module StdFail

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


%include StdFail_dependencies.i


%include StdFail_headers.i




%nodefaultctor Handle_StdFail_UndefinedValue;
class Handle_StdFail_UndefinedValue : public Handle_Standard_DomainError {
	public:
		%feature("autodoc", "1");
		~Handle_StdFail_UndefinedValue();
		%feature("autodoc", "1");
		Handle_StdFail_UndefinedValue();
		%feature("autodoc", "1");
		Handle_StdFail_UndefinedValue(const Handle_StdFail_UndefinedValue &aHandle);
		%feature("autodoc", "1");
		Handle_StdFail_UndefinedValue(const StdFail_UndefinedValue *anItem);
		%feature("autodoc", "1");
		Handle_StdFail_UndefinedValue const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StdFail_UndefinedValue {
	StdFail_UndefinedValue* GetObject() {
	return (StdFail_UndefinedValue*)$self->Access();
	}
};

%nodefaultctor Handle_StdFail_NotDone;
class Handle_StdFail_NotDone : public Handle_Standard_Failure {
	public:
		%feature("autodoc", "1");
		~Handle_StdFail_NotDone();
		%feature("autodoc", "1");
		Handle_StdFail_NotDone();
		%feature("autodoc", "1");
		Handle_StdFail_NotDone(const Handle_StdFail_NotDone &aHandle);
		%feature("autodoc", "1");
		Handle_StdFail_NotDone(const StdFail_NotDone *anItem);
		%feature("autodoc", "1");
		Handle_StdFail_NotDone const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StdFail_NotDone {
	StdFail_NotDone* GetObject() {
	return (StdFail_NotDone*)$self->Access();
	}
};

%nodefaultctor Handle_StdFail_UndefinedDerivative;
class Handle_StdFail_UndefinedDerivative : public Handle_Standard_DomainError {
	public:
		%feature("autodoc", "1");
		~Handle_StdFail_UndefinedDerivative();
		%feature("autodoc", "1");
		Handle_StdFail_UndefinedDerivative();
		%feature("autodoc", "1");
		Handle_StdFail_UndefinedDerivative(const Handle_StdFail_UndefinedDerivative &aHandle);
		%feature("autodoc", "1");
		Handle_StdFail_UndefinedDerivative(const StdFail_UndefinedDerivative *anItem);
		%feature("autodoc", "1");
		Handle_StdFail_UndefinedDerivative const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StdFail_UndefinedDerivative {
	StdFail_UndefinedDerivative* GetObject() {
	return (StdFail_UndefinedDerivative*)$self->Access();
	}
};

%nodefaultctor Handle_StdFail_InfiniteSolutions;
class Handle_StdFail_InfiniteSolutions : public Handle_Standard_Failure {
	public:
		%feature("autodoc", "1");
		~Handle_StdFail_InfiniteSolutions();
		%feature("autodoc", "1");
		Handle_StdFail_InfiniteSolutions();
		%feature("autodoc", "1");
		Handle_StdFail_InfiniteSolutions(const Handle_StdFail_InfiniteSolutions &aHandle);
		%feature("autodoc", "1");
		Handle_StdFail_InfiniteSolutions(const StdFail_InfiniteSolutions *anItem);
		%feature("autodoc", "1");
		Handle_StdFail_InfiniteSolutions const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StdFail_InfiniteSolutions {
	StdFail_InfiniteSolutions* GetObject() {
	return (StdFail_InfiniteSolutions*)$self->Access();
	}
};

%nodefaultctor Handle_StdFail_Undefined;
class Handle_StdFail_Undefined : public Handle_Standard_Failure {
	public:
		%feature("autodoc", "1");
		~Handle_StdFail_Undefined();
		%feature("autodoc", "1");
		Handle_StdFail_Undefined();
		%feature("autodoc", "1");
		Handle_StdFail_Undefined(const Handle_StdFail_Undefined &aHandle);
		%feature("autodoc", "1");
		Handle_StdFail_Undefined(const StdFail_Undefined *anItem);
		%feature("autodoc", "1");
		Handle_StdFail_Undefined const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StdFail_Undefined {
	StdFail_Undefined* GetObject() {
	return (StdFail_Undefined*)$self->Access();
	}
};

%nodefaultctor StdFail_UndefinedDerivative;
class StdFail_UndefinedDerivative : public Standard_DomainError {
	public:
		%feature("autodoc", "1");
		StdFail_UndefinedDerivative();
		%feature("autodoc", "1");
		StdFail_UndefinedDerivative(const char * AString);
		%feature("autodoc", "1");
		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		Handle_StdFail_UndefinedDerivative NewInstance(const char * aMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StdFail_UndefinedDerivative();

};
%extend StdFail_UndefinedDerivative {
	Handle_StdFail_UndefinedDerivative GetHandle() {
	return *(Handle_StdFail_UndefinedDerivative*) &$self;
	}
};

%nodefaultctor StdFail_UndefinedValue;
class StdFail_UndefinedValue : public Standard_DomainError {
	public:
		%feature("autodoc", "1");
		StdFail_UndefinedValue();
		%feature("autodoc", "1");
		StdFail_UndefinedValue(const char * AString);
		%feature("autodoc", "1");
		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		Handle_StdFail_UndefinedValue NewInstance(const char * aMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StdFail_UndefinedValue();

};
%extend StdFail_UndefinedValue {
	Handle_StdFail_UndefinedValue GetHandle() {
	return *(Handle_StdFail_UndefinedValue*) &$self;
	}
};

%nodefaultctor StdFail_NotDone;
class StdFail_NotDone : public Standard_Failure {
	public:
		%feature("autodoc", "1");
		StdFail_NotDone();
		%feature("autodoc", "1");
		StdFail_NotDone(const char * AString);
		%feature("autodoc", "1");
		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		Handle_StdFail_NotDone NewInstance(const char * aMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StdFail_NotDone();

};
%extend StdFail_NotDone {
	Handle_StdFail_NotDone GetHandle() {
	return *(Handle_StdFail_NotDone*) &$self;
	}
};

%nodefaultctor StdFail_InfiniteSolutions;
class StdFail_InfiniteSolutions : public Standard_Failure {
	public:
		%feature("autodoc", "1");
		StdFail_InfiniteSolutions();
		%feature("autodoc", "1");
		StdFail_InfiniteSolutions(const char * AString);
		%feature("autodoc", "1");
		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		Handle_StdFail_InfiniteSolutions NewInstance(const char * aMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StdFail_InfiniteSolutions();

};
%extend StdFail_InfiniteSolutions {
	Handle_StdFail_InfiniteSolutions GetHandle() {
	return *(Handle_StdFail_InfiniteSolutions*) &$self;
	}
};

%nodefaultctor StdFail_Undefined;
class StdFail_Undefined : public Standard_Failure {
	public:
		%feature("autodoc", "1");
		StdFail_Undefined();
		%feature("autodoc", "1");
		StdFail_Undefined(const char * AString);
		%feature("autodoc", "1");
		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		Handle_StdFail_Undefined NewInstance(const char * aMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StdFail_Undefined();

};
%extend StdFail_Undefined {
	Handle_StdFail_Undefined GetHandle() {
	return *(Handle_StdFail_Undefined*) &$self;
	}
};