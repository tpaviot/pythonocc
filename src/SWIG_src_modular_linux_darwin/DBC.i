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
%module DBC

%include DBC_renames.i

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


%include DBC_dependencies.i


%include DBC_headers.i

typedef void * DBC_DBVArray;



%nodefaultctor Handle_DBC_VArrayNodeOfVArrayOfExtCharacter;
class Handle_DBC_VArrayNodeOfVArrayOfExtCharacter : public Handle_PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		Handle_DBC_VArrayNodeOfVArrayOfExtCharacter();
		%feature("autodoc", "1");
		Handle_DBC_VArrayNodeOfVArrayOfExtCharacter(const Handle_DBC_VArrayNodeOfVArrayOfExtCharacter &aHandle);
		%feature("autodoc", "1");
		Handle_DBC_VArrayNodeOfVArrayOfExtCharacter(const DBC_VArrayNodeOfVArrayOfExtCharacter *anItem);
		%feature("autodoc", "1");
		Handle_DBC_VArrayNodeOfVArrayOfExtCharacter const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_DBC_VArrayNodeOfVArrayOfExtCharacter {
	DBC_VArrayNodeOfVArrayOfExtCharacter* GetObject() {
	return (DBC_VArrayNodeOfVArrayOfExtCharacter*)$self->Access();
	}
};
%extend Handle_DBC_VArrayNodeOfVArrayOfExtCharacter {
	~Handle_DBC_VArrayNodeOfVArrayOfExtCharacter() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_DBC_VArrayNodeOfVArrayOfExtCharacter\n");}
	}
};


%nodefaultctor Handle_DBC_VArrayNodeOfVArrayOfReal;
class Handle_DBC_VArrayNodeOfVArrayOfReal : public Handle_PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		Handle_DBC_VArrayNodeOfVArrayOfReal();
		%feature("autodoc", "1");
		Handle_DBC_VArrayNodeOfVArrayOfReal(const Handle_DBC_VArrayNodeOfVArrayOfReal &aHandle);
		%feature("autodoc", "1");
		Handle_DBC_VArrayNodeOfVArrayOfReal(const DBC_VArrayNodeOfVArrayOfReal *anItem);
		%feature("autodoc", "1");
		Handle_DBC_VArrayNodeOfVArrayOfReal const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_DBC_VArrayNodeOfVArrayOfReal {
	DBC_VArrayNodeOfVArrayOfReal* GetObject() {
	return (DBC_VArrayNodeOfVArrayOfReal*)$self->Access();
	}
};
%extend Handle_DBC_VArrayNodeOfVArrayOfReal {
	~Handle_DBC_VArrayNodeOfVArrayOfReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_DBC_VArrayNodeOfVArrayOfReal\n");}
	}
};


%nodefaultctor Handle_DBC_VArrayNodeOfVArrayOfCharacter;
class Handle_DBC_VArrayNodeOfVArrayOfCharacter : public Handle_PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		Handle_DBC_VArrayNodeOfVArrayOfCharacter();
		%feature("autodoc", "1");
		Handle_DBC_VArrayNodeOfVArrayOfCharacter(const Handle_DBC_VArrayNodeOfVArrayOfCharacter &aHandle);
		%feature("autodoc", "1");
		Handle_DBC_VArrayNodeOfVArrayOfCharacter(const DBC_VArrayNodeOfVArrayOfCharacter *anItem);
		%feature("autodoc", "1");
		Handle_DBC_VArrayNodeOfVArrayOfCharacter const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_DBC_VArrayNodeOfVArrayOfCharacter {
	DBC_VArrayNodeOfVArrayOfCharacter* GetObject() {
	return (DBC_VArrayNodeOfVArrayOfCharacter*)$self->Access();
	}
};
%extend Handle_DBC_VArrayNodeOfVArrayOfCharacter {
	~Handle_DBC_VArrayNodeOfVArrayOfCharacter() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_DBC_VArrayNodeOfVArrayOfCharacter\n");}
	}
};


