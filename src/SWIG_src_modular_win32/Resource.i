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
along with Foobar.  If not, see <http://www.gnu.org/licenses/>.

*/
%module Resource

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


%include Resource_dependencies.i


%include Resource_headers.i


enum Resource_FormatType {
	Resource_SJIS,
	Resource_EUC,
	Resource_ANSI,
	Resource_GB,
	};



%nodefaultctor Handle_Resource_DataMapNodeOfDataMapOfAsciiStringExtendedString;
class Handle_Resource_DataMapNodeOfDataMapOfAsciiStringExtendedString : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_Resource_DataMapNodeOfDataMapOfAsciiStringExtendedString();
		%feature("autodoc", "1");
		Handle_Resource_DataMapNodeOfDataMapOfAsciiStringExtendedString(const Handle_Resource_DataMapNodeOfDataMapOfAsciiStringExtendedString &aHandle);
		%feature("autodoc", "1");
		Handle_Resource_DataMapNodeOfDataMapOfAsciiStringExtendedString(const Resource_DataMapNodeOfDataMapOfAsciiStringExtendedString *anItem);
		%feature("autodoc", "1");
		Handle_Resource_DataMapNodeOfDataMapOfAsciiStringExtendedString const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Resource_DataMapNodeOfDataMapOfAsciiStringExtendedString {
	Resource_DataMapNodeOfDataMapOfAsciiStringExtendedString* GetObject() {
	return (Resource_DataMapNodeOfDataMapOfAsciiStringExtendedString*)$self->Access();
	}
};
%extend Handle_Resource_DataMapNodeOfDataMapOfAsciiStringExtendedString {
	~Handle_Resource_DataMapNodeOfDataMapOfAsciiStringExtendedString() {
	printf("Call custom destructor for instance of Handle_Resource_DataMapNodeOfDataMapOfAsciiStringExtendedString\n");
	}
};

%nodefaultctor Handle_Resource_DataMapNodeOfDataMapOfAsciiStringAsciiString;
class Handle_Resource_DataMapNodeOfDataMapOfAsciiStringAsciiString : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_Resource_DataMapNodeOfDataMapOfAsciiStringAsciiString();
		%feature("autodoc", "1");
		Handle_Resource_DataMapNodeOfDataMapOfAsciiStringAsciiString(const Handle_Resource_DataMapNodeOfDataMapOfAsciiStringAsciiString &aHandle);
		%feature("autodoc", "1");
		Handle_Resource_DataMapNodeOfDataMapOfAsciiStringAsciiString(const Resource_DataMapNodeOfDataMapOfAsciiStringAsciiString *anItem);
		%feature("autodoc", "1");
		Handle_Resource_DataMapNodeOfDataMapOfAsciiStringAsciiString const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Resource_DataMapNodeOfDataMapOfAsciiStringAsciiString {
	Resource_DataMapNodeOfDataMapOfAsciiStringAsciiString* GetObject() {
	return (Resource_DataMapNodeOfDataMapOfAsciiStringAsciiString*)$self->Access();
	}
};
%extend Handle_Resource_DataMapNodeOfDataMapOfAsciiStringAsciiString {
	~Handle_Resource_DataMapNodeOfDataMapOfAsciiStringAsciiString() {
	printf("Call custom destructor for instance of Handle_Resource_DataMapNodeOfDataMapOfAsciiStringAsciiString\n");
	}
};

%nodefaultctor Handle_Resource_Manager;
class Handle_Resource_Manager : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Resource_Manager();
		%feature("autodoc", "1");
		Handle_Resource_Manager(const Handle_Resource_Manager &aHandle);
		%feature("autodoc", "1");
		Handle_Resource_Manager(const Resource_Manager *anItem);
		%feature("autodoc", "1");
		Handle_Resource_Manager const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Resource_Manager {
	Resource_Manager* GetObject() {
	return (Resource_Manager*)$self->Access();
	}
};
%extend Handle_Resource_Manager {
	~Handle_Resource_Manager() {
	printf("Call custom destructor for instance of Handle_Resource_Manager\n");
	}
};

