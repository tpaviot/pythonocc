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
%module PCollection

%include PCollection_renames.i

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


%include PCollection_dependencies.i


%include PCollection_headers.i


enum PCollection_Side {
	PCollection_Left,
	PCollection_Right,
	};

enum PCollection_AccessMode {
	PCollection_Read,
	PCollection_Update,
	};



%nodefaultctor Handle_PCollection_HAsciiString;
class Handle_PCollection_HAsciiString : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		Handle_PCollection_HAsciiString();
		%feature("autodoc", "1");
		Handle_PCollection_HAsciiString(const Handle_PCollection_HAsciiString &aHandle);
		%feature("autodoc", "1");
		Handle_PCollection_HAsciiString(const PCollection_HAsciiString *anItem);
		%feature("autodoc", "1");
		Handle_PCollection_HAsciiString & operator=(const Handle_PCollection_HAsciiString &aHandle);
		%feature("autodoc", "1");
		Handle_PCollection_HAsciiString & operator=(const PCollection_HAsciiString *anItem);
		%feature("autodoc", "1");
		Handle_PCollection_HAsciiString const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PCollection_HAsciiString {
	PCollection_HAsciiString* GetObject() {
	return (PCollection_HAsciiString*)$self->Access();
	}
};
%extend Handle_PCollection_HAsciiString {
	~Handle_PCollection_HAsciiString() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_PCollection_HAsciiString\n");}
	}
};


%nodefaultctor Handle_PCollection_HExtendedString;
class Handle_PCollection_HExtendedString : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		Handle_PCollection_HExtendedString();
		%feature("autodoc", "1");
		Handle_PCollection_HExtendedString(const Handle_PCollection_HExtendedString &aHandle);
		%feature("autodoc", "1");
		Handle_PCollection_HExtendedString(const PCollection_HExtendedString *anItem);
		%feature("autodoc", "1");
		Handle_PCollection_HExtendedString & operator=(const Handle_PCollection_HExtendedString &aHandle);
		%feature("autodoc", "1");
		Handle_PCollection_HExtendedString & operator=(const PCollection_HExtendedString *anItem);
		%feature("autodoc", "1");
		Handle_PCollection_HExtendedString const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PCollection_HExtendedString {
	PCollection_HExtendedString* GetObject() {
	return (PCollection_HExtendedString*)$self->Access();
	}
};
%extend Handle_PCollection_HExtendedString {
	~Handle_PCollection_HExtendedString() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_PCollection_HExtendedString\n");}
	}
};


%nodefaultctor Handle_PCollection_IsNotRoot;
class Handle_PCollection_IsNotRoot : public Handle_Standard_Failure {
	public:
		%feature("autodoc", "1");
		Handle_PCollection_IsNotRoot();
		%feature("autodoc", "1");
		Handle_PCollection_IsNotRoot(const Handle_PCollection_IsNotRoot &aHandle);
		%feature("autodoc", "1");
		Handle_PCollection_IsNotRoot(const PCollection_IsNotRoot *anItem);
		%feature("autodoc", "1");
		Handle_PCollection_IsNotRoot & operator=(const Handle_PCollection_IsNotRoot &aHandle);
		%feature("autodoc", "1");
		Handle_PCollection_IsNotRoot & operator=(const PCollection_IsNotRoot *anItem);
		%feature("autodoc", "1");
		Handle_PCollection_IsNotRoot const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_PCollection_IsNotRoot {
	PCollection_IsNotRoot* GetObject() {
	return (PCollection_IsNotRoot*)$self->Access();
	}
};
%extend Handle_PCollection_IsNotRoot {
	~Handle_PCollection_IsNotRoot() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_PCollection_IsNotRoot\n");}
	}
};