%nodefaultctor Handle_DBC_VArrayNodeOfVArrayOfInteger;
class Handle_DBC_VArrayNodeOfVArrayOfInteger : public Handle_PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		Handle_DBC_VArrayNodeOfVArrayOfInteger();
		%feature("autodoc", "1");
		Handle_DBC_VArrayNodeOfVArrayOfInteger(const Handle_DBC_VArrayNodeOfVArrayOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_DBC_VArrayNodeOfVArrayOfInteger(const DBC_VArrayNodeOfVArrayOfInteger *anItem);
		%feature("autodoc", "1");
		Handle_DBC_VArrayNodeOfVArrayOfInteger const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_DBC_VArrayNodeOfVArrayOfInteger {
	DBC_VArrayNodeOfVArrayOfInteger* GetObject() {
	return (DBC_VArrayNodeOfVArrayOfInteger*)$self->Access();
	}
};
%extend Handle_DBC_VArrayNodeOfVArrayOfInteger {
	~Handle_DBC_VArrayNodeOfVArrayOfInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_DBC_VArrayNodeOfVArrayOfInteger\n");}
	}
};


%nodefaultctor DBC_VArrayNodeOfVArrayOfExtCharacter;
class DBC_VArrayNodeOfVArrayOfExtCharacter : public PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		DBC_VArrayNodeOfVArrayOfExtCharacter();
		%feature("autodoc", "1");
		DBC_VArrayNodeOfVArrayOfExtCharacter(const Standard_ExtCharacter &aValue);
		%feature("autodoc", "1");
		void SetValue(const Standard_ExtCharacter &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;
		%feature("autodoc", "1");
		DBC_VArrayNodeOfVArrayOfExtCharacter(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_ExtCharacter _CSFDB_GetDBC_VArrayNodeOfVArrayOfExtCharactermyValue() const;
		%feature("autodoc", "1");
		void _CSFDB_SetDBC_VArrayNodeOfVArrayOfExtCharactermyValue(const Standard_ExtCharacter p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend DBC_VArrayNodeOfVArrayOfExtCharacter {
	Handle_DBC_VArrayNodeOfVArrayOfExtCharacter GetHandle() {
	return *(Handle_DBC_VArrayNodeOfVArrayOfExtCharacter*) &$self;
	}
};
%extend DBC_VArrayNodeOfVArrayOfExtCharacter {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend DBC_VArrayNodeOfVArrayOfExtCharacter {
	~DBC_VArrayNodeOfVArrayOfExtCharacter() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of DBC_VArrayNodeOfVArrayOfExtCharacter\n");}
	}
};


%nodefaultctor DBC_VArrayTNodeOfVArrayOfCharacter;
class DBC_VArrayTNodeOfVArrayOfCharacter {
	public:
		%feature("autodoc", "1");
		DBC_VArrayTNodeOfVArrayOfCharacter();
		%feature("autodoc", "1");
		DBC_VArrayTNodeOfVArrayOfCharacter(const Standard_Character &aValue);
		%feature("autodoc", "1");
		void SetValue(const Standard_Character &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;

};
%extend DBC_VArrayTNodeOfVArrayOfCharacter {
	~DBC_VArrayTNodeOfVArrayOfCharacter() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of DBC_VArrayTNodeOfVArrayOfCharacter\n");}
	}
};


%nodefaultctor DBC_BaseArray;
class DBC_BaseArray {
	public:
		%feature("autodoc", "1");
		DBC_BaseArray();
		%feature("autodoc", "1");
		DBC_BaseArray(const Standard_Integer Size);
		%feature("autodoc", "1");
		DBC_BaseArray(const DBC_BaseArray &BaseArray);
		%feature("autodoc", "1");
		virtual		void Delete();
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		Standard_Address Lock() const;
		%feature("autodoc", "1");
		void Unlock() const;
		%feature("autodoc", "1");
		%extend{
			std::string ShallowDumpToString() {
			std::stringstream s;
			self->ShallowDump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetDBC_BaseArraymySize() const;
		%feature("autodoc", "1");
		void _CSFDB_SetDBC_BaseArraymySize(const Standard_Integer p);
		%feature("autodoc", "1");
		DBC_DBVArray _CSFDB_GetDBC_BaseArraymyData() const;
		%feature("autodoc", "1");
		void _CSFDB_SetDBC_BaseArraymyData(const DBC_DBVArray p);

};
%extend DBC_BaseArray {
	~DBC_BaseArray() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of DBC_BaseArray\n");}
	}
};


%nodefaultctor DBC_VArrayTNodeOfVArrayOfExtCharacter;
class DBC_VArrayTNodeOfVArrayOfExtCharacter {
	public:
		%feature("autodoc", "1");
		DBC_VArrayTNodeOfVArrayOfExtCharacter();
		%feature("autodoc", "1");
		DBC_VArrayTNodeOfVArrayOfExtCharacter(const Standard_ExtCharacter &aValue);
		%feature("autodoc", "1");
		void SetValue(const Standard_ExtCharacter &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;

};
%extend DBC_VArrayTNodeOfVArrayOfExtCharacter {
	~DBC_VArrayTNodeOfVArrayOfExtCharacter() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of DBC_VArrayTNodeOfVArrayOfExtCharacter\n");}
	}
};


%nodefaultctor DBC_VArrayOfReal;
class DBC_VArrayOfReal : public DBC_BaseArray {
	public:
		%feature("autodoc", "1");
		DBC_VArrayOfReal();
		%feature("autodoc", "1");
		DBC_VArrayOfReal(const Standard_Integer Size);
		%feature("autodoc", "1");
		DBC_VArrayOfReal(const DBC_VArrayOfReal &Varray);
		%feature("autodoc", "1");
		void Resize(const Standard_Integer Size);
		%feature("autodoc", "1");
		void Assign(const DBC_VArrayOfReal &Other);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Standard_Real &Value);
		%feature("autodoc", "1");
		Standard_Real & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Real & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void Destroy();

};
%extend DBC_VArrayOfReal {
	~DBC_VArrayOfReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of DBC_VArrayOfReal\n");}
	}
};


%nodefaultctor DBC_VArrayOfCharacter;
class DBC_VArrayOfCharacter : public DBC_BaseArray {
	public:
		%feature("autodoc", "1");
		DBC_VArrayOfCharacter();
		%feature("autodoc", "1");
		DBC_VArrayOfCharacter(const Standard_Integer Size);
		%feature("autodoc", "1");
		DBC_VArrayOfCharacter(const DBC_VArrayOfCharacter &Varray);
		%feature("autodoc", "1");
		void Resize(const Standard_Integer Size);
		%feature("autodoc", "1");
		void Assign(const DBC_VArrayOfCharacter &Other);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Standard_Character &Value);
		%feature("autodoc", "1");
		Standard_Character & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Character & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void Destroy();

};
%extend DBC_VArrayOfCharacter {
	~DBC_VArrayOfCharacter() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of DBC_VArrayOfCharacter\n");}
	}
};


