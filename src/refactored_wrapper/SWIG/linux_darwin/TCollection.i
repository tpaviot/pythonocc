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
 
%module TCollection
       
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i


%pythoncode {
import GarbageCollector
};
%include TCollection_dependencies.i

enum TCollection_Side {
TCollection_Left,
    TCollection_Right
};

   
%nodefaultctor Handle_TCollection_AVLBaseNode;

class Handle_TCollection_AVLBaseNode : public Handle_MMgt_TShared {
    public:

        %feature("autodoc", "1");
        Handle_TCollection_AVLBaseNode();
        %feature("autodoc", "1");
        Handle_TCollection_AVLBaseNode(Handle_TCollection_AVLBaseNode const & aHandle);
        %feature("autodoc", "1");
        Handle_TCollection_AVLBaseNode(TCollection_AVLBaseNode const * anItem);
        %feature("autodoc", "1");
        Handle_TCollection_AVLBaseNode const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TCollection_AVLBaseNode::~Handle_TCollection_AVLBaseNode {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TCollection_AVLBaseNode {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TCollection_AVLBaseNode {
    TCollection_AVLBaseNode* GetObject() {
        return (TCollection_AVLBaseNode*)$self->Access();
    }
};
   
%nodefaultctor Handle_TCollection_HAsciiString;

class Handle_TCollection_HAsciiString : public Handle_MMgt_TShared {
    public:

        %feature("autodoc", "1");
        Handle_TCollection_HAsciiString();
        %feature("autodoc", "1");
        Handle_TCollection_HAsciiString(Handle_TCollection_HAsciiString const & aHandle);
        %feature("autodoc", "1");
        Handle_TCollection_HAsciiString(TCollection_HAsciiString const * anItem);
        %feature("autodoc", "1");
        Handle_TCollection_HAsciiString const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TCollection_HAsciiString::~Handle_TCollection_HAsciiString {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TCollection_HAsciiString {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TCollection_HAsciiString {
    TCollection_HAsciiString* GetObject() {
        return (TCollection_HAsciiString*)$self->Access();
    }
};
   
%nodefaultctor Handle_TCollection_HExtendedString;

class Handle_TCollection_HExtendedString : public Handle_MMgt_TShared {
    public:

        %feature("autodoc", "1");
        Handle_TCollection_HExtendedString();
        %feature("autodoc", "1");
        Handle_TCollection_HExtendedString(Handle_TCollection_HExtendedString const & aHandle);
        %feature("autodoc", "1");
        Handle_TCollection_HExtendedString(TCollection_HExtendedString const * anItem);
        %feature("autodoc", "1");
        Handle_TCollection_HExtendedString const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TCollection_HExtendedString::~Handle_TCollection_HExtendedString {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TCollection_HExtendedString {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TCollection_HExtendedString {
    TCollection_HExtendedString* GetObject() {
        return (TCollection_HExtendedString*)$self->Access();
    }
};
   
%nodefaultctor Handle_TCollection_MapNode;

class Handle_TCollection_MapNode : public Handle_MMgt_TShared {
    public:

        %feature("autodoc", "1");
        Handle_TCollection_MapNode();
        %feature("autodoc", "1");
        Handle_TCollection_MapNode(Handle_TCollection_MapNode const & aHandle);
        %feature("autodoc", "1");
        Handle_TCollection_MapNode(TCollection_MapNode const * anItem);
        %feature("autodoc", "1");
        Handle_TCollection_MapNode const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TCollection_MapNode::~Handle_TCollection_MapNode {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TCollection_MapNode {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TCollection_MapNode {
    TCollection_MapNode* GetObject() {
        return (TCollection_MapNode*)$self->Access();
    }
};
   
%nodefaultctor Handle_TCollection_SeqNode;

class Handle_TCollection_SeqNode : public Handle_MMgt_TShared {
    public:

        %feature("autodoc", "1");
        Handle_TCollection_SeqNode();
        %feature("autodoc", "1");
        Handle_TCollection_SeqNode(Handle_TCollection_SeqNode const & aHandle);
        %feature("autodoc", "1");
        Handle_TCollection_SeqNode(TCollection_SeqNode const * anItem);
        %feature("autodoc", "1");
        Handle_TCollection_SeqNode const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TCollection_SeqNode::~Handle_TCollection_SeqNode {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TCollection_SeqNode {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TCollection_SeqNode {
    TCollection_SeqNode* GetObject() {
        return (TCollection_SeqNode*)$self->Access();
    }
};
   
%nodefaultctor TCollection_AVLBaseNode;

class TCollection_AVLBaseNode : public MMgt_TShared {
    public:

        %feature("autodoc", "1");
        TCollection_AVLBaseNode(TCollection_AVLBaseNode const & arg0);
        %feature("autodoc", "1");
        TCollection_AVLBaseNode(TCollection_AVLBaseNodePtr const & L, TCollection_AVLBaseNodePtr const & R);
        %feature("autodoc", "1");
        void SetChild(TCollection_AVLBaseNodePtr const & theNode, TCollection_Side const theSide);
        %feature("autodoc", "1");
        Standard_Integer Height(TCollection_AVLBaseNodePtr const & ANode);
        %feature("autodoc", "1");
        Standard_Integer RecursiveExtent(TCollection_AVLBaseNodePtr const & ANode);
        %feature("autodoc", "1");
        Standard_Integer RecursiveTotalExtent(TCollection_AVLBaseNodePtr const & ANode);
        %feature("autodoc", "1");
        TCollection_AVLBaseNodePtr & Right() const;
        %feature("autodoc", "1");
        TCollection_AVLBaseNodePtr & Left() const;
        %feature("autodoc", "1");
        Standard_Integer & Count() const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: TCollection_AVLBaseNodePtr myLeft
//Get: None
//Set: None
//Var: TCollection_AVLBaseNodePtr myRight
//Get: None
//Set: None
//Var: Standard_Integer myCount
//Get: None
//Set: None
%feature("shadow") TCollection_AVLBaseNode::~TCollection_AVLBaseNode {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TCollection_AVLBaseNode {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TCollection_AVLBaseNode {
    Handle_TCollection_AVLBaseNode* GetHandle(){
        return (Handle_TCollection_AVLBaseNode*)$self;
    }
};
   
%nodefaultctor TCollection_HAsciiString;

class TCollection_HAsciiString : public MMgt_TShared {
    public:

        %feature("autodoc", "1");
        TCollection_HAsciiString(TCollection_HAsciiString const & arg0);
        %feature("autodoc", "1");
        TCollection_HAsciiString();
        %feature("autodoc", "1");
        TCollection_HAsciiString(char const * message);
        %feature("autodoc", "1");
        TCollection_HAsciiString(Standard_Character const aChar);
        %feature("autodoc", "1");
        TCollection_HAsciiString(Standard_Integer const length, Standard_Character const filler);
        %feature("autodoc", "1");
        TCollection_HAsciiString(Standard_Integer const value);
        %feature("autodoc", "1");
        TCollection_HAsciiString(Standard_Real const value);
        %feature("autodoc", "1");
        TCollection_HAsciiString(TCollection_AsciiString const & aString);
        %feature("autodoc", "1");
        TCollection_HAsciiString(Handle_TCollection_HAsciiString const & aString);
        %feature("autodoc", "1");
        TCollection_HAsciiString(Handle_TCollection_HExtendedString const & aString, Standard_Character const replaceNonAscii);
        %feature("autodoc", "1");
        void AssignCat(char const * other);
        %feature("autodoc", "1");
        void AssignCat(Handle_TCollection_HAsciiString const & other);
        %feature("autodoc", "1");
        void Capitalize();
        %feature("autodoc", "1");
        Handle_TCollection_HAsciiString Cat(char const * other) const;
        %feature("autodoc", "1");
        Handle_TCollection_HAsciiString Cat(Handle_TCollection_HAsciiString const & other) const;
        %feature("autodoc", "1");
        void Center(Standard_Integer const Width, Standard_Character const Filler);
        %feature("autodoc", "1");
        void ChangeAll(Standard_Character const aChar, Standard_Character const NewChar, Standard_Boolean const CaseSensitive=1);
        %feature("autodoc", "1");
        void Clear();
        %feature("autodoc", "1");
        Standard_Integer FirstLocationInSet(Handle_TCollection_HAsciiString const & Set, Standard_Integer const FromIndex, Standard_Integer const ToIndex) const;
        %feature("autodoc", "1");
        Standard_Integer FirstLocationNotInSet(Handle_TCollection_HAsciiString const & Set, Standard_Integer const FromIndex, Standard_Integer const ToIndex) const;
        %feature("autodoc", "1");
        void Insert(Standard_Integer const where, Standard_Character const what);
        %feature("autodoc", "1");
        void Insert(Standard_Integer const where, char const * what);
        %feature("autodoc", "1");
        void Insert(Standard_Integer const where, Handle_TCollection_HAsciiString const & what);
        %feature("autodoc", "1");
        void InsertAfter(Standard_Integer const Index, Handle_TCollection_HAsciiString const & other);
        %feature("autodoc", "1");
        void InsertBefore(Standard_Integer const Index, Handle_TCollection_HAsciiString const & other);
        %feature("autodoc", "1");
        Standard_Boolean IsEmpty() const;
        %feature("autodoc", "1");
        Standard_Boolean IsLess(Handle_TCollection_HAsciiString const & other) const;
        %feature("autodoc", "1");
        Standard_Boolean IsGreater(Handle_TCollection_HAsciiString const & other) const;
        %feature("autodoc", "1");
        Standard_Integer IntegerValue() const;
        %feature("autodoc", "1");
        Standard_Boolean IsIntegerValue() const;
        %feature("autodoc", "1");
        Standard_Boolean IsRealValue() const;
        %feature("autodoc", "1");
        Standard_Boolean IsAscii() const;
        %feature("autodoc", "1");
        Standard_Boolean IsDifferent(Handle_TCollection_HAsciiString const & S) const;
        %feature("autodoc", "1");
        Standard_Boolean IsSameString(Handle_TCollection_HAsciiString const & S) const;
        %feature("autodoc", "1");
        Standard_Boolean IsSameString(Handle_TCollection_HAsciiString const & S, Standard_Boolean const CaseSensitive) const;
        %feature("autodoc", "1");
        void LeftAdjust();
        %feature("autodoc", "1");
        void LeftJustify(Standard_Integer const Width, Standard_Character const Filler);
        %feature("autodoc", "1");
        Standard_Integer Length() const;
        %feature("autodoc", "1");
        Standard_Integer Location(Handle_TCollection_HAsciiString const & other, Standard_Integer const FromIndex, Standard_Integer const ToIndex) const;
        %feature("autodoc", "1");
        Standard_Integer Location(Standard_Integer const N, Standard_Character const C, Standard_Integer const FromIndex, Standard_Integer const ToIndex) const;
        %feature("autodoc", "1");
        void LowerCase();
        %feature("autodoc", "1");
        void Prepend(Handle_TCollection_HAsciiString const & other);
        %feature("autodoc", "1");
        %extend{
            std::stringstream PrintToString() {
                std::stringstream s;
                self->Print(s);
                return s.str();
            }
        };
        %feature("autodoc", "1");
        Standard_Real RealValue() const;
        %feature("autodoc", "1");
        void RemoveAll(Standard_Character const C, Standard_Boolean const CaseSensitive);
        %feature("autodoc", "1");
        void RemoveAll(Standard_Character const what);
        %feature("autodoc", "1");
        void Remove(Standard_Integer const where, Standard_Integer const ahowmany=1);
        %feature("autodoc", "1");
        void RightAdjust();
        %feature("autodoc", "1");
        void RightJustify(Standard_Integer const Width, Standard_Character const Filler);
        %feature("autodoc", "1");
        Standard_Integer Search(char const * what) const;
        %feature("autodoc", "1");
        Standard_Integer Search(Handle_TCollection_HAsciiString const & what) const;
        %feature("autodoc", "1");
        Standard_Integer SearchFromEnd(char const * what) const;
        %feature("autodoc", "1");
        Standard_Integer SearchFromEnd(Handle_TCollection_HAsciiString const & what) const;
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const where, Standard_Character const what);
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const where, char const * what);
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const where, Handle_TCollection_HAsciiString const & what);
        %feature("autodoc", "1");
        Handle_TCollection_HAsciiString Split(Standard_Integer const where);
        %feature("autodoc", "1");
        Handle_TCollection_HAsciiString SubString(Standard_Integer const FromIndex, Standard_Integer const ToIndex) const;
        %feature("autodoc", "1");
        Standard_CString ToCString() const;
        %feature("autodoc", "1");
        Handle_TCollection_HAsciiString Token(char const * separators=" \011", Standard_Integer const whichone=1) const;
        %feature("autodoc", "1");
        void Trunc(Standard_Integer const ahowmany);
        %feature("autodoc", "1");
        void UpperCase();
        %feature("autodoc", "1");
        Standard_Integer UsefullLength() const;
        %feature("autodoc", "1");
        Standard_Character Value(Standard_Integer const where) const;
        %feature("autodoc", "1");
        TCollection_AsciiString const & String() const;
        %feature("autodoc", "1");
        Handle_TCollection_HAsciiString ShallowCopy() const;
        %feature("autodoc", "1");
        %extend{
            std::stringstream ShallowDumpToString() {
                std::stringstream s;
                self->ShallowDump(s);
                return s.str();
            }
        };
        %feature("autodoc", "1");
        Standard_Boolean IsSameState(Handle_TCollection_HAsciiString const & other) const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: TCollection_AsciiString myString
//Get: None
//Set: None
%feature("shadow") TCollection_HAsciiString::~TCollection_HAsciiString {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TCollection_HAsciiString {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TCollection_HAsciiString {
    Handle_TCollection_HAsciiString* GetHandle(){
        return (Handle_TCollection_HAsciiString*)$self;
    }
};
   
%nodefaultctor TCollection_HExtendedString;

class TCollection_HExtendedString : public MMgt_TShared {
    public:

        %feature("autodoc", "1");
        TCollection_HExtendedString(TCollection_HExtendedString const & arg0);
        %feature("autodoc", "1");
        TCollection_HExtendedString();
        %feature("autodoc", "1");
        TCollection_HExtendedString(char const * message);
        %feature("autodoc", "1");
        TCollection_HExtendedString(Standard_ExtString const message);
        %feature("autodoc", "1");
        TCollection_HExtendedString(Standard_ExtCharacter const aChar);
        %feature("autodoc", "1");
        TCollection_HExtendedString(Standard_Integer const length, Standard_ExtCharacter const filler);
        %feature("autodoc", "1");
        TCollection_HExtendedString(TCollection_ExtendedString const & aString);
        %feature("autodoc", "1");
        TCollection_HExtendedString(Handle_TCollection_HAsciiString const & aString);
        %feature("autodoc", "1");
        TCollection_HExtendedString(Handle_TCollection_HExtendedString const & aString);
        %feature("autodoc", "1");
        void AssignCat(Handle_TCollection_HExtendedString const & other);
        %feature("autodoc", "1");
        Handle_TCollection_HExtendedString Cat(Handle_TCollection_HExtendedString const & other) const;
        %feature("autodoc", "1");
        void ChangeAll(Standard_ExtCharacter const aChar, Standard_ExtCharacter const NewChar);
        %feature("autodoc", "1");
        void Clear();
        %feature("autodoc", "1");
        Standard_Boolean IsEmpty() const;
        %feature("autodoc", "1");
        void Insert(Standard_Integer const where, Standard_ExtCharacter const what);
        %feature("autodoc", "1");
        void Insert(Standard_Integer const where, Handle_TCollection_HExtendedString const & what);
        %feature("autodoc", "1");
        Standard_Boolean IsLess(Handle_TCollection_HExtendedString const & other) const;
        %feature("autodoc", "1");
        Standard_Boolean IsGreater(Handle_TCollection_HExtendedString const & other) const;
        %feature("autodoc", "1");
        Standard_Boolean IsAscii() const;
        %feature("autodoc", "1");
        Standard_Integer Length() const;
        %feature("autodoc", "1");
        void Remove(Standard_Integer const where, Standard_Integer const ahowmany=1);
        %feature("autodoc", "1");
        void RemoveAll(Standard_ExtCharacter const what);
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const where, Standard_ExtCharacter const what);
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const where, Handle_TCollection_HExtendedString const & what);
        %feature("autodoc", "1");
        Handle_TCollection_HExtendedString Split(Standard_Integer const where);
        %feature("autodoc", "1");
        Standard_Integer Search(Handle_TCollection_HExtendedString const & what) const;
        %feature("autodoc", "1");
        Standard_Integer SearchFromEnd(Handle_TCollection_HExtendedString const & what) const;
        %feature("autodoc", "1");
        Standard_ExtString const ToExtString() const;
        %feature("autodoc", "1");
        Handle_TCollection_HExtendedString Token(Standard_ExtString const separators, Standard_Integer const whichone=1) const;
        %feature("autodoc", "1");
        void Trunc(Standard_Integer const ahowmany);
        %feature("autodoc", "1");
        Standard_ExtCharacter Value(Standard_Integer const where) const;
        %feature("autodoc", "1");
        TCollection_ExtendedString String() const;
        %feature("autodoc", "1");
        %extend{
            std::stringstream PrintToString() {
                std::stringstream s;
                self->Print(s);
                return s.str();
            }
        };
        %feature("autodoc", "1");
        Handle_TCollection_HExtendedString ShallowCopy() const;
        %feature("autodoc", "1");
        %extend{
            std::stringstream ShallowDumpToString() {
                std::stringstream s;
                self->ShallowDump(s);
                return s.str();
            }
        };
        %feature("autodoc", "1");
        Standard_Boolean IsSameState(Handle_TCollection_HExtendedString const & other) const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const;
        %feature("autodoc", "1");
        TCollection_ExtendedString & ChangeString() const; 
};
//Var: TCollection_ExtendedString myString
//Get: None
//Set: None
%feature("shadow") TCollection_HExtendedString::~TCollection_HExtendedString {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TCollection_HExtendedString {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TCollection_HExtendedString {
    Handle_TCollection_HExtendedString* GetHandle(){
        return (Handle_TCollection_HExtendedString*)$self;
    }
};
   
%nodefaultctor TCollection_MapNode;

class TCollection_MapNode : public MMgt_TShared {
    public:

        %feature("autodoc", "1");
        TCollection_MapNode(TCollection_MapNode const & arg0);
        %feature("autodoc", "1");
        TCollection_MapNode(TCollection_MapNodePtr const & n);
        %feature("autodoc", "1");
        TCollection_MapNodePtr & Next() const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: TCollection_MapNodePtr myNext
//Get: None
//Set: None
%feature("shadow") TCollection_MapNode::~TCollection_MapNode {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TCollection_MapNode {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TCollection_MapNode {
    Handle_TCollection_MapNode* GetHandle(){
        return (Handle_TCollection_MapNode*)$self;
    }
};
   
%nodefaultctor TCollection_SeqNode;

class TCollection_SeqNode : public MMgt_TShared {
    public:

        %feature("autodoc", "1");
        TCollection_SeqNode(TCollection_SeqNode const & arg0);
        %feature("autodoc", "1");
        TCollection_SeqNode(TCollection_SeqNodePtr const & n, TCollection_SeqNodePtr const & p);
        %feature("autodoc", "1");
        TCollection_SeqNodePtr & Next() const;
        %feature("autodoc", "1");
        TCollection_SeqNodePtr & Previous() const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: TCollection_SeqNodePtr myNext
//Get: None
//Set: None
//Var: TCollection_SeqNodePtr myPrevious
//Get: None
//Set: None
%feature("shadow") TCollection_SeqNode::~TCollection_SeqNode {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TCollection_SeqNode {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TCollection_SeqNode {
    Handle_TCollection_SeqNode* GetHandle(){
        return (Handle_TCollection_SeqNode*)$self;
    }
};
   
%nodefaultctor TCollection_Array1Descriptor;

class TCollection_Array1Descriptor  {
    public:

        %feature("autodoc", "1");
        TCollection_Array1Descriptor(TCollection_Array1Descriptor const & arg0);
        %feature("autodoc", "1");
        TCollection_Array1Descriptor(Standard_Integer const aLower, Standard_Integer const aUpper, Standard_Address const anAddress);
        %feature("autodoc", "1");
        Standard_Integer Upper() const;
        %feature("autodoc", "1");
        Standard_Integer Lower() const;
        %feature("autodoc", "1");
        Standard_Address Address() const; 
};
//Var: Standard_Address myAddress
//Get: None
//Set: None
//Var: Standard_Integer myLower
//Get: None
//Set: None
//Var: Standard_Integer myUpper
//Get: None
//Set: None
%feature("shadow") TCollection_Array1Descriptor::~TCollection_Array1Descriptor {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TCollection_Array1Descriptor {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TCollection_Array2Descriptor;

class TCollection_Array2Descriptor  {
    public:

        %feature("autodoc", "1");
        TCollection_Array2Descriptor(TCollection_Array2Descriptor const & arg0);
        %feature("autodoc", "1");
        TCollection_Array2Descriptor(Standard_Integer const aLowerRow, Standard_Integer const aUpperRow, Standard_Integer const aLowerCol, Standard_Integer const aUpperCol, Standard_Address const anAddress);
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
//Var: Standard_Address myAddress
//Get: None
//Set: None
//Var: Standard_Integer myLowerRow
//Get: None
//Set: None
//Var: Standard_Integer myLowerCol
//Get: None
//Set: None
//Var: Standard_Integer myUpperRow
//Get: None
//Set: None
//Var: Standard_Integer myUpperCol
//Get: None
//Set: None
%feature("shadow") TCollection_Array2Descriptor::~TCollection_Array2Descriptor {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TCollection_Array2Descriptor {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TCollection_AsciiString;

class TCollection_AsciiString  {
    public:

        %feature("autodoc", "1");
        TCollection_AsciiString();
        %feature("autodoc", "1");
        TCollection_AsciiString(char const * message);
        %feature("autodoc", "1");
        TCollection_AsciiString(char const * message, Standard_Integer const aLen);
        %feature("autodoc", "1");
        TCollection_AsciiString(Standard_Character const aChar);
        %feature("autodoc", "1");
        TCollection_AsciiString(Standard_Integer const length, Standard_Character const filler);
        %feature("autodoc", "1");
        TCollection_AsciiString(Standard_Integer const value);
        %feature("autodoc", "1");
        TCollection_AsciiString(Standard_Real const value);
        %feature("autodoc", "1");
        TCollection_AsciiString(TCollection_AsciiString const & astring);
        %feature("autodoc", "1");
        TCollection_AsciiString(TCollection_AsciiString const & astring, Standard_Character const message);
        %feature("autodoc", "1");
        TCollection_AsciiString(TCollection_AsciiString const & astring, char const * message);
        %feature("autodoc", "1");
        TCollection_AsciiString(TCollection_AsciiString const & astring, TCollection_AsciiString const & message);
        %feature("autodoc", "1");
        TCollection_AsciiString(TCollection_ExtendedString const & astring, Standard_Character const replaceNonAscii=0);
        %feature("autodoc", "1");
        void AssignCat(Standard_Character const other);
        %feature("autodoc", "1");
        void AssignCat(Standard_Integer const other);
        %feature("autodoc", "1");
        void AssignCat(Standard_Real const other);
        %feature("autodoc", "1");
        void AssignCat(char const * other);
        %feature("autodoc", "1");
        void AssignCat(TCollection_AsciiString const & other);
        %feature("autodoc", "1");
        void Capitalize();
        %feature("autodoc", "1");
        TCollection_AsciiString Cat(Standard_Character const other) const;
        %feature("autodoc", "1");
        TCollection_AsciiString Cat(Standard_Integer const other) const;
        %feature("autodoc", "1");
        TCollection_AsciiString Cat(Standard_Real const other) const;
        %feature("autodoc", "1");
        TCollection_AsciiString Cat(char const * other) const;
        %feature("autodoc", "1");
        TCollection_AsciiString Cat(TCollection_AsciiString const & other) const;
        %feature("autodoc", "1");
        void Center(Standard_Integer const Width, Standard_Character const Filler);
        %feature("autodoc", "1");
        void ChangeAll(Standard_Character const aChar, Standard_Character const NewChar, Standard_Boolean const CaseSensitive=1);
        %feature("autodoc", "1");
        void Clear();
        %feature("autodoc", "1");
        void Copy(char const * fromwhere);
        %feature("autodoc", "1");
        void Copy(TCollection_AsciiString const & fromwhere);
        %feature("autodoc", "1");
        void Destroy();
        %feature("autodoc", "1");
        Standard_Integer FirstLocationInSet(TCollection_AsciiString const & Set, Standard_Integer const FromIndex, Standard_Integer const ToIndex) const;
        %feature("autodoc", "1");
        Standard_Integer FirstLocationNotInSet(TCollection_AsciiString const & Set, Standard_Integer const FromIndex, Standard_Integer const ToIndex) const;
        %feature("autodoc", "1");
        void Insert(Standard_Integer const where, Standard_Character const what);
        %feature("autodoc", "1");
        void Insert(Standard_Integer const where, char const * what);
        %feature("autodoc", "1");
        void Insert(Standard_Integer const where, TCollection_AsciiString const & what);
        %feature("autodoc", "1");
        void InsertAfter(Standard_Integer const Index, TCollection_AsciiString const & other);
        %feature("autodoc", "1");
        void InsertBefore(Standard_Integer const Index, TCollection_AsciiString const & other);
        %feature("autodoc", "1");
        Standard_Boolean IsEmpty() const;
        %feature("autodoc", "1");
        Standard_Boolean IsEqual(char const * other) const;
        %feature("autodoc", "1");
        Standard_Boolean IsEqual(TCollection_AsciiString const & other) const;
        %feature("autodoc", "1");
        Standard_Boolean IsDifferent(char const * other) const;
        %feature("autodoc", "1");
        Standard_Boolean IsDifferent(TCollection_AsciiString const & other) const;
        %feature("autodoc", "1");
        Standard_Boolean IsLess(char const * other) const;
        %feature("autodoc", "1");
        Standard_Boolean IsLess(TCollection_AsciiString const & other) const;
        %feature("autodoc", "1");
        Standard_Boolean IsGreater(char const * other) const;
        %feature("autodoc", "1");
        Standard_Boolean IsGreater(TCollection_AsciiString const & other) const;
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
        void LeftJustify(Standard_Integer const Width, Standard_Character const Filler);
        %feature("autodoc", "1");
        Standard_Integer Length() const;
        %feature("autodoc", "1");
        Standard_Integer Location(TCollection_AsciiString const & other, Standard_Integer const FromIndex, Standard_Integer const ToIndex) const;
        %feature("autodoc", "1");
        Standard_Integer Location(Standard_Integer const N, Standard_Character const C, Standard_Integer const FromIndex, Standard_Integer const ToIndex) const;
        %feature("autodoc", "1");
        void LowerCase();
        %feature("autodoc", "1");
        void Prepend(TCollection_AsciiString const & other);
        %feature("autodoc", "1");
        %extend{
            std::stringstream PrintToString() {
                std::stringstream s;
                self->Print(s);
                return s.str();
            }
        };
        %feature("autodoc", "1");
        void Read(istream & astream);
        %feature("autodoc", "1");
        Standard_Real RealValue() const;
        %feature("autodoc", "1");
        void RemoveAll(Standard_Character const C, Standard_Boolean const CaseSensitive);
        %feature("autodoc", "1");
        void RemoveAll(Standard_Character const what);
        %feature("autodoc", "1");
        void Remove(Standard_Integer const where, Standard_Integer const ahowmany=1);
        %feature("autodoc", "1");
        void RightAdjust();
        %feature("autodoc", "1");
        void RightJustify(Standard_Integer const Width, Standard_Character const Filler);
        %feature("autodoc", "1");
        Standard_Integer Search(char const * what) const;
        %feature("autodoc", "1");
        Standard_Integer Search(TCollection_AsciiString const & what) const;
        %feature("autodoc", "1");
        Standard_Integer SearchFromEnd(char const * what) const;
        %feature("autodoc", "1");
        Standard_Integer SearchFromEnd(TCollection_AsciiString const & what) const;
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const where, Standard_Character const what);
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const where, char const * what);
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const where, TCollection_AsciiString const & what);
        %feature("autodoc", "1");
        TCollection_AsciiString Split(Standard_Integer const where);
        %feature("autodoc", "1");
        TCollection_AsciiString SubString(Standard_Integer const FromIndex, Standard_Integer const ToIndex) const;
        %feature("autodoc", "1");
        Standard_CString ToCString() const;
        %feature("autodoc", "1");
        TCollection_AsciiString Token(char const * separators=" \011", Standard_Integer const whichone=1) const;
        %feature("autodoc", "1");
        void Trunc(Standard_Integer const ahowmany);
        %feature("autodoc", "1");
        void UpperCase();
        %feature("autodoc", "1");
        Standard_Integer UsefullLength() const;
        %feature("autodoc", "1");
        Standard_Character Value(Standard_Integer const where) const;
        %feature("autodoc", "1");
        Standard_Integer HashCode(TCollection_AsciiString const & astring, Standard_Integer const Upper);
        %feature("autodoc", "1");
        Standard_Boolean IsEqual(TCollection_AsciiString const & string1, TCollection_AsciiString const & string2);
        %feature("autodoc", "1");
        Standard_Boolean IsEqual(TCollection_AsciiString const & string1, char const * string2);
        %feature("autodoc", "1");
        Standard_Integer HASHCODE(TCollection_AsciiString const & astring, Standard_Integer const Upper);
        %feature("autodoc", "1");
        Standard_Boolean ISSIMILAR(TCollection_AsciiString const & string1, TCollection_AsciiString const & string2);
        %feature("autodoc", "1");
        void Split(Standard_Integer const where, TCollection_AsciiString & result);
        %feature("autodoc", "1");
        void SubString(Standard_Integer const FromIndex, Standard_Integer const ToIndex, TCollection_AsciiString & result) const;
        %feature("autodoc", "1");
        void Token(char const * separators, Standard_Integer const whichone, TCollection_AsciiString & result) const; 
};
//Var: Standard_PCharacter mystring
//Get: None
//Set: None
//Var: Standard_Integer mylength
//Get: None
//Set: None
%feature("shadow") TCollection_AsciiString::~TCollection_AsciiString {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TCollection_AsciiString {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TCollection_AsciiString {
    Standard_Integer __hash__() {
        return $self->HashCode(__PYTHONOCC_MAXINT__);
    }
};
   
%nodefaultctor TCollection_BaseSequence;

class TCollection_BaseSequence  {
    public:

        %feature("autodoc", "1");
        TCollection_BaseSequence();
        %feature("autodoc", "1");
        TCollection_BaseSequence(TCollection_BaseSequence const & Other);
        %feature("autodoc", "1");
        Standard_Boolean IsEmpty() const;
        %feature("autodoc", "1");
        Standard_Integer Length() const;
        %feature("autodoc", "1");
        void Reverse();
        %feature("autodoc", "1");
        void Exchange(Standard_Integer const I, Standard_Integer const J);
        %feature("autodoc", "1");
        void Clear(Standard_Address const DelNode);
        %feature("autodoc", "1");
        void PAppend(Standard_Address const Node);
        %feature("autodoc", "1");
        void PAppend(TCollection_BaseSequence & S);
        %feature("autodoc", "1");
        void PPrepend(Standard_Address const Node);
        %feature("autodoc", "1");
        void PPrepend(TCollection_BaseSequence & S);
        %feature("autodoc", "1");
        void PInsertAfter(Standard_Integer const Index, Standard_Address const Node);
        %feature("autodoc", "1");
        void PInsertAfter(Standard_Integer const Index, TCollection_BaseSequence & S);
        %feature("autodoc", "1");
        void PSplit(Standard_Integer const Index, TCollection_BaseSequence & Sub);
        %feature("autodoc", "1");
        void Remove(Standard_Integer const Index, Standard_Address const DelNode);
        %feature("autodoc", "1");
        void Remove(Standard_Integer const FromIndex, Standard_Integer const ToIndex, Standard_Address const DelNode);
        %feature("autodoc", "1");
        Standard_Address Find(Standard_Integer const Index) const;
        %feature("autodoc", "1");
        void Nullify(); 
};
//Var: Standard_Address FirstItem
//Get: None
//Set: None
//Var: Standard_Address LastItem
//Get: None
//Set: None
//Var: Standard_Address CurrentItem
//Get: None
//Set: None
//Var: Standard_Integer CurrentIndex
//Get: None
//Set: None
//Var: Standard_Integer Size
//Get: None
//Set: None
%feature("shadow") TCollection_BaseSequence::~TCollection_BaseSequence {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TCollection_BaseSequence {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TCollection_BasicMap;

class TCollection_BasicMap  {
    public:

        %feature("autodoc", "1");
        TCollection_BasicMap(TCollection_BasicMap const & arg0);
        %feature("autodoc", "1");
        TCollection_BasicMap(Standard_Integer const NbBuckets, Standard_Boolean const single);
        %feature("autodoc", "1");
        Standard_Integer NbBuckets() const;
        %feature("autodoc", "1");
        Standard_Integer Extent() const;
        %feature("autodoc", "1");
        Standard_Boolean IsEmpty() const;
        %feature("autodoc", "1");
        %extend{
            std::stringstream StatisticsToString() {
                std::stringstream s;
                self->Statistics(s);
                return s.str();
            }
        };
        %feature("autodoc", "1");
        Standard_Boolean BeginResize(Standard_Integer const NbBuckets, Standard_Integer & NewBuckets, Standard_Address & data1, Standard_Address & data2) const;
        %feature("autodoc", "1");
        void EndResize(Standard_Integer const NbBuckets, Standard_Integer const NewBuckets, Standard_Address const data1, Standard_Address const data2);
        %feature("autodoc", "1");
        Standard_Boolean Resizable() const;
        %feature("autodoc", "1");
        void Increment();
        %feature("autodoc", "1");
        void Decrement();
        %feature("autodoc", "1");
        void Destroy(); 
};
//Var: Standard_Address myData1
//Get: None
//Set: None
//Var: Standard_Address myData2
//Get: None
//Set: None
//Var: Standard_Boolean isDouble
//Get: None
//Set: None
//Var: Standard_Boolean mySaturated
//Get: None
//Set: None
//Var: Standard_Integer myNbBuckets
//Get: None
//Set: None
//Var: Standard_Integer mySize
//Get: None
//Set: None
%feature("shadow") TCollection_BasicMap::~TCollection_BasicMap {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TCollection_BasicMap {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TCollection_BasicMapIterator;

class TCollection_BasicMapIterator  {
    public:

        %feature("autodoc", "1");
        TCollection_BasicMapIterator(TCollection_BasicMapIterator const & arg0);
        %feature("autodoc", "1");
        TCollection_BasicMapIterator();
        %feature("autodoc", "1");
        TCollection_BasicMapIterator(TCollection_BasicMap const & M);
        %feature("autodoc", "1");
        void Reset();
        %feature("autodoc", "1");
        Standard_Boolean More() const;
        %feature("autodoc", "1");
        void Next();
        %feature("autodoc", "1");
        void Initialize(TCollection_BasicMap const & M); 
};
//Var: Standard_Address myNode
//Get: None
//Set: None
//Var: Standard_Integer myNbBuckets
//Get: None
//Set: None
//Var: Standard_Address myBuckets
//Get: None
//Set: None
//Var: Standard_Integer myBucket
//Get: None
//Set: None
%feature("shadow") TCollection_BasicMapIterator::~TCollection_BasicMapIterator {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TCollection_BasicMapIterator {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TCollection_ExtendedString;

class TCollection_ExtendedString  {
    public:

        %feature("autodoc", "1");
        TCollection_ExtendedString();
        %feature("autodoc", "1");
        TCollection_ExtendedString(char const * astring, Standard_Boolean const isMultiByte=0);
        %feature("autodoc", "1");
        TCollection_ExtendedString(Standard_ExtString const astring);
        %feature("autodoc", "1");
        TCollection_ExtendedString(Standard_Character const aChar);
        %feature("autodoc", "1");
        TCollection_ExtendedString(Standard_ExtCharacter const aChar);
        %feature("autodoc", "1");
        TCollection_ExtendedString(Standard_Integer const length, Standard_ExtCharacter const filler);
        %feature("autodoc", "1");
        TCollection_ExtendedString(Standard_Integer const value);
        %feature("autodoc", "1");
        TCollection_ExtendedString(Standard_Real const value);
        %feature("autodoc", "1");
        TCollection_ExtendedString(TCollection_ExtendedString const & astring);
        %feature("autodoc", "1");
        TCollection_ExtendedString(TCollection_AsciiString const & astring);
        %feature("autodoc", "1");
        void AssignCat(TCollection_ExtendedString const & other);
        %feature("autodoc", "1");
        TCollection_ExtendedString Cat(TCollection_ExtendedString const & other) const;
        %feature("autodoc", "1");
        void ChangeAll(Standard_ExtCharacter const aChar, Standard_ExtCharacter const NewChar);
        %feature("autodoc", "1");
        void Clear();
        %feature("autodoc", "1");
        void Copy(TCollection_ExtendedString const & fromwhere);
        %feature("autodoc", "1");
        void Destroy();
        %feature("autodoc", "1");
        void Insert(Standard_Integer const where, Standard_ExtCharacter const what);
        %feature("autodoc", "1");
        void Insert(Standard_Integer const where, TCollection_ExtendedString const & what);
        %feature("autodoc", "1");
        Standard_Boolean IsEqual(Standard_ExtString const other) const;
        %feature("autodoc", "1");
        Standard_Boolean IsEqual(TCollection_ExtendedString const & other) const;
        %feature("autodoc", "1");
        Standard_Boolean IsDifferent(Standard_ExtString const other) const;
        %feature("autodoc", "1");
        Standard_Boolean IsDifferent(TCollection_ExtendedString const & other) const;
        %feature("autodoc", "1");
        Standard_Boolean IsLess(Standard_ExtString const other) const;
        %feature("autodoc", "1");
        Standard_Boolean IsLess(TCollection_ExtendedString const & other) const;
        %feature("autodoc", "1");
        Standard_Boolean IsGreater(Standard_ExtString const other) const;
        %feature("autodoc", "1");
        Standard_Boolean IsGreater(TCollection_ExtendedString const & other) const;
        %feature("autodoc", "1");
        Standard_Boolean IsAscii() const;
        %feature("autodoc", "1");
        Standard_Integer Length() const;
        %feature("autodoc", "1");
        %extend{
            std::stringstream PrintToString() {
                std::stringstream s;
                self->Print(s);
                return s.str();
            }
        };
        %feature("autodoc", "1");
        void RemoveAll(Standard_ExtCharacter const what);
        %feature("autodoc", "1");
        void Remove(Standard_Integer const where, Standard_Integer const ahowmany=1);
        %feature("autodoc", "1");
        Standard_Integer Search(TCollection_ExtendedString const & what) const;
        %feature("autodoc", "1");
        Standard_Integer SearchFromEnd(TCollection_ExtendedString const & what) const;
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const where, Standard_ExtCharacter const what);
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const where, TCollection_ExtendedString const & what);
        %feature("autodoc", "1");
        TCollection_ExtendedString Split(Standard_Integer const where);
        %feature("autodoc", "1");
        TCollection_ExtendedString Token(Standard_ExtString const separators, Standard_Integer const whichone=1) const;
        %feature("autodoc", "1");
        Standard_ExtString const ToExtString() const;
        %feature("autodoc", "1");
        void Trunc(Standard_Integer const ahowmany);
        %feature("autodoc", "1");
        Standard_ExtCharacter Value(Standard_Integer const where) const;
        %feature("autodoc", "1");
        Standard_Integer HashCode(TCollection_ExtendedString const & astring, Standard_Integer const Upper);
        %feature("autodoc", "1");
        Standard_Boolean IsEqual(TCollection_ExtendedString const & string1, TCollection_ExtendedString const & string2);
        %feature("autodoc", "1");
        Standard_Integer ToUTF8CString(Standard_PCharacter & theCString) const;
        %feature("autodoc", "1");
        Standard_Integer LengthOfCString() const;
        %feature("autodoc", "1");
        Standard_Boolean ConvertToUnicode(char const * astring); 
};
//Var: Standard_PExtCharacter mystring
//Get: None
//Set: None
//Var: Standard_Integer mylength
//Get: None
//Set: None
%feature("shadow") TCollection_ExtendedString::~TCollection_ExtendedString {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TCollection_ExtendedString {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TCollection_ExtendedString {
    Standard_Integer __hash__() {
        return $self->HashCode(__PYTHONOCC_MAXINT__);
    }
};
   
%nodefaultctor TCollection_PrivCompareOfInteger;

class TCollection_PrivCompareOfInteger  {
    public:

        %feature("autodoc", "1");
        TCollection_PrivCompareOfInteger(TCollection_PrivCompareOfInteger const & arg0);
        %feature("autodoc", "1");
        TCollection_PrivCompareOfInteger();
        %feature("autodoc", "1");
        virtual Standard_Boolean IsLower(Standard_Integer const & Left, Standard_Integer const & Right) const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsGreater(Standard_Integer const & Left, Standard_Integer const & Right) const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsEqual(Standard_Integer const & Left, Standard_Integer const & Right) const; 
};

%feature("shadow") TCollection_PrivCompareOfInteger::~TCollection_PrivCompareOfInteger {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TCollection_PrivCompareOfInteger {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TCollection_CompareOfInteger;

class TCollection_CompareOfInteger : public TCollection_PrivCompareOfInteger {
    public:

        %feature("autodoc", "1");
        TCollection_CompareOfInteger(TCollection_CompareOfInteger const & arg0);
        %feature("autodoc", "1");
        TCollection_CompareOfInteger();
        %feature("autodoc", "1");
        virtual Standard_Boolean IsLower(Standard_Integer const & Left, Standard_Integer const & Right) const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsGreater(Standard_Integer const & Left, Standard_Integer const & Right) const; 
};

%feature("shadow") TCollection_CompareOfInteger::~TCollection_CompareOfInteger {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TCollection_CompareOfInteger {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TCollection_PrivCompareOfReal;

class TCollection_PrivCompareOfReal  {
    public:

        %feature("autodoc", "1");
        TCollection_PrivCompareOfReal(TCollection_PrivCompareOfReal const & arg0);
        %feature("autodoc", "1");
        TCollection_PrivCompareOfReal();
        %feature("autodoc", "1");
        virtual Standard_Boolean IsLower(Standard_Real const & Left, Standard_Real const & Right) const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsGreater(Standard_Real const & Left, Standard_Real const & Right) const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsEqual(Standard_Real const & Left, Standard_Real const & Right) const; 
};

%feature("shadow") TCollection_PrivCompareOfReal::~TCollection_PrivCompareOfReal {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TCollection_PrivCompareOfReal {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TCollection_CompareOfReal;

class TCollection_CompareOfReal : public TCollection_PrivCompareOfReal {
    public:

        %feature("autodoc", "1");
        TCollection_CompareOfReal(TCollection_CompareOfReal const & arg0);
        %feature("autodoc", "1");
        TCollection_CompareOfReal();
        %feature("autodoc", "1");
        virtual Standard_Boolean IsLower(Standard_Real const & Left, Standard_Real const & Right) const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsGreater(Standard_Real const & Left, Standard_Real const & Right) const; 
};

%feature("shadow") TCollection_CompareOfReal::~TCollection_CompareOfReal {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TCollection_CompareOfReal {
    void _kill_pointed() {
        delete self;
    }                    
};