%nodefaultctor Handle_PCollection_IsContained;
class Handle_PCollection_IsContained : public Handle_Standard_Failure {
	public:
		%feature("autodoc", "1");
		Handle_PCollection_IsContained();
		%feature("autodoc", "1");
		Handle_PCollection_IsContained(const Handle_PCollection_IsContained &aHandle);
		%feature("autodoc", "1");
		Handle_PCollection_IsContained(const PCollection_IsContained *anItem);
		%feature("autodoc", "1");
		Handle_PCollection_IsContained & operator=(const Handle_PCollection_IsContained &aHandle);
		%feature("autodoc", "1");
		Handle_PCollection_IsContained & operator=(const PCollection_IsContained *anItem);
		%feature("autodoc", "1");
		Handle_PCollection_IsContained const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_PCollection_IsContained {
	PCollection_IsContained* GetObject() {
	return (PCollection_IsContained*)$self->Access();
	}
};
%extend Handle_PCollection_IsContained {
	~Handle_PCollection_IsContained() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_PCollection_IsContained\n");}
	}
};


%nodefaultctor Handle_PCollection_IsNullTree;
class Handle_PCollection_IsNullTree : public Handle_Standard_Failure {
	public:
		%feature("autodoc", "1");
		Handle_PCollection_IsNullTree();
		%feature("autodoc", "1");
		Handle_PCollection_IsNullTree(const Handle_PCollection_IsNullTree &aHandle);
		%feature("autodoc", "1");
		Handle_PCollection_IsNullTree(const PCollection_IsNullTree *anItem);
		%feature("autodoc", "1");
		Handle_PCollection_IsNullTree & operator=(const Handle_PCollection_IsNullTree &aHandle);
		%feature("autodoc", "1");
		Handle_PCollection_IsNullTree & operator=(const PCollection_IsNullTree *anItem);
		%feature("autodoc", "1");
		Handle_PCollection_IsNullTree const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_PCollection_IsNullTree {
	PCollection_IsNullTree* GetObject() {
	return (PCollection_IsNullTree*)$self->Access();
	}
};
%extend Handle_PCollection_IsNullTree {
	~Handle_PCollection_IsNullTree() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_PCollection_IsNullTree\n");}
	}
};


%nodefaultctor PCollection_IsNullTree;
class PCollection_IsNullTree : public Standard_Failure {
	public:
		%feature("autodoc", "1");
		PCollection_IsNullTree();
		%feature("autodoc", "1");
		PCollection_IsNullTree(const char * AString);
		%feature("autodoc", "1");
		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		Handle_PCollection_IsNullTree NewInstance(const char * aMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PCollection_IsNullTree {
	Handle_PCollection_IsNullTree GetHandle() {
	return *(Handle_PCollection_IsNullTree*) &$self;
	}
};
%extend PCollection_IsNullTree {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend PCollection_IsNullTree {
	~PCollection_IsNullTree() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PCollection_IsNullTree\n");}
	}
};


%nodefaultctor PCollection_PrivCompareOfInteger;
class PCollection_PrivCompareOfInteger {
	public:
		%feature("autodoc", "1");
		PCollection_PrivCompareOfInteger();
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsLower(const Standard_Integer &Left, const Standard_Integer &Right) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsGreater(const Standard_Integer &Left, const Standard_Integer &Right) const;
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const Standard_Integer &Left, const Standard_Integer &Right) const;

};
%extend PCollection_PrivCompareOfInteger {
	~PCollection_PrivCompareOfInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PCollection_PrivCompareOfInteger\n");}
	}
};


