/*

Copyright 2008-2011 Thomas Paviot (tpaviot@gmail.com)

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

$Revision$
$Date$
$Author$
$HeaderURL$

*/


%{
#ifdef WNT
#pragma warning(disable : 4716)
#endif
%}

%module TCollection
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include TCollection_renames.i


%include TCollection_required_python_modules.i


%include TCollection_dependencies.i


%include TCollection_headers.i

typedef TCollection_SeqNode * TCollection_SeqNodePtr;
typedef TCollection_MapNode * TCollection_MapNodePtr;
typedef TCollection_AVLBaseNode * TCollection_AVLBaseNodePtr;

enum TCollection_Side {
	TCollection_Left,
	TCollection_Right,
	};



%nodefaultctor Handle_TCollection_SeqNode;
class Handle_TCollection_SeqNode : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TCollection_SeqNode();
		%feature("autodoc", "1");
		Handle_TCollection_SeqNode(const Handle_TCollection_SeqNode &aHandle);
		%feature("autodoc", "1");
		Handle_TCollection_SeqNode(const TCollection_SeqNode *anItem);
		%feature("autodoc", "1");
		Handle_TCollection_SeqNode & operator=(const Handle_TCollection_SeqNode &aHandle);
		%feature("autodoc", "1");
		Handle_TCollection_SeqNode & operator=(const TCollection_SeqNode *anItem);
		%feature("autodoc", "1");
		static		Handle_TCollection_SeqNode DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TCollection_SeqNode {
	TCollection_SeqNode* GetObject() {
	return (TCollection_SeqNode*)$self->Access();
	}
};
%feature("shadow") Handle_TCollection_SeqNode::~Handle_TCollection_SeqNode %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TCollection_SeqNode {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TCollection_HExtendedString;
class Handle_TCollection_HExtendedString : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TCollection_HExtendedString();
		%feature("autodoc", "1");
		Handle_TCollection_HExtendedString(const Handle_TCollection_HExtendedString &aHandle);
		%feature("autodoc", "1");
		Handle_TCollection_HExtendedString(const TCollection_HExtendedString *anItem);
		%feature("autodoc", "1");
		Handle_TCollection_HExtendedString & operator=(const Handle_TCollection_HExtendedString &aHandle);
		%feature("autodoc", "1");
		Handle_TCollection_HExtendedString & operator=(const TCollection_HExtendedString *anItem);
		%feature("autodoc", "1");
		static		Handle_TCollection_HExtendedString DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TCollection_HExtendedString {
	TCollection_HExtendedString* GetObject() {
	return (TCollection_HExtendedString*)$self->Access();
	}
};
%feature("shadow") Handle_TCollection_HExtendedString::~Handle_TCollection_HExtendedString %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TCollection_HExtendedString {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TCollection_AVLBaseNode;
class Handle_TCollection_AVLBaseNode : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TCollection_AVLBaseNode();
		%feature("autodoc", "1");
		Handle_TCollection_AVLBaseNode(const Handle_TCollection_AVLBaseNode &aHandle);
		%feature("autodoc", "1");
		Handle_TCollection_AVLBaseNode(const TCollection_AVLBaseNode *anItem);
		%feature("autodoc", "1");
		Handle_TCollection_AVLBaseNode & operator=(const Handle_TCollection_AVLBaseNode &aHandle);
		%feature("autodoc", "1");
		Handle_TCollection_AVLBaseNode & operator=(const TCollection_AVLBaseNode *anItem);
		%feature("autodoc", "1");
		static		Handle_TCollection_AVLBaseNode DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TCollection_AVLBaseNode {
	TCollection_AVLBaseNode* GetObject() {
	return (TCollection_AVLBaseNode*)$self->Access();
	}
};
%feature("shadow") Handle_TCollection_AVLBaseNode::~Handle_TCollection_AVLBaseNode %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TCollection_AVLBaseNode {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TCollection_HAsciiString;
class Handle_TCollection_HAsciiString : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString();
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString(const Handle_TCollection_HAsciiString &aHandle);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString(const TCollection_HAsciiString *anItem);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString & operator=(const Handle_TCollection_HAsciiString &aHandle);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString & operator=(const TCollection_HAsciiString *anItem);
		%feature("autodoc", "1");
		static		Handle_TCollection_HAsciiString DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TCollection_HAsciiString {
	TCollection_HAsciiString* GetObject() {
	return (TCollection_HAsciiString*)$self->Access();
	}
};
%feature("shadow") Handle_TCollection_HAsciiString::~Handle_TCollection_HAsciiString %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TCollection_HAsciiString {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TCollection_MapNode;
class Handle_TCollection_MapNode : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TCollection_MapNode();
		%feature("autodoc", "1");
		Handle_TCollection_MapNode(const Handle_TCollection_MapNode &aHandle);
		%feature("autodoc", "1");
		Handle_TCollection_MapNode(const TCollection_MapNode *anItem);
		%feature("autodoc", "1");
		Handle_TCollection_MapNode & operator=(const Handle_TCollection_MapNode &aHandle);
		%feature("autodoc", "1");
		Handle_TCollection_MapNode & operator=(const TCollection_MapNode *anItem);
		%feature("autodoc", "1");
		static		Handle_TCollection_MapNode DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TCollection_MapNode {
	TCollection_MapNode* GetObject() {
	return (TCollection_MapNode*)$self->Access();
	}
};
%feature("shadow") Handle_TCollection_MapNode::~Handle_TCollection_MapNode %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TCollection_MapNode {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TCollection_AsciiString;
class TCollection_AsciiString {
	public:
		%feature("autodoc", "1");
		TCollection_AsciiString();
		%feature("autodoc", "1");
		TCollection_AsciiString(const char * message);
		%feature("autodoc", "1");
		TCollection_AsciiString(const char * message, const Standard_Integer aLen);
		%feature("autodoc", "1");
		TCollection_AsciiString(const Standard_Character aChar);
		%feature("autodoc", "1");
		TCollection_AsciiString(const Standard_Integer length, const Standard_Character filler);
		%feature("autodoc", "1");
		TCollection_AsciiString(const Standard_Integer value);
		%feature("autodoc", "1");
		TCollection_AsciiString(const Standard_Real value);
		%feature("autodoc", "1");
		TCollection_AsciiString(const TCollection_AsciiString &astring);
		%feature("autodoc", "1");
		TCollection_AsciiString(const TCollection_AsciiString &astring, const Standard_Character message);
		%feature("autodoc", "1");
		TCollection_AsciiString(const TCollection_AsciiString &astring, const char * message);
		%feature("autodoc", "1");
		TCollection_AsciiString(const TCollection_AsciiString &astring, const TCollection_AsciiString &message);
		%feature("autodoc", "1");
		TCollection_AsciiString(const TCollection_ExtendedString &astring, const Standard_Character replaceNonAscii=0);
		%feature("autodoc", "1");
		void AssignCat(const Standard_Character other);
		%feature("autodoc", "1");
		void operator+=(const Standard_Character other);
		%feature("autodoc", "1");
		void AssignCat(const Standard_Integer other);
		%feature("autodoc", "1");
		void operator+=(const Standard_Integer other);
		%feature("autodoc", "1");
		void AssignCat(const Standard_Real other);
		%feature("autodoc", "1");
		void operator+=(const Standard_Real other);
		%feature("autodoc", "1");
		void AssignCat(const char * other);
		%feature("autodoc", "1");
		void operator+=(const char * other);
		%feature("autodoc", "1");
		void AssignCat(const TCollection_AsciiString &other);
		%feature("autodoc", "1");
		void operator+=(const TCollection_AsciiString &other);
		%feature("autodoc", "1");
		void Capitalize();
		%feature("autodoc", "1");
		TCollection_AsciiString Cat(const Standard_Character other) const;
		%feature("autodoc", "1");
		TCollection_AsciiString operator+(const Standard_Character other) const;
		%feature("autodoc", "1");
		TCollection_AsciiString Cat(const Standard_Integer other) const;
		%feature("autodoc", "1");
		TCollection_AsciiString operator+(const Standard_Integer other) const;
		%feature("autodoc", "1");
		TCollection_AsciiString Cat(const Standard_Real other) const;
		%feature("autodoc", "1");
		TCollection_AsciiString operator+(const Standard_Real other) const;
		%feature("autodoc", "1");
		TCollection_AsciiString Cat(const char * other) const;
		%feature("autodoc", "1");
		TCollection_AsciiString operator+(const char * other) const;
		%feature("autodoc", "1");
		TCollection_AsciiString Cat(const TCollection_AsciiString &other) const;
		%feature("autodoc", "1");
		TCollection_AsciiString operator+(const TCollection_AsciiString &other) const;
		%feature("autodoc", "1");
		void Center(const Standard_Integer Width, const Standard_Character Filler);
		%feature("autodoc", "1");
		void ChangeAll(const Standard_Character aChar, const Standard_Character NewChar, const Standard_Boolean CaseSensitive=1);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Copy(const char * fromwhere);
		%feature("autodoc", "1");
		void operator=(const char * fromwhere);
		%feature("autodoc", "1");
		void Copy(const TCollection_AsciiString &fromwhere);
		%feature("autodoc", "1");
		void operator=(const TCollection_AsciiString &fromwhere);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Integer FirstLocationInSet(const TCollection_AsciiString &Set, const Standard_Integer FromIndex, const Standard_Integer ToIndex) const;
		%feature("autodoc", "1");
		Standard_Integer FirstLocationNotInSet(const TCollection_AsciiString &Set, const Standard_Integer FromIndex, const Standard_Integer ToIndex) const;
		%feature("autodoc", "1");
		void Insert(const Standard_Integer where, const Standard_Character what);
		%feature("autodoc", "1");
		void Insert(const Standard_Integer where, const char * what);
		%feature("autodoc", "1");
		void Insert(const Standard_Integer where, const TCollection_AsciiString &what);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const TCollection_AsciiString &other);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const TCollection_AsciiString &other);
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const char * other) const;
		%feature("autodoc", "1");
		Standard_Boolean operator==(const char * other) const;
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const TCollection_AsciiString &other) const;
		%feature("autodoc", "1");
		Standard_Boolean operator==(const TCollection_AsciiString &other) const;
		%feature("autodoc", "1");
		Standard_Boolean IsDifferent(const char * other) const;
		%feature("autodoc", "1");
		Standard_Boolean operator!=(const char * other) const;
		%feature("autodoc", "1");
		Standard_Boolean IsDifferent(const TCollection_AsciiString &other) const;
		%feature("autodoc", "1");
		Standard_Boolean operator!=(const TCollection_AsciiString &other) const;
		%feature("autodoc", "1");
		Standard_Boolean IsLess(const char * other) const;
		%feature("autodoc", "1");
		Standard_Boolean operator<(const char * other) const;
		%feature("autodoc", "1");
		Standard_Boolean IsLess(const TCollection_AsciiString &other) const;
		%feature("autodoc", "1");
		Standard_Boolean operator<(const TCollection_AsciiString &other) const;
		%feature("autodoc", "1");
		Standard_Boolean IsGreater(const char * other) const;
		%feature("autodoc", "1");
		Standard_Boolean operator>(const char * other) const;
		%feature("autodoc", "1");
		Standard_Boolean IsGreater(const TCollection_AsciiString &other) const;
		%feature("autodoc", "1");
		Standard_Boolean operator>(const TCollection_AsciiString &other) const;
		%feature("autodoc", "1");
		Standard_Integer IntegerValue() const;
		%feature("autodoc", "1");
		Standard_Boolean IsIntegerValue() const;
		%feature("autodoc", "1");
		Standard_Boolean IsRealValue() const;
		%feature("autodoc", "1");
		Standard_Boolean IsAscii() const;
		%feature("autodoc", "1");
		void LeftAdjust();
		%feature("autodoc", "1");
		void LeftJustify(const Standard_Integer Width, const Standard_Character Filler);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Location(const TCollection_AsciiString &other, const Standard_Integer FromIndex, const Standard_Integer ToIndex) const;
		%feature("autodoc", "1");
		Standard_Integer Location(const Standard_Integer N, const Standard_Character C, const Standard_Integer FromIndex, const Standard_Integer ToIndex) const;
		%feature("autodoc", "1");
		void LowerCase();
		%feature("autodoc", "1");
		void Prepend(const TCollection_AsciiString &other);
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string PrintToString() {
			std::stringstream s;
			self->Print(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			void ReadFromString(std::string src) {
			std::stringstream s(src);
			self->Read(s);}
		};
		%feature("autodoc", "1");
		Standard_Real RealValue() const;
		%feature("autodoc", "1");
		void RemoveAll(const Standard_Character C, const Standard_Boolean CaseSensitive);
		%feature("autodoc", "1");
		void RemoveAll(const Standard_Character what);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer where, const Standard_Integer ahowmany=1);
		%feature("autodoc", "1");
		void RightAdjust();
		%feature("autodoc", "1");
		void RightJustify(const Standard_Integer Width, const Standard_Character Filler);
		%feature("autodoc", "1");
		Standard_Integer Search(const char * what) const;
		%feature("autodoc", "1");
		Standard_Integer Search(const TCollection_AsciiString &what) const;
		%feature("autodoc", "1");
		Standard_Integer SearchFromEnd(const char * what) const;
		%feature("autodoc", "1");
		Standard_Integer SearchFromEnd(const TCollection_AsciiString &what) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer where, const Standard_Character what);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer where, const char * what);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer where, const TCollection_AsciiString &what);
		%feature("autodoc", "1");
		TCollection_AsciiString Split(const Standard_Integer where);
		%feature("autodoc", "1");
		TCollection_AsciiString SubString(const Standard_Integer FromIndex, const Standard_Integer ToIndex) const;
		%feature("autodoc", "1");
		char * ToCString() const;
		%feature("autodoc", "1");
		TCollection_AsciiString Token(const char * separators=" \011", const Standard_Integer whichone=1) const;
		%feature("autodoc", "1");
		void Trunc(const Standard_Integer ahowmany);
		%feature("autodoc", "1");
		void UpperCase();
		%feature("autodoc", "1");
		Standard_Integer UsefullLength() const;
		%feature("autodoc", "1");
		Standard_Character Value(const Standard_Integer where) const;
		%feature("autodoc", "1");
		static		Standard_Integer HashCode(const TCollection_AsciiString &astring, const Standard_Integer Upper);
		%feature("autodoc", "1");
		static		Standard_Boolean IsEqual(const TCollection_AsciiString &string1, const TCollection_AsciiString &string2);
		%feature("autodoc", "1");
		static		Standard_Boolean IsEqual(const TCollection_AsciiString &string1, const char * string2);
		%feature("autodoc", "1");
		static		Standard_Integer HASHCODE(const TCollection_AsciiString &astring, const Standard_Integer Upper);
		%feature("autodoc", "1");
		static		Standard_Boolean ISSIMILAR(const TCollection_AsciiString &string1, const TCollection_AsciiString &string2);

};
%feature("shadow") TCollection_AsciiString::~TCollection_AsciiString %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TCollection_AsciiString {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TCollection;
class TCollection {
	public:
		%feature("autodoc", "1");
		TCollection();
		%feature("autodoc", "1");
		static		Standard_Integer NextPrimeForMap(const Standard_Integer I);

};
%feature("shadow") TCollection::~TCollection %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TCollection {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TCollection_MapNode;
class TCollection_MapNode : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TCollection_MapNode(const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TCollection_MapNodePtr & Next() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TCollection_MapNode {
	Handle_TCollection_MapNode GetHandle() {
	return *(Handle_TCollection_MapNode*) &$self;
	}
};
%extend TCollection_MapNode {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") TCollection_MapNode::~TCollection_MapNode %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TCollection_MapNode {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TCollection_PrivCompareOfInteger;
class TCollection_PrivCompareOfInteger {
	public:
		%feature("autodoc", "1");
		TCollection_PrivCompareOfInteger();
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsLower(const Standard_Integer &Left, const Standard_Integer &Right) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsGreater(const Standard_Integer &Left, const Standard_Integer &Right) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsEqual(const Standard_Integer &Left, const Standard_Integer &Right) const;

};
%feature("shadow") TCollection_PrivCompareOfInteger::~TCollection_PrivCompareOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TCollection_PrivCompareOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TCollection_AVLBaseNode;
class TCollection_AVLBaseNode : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TCollection_AVLBaseNode(const TCollection_AVLBaseNodePtr &L, const TCollection_AVLBaseNodePtr &R);
		%feature("autodoc", "1");
		void SetChild(const TCollection_AVLBaseNodePtr &theNode, const TCollection_Side theSide);
		%feature("autodoc", "1");
		static		Standard_Integer Height(const TCollection_AVLBaseNodePtr &ANode);
		%feature("autodoc", "1");
		static		Standard_Integer RecursiveExtent(const TCollection_AVLBaseNodePtr &ANode);
		%feature("autodoc", "1");
		static		Standard_Integer RecursiveTotalExtent(const TCollection_AVLBaseNodePtr &ANode);
		%feature("autodoc", "1");
		TCollection_AVLBaseNodePtr & Right() const;
		%feature("autodoc", "1");
		TCollection_AVLBaseNodePtr & Left() const;
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetCount() {
				return (Standard_Integer) $self->Count();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetCount(Standard_Integer value ) {
				$self->Count()=value;
				}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TCollection_AVLBaseNode {
	Handle_TCollection_AVLBaseNode GetHandle() {
	return *(Handle_TCollection_AVLBaseNode*) &$self;
	}
};
%extend TCollection_AVLBaseNode {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") TCollection_AVLBaseNode::~TCollection_AVLBaseNode %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TCollection_AVLBaseNode {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TCollection_BasicMapIterator;
class TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		void Reset();
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();

};
%feature("shadow") TCollection_BasicMapIterator::~TCollection_BasicMapIterator %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TCollection_BasicMapIterator {
	void _kill_pointed() {
		delete $self;
	}
};
%extend TCollection_BasicMapIterator {
	TCollection_BasicMapIterator () {}
};


%nodefaultctor TCollection_PrivCompareOfReal;
class TCollection_PrivCompareOfReal {
	public:
		%feature("autodoc", "1");
		TCollection_PrivCompareOfReal();
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsLower(const Standard_Real &Left, const Standard_Real &Right) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsGreater(const Standard_Real &Left, const Standard_Real &Right) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsEqual(const Standard_Real &Left, const Standard_Real &Right) const;

};
%feature("shadow") TCollection_PrivCompareOfReal::~TCollection_PrivCompareOfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TCollection_PrivCompareOfReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TCollection_CompareOfReal;
class TCollection_CompareOfReal : public TCollection_PrivCompareOfReal {
	public:
		%feature("autodoc", "1");
		TCollection_CompareOfReal();

};
%feature("shadow") TCollection_CompareOfReal::~TCollection_CompareOfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TCollection_CompareOfReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TCollection_ExtendedString;
class TCollection_ExtendedString {
	public:
		%feature("autodoc", "1");
		TCollection_ExtendedString();
		%feature("autodoc", "1");
		TCollection_ExtendedString(const char * astring, const Standard_Boolean isMultiByte=0);
		%feature("autodoc", "1");
		TCollection_ExtendedString(const Standard_ExtString astring);
		%feature("autodoc", "1");
		TCollection_ExtendedString(const Standard_Character aChar);
		%feature("autodoc", "1");
		TCollection_ExtendedString(const Standard_ExtCharacter aChar);
		%feature("autodoc", "1");
		TCollection_ExtendedString(const Standard_Integer length, const Standard_ExtCharacter filler);
		%feature("autodoc", "1");
		TCollection_ExtendedString(const Standard_Integer value);
		%feature("autodoc", "1");
		TCollection_ExtendedString(const Standard_Real value);
		%feature("autodoc", "1");
		TCollection_ExtendedString(const TCollection_ExtendedString &astring);
		%feature("autodoc", "1");
		TCollection_ExtendedString(const TCollection_AsciiString &astring);
		%feature("autodoc", "1");
		void AssignCat(const TCollection_ExtendedString &other);
		%feature("autodoc", "1");
		void operator+=(const TCollection_ExtendedString &other);
		%feature("autodoc", "1");
		TCollection_ExtendedString Cat(const TCollection_ExtendedString &other) const;
		%feature("autodoc", "1");
		TCollection_ExtendedString operator+(const TCollection_ExtendedString &other) const;
		%feature("autodoc", "1");
		void ChangeAll(const Standard_ExtCharacter aChar, const Standard_ExtCharacter NewChar);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Copy(const TCollection_ExtendedString &fromwhere);
		%feature("autodoc", "1");
		void operator=(const TCollection_ExtendedString &fromwhere);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		void Insert(const Standard_Integer where, const Standard_ExtCharacter what);
		%feature("autodoc", "1");
		void Insert(const Standard_Integer where, const TCollection_ExtendedString &what);
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const Standard_ExtString other) const;
		%feature("autodoc", "1");
		Standard_Boolean operator==(const Standard_ExtString other) const;
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const TCollection_ExtendedString &other) const;
		%feature("autodoc", "1");
		Standard_Boolean operator==(const TCollection_ExtendedString &other) const;
		%feature("autodoc", "1");
		Standard_Boolean IsDifferent(const Standard_ExtString other) const;
		%feature("autodoc", "1");
		Standard_Boolean operator!=(const Standard_ExtString other) const;
		%feature("autodoc", "1");
		Standard_Boolean IsDifferent(const TCollection_ExtendedString &other) const;
		%feature("autodoc", "1");
		Standard_Boolean operator!=(const TCollection_ExtendedString &other) const;
		%feature("autodoc", "1");
		Standard_Boolean IsLess(const Standard_ExtString other) const;
		%feature("autodoc", "1");
		Standard_Boolean operator<(const Standard_ExtString other) const;
		%feature("autodoc", "1");
		Standard_Boolean IsLess(const TCollection_ExtendedString &other) const;
		%feature("autodoc", "1");
		Standard_Boolean operator<(const TCollection_ExtendedString &other) const;
		%feature("autodoc", "1");
		Standard_Boolean IsGreater(const Standard_ExtString other) const;
		%feature("autodoc", "1");
		Standard_Boolean operator>(const Standard_ExtString other) const;
		%feature("autodoc", "1");
		Standard_Boolean IsGreater(const TCollection_ExtendedString &other) const;
		%feature("autodoc", "1");
		Standard_Boolean operator>(const TCollection_ExtendedString &other) const;
		%feature("autodoc", "1");
		Standard_Boolean IsAscii() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string PrintToString() {
			std::stringstream s;
			self->Print(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		void RemoveAll(const Standard_ExtCharacter what);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer where, const Standard_Integer ahowmany=1);
		%feature("autodoc", "1");
		Standard_Integer Search(const TCollection_ExtendedString &what) const;
		%feature("autodoc", "1");
		Standard_Integer SearchFromEnd(const TCollection_ExtendedString &what) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer where, const Standard_ExtCharacter what);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer where, const TCollection_ExtendedString &what);
		%feature("autodoc", "1");
		TCollection_ExtendedString Split(const Standard_Integer where);
		%feature("autodoc", "1");
		TCollection_ExtendedString Token(const Standard_ExtString separators, const Standard_Integer whichone=1) const;
		%feature("autodoc", "1");
		Standard_ExtString ToExtString() const;
		%feature("autodoc", "1");
		void Trunc(const Standard_Integer ahowmany);
		%feature("autodoc", "1");
		Standard_ExtCharacter Value(const Standard_Integer where) const;
		%feature("autodoc", "1");
		static		Standard_Integer HashCode(const TCollection_ExtendedString &astring, const Standard_Integer Upper);
		%feature("autodoc", "1");
		static		Standard_Boolean IsEqual(const TCollection_ExtendedString &string1, const TCollection_ExtendedString &string2);
		%feature("autodoc", "1");
		Standard_Integer ToUTF8CString(Standard_PCharacter & theCString) const;
		%feature("autodoc", "1");
		Standard_Integer LengthOfCString() const;

};
%feature("shadow") TCollection_ExtendedString::~TCollection_ExtendedString %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TCollection_ExtendedString {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TCollection_Array2Descriptor;
class TCollection_Array2Descriptor {
	public:
		%feature("autodoc", "1");
		Standard_Integer UpperRow() const;
		%feature("autodoc", "1");
		Standard_Integer LowerRow() const;
		%feature("autodoc", "1");
		Standard_Integer UpperCol() const;
		%feature("autodoc", "1");
		Standard_Integer LowerCol() const;
		%feature("autodoc", "1");
		Standard_Address Address() const;

};
%feature("shadow") TCollection_Array2Descriptor::~TCollection_Array2Descriptor %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TCollection_Array2Descriptor {
	void _kill_pointed() {
		delete $self;
	}
};
%extend TCollection_Array2Descriptor {
	TCollection_Array2Descriptor () {}
};


%nodefaultctor TCollection_HExtendedString;
class TCollection_HExtendedString : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TCollection_HExtendedString();
		%feature("autodoc", "1");
		TCollection_HExtendedString(const char * message);
		%feature("autodoc", "1");
		TCollection_HExtendedString(const Standard_ExtString message);
		%feature("autodoc", "1");
		TCollection_HExtendedString(const Standard_ExtCharacter aChar);
		%feature("autodoc", "1");
		TCollection_HExtendedString(const Standard_Integer length, const Standard_ExtCharacter filler);
		%feature("autodoc", "1");
		TCollection_HExtendedString(const TCollection_ExtendedString &aString);
		%feature("autodoc", "1");
		TCollection_HExtendedString(const Handle_TCollection_HAsciiString &aString);
		%feature("autodoc", "1");
		TCollection_HExtendedString(const Handle_TCollection_HExtendedString &aString);
		%feature("autodoc", "1");
		void AssignCat(const Handle_TCollection_HExtendedString &other);
		%feature("autodoc", "1");
		Handle_TCollection_HExtendedString Cat(const Handle_TCollection_HExtendedString &other) const;
		%feature("autodoc", "1");
		void ChangeAll(const Standard_ExtCharacter aChar, const Standard_ExtCharacter NewChar);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Insert(const Standard_Integer where, const Standard_ExtCharacter what);
		%feature("autodoc", "1");
		void Insert(const Standard_Integer where, const Handle_TCollection_HExtendedString &what);
		%feature("autodoc", "1");
		Standard_Boolean IsLess(const Handle_TCollection_HExtendedString &other) const;
		%feature("autodoc", "1");
		Standard_Boolean IsGreater(const Handle_TCollection_HExtendedString &other) const;
		%feature("autodoc", "1");
		Standard_Boolean IsAscii() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void Remove(const Standard_Integer where, const Standard_Integer ahowmany=1);
		%feature("autodoc", "1");
		void RemoveAll(const Standard_ExtCharacter what);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer where, const Standard_ExtCharacter what);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer where, const Handle_TCollection_HExtendedString &what);
		%feature("autodoc", "1");
		Handle_TCollection_HExtendedString Split(const Standard_Integer where);
		%feature("autodoc", "1");
		Standard_Integer Search(const Handle_TCollection_HExtendedString &what) const;
		%feature("autodoc", "1");
		Standard_Integer SearchFromEnd(const Handle_TCollection_HExtendedString &what) const;
		%feature("autodoc", "1");
		Standard_ExtString const ToExtString() const;
		%feature("autodoc", "1");
		Handle_TCollection_HExtendedString Token(const Standard_ExtString separators, const Standard_Integer whichone=1) const;
		%feature("autodoc", "1");
		void Trunc(const Standard_Integer ahowmany);
		%feature("autodoc", "1");
		Standard_ExtCharacter Value(const Standard_Integer where) const;
		%feature("autodoc", "1");
		TCollection_ExtendedString String() const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string PrintToString() {
			std::stringstream s;
			self->Print(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		Handle_TCollection_HExtendedString ShallowCopy() const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string ShallowDumpToString() {
			std::stringstream s;
			self->ShallowDump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		Standard_Boolean IsSameState(const Handle_TCollection_HExtendedString &other) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TCollection_HExtendedString {
	Handle_TCollection_HExtendedString GetHandle() {
	return *(Handle_TCollection_HExtendedString*) &$self;
	}
};
%extend TCollection_HExtendedString {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") TCollection_HExtendedString::~TCollection_HExtendedString %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TCollection_HExtendedString {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TCollection_BaseSequence;
class TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer I, const Standard_Integer J);

};
%feature("shadow") TCollection_BaseSequence::~TCollection_BaseSequence %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TCollection_BaseSequence {
	void _kill_pointed() {
		delete $self;
	}
};
%extend TCollection_BaseSequence {
	TCollection_BaseSequence () {}
};


%nodefaultctor TCollection_SeqNode;
class TCollection_SeqNode : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TCollection_SeqNode(const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		TCollection_SeqNodePtr & Next() const;
		%feature("autodoc", "1");
		TCollection_SeqNodePtr & Previous() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TCollection_SeqNode {
	Handle_TCollection_SeqNode GetHandle() {
	return *(Handle_TCollection_SeqNode*) &$self;
	}
};
%extend TCollection_SeqNode {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") TCollection_SeqNode::~TCollection_SeqNode %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TCollection_SeqNode {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TCollection_CompareOfInteger;
class TCollection_CompareOfInteger : public TCollection_PrivCompareOfInteger {
	public:
		%feature("autodoc", "1");
		TCollection_CompareOfInteger();
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsLower(const Standard_Integer &Left, const Standard_Integer &Right) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsGreater(const Standard_Integer &Left, const Standard_Integer &Right) const;

};
%feature("shadow") TCollection_CompareOfInteger::~TCollection_CompareOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TCollection_CompareOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TCollection_Array1Descriptor;
class TCollection_Array1Descriptor {
	public:
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Address Address() const;

};
%feature("shadow") TCollection_Array1Descriptor::~TCollection_Array1Descriptor %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TCollection_Array1Descriptor {
	void _kill_pointed() {
		delete $self;
	}
};
%extend TCollection_Array1Descriptor {
	TCollection_Array1Descriptor () {}
};


%nodefaultctor TCollection_BasicMap;
class TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		Standard_Integer NbBuckets() const;
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string StatisticsToString() {
			std::stringstream s;
			self->Statistics(s);
			return s.str();}
		};

};
%feature("shadow") TCollection_BasicMap::~TCollection_BasicMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TCollection_BasicMap {
	void _kill_pointed() {
		delete $self;
	}
};
%extend TCollection_BasicMap {
	TCollection_BasicMap () {}
};


%nodefaultctor TCollection_HAsciiString;
class TCollection_HAsciiString : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TCollection_HAsciiString();
		%feature("autodoc", "1");
		TCollection_HAsciiString(const char * message);
		%feature("autodoc", "1");
		TCollection_HAsciiString(const Standard_Character aChar);
		%feature("autodoc", "1");
		TCollection_HAsciiString(const Standard_Integer length, const Standard_Character filler);
		%feature("autodoc", "1");
		TCollection_HAsciiString(const Standard_Integer value);
		%feature("autodoc", "1");
		TCollection_HAsciiString(const Standard_Real value);
		%feature("autodoc", "1");
		TCollection_HAsciiString(const TCollection_AsciiString &aString);
		%feature("autodoc", "1");
		TCollection_HAsciiString(const Handle_TCollection_HAsciiString &aString);
		%feature("autodoc", "1");
		TCollection_HAsciiString(const Handle_TCollection_HExtendedString &aString, const Standard_Character replaceNonAscii);
		%feature("autodoc", "1");
		void AssignCat(const char * other);
		%feature("autodoc", "1");
		void AssignCat(const Handle_TCollection_HAsciiString &other);
		%feature("autodoc", "1");
		void Capitalize();
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Cat(const char * other) const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Cat(const Handle_TCollection_HAsciiString &other) const;
		%feature("autodoc", "1");
		void Center(const Standard_Integer Width, const Standard_Character Filler);
		%feature("autodoc", "1");
		void ChangeAll(const Standard_Character aChar, const Standard_Character NewChar, const Standard_Boolean CaseSensitive=1);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer FirstLocationInSet(const Handle_TCollection_HAsciiString &Set, const Standard_Integer FromIndex, const Standard_Integer ToIndex) const;
		%feature("autodoc", "1");
		Standard_Integer FirstLocationNotInSet(const Handle_TCollection_HAsciiString &Set, const Standard_Integer FromIndex, const Standard_Integer ToIndex) const;
		%feature("autodoc", "1");
		void Insert(const Standard_Integer where, const Standard_Character what);
		%feature("autodoc", "1");
		void Insert(const Standard_Integer where, const char * what);
		%feature("autodoc", "1");
		void Insert(const Standard_Integer where, const Handle_TCollection_HAsciiString &what);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_TCollection_HAsciiString &other);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_TCollection_HAsciiString &other);
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Boolean IsLess(const Handle_TCollection_HAsciiString &other) const;
		%feature("autodoc", "1");
		Standard_Boolean IsGreater(const Handle_TCollection_HAsciiString &other) const;
		%feature("autodoc", "1");
		Standard_Integer IntegerValue() const;
		%feature("autodoc", "1");
		Standard_Boolean IsIntegerValue() const;
		%feature("autodoc", "1");
		Standard_Boolean IsRealValue() const;
		%feature("autodoc", "1");
		Standard_Boolean IsAscii() const;
		%feature("autodoc", "1");
		Standard_Boolean IsDifferent(const Handle_TCollection_HAsciiString &S) const;
		%feature("autodoc", "1");
		Standard_Boolean IsSameString(const Handle_TCollection_HAsciiString &S) const;
		%feature("autodoc", "1");
		Standard_Boolean IsSameString(const Handle_TCollection_HAsciiString &S, const Standard_Boolean CaseSensitive) const;
		%feature("autodoc", "1");
		void LeftAdjust();
		%feature("autodoc", "1");
		void LeftJustify(const Standard_Integer Width, const Standard_Character Filler);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Location(const Handle_TCollection_HAsciiString &other, const Standard_Integer FromIndex, const Standard_Integer ToIndex) const;
		%feature("autodoc", "1");
		Standard_Integer Location(const Standard_Integer N, const Standard_Character C, const Standard_Integer FromIndex, const Standard_Integer ToIndex) const;
		%feature("autodoc", "1");
		void LowerCase();
		%feature("autodoc", "1");
		void Prepend(const Handle_TCollection_HAsciiString &other);
		%feature("autodoc", "1");
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
		void RemoveAll(const Standard_Character C, const Standard_Boolean CaseSensitive);
		%feature("autodoc", "1");
		void RemoveAll(const Standard_Character what);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer where, const Standard_Integer ahowmany=1);
		%feature("autodoc", "1");
		void RightAdjust();
		%feature("autodoc", "1");
		void RightJustify(const Standard_Integer Width, const Standard_Character Filler);
		%feature("autodoc", "1");
		Standard_Integer Search(const char * what) const;
		%feature("autodoc", "1");
		Standard_Integer Search(const Handle_TCollection_HAsciiString &what) const;
		%feature("autodoc", "1");
		Standard_Integer SearchFromEnd(const char * what) const;
		%feature("autodoc", "1");
		Standard_Integer SearchFromEnd(const Handle_TCollection_HAsciiString &what) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer where, const Standard_Character what);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer where, const char * what);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer where, const Handle_TCollection_HAsciiString &what);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Split(const Standard_Integer where);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString SubString(const Standard_Integer FromIndex, const Standard_Integer ToIndex) const;
		%feature("autodoc", "1");
		char * ToCString() const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Token(const char * separators=" \011", const Standard_Integer whichone=1) const;
		%feature("autodoc", "1");
		void Trunc(const Standard_Integer ahowmany);
		%feature("autodoc", "1");
		void UpperCase();
		%feature("autodoc", "1");
		Standard_Integer UsefullLength() const;
		%feature("autodoc", "1");
		Standard_Character Value(const Standard_Integer where) const;
		%feature("autodoc", "1");
		const TCollection_AsciiString & String() const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString ShallowCopy() const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string ShallowDumpToString() {
			std::stringstream s;
			self->ShallowDump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		Standard_Boolean IsSameState(const Handle_TCollection_HAsciiString &other) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TCollection_HAsciiString {
	Handle_TCollection_HAsciiString GetHandle() {
	return *(Handle_TCollection_HAsciiString*) &$self;
	}
};
%extend TCollection_HAsciiString {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") TCollection_HAsciiString::~TCollection_HAsciiString %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TCollection_HAsciiString {
	void _kill_pointed() {
		delete $self;
	}
};
