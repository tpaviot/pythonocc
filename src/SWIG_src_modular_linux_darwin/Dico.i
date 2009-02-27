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
%module Dico

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


%include Dico_dependencies.i


%include Dico_headers.i




%nodefaultctor Handle_Dico_StackItemOfDictionaryOfTransient;
class Handle_Dico_StackItemOfDictionaryOfTransient : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_Dico_StackItemOfDictionaryOfTransient();
		%feature("autodoc", "1");
		Handle_Dico_StackItemOfDictionaryOfTransient();
		%feature("autodoc", "1");
		Handle_Dico_StackItemOfDictionaryOfTransient(const Handle_Dico_StackItemOfDictionaryOfTransient &aHandle);
		%feature("autodoc", "1");
		Handle_Dico_StackItemOfDictionaryOfTransient(const Dico_StackItemOfDictionaryOfTransient *anItem);
		%feature("autodoc", "1");
		Handle_Dico_StackItemOfDictionaryOfTransient const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Dico_StackItemOfDictionaryOfTransient {
	Dico_StackItemOfDictionaryOfTransient* GetObject() {
	return (Dico_StackItemOfDictionaryOfTransient*)$self->Access();
	}
};

%nodefaultctor Handle_Dico_DictionaryOfInteger;
class Handle_Dico_DictionaryOfInteger : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_Dico_DictionaryOfInteger();
		%feature("autodoc", "1");
		Handle_Dico_DictionaryOfInteger();
		%feature("autodoc", "1");
		Handle_Dico_DictionaryOfInteger(const Handle_Dico_DictionaryOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_Dico_DictionaryOfInteger(const Dico_DictionaryOfInteger *anItem);
		%feature("autodoc", "1");
		Handle_Dico_DictionaryOfInteger const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Dico_DictionaryOfInteger {
	Dico_DictionaryOfInteger* GetObject() {
	return (Dico_DictionaryOfInteger*)$self->Access();
	}
};

%nodefaultctor Handle_Dico_DictionaryOfTransient;
class Handle_Dico_DictionaryOfTransient : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_Dico_DictionaryOfTransient();
		%feature("autodoc", "1");
		Handle_Dico_DictionaryOfTransient();
		%feature("autodoc", "1");
		Handle_Dico_DictionaryOfTransient(const Handle_Dico_DictionaryOfTransient &aHandle);
		%feature("autodoc", "1");
		Handle_Dico_DictionaryOfTransient(const Dico_DictionaryOfTransient *anItem);
		%feature("autodoc", "1");
		Handle_Dico_DictionaryOfTransient const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Dico_DictionaryOfTransient {
	Dico_DictionaryOfTransient* GetObject() {
	return (Dico_DictionaryOfTransient*)$self->Access();
	}
};

%nodefaultctor Handle_Dico_StackItemOfDictionaryOfInteger;
class Handle_Dico_StackItemOfDictionaryOfInteger : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_Dico_StackItemOfDictionaryOfInteger();
		%feature("autodoc", "1");
		Handle_Dico_StackItemOfDictionaryOfInteger();
		%feature("autodoc", "1");
		Handle_Dico_StackItemOfDictionaryOfInteger(const Handle_Dico_StackItemOfDictionaryOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_Dico_StackItemOfDictionaryOfInteger(const Dico_StackItemOfDictionaryOfInteger *anItem);
		%feature("autodoc", "1");
		Handle_Dico_StackItemOfDictionaryOfInteger const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Dico_StackItemOfDictionaryOfInteger {
	Dico_StackItemOfDictionaryOfInteger* GetObject() {
	return (Dico_StackItemOfDictionaryOfInteger*)$self->Access();
	}
};

%nodefaultctor Dico_DictionaryOfInteger;
class Dico_DictionaryOfInteger : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Dico_DictionaryOfInteger();
		%feature("autodoc", "1");
		Standard_Boolean HasItem(const char * name, const Standard_Boolean exact=0) const;
		%feature("autodoc", "1");
		Standard_Boolean HasItem(const TCollection_AsciiString &name, const Standard_Boolean exact=1) const;
		%feature("autodoc", "1");
		const Standard_Integer & Item(const char * name, const Standard_Boolean exact=1) const;
		%feature("autodoc", "1");
		const Standard_Integer & Item(const TCollection_AsciiString &name, const Standard_Boolean exact=1) const;
		%feature("autodoc", "1");
		Standard_Boolean GetItem(const char * name, Standard_Integer & anitem, const Standard_Boolean exact=1) const;
		%feature("autodoc", "1");
		Standard_Boolean GetItem(const TCollection_AsciiString &name, Standard_Integer & anitem, const Standard_Boolean exact=1) const;
		%feature("autodoc", "1");
		void SetItem(const char * name, const Standard_Integer &anitem, const Standard_Boolean exact=1);
		%feature("autodoc", "1");
		void SetItem(const TCollection_AsciiString &name, const Standard_Integer &anitem, const Standard_Boolean exact=1);
		%feature("autodoc", "1");
		Standard_Integer & NewItem(const char * name, Standard_Boolean & isvalued, const Standard_Boolean exact=1);
		%feature("autodoc", "1");
		Standard_Integer & NewItem(const TCollection_AsciiString &name, Standard_Boolean & isvalued, const Standard_Boolean exact=1);
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
		Handle_Dico_DictionaryOfInteger Copy() const;
		%feature("autodoc", "1");
		Standard_Boolean Complete(Handle_Dico_DictionaryOfInteger & acell) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~Dico_DictionaryOfInteger();

};
%extend Dico_DictionaryOfInteger {
	Handle_Dico_DictionaryOfInteger GetHandle() {
	return *(Handle_Dico_DictionaryOfInteger*) &$self;
	}
};

%nodefaultctor Dico_IteratorOfDictionaryOfTransient;
class Dico_IteratorOfDictionaryOfTransient {
	public:
		%feature("autodoc", "1");
		~Dico_IteratorOfDictionaryOfTransient();
		%feature("autodoc", "1");
		Dico_IteratorOfDictionaryOfTransient(const Handle_Dico_DictionaryOfTransient &acell);
		%feature("autodoc", "1");
		Dico_IteratorOfDictionaryOfTransient(const Handle_Dico_DictionaryOfTransient &acell, const char * basename);
		%feature("autodoc", "1");
		Dico_IteratorOfDictionaryOfTransient(const Handle_Dico_DictionaryOfTransient &acell, const TCollection_AsciiString &basename);
		%feature("autodoc", "1");
		void Start();
		%feature("autodoc", "1");
		Standard_Boolean More();
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		const Handle_Standard_Transient & Value() const;
		%feature("autodoc", "1");
		TCollection_AsciiString Name() const;

};

%nodefaultctor Dico_StackItemOfDictionaryOfTransient;
class Dico_StackItemOfDictionaryOfTransient : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Dico_StackItemOfDictionaryOfTransient();
		%feature("autodoc", "1");
		Dico_StackItemOfDictionaryOfTransient(const Handle_Dico_StackItemOfDictionaryOfTransient &previous);
		%feature("autodoc", "1");
		Handle_Dico_StackItemOfDictionaryOfTransient Previous() const;
		%feature("autodoc", "1");
		Handle_Dico_DictionaryOfTransient Value() const;
		%feature("autodoc", "1");
		void SetValue(const Handle_Dico_DictionaryOfTransient &cval);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~Dico_StackItemOfDictionaryOfTransient();

};
%extend Dico_StackItemOfDictionaryOfTransient {
	Handle_Dico_StackItemOfDictionaryOfTransient GetHandle() {
	return *(Handle_Dico_StackItemOfDictionaryOfTransient*) &$self;
	}
};