%nodefaultctor Handle_Resource_NoSuchResource;
class Handle_Resource_NoSuchResource : public Handle_Standard_NoSuchObject {
	public:
		%feature("autodoc", "1");
		Handle_Resource_NoSuchResource();
		%feature("autodoc", "1");
		Handle_Resource_NoSuchResource(const Handle_Resource_NoSuchResource &aHandle);
		%feature("autodoc", "1");
		Handle_Resource_NoSuchResource(const Resource_NoSuchResource *anItem);
		%feature("autodoc", "1");
		Handle_Resource_NoSuchResource const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Resource_NoSuchResource {
	Resource_NoSuchResource* GetObject() {
	return (Resource_NoSuchResource*)$self->Access();
	}
};
%extend Handle_Resource_NoSuchResource {
	~Handle_Resource_NoSuchResource() {
	printf("Call custom destructor for instance of Handle_Resource_NoSuchResource\n");
	}
};

%nodefaultctor Resource_Array1OfAsciiString;
class Resource_Array1OfAsciiString {
	public:
		%feature("autodoc", "1");
		Resource_Array1OfAsciiString(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		Resource_Array1OfAsciiString(const TCollection_AsciiString &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const TCollection_AsciiString &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		~Resource_Array1OfAsciiString();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const Resource_Array1OfAsciiString & Assign(const Resource_Array1OfAsciiString &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const TCollection_AsciiString &Value);
		%feature("autodoc", "1");
		const TCollection_AsciiString & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const TCollection_AsciiString & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		TCollection_AsciiString & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		TCollection_AsciiString & operator()(const Standard_Integer Index);

};

%nodefaultctor Resource_DataMapOfAsciiStringAsciiString;
class Resource_DataMapOfAsciiStringAsciiString : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		Resource_DataMapOfAsciiStringAsciiString(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		Resource_DataMapOfAsciiStringAsciiString & Assign(const Resource_DataMapOfAsciiStringAsciiString &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~Resource_DataMapOfAsciiStringAsciiString();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TCollection_AsciiString &K, const TCollection_AsciiString &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TCollection_AsciiString &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TCollection_AsciiString &K);
		%feature("autodoc", "1");
		const TCollection_AsciiString & Find(const TCollection_AsciiString &K) const;
		%feature("autodoc", "1");
		const TCollection_AsciiString & operator()(const TCollection_AsciiString &K) const;
		%feature("autodoc", "1");
		TCollection_AsciiString & ChangeFind(const TCollection_AsciiString &K);
		%feature("autodoc", "1");
		TCollection_AsciiString & operator()(const TCollection_AsciiString &K);

};

%nodefaultctor Resource_DataMapIteratorOfDataMapOfAsciiStringExtendedString;
class Resource_DataMapIteratorOfDataMapOfAsciiStringExtendedString : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		~Resource_DataMapIteratorOfDataMapOfAsciiStringExtendedString();
		%feature("autodoc", "1");
		Resource_DataMapIteratorOfDataMapOfAsciiStringExtendedString();
		%feature("autodoc", "1");
		Resource_DataMapIteratorOfDataMapOfAsciiStringExtendedString(const Resource_DataMapOfAsciiStringExtendedString &aMap);
		%feature("autodoc", "1");
		void Initialize(const Resource_DataMapOfAsciiStringExtendedString &aMap);
		%feature("autodoc", "1");
		const TCollection_AsciiString & Key() const;
		%feature("autodoc", "1");
		const TCollection_ExtendedString & Value() const;

};

%nodefaultctor Resource_DataMapNodeOfDataMapOfAsciiStringAsciiString;
class Resource_DataMapNodeOfDataMapOfAsciiStringAsciiString : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Resource_DataMapNodeOfDataMapOfAsciiStringAsciiString(const TCollection_AsciiString &K, const TCollection_AsciiString &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TCollection_AsciiString & Key() const;
		%feature("autodoc", "1");
		TCollection_AsciiString & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Resource_DataMapNodeOfDataMapOfAsciiStringAsciiString {
	Handle_Resource_DataMapNodeOfDataMapOfAsciiStringAsciiString GetHandle() {
	return *(Handle_Resource_DataMapNodeOfDataMapOfAsciiStringAsciiString*) &$self;
	}
};
%extend Resource_DataMapNodeOfDataMapOfAsciiStringAsciiString {
	~Resource_DataMapNodeOfDataMapOfAsciiStringAsciiString() {
	printf("Call custom destructor for instance of Resource_DataMapNodeOfDataMapOfAsciiStringAsciiString\n");
	}
};

%nodefaultctor Resource_Manager;
class Resource_Manager : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Resource_Manager(const char * aName, const Standard_Boolean Verbose=0);
		%feature("autodoc", "1");
		Resource_Manager(const char * aName, TCollection_AsciiString & aDefaultsDirectory, TCollection_AsciiString & anUserDefaultsDirectory, const Standard_Boolean Verbose=0);
		%feature("autodoc", "1");
		Standard_Boolean Save() const;
		%feature("autodoc", "1");
		Standard_Boolean Find(const char * aResource) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer Integer(const char * aResourceName) const;
		%feature("autodoc", "1");
		virtual		Standard_Real Real(const char * aResourceName) const;
		%feature("autodoc", "1");
		virtual		char * Value(const char * aResourceName) const;
		%feature("autodoc", "1");
		virtual		Standard_ExtString ExtValue(const char * aResourceName);
		%feature("autodoc", "1");
		virtual		void SetResource(const char * aResourceName, const Standard_Integer aValue);
		%feature("autodoc", "1");
		virtual		void SetResource(const char * aResourceName, const Standard_Real aValue);
		%feature("autodoc", "1");
		virtual		void SetResource(const char * aResourceName, const char * aValue);
		%feature("autodoc", "1");
		virtual		void SetResource(const char * aResourceName, const Standard_ExtString aValue);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Resource_Manager {
	Handle_Resource_Manager GetHandle() {
	return *(Handle_Resource_Manager*) &$self;
	}
};
%extend Resource_Manager {
	~Resource_Manager() {
	printf("Call custom destructor for instance of Resource_Manager\n");
	}
};

%nodefaultctor Resource_QuickSortOfArray1;
class Resource_QuickSortOfArray1 {
	public:
		%feature("autodoc", "1");
		~Resource_QuickSortOfArray1();
		%feature("autodoc", "1");
		Resource_QuickSortOfArray1();
		%feature("autodoc", "1");
		void Sort(Resource_Array1OfAsciiString & TheArray, const Resource_LexicalCompare &Comp);

};

%nodefaultctor Resource_LexicalCompare;
class Resource_LexicalCompare {
	public:
		%feature("autodoc", "1");
		~Resource_LexicalCompare();
		%feature("autodoc", "1");
		Resource_LexicalCompare();
		%feature("autodoc", "1");
		Standard_Boolean IsLower(const TCollection_AsciiString &Left, const TCollection_AsciiString &Right) const;

};

%nodefaultctor Resource_NoSuchResource;
class Resource_NoSuchResource : public Standard_NoSuchObject {
	public:
		%feature("autodoc", "1");
		Resource_NoSuchResource();
		%feature("autodoc", "1");
		Resource_NoSuchResource(const char * AString);
		%feature("autodoc", "1");
		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		Handle_Resource_NoSuchResource NewInstance(const char * aMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Resource_NoSuchResource {
	Handle_Resource_NoSuchResource GetHandle() {
	return *(Handle_Resource_NoSuchResource*) &$self;
	}
};
%extend Resource_NoSuchResource {
	~Resource_NoSuchResource() {
	printf("Call custom destructor for instance of Resource_NoSuchResource\n");
	}
};

%nodefaultctor Resource_DataMapOfAsciiStringExtendedString;
class Resource_DataMapOfAsciiStringExtendedString : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		Resource_DataMapOfAsciiStringExtendedString(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		Resource_DataMapOfAsciiStringExtendedString & Assign(const Resource_DataMapOfAsciiStringExtendedString &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~Resource_DataMapOfAsciiStringExtendedString();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TCollection_AsciiString &K, const TCollection_ExtendedString &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TCollection_AsciiString &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TCollection_AsciiString &K);
		%feature("autodoc", "1");
		const TCollection_ExtendedString & Find(const TCollection_AsciiString &K) const;
		%feature("autodoc", "1");
		const TCollection_ExtendedString & operator()(const TCollection_AsciiString &K) const;
		%feature("autodoc", "1");
		TCollection_ExtendedString & ChangeFind(const TCollection_AsciiString &K);
		%feature("autodoc", "1");
		TCollection_ExtendedString & operator()(const TCollection_AsciiString &K);

};

%nodefaultctor Resource_Unicode;
class Resource_Unicode {
	public:
		%feature("autodoc", "1");
		~Resource_Unicode();
		%feature("autodoc", "1");
		Resource_Unicode();
		%feature("autodoc", "1");
		void ConvertSJISToUnicode(const char * fromstr, TCollection_ExtendedString & tostr);
		%feature("autodoc", "1");
		void ConvertEUCToUnicode(const char * fromstr, TCollection_ExtendedString & tostr);
		%feature("autodoc", "1");
		void ConvertGBToUnicode(const char * fromstr, TCollection_ExtendedString & tostr);
		%feature("autodoc", "1");
		void ConvertANSIToUnicode(const char * fromstr, TCollection_ExtendedString & tostr);
		%feature("autodoc", "1");
		Standard_Boolean ConvertUnicodeToSJIS(const TCollection_ExtendedString &fromstr, Standard_PCharacter & tostr, const Standard_Integer maxsize);
		%feature("autodoc", "1");
		Standard_Boolean ConvertUnicodeToEUC(const TCollection_ExtendedString &fromstr, Standard_PCharacter & tostr, const Standard_Integer maxsize);
		%feature("autodoc", "1");
		Standard_Boolean ConvertUnicodeToGB(const TCollection_ExtendedString &fromstr, Standard_PCharacter & tostr, const Standard_Integer maxsize);
		%feature("autodoc", "1");
		Standard_Boolean ConvertUnicodeToANSI(const TCollection_ExtendedString &fromstr, Standard_PCharacter & tostr, const Standard_Integer maxsize);
		%feature("autodoc", "1");
		void SetFormat(const Resource_FormatType typecode);
		%feature("autodoc", "1");
		Resource_FormatType GetFormat();
		%feature("autodoc", "1");
		void ReadFormat();
		%feature("autodoc", "1");
		void ConvertFormatToUnicode(const char * fromstr, TCollection_ExtendedString & tostr);
		%feature("autodoc", "1");
		Standard_Boolean ConvertUnicodeToFormat(const TCollection_ExtendedString &fromstr, Standard_PCharacter & tostr, const Standard_Integer maxsize);

};

%nodefaultctor Resource_DataMapNodeOfDataMapOfAsciiStringExtendedString;
class Resource_DataMapNodeOfDataMapOfAsciiStringExtendedString : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Resource_DataMapNodeOfDataMapOfAsciiStringExtendedString(const TCollection_AsciiString &K, const TCollection_ExtendedString &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TCollection_AsciiString & Key() const;
		%feature("autodoc", "1");
		TCollection_ExtendedString & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Resource_DataMapNodeOfDataMapOfAsciiStringExtendedString {
	Handle_Resource_DataMapNodeOfDataMapOfAsciiStringExtendedString GetHandle() {
	return *(Handle_Resource_DataMapNodeOfDataMapOfAsciiStringExtendedString*) &$self;
	}
};
%extend Resource_DataMapNodeOfDataMapOfAsciiStringExtendedString {
	~Resource_DataMapNodeOfDataMapOfAsciiStringExtendedString() {
	printf("Call custom destructor for instance of Resource_DataMapNodeOfDataMapOfAsciiStringExtendedString\n");
	}
};

%nodefaultctor Resource_DataMapIteratorOfDataMapOfAsciiStringAsciiString;
class Resource_DataMapIteratorOfDataMapOfAsciiStringAsciiString : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		~Resource_DataMapIteratorOfDataMapOfAsciiStringAsciiString();
		%feature("autodoc", "1");
		Resource_DataMapIteratorOfDataMapOfAsciiStringAsciiString();
		%feature("autodoc", "1");
		Resource_DataMapIteratorOfDataMapOfAsciiStringAsciiString(const Resource_DataMapOfAsciiStringAsciiString &aMap);
		%feature("autodoc", "1");
		void Initialize(const Resource_DataMapOfAsciiStringAsciiString &aMap);
		%feature("autodoc", "1");
		const TCollection_AsciiString & Key() const;
		%feature("autodoc", "1");
		const TCollection_AsciiString & Value() const;

};