%nodefaultctor PCollection_IsNotRoot;
class PCollection_IsNotRoot : public Standard_Failure {
	public:
		%feature("autodoc", "1");
		PCollection_IsNotRoot();
		%feature("autodoc", "1");
		PCollection_IsNotRoot(const char * AString);
		%feature("autodoc", "1");
		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		Handle_PCollection_IsNotRoot NewInstance(const char * aMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PCollection_IsNotRoot {
	Handle_PCollection_IsNotRoot GetHandle() {
	return *(Handle_PCollection_IsNotRoot*) &$self;
	}
};
%extend PCollection_IsNotRoot {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend PCollection_IsNotRoot {
	~PCollection_IsNotRoot() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PCollection_IsNotRoot\n");}
	}
};


%nodefaultctor PCollection_IsContained;
class PCollection_IsContained : public Standard_Failure {
	public:
		%feature("autodoc", "1");
		PCollection_IsContained();
		%feature("autodoc", "1");
		PCollection_IsContained(const char * AString);
		%feature("autodoc", "1");
		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		Handle_PCollection_IsContained NewInstance(const char * aMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PCollection_IsContained {
	Handle_PCollection_IsContained GetHandle() {
	return *(Handle_PCollection_IsContained*) &$self;
	}
};
%extend PCollection_IsContained {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend PCollection_IsContained {
	~PCollection_IsContained() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PCollection_IsContained\n");}
	}
};


%nodefaultctor PCollection_HExtendedString;
class PCollection_HExtendedString : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		PCollection_HExtendedString(const TCollection_ExtendedString &S);
		%feature("autodoc", "1");
		PCollection_HExtendedString(const Standard_ExtCharacter C);
		%feature("autodoc", "1");
		PCollection_HExtendedString(const Handle_PCollection_HExtendedString &S, const Standard_Integer FromIndex, const Standard_Integer ToIndex);
		%feature("autodoc", "1");
		PCollection_HExtendedString(const char * astring);
		%feature("autodoc", "1");
		PCollection_HExtendedString(const Handle_PCollection_HAsciiString &S);
		%feature("autodoc", "1");
		void Append(const Handle_PCollection_HExtendedString &S);
		%feature("autodoc", "1");
		void Center(const Standard_Integer Width, const Standard_ExtCharacter Filler);
		%feature("autodoc", "1");
		void ChangeAll(const Standard_ExtCharacter C, const Standard_ExtCharacter NewC);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		TCollection_ExtendedString Convert() const;
		%feature("autodoc", "1");
		Standard_Integer FirstLocationInSet(const Handle_PCollection_HExtendedString &Set, const Standard_Integer FromIndex, const Standard_Integer ToIndex) const;
		%feature("autodoc", "1");
		Standard_Integer FirstLocationNotInSet(const Handle_PCollection_HExtendedString &Set, const Standard_Integer FromIndex, const Standard_Integer ToIndex) const;
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_PCollection_HExtendedString &S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_PCollection_HExtendedString &S);
		%feature("autodoc", "1");
		Standard_Boolean IsAscii() const;
		%feature("autodoc", "1");
		Standard_Boolean IsDifferent(const Handle_PCollection_HExtendedString &other) const;
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Boolean IsGreater(const Handle_PCollection_HExtendedString &other) const;
		%feature("autodoc", "1");
		Standard_Boolean IsLess(const Handle_PCollection_HExtendedString &other) const;
		%feature("autodoc", "1");
		Standard_Boolean IsSameString(const Handle_PCollection_HExtendedString &S) const;
		%feature("autodoc", "1");
		void LeftAdjust();
		%feature("autodoc", "1");
		void LeftJustify(const Standard_Integer Width, const Standard_ExtCharacter Filler);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Location(const Standard_Integer N, const Standard_ExtCharacter C, const Standard_Integer FromIndex, const Standard_Integer ToIndex) const;
		%feature("autodoc", "1");
		Standard_Integer Location(const Handle_PCollection_HExtendedString &S, const Standard_Integer FromIndex, const Standard_Integer ToIndex) const;
		%feature("autodoc", "1");
		void Prepend(const Handle_PCollection_HExtendedString &S);
		%feature("autodoc", "1");
		%extend{
			std::string PrintToString() {
			std::stringstream s;
			self->Print(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);
		%feature("autodoc", "1");
		void RemoveAll(const Standard_ExtCharacter C);
		%feature("autodoc", "1");
		void RightAdjust();
		%feature("autodoc", "1");
		void RightJustify(const Standard_Integer Width, const Standard_ExtCharacter Filler);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Standard_ExtCharacter C);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_PCollection_HExtendedString &S);
		%feature("autodoc", "1");
		Handle_PCollection_HExtendedString Split(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_PCollection_HExtendedString SubString(const Standard_Integer FromIndex, const Standard_Integer ToIndex) const;
		%feature("autodoc", "1");
		Standard_Integer UsefullLength() const;
		%feature("autodoc", "1");
		Standard_ExtCharacter Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		%extend{
			std::string ShallowDumpToString() {
			std::stringstream s;
			self->ShallowDump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		PCollection_HExtendedString();
		%feature("autodoc", "1");
		PCollection_HExtendedString(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		const DBC_VArrayOfExtCharacter & _CSFDB_GetPCollection_HExtendedStringData() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PCollection_HExtendedString {
	Handle_PCollection_HExtendedString GetHandle() {
	return *(Handle_PCollection_HExtendedString*) &$self;
	}
};
%extend PCollection_HExtendedString {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend PCollection_HExtendedString {
	~PCollection_HExtendedString() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PCollection_HExtendedString\n");}
	}
};


%nodefaultctor PCollection_HAsciiString;
class PCollection_HAsciiString : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		PCollection_HAsciiString(const char * S);
		%feature("autodoc", "1");
		PCollection_HAsciiString(const TCollection_AsciiString &S);
		%feature("autodoc", "1");
		PCollection_HAsciiString(const Standard_Character C);
		%feature("autodoc", "1");
		PCollection_HAsciiString(const Handle_PCollection_HAsciiString &S, const Standard_Integer FromIndex, const Standard_Integer ToIndex);
		%feature("autodoc", "1");
		PCollection_HAsciiString(const Handle_PCollection_HExtendedString &S);
		%feature("autodoc", "1");
		PCollection_HAsciiString(const Standard_Real R, const char * F="%f");
		%feature("autodoc", "1");
		PCollection_HAsciiString(const Standard_Integer I, const char * F="%d");
		%feature("autodoc", "1");
		void Append(const Handle_PCollection_HAsciiString &S);
		%feature("autodoc", "1");
		void Capitalize();
		%feature("autodoc", "1");
		void Center(const Standard_Integer Width, const Standard_Character Filler);
		%feature("autodoc", "1");
		void ChangeAll(const Standard_Character C, const Standard_Character NewC, const Standard_Boolean CaseSensitive);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		TCollection_AsciiString Convert() const;
		%feature("autodoc", "1");
		Standard_Integer FirstLocationInSet(const Handle_PCollection_HAsciiString &Set, const Standard_Integer FromIndex, const Standard_Integer ToIndex) const;
		%feature("autodoc", "1");
		Standard_Integer FirstLocationNotInSet(const Handle_PCollection_HAsciiString &Set, const Standard_Integer FromIndex, const Standard_Integer ToIndex) const;
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_PCollection_HAsciiString &S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_PCollection_HAsciiString &S);
		%feature("autodoc", "1");
		Standard_Integer IntegerValue() const;
		%feature("autodoc", "1");
		Standard_Boolean IsDifferent(const Handle_PCollection_HAsciiString &other) const;
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Boolean IsGreater(const Handle_PCollection_HAsciiString &other) const;
		%feature("autodoc", "1");
		Standard_Boolean IsIntegerValue() const;
		%feature("autodoc", "1");
		Standard_Boolean IsLess(const Handle_PCollection_HAsciiString &other) const;
		%feature("autodoc", "1");
		Standard_Boolean IsRealValue() const;
		%feature("autodoc", "1");
		Standard_Boolean IsSameString(const Handle_PCollection_HAsciiString &S) const;
		%feature("autodoc", "1");
		Standard_Boolean IsSameString(const Handle_PCollection_HAsciiString &S, const Standard_Boolean CaseSensitive) const;
		%feature("autodoc", "1");
		void LeftAdjust();
		%feature("autodoc", "1");
		void LeftJustify(const Standard_Integer Width, const Standard_Character Filler);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Location(const Standard_Integer N, const Standard_Character C, const Standard_Integer FromIndex, const Standard_Integer ToIndex) const;
		%feature("autodoc", "1");
		Standard_Integer Location(const Handle_PCollection_HAsciiString &S, const Standard_Integer FromIndex, const Standard_Integer ToIndex) const;
		%feature("autodoc", "1");
		void Lowercase();
		%feature("autodoc", "1");
		void Prepend(const Handle_PCollection_HAsciiString &S);
		%feature("autodoc", "1");
		%extend{
			std::string PrintToString() {
			std::stringstream s;
			self->Print(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		Standard_Real RealValue() const;
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);
		%feature("autodoc", "1");
		void RemoveAll(const Standard_Character C, const Standard_Boolean CaseSensitive);
		%feature("autodoc", "1");
		void RightAdjust();
		%feature("autodoc", "1");
		void RightJustify(const Standard_Integer Width, const Standard_Character Filler);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Standard_Character C);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_PCollection_HAsciiString &S);
		%feature("autodoc", "1");
		Handle_PCollection_HAsciiString Split(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_PCollection_HAsciiString SubString(const Standard_Integer FromIndex, const Standard_Integer ToIndex) const;
		%feature("autodoc", "1");
		Handle_PCollection_HAsciiString Token(const char * separators=" \011", const Standard_Integer whichone=1) const;
		%feature("autodoc", "1");
		void Uppercase();
		%feature("autodoc", "1");
		Standard_Integer UsefullLength() const;
		%feature("autodoc", "1");
		Standard_Character Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		%extend{
			std::string ShallowDumpToString() {
			std::stringstream s;
			self->ShallowDump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		PCollection_HAsciiString();
		%feature("autodoc", "1");
		PCollection_HAsciiString(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		const DBC_VArrayOfCharacter & _CSFDB_GetPCollection_HAsciiStringData() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PCollection_HAsciiString {
	Handle_PCollection_HAsciiString GetHandle() {
	return *(Handle_PCollection_HAsciiString*) &$self;
	}
};
%extend PCollection_HAsciiString {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend PCollection_HAsciiString {
	~PCollection_HAsciiString() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PCollection_HAsciiString\n");}
	}
};


%nodefaultctor PCollection_CompareOfInteger;
class PCollection_CompareOfInteger : public PCollection_PrivCompareOfInteger {
	public:
		%feature("autodoc", "1");
		PCollection_CompareOfInteger();
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsLower(const Standard_Integer &Left, const Standard_Integer &Right) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsGreater(const Standard_Integer &Left, const Standard_Integer &Right) const;

};
%extend PCollection_CompareOfInteger {
	~PCollection_CompareOfInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PCollection_CompareOfInteger\n");}
	}
};


%nodefaultctor PCollection_PrivCompareOfReal;
class PCollection_PrivCompareOfReal {
	public:
		%feature("autodoc", "1");
		PCollection_PrivCompareOfReal();
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsLower(const Standard_Real &Left, const Standard_Real &Right) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsGreater(const Standard_Real &Left, const Standard_Real &Right) const;
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const Standard_Real &Left, const Standard_Real &Right) const;

};
%extend PCollection_PrivCompareOfReal {
	~PCollection_PrivCompareOfReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PCollection_PrivCompareOfReal\n");}
	}
};


%nodefaultctor PCollection_CompareOfReal;
class PCollection_CompareOfReal : public PCollection_PrivCompareOfReal {
	public:
		%feature("autodoc", "1");
		PCollection_CompareOfReal();

};
%extend PCollection_CompareOfReal {
	~PCollection_CompareOfReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PCollection_CompareOfReal\n");}
	}
};
