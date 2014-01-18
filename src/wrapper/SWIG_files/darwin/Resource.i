/*

Copyright 2008-2014 Thomas Paviot (tpaviot@gmail.com)

This file is part of pythonOCC.

pythonOCC is free software: you can redistribute it and/or modify
it under the terms of the GNU Lesser General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

pythonOCC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public License
along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.

*/


%{
#ifdef WNT
#pragma warning(disable : 4716)
#endif
%}

%module Resource
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include Resource_renames.i


%include Resource_required_python_modules.i


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
		Handle_Resource_DataMapNodeOfDataMapOfAsciiStringExtendedString & operator=(const Handle_Resource_DataMapNodeOfDataMapOfAsciiStringExtendedString &aHandle);
		%feature("autodoc", "1");
		Handle_Resource_DataMapNodeOfDataMapOfAsciiStringExtendedString & operator=(const Resource_DataMapNodeOfDataMapOfAsciiStringExtendedString *anItem);
		%feature("autodoc", "1");
		static		Handle_Resource_DataMapNodeOfDataMapOfAsciiStringExtendedString DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Resource_DataMapNodeOfDataMapOfAsciiStringExtendedString {
	Resource_DataMapNodeOfDataMapOfAsciiStringExtendedString* GetObject() {
	return (Resource_DataMapNodeOfDataMapOfAsciiStringExtendedString*)$self->Access();
	}
};
%feature("shadow") Handle_Resource_DataMapNodeOfDataMapOfAsciiStringExtendedString::~Handle_Resource_DataMapNodeOfDataMapOfAsciiStringExtendedString %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Resource_DataMapNodeOfDataMapOfAsciiStringExtendedString {
	void _kill_pointed() {
		delete $self;
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
		Handle_Resource_DataMapNodeOfDataMapOfAsciiStringAsciiString & operator=(const Handle_Resource_DataMapNodeOfDataMapOfAsciiStringAsciiString &aHandle);
		%feature("autodoc", "1");
		Handle_Resource_DataMapNodeOfDataMapOfAsciiStringAsciiString & operator=(const Resource_DataMapNodeOfDataMapOfAsciiStringAsciiString *anItem);
		%feature("autodoc", "1");
		static		Handle_Resource_DataMapNodeOfDataMapOfAsciiStringAsciiString DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Resource_DataMapNodeOfDataMapOfAsciiStringAsciiString {
	Resource_DataMapNodeOfDataMapOfAsciiStringAsciiString* GetObject() {
	return (Resource_DataMapNodeOfDataMapOfAsciiStringAsciiString*)$self->Access();
	}
};
%feature("shadow") Handle_Resource_DataMapNodeOfDataMapOfAsciiStringAsciiString::~Handle_Resource_DataMapNodeOfDataMapOfAsciiStringAsciiString %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Resource_DataMapNodeOfDataMapOfAsciiStringAsciiString {
	void _kill_pointed() {
		delete $self;
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
		Handle_Resource_Manager & operator=(const Handle_Resource_Manager &aHandle);
		%feature("autodoc", "1");
		Handle_Resource_Manager & operator=(const Resource_Manager *anItem);
		%feature("autodoc", "1");
		static		Handle_Resource_Manager DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Resource_Manager {
	Resource_Manager* GetObject() {
	return (Resource_Manager*)$self->Access();
	}
};
%feature("shadow") Handle_Resource_Manager::~Handle_Resource_Manager %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Resource_Manager {
	void _kill_pointed() {
		delete $self;
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
		Handle_Resource_NoSuchResource & operator=(const Handle_Resource_NoSuchResource &aHandle);
		%feature("autodoc", "1");
		Handle_Resource_NoSuchResource & operator=(const Resource_NoSuchResource *anItem);
		%feature("autodoc", "1");
		static		Handle_Resource_NoSuchResource DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Resource_NoSuchResource {
	Resource_NoSuchResource* GetObject() {
	return (Resource_NoSuchResource*)$self->Access();
	}
};
%feature("shadow") Handle_Resource_NoSuchResource::~Handle_Resource_NoSuchResource %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Resource_NoSuchResource {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Resource_DataMapIteratorOfDataMapOfAsciiStringExtendedString;
class Resource_DataMapIteratorOfDataMapOfAsciiStringExtendedString : public TCollection_BasicMapIterator {
	public:
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
%feature("shadow") Resource_DataMapIteratorOfDataMapOfAsciiStringExtendedString::~Resource_DataMapIteratorOfDataMapOfAsciiStringExtendedString %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Resource_DataMapIteratorOfDataMapOfAsciiStringExtendedString {
	void _kill_pointed() {
		delete $self;
	}
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
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Resource_DataMapNodeOfDataMapOfAsciiStringAsciiString::~Resource_DataMapNodeOfDataMapOfAsciiStringAsciiString %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Resource_DataMapNodeOfDataMapOfAsciiStringAsciiString {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Resource_DataMapOfAsciiStringAsciiString;
class Resource_DataMapOfAsciiStringAsciiString : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		Resource_DataMapOfAsciiStringAsciiString(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		Resource_DataMapOfAsciiStringAsciiString & Assign(const Resource_DataMapOfAsciiStringAsciiString &Other);
		%feature("autodoc", "1");
		Resource_DataMapOfAsciiStringAsciiString & operator=(const Resource_DataMapOfAsciiStringAsciiString &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
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
		%feature("autodoc", "1");
		Standard_Address Find1(const TCollection_AsciiString &K) const;
		%feature("autodoc", "1");
		Standard_Address ChangeFind1(const TCollection_AsciiString &K);

};
%feature("shadow") Resource_DataMapOfAsciiStringAsciiString::~Resource_DataMapOfAsciiStringAsciiString %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Resource_DataMapOfAsciiStringAsciiString {
	void _kill_pointed() {
		delete $self;
	}
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
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Resource_DataMapNodeOfDataMapOfAsciiStringExtendedString::~Resource_DataMapNodeOfDataMapOfAsciiStringExtendedString %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Resource_DataMapNodeOfDataMapOfAsciiStringExtendedString {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Resource_Unicode;
class Resource_Unicode {
	public:
		%feature("autodoc", "1");
		Resource_Unicode();
		%feature("autodoc", "1");
		static		void ConvertSJISToUnicode(const char * fromstr, TCollection_ExtendedString & tostr);
		%feature("autodoc", "1");
		static		void ConvertEUCToUnicode(const char * fromstr, TCollection_ExtendedString & tostr);
		%feature("autodoc", "1");
		static		void ConvertGBToUnicode(const char * fromstr, TCollection_ExtendedString & tostr);
		%feature("autodoc", "1");
		static		void ConvertANSIToUnicode(const char * fromstr, TCollection_ExtendedString & tostr);
		%feature("autodoc", "1");
		static		Standard_Boolean ConvertUnicodeToSJIS(const TCollection_ExtendedString &fromstr, Standard_PCharacter & tostr, const Standard_Integer maxsize);
		%feature("autodoc", "1");
		static		Standard_Boolean ConvertUnicodeToEUC(const TCollection_ExtendedString &fromstr, Standard_PCharacter & tostr, const Standard_Integer maxsize);
		%feature("autodoc", "1");
		static		Standard_Boolean ConvertUnicodeToGB(const TCollection_ExtendedString &fromstr, Standard_PCharacter & tostr, const Standard_Integer maxsize);
		%feature("autodoc", "1");
		static		Standard_Boolean ConvertUnicodeToANSI(const TCollection_ExtendedString &fromstr, Standard_PCharacter & tostr, const Standard_Integer maxsize);
		%feature("autodoc", "1");
		static		void SetFormat(const Resource_FormatType typecode);
		%feature("autodoc", "1");
		static		Resource_FormatType GetFormat();
		%feature("autodoc", "1");
		static		void ReadFormat();
		%feature("autodoc", "1");
		static		void ConvertFormatToUnicode(const char * fromstr, TCollection_ExtendedString & tostr);
		%feature("autodoc", "1");
		static		Standard_Boolean ConvertUnicodeToFormat(const TCollection_ExtendedString &fromstr, Standard_PCharacter & tostr, const Standard_Integer maxsize);

};
%feature("shadow") Resource_Unicode::~Resource_Unicode %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Resource_Unicode {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Resource_Manager;
class Resource_Manager : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Resource_Manager(const char * aName, const Standard_Boolean Verbose=false);
		%feature("autodoc", "1");
		Resource_Manager(const char * aName, TCollection_AsciiString & aDefaultsDirectory, TCollection_AsciiString & anUserDefaultsDirectory, const Standard_Boolean Verbose=false);
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
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Resource_Manager::~Resource_Manager %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Resource_Manager {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Resource_QuickSortOfArray1;
class Resource_QuickSortOfArray1 {
	public:
		%feature("autodoc", "1");
		Resource_QuickSortOfArray1();
		%feature("autodoc", "1");
		static		void Sort(TColStd_Array1OfAsciiString & TheArray, const Resource_LexicalCompare &Comp);

};
%feature("shadow") Resource_QuickSortOfArray1::~Resource_QuickSortOfArray1 %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Resource_QuickSortOfArray1 {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Resource_LexicalCompare;
class Resource_LexicalCompare {
	public:
		%feature("autodoc", "1");
		Resource_LexicalCompare();
		%feature("autodoc", "1");
		Standard_Boolean IsLower(const TCollection_AsciiString &Left, const TCollection_AsciiString &Right) const;

};
%feature("shadow") Resource_LexicalCompare::~Resource_LexicalCompare %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Resource_LexicalCompare {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Resource_NoSuchResource;
class Resource_NoSuchResource : public Standard_NoSuchObject {
	public:
		%feature("autodoc", "1");
		Resource_NoSuchResource();
		%feature("autodoc", "1");
		Resource_NoSuchResource(const char * AString);
		%feature("autodoc", "1");
		static		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		static		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		static		Handle_Resource_NoSuchResource NewInstance(const char * aMessage="");
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Resource_NoSuchResource {
	Handle_Resource_NoSuchResource GetHandle() {
	return *(Handle_Resource_NoSuchResource*) &$self;
	}
};
%extend Resource_NoSuchResource {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Resource_NoSuchResource::~Resource_NoSuchResource %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Resource_NoSuchResource {
	void _kill_pointed() {
		delete $self;
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
		Resource_DataMapOfAsciiStringExtendedString & operator=(const Resource_DataMapOfAsciiStringExtendedString &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
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
		%feature("autodoc", "1");
		Standard_Address Find1(const TCollection_AsciiString &K) const;
		%feature("autodoc", "1");
		Standard_Address ChangeFind1(const TCollection_AsciiString &K);

};
%feature("shadow") Resource_DataMapOfAsciiStringExtendedString::~Resource_DataMapOfAsciiStringExtendedString %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Resource_DataMapOfAsciiStringExtendedString {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Resource_DataMapIteratorOfDataMapOfAsciiStringAsciiString;
class Resource_DataMapIteratorOfDataMapOfAsciiStringAsciiString : public TCollection_BasicMapIterator {
	public:
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
%feature("shadow") Resource_DataMapIteratorOfDataMapOfAsciiStringAsciiString::~Resource_DataMapIteratorOfDataMapOfAsciiStringAsciiString %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Resource_DataMapIteratorOfDataMapOfAsciiStringAsciiString {
	void _kill_pointed() {
		delete $self;
	}
};