%nodefaultctor DBC_VArrayNodeOfVArrayOfCharacter;
class DBC_VArrayNodeOfVArrayOfCharacter : public PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		DBC_VArrayNodeOfVArrayOfCharacter();
		%feature("autodoc", "1");
		DBC_VArrayNodeOfVArrayOfCharacter(const Standard_Character &aValue);
		%feature("autodoc", "1");
		void SetValue(const Standard_Character &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;
		%feature("autodoc", "1");
		DBC_VArrayNodeOfVArrayOfCharacter(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Character _CSFDB_GetDBC_VArrayNodeOfVArrayOfCharactermyValue() const;
		%feature("autodoc", "1");
		void _CSFDB_SetDBC_VArrayNodeOfVArrayOfCharactermyValue(const Standard_Character p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend DBC_VArrayNodeOfVArrayOfCharacter {
	Handle_DBC_VArrayNodeOfVArrayOfCharacter GetHandle() {
	return *(Handle_DBC_VArrayNodeOfVArrayOfCharacter*) &$self;
	}
};
%extend DBC_VArrayNodeOfVArrayOfCharacter {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend DBC_VArrayNodeOfVArrayOfCharacter {
	~DBC_VArrayNodeOfVArrayOfCharacter() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of DBC_VArrayNodeOfVArrayOfCharacter\n");}
	}
};


%nodefaultctor DBC_VArrayOfInteger;
class DBC_VArrayOfInteger : public DBC_BaseArray {
	public:
		%feature("autodoc", "1");
		DBC_VArrayOfInteger();
		%feature("autodoc", "1");
		DBC_VArrayOfInteger(const Standard_Integer Size);
		%feature("autodoc", "1");
		DBC_VArrayOfInteger(const DBC_VArrayOfInteger &Varray);
		%feature("autodoc", "1");
		void Resize(const Standard_Integer Size);
		%feature("autodoc", "1");
		void Assign(const DBC_VArrayOfInteger &Other);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Standard_Integer &Value);
		%feature("autodoc", "1");
		Standard_Integer & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Integer & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void Destroy();

};
%extend DBC_VArrayOfInteger {
	~DBC_VArrayOfInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of DBC_VArrayOfInteger\n");}
	}
};


%nodefaultctor DBC_VArrayNodeOfVArrayOfReal;
class DBC_VArrayNodeOfVArrayOfReal : public PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		DBC_VArrayNodeOfVArrayOfReal();
		%feature("autodoc", "1");
		DBC_VArrayNodeOfVArrayOfReal(const Standard_Real &aValue);
		%feature("autodoc", "1");
		void SetValue(const Standard_Real &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;
		%feature("autodoc", "1");
		DBC_VArrayNodeOfVArrayOfReal(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Real _CSFDB_GetDBC_VArrayNodeOfVArrayOfRealmyValue() const;
		%feature("autodoc", "1");
		void _CSFDB_SetDBC_VArrayNodeOfVArrayOfRealmyValue(const Standard_Real p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend DBC_VArrayNodeOfVArrayOfReal {
	Handle_DBC_VArrayNodeOfVArrayOfReal GetHandle() {
	return *(Handle_DBC_VArrayNodeOfVArrayOfReal*) &$self;
	}
};
%extend DBC_VArrayNodeOfVArrayOfReal {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend DBC_VArrayNodeOfVArrayOfReal {
	~DBC_VArrayNodeOfVArrayOfReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of DBC_VArrayNodeOfVArrayOfReal\n");}
	}
};


%nodefaultctor DBC_VArrayTNodeOfVArrayOfReal;
class DBC_VArrayTNodeOfVArrayOfReal {
	public:
		%feature("autodoc", "1");
		DBC_VArrayTNodeOfVArrayOfReal();
		%feature("autodoc", "1");
		DBC_VArrayTNodeOfVArrayOfReal(const Standard_Real &aValue);
		%feature("autodoc", "1");
		void SetValue(const Standard_Real &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;

};
%extend DBC_VArrayTNodeOfVArrayOfReal {
	~DBC_VArrayTNodeOfVArrayOfReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of DBC_VArrayTNodeOfVArrayOfReal\n");}
	}
};


%nodefaultctor DBC_VArrayTNodeOfVArrayOfInteger;
class DBC_VArrayTNodeOfVArrayOfInteger {
	public:
		%feature("autodoc", "1");
		DBC_VArrayTNodeOfVArrayOfInteger();
		%feature("autodoc", "1");
		DBC_VArrayTNodeOfVArrayOfInteger(const Standard_Integer &aValue);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;

};
%extend DBC_VArrayTNodeOfVArrayOfInteger {
	~DBC_VArrayTNodeOfVArrayOfInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of DBC_VArrayTNodeOfVArrayOfInteger\n");}
	}
};


%nodefaultctor DBC_VArrayOfExtCharacter;
class DBC_VArrayOfExtCharacter : public DBC_BaseArray {
	public:
		%feature("autodoc", "1");
		DBC_VArrayOfExtCharacter();
		%feature("autodoc", "1");
		DBC_VArrayOfExtCharacter(const Standard_Integer Size);
		%feature("autodoc", "1");
		DBC_VArrayOfExtCharacter(const DBC_VArrayOfExtCharacter &Varray);
		%feature("autodoc", "1");
		void Resize(const Standard_Integer Size);
		%feature("autodoc", "1");
		void Assign(const DBC_VArrayOfExtCharacter &Other);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Standard_ExtCharacter &Value);
		%feature("autodoc", "1");
		Standard_ExtCharacter & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_ExtCharacter & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void Destroy();

};
%extend DBC_VArrayOfExtCharacter {
	~DBC_VArrayOfExtCharacter() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of DBC_VArrayOfExtCharacter\n");}
	}
};


%nodefaultctor DBC_VArrayNodeOfVArrayOfInteger;
class DBC_VArrayNodeOfVArrayOfInteger : public PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		DBC_VArrayNodeOfVArrayOfInteger();
		%feature("autodoc", "1");
		DBC_VArrayNodeOfVArrayOfInteger(const Standard_Integer &aValue);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;
		%feature("autodoc", "1");
		DBC_VArrayNodeOfVArrayOfInteger(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetDBC_VArrayNodeOfVArrayOfIntegermyValue() const;
		%feature("autodoc", "1");
		void _CSFDB_SetDBC_VArrayNodeOfVArrayOfIntegermyValue(const Standard_Integer p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend DBC_VArrayNodeOfVArrayOfInteger {
	Handle_DBC_VArrayNodeOfVArrayOfInteger GetHandle() {
	return *(Handle_DBC_VArrayNodeOfVArrayOfInteger*) &$self;
	}
};
%extend DBC_VArrayNodeOfVArrayOfInteger {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend DBC_VArrayNodeOfVArrayOfInteger {
	~DBC_VArrayNodeOfVArrayOfInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of DBC_VArrayNodeOfVArrayOfInteger\n");}
	}
};