%nodefaultctor Dico_StackItemOfDictionaryOfInteger;
class Dico_StackItemOfDictionaryOfInteger : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Dico_StackItemOfDictionaryOfInteger();
		%feature("autodoc", "1");
		Dico_StackItemOfDictionaryOfInteger(const Handle_Dico_StackItemOfDictionaryOfInteger &previous);
		%feature("autodoc", "1");
		Handle_Dico_StackItemOfDictionaryOfInteger Previous() const;
		%feature("autodoc", "1");
		Handle_Dico_DictionaryOfInteger Value() const;
		%feature("autodoc", "1");
		void SetValue(const Handle_Dico_DictionaryOfInteger &cval);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~Dico_StackItemOfDictionaryOfInteger();

};
%extend Dico_StackItemOfDictionaryOfInteger {
	Handle_Dico_StackItemOfDictionaryOfInteger GetHandle() {
	return *(Handle_Dico_StackItemOfDictionaryOfInteger*) &$self;
	}
};

%nodefaultctor Dico_DictionaryOfTransient;
class Dico_DictionaryOfTransient : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Dico_DictionaryOfTransient();
		%feature("autodoc", "1");
		Standard_Boolean HasItem(const char * name, const Standard_Boolean exact=0) const;
		%feature("autodoc", "1");
		Standard_Boolean HasItem(const TCollection_AsciiString &name, const Standard_Boolean exact=1) const;
		%feature("autodoc", "1");
		const Handle_Standard_Transient & Item(const char * name, const Standard_Boolean exact=1) const;
		%feature("autodoc", "1");
		const Handle_Standard_Transient & Item(const TCollection_AsciiString &name, const Standard_Boolean exact=1) const;
		%feature("autodoc", "1");
		Standard_Boolean GetItem(const char * name, Handle_Standard_Transient & anitem, const Standard_Boolean exact=1) const;
		%feature("autodoc", "1");
		Standard_Boolean GetItem(const TCollection_AsciiString &name, Handle_Standard_Transient & anitem, const Standard_Boolean exact=1) const;
		%feature("autodoc", "1");
		void SetItem(const char * name, const Handle_Standard_Transient &anitem, const Standard_Boolean exact=1);
		%feature("autodoc", "1");
		void SetItem(const TCollection_AsciiString &name, const Handle_Standard_Transient &anitem, const Standard_Boolean exact=1);
		%feature("autodoc", "1");
		Handle_Standard_Transient & NewItem(const char * name, Standard_Boolean & isvalued, const Standard_Boolean exact=1);
		%feature("autodoc", "1");
		Handle_Standard_Transient & NewItem(const TCollection_AsciiString &name, Standard_Boolean & isvalued, const Standard_Boolean exact=1);
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
		Handle_Dico_DictionaryOfTransient Copy() const;
		%feature("autodoc", "1");
		Standard_Boolean Complete(Handle_Dico_DictionaryOfTransient & acell) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~Dico_DictionaryOfTransient();

};
%extend Dico_DictionaryOfTransient {
	Handle_Dico_DictionaryOfTransient GetHandle() {
	return *(Handle_Dico_DictionaryOfTransient*) &$self;
	}
};

%nodefaultctor Dico_IteratorOfDictionaryOfInteger;
class Dico_IteratorOfDictionaryOfInteger {
	public:
		%feature("autodoc", "1");
		~Dico_IteratorOfDictionaryOfInteger();
		%feature("autodoc", "1");
		Dico_IteratorOfDictionaryOfInteger(const Handle_Dico_DictionaryOfInteger &acell);
		%feature("autodoc", "1");
		Dico_IteratorOfDictionaryOfInteger(const Handle_Dico_DictionaryOfInteger &acell, const char * basename);
		%feature("autodoc", "1");
		Dico_IteratorOfDictionaryOfInteger(const Handle_Dico_DictionaryOfInteger &acell, const TCollection_AsciiString &basename);
		%feature("autodoc", "1");
		void Start();
		%feature("autodoc", "1");
		Standard_Boolean More();
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		const Standard_Integer & Value() const;
		%feature("autodoc", "1");
		TCollection_AsciiString Name() const;

};