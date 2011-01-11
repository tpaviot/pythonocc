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
 
%module TColStd
       
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i


%pythoncode {
import GarbageCollector
};
%include TColStd_dependencies.i



   
%nodefaultctor Handle_TColStd_HArray1OfAsciiString;

class Handle_TColStd_HArray1OfAsciiString : public Handle_MMgt_TShared {
    public:

        %feature("autodoc", "1");
        Handle_TColStd_HArray1OfAsciiString();
        %feature("autodoc", "1");
        Handle_TColStd_HArray1OfAsciiString(Handle_TColStd_HArray1OfAsciiString const & aHandle);
        %feature("autodoc", "1");
        Handle_TColStd_HArray1OfAsciiString(TColStd_HArray1OfAsciiString const * anItem);
        %feature("autodoc", "1");
        Handle_TColStd_HArray1OfAsciiString const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TColStd_HArray1OfAsciiString::~Handle_TColStd_HArray1OfAsciiString {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TColStd_HArray1OfAsciiString {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TColStd_HArray1OfAsciiString {
    TColStd_HArray1OfAsciiString* GetObject() {
        return (TColStd_HArray1OfAsciiString*)$self->Access();
    }
};
   
%nodefaultctor Handle_TColStd_HArray1OfBoolean;

class Handle_TColStd_HArray1OfBoolean : public Handle_MMgt_TShared {
    public:

        %feature("autodoc", "1");
        Handle_TColStd_HArray1OfBoolean();
        %feature("autodoc", "1");
        Handle_TColStd_HArray1OfBoolean(Handle_TColStd_HArray1OfBoolean const & aHandle);
        %feature("autodoc", "1");
        Handle_TColStd_HArray1OfBoolean(TColStd_HArray1OfBoolean const * anItem);
        %feature("autodoc", "1");
        Handle_TColStd_HArray1OfBoolean const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TColStd_HArray1OfBoolean::~Handle_TColStd_HArray1OfBoolean {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TColStd_HArray1OfBoolean {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TColStd_HArray1OfBoolean {
    TColStd_HArray1OfBoolean* GetObject() {
        return (TColStd_HArray1OfBoolean*)$self->Access();
    }
};
   
%nodefaultctor Handle_TColStd_HArray1OfCharacter;

class Handle_TColStd_HArray1OfCharacter : public Handle_MMgt_TShared {
    public:

        %feature("autodoc", "1");
        Handle_TColStd_HArray1OfCharacter();
        %feature("autodoc", "1");
        Handle_TColStd_HArray1OfCharacter(Handle_TColStd_HArray1OfCharacter const & aHandle);
        %feature("autodoc", "1");
        Handle_TColStd_HArray1OfCharacter(TColStd_HArray1OfCharacter const * anItem);
        %feature("autodoc", "1");
        Handle_TColStd_HArray1OfCharacter const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TColStd_HArray1OfCharacter::~Handle_TColStd_HArray1OfCharacter {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TColStd_HArray1OfCharacter {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TColStd_HArray1OfCharacter {
    TColStd_HArray1OfCharacter* GetObject() {
        return (TColStd_HArray1OfCharacter*)$self->Access();
    }
};
   
%nodefaultctor Handle_TColStd_HArray1OfExtendedString;

class Handle_TColStd_HArray1OfExtendedString : public Handle_MMgt_TShared {
    public:

        %feature("autodoc", "1");
        Handle_TColStd_HArray1OfExtendedString();
        %feature("autodoc", "1");
        Handle_TColStd_HArray1OfExtendedString(Handle_TColStd_HArray1OfExtendedString const & aHandle);
        %feature("autodoc", "1");
        Handle_TColStd_HArray1OfExtendedString(TColStd_HArray1OfExtendedString const * anItem);
        %feature("autodoc", "1");
        Handle_TColStd_HArray1OfExtendedString const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TColStd_HArray1OfExtendedString::~Handle_TColStd_HArray1OfExtendedString {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TColStd_HArray1OfExtendedString {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TColStd_HArray1OfExtendedString {
    TColStd_HArray1OfExtendedString* GetObject() {
        return (TColStd_HArray1OfExtendedString*)$self->Access();
    }
};
   
%nodefaultctor Handle_TColStd_HArray1OfInteger;

class Handle_TColStd_HArray1OfInteger : public Handle_MMgt_TShared {
    public:

        %feature("autodoc", "1");
        Handle_TColStd_HArray1OfInteger();
        %feature("autodoc", "1");
        Handle_TColStd_HArray1OfInteger(Handle_TColStd_HArray1OfInteger const & aHandle);
        %feature("autodoc", "1");
        Handle_TColStd_HArray1OfInteger(TColStd_HArray1OfInteger const * anItem);
        %feature("autodoc", "1");
        Handle_TColStd_HArray1OfInteger const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TColStd_HArray1OfInteger::~Handle_TColStd_HArray1OfInteger {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TColStd_HArray1OfInteger {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TColStd_HArray1OfInteger {
    TColStd_HArray1OfInteger* GetObject() {
        return (TColStd_HArray1OfInteger*)$self->Access();
    }
};
   
%nodefaultctor Handle_TColStd_HArray1OfListOfInteger;

class Handle_TColStd_HArray1OfListOfInteger : public Handle_MMgt_TShared {
    public:

        %feature("autodoc", "1");
        Handle_TColStd_HArray1OfListOfInteger();
        %feature("autodoc", "1");
        Handle_TColStd_HArray1OfListOfInteger(Handle_TColStd_HArray1OfListOfInteger const & aHandle);
        %feature("autodoc", "1");
        Handle_TColStd_HArray1OfListOfInteger(TColStd_HArray1OfListOfInteger const * anItem);
        %feature("autodoc", "1");
        Handle_TColStd_HArray1OfListOfInteger const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TColStd_HArray1OfListOfInteger::~Handle_TColStd_HArray1OfListOfInteger {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TColStd_HArray1OfListOfInteger {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TColStd_HArray1OfListOfInteger {
    TColStd_HArray1OfListOfInteger* GetObject() {
        return (TColStd_HArray1OfListOfInteger*)$self->Access();
    }
};
   
%nodefaultctor Handle_TColStd_HArray1OfReal;

class Handle_TColStd_HArray1OfReal : public Handle_MMgt_TShared {
    public:

        %feature("autodoc", "1");
        Handle_TColStd_HArray1OfReal();
        %feature("autodoc", "1");
        Handle_TColStd_HArray1OfReal(Handle_TColStd_HArray1OfReal const & aHandle);
        %feature("autodoc", "1");
        Handle_TColStd_HArray1OfReal(TColStd_HArray1OfReal const * anItem);
        %feature("autodoc", "1");
        Handle_TColStd_HArray1OfReal const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TColStd_HArray1OfReal::~Handle_TColStd_HArray1OfReal {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TColStd_HArray1OfReal {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TColStd_HArray1OfReal {
    TColStd_HArray1OfReal* GetObject() {
        return (TColStd_HArray1OfReal*)$self->Access();
    }
};
   
%nodefaultctor Handle_TColStd_HArray1OfTransient;

class Handle_TColStd_HArray1OfTransient : public Handle_MMgt_TShared {
    public:

        %feature("autodoc", "1");
        Handle_TColStd_HArray1OfTransient();
        %feature("autodoc", "1");
        Handle_TColStd_HArray1OfTransient(Handle_TColStd_HArray1OfTransient const & aHandle);
        %feature("autodoc", "1");
        Handle_TColStd_HArray1OfTransient(TColStd_HArray1OfTransient const * anItem);
        %feature("autodoc", "1");
        Handle_TColStd_HArray1OfTransient const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TColStd_HArray1OfTransient::~Handle_TColStd_HArray1OfTransient {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TColStd_HArray1OfTransient {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TColStd_HArray1OfTransient {
    TColStd_HArray1OfTransient* GetObject() {
        return (TColStd_HArray1OfTransient*)$self->Access();
    }
};
   
%nodefaultctor Handle_TColStd_HArray2OfBoolean;

class Handle_TColStd_HArray2OfBoolean : public Handle_MMgt_TShared {
    public:

        %feature("autodoc", "1");
        Handle_TColStd_HArray2OfBoolean();
        %feature("autodoc", "1");
        Handle_TColStd_HArray2OfBoolean(Handle_TColStd_HArray2OfBoolean const & aHandle);
        %feature("autodoc", "1");
        Handle_TColStd_HArray2OfBoolean(TColStd_HArray2OfBoolean const * anItem);
        %feature("autodoc", "1");
        Handle_TColStd_HArray2OfBoolean const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TColStd_HArray2OfBoolean::~Handle_TColStd_HArray2OfBoolean {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TColStd_HArray2OfBoolean {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TColStd_HArray2OfBoolean {
    TColStd_HArray2OfBoolean* GetObject() {
        return (TColStd_HArray2OfBoolean*)$self->Access();
    }
};
   
%nodefaultctor Handle_TColStd_HArray2OfCharacter;

class Handle_TColStd_HArray2OfCharacter : public Handle_MMgt_TShared {
    public:

        %feature("autodoc", "1");
        Handle_TColStd_HArray2OfCharacter();
        %feature("autodoc", "1");
        Handle_TColStd_HArray2OfCharacter(Handle_TColStd_HArray2OfCharacter const & aHandle);
        %feature("autodoc", "1");
        Handle_TColStd_HArray2OfCharacter(TColStd_HArray2OfCharacter const * anItem);
        %feature("autodoc", "1");
        Handle_TColStd_HArray2OfCharacter const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TColStd_HArray2OfCharacter::~Handle_TColStd_HArray2OfCharacter {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TColStd_HArray2OfCharacter {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TColStd_HArray2OfCharacter {
    TColStd_HArray2OfCharacter* GetObject() {
        return (TColStd_HArray2OfCharacter*)$self->Access();
    }
};
   
%nodefaultctor Handle_TColStd_HArray2OfInteger;

class Handle_TColStd_HArray2OfInteger : public Handle_MMgt_TShared {
    public:

        %feature("autodoc", "1");
        Handle_TColStd_HArray2OfInteger();
        %feature("autodoc", "1");
        Handle_TColStd_HArray2OfInteger(Handle_TColStd_HArray2OfInteger const & aHandle);
        %feature("autodoc", "1");
        Handle_TColStd_HArray2OfInteger(TColStd_HArray2OfInteger const * anItem);
        %feature("autodoc", "1");
        Handle_TColStd_HArray2OfInteger const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TColStd_HArray2OfInteger::~Handle_TColStd_HArray2OfInteger {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TColStd_HArray2OfInteger {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TColStd_HArray2OfInteger {
    TColStd_HArray2OfInteger* GetObject() {
        return (TColStd_HArray2OfInteger*)$self->Access();
    }
};
   
%nodefaultctor Handle_TColStd_HArray2OfReal;

class Handle_TColStd_HArray2OfReal : public Handle_MMgt_TShared {
    public:

        %feature("autodoc", "1");
        Handle_TColStd_HArray2OfReal();
        %feature("autodoc", "1");
        Handle_TColStd_HArray2OfReal(Handle_TColStd_HArray2OfReal const & aHandle);
        %feature("autodoc", "1");
        Handle_TColStd_HArray2OfReal(TColStd_HArray2OfReal const * anItem);
        %feature("autodoc", "1");
        Handle_TColStd_HArray2OfReal const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TColStd_HArray2OfReal::~Handle_TColStd_HArray2OfReal {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TColStd_HArray2OfReal {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TColStd_HArray2OfReal {
    TColStd_HArray2OfReal* GetObject() {
        return (TColStd_HArray2OfReal*)$self->Access();
    }
};
   
%nodefaultctor Handle_TColStd_HArray2OfTransient;

class Handle_TColStd_HArray2OfTransient : public Handle_MMgt_TShared {
    public:

        %feature("autodoc", "1");
        Handle_TColStd_HArray2OfTransient();
        %feature("autodoc", "1");
        Handle_TColStd_HArray2OfTransient(Handle_TColStd_HArray2OfTransient const & aHandle);
        %feature("autodoc", "1");
        Handle_TColStd_HArray2OfTransient(TColStd_HArray2OfTransient const * anItem);
        %feature("autodoc", "1");
        Handle_TColStd_HArray2OfTransient const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TColStd_HArray2OfTransient::~Handle_TColStd_HArray2OfTransient {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TColStd_HArray2OfTransient {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TColStd_HArray2OfTransient {
    TColStd_HArray2OfTransient* GetObject() {
        return (TColStd_HArray2OfTransient*)$self->Access();
    }
};
   
%nodefaultctor Handle_TColStd_HPackedMapOfInteger;

class Handle_TColStd_HPackedMapOfInteger : public Handle_MMgt_TShared {
    public:

        %feature("autodoc", "1");
        Handle_TColStd_HPackedMapOfInteger();
        %feature("autodoc", "1");
        Handle_TColStd_HPackedMapOfInteger(Handle_TColStd_HPackedMapOfInteger const & aHandle);
        %feature("autodoc", "1");
        Handle_TColStd_HPackedMapOfInteger(TColStd_HPackedMapOfInteger const * anItem);
        %feature("autodoc", "1");
        Handle_TColStd_HPackedMapOfInteger const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TColStd_HPackedMapOfInteger::~Handle_TColStd_HPackedMapOfInteger {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TColStd_HPackedMapOfInteger {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TColStd_HPackedMapOfInteger {
    TColStd_HPackedMapOfInteger* GetObject() {
        return (TColStd_HPackedMapOfInteger*)$self->Access();
    }
};
   
%nodefaultctor Handle_TColStd_HSequenceOfAsciiString;

class Handle_TColStd_HSequenceOfAsciiString : public Handle_MMgt_TShared {
    public:

        %feature("autodoc", "1");
        Handle_TColStd_HSequenceOfAsciiString();
        %feature("autodoc", "1");
        Handle_TColStd_HSequenceOfAsciiString(Handle_TColStd_HSequenceOfAsciiString const & aHandle);
        %feature("autodoc", "1");
        Handle_TColStd_HSequenceOfAsciiString(TColStd_HSequenceOfAsciiString const * anItem);
        %feature("autodoc", "1");
        Handle_TColStd_HSequenceOfAsciiString const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TColStd_HSequenceOfAsciiString::~Handle_TColStd_HSequenceOfAsciiString {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TColStd_HSequenceOfAsciiString {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TColStd_HSequenceOfAsciiString {
    TColStd_HSequenceOfAsciiString* GetObject() {
        return (TColStd_HSequenceOfAsciiString*)$self->Access();
    }
};
   
%nodefaultctor Handle_TColStd_HSequenceOfExtendedString;

class Handle_TColStd_HSequenceOfExtendedString : public Handle_MMgt_TShared {
    public:

        %feature("autodoc", "1");
        Handle_TColStd_HSequenceOfExtendedString();
        %feature("autodoc", "1");
        Handle_TColStd_HSequenceOfExtendedString(Handle_TColStd_HSequenceOfExtendedString const & aHandle);
        %feature("autodoc", "1");
        Handle_TColStd_HSequenceOfExtendedString(TColStd_HSequenceOfExtendedString const * anItem);
        %feature("autodoc", "1");
        Handle_TColStd_HSequenceOfExtendedString const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TColStd_HSequenceOfExtendedString::~Handle_TColStd_HSequenceOfExtendedString {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TColStd_HSequenceOfExtendedString {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TColStd_HSequenceOfExtendedString {
    TColStd_HSequenceOfExtendedString* GetObject() {
        return (TColStd_HSequenceOfExtendedString*)$self->Access();
    }
};
   
%nodefaultctor Handle_TColStd_HSequenceOfHAsciiString;

class Handle_TColStd_HSequenceOfHAsciiString : public Handle_MMgt_TShared {
    public:

        %feature("autodoc", "1");
        Handle_TColStd_HSequenceOfHAsciiString();
        %feature("autodoc", "1");
        Handle_TColStd_HSequenceOfHAsciiString(Handle_TColStd_HSequenceOfHAsciiString const & aHandle);
        %feature("autodoc", "1");
        Handle_TColStd_HSequenceOfHAsciiString(TColStd_HSequenceOfHAsciiString const * anItem);
        %feature("autodoc", "1");
        Handle_TColStd_HSequenceOfHAsciiString const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TColStd_HSequenceOfHAsciiString::~Handle_TColStd_HSequenceOfHAsciiString {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TColStd_HSequenceOfHAsciiString {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TColStd_HSequenceOfHAsciiString {
    TColStd_HSequenceOfHAsciiString* GetObject() {
        return (TColStd_HSequenceOfHAsciiString*)$self->Access();
    }
};
   
%nodefaultctor Handle_TColStd_HSequenceOfHExtendedString;

class Handle_TColStd_HSequenceOfHExtendedString : public Handle_MMgt_TShared {
    public:

        %feature("autodoc", "1");
        Handle_TColStd_HSequenceOfHExtendedString();
        %feature("autodoc", "1");
        Handle_TColStd_HSequenceOfHExtendedString(Handle_TColStd_HSequenceOfHExtendedString const & aHandle);
        %feature("autodoc", "1");
        Handle_TColStd_HSequenceOfHExtendedString(TColStd_HSequenceOfHExtendedString const * anItem);
        %feature("autodoc", "1");
        Handle_TColStd_HSequenceOfHExtendedString const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TColStd_HSequenceOfHExtendedString::~Handle_TColStd_HSequenceOfHExtendedString {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TColStd_HSequenceOfHExtendedString {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TColStd_HSequenceOfHExtendedString {
    TColStd_HSequenceOfHExtendedString* GetObject() {
        return (TColStd_HSequenceOfHExtendedString*)$self->Access();
    }
};
   
%nodefaultctor Handle_TColStd_HSequenceOfInteger;

class Handle_TColStd_HSequenceOfInteger : public Handle_MMgt_TShared {
    public:

        %feature("autodoc", "1");
        Handle_TColStd_HSequenceOfInteger();
        %feature("autodoc", "1");
        Handle_TColStd_HSequenceOfInteger(Handle_TColStd_HSequenceOfInteger const & aHandle);
        %feature("autodoc", "1");
        Handle_TColStd_HSequenceOfInteger(TColStd_HSequenceOfInteger const * anItem);
        %feature("autodoc", "1");
        Handle_TColStd_HSequenceOfInteger const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TColStd_HSequenceOfInteger::~Handle_TColStd_HSequenceOfInteger {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TColStd_HSequenceOfInteger {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TColStd_HSequenceOfInteger {
    TColStd_HSequenceOfInteger* GetObject() {
        return (TColStd_HSequenceOfInteger*)$self->Access();
    }
};
   
%nodefaultctor Handle_TColStd_HSequenceOfReal;

class Handle_TColStd_HSequenceOfReal : public Handle_MMgt_TShared {
    public:

        %feature("autodoc", "1");
        Handle_TColStd_HSequenceOfReal();
        %feature("autodoc", "1");
        Handle_TColStd_HSequenceOfReal(Handle_TColStd_HSequenceOfReal const & aHandle);
        %feature("autodoc", "1");
        Handle_TColStd_HSequenceOfReal(TColStd_HSequenceOfReal const * anItem);
        %feature("autodoc", "1");
        Handle_TColStd_HSequenceOfReal const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TColStd_HSequenceOfReal::~Handle_TColStd_HSequenceOfReal {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TColStd_HSequenceOfReal {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TColStd_HSequenceOfReal {
    TColStd_HSequenceOfReal* GetObject() {
        return (TColStd_HSequenceOfReal*)$self->Access();
    }
};
   
%nodefaultctor Handle_TColStd_HSequenceOfTransient;

class Handle_TColStd_HSequenceOfTransient : public Handle_MMgt_TShared {
    public:

        %feature("autodoc", "1");
        Handle_TColStd_HSequenceOfTransient();
        %feature("autodoc", "1");
        Handle_TColStd_HSequenceOfTransient(Handle_TColStd_HSequenceOfTransient const & aHandle);
        %feature("autodoc", "1");
        Handle_TColStd_HSequenceOfTransient(TColStd_HSequenceOfTransient const * anItem);
        %feature("autodoc", "1");
        Handle_TColStd_HSequenceOfTransient const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TColStd_HSequenceOfTransient::~Handle_TColStd_HSequenceOfTransient {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TColStd_HSequenceOfTransient {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TColStd_HSequenceOfTransient {
    TColStd_HSequenceOfTransient* GetObject() {
        return (TColStd_HSequenceOfTransient*)$self->Access();
    }
};
   
%nodefaultctor Handle_TColStd_HSetOfInteger;

class Handle_TColStd_HSetOfInteger : public Handle_MMgt_TShared {
    public:

        %feature("autodoc", "1");
        Handle_TColStd_HSetOfInteger();
        %feature("autodoc", "1");
        Handle_TColStd_HSetOfInteger(Handle_TColStd_HSetOfInteger const & aHandle);
        %feature("autodoc", "1");
        Handle_TColStd_HSetOfInteger(TColStd_HSetOfInteger const * anItem);
        %feature("autodoc", "1");
        Handle_TColStd_HSetOfInteger const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TColStd_HSetOfInteger::~Handle_TColStd_HSetOfInteger {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TColStd_HSetOfInteger {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TColStd_HSetOfInteger {
    TColStd_HSetOfInteger* GetObject() {
        return (TColStd_HSetOfInteger*)$self->Access();
    }
};
   
%nodefaultctor Handle_TColStd_HSetOfReal;

class Handle_TColStd_HSetOfReal : public Handle_MMgt_TShared {
    public:

        %feature("autodoc", "1");
        Handle_TColStd_HSetOfReal();
        %feature("autodoc", "1");
        Handle_TColStd_HSetOfReal(Handle_TColStd_HSetOfReal const & aHandle);
        %feature("autodoc", "1");
        Handle_TColStd_HSetOfReal(TColStd_HSetOfReal const * anItem);
        %feature("autodoc", "1");
        Handle_TColStd_HSetOfReal const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TColStd_HSetOfReal::~Handle_TColStd_HSetOfReal {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TColStd_HSetOfReal {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TColStd_HSetOfReal {
    TColStd_HSetOfReal* GetObject() {
        return (TColStd_HSetOfReal*)$self->Access();
    }
};
   
%nodefaultctor Handle_TColStd_HSetOfTransient;

class Handle_TColStd_HSetOfTransient : public Handle_MMgt_TShared {
    public:

        %feature("autodoc", "1");
        Handle_TColStd_HSetOfTransient();
        %feature("autodoc", "1");
        Handle_TColStd_HSetOfTransient(Handle_TColStd_HSetOfTransient const & aHandle);
        %feature("autodoc", "1");
        Handle_TColStd_HSetOfTransient(TColStd_HSetOfTransient const * anItem);
        %feature("autodoc", "1");
        Handle_TColStd_HSetOfTransient const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TColStd_HSetOfTransient::~Handle_TColStd_HSetOfTransient {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TColStd_HSetOfTransient {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TColStd_HSetOfTransient {
    TColStd_HSetOfTransient* GetObject() {
        return (TColStd_HSetOfTransient*)$self->Access();
    }
};
   
%nodefaultctor Handle_TColStd_DataMapNodeOfDataMapOfIntegerInteger;

class Handle_TColStd_DataMapNodeOfDataMapOfIntegerInteger : public Handle_TCollection_MapNode {
    public:

        %feature("autodoc", "1");
        Handle_TColStd_DataMapNodeOfDataMapOfIntegerInteger();
        %feature("autodoc", "1");
        Handle_TColStd_DataMapNodeOfDataMapOfIntegerInteger(Handle_TColStd_DataMapNodeOfDataMapOfIntegerInteger const & aHandle);
        %feature("autodoc", "1");
        Handle_TColStd_DataMapNodeOfDataMapOfIntegerInteger(TColStd_DataMapNodeOfDataMapOfIntegerInteger const * anItem);
        %feature("autodoc", "1");
        Handle_TColStd_DataMapNodeOfDataMapOfIntegerInteger const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TColStd_DataMapNodeOfDataMapOfIntegerInteger::~Handle_TColStd_DataMapNodeOfDataMapOfIntegerInteger {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TColStd_DataMapNodeOfDataMapOfIntegerInteger {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TColStd_DataMapNodeOfDataMapOfIntegerInteger {
    TColStd_DataMapNodeOfDataMapOfIntegerInteger* GetObject() {
        return (TColStd_DataMapNodeOfDataMapOfIntegerInteger*)$self->Access();
    }
};
   
%nodefaultctor Handle_TColStd_DataMapNodeOfDataMapOfIntegerListOfInteger;

class Handle_TColStd_DataMapNodeOfDataMapOfIntegerListOfInteger : public Handle_TCollection_MapNode {
    public:

        %feature("autodoc", "1");
        Handle_TColStd_DataMapNodeOfDataMapOfIntegerListOfInteger();
        %feature("autodoc", "1");
        Handle_TColStd_DataMapNodeOfDataMapOfIntegerListOfInteger(Handle_TColStd_DataMapNodeOfDataMapOfIntegerListOfInteger const & aHandle);
        %feature("autodoc", "1");
        Handle_TColStd_DataMapNodeOfDataMapOfIntegerListOfInteger(TColStd_DataMapNodeOfDataMapOfIntegerListOfInteger const * anItem);
        %feature("autodoc", "1");
        Handle_TColStd_DataMapNodeOfDataMapOfIntegerListOfInteger const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TColStd_DataMapNodeOfDataMapOfIntegerListOfInteger::~Handle_TColStd_DataMapNodeOfDataMapOfIntegerListOfInteger {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TColStd_DataMapNodeOfDataMapOfIntegerListOfInteger {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TColStd_DataMapNodeOfDataMapOfIntegerListOfInteger {
    TColStd_DataMapNodeOfDataMapOfIntegerListOfInteger* GetObject() {
        return (TColStd_DataMapNodeOfDataMapOfIntegerListOfInteger*)$self->Access();
    }
};
   
%nodefaultctor Handle_TColStd_DataMapNodeOfDataMapOfIntegerReal;

class Handle_TColStd_DataMapNodeOfDataMapOfIntegerReal : public Handle_TCollection_MapNode {
    public:

        %feature("autodoc", "1");
        Handle_TColStd_DataMapNodeOfDataMapOfIntegerReal();
        %feature("autodoc", "1");
        Handle_TColStd_DataMapNodeOfDataMapOfIntegerReal(Handle_TColStd_DataMapNodeOfDataMapOfIntegerReal const & aHandle);
        %feature("autodoc", "1");
        Handle_TColStd_DataMapNodeOfDataMapOfIntegerReal(TColStd_DataMapNodeOfDataMapOfIntegerReal const * anItem);
        %feature("autodoc", "1");
        Handle_TColStd_DataMapNodeOfDataMapOfIntegerReal const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TColStd_DataMapNodeOfDataMapOfIntegerReal::~Handle_TColStd_DataMapNodeOfDataMapOfIntegerReal {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TColStd_DataMapNodeOfDataMapOfIntegerReal {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TColStd_DataMapNodeOfDataMapOfIntegerReal {
    TColStd_DataMapNodeOfDataMapOfIntegerReal* GetObject() {
        return (TColStd_DataMapNodeOfDataMapOfIntegerReal*)$self->Access();
    }
};
   
%nodefaultctor Handle_TColStd_IndexedDataMapNodeOfIndexedDataMapOfTransientTransient;

class Handle_TColStd_IndexedDataMapNodeOfIndexedDataMapOfTransientTransient : public Handle_TCollection_MapNode {
    public:

        %feature("autodoc", "1");
        Handle_TColStd_IndexedDataMapNodeOfIndexedDataMapOfTransientTransient();
        %feature("autodoc", "1");
        Handle_TColStd_IndexedDataMapNodeOfIndexedDataMapOfTransientTransient(Handle_TColStd_IndexedDataMapNodeOfIndexedDataMapOfTransientTransient const & aHandle);
        %feature("autodoc", "1");
        Handle_TColStd_IndexedDataMapNodeOfIndexedDataMapOfTransientTransient(TColStd_IndexedDataMapNodeOfIndexedDataMapOfTransientTransient const * anItem);
        %feature("autodoc", "1");
        Handle_TColStd_IndexedDataMapNodeOfIndexedDataMapOfTransientTransient const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TColStd_IndexedDataMapNodeOfIndexedDataMapOfTransientTransient::~Handle_TColStd_IndexedDataMapNodeOfIndexedDataMapOfTransientTransient {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TColStd_IndexedDataMapNodeOfIndexedDataMapOfTransientTransient {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TColStd_IndexedDataMapNodeOfIndexedDataMapOfTransientTransient {
    TColStd_IndexedDataMapNodeOfIndexedDataMapOfTransientTransient* GetObject() {
        return (TColStd_IndexedDataMapNodeOfIndexedDataMapOfTransientTransient*)$self->Access();
    }
};
   
%nodefaultctor Handle_TColStd_IndexedMapNodeOfIndexedMapOfInteger;

class Handle_TColStd_IndexedMapNodeOfIndexedMapOfInteger : public Handle_TCollection_MapNode {
    public:

        %feature("autodoc", "1");
        Handle_TColStd_IndexedMapNodeOfIndexedMapOfInteger();
        %feature("autodoc", "1");
        Handle_TColStd_IndexedMapNodeOfIndexedMapOfInteger(Handle_TColStd_IndexedMapNodeOfIndexedMapOfInteger const & aHandle);
        %feature("autodoc", "1");
        Handle_TColStd_IndexedMapNodeOfIndexedMapOfInteger(TColStd_IndexedMapNodeOfIndexedMapOfInteger const * anItem);
        %feature("autodoc", "1");
        Handle_TColStd_IndexedMapNodeOfIndexedMapOfInteger const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TColStd_IndexedMapNodeOfIndexedMapOfInteger::~Handle_TColStd_IndexedMapNodeOfIndexedMapOfInteger {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TColStd_IndexedMapNodeOfIndexedMapOfInteger {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TColStd_IndexedMapNodeOfIndexedMapOfInteger {
    TColStd_IndexedMapNodeOfIndexedMapOfInteger* GetObject() {
        return (TColStd_IndexedMapNodeOfIndexedMapOfInteger*)$self->Access();
    }
};
   
%nodefaultctor Handle_TColStd_IndexedMapNodeOfIndexedMapOfReal;

class Handle_TColStd_IndexedMapNodeOfIndexedMapOfReal : public Handle_TCollection_MapNode {
    public:

        %feature("autodoc", "1");
        Handle_TColStd_IndexedMapNodeOfIndexedMapOfReal();
        %feature("autodoc", "1");
        Handle_TColStd_IndexedMapNodeOfIndexedMapOfReal(Handle_TColStd_IndexedMapNodeOfIndexedMapOfReal const & aHandle);
        %feature("autodoc", "1");
        Handle_TColStd_IndexedMapNodeOfIndexedMapOfReal(TColStd_IndexedMapNodeOfIndexedMapOfReal const * anItem);
        %feature("autodoc", "1");
        Handle_TColStd_IndexedMapNodeOfIndexedMapOfReal const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TColStd_IndexedMapNodeOfIndexedMapOfReal::~Handle_TColStd_IndexedMapNodeOfIndexedMapOfReal {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TColStd_IndexedMapNodeOfIndexedMapOfReal {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TColStd_IndexedMapNodeOfIndexedMapOfReal {
    TColStd_IndexedMapNodeOfIndexedMapOfReal* GetObject() {
        return (TColStd_IndexedMapNodeOfIndexedMapOfReal*)$self->Access();
    }
};
   
%nodefaultctor Handle_TColStd_IndexedMapNodeOfIndexedMapOfTransient;

class Handle_TColStd_IndexedMapNodeOfIndexedMapOfTransient : public Handle_TCollection_MapNode {
    public:

        %feature("autodoc", "1");
        Handle_TColStd_IndexedMapNodeOfIndexedMapOfTransient();
        %feature("autodoc", "1");
        Handle_TColStd_IndexedMapNodeOfIndexedMapOfTransient(Handle_TColStd_IndexedMapNodeOfIndexedMapOfTransient const & aHandle);
        %feature("autodoc", "1");
        Handle_TColStd_IndexedMapNodeOfIndexedMapOfTransient(TColStd_IndexedMapNodeOfIndexedMapOfTransient const * anItem);
        %feature("autodoc", "1");
        Handle_TColStd_IndexedMapNodeOfIndexedMapOfTransient const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TColStd_IndexedMapNodeOfIndexedMapOfTransient::~Handle_TColStd_IndexedMapNodeOfIndexedMapOfTransient {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TColStd_IndexedMapNodeOfIndexedMapOfTransient {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TColStd_IndexedMapNodeOfIndexedMapOfTransient {
    TColStd_IndexedMapNodeOfIndexedMapOfTransient* GetObject() {
        return (TColStd_IndexedMapNodeOfIndexedMapOfTransient*)$self->Access();
    }
};
   
%nodefaultctor Handle_TColStd_ListNodeOfListOfInteger;

class Handle_TColStd_ListNodeOfListOfInteger : public Handle_TCollection_MapNode {
    public:

        %feature("autodoc", "1");
        Handle_TColStd_ListNodeOfListOfInteger();
        %feature("autodoc", "1");
        Handle_TColStd_ListNodeOfListOfInteger(Handle_TColStd_ListNodeOfListOfInteger const & aHandle);
        %feature("autodoc", "1");
        Handle_TColStd_ListNodeOfListOfInteger(TColStd_ListNodeOfListOfInteger const * anItem);
        %feature("autodoc", "1");
        Handle_TColStd_ListNodeOfListOfInteger const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TColStd_ListNodeOfListOfInteger::~Handle_TColStd_ListNodeOfListOfInteger {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TColStd_ListNodeOfListOfInteger {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TColStd_ListNodeOfListOfInteger {
    TColStd_ListNodeOfListOfInteger* GetObject() {
        return (TColStd_ListNodeOfListOfInteger*)$self->Access();
    }
};
   
%nodefaultctor Handle_TColStd_ListNodeOfListOfReal;

class Handle_TColStd_ListNodeOfListOfReal : public Handle_TCollection_MapNode {
    public:

        %feature("autodoc", "1");
        Handle_TColStd_ListNodeOfListOfReal();
        %feature("autodoc", "1");
        Handle_TColStd_ListNodeOfListOfReal(Handle_TColStd_ListNodeOfListOfReal const & aHandle);
        %feature("autodoc", "1");
        Handle_TColStd_ListNodeOfListOfReal(TColStd_ListNodeOfListOfReal const * anItem);
        %feature("autodoc", "1");
        Handle_TColStd_ListNodeOfListOfReal const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TColStd_ListNodeOfListOfReal::~Handle_TColStd_ListNodeOfListOfReal {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TColStd_ListNodeOfListOfReal {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TColStd_ListNodeOfListOfReal {
    TColStd_ListNodeOfListOfReal* GetObject() {
        return (TColStd_ListNodeOfListOfReal*)$self->Access();
    }
};
   
%nodefaultctor Handle_TColStd_ListNodeOfListOfTransient;

class Handle_TColStd_ListNodeOfListOfTransient : public Handle_TCollection_MapNode {
    public:

        %feature("autodoc", "1");
        Handle_TColStd_ListNodeOfListOfTransient();
        %feature("autodoc", "1");
        Handle_TColStd_ListNodeOfListOfTransient(Handle_TColStd_ListNodeOfListOfTransient const & aHandle);
        %feature("autodoc", "1");
        Handle_TColStd_ListNodeOfListOfTransient(TColStd_ListNodeOfListOfTransient const * anItem);
        %feature("autodoc", "1");
        Handle_TColStd_ListNodeOfListOfTransient const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TColStd_ListNodeOfListOfTransient::~Handle_TColStd_ListNodeOfListOfTransient {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TColStd_ListNodeOfListOfTransient {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TColStd_ListNodeOfListOfTransient {
    TColStd_ListNodeOfListOfTransient* GetObject() {
        return (TColStd_ListNodeOfListOfTransient*)$self->Access();
    }
};
   
%nodefaultctor Handle_TColStd_ListNodeOfSetListOfSetOfInteger;

class Handle_TColStd_ListNodeOfSetListOfSetOfInteger : public Handle_TCollection_MapNode {
    public:

        %feature("autodoc", "1");
        Handle_TColStd_ListNodeOfSetListOfSetOfInteger();
        %feature("autodoc", "1");
        Handle_TColStd_ListNodeOfSetListOfSetOfInteger(Handle_TColStd_ListNodeOfSetListOfSetOfInteger const & aHandle);
        %feature("autodoc", "1");
        Handle_TColStd_ListNodeOfSetListOfSetOfInteger(TColStd_ListNodeOfSetListOfSetOfInteger const * anItem);
        %feature("autodoc", "1");
        Handle_TColStd_ListNodeOfSetListOfSetOfInteger const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TColStd_ListNodeOfSetListOfSetOfInteger::~Handle_TColStd_ListNodeOfSetListOfSetOfInteger {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TColStd_ListNodeOfSetListOfSetOfInteger {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TColStd_ListNodeOfSetListOfSetOfInteger {
    TColStd_ListNodeOfSetListOfSetOfInteger* GetObject() {
        return (TColStd_ListNodeOfSetListOfSetOfInteger*)$self->Access();
    }
};
   
%nodefaultctor Handle_TColStd_ListNodeOfSetListOfSetOfReal;

class Handle_TColStd_ListNodeOfSetListOfSetOfReal : public Handle_TCollection_MapNode {
    public:

        %feature("autodoc", "1");
        Handle_TColStd_ListNodeOfSetListOfSetOfReal();
        %feature("autodoc", "1");
        Handle_TColStd_ListNodeOfSetListOfSetOfReal(Handle_TColStd_ListNodeOfSetListOfSetOfReal const & aHandle);
        %feature("autodoc", "1");
        Handle_TColStd_ListNodeOfSetListOfSetOfReal(TColStd_ListNodeOfSetListOfSetOfReal const * anItem);
        %feature("autodoc", "1");
        Handle_TColStd_ListNodeOfSetListOfSetOfReal const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TColStd_ListNodeOfSetListOfSetOfReal::~Handle_TColStd_ListNodeOfSetListOfSetOfReal {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TColStd_ListNodeOfSetListOfSetOfReal {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TColStd_ListNodeOfSetListOfSetOfReal {
    TColStd_ListNodeOfSetListOfSetOfReal* GetObject() {
        return (TColStd_ListNodeOfSetListOfSetOfReal*)$self->Access();
    }
};
   
%nodefaultctor Handle_TColStd_ListNodeOfSetListOfSetOfTransient;

class Handle_TColStd_ListNodeOfSetListOfSetOfTransient : public Handle_TCollection_MapNode {
    public:

        %feature("autodoc", "1");
        Handle_TColStd_ListNodeOfSetListOfSetOfTransient();
        %feature("autodoc", "1");
        Handle_TColStd_ListNodeOfSetListOfSetOfTransient(Handle_TColStd_ListNodeOfSetListOfSetOfTransient const & aHandle);
        %feature("autodoc", "1");
        Handle_TColStd_ListNodeOfSetListOfSetOfTransient(TColStd_ListNodeOfSetListOfSetOfTransient const * anItem);
        %feature("autodoc", "1");
        Handle_TColStd_ListNodeOfSetListOfSetOfTransient const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TColStd_ListNodeOfSetListOfSetOfTransient::~Handle_TColStd_ListNodeOfSetListOfSetOfTransient {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TColStd_ListNodeOfSetListOfSetOfTransient {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TColStd_ListNodeOfSetListOfSetOfTransient {
    TColStd_ListNodeOfSetListOfSetOfTransient* GetObject() {
        return (TColStd_ListNodeOfSetListOfSetOfTransient*)$self->Access();
    }
};
   
%nodefaultctor Handle_TColStd_QueueNodeOfQueueOfInteger;

class Handle_TColStd_QueueNodeOfQueueOfInteger : public Handle_TCollection_MapNode {
    public:

        %feature("autodoc", "1");
        Handle_TColStd_QueueNodeOfQueueOfInteger();
        %feature("autodoc", "1");
        Handle_TColStd_QueueNodeOfQueueOfInteger(Handle_TColStd_QueueNodeOfQueueOfInteger const & aHandle);
        %feature("autodoc", "1");
        Handle_TColStd_QueueNodeOfQueueOfInteger(TColStd_QueueNodeOfQueueOfInteger const * anItem);
        %feature("autodoc", "1");
        Handle_TColStd_QueueNodeOfQueueOfInteger const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TColStd_QueueNodeOfQueueOfInteger::~Handle_TColStd_QueueNodeOfQueueOfInteger {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TColStd_QueueNodeOfQueueOfInteger {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TColStd_QueueNodeOfQueueOfInteger {
    TColStd_QueueNodeOfQueueOfInteger* GetObject() {
        return (TColStd_QueueNodeOfQueueOfInteger*)$self->Access();
    }
};
   
%nodefaultctor Handle_TColStd_QueueNodeOfQueueOfReal;

class Handle_TColStd_QueueNodeOfQueueOfReal : public Handle_TCollection_MapNode {
    public:

        %feature("autodoc", "1");
        Handle_TColStd_QueueNodeOfQueueOfReal();
        %feature("autodoc", "1");
        Handle_TColStd_QueueNodeOfQueueOfReal(Handle_TColStd_QueueNodeOfQueueOfReal const & aHandle);
        %feature("autodoc", "1");
        Handle_TColStd_QueueNodeOfQueueOfReal(TColStd_QueueNodeOfQueueOfReal const * anItem);
        %feature("autodoc", "1");
        Handle_TColStd_QueueNodeOfQueueOfReal const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TColStd_QueueNodeOfQueueOfReal::~Handle_TColStd_QueueNodeOfQueueOfReal {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TColStd_QueueNodeOfQueueOfReal {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TColStd_QueueNodeOfQueueOfReal {
    TColStd_QueueNodeOfQueueOfReal* GetObject() {
        return (TColStd_QueueNodeOfQueueOfReal*)$self->Access();
    }
};
   
%nodefaultctor Handle_TColStd_QueueNodeOfQueueOfTransient;

class Handle_TColStd_QueueNodeOfQueueOfTransient : public Handle_TCollection_MapNode {
    public:

        %feature("autodoc", "1");
        Handle_TColStd_QueueNodeOfQueueOfTransient();
        %feature("autodoc", "1");
        Handle_TColStd_QueueNodeOfQueueOfTransient(Handle_TColStd_QueueNodeOfQueueOfTransient const & aHandle);
        %feature("autodoc", "1");
        Handle_TColStd_QueueNodeOfQueueOfTransient(TColStd_QueueNodeOfQueueOfTransient const * anItem);
        %feature("autodoc", "1");
        Handle_TColStd_QueueNodeOfQueueOfTransient const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TColStd_QueueNodeOfQueueOfTransient::~Handle_TColStd_QueueNodeOfQueueOfTransient {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TColStd_QueueNodeOfQueueOfTransient {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TColStd_QueueNodeOfQueueOfTransient {
    TColStd_QueueNodeOfQueueOfTransient* GetObject() {
        return (TColStd_QueueNodeOfQueueOfTransient*)$self->Access();
    }
};
   
%nodefaultctor Handle_TColStd_StackNodeOfStackOfInteger;

class Handle_TColStd_StackNodeOfStackOfInteger : public Handle_TCollection_MapNode {
    public:

        %feature("autodoc", "1");
        Handle_TColStd_StackNodeOfStackOfInteger();
        %feature("autodoc", "1");
        Handle_TColStd_StackNodeOfStackOfInteger(Handle_TColStd_StackNodeOfStackOfInteger const & aHandle);
        %feature("autodoc", "1");
        Handle_TColStd_StackNodeOfStackOfInteger(TColStd_StackNodeOfStackOfInteger const * anItem);
        %feature("autodoc", "1");
        Handle_TColStd_StackNodeOfStackOfInteger const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TColStd_StackNodeOfStackOfInteger::~Handle_TColStd_StackNodeOfStackOfInteger {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TColStd_StackNodeOfStackOfInteger {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TColStd_StackNodeOfStackOfInteger {
    TColStd_StackNodeOfStackOfInteger* GetObject() {
        return (TColStd_StackNodeOfStackOfInteger*)$self->Access();
    }
};
   
%nodefaultctor Handle_TColStd_StackNodeOfStackOfReal;

class Handle_TColStd_StackNodeOfStackOfReal : public Handle_TCollection_MapNode {
    public:

        %feature("autodoc", "1");
        Handle_TColStd_StackNodeOfStackOfReal();
        %feature("autodoc", "1");
        Handle_TColStd_StackNodeOfStackOfReal(Handle_TColStd_StackNodeOfStackOfReal const & aHandle);
        %feature("autodoc", "1");
        Handle_TColStd_StackNodeOfStackOfReal(TColStd_StackNodeOfStackOfReal const * anItem);
        %feature("autodoc", "1");
        Handle_TColStd_StackNodeOfStackOfReal const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TColStd_StackNodeOfStackOfReal::~Handle_TColStd_StackNodeOfStackOfReal {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TColStd_StackNodeOfStackOfReal {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TColStd_StackNodeOfStackOfReal {
    TColStd_StackNodeOfStackOfReal* GetObject() {
        return (TColStd_StackNodeOfStackOfReal*)$self->Access();
    }
};
   
%nodefaultctor Handle_TColStd_StackNodeOfStackOfTransient;

class Handle_TColStd_StackNodeOfStackOfTransient : public Handle_TCollection_MapNode {
    public:

        %feature("autodoc", "1");
        Handle_TColStd_StackNodeOfStackOfTransient();
        %feature("autodoc", "1");
        Handle_TColStd_StackNodeOfStackOfTransient(Handle_TColStd_StackNodeOfStackOfTransient const & aHandle);
        %feature("autodoc", "1");
        Handle_TColStd_StackNodeOfStackOfTransient(TColStd_StackNodeOfStackOfTransient const * anItem);
        %feature("autodoc", "1");
        Handle_TColStd_StackNodeOfStackOfTransient const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TColStd_StackNodeOfStackOfTransient::~Handle_TColStd_StackNodeOfStackOfTransient {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TColStd_StackNodeOfStackOfTransient {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TColStd_StackNodeOfStackOfTransient {
    TColStd_StackNodeOfStackOfTransient* GetObject() {
        return (TColStd_StackNodeOfStackOfTransient*)$self->Access();
    }
};
   
%nodefaultctor Handle_TColStd_StdMapNodeOfMapOfInteger;

class Handle_TColStd_StdMapNodeOfMapOfInteger : public Handle_TCollection_MapNode {
    public:

        %feature("autodoc", "1");
        Handle_TColStd_StdMapNodeOfMapOfInteger();
        %feature("autodoc", "1");
        Handle_TColStd_StdMapNodeOfMapOfInteger(Handle_TColStd_StdMapNodeOfMapOfInteger const & aHandle);
        %feature("autodoc", "1");
        Handle_TColStd_StdMapNodeOfMapOfInteger(TColStd_StdMapNodeOfMapOfInteger const * anItem);
        %feature("autodoc", "1");
        Handle_TColStd_StdMapNodeOfMapOfInteger const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TColStd_StdMapNodeOfMapOfInteger::~Handle_TColStd_StdMapNodeOfMapOfInteger {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TColStd_StdMapNodeOfMapOfInteger {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TColStd_StdMapNodeOfMapOfInteger {
    TColStd_StdMapNodeOfMapOfInteger* GetObject() {
        return (TColStd_StdMapNodeOfMapOfInteger*)$self->Access();
    }
};
   
%nodefaultctor Handle_TColStd_StdMapNodeOfMapOfReal;

class Handle_TColStd_StdMapNodeOfMapOfReal : public Handle_TCollection_MapNode {
    public:

        %feature("autodoc", "1");
        Handle_TColStd_StdMapNodeOfMapOfReal();
        %feature("autodoc", "1");
        Handle_TColStd_StdMapNodeOfMapOfReal(Handle_TColStd_StdMapNodeOfMapOfReal const & aHandle);
        %feature("autodoc", "1");
        Handle_TColStd_StdMapNodeOfMapOfReal(TColStd_StdMapNodeOfMapOfReal const * anItem);
        %feature("autodoc", "1");
        Handle_TColStd_StdMapNodeOfMapOfReal const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TColStd_StdMapNodeOfMapOfReal::~Handle_TColStd_StdMapNodeOfMapOfReal {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TColStd_StdMapNodeOfMapOfReal {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TColStd_StdMapNodeOfMapOfReal {
    TColStd_StdMapNodeOfMapOfReal* GetObject() {
        return (TColStd_StdMapNodeOfMapOfReal*)$self->Access();
    }
};
   
%nodefaultctor Handle_TColStd_StdMapNodeOfMapOfTransient;

class Handle_TColStd_StdMapNodeOfMapOfTransient : public Handle_TCollection_MapNode {
    public:

        %feature("autodoc", "1");
        Handle_TColStd_StdMapNodeOfMapOfTransient();
        %feature("autodoc", "1");
        Handle_TColStd_StdMapNodeOfMapOfTransient(Handle_TColStd_StdMapNodeOfMapOfTransient const & aHandle);
        %feature("autodoc", "1");
        Handle_TColStd_StdMapNodeOfMapOfTransient(TColStd_StdMapNodeOfMapOfTransient const * anItem);
        %feature("autodoc", "1");
        Handle_TColStd_StdMapNodeOfMapOfTransient const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TColStd_StdMapNodeOfMapOfTransient::~Handle_TColStd_StdMapNodeOfMapOfTransient {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TColStd_StdMapNodeOfMapOfTransient {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TColStd_StdMapNodeOfMapOfTransient {
    TColStd_StdMapNodeOfMapOfTransient* GetObject() {
        return (TColStd_StdMapNodeOfMapOfTransient*)$self->Access();
    }
};
   
%nodefaultctor Handle_TColStd_SequenceNodeOfSequenceOfAsciiString;

class Handle_TColStd_SequenceNodeOfSequenceOfAsciiString : public Handle_TCollection_SeqNode {
    public:

        %feature("autodoc", "1");
        Handle_TColStd_SequenceNodeOfSequenceOfAsciiString();
        %feature("autodoc", "1");
        Handle_TColStd_SequenceNodeOfSequenceOfAsciiString(Handle_TColStd_SequenceNodeOfSequenceOfAsciiString const & aHandle);
        %feature("autodoc", "1");
        Handle_TColStd_SequenceNodeOfSequenceOfAsciiString(TColStd_SequenceNodeOfSequenceOfAsciiString const * anItem);
        %feature("autodoc", "1");
        Handle_TColStd_SequenceNodeOfSequenceOfAsciiString const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TColStd_SequenceNodeOfSequenceOfAsciiString::~Handle_TColStd_SequenceNodeOfSequenceOfAsciiString {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TColStd_SequenceNodeOfSequenceOfAsciiString {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TColStd_SequenceNodeOfSequenceOfAsciiString {
    TColStd_SequenceNodeOfSequenceOfAsciiString* GetObject() {
        return (TColStd_SequenceNodeOfSequenceOfAsciiString*)$self->Access();
    }
};
   
%nodefaultctor Handle_TColStd_SequenceNodeOfSequenceOfExtendedString;

class Handle_TColStd_SequenceNodeOfSequenceOfExtendedString : public Handle_TCollection_SeqNode {
    public:

        %feature("autodoc", "1");
        Handle_TColStd_SequenceNodeOfSequenceOfExtendedString();
        %feature("autodoc", "1");
        Handle_TColStd_SequenceNodeOfSequenceOfExtendedString(Handle_TColStd_SequenceNodeOfSequenceOfExtendedString const & aHandle);
        %feature("autodoc", "1");
        Handle_TColStd_SequenceNodeOfSequenceOfExtendedString(TColStd_SequenceNodeOfSequenceOfExtendedString const * anItem);
        %feature("autodoc", "1");
        Handle_TColStd_SequenceNodeOfSequenceOfExtendedString const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TColStd_SequenceNodeOfSequenceOfExtendedString::~Handle_TColStd_SequenceNodeOfSequenceOfExtendedString {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TColStd_SequenceNodeOfSequenceOfExtendedString {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TColStd_SequenceNodeOfSequenceOfExtendedString {
    TColStd_SequenceNodeOfSequenceOfExtendedString* GetObject() {
        return (TColStd_SequenceNodeOfSequenceOfExtendedString*)$self->Access();
    }
};
   
%nodefaultctor Handle_TColStd_SequenceNodeOfSequenceOfHAsciiString;

class Handle_TColStd_SequenceNodeOfSequenceOfHAsciiString : public Handle_TCollection_SeqNode {
    public:

        %feature("autodoc", "1");
        Handle_TColStd_SequenceNodeOfSequenceOfHAsciiString();
        %feature("autodoc", "1");
        Handle_TColStd_SequenceNodeOfSequenceOfHAsciiString(Handle_TColStd_SequenceNodeOfSequenceOfHAsciiString const & aHandle);
        %feature("autodoc", "1");
        Handle_TColStd_SequenceNodeOfSequenceOfHAsciiString(TColStd_SequenceNodeOfSequenceOfHAsciiString const * anItem);
        %feature("autodoc", "1");
        Handle_TColStd_SequenceNodeOfSequenceOfHAsciiString const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TColStd_SequenceNodeOfSequenceOfHAsciiString::~Handle_TColStd_SequenceNodeOfSequenceOfHAsciiString {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TColStd_SequenceNodeOfSequenceOfHAsciiString {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TColStd_SequenceNodeOfSequenceOfHAsciiString {
    TColStd_SequenceNodeOfSequenceOfHAsciiString* GetObject() {
        return (TColStd_SequenceNodeOfSequenceOfHAsciiString*)$self->Access();
    }
};
   
%nodefaultctor Handle_TColStd_SequenceNodeOfSequenceOfHExtendedString;

class Handle_TColStd_SequenceNodeOfSequenceOfHExtendedString : public Handle_TCollection_SeqNode {
    public:

        %feature("autodoc", "1");
        Handle_TColStd_SequenceNodeOfSequenceOfHExtendedString();
        %feature("autodoc", "1");
        Handle_TColStd_SequenceNodeOfSequenceOfHExtendedString(Handle_TColStd_SequenceNodeOfSequenceOfHExtendedString const & aHandle);
        %feature("autodoc", "1");
        Handle_TColStd_SequenceNodeOfSequenceOfHExtendedString(TColStd_SequenceNodeOfSequenceOfHExtendedString const * anItem);
        %feature("autodoc", "1");
        Handle_TColStd_SequenceNodeOfSequenceOfHExtendedString const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TColStd_SequenceNodeOfSequenceOfHExtendedString::~Handle_TColStd_SequenceNodeOfSequenceOfHExtendedString {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TColStd_SequenceNodeOfSequenceOfHExtendedString {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TColStd_SequenceNodeOfSequenceOfHExtendedString {
    TColStd_SequenceNodeOfSequenceOfHExtendedString* GetObject() {
        return (TColStd_SequenceNodeOfSequenceOfHExtendedString*)$self->Access();
    }
};
   
%nodefaultctor Handle_TColStd_SequenceNodeOfSequenceOfInteger;

class Handle_TColStd_SequenceNodeOfSequenceOfInteger : public Handle_TCollection_SeqNode {
    public:

        %feature("autodoc", "1");
        Handle_TColStd_SequenceNodeOfSequenceOfInteger();
        %feature("autodoc", "1");
        Handle_TColStd_SequenceNodeOfSequenceOfInteger(Handle_TColStd_SequenceNodeOfSequenceOfInteger const & aHandle);
        %feature("autodoc", "1");
        Handle_TColStd_SequenceNodeOfSequenceOfInteger(TColStd_SequenceNodeOfSequenceOfInteger const * anItem);
        %feature("autodoc", "1");
        Handle_TColStd_SequenceNodeOfSequenceOfInteger const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TColStd_SequenceNodeOfSequenceOfInteger::~Handle_TColStd_SequenceNodeOfSequenceOfInteger {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TColStd_SequenceNodeOfSequenceOfInteger {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TColStd_SequenceNodeOfSequenceOfInteger {
    TColStd_SequenceNodeOfSequenceOfInteger* GetObject() {
        return (TColStd_SequenceNodeOfSequenceOfInteger*)$self->Access();
    }
};
   
%nodefaultctor Handle_TColStd_SequenceNodeOfSequenceOfReal;

class Handle_TColStd_SequenceNodeOfSequenceOfReal : public Handle_TCollection_SeqNode {
    public:

        %feature("autodoc", "1");
        Handle_TColStd_SequenceNodeOfSequenceOfReal();
        %feature("autodoc", "1");
        Handle_TColStd_SequenceNodeOfSequenceOfReal(Handle_TColStd_SequenceNodeOfSequenceOfReal const & aHandle);
        %feature("autodoc", "1");
        Handle_TColStd_SequenceNodeOfSequenceOfReal(TColStd_SequenceNodeOfSequenceOfReal const * anItem);
        %feature("autodoc", "1");
        Handle_TColStd_SequenceNodeOfSequenceOfReal const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TColStd_SequenceNodeOfSequenceOfReal::~Handle_TColStd_SequenceNodeOfSequenceOfReal {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TColStd_SequenceNodeOfSequenceOfReal {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TColStd_SequenceNodeOfSequenceOfReal {
    TColStd_SequenceNodeOfSequenceOfReal* GetObject() {
        return (TColStd_SequenceNodeOfSequenceOfReal*)$self->Access();
    }
};
   
%nodefaultctor Handle_TColStd_SequenceNodeOfSequenceOfTransient;

class Handle_TColStd_SequenceNodeOfSequenceOfTransient : public Handle_TCollection_SeqNode {
    public:

        %feature("autodoc", "1");
        Handle_TColStd_SequenceNodeOfSequenceOfTransient();
        %feature("autodoc", "1");
        Handle_TColStd_SequenceNodeOfSequenceOfTransient(Handle_TColStd_SequenceNodeOfSequenceOfTransient const & aHandle);
        %feature("autodoc", "1");
        Handle_TColStd_SequenceNodeOfSequenceOfTransient(TColStd_SequenceNodeOfSequenceOfTransient const * anItem);
        %feature("autodoc", "1");
        Handle_TColStd_SequenceNodeOfSequenceOfTransient const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TColStd_SequenceNodeOfSequenceOfTransient::~Handle_TColStd_SequenceNodeOfSequenceOfTransient {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TColStd_SequenceNodeOfSequenceOfTransient {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TColStd_SequenceNodeOfSequenceOfTransient {
    TColStd_SequenceNodeOfSequenceOfTransient* GetObject() {
        return (TColStd_SequenceNodeOfSequenceOfTransient*)$self->Access();
    }
};
   
%nodefaultctor TColStd_HArray1OfAsciiString;

class TColStd_HArray1OfAsciiString : public MMgt_TShared {
    public:

        %feature("autodoc", "1");
        TColStd_HArray1OfAsciiString(Standard_Integer const Low, Standard_Integer const Up);
        %feature("autodoc", "1");
        TColStd_HArray1OfAsciiString(Standard_Integer const Low, Standard_Integer const Up, TCollection_AsciiString const & V);
        %feature("autodoc", "1");
        void Init(TCollection_AsciiString const & V);
        %feature("autodoc", "1");
        Standard_Integer Length() const;
        %feature("autodoc", "1");
        Standard_Integer Lower() const;
        %feature("autodoc", "1");
        Standard_Integer Upper() const;
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const Index, TCollection_AsciiString const & Value);
        %feature("autodoc", "1");
        TCollection_AsciiString const & Value(Standard_Integer const Index) const;
        %feature("autodoc", "1");
        TCollection_AsciiString & ChangeValue(Standard_Integer const Index);
        %feature("autodoc", "1");
        TColStd_Array1OfAsciiString const & Array1() const;
        %feature("autodoc", "1");
        TColStd_Array1OfAsciiString & ChangeArray1();
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: TColStd_Array1OfAsciiString myArray
//Get: None
//Set: None
%feature("shadow") TColStd_HArray1OfAsciiString::~TColStd_HArray1OfAsciiString {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_HArray1OfAsciiString {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColStd_HArray1OfAsciiString {
    Handle_TColStd_HArray1OfAsciiString* GetHandle(){
        return (Handle_TColStd_HArray1OfAsciiString*)$self;
    }
};
   
%nodefaultctor TColStd_HArray1OfBoolean;

class TColStd_HArray1OfBoolean : public MMgt_TShared {
    public:

        %feature("autodoc", "1");
        TColStd_HArray1OfBoolean(Standard_Integer const Low, Standard_Integer const Up);
        %feature("autodoc", "1");
        TColStd_HArray1OfBoolean(Standard_Integer const Low, Standard_Integer const Up, Standard_Boolean const & V);
        %feature("autodoc", "1");
        void Init(Standard_Boolean const & V);
        %feature("autodoc", "1");
        Standard_Integer Length() const;
        %feature("autodoc", "1");
        Standard_Integer Lower() const;
        %feature("autodoc", "1");
        Standard_Integer Upper() const;
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const Index, Standard_Boolean const & Value);
        %feature("autodoc", "1");
        Standard_Boolean const & Value(Standard_Integer const Index) const;
        %feature("autodoc", "1");
        Standard_Boolean & ChangeValue(Standard_Integer const Index);
        %feature("autodoc", "1");
        TColStd_Array1OfBoolean const & Array1() const;
        %feature("autodoc", "1");
        TColStd_Array1OfBoolean & ChangeArray1();
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: TColStd_Array1OfBoolean myArray
//Get: None
//Set: None
%feature("shadow") TColStd_HArray1OfBoolean::~TColStd_HArray1OfBoolean {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_HArray1OfBoolean {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColStd_HArray1OfBoolean {
    Handle_TColStd_HArray1OfBoolean* GetHandle(){
        return (Handle_TColStd_HArray1OfBoolean*)$self;
    }
};
   
%nodefaultctor TColStd_HArray1OfCharacter;

class TColStd_HArray1OfCharacter : public MMgt_TShared {
    public:

        %feature("autodoc", "1");
        TColStd_HArray1OfCharacter(Standard_Integer const Low, Standard_Integer const Up);
        %feature("autodoc", "1");
        TColStd_HArray1OfCharacter(Standard_Integer const Low, Standard_Integer const Up, Standard_Character const & V);
        %feature("autodoc", "1");
        void Init(Standard_Character const & V);
        %feature("autodoc", "1");
        Standard_Integer Length() const;
        %feature("autodoc", "1");
        Standard_Integer Lower() const;
        %feature("autodoc", "1");
        Standard_Integer Upper() const;
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const Index, Standard_Character const & Value);
        %feature("autodoc", "1");
        Standard_Character const & Value(Standard_Integer const Index) const;
        %feature("autodoc", "1");
        Standard_Character & ChangeValue(Standard_Integer const Index);
        %feature("autodoc", "1");
        TColStd_Array1OfCharacter const & Array1() const;
        %feature("autodoc", "1");
        TColStd_Array1OfCharacter & ChangeArray1();
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: TColStd_Array1OfCharacter myArray
//Get: None
//Set: None
%feature("shadow") TColStd_HArray1OfCharacter::~TColStd_HArray1OfCharacter {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_HArray1OfCharacter {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColStd_HArray1OfCharacter {
    Handle_TColStd_HArray1OfCharacter* GetHandle(){
        return (Handle_TColStd_HArray1OfCharacter*)$self;
    }
};
   
%nodefaultctor TColStd_HArray1OfExtendedString;

class TColStd_HArray1OfExtendedString : public MMgt_TShared {
    public:

        %feature("autodoc", "1");
        TColStd_HArray1OfExtendedString(Standard_Integer const Low, Standard_Integer const Up);
        %feature("autodoc", "1");
        TColStd_HArray1OfExtendedString(Standard_Integer const Low, Standard_Integer const Up, TCollection_ExtendedString const & V);
        %feature("autodoc", "1");
        void Init(TCollection_ExtendedString const & V);
        %feature("autodoc", "1");
        Standard_Integer Length() const;
        %feature("autodoc", "1");
        Standard_Integer Lower() const;
        %feature("autodoc", "1");
        Standard_Integer Upper() const;
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const Index, TCollection_ExtendedString const & Value);
        %feature("autodoc", "1");
        TCollection_ExtendedString const & Value(Standard_Integer const Index) const;
        %feature("autodoc", "1");
        TCollection_ExtendedString & ChangeValue(Standard_Integer const Index);
        %feature("autodoc", "1");
        TColStd_Array1OfExtendedString const & Array1() const;
        %feature("autodoc", "1");
        TColStd_Array1OfExtendedString & ChangeArray1();
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: TColStd_Array1OfExtendedString myArray
//Get: None
//Set: None
%feature("shadow") TColStd_HArray1OfExtendedString::~TColStd_HArray1OfExtendedString {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_HArray1OfExtendedString {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColStd_HArray1OfExtendedString {
    Handle_TColStd_HArray1OfExtendedString* GetHandle(){
        return (Handle_TColStd_HArray1OfExtendedString*)$self;
    }
};
   
%nodefaultctor TColStd_HArray1OfInteger;

class TColStd_HArray1OfInteger : public MMgt_TShared {
    public:

        %feature("autodoc", "1");
        TColStd_HArray1OfInteger(Standard_Integer const Low, Standard_Integer const Up);
        %feature("autodoc", "1");
        TColStd_HArray1OfInteger(Standard_Integer const Low, Standard_Integer const Up, Standard_Integer const & V);
        %feature("autodoc", "1");
        void Init(Standard_Integer const & V);
        %feature("autodoc", "1");
        Standard_Integer Length() const;
        %feature("autodoc", "1");
        Standard_Integer Lower() const;
        %feature("autodoc", "1");
        Standard_Integer Upper() const;
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const Index, Standard_Integer const & Value);
        %feature("autodoc", "1");
        Standard_Integer const & Value(Standard_Integer const Index) const;
        %feature("autodoc", "1");
        Standard_Integer & ChangeValue(Standard_Integer const Index);
        %feature("autodoc", "1");
        TColStd_Array1OfInteger const & Array1() const;
        %feature("autodoc", "1");
        TColStd_Array1OfInteger & ChangeArray1();
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: TColStd_Array1OfInteger myArray
//Get: None
//Set: None
%feature("shadow") TColStd_HArray1OfInteger::~TColStd_HArray1OfInteger {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_HArray1OfInteger {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColStd_HArray1OfInteger {
    Handle_TColStd_HArray1OfInteger* GetHandle(){
        return (Handle_TColStd_HArray1OfInteger*)$self;
    }
};
   
%nodefaultctor TColStd_HArray1OfListOfInteger;

class TColStd_HArray1OfListOfInteger : public MMgt_TShared {
    public:

        %feature("autodoc", "1");
        TColStd_HArray1OfListOfInteger(Standard_Integer const Low, Standard_Integer const Up);
        %feature("autodoc", "1");
        TColStd_HArray1OfListOfInteger(Standard_Integer const Low, Standard_Integer const Up, TColStd_ListOfInteger const & V);
        %feature("autodoc", "1");
        void Init(TColStd_ListOfInteger const & V);
        %feature("autodoc", "1");
        Standard_Integer Length() const;
        %feature("autodoc", "1");
        Standard_Integer Lower() const;
        %feature("autodoc", "1");
        Standard_Integer Upper() const;
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const Index, TColStd_ListOfInteger const & Value);
        %feature("autodoc", "1");
        TColStd_ListOfInteger const & Value(Standard_Integer const Index) const;
        %feature("autodoc", "1");
        TColStd_ListOfInteger & ChangeValue(Standard_Integer const Index);
        %feature("autodoc", "1");
        TColStd_Array1OfListOfInteger const & Array1() const;
        %feature("autodoc", "1");
        TColStd_Array1OfListOfInteger & ChangeArray1();
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: TColStd_Array1OfListOfInteger myArray
//Get: None
//Set: None
%feature("shadow") TColStd_HArray1OfListOfInteger::~TColStd_HArray1OfListOfInteger {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_HArray1OfListOfInteger {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColStd_HArray1OfListOfInteger {
    Handle_TColStd_HArray1OfListOfInteger* GetHandle(){
        return (Handle_TColStd_HArray1OfListOfInteger*)$self;
    }
};
   
%nodefaultctor TColStd_HArray1OfReal;

class TColStd_HArray1OfReal : public MMgt_TShared {
    public:

        %feature("autodoc", "1");
        TColStd_HArray1OfReal(Standard_Integer const Low, Standard_Integer const Up);
        %feature("autodoc", "1");
        TColStd_HArray1OfReal(Standard_Integer const Low, Standard_Integer const Up, Standard_Real const & V);
        %feature("autodoc", "1");
        void Init(Standard_Real const & V);
        %feature("autodoc", "1");
        Standard_Integer Length() const;
        %feature("autodoc", "1");
        Standard_Integer Lower() const;
        %feature("autodoc", "1");
        Standard_Integer Upper() const;
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const Index, Standard_Real const & Value);
        %feature("autodoc", "1");
        Standard_Real const & Value(Standard_Integer const Index) const;
        %feature("autodoc", "1");
        Standard_Real & ChangeValue(Standard_Integer const Index);
        %feature("autodoc", "1");
        TColStd_Array1OfReal const & Array1() const;
        %feature("autodoc", "1");
        TColStd_Array1OfReal & ChangeArray1();
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: TColStd_Array1OfReal myArray
//Get: None
//Set: None
%feature("shadow") TColStd_HArray1OfReal::~TColStd_HArray1OfReal {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_HArray1OfReal {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColStd_HArray1OfReal {
    Handle_TColStd_HArray1OfReal* GetHandle(){
        return (Handle_TColStd_HArray1OfReal*)$self;
    }
};
   
%nodefaultctor TColStd_HArray1OfTransient;

class TColStd_HArray1OfTransient : public MMgt_TShared {
    public:

        %feature("autodoc", "1");
        TColStd_HArray1OfTransient(Standard_Integer const Low, Standard_Integer const Up);
        %feature("autodoc", "1");
        TColStd_HArray1OfTransient(Standard_Integer const Low, Standard_Integer const Up, Handle_Standard_Transient const & V);
        %feature("autodoc", "1");
        void Init(Handle_Standard_Transient const & V);
        %feature("autodoc", "1");
        Standard_Integer Length() const;
        %feature("autodoc", "1");
        Standard_Integer Lower() const;
        %feature("autodoc", "1");
        Standard_Integer Upper() const;
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const Index, Handle_Standard_Transient const & Value);
        %feature("autodoc", "1");
        Handle_Standard_Transient const & Value(Standard_Integer const Index) const;
        %feature("autodoc", "1");
        Handle_Standard_Transient & ChangeValue(Standard_Integer const Index);
        %feature("autodoc", "1");
        TColStd_Array1OfTransient const & Array1() const;
        %feature("autodoc", "1");
        TColStd_Array1OfTransient & ChangeArray1();
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: TColStd_Array1OfTransient myArray
//Get: None
//Set: None
%feature("shadow") TColStd_HArray1OfTransient::~TColStd_HArray1OfTransient {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_HArray1OfTransient {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColStd_HArray1OfTransient {
    Handle_TColStd_HArray1OfTransient* GetHandle(){
        return (Handle_TColStd_HArray1OfTransient*)$self;
    }
};
   
%nodefaultctor TColStd_HArray2OfBoolean;

class TColStd_HArray2OfBoolean : public MMgt_TShared {
    public:

        %feature("autodoc", "1");
        TColStd_HArray2OfBoolean(Standard_Integer const R1, Standard_Integer const R2, Standard_Integer const C1, Standard_Integer const C2);
        %feature("autodoc", "1");
        TColStd_HArray2OfBoolean(Standard_Integer const R1, Standard_Integer const R2, Standard_Integer const C1, Standard_Integer const C2, Standard_Boolean const & V);
        %feature("autodoc", "1");
        void Init(Standard_Boolean const & V);
        %feature("autodoc", "1");
        Standard_Integer ColLength() const;
        %feature("autodoc", "1");
        Standard_Integer RowLength() const;
        %feature("autodoc", "1");
        Standard_Integer LowerCol() const;
        %feature("autodoc", "1");
        Standard_Integer LowerRow() const;
        %feature("autodoc", "1");
        Standard_Integer UpperCol() const;
        %feature("autodoc", "1");
        Standard_Integer UpperRow() const;
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const Row, Standard_Integer const Col, Standard_Boolean const & Value);
        %feature("autodoc", "1");
        Standard_Boolean const & Value(Standard_Integer const Row, Standard_Integer const Col) const;
        %feature("autodoc", "1");
        Standard_Boolean & ChangeValue(Standard_Integer const Row, Standard_Integer const Col);
        %feature("autodoc", "1");
        TColStd_Array2OfBoolean const & Array2() const;
        %feature("autodoc", "1");
        TColStd_Array2OfBoolean & ChangeArray2();
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: TColStd_Array2OfBoolean myArray
//Get: None
//Set: None
%feature("shadow") TColStd_HArray2OfBoolean::~TColStd_HArray2OfBoolean {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_HArray2OfBoolean {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColStd_HArray2OfBoolean {
    Handle_TColStd_HArray2OfBoolean* GetHandle(){
        return (Handle_TColStd_HArray2OfBoolean*)$self;
    }
};
   
%nodefaultctor TColStd_HArray2OfCharacter;

class TColStd_HArray2OfCharacter : public MMgt_TShared {
    public:

        %feature("autodoc", "1");
        TColStd_HArray2OfCharacter(Standard_Integer const R1, Standard_Integer const R2, Standard_Integer const C1, Standard_Integer const C2);
        %feature("autodoc", "1");
        TColStd_HArray2OfCharacter(Standard_Integer const R1, Standard_Integer const R2, Standard_Integer const C1, Standard_Integer const C2, Standard_Character const & V);
        %feature("autodoc", "1");
        void Init(Standard_Character const & V);
        %feature("autodoc", "1");
        Standard_Integer ColLength() const;
        %feature("autodoc", "1");
        Standard_Integer RowLength() const;
        %feature("autodoc", "1");
        Standard_Integer LowerCol() const;
        %feature("autodoc", "1");
        Standard_Integer LowerRow() const;
        %feature("autodoc", "1");
        Standard_Integer UpperCol() const;
        %feature("autodoc", "1");
        Standard_Integer UpperRow() const;
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const Row, Standard_Integer const Col, Standard_Character const & Value);
        %feature("autodoc", "1");
        Standard_Character const & Value(Standard_Integer const Row, Standard_Integer const Col) const;
        %feature("autodoc", "1");
        Standard_Character & ChangeValue(Standard_Integer const Row, Standard_Integer const Col);
        %feature("autodoc", "1");
        TColStd_Array2OfCharacter const & Array2() const;
        %feature("autodoc", "1");
        TColStd_Array2OfCharacter & ChangeArray2();
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: TColStd_Array2OfCharacter myArray
//Get: None
//Set: None
%feature("shadow") TColStd_HArray2OfCharacter::~TColStd_HArray2OfCharacter {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_HArray2OfCharacter {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColStd_HArray2OfCharacter {
    Handle_TColStd_HArray2OfCharacter* GetHandle(){
        return (Handle_TColStd_HArray2OfCharacter*)$self;
    }
};
   
%nodefaultctor TColStd_HArray2OfInteger;

class TColStd_HArray2OfInteger : public MMgt_TShared {
    public:

        %feature("autodoc", "1");
        TColStd_HArray2OfInteger(Standard_Integer const R1, Standard_Integer const R2, Standard_Integer const C1, Standard_Integer const C2);
        %feature("autodoc", "1");
        TColStd_HArray2OfInteger(Standard_Integer const R1, Standard_Integer const R2, Standard_Integer const C1, Standard_Integer const C2, Standard_Integer const & V);
        %feature("autodoc", "1");
        void Init(Standard_Integer const & V);
        %feature("autodoc", "1");
        Standard_Integer ColLength() const;
        %feature("autodoc", "1");
        Standard_Integer RowLength() const;
        %feature("autodoc", "1");
        Standard_Integer LowerCol() const;
        %feature("autodoc", "1");
        Standard_Integer LowerRow() const;
        %feature("autodoc", "1");
        Standard_Integer UpperCol() const;
        %feature("autodoc", "1");
        Standard_Integer UpperRow() const;
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const Row, Standard_Integer const Col, Standard_Integer const & Value);
        %feature("autodoc", "1");
        Standard_Integer const & Value(Standard_Integer const Row, Standard_Integer const Col) const;
        %feature("autodoc", "1");
        Standard_Integer & ChangeValue(Standard_Integer const Row, Standard_Integer const Col);
        %feature("autodoc", "1");
        TColStd_Array2OfInteger const & Array2() const;
        %feature("autodoc", "1");
        TColStd_Array2OfInteger & ChangeArray2();
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: TColStd_Array2OfInteger myArray
//Get: None
//Set: None
%feature("shadow") TColStd_HArray2OfInteger::~TColStd_HArray2OfInteger {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_HArray2OfInteger {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColStd_HArray2OfInteger {
    Handle_TColStd_HArray2OfInteger* GetHandle(){
        return (Handle_TColStd_HArray2OfInteger*)$self;
    }
};
   
%nodefaultctor TColStd_HArray2OfReal;

class TColStd_HArray2OfReal : public MMgt_TShared {
    public:

        %feature("autodoc", "1");
        TColStd_HArray2OfReal(Standard_Integer const R1, Standard_Integer const R2, Standard_Integer const C1, Standard_Integer const C2);
        %feature("autodoc", "1");
        TColStd_HArray2OfReal(Standard_Integer const R1, Standard_Integer const R2, Standard_Integer const C1, Standard_Integer const C2, Standard_Real const & V);
        %feature("autodoc", "1");
        void Init(Standard_Real const & V);
        %feature("autodoc", "1");
        Standard_Integer ColLength() const;
        %feature("autodoc", "1");
        Standard_Integer RowLength() const;
        %feature("autodoc", "1");
        Standard_Integer LowerCol() const;
        %feature("autodoc", "1");
        Standard_Integer LowerRow() const;
        %feature("autodoc", "1");
        Standard_Integer UpperCol() const;
        %feature("autodoc", "1");
        Standard_Integer UpperRow() const;
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const Row, Standard_Integer const Col, Standard_Real const & Value);
        %feature("autodoc", "1");
        Standard_Real const & Value(Standard_Integer const Row, Standard_Integer const Col) const;
        %feature("autodoc", "1");
        Standard_Real & ChangeValue(Standard_Integer const Row, Standard_Integer const Col);
        %feature("autodoc", "1");
        TColStd_Array2OfReal const & Array2() const;
        %feature("autodoc", "1");
        TColStd_Array2OfReal & ChangeArray2();
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: TColStd_Array2OfReal myArray
//Get: None
//Set: None
%feature("shadow") TColStd_HArray2OfReal::~TColStd_HArray2OfReal {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_HArray2OfReal {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColStd_HArray2OfReal {
    Handle_TColStd_HArray2OfReal* GetHandle(){
        return (Handle_TColStd_HArray2OfReal*)$self;
    }
};
   
%nodefaultctor TColStd_HArray2OfTransient;

class TColStd_HArray2OfTransient : public MMgt_TShared {
    public:

        %feature("autodoc", "1");
        TColStd_HArray2OfTransient(Standard_Integer const R1, Standard_Integer const R2, Standard_Integer const C1, Standard_Integer const C2);
        %feature("autodoc", "1");
        TColStd_HArray2OfTransient(Standard_Integer const R1, Standard_Integer const R2, Standard_Integer const C1, Standard_Integer const C2, Handle_Standard_Transient const & V);
        %feature("autodoc", "1");
        void Init(Handle_Standard_Transient const & V);
        %feature("autodoc", "1");
        Standard_Integer ColLength() const;
        %feature("autodoc", "1");
        Standard_Integer RowLength() const;
        %feature("autodoc", "1");
        Standard_Integer LowerCol() const;
        %feature("autodoc", "1");
        Standard_Integer LowerRow() const;
        %feature("autodoc", "1");
        Standard_Integer UpperCol() const;
        %feature("autodoc", "1");
        Standard_Integer UpperRow() const;
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const Row, Standard_Integer const Col, Handle_Standard_Transient const & Value);
        %feature("autodoc", "1");
        Handle_Standard_Transient const & Value(Standard_Integer const Row, Standard_Integer const Col) const;
        %feature("autodoc", "1");
        Handle_Standard_Transient & ChangeValue(Standard_Integer const Row, Standard_Integer const Col);
        %feature("autodoc", "1");
        TColStd_Array2OfTransient const & Array2() const;
        %feature("autodoc", "1");
        TColStd_Array2OfTransient & ChangeArray2();
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: TColStd_Array2OfTransient myArray
//Get: None
//Set: None
%feature("shadow") TColStd_HArray2OfTransient::~TColStd_HArray2OfTransient {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_HArray2OfTransient {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColStd_HArray2OfTransient {
    Handle_TColStd_HArray2OfTransient* GetHandle(){
        return (Handle_TColStd_HArray2OfTransient*)$self;
    }
};
   
%nodefaultctor TColStd_HPackedMapOfInteger;

class TColStd_HPackedMapOfInteger : public MMgt_TShared {
    public:

        %feature("autodoc", "1");
        TColStd_HPackedMapOfInteger(Standard_Integer const NbBuckets=1);
        %feature("autodoc", "1");
        TColStd_HPackedMapOfInteger(TColStd_PackedMapOfInteger const & theOther);
        %feature("autodoc", "1");
        TColStd_PackedMapOfInteger const & Map() const;
        %feature("autodoc", "1");
        TColStd_PackedMapOfInteger & ChangeMap();
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: TColStd_PackedMapOfInteger myMap
//Get: None
//Set: None
%feature("shadow") TColStd_HPackedMapOfInteger::~TColStd_HPackedMapOfInteger {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_HPackedMapOfInteger {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColStd_HPackedMapOfInteger {
    Handle_TColStd_HPackedMapOfInteger* GetHandle(){
        return (Handle_TColStd_HPackedMapOfInteger*)$self;
    }
};
   
%nodefaultctor TColStd_HSequenceOfAsciiString;

class TColStd_HSequenceOfAsciiString : public MMgt_TShared {
    public:

        %feature("autodoc", "1");
        TColStd_HSequenceOfAsciiString();
        %feature("autodoc", "1");
        Standard_Boolean IsEmpty() const;
        %feature("autodoc", "1");
        Standard_Integer Length() const;
        %feature("autodoc", "1");
        void Clear();
        %feature("autodoc", "1");
        void Append(TCollection_AsciiString const & anItem);
        %feature("autodoc", "1");
        void Append(Handle_TColStd_HSequenceOfAsciiString const & aSequence);
        %feature("autodoc", "1");
        void Prepend(TCollection_AsciiString const & anItem);
        %feature("autodoc", "1");
        void Prepend(Handle_TColStd_HSequenceOfAsciiString const & aSequence);
        %feature("autodoc", "1");
        void Reverse();
        %feature("autodoc", "1");
        void InsertBefore(Standard_Integer const anIndex, TCollection_AsciiString const & anItem);
        %feature("autodoc", "1");
        void InsertBefore(Standard_Integer const anIndex, Handle_TColStd_HSequenceOfAsciiString const & aSequence);
        %feature("autodoc", "1");
        void InsertAfter(Standard_Integer const anIndex, TCollection_AsciiString const & anItem);
        %feature("autodoc", "1");
        void InsertAfter(Standard_Integer const anIndex, Handle_TColStd_HSequenceOfAsciiString const & aSequence);
        %feature("autodoc", "1");
        void Exchange(Standard_Integer const anIndex, Standard_Integer const anOtherIndex);
        %feature("autodoc", "1");
        Handle_TColStd_HSequenceOfAsciiString Split(Standard_Integer const anIndex);
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const anIndex, TCollection_AsciiString const & anItem);
        %feature("autodoc", "1");
        TCollection_AsciiString const & Value(Standard_Integer const anIndex) const;
        %feature("autodoc", "1");
        TCollection_AsciiString & ChangeValue(Standard_Integer const anIndex);
        %feature("autodoc", "1");
        void Remove(Standard_Integer const anIndex);
        %feature("autodoc", "1");
        void Remove(Standard_Integer const fromIndex, Standard_Integer const toIndex);
        %feature("autodoc", "1");
        TColStd_SequenceOfAsciiString const & Sequence() const;
        %feature("autodoc", "1");
        TColStd_SequenceOfAsciiString & ChangeSequence();
        %feature("autodoc", "1");
        Handle_TColStd_HSequenceOfAsciiString ShallowCopy() const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: TColStd_SequenceOfAsciiString mySequence
//Get: None
//Set: None
%feature("shadow") TColStd_HSequenceOfAsciiString::~TColStd_HSequenceOfAsciiString {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_HSequenceOfAsciiString {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColStd_HSequenceOfAsciiString {
    Handle_TColStd_HSequenceOfAsciiString* GetHandle(){
        return (Handle_TColStd_HSequenceOfAsciiString*)$self;
    }
};
   
%nodefaultctor TColStd_HSequenceOfExtendedString;

class TColStd_HSequenceOfExtendedString : public MMgt_TShared {
    public:

        %feature("autodoc", "1");
        TColStd_HSequenceOfExtendedString();
        %feature("autodoc", "1");
        Standard_Boolean IsEmpty() const;
        %feature("autodoc", "1");
        Standard_Integer Length() const;
        %feature("autodoc", "1");
        void Clear();
        %feature("autodoc", "1");
        void Append(TCollection_ExtendedString const & anItem);
        %feature("autodoc", "1");
        void Append(Handle_TColStd_HSequenceOfExtendedString const & aSequence);
        %feature("autodoc", "1");
        void Prepend(TCollection_ExtendedString const & anItem);
        %feature("autodoc", "1");
        void Prepend(Handle_TColStd_HSequenceOfExtendedString const & aSequence);
        %feature("autodoc", "1");
        void Reverse();
        %feature("autodoc", "1");
        void InsertBefore(Standard_Integer const anIndex, TCollection_ExtendedString const & anItem);
        %feature("autodoc", "1");
        void InsertBefore(Standard_Integer const anIndex, Handle_TColStd_HSequenceOfExtendedString const & aSequence);
        %feature("autodoc", "1");
        void InsertAfter(Standard_Integer const anIndex, TCollection_ExtendedString const & anItem);
        %feature("autodoc", "1");
        void InsertAfter(Standard_Integer const anIndex, Handle_TColStd_HSequenceOfExtendedString const & aSequence);
        %feature("autodoc", "1");
        void Exchange(Standard_Integer const anIndex, Standard_Integer const anOtherIndex);
        %feature("autodoc", "1");
        Handle_TColStd_HSequenceOfExtendedString Split(Standard_Integer const anIndex);
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const anIndex, TCollection_ExtendedString const & anItem);
        %feature("autodoc", "1");
        TCollection_ExtendedString const & Value(Standard_Integer const anIndex) const;
        %feature("autodoc", "1");
        TCollection_ExtendedString & ChangeValue(Standard_Integer const anIndex);
        %feature("autodoc", "1");
        void Remove(Standard_Integer const anIndex);
        %feature("autodoc", "1");
        void Remove(Standard_Integer const fromIndex, Standard_Integer const toIndex);
        %feature("autodoc", "1");
        TColStd_SequenceOfExtendedString const & Sequence() const;
        %feature("autodoc", "1");
        TColStd_SequenceOfExtendedString & ChangeSequence();
        %feature("autodoc", "1");
        Handle_TColStd_HSequenceOfExtendedString ShallowCopy() const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: TColStd_SequenceOfExtendedString mySequence
//Get: None
//Set: None
%feature("shadow") TColStd_HSequenceOfExtendedString::~TColStd_HSequenceOfExtendedString {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_HSequenceOfExtendedString {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColStd_HSequenceOfExtendedString {
    Handle_TColStd_HSequenceOfExtendedString* GetHandle(){
        return (Handle_TColStd_HSequenceOfExtendedString*)$self;
    }
};
   
%nodefaultctor TColStd_HSequenceOfHAsciiString;

class TColStd_HSequenceOfHAsciiString : public MMgt_TShared {
    public:

        %feature("autodoc", "1");
        TColStd_HSequenceOfHAsciiString();
        %feature("autodoc", "1");
        Standard_Boolean IsEmpty() const;
        %feature("autodoc", "1");
        Standard_Integer Length() const;
        %feature("autodoc", "1");
        void Clear();
        %feature("autodoc", "1");
        void Append(Handle_TCollection_HAsciiString const & anItem);
        %feature("autodoc", "1");
        void Append(Handle_TColStd_HSequenceOfHAsciiString const & aSequence);
        %feature("autodoc", "1");
        void Prepend(Handle_TCollection_HAsciiString const & anItem);
        %feature("autodoc", "1");
        void Prepend(Handle_TColStd_HSequenceOfHAsciiString const & aSequence);
        %feature("autodoc", "1");
        void Reverse();
        %feature("autodoc", "1");
        void InsertBefore(Standard_Integer const anIndex, Handle_TCollection_HAsciiString const & anItem);
        %feature("autodoc", "1");
        void InsertBefore(Standard_Integer const anIndex, Handle_TColStd_HSequenceOfHAsciiString const & aSequence);
        %feature("autodoc", "1");
        void InsertAfter(Standard_Integer const anIndex, Handle_TCollection_HAsciiString const & anItem);
        %feature("autodoc", "1");
        void InsertAfter(Standard_Integer const anIndex, Handle_TColStd_HSequenceOfHAsciiString const & aSequence);
        %feature("autodoc", "1");
        void Exchange(Standard_Integer const anIndex, Standard_Integer const anOtherIndex);
        %feature("autodoc", "1");
        Handle_TColStd_HSequenceOfHAsciiString Split(Standard_Integer const anIndex);
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const anIndex, Handle_TCollection_HAsciiString const & anItem);
        %feature("autodoc", "1");
        Handle_TCollection_HAsciiString const & Value(Standard_Integer const anIndex) const;
        %feature("autodoc", "1");
        Handle_TCollection_HAsciiString & ChangeValue(Standard_Integer const anIndex);
        %feature("autodoc", "1");
        void Remove(Standard_Integer const anIndex);
        %feature("autodoc", "1");
        void Remove(Standard_Integer const fromIndex, Standard_Integer const toIndex);
        %feature("autodoc", "1");
        TColStd_SequenceOfHAsciiString const & Sequence() const;
        %feature("autodoc", "1");
        TColStd_SequenceOfHAsciiString & ChangeSequence();
        %feature("autodoc", "1");
        Handle_TColStd_HSequenceOfHAsciiString ShallowCopy() const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: TColStd_SequenceOfHAsciiString mySequence
//Get: None
//Set: None
%feature("shadow") TColStd_HSequenceOfHAsciiString::~TColStd_HSequenceOfHAsciiString {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_HSequenceOfHAsciiString {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColStd_HSequenceOfHAsciiString {
    Handle_TColStd_HSequenceOfHAsciiString* GetHandle(){
        return (Handle_TColStd_HSequenceOfHAsciiString*)$self;
    }
};
   
%nodefaultctor TColStd_HSequenceOfHExtendedString;

class TColStd_HSequenceOfHExtendedString : public MMgt_TShared {
    public:

        %feature("autodoc", "1");
        TColStd_HSequenceOfHExtendedString();
        %feature("autodoc", "1");
        Standard_Boolean IsEmpty() const;
        %feature("autodoc", "1");
        Standard_Integer Length() const;
        %feature("autodoc", "1");
        void Clear();
        %feature("autodoc", "1");
        void Append(Handle_TCollection_HExtendedString const & anItem);
        %feature("autodoc", "1");
        void Append(Handle_TColStd_HSequenceOfHExtendedString const & aSequence);
        %feature("autodoc", "1");
        void Prepend(Handle_TCollection_HExtendedString const & anItem);
        %feature("autodoc", "1");
        void Prepend(Handle_TColStd_HSequenceOfHExtendedString const & aSequence);
        %feature("autodoc", "1");
        void Reverse();
        %feature("autodoc", "1");
        void InsertBefore(Standard_Integer const anIndex, Handle_TCollection_HExtendedString const & anItem);
        %feature("autodoc", "1");
        void InsertBefore(Standard_Integer const anIndex, Handle_TColStd_HSequenceOfHExtendedString const & aSequence);
        %feature("autodoc", "1");
        void InsertAfter(Standard_Integer const anIndex, Handle_TCollection_HExtendedString const & anItem);
        %feature("autodoc", "1");
        void InsertAfter(Standard_Integer const anIndex, Handle_TColStd_HSequenceOfHExtendedString const & aSequence);
        %feature("autodoc", "1");
        void Exchange(Standard_Integer const anIndex, Standard_Integer const anOtherIndex);
        %feature("autodoc", "1");
        Handle_TColStd_HSequenceOfHExtendedString Split(Standard_Integer const anIndex);
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const anIndex, Handle_TCollection_HExtendedString const & anItem);
        %feature("autodoc", "1");
        Handle_TCollection_HExtendedString const & Value(Standard_Integer const anIndex) const;
        %feature("autodoc", "1");
        Handle_TCollection_HExtendedString & ChangeValue(Standard_Integer const anIndex);
        %feature("autodoc", "1");
        void Remove(Standard_Integer const anIndex);
        %feature("autodoc", "1");
        void Remove(Standard_Integer const fromIndex, Standard_Integer const toIndex);
        %feature("autodoc", "1");
        TColStd_SequenceOfHExtendedString const & Sequence() const;
        %feature("autodoc", "1");
        TColStd_SequenceOfHExtendedString & ChangeSequence();
        %feature("autodoc", "1");
        Handle_TColStd_HSequenceOfHExtendedString ShallowCopy() const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: TColStd_SequenceOfHExtendedString mySequence
//Get: None
//Set: None
%feature("shadow") TColStd_HSequenceOfHExtendedString::~TColStd_HSequenceOfHExtendedString {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_HSequenceOfHExtendedString {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColStd_HSequenceOfHExtendedString {
    Handle_TColStd_HSequenceOfHExtendedString* GetHandle(){
        return (Handle_TColStd_HSequenceOfHExtendedString*)$self;
    }
};
   
%nodefaultctor TColStd_HSequenceOfInteger;

class TColStd_HSequenceOfInteger : public MMgt_TShared {
    public:

        %feature("autodoc", "1");
        TColStd_HSequenceOfInteger();
        %feature("autodoc", "1");
        Standard_Boolean IsEmpty() const;
        %feature("autodoc", "1");
        Standard_Integer Length() const;
        %feature("autodoc", "1");
        void Clear();
        %feature("autodoc", "1");
        void Append(Standard_Integer const & anItem);
        %feature("autodoc", "1");
        void Append(Handle_TColStd_HSequenceOfInteger const & aSequence);
        %feature("autodoc", "1");
        void Prepend(Standard_Integer const & anItem);
        %feature("autodoc", "1");
        void Prepend(Handle_TColStd_HSequenceOfInteger const & aSequence);
        %feature("autodoc", "1");
        void Reverse();
        %feature("autodoc", "1");
        void InsertBefore(Standard_Integer const anIndex, Standard_Integer const & anItem);
        %feature("autodoc", "1");
        void InsertBefore(Standard_Integer const anIndex, Handle_TColStd_HSequenceOfInteger const & aSequence);
        %feature("autodoc", "1");
        void InsertAfter(Standard_Integer const anIndex, Standard_Integer const & anItem);
        %feature("autodoc", "1");
        void InsertAfter(Standard_Integer const anIndex, Handle_TColStd_HSequenceOfInteger const & aSequence);
        %feature("autodoc", "1");
        void Exchange(Standard_Integer const anIndex, Standard_Integer const anOtherIndex);
        %feature("autodoc", "1");
        Handle_TColStd_HSequenceOfInteger Split(Standard_Integer const anIndex);
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const anIndex, Standard_Integer const & anItem);
        %feature("autodoc", "1");
        Standard_Integer const & Value(Standard_Integer const anIndex) const;
        %feature("autodoc", "1");
        Standard_Integer & ChangeValue(Standard_Integer const anIndex);
        %feature("autodoc", "1");
        void Remove(Standard_Integer const anIndex);
        %feature("autodoc", "1");
        void Remove(Standard_Integer const fromIndex, Standard_Integer const toIndex);
        %feature("autodoc", "1");
        TColStd_SequenceOfInteger const & Sequence() const;
        %feature("autodoc", "1");
        TColStd_SequenceOfInteger & ChangeSequence();
        %feature("autodoc", "1");
        Handle_TColStd_HSequenceOfInteger ShallowCopy() const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: TColStd_SequenceOfInteger mySequence
//Get: None
//Set: None
%feature("shadow") TColStd_HSequenceOfInteger::~TColStd_HSequenceOfInteger {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_HSequenceOfInteger {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColStd_HSequenceOfInteger {
    Handle_TColStd_HSequenceOfInteger* GetHandle(){
        return (Handle_TColStd_HSequenceOfInteger*)$self;
    }
};
   
%nodefaultctor TColStd_HSequenceOfReal;

class TColStd_HSequenceOfReal : public MMgt_TShared {
    public:

        %feature("autodoc", "1");
        TColStd_HSequenceOfReal();
        %feature("autodoc", "1");
        Standard_Boolean IsEmpty() const;
        %feature("autodoc", "1");
        Standard_Integer Length() const;
        %feature("autodoc", "1");
        void Clear();
        %feature("autodoc", "1");
        void Append(Standard_Real const & anItem);
        %feature("autodoc", "1");
        void Append(Handle_TColStd_HSequenceOfReal const & aSequence);
        %feature("autodoc", "1");
        void Prepend(Standard_Real const & anItem);
        %feature("autodoc", "1");
        void Prepend(Handle_TColStd_HSequenceOfReal const & aSequence);
        %feature("autodoc", "1");
        void Reverse();
        %feature("autodoc", "1");
        void InsertBefore(Standard_Integer const anIndex, Standard_Real const & anItem);
        %feature("autodoc", "1");
        void InsertBefore(Standard_Integer const anIndex, Handle_TColStd_HSequenceOfReal const & aSequence);
        %feature("autodoc", "1");
        void InsertAfter(Standard_Integer const anIndex, Standard_Real const & anItem);
        %feature("autodoc", "1");
        void InsertAfter(Standard_Integer const anIndex, Handle_TColStd_HSequenceOfReal const & aSequence);
        %feature("autodoc", "1");
        void Exchange(Standard_Integer const anIndex, Standard_Integer const anOtherIndex);
        %feature("autodoc", "1");
        Handle_TColStd_HSequenceOfReal Split(Standard_Integer const anIndex);
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const anIndex, Standard_Real const & anItem);
        %feature("autodoc", "1");
        Standard_Real const & Value(Standard_Integer const anIndex) const;
        %feature("autodoc", "1");
        Standard_Real & ChangeValue(Standard_Integer const anIndex);
        %feature("autodoc", "1");
        void Remove(Standard_Integer const anIndex);
        %feature("autodoc", "1");
        void Remove(Standard_Integer const fromIndex, Standard_Integer const toIndex);
        %feature("autodoc", "1");
        TColStd_SequenceOfReal const & Sequence() const;
        %feature("autodoc", "1");
        TColStd_SequenceOfReal & ChangeSequence();
        %feature("autodoc", "1");
        Handle_TColStd_HSequenceOfReal ShallowCopy() const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: TColStd_SequenceOfReal mySequence
//Get: None
//Set: None
%feature("shadow") TColStd_HSequenceOfReal::~TColStd_HSequenceOfReal {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_HSequenceOfReal {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColStd_HSequenceOfReal {
    Handle_TColStd_HSequenceOfReal* GetHandle(){
        return (Handle_TColStd_HSequenceOfReal*)$self;
    }
};
   
%nodefaultctor TColStd_HSequenceOfTransient;

class TColStd_HSequenceOfTransient : public MMgt_TShared {
    public:

        %feature("autodoc", "1");
        TColStd_HSequenceOfTransient();
        %feature("autodoc", "1");
        Standard_Boolean IsEmpty() const;
        %feature("autodoc", "1");
        Standard_Integer Length() const;
        %feature("autodoc", "1");
        void Clear();
        %feature("autodoc", "1");
        void Append(Handle_Standard_Transient const & anItem);
        %feature("autodoc", "1");
        void Append(Handle_TColStd_HSequenceOfTransient const & aSequence);
        %feature("autodoc", "1");
        void Prepend(Handle_Standard_Transient const & anItem);
        %feature("autodoc", "1");
        void Prepend(Handle_TColStd_HSequenceOfTransient const & aSequence);
        %feature("autodoc", "1");
        void Reverse();
        %feature("autodoc", "1");
        void InsertBefore(Standard_Integer const anIndex, Handle_Standard_Transient const & anItem);
        %feature("autodoc", "1");
        void InsertBefore(Standard_Integer const anIndex, Handle_TColStd_HSequenceOfTransient const & aSequence);
        %feature("autodoc", "1");
        void InsertAfter(Standard_Integer const anIndex, Handle_Standard_Transient const & anItem);
        %feature("autodoc", "1");
        void InsertAfter(Standard_Integer const anIndex, Handle_TColStd_HSequenceOfTransient const & aSequence);
        %feature("autodoc", "1");
        void Exchange(Standard_Integer const anIndex, Standard_Integer const anOtherIndex);
        %feature("autodoc", "1");
        Handle_TColStd_HSequenceOfTransient Split(Standard_Integer const anIndex);
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const anIndex, Handle_Standard_Transient const & anItem);
        %feature("autodoc", "1");
        Handle_Standard_Transient const & Value(Standard_Integer const anIndex) const;
        %feature("autodoc", "1");
        Handle_Standard_Transient & ChangeValue(Standard_Integer const anIndex);
        %feature("autodoc", "1");
        void Remove(Standard_Integer const anIndex);
        %feature("autodoc", "1");
        void Remove(Standard_Integer const fromIndex, Standard_Integer const toIndex);
        %feature("autodoc", "1");
        TColStd_SequenceOfTransient const & Sequence() const;
        %feature("autodoc", "1");
        TColStd_SequenceOfTransient & ChangeSequence();
        %feature("autodoc", "1");
        Handle_TColStd_HSequenceOfTransient ShallowCopy() const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: TColStd_SequenceOfTransient mySequence
//Get: None
//Set: None
%feature("shadow") TColStd_HSequenceOfTransient::~TColStd_HSequenceOfTransient {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_HSequenceOfTransient {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColStd_HSequenceOfTransient {
    Handle_TColStd_HSequenceOfTransient* GetHandle(){
        return (Handle_TColStd_HSequenceOfTransient*)$self;
    }
};
   
%nodefaultctor TColStd_HSetOfInteger;

class TColStd_HSetOfInteger : public MMgt_TShared {
    public:

        %feature("autodoc", "1");
        TColStd_HSetOfInteger();
        %feature("autodoc", "1");
        Standard_Integer Extent() const;
        %feature("autodoc", "1");
        Standard_Boolean IsEmpty() const;
        %feature("autodoc", "1");
        void Clear();
        %feature("autodoc", "1");
        Standard_Boolean Add(Standard_Integer const & T);
        %feature("autodoc", "1");
        Standard_Boolean Remove(Standard_Integer const & T);
        %feature("autodoc", "1");
        Handle_TColStd_HSetOfInteger Union(Handle_TColStd_HSetOfInteger const & B) const;
        %feature("autodoc", "1");
        Handle_TColStd_HSetOfInteger Intersection(Handle_TColStd_HSetOfInteger const & B) const;
        %feature("autodoc", "1");
        Handle_TColStd_HSetOfInteger Difference(Handle_TColStd_HSetOfInteger const & B) const;
        %feature("autodoc", "1");
        Standard_Boolean Contains(Standard_Integer const & T) const;
        %feature("autodoc", "1");
        Standard_Boolean IsASubset(Handle_TColStd_HSetOfInteger const & S) const;
        %feature("autodoc", "1");
        Standard_Boolean IsAProperSubset(Handle_TColStd_HSetOfInteger const & S) const;
        %feature("autodoc", "1");
        Handle_TColStd_HSetOfInteger ShallowCopy() const;
        %feature("autodoc", "1");
        TColStd_SetOfInteger const & Set() const;
        %feature("autodoc", "1");
        TColStd_SetOfInteger & ChangeSet();
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: TColStd_SetOfInteger mySet
//Get: None
//Set: None
%feature("shadow") TColStd_HSetOfInteger::~TColStd_HSetOfInteger {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_HSetOfInteger {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColStd_HSetOfInteger {
    Handle_TColStd_HSetOfInteger* GetHandle(){
        return (Handle_TColStd_HSetOfInteger*)$self;
    }
};
   
%nodefaultctor TColStd_HSetOfReal;

class TColStd_HSetOfReal : public MMgt_TShared {
    public:

        %feature("autodoc", "1");
        TColStd_HSetOfReal();
        %feature("autodoc", "1");
        Standard_Integer Extent() const;
        %feature("autodoc", "1");
        Standard_Boolean IsEmpty() const;
        %feature("autodoc", "1");
        void Clear();
        %feature("autodoc", "1");
        Standard_Boolean Add(Standard_Real const & T);
        %feature("autodoc", "1");
        Standard_Boolean Remove(Standard_Real const & T);
        %feature("autodoc", "1");
        Handle_TColStd_HSetOfReal Union(Handle_TColStd_HSetOfReal const & B) const;
        %feature("autodoc", "1");
        Handle_TColStd_HSetOfReal Intersection(Handle_TColStd_HSetOfReal const & B) const;
        %feature("autodoc", "1");
        Handle_TColStd_HSetOfReal Difference(Handle_TColStd_HSetOfReal const & B) const;
        %feature("autodoc", "1");
        Standard_Boolean Contains(Standard_Real const & T) const;
        %feature("autodoc", "1");
        Standard_Boolean IsASubset(Handle_TColStd_HSetOfReal const & S) const;
        %feature("autodoc", "1");
        Standard_Boolean IsAProperSubset(Handle_TColStd_HSetOfReal const & S) const;
        %feature("autodoc", "1");
        Handle_TColStd_HSetOfReal ShallowCopy() const;
        %feature("autodoc", "1");
        TColStd_SetOfReal const & Set() const;
        %feature("autodoc", "1");
        TColStd_SetOfReal & ChangeSet();
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: TColStd_SetOfReal mySet
//Get: None
//Set: None
%feature("shadow") TColStd_HSetOfReal::~TColStd_HSetOfReal {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_HSetOfReal {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColStd_HSetOfReal {
    Handle_TColStd_HSetOfReal* GetHandle(){
        return (Handle_TColStd_HSetOfReal*)$self;
    }
};
   
%nodefaultctor TColStd_HSetOfTransient;

class TColStd_HSetOfTransient : public MMgt_TShared {
    public:

        %feature("autodoc", "1");
        TColStd_HSetOfTransient();
        %feature("autodoc", "1");
        Standard_Integer Extent() const;
        %feature("autodoc", "1");
        Standard_Boolean IsEmpty() const;
        %feature("autodoc", "1");
        void Clear();
        %feature("autodoc", "1");
        Standard_Boolean Add(Handle_Standard_Transient const & T);
        %feature("autodoc", "1");
        Standard_Boolean Remove(Handle_Standard_Transient const & T);
        %feature("autodoc", "1");
        Handle_TColStd_HSetOfTransient Union(Handle_TColStd_HSetOfTransient const & B) const;
        %feature("autodoc", "1");
        Handle_TColStd_HSetOfTransient Intersection(Handle_TColStd_HSetOfTransient const & B) const;
        %feature("autodoc", "1");
        Handle_TColStd_HSetOfTransient Difference(Handle_TColStd_HSetOfTransient const & B) const;
        %feature("autodoc", "1");
        Standard_Boolean Contains(Handle_Standard_Transient const & T) const;
        %feature("autodoc", "1");
        Standard_Boolean IsASubset(Handle_TColStd_HSetOfTransient const & S) const;
        %feature("autodoc", "1");
        Standard_Boolean IsAProperSubset(Handle_TColStd_HSetOfTransient const & S) const;
        %feature("autodoc", "1");
        Handle_TColStd_HSetOfTransient ShallowCopy() const;
        %feature("autodoc", "1");
        TColStd_SetOfTransient const & Set() const;
        %feature("autodoc", "1");
        TColStd_SetOfTransient & ChangeSet();
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: TColStd_SetOfTransient mySet
//Get: None
//Set: None
%feature("shadow") TColStd_HSetOfTransient::~TColStd_HSetOfTransient {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_HSetOfTransient {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColStd_HSetOfTransient {
    Handle_TColStd_HSetOfTransient* GetHandle(){
        return (Handle_TColStd_HSetOfTransient*)$self;
    }
};
   
%nodefaultctor TColStd_Array1OfAsciiString;

class TColStd_Array1OfAsciiString  {
    public:

        %feature("autodoc", "1");
        TColStd_Array1OfAsciiString(Standard_Integer const Low, Standard_Integer const Up);
        %feature("autodoc", "1");
        TColStd_Array1OfAsciiString(TCollection_AsciiString const & Item, Standard_Integer const Low, Standard_Integer const Up);
        %feature("autodoc", "1");
        TColStd_Array1OfAsciiString(TColStd_Array1OfAsciiString const & AnArray);
        %feature("autodoc", "1");
        void Init(TCollection_AsciiString const & V);
        %feature("autodoc", "1");
        void Destroy();
        %feature("autodoc", "1");
        Standard_Boolean IsAllocated() const;
        %feature("autodoc", "1");
        TColStd_Array1OfAsciiString const & Assign(TColStd_Array1OfAsciiString const & Other);
        %feature("autodoc", "1");
        Standard_Integer Length() const;
        %feature("autodoc", "1");
        Standard_Integer Lower() const;
        %feature("autodoc", "1");
        Standard_Integer Upper() const;
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const Index, TCollection_AsciiString const & Value);
        %feature("autodoc", "1");
        TCollection_AsciiString const & Value(Standard_Integer const Index) const;
        %feature("autodoc", "1");
        TCollection_AsciiString & ChangeValue(Standard_Integer const Index); 
};
//Var: Standard_Integer myLowerBound
//Get: None
//Set: None
//Var: Standard_Integer myUpperBound
//Get: None
//Set: None
//Var: Standard_Address myStart
//Get: None
//Set: None
//Var: Standard_Boolean isAllocated
//Get: None
//Set: None
%feature("shadow") TColStd_Array1OfAsciiString::~TColStd_Array1OfAsciiString {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_Array1OfAsciiString {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColStd_Array1OfBoolean;

class TColStd_Array1OfBoolean  {
    public:

        %feature("autodoc", "1");
        TColStd_Array1OfBoolean(Standard_Integer const Low, Standard_Integer const Up);
        %feature("autodoc", "1");
        TColStd_Array1OfBoolean(Standard_Boolean const & Item, Standard_Integer const Low, Standard_Integer const Up);
        %feature("autodoc", "1");
        TColStd_Array1OfBoolean(TColStd_Array1OfBoolean const & AnArray);
        %feature("autodoc", "1");
        void Init(Standard_Boolean const & V);
        %feature("autodoc", "1");
        void Destroy();
        %feature("autodoc", "1");
        Standard_Boolean IsAllocated() const;
        %feature("autodoc", "1");
        TColStd_Array1OfBoolean const & Assign(TColStd_Array1OfBoolean const & Other);
        %feature("autodoc", "1");
        Standard_Integer Length() const;
        %feature("autodoc", "1");
        Standard_Integer Lower() const;
        %feature("autodoc", "1");
        Standard_Integer Upper() const;
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const Index, Standard_Boolean const & Value);
        %feature("autodoc", "1");
        Standard_Boolean const & Value(Standard_Integer const Index) const;
        %feature("autodoc", "1");
        Standard_Boolean & ChangeValue(Standard_Integer const Index); 
};
//Var: Standard_Integer myLowerBound
//Get: None
//Set: None
//Var: Standard_Integer myUpperBound
//Get: None
//Set: None
//Var: Standard_Address myStart
//Get: None
//Set: None
//Var: Standard_Boolean isAllocated
//Get: None
//Set: None
%feature("shadow") TColStd_Array1OfBoolean::~TColStd_Array1OfBoolean {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_Array1OfBoolean {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColStd_Array1OfCharacter;

class TColStd_Array1OfCharacter  {
    public:

        %feature("autodoc", "1");
        TColStd_Array1OfCharacter(Standard_Integer const Low, Standard_Integer const Up);
        %feature("autodoc", "1");
        TColStd_Array1OfCharacter(Standard_Character const & Item, Standard_Integer const Low, Standard_Integer const Up);
        %feature("autodoc", "1");
        TColStd_Array1OfCharacter(TColStd_Array1OfCharacter const & AnArray);
        %feature("autodoc", "1");
        void Init(Standard_Character const & V);
        %feature("autodoc", "1");
        void Destroy();
        %feature("autodoc", "1");
        Standard_Boolean IsAllocated() const;
        %feature("autodoc", "1");
        TColStd_Array1OfCharacter const & Assign(TColStd_Array1OfCharacter const & Other);
        %feature("autodoc", "1");
        Standard_Integer Length() const;
        %feature("autodoc", "1");
        Standard_Integer Lower() const;
        %feature("autodoc", "1");
        Standard_Integer Upper() const;
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const Index, Standard_Character const & Value);
        %feature("autodoc", "1");
        Standard_Character const & Value(Standard_Integer const Index) const;
        %feature("autodoc", "1");
        Standard_Character & ChangeValue(Standard_Integer const Index); 
};
//Var: Standard_Integer myLowerBound
//Get: None
//Set: None
//Var: Standard_Integer myUpperBound
//Get: None
//Set: None
//Var: Standard_Address myStart
//Get: None
//Set: None
//Var: Standard_Boolean isAllocated
//Get: None
//Set: None
%feature("shadow") TColStd_Array1OfCharacter::~TColStd_Array1OfCharacter {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_Array1OfCharacter {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColStd_Array1OfExtendedString;

class TColStd_Array1OfExtendedString  {
    public:

        %feature("autodoc", "1");
        TColStd_Array1OfExtendedString(Standard_Integer const Low, Standard_Integer const Up);
        %feature("autodoc", "1");
        TColStd_Array1OfExtendedString(TCollection_ExtendedString const & Item, Standard_Integer const Low, Standard_Integer const Up);
        %feature("autodoc", "1");
        TColStd_Array1OfExtendedString(TColStd_Array1OfExtendedString const & AnArray);
        %feature("autodoc", "1");
        void Init(TCollection_ExtendedString const & V);
        %feature("autodoc", "1");
        void Destroy();
        %feature("autodoc", "1");
        Standard_Boolean IsAllocated() const;
        %feature("autodoc", "1");
        TColStd_Array1OfExtendedString const & Assign(TColStd_Array1OfExtendedString const & Other);
        %feature("autodoc", "1");
        Standard_Integer Length() const;
        %feature("autodoc", "1");
        Standard_Integer Lower() const;
        %feature("autodoc", "1");
        Standard_Integer Upper() const;
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const Index, TCollection_ExtendedString const & Value);
        %feature("autodoc", "1");
        TCollection_ExtendedString const & Value(Standard_Integer const Index) const;
        %feature("autodoc", "1");
        TCollection_ExtendedString & ChangeValue(Standard_Integer const Index); 
};
//Var: Standard_Integer myLowerBound
//Get: None
//Set: None
//Var: Standard_Integer myUpperBound
//Get: None
//Set: None
//Var: Standard_Address myStart
//Get: None
//Set: None
//Var: Standard_Boolean isAllocated
//Get: None
//Set: None
%feature("shadow") TColStd_Array1OfExtendedString::~TColStd_Array1OfExtendedString {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_Array1OfExtendedString {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColStd_Array1OfInteger;

class TColStd_Array1OfInteger  {
    public:

        %feature("autodoc", "1");
        TColStd_Array1OfInteger(Standard_Integer const Low, Standard_Integer const Up);
        %feature("autodoc", "1");
        TColStd_Array1OfInteger(Standard_Integer const & Item, Standard_Integer const Low, Standard_Integer const Up);
        %feature("autodoc", "1");
        TColStd_Array1OfInteger(TColStd_Array1OfInteger const & AnArray);
        %feature("autodoc", "1");
        void Init(Standard_Integer const & V);
        %feature("autodoc", "1");
        void Destroy();
        %feature("autodoc", "1");
        Standard_Boolean IsAllocated() const;
        %feature("autodoc", "1");
        TColStd_Array1OfInteger const & Assign(TColStd_Array1OfInteger const & Other);
        %feature("autodoc", "1");
        Standard_Integer Length() const;
        %feature("autodoc", "1");
        Standard_Integer Lower() const;
        %feature("autodoc", "1");
        Standard_Integer Upper() const;
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const Index, Standard_Integer const & Value);
        %feature("autodoc", "1");
        Standard_Integer const & Value(Standard_Integer const Index) const;
        %feature("autodoc", "1");
        Standard_Integer & ChangeValue(Standard_Integer const Index); 
};
//Var: Standard_Integer myLowerBound
//Get: None
//Set: None
//Var: Standard_Integer myUpperBound
//Get: None
//Set: None
//Var: Standard_Address myStart
//Get: None
//Set: None
//Var: Standard_Boolean isAllocated
//Get: None
//Set: None
%feature("shadow") TColStd_Array1OfInteger::~TColStd_Array1OfInteger {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_Array1OfInteger {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColStd_Array1OfListOfInteger;

class TColStd_Array1OfListOfInteger  {
    public:

        %feature("autodoc", "1");
        TColStd_Array1OfListOfInteger(Standard_Integer const Low, Standard_Integer const Up);
        %feature("autodoc", "1");
        TColStd_Array1OfListOfInteger(TColStd_ListOfInteger const & Item, Standard_Integer const Low, Standard_Integer const Up);
        %feature("autodoc", "1");
        TColStd_Array1OfListOfInteger(TColStd_Array1OfListOfInteger const & AnArray);
        %feature("autodoc", "1");
        void Init(TColStd_ListOfInteger const & V);
        %feature("autodoc", "1");
        void Destroy();
        %feature("autodoc", "1");
        Standard_Boolean IsAllocated() const;
        %feature("autodoc", "1");
        TColStd_Array1OfListOfInteger const & Assign(TColStd_Array1OfListOfInteger const & Other);
        %feature("autodoc", "1");
        Standard_Integer Length() const;
        %feature("autodoc", "1");
        Standard_Integer Lower() const;
        %feature("autodoc", "1");
        Standard_Integer Upper() const;
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const Index, TColStd_ListOfInteger const & Value);
        %feature("autodoc", "1");
        TColStd_ListOfInteger const & Value(Standard_Integer const Index) const;
        %feature("autodoc", "1");
        TColStd_ListOfInteger & ChangeValue(Standard_Integer const Index); 
};
//Var: Standard_Integer myLowerBound
//Get: None
//Set: None
//Var: Standard_Integer myUpperBound
//Get: None
//Set: None
//Var: Standard_Address myStart
//Get: None
//Set: None
//Var: Standard_Boolean isAllocated
//Get: None
//Set: None
%feature("shadow") TColStd_Array1OfListOfInteger::~TColStd_Array1OfListOfInteger {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_Array1OfListOfInteger {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColStd_Array1OfReal;

class TColStd_Array1OfReal  {
    public:

        %feature("autodoc", "1");
        TColStd_Array1OfReal(Standard_Integer const Low, Standard_Integer const Up);
        %feature("autodoc", "1");
        TColStd_Array1OfReal(Standard_Real const & Item, Standard_Integer const Low, Standard_Integer const Up);
        %feature("autodoc", "1");
        TColStd_Array1OfReal(TColStd_Array1OfReal const & AnArray);
        %feature("autodoc", "1");
        void Init(Standard_Real const & V);
        %feature("autodoc", "1");
        void Destroy();
        %feature("autodoc", "1");
        Standard_Boolean IsAllocated() const;
        %feature("autodoc", "1");
        TColStd_Array1OfReal const & Assign(TColStd_Array1OfReal const & Other);
        %feature("autodoc", "1");
        Standard_Integer Length() const;
        %feature("autodoc", "1");
        Standard_Integer Lower() const;
        %feature("autodoc", "1");
        Standard_Integer Upper() const;
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const Index, Standard_Real const & Value);
        %feature("autodoc", "1");
        Standard_Real const & Value(Standard_Integer const Index) const;
        %feature("autodoc", "1");
        Standard_Real & ChangeValue(Standard_Integer const Index); 
};
//Var: Standard_Integer myLowerBound
//Get: None
//Set: None
//Var: Standard_Integer myUpperBound
//Get: None
//Set: None
//Var: Standard_Address myStart
//Get: None
//Set: None
//Var: Standard_Boolean isAllocated
//Get: None
//Set: None
%feature("shadow") TColStd_Array1OfReal::~TColStd_Array1OfReal {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_Array1OfReal {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColStd_Array1OfTransient;

class TColStd_Array1OfTransient  {
    public:

        %feature("autodoc", "1");
        TColStd_Array1OfTransient(Standard_Integer const Low, Standard_Integer const Up);
        %feature("autodoc", "1");
        TColStd_Array1OfTransient(Handle_Standard_Transient const & Item, Standard_Integer const Low, Standard_Integer const Up);
        %feature("autodoc", "1");
        TColStd_Array1OfTransient(TColStd_Array1OfTransient const & AnArray);
        %feature("autodoc", "1");
        void Init(Handle_Standard_Transient const & V);
        %feature("autodoc", "1");
        void Destroy();
        %feature("autodoc", "1");
        Standard_Boolean IsAllocated() const;
        %feature("autodoc", "1");
        TColStd_Array1OfTransient const & Assign(TColStd_Array1OfTransient const & Other);
        %feature("autodoc", "1");
        Standard_Integer Length() const;
        %feature("autodoc", "1");
        Standard_Integer Lower() const;
        %feature("autodoc", "1");
        Standard_Integer Upper() const;
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const Index, Handle_Standard_Transient const & Value);
        %feature("autodoc", "1");
        Handle_Standard_Transient const & Value(Standard_Integer const Index) const;
        %feature("autodoc", "1");
        Handle_Standard_Transient & ChangeValue(Standard_Integer const Index); 
};
//Var: Standard_Integer myLowerBound
//Get: None
//Set: None
//Var: Standard_Integer myUpperBound
//Get: None
//Set: None
//Var: Standard_Address myStart
//Get: None
//Set: None
//Var: Standard_Boolean isAllocated
//Get: None
//Set: None
%feature("shadow") TColStd_Array1OfTransient::~TColStd_Array1OfTransient {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_Array1OfTransient {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColStd_Array2OfBoolean;

class TColStd_Array2OfBoolean  {
    public:

        %feature("autodoc", "1");
        TColStd_Array2OfBoolean(Standard_Integer const R1, Standard_Integer const R2, Standard_Integer const C1, Standard_Integer const C2);
        %feature("autodoc", "1");
        TColStd_Array2OfBoolean(Standard_Boolean const & Item, Standard_Integer const R1, Standard_Integer const R2, Standard_Integer const C1, Standard_Integer const C2);
        %feature("autodoc", "1");
        TColStd_Array2OfBoolean(TColStd_Array2OfBoolean const & AnArray);
        %feature("autodoc", "1");
        void Init(Standard_Boolean const & V);
        %feature("autodoc", "1");
        void Destroy();
        %feature("autodoc", "1");
        TColStd_Array2OfBoolean const & Assign(TColStd_Array2OfBoolean const & Other);
        %feature("autodoc", "1");
        Standard_Integer ColLength() const;
        %feature("autodoc", "1");
        Standard_Integer RowLength() const;
        %feature("autodoc", "1");
        Standard_Integer LowerCol() const;
        %feature("autodoc", "1");
        Standard_Integer LowerRow() const;
        %feature("autodoc", "1");
        Standard_Integer UpperCol() const;
        %feature("autodoc", "1");
        Standard_Integer UpperRow() const;
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const Row, Standard_Integer const Col, Standard_Boolean const & Value);
        %feature("autodoc", "1");
        Standard_Boolean const & Value(Standard_Integer const Row, Standard_Integer const Col) const;
        %feature("autodoc", "1");
        Standard_Boolean & ChangeValue(Standard_Integer const Row, Standard_Integer const Col);
        %feature("autodoc", "1");
        void Allocate(); 
};
//Var: Standard_Integer myLowerRow
//Get: None
//Set: None
//Var: Standard_Integer myLowerColumn
//Get: None
//Set: None
//Var: Standard_Integer myUpperRow
//Get: None
//Set: None
//Var: Standard_Integer myUpperColumn
//Get: None
//Set: None
//Var: Standard_Boolean myDeletable
//Get: None
//Set: None
//Var: Standard_Address myData
//Get: None
//Set: None
%feature("shadow") TColStd_Array2OfBoolean::~TColStd_Array2OfBoolean {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_Array2OfBoolean {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColStd_Array2OfCharacter;

class TColStd_Array2OfCharacter  {
    public:

        %feature("autodoc", "1");
        TColStd_Array2OfCharacter(Standard_Integer const R1, Standard_Integer const R2, Standard_Integer const C1, Standard_Integer const C2);
        %feature("autodoc", "1");
        TColStd_Array2OfCharacter(Standard_Character const & Item, Standard_Integer const R1, Standard_Integer const R2, Standard_Integer const C1, Standard_Integer const C2);
        %feature("autodoc", "1");
        TColStd_Array2OfCharacter(TColStd_Array2OfCharacter const & AnArray);
        %feature("autodoc", "1");
        void Init(Standard_Character const & V);
        %feature("autodoc", "1");
        void Destroy();
        %feature("autodoc", "1");
        TColStd_Array2OfCharacter const & Assign(TColStd_Array2OfCharacter const & Other);
        %feature("autodoc", "1");
        Standard_Integer ColLength() const;
        %feature("autodoc", "1");
        Standard_Integer RowLength() const;
        %feature("autodoc", "1");
        Standard_Integer LowerCol() const;
        %feature("autodoc", "1");
        Standard_Integer LowerRow() const;
        %feature("autodoc", "1");
        Standard_Integer UpperCol() const;
        %feature("autodoc", "1");
        Standard_Integer UpperRow() const;
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const Row, Standard_Integer const Col, Standard_Character const & Value);
        %feature("autodoc", "1");
        Standard_Character const & Value(Standard_Integer const Row, Standard_Integer const Col) const;
        %feature("autodoc", "1");
        Standard_Character & ChangeValue(Standard_Integer const Row, Standard_Integer const Col);
        %feature("autodoc", "1");
        void Allocate(); 
};
//Var: Standard_Integer myLowerRow
//Get: None
//Set: None
//Var: Standard_Integer myLowerColumn
//Get: None
//Set: None
//Var: Standard_Integer myUpperRow
//Get: None
//Set: None
//Var: Standard_Integer myUpperColumn
//Get: None
//Set: None
//Var: Standard_Boolean myDeletable
//Get: None
//Set: None
//Var: Standard_Address myData
//Get: None
//Set: None
%feature("shadow") TColStd_Array2OfCharacter::~TColStd_Array2OfCharacter {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_Array2OfCharacter {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColStd_Array2OfInteger;

class TColStd_Array2OfInteger  {
    public:

        %feature("autodoc", "1");
        TColStd_Array2OfInteger(Standard_Integer const R1, Standard_Integer const R2, Standard_Integer const C1, Standard_Integer const C2);
        %feature("autodoc", "1");
        TColStd_Array2OfInteger(Standard_Integer const & Item, Standard_Integer const R1, Standard_Integer const R2, Standard_Integer const C1, Standard_Integer const C2);
        %feature("autodoc", "1");
        TColStd_Array2OfInteger(TColStd_Array2OfInteger const & AnArray);
        %feature("autodoc", "1");
        void Init(Standard_Integer const & V);
        %feature("autodoc", "1");
        void Destroy();
        %feature("autodoc", "1");
        TColStd_Array2OfInteger const & Assign(TColStd_Array2OfInteger const & Other);
        %feature("autodoc", "1");
        Standard_Integer ColLength() const;
        %feature("autodoc", "1");
        Standard_Integer RowLength() const;
        %feature("autodoc", "1");
        Standard_Integer LowerCol() const;
        %feature("autodoc", "1");
        Standard_Integer LowerRow() const;
        %feature("autodoc", "1");
        Standard_Integer UpperCol() const;
        %feature("autodoc", "1");
        Standard_Integer UpperRow() const;
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const Row, Standard_Integer const Col, Standard_Integer const & Value);
        %feature("autodoc", "1");
        Standard_Integer const & Value(Standard_Integer const Row, Standard_Integer const Col) const;
        %feature("autodoc", "1");
        Standard_Integer & ChangeValue(Standard_Integer const Row, Standard_Integer const Col);
        %feature("autodoc", "1");
        void Allocate(); 
};
//Var: Standard_Integer myLowerRow
//Get: None
//Set: None
//Var: Standard_Integer myLowerColumn
//Get: None
//Set: None
//Var: Standard_Integer myUpperRow
//Get: None
//Set: None
//Var: Standard_Integer myUpperColumn
//Get: None
//Set: None
//Var: Standard_Boolean myDeletable
//Get: None
//Set: None
//Var: Standard_Address myData
//Get: None
//Set: None
%feature("shadow") TColStd_Array2OfInteger::~TColStd_Array2OfInteger {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_Array2OfInteger {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColStd_Array2OfReal;

class TColStd_Array2OfReal  {
    public:

        %feature("autodoc", "1");
        TColStd_Array2OfReal(Standard_Integer const R1, Standard_Integer const R2, Standard_Integer const C1, Standard_Integer const C2);
        %feature("autodoc", "1");
        TColStd_Array2OfReal(Standard_Real const & Item, Standard_Integer const R1, Standard_Integer const R2, Standard_Integer const C1, Standard_Integer const C2);
        %feature("autodoc", "1");
        TColStd_Array2OfReal(TColStd_Array2OfReal const & AnArray);
        %feature("autodoc", "1");
        void Init(Standard_Real const & V);
        %feature("autodoc", "1");
        void Destroy();
        %feature("autodoc", "1");
        TColStd_Array2OfReal const & Assign(TColStd_Array2OfReal const & Other);
        %feature("autodoc", "1");
        Standard_Integer ColLength() const;
        %feature("autodoc", "1");
        Standard_Integer RowLength() const;
        %feature("autodoc", "1");
        Standard_Integer LowerCol() const;
        %feature("autodoc", "1");
        Standard_Integer LowerRow() const;
        %feature("autodoc", "1");
        Standard_Integer UpperCol() const;
        %feature("autodoc", "1");
        Standard_Integer UpperRow() const;
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const Row, Standard_Integer const Col, Standard_Real const & Value);
        %feature("autodoc", "1");
        Standard_Real const & Value(Standard_Integer const Row, Standard_Integer const Col) const;
        %feature("autodoc", "1");
        Standard_Real & ChangeValue(Standard_Integer const Row, Standard_Integer const Col);
        %feature("autodoc", "1");
        void Allocate(); 
};
//Var: Standard_Integer myLowerRow
//Get: None
//Set: None
//Var: Standard_Integer myLowerColumn
//Get: None
//Set: None
//Var: Standard_Integer myUpperRow
//Get: None
//Set: None
//Var: Standard_Integer myUpperColumn
//Get: None
//Set: None
//Var: Standard_Boolean myDeletable
//Get: None
//Set: None
//Var: Standard_Address myData
//Get: None
//Set: None
%feature("shadow") TColStd_Array2OfReal::~TColStd_Array2OfReal {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_Array2OfReal {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColStd_Array2OfTransient;

class TColStd_Array2OfTransient  {
    public:

        %feature("autodoc", "1");
        TColStd_Array2OfTransient(Standard_Integer const R1, Standard_Integer const R2, Standard_Integer const C1, Standard_Integer const C2);
        %feature("autodoc", "1");
        TColStd_Array2OfTransient(Handle_Standard_Transient const & Item, Standard_Integer const R1, Standard_Integer const R2, Standard_Integer const C1, Standard_Integer const C2);
        %feature("autodoc", "1");
        TColStd_Array2OfTransient(TColStd_Array2OfTransient const & AnArray);
        %feature("autodoc", "1");
        void Init(Handle_Standard_Transient const & V);
        %feature("autodoc", "1");
        void Destroy();
        %feature("autodoc", "1");
        TColStd_Array2OfTransient const & Assign(TColStd_Array2OfTransient const & Other);
        %feature("autodoc", "1");
        Standard_Integer ColLength() const;
        %feature("autodoc", "1");
        Standard_Integer RowLength() const;
        %feature("autodoc", "1");
        Standard_Integer LowerCol() const;
        %feature("autodoc", "1");
        Standard_Integer LowerRow() const;
        %feature("autodoc", "1");
        Standard_Integer UpperCol() const;
        %feature("autodoc", "1");
        Standard_Integer UpperRow() const;
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const Row, Standard_Integer const Col, Handle_Standard_Transient const & Value);
        %feature("autodoc", "1");
        Handle_Standard_Transient const & Value(Standard_Integer const Row, Standard_Integer const Col) const;
        %feature("autodoc", "1");
        Handle_Standard_Transient & ChangeValue(Standard_Integer const Row, Standard_Integer const Col);
        %feature("autodoc", "1");
        void Allocate(); 
};
//Var: Standard_Integer myLowerRow
//Get: None
//Set: None
//Var: Standard_Integer myLowerColumn
//Get: None
//Set: None
//Var: Standard_Integer myUpperRow
//Get: None
//Set: None
//Var: Standard_Integer myUpperColumn
//Get: None
//Set: None
//Var: Standard_Boolean myDeletable
//Get: None
//Set: None
//Var: Standard_Address myData
//Get: None
//Set: None
%feature("shadow") TColStd_Array2OfTransient::~TColStd_Array2OfTransient {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_Array2OfTransient {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColStd_ListIteratorOfListOfInteger;

class TColStd_ListIteratorOfListOfInteger  {
    public:

        %feature("autodoc", "1");
        TColStd_ListIteratorOfListOfInteger(TColStd_ListIteratorOfListOfInteger const & arg0);
        %feature("autodoc", "1");
        TColStd_ListIteratorOfListOfInteger();
        %feature("autodoc", "1");
        TColStd_ListIteratorOfListOfInteger(TColStd_ListOfInteger const & L);
        %feature("autodoc", "1");
        void Initialize(TColStd_ListOfInteger const & L);
        %feature("autodoc", "1");
        Standard_Boolean More() const;
        %feature("autodoc", "1");
        void Next();
        %feature("autodoc", "1");
        Standard_Integer & Value() const; 
};
//Var: Standard_Address current
//Get: None
//Set: None
//Var: Standard_Address previous
//Get: None
//Set: None
%feature("shadow") TColStd_ListIteratorOfListOfInteger::~TColStd_ListIteratorOfListOfInteger {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_ListIteratorOfListOfInteger {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColStd_ListIteratorOfListOfReal;

class TColStd_ListIteratorOfListOfReal  {
    public:

        %feature("autodoc", "1");
        TColStd_ListIteratorOfListOfReal(TColStd_ListIteratorOfListOfReal const & arg0);
        %feature("autodoc", "1");
        TColStd_ListIteratorOfListOfReal();
        %feature("autodoc", "1");
        TColStd_ListIteratorOfListOfReal(TColStd_ListOfReal const & L);
        %feature("autodoc", "1");
        void Initialize(TColStd_ListOfReal const & L);
        %feature("autodoc", "1");
        Standard_Boolean More() const;
        %feature("autodoc", "1");
        void Next();
        %feature("autodoc", "1");
        Standard_Real & Value() const; 
};
//Var: Standard_Address current
//Get: None
//Set: None
//Var: Standard_Address previous
//Get: None
//Set: None
%feature("shadow") TColStd_ListIteratorOfListOfReal::~TColStd_ListIteratorOfListOfReal {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_ListIteratorOfListOfReal {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColStd_ListIteratorOfListOfTransient;

class TColStd_ListIteratorOfListOfTransient  {
    public:

        %feature("autodoc", "1");
        TColStd_ListIteratorOfListOfTransient(TColStd_ListIteratorOfListOfTransient const & arg0);
        %feature("autodoc", "1");
        TColStd_ListIteratorOfListOfTransient();
        %feature("autodoc", "1");
        TColStd_ListIteratorOfListOfTransient(TColStd_ListOfTransient const & L);
        %feature("autodoc", "1");
        void Initialize(TColStd_ListOfTransient const & L);
        %feature("autodoc", "1");
        Standard_Boolean More() const;
        %feature("autodoc", "1");
        void Next();
        %feature("autodoc", "1");
        Handle_Standard_Transient & Value() const; 
};
//Var: Standard_Address current
//Get: None
//Set: None
//Var: Standard_Address previous
//Get: None
//Set: None
%feature("shadow") TColStd_ListIteratorOfListOfTransient::~TColStd_ListIteratorOfListOfTransient {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_ListIteratorOfListOfTransient {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColStd_ListIteratorOfSetListOfSetOfInteger;

class TColStd_ListIteratorOfSetListOfSetOfInteger  {
    public:

        %feature("autodoc", "1");
        TColStd_ListIteratorOfSetListOfSetOfInteger(TColStd_ListIteratorOfSetListOfSetOfInteger const & arg0);
        %feature("autodoc", "1");
        TColStd_ListIteratorOfSetListOfSetOfInteger();
        %feature("autodoc", "1");
        TColStd_ListIteratorOfSetListOfSetOfInteger(TColStd_SetListOfSetOfInteger const & L);
        %feature("autodoc", "1");
        void Initialize(TColStd_SetListOfSetOfInteger const & L);
        %feature("autodoc", "1");
        Standard_Boolean More() const;
        %feature("autodoc", "1");
        void Next();
        %feature("autodoc", "1");
        Standard_Integer & Value() const; 
};
//Var: Standard_Address current
//Get: None
//Set: None
//Var: Standard_Address previous
//Get: None
//Set: None
%feature("shadow") TColStd_ListIteratorOfSetListOfSetOfInteger::~TColStd_ListIteratorOfSetListOfSetOfInteger {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_ListIteratorOfSetListOfSetOfInteger {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColStd_ListIteratorOfSetListOfSetOfReal;

class TColStd_ListIteratorOfSetListOfSetOfReal  {
    public:

        %feature("autodoc", "1");
        TColStd_ListIteratorOfSetListOfSetOfReal(TColStd_ListIteratorOfSetListOfSetOfReal const & arg0);
        %feature("autodoc", "1");
        TColStd_ListIteratorOfSetListOfSetOfReal();
        %feature("autodoc", "1");
        TColStd_ListIteratorOfSetListOfSetOfReal(TColStd_SetListOfSetOfReal const & L);
        %feature("autodoc", "1");
        void Initialize(TColStd_SetListOfSetOfReal const & L);
        %feature("autodoc", "1");
        Standard_Boolean More() const;
        %feature("autodoc", "1");
        void Next();
        %feature("autodoc", "1");
        Standard_Real & Value() const; 
};
//Var: Standard_Address current
//Get: None
//Set: None
//Var: Standard_Address previous
//Get: None
//Set: None
%feature("shadow") TColStd_ListIteratorOfSetListOfSetOfReal::~TColStd_ListIteratorOfSetListOfSetOfReal {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_ListIteratorOfSetListOfSetOfReal {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColStd_ListIteratorOfSetListOfSetOfTransient;

class TColStd_ListIteratorOfSetListOfSetOfTransient  {
    public:

        %feature("autodoc", "1");
        TColStd_ListIteratorOfSetListOfSetOfTransient(TColStd_ListIteratorOfSetListOfSetOfTransient const & arg0);
        %feature("autodoc", "1");
        TColStd_ListIteratorOfSetListOfSetOfTransient();
        %feature("autodoc", "1");
        TColStd_ListIteratorOfSetListOfSetOfTransient(TColStd_SetListOfSetOfTransient const & L);
        %feature("autodoc", "1");
        void Initialize(TColStd_SetListOfSetOfTransient const & L);
        %feature("autodoc", "1");
        Standard_Boolean More() const;
        %feature("autodoc", "1");
        void Next();
        %feature("autodoc", "1");
        Handle_Standard_Transient & Value() const; 
};
//Var: Standard_Address current
//Get: None
//Set: None
//Var: Standard_Address previous
//Get: None
//Set: None
%feature("shadow") TColStd_ListIteratorOfSetListOfSetOfTransient::~TColStd_ListIteratorOfSetListOfSetOfTransient {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_ListIteratorOfSetListOfSetOfTransient {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColStd_ListOfInteger;

class TColStd_ListOfInteger  {
    public:

        %feature("autodoc", "1");
        TColStd_ListOfInteger();
        %feature("autodoc", "1");
        TColStd_ListOfInteger(TColStd_ListOfInteger const & Other);
        %feature("autodoc", "1");
        void Assign(TColStd_ListOfInteger const & Other);
        %feature("autodoc", "1");
        Standard_Integer Extent() const;
        %feature("autodoc", "1");
        void Clear();
        %feature("autodoc", "1");
        Standard_Boolean IsEmpty() const;
        %feature("autodoc", "1");
        void Prepend(Standard_Integer const & I);
        %feature("autodoc", "1");
        void Prepend(Standard_Integer const & I, TColStd_ListIteratorOfListOfInteger & theIt);
        %feature("autodoc", "1");
        void Prepend(TColStd_ListOfInteger & Other);
        %feature("autodoc", "1");
        void Append(Standard_Integer const & I);
        %feature("autodoc", "1");
        void Append(Standard_Integer const & I, TColStd_ListIteratorOfListOfInteger & theIt);
        %feature("autodoc", "1");
        void Append(TColStd_ListOfInteger & Other);
        %feature("autodoc", "1");
        Standard_Integer & First() const;
        %feature("autodoc", "1");
        Standard_Integer & Last() const;
        %feature("autodoc", "1");
        void RemoveFirst();
        %feature("autodoc", "1");
        void Remove(TColStd_ListIteratorOfListOfInteger & It);
        %feature("autodoc", "1");
        void InsertBefore(Standard_Integer const & I, TColStd_ListIteratorOfListOfInteger & It);
        %feature("autodoc", "1");
        void InsertBefore(TColStd_ListOfInteger & Other, TColStd_ListIteratorOfListOfInteger & It);
        %feature("autodoc", "1");
        void InsertAfter(Standard_Integer const & I, TColStd_ListIteratorOfListOfInteger & It);
        %feature("autodoc", "1");
        void InsertAfter(TColStd_ListOfInteger & Other, TColStd_ListIteratorOfListOfInteger & It); 
};
//Var: Standard_Address myFirst
//Get: None
//Set: None
//Var: Standard_Address myLast
//Get: None
//Set: None
%feature("shadow") TColStd_ListOfInteger::~TColStd_ListOfInteger {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_ListOfInteger {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColStd_ListOfReal;

class TColStd_ListOfReal  {
    public:

        %feature("autodoc", "1");
        TColStd_ListOfReal();
        %feature("autodoc", "1");
        TColStd_ListOfReal(TColStd_ListOfReal const & Other);
        %feature("autodoc", "1");
        void Assign(TColStd_ListOfReal const & Other);
        %feature("autodoc", "1");
        Standard_Integer Extent() const;
        %feature("autodoc", "1");
        void Clear();
        %feature("autodoc", "1");
        Standard_Boolean IsEmpty() const;
        %feature("autodoc", "1");
        void Prepend(Standard_Real const & I);
        %feature("autodoc", "1");
        void Prepend(Standard_Real const & I, TColStd_ListIteratorOfListOfReal & theIt);
        %feature("autodoc", "1");
        void Prepend(TColStd_ListOfReal & Other);
        %feature("autodoc", "1");
        void Append(Standard_Real const & I);
        %feature("autodoc", "1");
        void Append(Standard_Real const & I, TColStd_ListIteratorOfListOfReal & theIt);
        %feature("autodoc", "1");
        void Append(TColStd_ListOfReal & Other);
        %feature("autodoc", "1");
        Standard_Real & First() const;
        %feature("autodoc", "1");
        Standard_Real & Last() const;
        %feature("autodoc", "1");
        void RemoveFirst();
        %feature("autodoc", "1");
        void Remove(TColStd_ListIteratorOfListOfReal & It);
        %feature("autodoc", "1");
        void InsertBefore(Standard_Real const & I, TColStd_ListIteratorOfListOfReal & It);
        %feature("autodoc", "1");
        void InsertBefore(TColStd_ListOfReal & Other, TColStd_ListIteratorOfListOfReal & It);
        %feature("autodoc", "1");
        void InsertAfter(Standard_Real const & I, TColStd_ListIteratorOfListOfReal & It);
        %feature("autodoc", "1");
        void InsertAfter(TColStd_ListOfReal & Other, TColStd_ListIteratorOfListOfReal & It); 
};
//Var: Standard_Address myFirst
//Get: None
//Set: None
//Var: Standard_Address myLast
//Get: None
//Set: None
%feature("shadow") TColStd_ListOfReal::~TColStd_ListOfReal {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_ListOfReal {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColStd_ListOfTransient;

class TColStd_ListOfTransient  {
    public:

        %feature("autodoc", "1");
        TColStd_ListOfTransient();
        %feature("autodoc", "1");
        TColStd_ListOfTransient(TColStd_ListOfTransient const & Other);
        %feature("autodoc", "1");
        void Assign(TColStd_ListOfTransient const & Other);
        %feature("autodoc", "1");
        Standard_Integer Extent() const;
        %feature("autodoc", "1");
        void Clear();
        %feature("autodoc", "1");
        Standard_Boolean IsEmpty() const;
        %feature("autodoc", "1");
        void Prepend(Handle_Standard_Transient const & I);
        %feature("autodoc", "1");
        void Prepend(Handle_Standard_Transient const & I, TColStd_ListIteratorOfListOfTransient & theIt);
        %feature("autodoc", "1");
        void Prepend(TColStd_ListOfTransient & Other);
        %feature("autodoc", "1");
        void Append(Handle_Standard_Transient const & I);
        %feature("autodoc", "1");
        void Append(Handle_Standard_Transient const & I, TColStd_ListIteratorOfListOfTransient & theIt);
        %feature("autodoc", "1");
        void Append(TColStd_ListOfTransient & Other);
        %feature("autodoc", "1");
        Handle_Standard_Transient & First() const;
        %feature("autodoc", "1");
        Handle_Standard_Transient & Last() const;
        %feature("autodoc", "1");
        void RemoveFirst();
        %feature("autodoc", "1");
        void Remove(TColStd_ListIteratorOfListOfTransient & It);
        %feature("autodoc", "1");
        void InsertBefore(Handle_Standard_Transient const & I, TColStd_ListIteratorOfListOfTransient & It);
        %feature("autodoc", "1");
        void InsertBefore(TColStd_ListOfTransient & Other, TColStd_ListIteratorOfListOfTransient & It);
        %feature("autodoc", "1");
        void InsertAfter(Handle_Standard_Transient const & I, TColStd_ListIteratorOfListOfTransient & It);
        %feature("autodoc", "1");
        void InsertAfter(TColStd_ListOfTransient & Other, TColStd_ListIteratorOfListOfTransient & It); 
};
//Var: Standard_Address myFirst
//Get: None
//Set: None
//Var: Standard_Address myLast
//Get: None
//Set: None
%feature("shadow") TColStd_ListOfTransient::~TColStd_ListOfTransient {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_ListOfTransient {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColStd_MapIntegerHasher;

class TColStd_MapIntegerHasher  {
    public:

        %feature("autodoc", "1");
        TColStd_MapIntegerHasher(TColStd_MapIntegerHasher const & arg0);
        %feature("autodoc", "1");
        TColStd_MapIntegerHasher();
        %feature("autodoc", "1");
        Standard_Integer HashCode(Standard_Integer const & K, Standard_Integer const Upper);
        %feature("autodoc", "1");
        Standard_Boolean IsEqual(Standard_Integer const & K1, Standard_Integer const & K2); 
};

%feature("shadow") TColStd_MapIntegerHasher::~TColStd_MapIntegerHasher {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_MapIntegerHasher {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColStd_MapIntegerHasher {
    Standard_Integer __hash__() {
        return $self->HashCode(__PYTHONOCC_MAXINT__);
    }
};
   
%nodefaultctor TColStd_MapRealHasher;

class TColStd_MapRealHasher  {
    public:

        %feature("autodoc", "1");
        TColStd_MapRealHasher(TColStd_MapRealHasher const & arg0);
        %feature("autodoc", "1");
        TColStd_MapRealHasher();
        %feature("autodoc", "1");
        Standard_Integer HashCode(Standard_Real const & K, Standard_Integer const Upper);
        %feature("autodoc", "1");
        Standard_Boolean IsEqual(Standard_Real const & K1, Standard_Real const & K2); 
};

%feature("shadow") TColStd_MapRealHasher::~TColStd_MapRealHasher {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_MapRealHasher {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColStd_MapRealHasher {
    Standard_Integer __hash__() {
        return $self->HashCode(__PYTHONOCC_MAXINT__);
    }
};
   
%nodefaultctor TColStd_MapTransientHasher;

class TColStd_MapTransientHasher  {
    public:

        %feature("autodoc", "1");
        TColStd_MapTransientHasher(TColStd_MapTransientHasher const & arg0);
        %feature("autodoc", "1");
        TColStd_MapTransientHasher();
        %feature("autodoc", "1");
        Standard_Integer HashCode(Handle_Standard_Transient const & K, Standard_Integer const Upper);
        %feature("autodoc", "1");
        Standard_Boolean IsEqual(Handle_Standard_Transient const & K1, Handle_Standard_Transient const & K2); 
};

%feature("shadow") TColStd_MapTransientHasher::~TColStd_MapTransientHasher {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_MapTransientHasher {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColStd_MapTransientHasher {
    Standard_Integer __hash__() {
        return $self->HashCode(__PYTHONOCC_MAXINT__);
    }
};
   
%nodefaultctor TColStd_QueueOfInteger;

class TColStd_QueueOfInteger  {
    public:

        %feature("autodoc", "1");
        TColStd_QueueOfInteger();
        %feature("autodoc", "1");
        TColStd_QueueOfInteger(TColStd_QueueOfInteger const & Other);
        %feature("autodoc", "1");
        TColStd_QueueOfInteger const & Assign(TColStd_QueueOfInteger const & Other);
        %feature("autodoc", "1");
        Standard_Integer Length() const;
        %feature("autodoc", "1");
        Standard_Boolean IsEmpty() const;
        %feature("autodoc", "1");
        Standard_Integer const & Front() const;
        %feature("autodoc", "1");
        void Clear();
        %feature("autodoc", "1");
        void Push(Standard_Integer const & T);
        %feature("autodoc", "1");
        void Pop();
        %feature("autodoc", "1");
        Standard_Integer & ChangeFront(); 
};
//Var: Standard_Address myFront
//Get: None
//Set: None
//Var: Standard_Address myEnd
//Get: None
//Set: None
//Var: Standard_Integer myLength
//Get: None
//Set: None
%feature("shadow") TColStd_QueueOfInteger::~TColStd_QueueOfInteger {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_QueueOfInteger {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColStd_QueueOfReal;

class TColStd_QueueOfReal  {
    public:

        %feature("autodoc", "1");
        TColStd_QueueOfReal();
        %feature("autodoc", "1");
        TColStd_QueueOfReal(TColStd_QueueOfReal const & Other);
        %feature("autodoc", "1");
        TColStd_QueueOfReal const & Assign(TColStd_QueueOfReal const & Other);
        %feature("autodoc", "1");
        Standard_Integer Length() const;
        %feature("autodoc", "1");
        Standard_Boolean IsEmpty() const;
        %feature("autodoc", "1");
        Standard_Real const & Front() const;
        %feature("autodoc", "1");
        void Clear();
        %feature("autodoc", "1");
        void Push(Standard_Real const & T);
        %feature("autodoc", "1");
        void Pop();
        %feature("autodoc", "1");
        Standard_Real & ChangeFront(); 
};
//Var: Standard_Address myFront
//Get: None
//Set: None
//Var: Standard_Address myEnd
//Get: None
//Set: None
//Var: Standard_Integer myLength
//Get: None
//Set: None
%feature("shadow") TColStd_QueueOfReal::~TColStd_QueueOfReal {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_QueueOfReal {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColStd_QueueOfTransient;

class TColStd_QueueOfTransient  {
    public:

        %feature("autodoc", "1");
        TColStd_QueueOfTransient();
        %feature("autodoc", "1");
        TColStd_QueueOfTransient(TColStd_QueueOfTransient const & Other);
        %feature("autodoc", "1");
        TColStd_QueueOfTransient const & Assign(TColStd_QueueOfTransient const & Other);
        %feature("autodoc", "1");
        Standard_Integer Length() const;
        %feature("autodoc", "1");
        Standard_Boolean IsEmpty() const;
        %feature("autodoc", "1");
        Handle_Standard_Transient const & Front() const;
        %feature("autodoc", "1");
        void Clear();
        %feature("autodoc", "1");
        void Push(Handle_Standard_Transient const & T);
        %feature("autodoc", "1");
        void Pop();
        %feature("autodoc", "1");
        Handle_Standard_Transient & ChangeFront(); 
};
//Var: Standard_Address myFront
//Get: None
//Set: None
//Var: Standard_Address myEnd
//Get: None
//Set: None
//Var: Standard_Integer myLength
//Get: None
//Set: None
%feature("shadow") TColStd_QueueOfTransient::~TColStd_QueueOfTransient {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_QueueOfTransient {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColStd_SetIteratorOfSetOfInteger;

class TColStd_SetIteratorOfSetOfInteger  {
    public:

        %feature("autodoc", "1");
        TColStd_SetIteratorOfSetOfInteger(TColStd_SetIteratorOfSetOfInteger const & arg0);
        %feature("autodoc", "1");
        TColStd_SetIteratorOfSetOfInteger();
        %feature("autodoc", "1");
        TColStd_SetIteratorOfSetOfInteger(TColStd_SetOfInteger const & S);
        %feature("autodoc", "1");
        void Initialize(TColStd_SetOfInteger const & S);
        %feature("autodoc", "1");
        Standard_Boolean More() const;
        %feature("autodoc", "1");
        void Next();
        %feature("autodoc", "1");
        Standard_Integer const & Value() const; 
};
//Var: TColStd_ListIteratorOfSetListOfSetOfInteger myIterator
//Get: None
//Set: None
%feature("shadow") TColStd_SetIteratorOfSetOfInteger::~TColStd_SetIteratorOfSetOfInteger {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_SetIteratorOfSetOfInteger {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColStd_SetIteratorOfSetOfReal;

class TColStd_SetIteratorOfSetOfReal  {
    public:

        %feature("autodoc", "1");
        TColStd_SetIteratorOfSetOfReal(TColStd_SetIteratorOfSetOfReal const & arg0);
        %feature("autodoc", "1");
        TColStd_SetIteratorOfSetOfReal();
        %feature("autodoc", "1");
        TColStd_SetIteratorOfSetOfReal(TColStd_SetOfReal const & S);
        %feature("autodoc", "1");
        void Initialize(TColStd_SetOfReal const & S);
        %feature("autodoc", "1");
        Standard_Boolean More() const;
        %feature("autodoc", "1");
        void Next();
        %feature("autodoc", "1");
        Standard_Real const & Value() const; 
};
//Var: TColStd_ListIteratorOfSetListOfSetOfReal myIterator
//Get: None
//Set: None
%feature("shadow") TColStd_SetIteratorOfSetOfReal::~TColStd_SetIteratorOfSetOfReal {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_SetIteratorOfSetOfReal {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColStd_SetIteratorOfSetOfTransient;

class TColStd_SetIteratorOfSetOfTransient  {
    public:

        %feature("autodoc", "1");
        TColStd_SetIteratorOfSetOfTransient(TColStd_SetIteratorOfSetOfTransient const & arg0);
        %feature("autodoc", "1");
        TColStd_SetIteratorOfSetOfTransient();
        %feature("autodoc", "1");
        TColStd_SetIteratorOfSetOfTransient(TColStd_SetOfTransient const & S);
        %feature("autodoc", "1");
        void Initialize(TColStd_SetOfTransient const & S);
        %feature("autodoc", "1");
        Standard_Boolean More() const;
        %feature("autodoc", "1");
        void Next();
        %feature("autodoc", "1");
        Handle_Standard_Transient const & Value() const; 
};
//Var: TColStd_ListIteratorOfSetListOfSetOfTransient myIterator
//Get: None
//Set: None
%feature("shadow") TColStd_SetIteratorOfSetOfTransient::~TColStd_SetIteratorOfSetOfTransient {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_SetIteratorOfSetOfTransient {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColStd_SetListOfSetOfInteger;

class TColStd_SetListOfSetOfInteger  {
    public:

        %feature("autodoc", "1");
        TColStd_SetListOfSetOfInteger();
        %feature("autodoc", "1");
        TColStd_SetListOfSetOfInteger(TColStd_SetListOfSetOfInteger const & Other);
        %feature("autodoc", "1");
        void Assign(TColStd_SetListOfSetOfInteger const & Other);
        %feature("autodoc", "1");
        Standard_Integer Extent() const;
        %feature("autodoc", "1");
        void Clear();
        %feature("autodoc", "1");
        Standard_Boolean IsEmpty() const;
        %feature("autodoc", "1");
        void Prepend(Standard_Integer const & I);
        %feature("autodoc", "1");
        void Prepend(Standard_Integer const & I, TColStd_ListIteratorOfSetListOfSetOfInteger & theIt);
        %feature("autodoc", "1");
        void Prepend(TColStd_SetListOfSetOfInteger & Other);
        %feature("autodoc", "1");
        void Append(Standard_Integer const & I);
        %feature("autodoc", "1");
        void Append(Standard_Integer const & I, TColStd_ListIteratorOfSetListOfSetOfInteger & theIt);
        %feature("autodoc", "1");
        void Append(TColStd_SetListOfSetOfInteger & Other);
        %feature("autodoc", "1");
        Standard_Integer & First() const;
        %feature("autodoc", "1");
        Standard_Integer & Last() const;
        %feature("autodoc", "1");
        void RemoveFirst();
        %feature("autodoc", "1");
        void Remove(TColStd_ListIteratorOfSetListOfSetOfInteger & It);
        %feature("autodoc", "1");
        void InsertBefore(Standard_Integer const & I, TColStd_ListIteratorOfSetListOfSetOfInteger & It);
        %feature("autodoc", "1");
        void InsertBefore(TColStd_SetListOfSetOfInteger & Other, TColStd_ListIteratorOfSetListOfSetOfInteger & It);
        %feature("autodoc", "1");
        void InsertAfter(Standard_Integer const & I, TColStd_ListIteratorOfSetListOfSetOfInteger & It);
        %feature("autodoc", "1");
        void InsertAfter(TColStd_SetListOfSetOfInteger & Other, TColStd_ListIteratorOfSetListOfSetOfInteger & It); 
};
//Var: Standard_Address myFirst
//Get: None
//Set: None
//Var: Standard_Address myLast
//Get: None
//Set: None
%feature("shadow") TColStd_SetListOfSetOfInteger::~TColStd_SetListOfSetOfInteger {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_SetListOfSetOfInteger {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColStd_SetListOfSetOfReal;

class TColStd_SetListOfSetOfReal  {
    public:

        %feature("autodoc", "1");
        TColStd_SetListOfSetOfReal();
        %feature("autodoc", "1");
        TColStd_SetListOfSetOfReal(TColStd_SetListOfSetOfReal const & Other);
        %feature("autodoc", "1");
        void Assign(TColStd_SetListOfSetOfReal const & Other);
        %feature("autodoc", "1");
        Standard_Integer Extent() const;
        %feature("autodoc", "1");
        void Clear();
        %feature("autodoc", "1");
        Standard_Boolean IsEmpty() const;
        %feature("autodoc", "1");
        void Prepend(Standard_Real const & I);
        %feature("autodoc", "1");
        void Prepend(Standard_Real const & I, TColStd_ListIteratorOfSetListOfSetOfReal & theIt);
        %feature("autodoc", "1");
        void Prepend(TColStd_SetListOfSetOfReal & Other);
        %feature("autodoc", "1");
        void Append(Standard_Real const & I);
        %feature("autodoc", "1");
        void Append(Standard_Real const & I, TColStd_ListIteratorOfSetListOfSetOfReal & theIt);
        %feature("autodoc", "1");
        void Append(TColStd_SetListOfSetOfReal & Other);
        %feature("autodoc", "1");
        Standard_Real & First() const;
        %feature("autodoc", "1");
        Standard_Real & Last() const;
        %feature("autodoc", "1");
        void RemoveFirst();
        %feature("autodoc", "1");
        void Remove(TColStd_ListIteratorOfSetListOfSetOfReal & It);
        %feature("autodoc", "1");
        void InsertBefore(Standard_Real const & I, TColStd_ListIteratorOfSetListOfSetOfReal & It);
        %feature("autodoc", "1");
        void InsertBefore(TColStd_SetListOfSetOfReal & Other, TColStd_ListIteratorOfSetListOfSetOfReal & It);
        %feature("autodoc", "1");
        void InsertAfter(Standard_Real const & I, TColStd_ListIteratorOfSetListOfSetOfReal & It);
        %feature("autodoc", "1");
        void InsertAfter(TColStd_SetListOfSetOfReal & Other, TColStd_ListIteratorOfSetListOfSetOfReal & It); 
};
//Var: Standard_Address myFirst
//Get: None
//Set: None
//Var: Standard_Address myLast
//Get: None
//Set: None
%feature("shadow") TColStd_SetListOfSetOfReal::~TColStd_SetListOfSetOfReal {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_SetListOfSetOfReal {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColStd_SetListOfSetOfTransient;

class TColStd_SetListOfSetOfTransient  {
    public:

        %feature("autodoc", "1");
        TColStd_SetListOfSetOfTransient();
        %feature("autodoc", "1");
        TColStd_SetListOfSetOfTransient(TColStd_SetListOfSetOfTransient const & Other);
        %feature("autodoc", "1");
        void Assign(TColStd_SetListOfSetOfTransient const & Other);
        %feature("autodoc", "1");
        Standard_Integer Extent() const;
        %feature("autodoc", "1");
        void Clear();
        %feature("autodoc", "1");
        Standard_Boolean IsEmpty() const;
        %feature("autodoc", "1");
        void Prepend(Handle_Standard_Transient const & I);
        %feature("autodoc", "1");
        void Prepend(Handle_Standard_Transient const & I, TColStd_ListIteratorOfSetListOfSetOfTransient & theIt);
        %feature("autodoc", "1");
        void Prepend(TColStd_SetListOfSetOfTransient & Other);
        %feature("autodoc", "1");
        void Append(Handle_Standard_Transient const & I);
        %feature("autodoc", "1");
        void Append(Handle_Standard_Transient const & I, TColStd_ListIteratorOfSetListOfSetOfTransient & theIt);
        %feature("autodoc", "1");
        void Append(TColStd_SetListOfSetOfTransient & Other);
        %feature("autodoc", "1");
        Handle_Standard_Transient & First() const;
        %feature("autodoc", "1");
        Handle_Standard_Transient & Last() const;
        %feature("autodoc", "1");
        void RemoveFirst();
        %feature("autodoc", "1");
        void Remove(TColStd_ListIteratorOfSetListOfSetOfTransient & It);
        %feature("autodoc", "1");
        void InsertBefore(Handle_Standard_Transient const & I, TColStd_ListIteratorOfSetListOfSetOfTransient & It);
        %feature("autodoc", "1");
        void InsertBefore(TColStd_SetListOfSetOfTransient & Other, TColStd_ListIteratorOfSetListOfSetOfTransient & It);
        %feature("autodoc", "1");
        void InsertAfter(Handle_Standard_Transient const & I, TColStd_ListIteratorOfSetListOfSetOfTransient & It);
        %feature("autodoc", "1");
        void InsertAfter(TColStd_SetListOfSetOfTransient & Other, TColStd_ListIteratorOfSetListOfSetOfTransient & It); 
};
//Var: Standard_Address myFirst
//Get: None
//Set: None
//Var: Standard_Address myLast
//Get: None
//Set: None
%feature("shadow") TColStd_SetListOfSetOfTransient::~TColStd_SetListOfSetOfTransient {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_SetListOfSetOfTransient {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColStd_SetOfInteger;

class TColStd_SetOfInteger  {
    public:

        %feature("autodoc", "1");
        TColStd_SetOfInteger();
        %feature("autodoc", "1");
        TColStd_SetOfInteger(TColStd_SetOfInteger const & Other);
        %feature("autodoc", "1");
        Standard_Integer Extent() const;
        %feature("autodoc", "1");
        Standard_Boolean IsEmpty() const;
        %feature("autodoc", "1");
        void Clear();
        %feature("autodoc", "1");
        Standard_Boolean Add(Standard_Integer const & T);
        %feature("autodoc", "1");
        Standard_Boolean Remove(Standard_Integer const & T);
        %feature("autodoc", "1");
        void Union(TColStd_SetOfInteger const & B);
        %feature("autodoc", "1");
        void Intersection(TColStd_SetOfInteger const & B);
        %feature("autodoc", "1");
        void Difference(TColStd_SetOfInteger const & B);
        %feature("autodoc", "1");
        Standard_Boolean Contains(Standard_Integer const & T) const;
        %feature("autodoc", "1");
        Standard_Boolean IsASubset(TColStd_SetOfInteger const & S) const;
        %feature("autodoc", "1");
        Standard_Boolean IsAProperSubset(TColStd_SetOfInteger const & S) const; 
};
//Var: TColStd_SetListOfSetOfInteger myItems
//Get: None
//Set: None
%feature("shadow") TColStd_SetOfInteger::~TColStd_SetOfInteger {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_SetOfInteger {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColStd_SetOfReal;

class TColStd_SetOfReal  {
    public:

        %feature("autodoc", "1");
        TColStd_SetOfReal();
        %feature("autodoc", "1");
        TColStd_SetOfReal(TColStd_SetOfReal const & Other);
        %feature("autodoc", "1");
        Standard_Integer Extent() const;
        %feature("autodoc", "1");
        Standard_Boolean IsEmpty() const;
        %feature("autodoc", "1");
        void Clear();
        %feature("autodoc", "1");
        Standard_Boolean Add(Standard_Real const & T);
        %feature("autodoc", "1");
        Standard_Boolean Remove(Standard_Real const & T);
        %feature("autodoc", "1");
        void Union(TColStd_SetOfReal const & B);
        %feature("autodoc", "1");
        void Intersection(TColStd_SetOfReal const & B);
        %feature("autodoc", "1");
        void Difference(TColStd_SetOfReal const & B);
        %feature("autodoc", "1");
        Standard_Boolean Contains(Standard_Real const & T) const;
        %feature("autodoc", "1");
        Standard_Boolean IsASubset(TColStd_SetOfReal const & S) const;
        %feature("autodoc", "1");
        Standard_Boolean IsAProperSubset(TColStd_SetOfReal const & S) const; 
};
//Var: TColStd_SetListOfSetOfReal myItems
//Get: None
//Set: None
%feature("shadow") TColStd_SetOfReal::~TColStd_SetOfReal {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_SetOfReal {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColStd_SetOfTransient;

class TColStd_SetOfTransient  {
    public:

        %feature("autodoc", "1");
        TColStd_SetOfTransient();
        %feature("autodoc", "1");
        TColStd_SetOfTransient(TColStd_SetOfTransient const & Other);
        %feature("autodoc", "1");
        Standard_Integer Extent() const;
        %feature("autodoc", "1");
        Standard_Boolean IsEmpty() const;
        %feature("autodoc", "1");
        void Clear();
        %feature("autodoc", "1");
        Standard_Boolean Add(Handle_Standard_Transient const & T);
        %feature("autodoc", "1");
        Standard_Boolean Remove(Handle_Standard_Transient const & T);
        %feature("autodoc", "1");
        void Union(TColStd_SetOfTransient const & B);
        %feature("autodoc", "1");
        void Intersection(TColStd_SetOfTransient const & B);
        %feature("autodoc", "1");
        void Difference(TColStd_SetOfTransient const & B);
        %feature("autodoc", "1");
        Standard_Boolean Contains(Handle_Standard_Transient const & T) const;
        %feature("autodoc", "1");
        Standard_Boolean IsASubset(TColStd_SetOfTransient const & S) const;
        %feature("autodoc", "1");
        Standard_Boolean IsAProperSubset(TColStd_SetOfTransient const & S) const; 
};
//Var: TColStd_SetListOfSetOfTransient myItems
//Get: None
//Set: None
%feature("shadow") TColStd_SetOfTransient::~TColStd_SetOfTransient {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_SetOfTransient {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColStd_StackIteratorOfStackOfInteger;

class TColStd_StackIteratorOfStackOfInteger  {
    public:

        %feature("autodoc", "1");
        TColStd_StackIteratorOfStackOfInteger(TColStd_StackIteratorOfStackOfInteger const & arg0);
        %feature("autodoc", "1");
        TColStd_StackIteratorOfStackOfInteger();
        %feature("autodoc", "1");
        TColStd_StackIteratorOfStackOfInteger(TColStd_StackOfInteger const & S);
        %feature("autodoc", "1");
        void Initialize(TColStd_StackOfInteger const & S);
        %feature("autodoc", "1");
        Standard_Boolean More() const;
        %feature("autodoc", "1");
        void Next();
        %feature("autodoc", "1");
        Standard_Integer const & Value() const; 
};
//Var: Standard_Address current
//Get: None
//Set: None
%feature("shadow") TColStd_StackIteratorOfStackOfInteger::~TColStd_StackIteratorOfStackOfInteger {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_StackIteratorOfStackOfInteger {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColStd_StackIteratorOfStackOfReal;

class TColStd_StackIteratorOfStackOfReal  {
    public:

        %feature("autodoc", "1");
        TColStd_StackIteratorOfStackOfReal(TColStd_StackIteratorOfStackOfReal const & arg0);
        %feature("autodoc", "1");
        TColStd_StackIteratorOfStackOfReal();
        %feature("autodoc", "1");
        TColStd_StackIteratorOfStackOfReal(TColStd_StackOfReal const & S);
        %feature("autodoc", "1");
        void Initialize(TColStd_StackOfReal const & S);
        %feature("autodoc", "1");
        Standard_Boolean More() const;
        %feature("autodoc", "1");
        void Next();
        %feature("autodoc", "1");
        Standard_Real const & Value() const; 
};
//Var: Standard_Address current
//Get: None
//Set: None
%feature("shadow") TColStd_StackIteratorOfStackOfReal::~TColStd_StackIteratorOfStackOfReal {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_StackIteratorOfStackOfReal {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColStd_StackIteratorOfStackOfTransient;

class TColStd_StackIteratorOfStackOfTransient  {
    public:

        %feature("autodoc", "1");
        TColStd_StackIteratorOfStackOfTransient(TColStd_StackIteratorOfStackOfTransient const & arg0);
        %feature("autodoc", "1");
        TColStd_StackIteratorOfStackOfTransient();
        %feature("autodoc", "1");
        TColStd_StackIteratorOfStackOfTransient(TColStd_StackOfTransient const & S);
        %feature("autodoc", "1");
        void Initialize(TColStd_StackOfTransient const & S);
        %feature("autodoc", "1");
        Standard_Boolean More() const;
        %feature("autodoc", "1");
        void Next();
        %feature("autodoc", "1");
        Handle_Standard_Transient const & Value() const; 
};
//Var: Standard_Address current
//Get: None
//Set: None
%feature("shadow") TColStd_StackIteratorOfStackOfTransient::~TColStd_StackIteratorOfStackOfTransient {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_StackIteratorOfStackOfTransient {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColStd_StackOfInteger;

class TColStd_StackOfInteger  {
    public:

        %feature("autodoc", "1");
        TColStd_StackOfInteger();
        %feature("autodoc", "1");
        TColStd_StackOfInteger(TColStd_StackOfInteger const & Other);
        %feature("autodoc", "1");
        TColStd_StackOfInteger const & Assign(TColStd_StackOfInteger const & Other);
        %feature("autodoc", "1");
        Standard_Boolean IsEmpty() const;
        %feature("autodoc", "1");
        Standard_Integer Depth() const;
        %feature("autodoc", "1");
        Standard_Integer const & Top() const;
        %feature("autodoc", "1");
        void Push(Standard_Integer const & I);
        %feature("autodoc", "1");
        void Pop();
        %feature("autodoc", "1");
        void Clear();
        %feature("autodoc", "1");
        Standard_Integer & ChangeTop(); 
};
//Var: Standard_Address myTop
//Get: None
//Set: None
//Var: Standard_Integer myDepth
//Get: None
//Set: None
%feature("shadow") TColStd_StackOfInteger::~TColStd_StackOfInteger {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_StackOfInteger {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColStd_StackOfReal;

class TColStd_StackOfReal  {
    public:

        %feature("autodoc", "1");
        TColStd_StackOfReal();
        %feature("autodoc", "1");
        TColStd_StackOfReal(TColStd_StackOfReal const & Other);
        %feature("autodoc", "1");
        TColStd_StackOfReal const & Assign(TColStd_StackOfReal const & Other);
        %feature("autodoc", "1");
        Standard_Boolean IsEmpty() const;
        %feature("autodoc", "1");
        Standard_Integer Depth() const;
        %feature("autodoc", "1");
        Standard_Real const & Top() const;
        %feature("autodoc", "1");
        void Push(Standard_Real const & I);
        %feature("autodoc", "1");
        void Pop();
        %feature("autodoc", "1");
        void Clear();
        %feature("autodoc", "1");
        Standard_Real & ChangeTop(); 
};
//Var: Standard_Address myTop
//Get: None
//Set: None
//Var: Standard_Integer myDepth
//Get: None
//Set: None
%feature("shadow") TColStd_StackOfReal::~TColStd_StackOfReal {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_StackOfReal {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColStd_StackOfTransient;

class TColStd_StackOfTransient  {
    public:

        %feature("autodoc", "1");
        TColStd_StackOfTransient();
        %feature("autodoc", "1");
        TColStd_StackOfTransient(TColStd_StackOfTransient const & Other);
        %feature("autodoc", "1");
        TColStd_StackOfTransient const & Assign(TColStd_StackOfTransient const & Other);
        %feature("autodoc", "1");
        Standard_Boolean IsEmpty() const;
        %feature("autodoc", "1");
        Standard_Integer Depth() const;
        %feature("autodoc", "1");
        Handle_Standard_Transient const & Top() const;
        %feature("autodoc", "1");
        void Push(Handle_Standard_Transient const & I);
        %feature("autodoc", "1");
        void Pop();
        %feature("autodoc", "1");
        void Clear();
        %feature("autodoc", "1");
        Handle_Standard_Transient & ChangeTop(); 
};
//Var: Standard_Address myTop
//Get: None
//Set: None
//Var: Standard_Integer myDepth
//Get: None
//Set: None
%feature("shadow") TColStd_StackOfTransient::~TColStd_StackOfTransient {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_StackOfTransient {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColStd_SequenceOfAsciiString;

class TColStd_SequenceOfAsciiString : public TCollection_BaseSequence {
    public:

        %feature("autodoc", "1");
        TColStd_SequenceOfAsciiString();
        %feature("autodoc", "1");
        TColStd_SequenceOfAsciiString(TColStd_SequenceOfAsciiString const & Other);
        %feature("autodoc", "1");
        void Clear();
        %feature("autodoc", "1");
        TColStd_SequenceOfAsciiString const & Assign(TColStd_SequenceOfAsciiString const & Other);
        %feature("autodoc", "1");
        void Append(TCollection_AsciiString const & T);
        %feature("autodoc", "1");
        void Append(TColStd_SequenceOfAsciiString & S);
        %feature("autodoc", "1");
        void Prepend(TCollection_AsciiString const & T);
        %feature("autodoc", "1");
        void Prepend(TColStd_SequenceOfAsciiString & S);
        %feature("autodoc", "1");
        void InsertBefore(Standard_Integer const Index, TCollection_AsciiString const & I);
        %feature("autodoc", "1");
        void InsertBefore(Standard_Integer const Index, TColStd_SequenceOfAsciiString & S);
        %feature("autodoc", "1");
        void InsertAfter(Standard_Integer const Index, TCollection_AsciiString const & T);
        %feature("autodoc", "1");
        void InsertAfter(Standard_Integer const Index, TColStd_SequenceOfAsciiString & S);
        %feature("autodoc", "1");
        TCollection_AsciiString const & First() const;
        %feature("autodoc", "1");
        TCollection_AsciiString const & Last() const;
        %feature("autodoc", "1");
        void Split(Standard_Integer const Index, TColStd_SequenceOfAsciiString & S);
        %feature("autodoc", "1");
        TCollection_AsciiString const & Value(Standard_Integer const Index) const;
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const Index, TCollection_AsciiString const & I);
        %feature("autodoc", "1");
        TCollection_AsciiString & ChangeValue(Standard_Integer const Index);
        %feature("autodoc", "1");
        void Remove(Standard_Integer const Index);
        %feature("autodoc", "1");
        void Remove(Standard_Integer const FromIndex, Standard_Integer const ToIndex); 
};

%feature("shadow") TColStd_SequenceOfAsciiString::~TColStd_SequenceOfAsciiString {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_SequenceOfAsciiString {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColStd_SequenceOfExtendedString;

class TColStd_SequenceOfExtendedString : public TCollection_BaseSequence {
    public:

        %feature("autodoc", "1");
        TColStd_SequenceOfExtendedString();
        %feature("autodoc", "1");
        TColStd_SequenceOfExtendedString(TColStd_SequenceOfExtendedString const & Other);
        %feature("autodoc", "1");
        void Clear();
        %feature("autodoc", "1");
        TColStd_SequenceOfExtendedString const & Assign(TColStd_SequenceOfExtendedString const & Other);
        %feature("autodoc", "1");
        void Append(TCollection_ExtendedString const & T);
        %feature("autodoc", "1");
        void Append(TColStd_SequenceOfExtendedString & S);
        %feature("autodoc", "1");
        void Prepend(TCollection_ExtendedString const & T);
        %feature("autodoc", "1");
        void Prepend(TColStd_SequenceOfExtendedString & S);
        %feature("autodoc", "1");
        void InsertBefore(Standard_Integer const Index, TCollection_ExtendedString const & I);
        %feature("autodoc", "1");
        void InsertBefore(Standard_Integer const Index, TColStd_SequenceOfExtendedString & S);
        %feature("autodoc", "1");
        void InsertAfter(Standard_Integer const Index, TCollection_ExtendedString const & T);
        %feature("autodoc", "1");
        void InsertAfter(Standard_Integer const Index, TColStd_SequenceOfExtendedString & S);
        %feature("autodoc", "1");
        TCollection_ExtendedString const & First() const;
        %feature("autodoc", "1");
        TCollection_ExtendedString const & Last() const;
        %feature("autodoc", "1");
        void Split(Standard_Integer const Index, TColStd_SequenceOfExtendedString & S);
        %feature("autodoc", "1");
        TCollection_ExtendedString const & Value(Standard_Integer const Index) const;
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const Index, TCollection_ExtendedString const & I);
        %feature("autodoc", "1");
        TCollection_ExtendedString & ChangeValue(Standard_Integer const Index);
        %feature("autodoc", "1");
        void Remove(Standard_Integer const Index);
        %feature("autodoc", "1");
        void Remove(Standard_Integer const FromIndex, Standard_Integer const ToIndex); 
};

%feature("shadow") TColStd_SequenceOfExtendedString::~TColStd_SequenceOfExtendedString {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_SequenceOfExtendedString {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColStd_SequenceOfHAsciiString;

class TColStd_SequenceOfHAsciiString : public TCollection_BaseSequence {
    public:

        %feature("autodoc", "1");
        TColStd_SequenceOfHAsciiString();
        %feature("autodoc", "1");
        TColStd_SequenceOfHAsciiString(TColStd_SequenceOfHAsciiString const & Other);
        %feature("autodoc", "1");
        void Clear();
        %feature("autodoc", "1");
        TColStd_SequenceOfHAsciiString const & Assign(TColStd_SequenceOfHAsciiString const & Other);
        %feature("autodoc", "1");
        void Append(Handle_TCollection_HAsciiString const & T);
        %feature("autodoc", "1");
        void Append(TColStd_SequenceOfHAsciiString & S);
        %feature("autodoc", "1");
        void Prepend(Handle_TCollection_HAsciiString const & T);
        %feature("autodoc", "1");
        void Prepend(TColStd_SequenceOfHAsciiString & S);
        %feature("autodoc", "1");
        void InsertBefore(Standard_Integer const Index, Handle_TCollection_HAsciiString const & I);
        %feature("autodoc", "1");
        void InsertBefore(Standard_Integer const Index, TColStd_SequenceOfHAsciiString & S);
        %feature("autodoc", "1");
        void InsertAfter(Standard_Integer const Index, Handle_TCollection_HAsciiString const & T);
        %feature("autodoc", "1");
        void InsertAfter(Standard_Integer const Index, TColStd_SequenceOfHAsciiString & S);
        %feature("autodoc", "1");
        Handle_TCollection_HAsciiString const & First() const;
        %feature("autodoc", "1");
        Handle_TCollection_HAsciiString const & Last() const;
        %feature("autodoc", "1");
        void Split(Standard_Integer const Index, TColStd_SequenceOfHAsciiString & S);
        %feature("autodoc", "1");
        Handle_TCollection_HAsciiString const & Value(Standard_Integer const Index) const;
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const Index, Handle_TCollection_HAsciiString const & I);
        %feature("autodoc", "1");
        Handle_TCollection_HAsciiString & ChangeValue(Standard_Integer const Index);
        %feature("autodoc", "1");
        void Remove(Standard_Integer const Index);
        %feature("autodoc", "1");
        void Remove(Standard_Integer const FromIndex, Standard_Integer const ToIndex); 
};

%feature("shadow") TColStd_SequenceOfHAsciiString::~TColStd_SequenceOfHAsciiString {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_SequenceOfHAsciiString {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColStd_SequenceOfHExtendedString;

class TColStd_SequenceOfHExtendedString : public TCollection_BaseSequence {
    public:

        %feature("autodoc", "1");
        TColStd_SequenceOfHExtendedString();
        %feature("autodoc", "1");
        TColStd_SequenceOfHExtendedString(TColStd_SequenceOfHExtendedString const & Other);
        %feature("autodoc", "1");
        void Clear();
        %feature("autodoc", "1");
        TColStd_SequenceOfHExtendedString const & Assign(TColStd_SequenceOfHExtendedString const & Other);
        %feature("autodoc", "1");
        void Append(Handle_TCollection_HExtendedString const & T);
        %feature("autodoc", "1");
        void Append(TColStd_SequenceOfHExtendedString & S);
        %feature("autodoc", "1");
        void Prepend(Handle_TCollection_HExtendedString const & T);
        %feature("autodoc", "1");
        void Prepend(TColStd_SequenceOfHExtendedString & S);
        %feature("autodoc", "1");
        void InsertBefore(Standard_Integer const Index, Handle_TCollection_HExtendedString const & I);
        %feature("autodoc", "1");
        void InsertBefore(Standard_Integer const Index, TColStd_SequenceOfHExtendedString & S);
        %feature("autodoc", "1");
        void InsertAfter(Standard_Integer const Index, Handle_TCollection_HExtendedString const & T);
        %feature("autodoc", "1");
        void InsertAfter(Standard_Integer const Index, TColStd_SequenceOfHExtendedString & S);
        %feature("autodoc", "1");
        Handle_TCollection_HExtendedString const & First() const;
        %feature("autodoc", "1");
        Handle_TCollection_HExtendedString const & Last() const;
        %feature("autodoc", "1");
        void Split(Standard_Integer const Index, TColStd_SequenceOfHExtendedString & S);
        %feature("autodoc", "1");
        Handle_TCollection_HExtendedString const & Value(Standard_Integer const Index) const;
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const Index, Handle_TCollection_HExtendedString const & I);
        %feature("autodoc", "1");
        Handle_TCollection_HExtendedString & ChangeValue(Standard_Integer const Index);
        %feature("autodoc", "1");
        void Remove(Standard_Integer const Index);
        %feature("autodoc", "1");
        void Remove(Standard_Integer const FromIndex, Standard_Integer const ToIndex); 
};

%feature("shadow") TColStd_SequenceOfHExtendedString::~TColStd_SequenceOfHExtendedString {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_SequenceOfHExtendedString {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColStd_SequenceOfInteger;

class TColStd_SequenceOfInteger : public TCollection_BaseSequence {
    public:

        %feature("autodoc", "1");
        TColStd_SequenceOfInteger();
        %feature("autodoc", "1");
        TColStd_SequenceOfInteger(TColStd_SequenceOfInteger const & Other);
        %feature("autodoc", "1");
        void Clear();
        %feature("autodoc", "1");
        TColStd_SequenceOfInteger const & Assign(TColStd_SequenceOfInteger const & Other);
        %feature("autodoc", "1");
        void Append(Standard_Integer const & T);
        %feature("autodoc", "1");
        void Append(TColStd_SequenceOfInteger & S);
        %feature("autodoc", "1");
        void Prepend(Standard_Integer const & T);
        %feature("autodoc", "1");
        void Prepend(TColStd_SequenceOfInteger & S);
        %feature("autodoc", "1");
        void InsertBefore(Standard_Integer const Index, Standard_Integer const & I);
        %feature("autodoc", "1");
        void InsertBefore(Standard_Integer const Index, TColStd_SequenceOfInteger & S);
        %feature("autodoc", "1");
        void InsertAfter(Standard_Integer const Index, Standard_Integer const & T);
        %feature("autodoc", "1");
        void InsertAfter(Standard_Integer const Index, TColStd_SequenceOfInteger & S);
        %feature("autodoc", "1");
        Standard_Integer const & First() const;
        %feature("autodoc", "1");
        Standard_Integer const & Last() const;
        %feature("autodoc", "1");
        void Split(Standard_Integer const Index, TColStd_SequenceOfInteger & S);
        %feature("autodoc", "1");
        Standard_Integer const & Value(Standard_Integer const Index) const;
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const Index, Standard_Integer const & I);
        %feature("autodoc", "1");
        Standard_Integer & ChangeValue(Standard_Integer const Index);
        %feature("autodoc", "1");
        void Remove(Standard_Integer const Index);
        %feature("autodoc", "1");
        void Remove(Standard_Integer const FromIndex, Standard_Integer const ToIndex); 
};

%feature("shadow") TColStd_SequenceOfInteger::~TColStd_SequenceOfInteger {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_SequenceOfInteger {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColStd_SequenceOfReal;

class TColStd_SequenceOfReal : public TCollection_BaseSequence {
    public:

        %feature("autodoc", "1");
        TColStd_SequenceOfReal();
        %feature("autodoc", "1");
        TColStd_SequenceOfReal(TColStd_SequenceOfReal const & Other);
        %feature("autodoc", "1");
        void Clear();
        %feature("autodoc", "1");
        TColStd_SequenceOfReal const & Assign(TColStd_SequenceOfReal const & Other);
        %feature("autodoc", "1");
        void Append(Standard_Real const & T);
        %feature("autodoc", "1");
        void Append(TColStd_SequenceOfReal & S);
        %feature("autodoc", "1");
        void Prepend(Standard_Real const & T);
        %feature("autodoc", "1");
        void Prepend(TColStd_SequenceOfReal & S);
        %feature("autodoc", "1");
        void InsertBefore(Standard_Integer const Index, Standard_Real const & I);
        %feature("autodoc", "1");
        void InsertBefore(Standard_Integer const Index, TColStd_SequenceOfReal & S);
        %feature("autodoc", "1");
        void InsertAfter(Standard_Integer const Index, Standard_Real const & T);
        %feature("autodoc", "1");
        void InsertAfter(Standard_Integer const Index, TColStd_SequenceOfReal & S);
        %feature("autodoc", "1");
        Standard_Real const & First() const;
        %feature("autodoc", "1");
        Standard_Real const & Last() const;
        %feature("autodoc", "1");
        void Split(Standard_Integer const Index, TColStd_SequenceOfReal & S);
        %feature("autodoc", "1");
        Standard_Real const & Value(Standard_Integer const Index) const;
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const Index, Standard_Real const & I);
        %feature("autodoc", "1");
        Standard_Real & ChangeValue(Standard_Integer const Index);
        %feature("autodoc", "1");
        void Remove(Standard_Integer const Index);
        %feature("autodoc", "1");
        void Remove(Standard_Integer const FromIndex, Standard_Integer const ToIndex); 
};

%feature("shadow") TColStd_SequenceOfReal::~TColStd_SequenceOfReal {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_SequenceOfReal {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColStd_SequenceOfTransient;

class TColStd_SequenceOfTransient : public TCollection_BaseSequence {
    public:

        %feature("autodoc", "1");
        TColStd_SequenceOfTransient();
        %feature("autodoc", "1");
        TColStd_SequenceOfTransient(TColStd_SequenceOfTransient const & Other);
        %feature("autodoc", "1");
        void Clear();
        %feature("autodoc", "1");
        TColStd_SequenceOfTransient const & Assign(TColStd_SequenceOfTransient const & Other);
        %feature("autodoc", "1");
        void Append(Handle_Standard_Transient const & T);
        %feature("autodoc", "1");
        void Append(TColStd_SequenceOfTransient & S);
        %feature("autodoc", "1");
        void Prepend(Handle_Standard_Transient const & T);
        %feature("autodoc", "1");
        void Prepend(TColStd_SequenceOfTransient & S);
        %feature("autodoc", "1");
        void InsertBefore(Standard_Integer const Index, Handle_Standard_Transient const & I);
        %feature("autodoc", "1");
        void InsertBefore(Standard_Integer const Index, TColStd_SequenceOfTransient & S);
        %feature("autodoc", "1");
        void InsertAfter(Standard_Integer const Index, Handle_Standard_Transient const & T);
        %feature("autodoc", "1");
        void InsertAfter(Standard_Integer const Index, TColStd_SequenceOfTransient & S);
        %feature("autodoc", "1");
        Handle_Standard_Transient const & First() const;
        %feature("autodoc", "1");
        Handle_Standard_Transient const & Last() const;
        %feature("autodoc", "1");
        void Split(Standard_Integer const Index, TColStd_SequenceOfTransient & S);
        %feature("autodoc", "1");
        Handle_Standard_Transient const & Value(Standard_Integer const Index) const;
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const Index, Handle_Standard_Transient const & I);
        %feature("autodoc", "1");
        Handle_Standard_Transient & ChangeValue(Standard_Integer const Index);
        %feature("autodoc", "1");
        void Remove(Standard_Integer const Index);
        %feature("autodoc", "1");
        void Remove(Standard_Integer const FromIndex, Standard_Integer const ToIndex); 
};

%feature("shadow") TColStd_SequenceOfTransient::~TColStd_SequenceOfTransient {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_SequenceOfTransient {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColStd_DataMapIteratorOfDataMapOfIntegerInteger;

class TColStd_DataMapIteratorOfDataMapOfIntegerInteger : public TCollection_BasicMapIterator {
    public:

        %feature("autodoc", "1");
        TColStd_DataMapIteratorOfDataMapOfIntegerInteger(TColStd_DataMapIteratorOfDataMapOfIntegerInteger const & arg0);
        %feature("autodoc", "1");
        TColStd_DataMapIteratorOfDataMapOfIntegerInteger();
        %feature("autodoc", "1");
        TColStd_DataMapIteratorOfDataMapOfIntegerInteger(TColStd_DataMapOfIntegerInteger const & aMap);
        %feature("autodoc", "1");
        void Initialize(TColStd_DataMapOfIntegerInteger const & aMap);
        %feature("autodoc", "1");
        Standard_Integer const & Key() const;
        %feature("autodoc", "1");
        Standard_Integer const & Value() const; 
};

%feature("shadow") TColStd_DataMapIteratorOfDataMapOfIntegerInteger::~TColStd_DataMapIteratorOfDataMapOfIntegerInteger {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_DataMapIteratorOfDataMapOfIntegerInteger {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColStd_DataMapIteratorOfDataMapOfIntegerListOfInteger;

class TColStd_DataMapIteratorOfDataMapOfIntegerListOfInteger : public TCollection_BasicMapIterator {
    public:

        %feature("autodoc", "1");
        TColStd_DataMapIteratorOfDataMapOfIntegerListOfInteger(TColStd_DataMapIteratorOfDataMapOfIntegerListOfInteger const & arg0);
        %feature("autodoc", "1");
        TColStd_DataMapIteratorOfDataMapOfIntegerListOfInteger();
        %feature("autodoc", "1");
        TColStd_DataMapIteratorOfDataMapOfIntegerListOfInteger(TColStd_DataMapOfIntegerListOfInteger const & aMap);
        %feature("autodoc", "1");
        void Initialize(TColStd_DataMapOfIntegerListOfInteger const & aMap);
        %feature("autodoc", "1");
        Standard_Integer const & Key() const;
        %feature("autodoc", "1");
        TColStd_ListOfInteger const & Value() const; 
};

%feature("shadow") TColStd_DataMapIteratorOfDataMapOfIntegerListOfInteger::~TColStd_DataMapIteratorOfDataMapOfIntegerListOfInteger {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_DataMapIteratorOfDataMapOfIntegerListOfInteger {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColStd_DataMapIteratorOfDataMapOfIntegerReal;

class TColStd_DataMapIteratorOfDataMapOfIntegerReal : public TCollection_BasicMapIterator {
    public:

        %feature("autodoc", "1");
        TColStd_DataMapIteratorOfDataMapOfIntegerReal(TColStd_DataMapIteratorOfDataMapOfIntegerReal const & arg0);
        %feature("autodoc", "1");
        TColStd_DataMapIteratorOfDataMapOfIntegerReal();
        %feature("autodoc", "1");
        TColStd_DataMapIteratorOfDataMapOfIntegerReal(TColStd_DataMapOfIntegerReal const & aMap);
        %feature("autodoc", "1");
        void Initialize(TColStd_DataMapOfIntegerReal const & aMap);
        %feature("autodoc", "1");
        Standard_Integer const & Key() const;
        %feature("autodoc", "1");
        Standard_Real const & Value() const; 
};

%feature("shadow") TColStd_DataMapIteratorOfDataMapOfIntegerReal::~TColStd_DataMapIteratorOfDataMapOfIntegerReal {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_DataMapIteratorOfDataMapOfIntegerReal {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColStd_MapIteratorOfMapOfInteger;

class TColStd_MapIteratorOfMapOfInteger : public TCollection_BasicMapIterator {
    public:

        %feature("autodoc", "1");
        TColStd_MapIteratorOfMapOfInteger(TColStd_MapIteratorOfMapOfInteger const & arg0);
        %feature("autodoc", "1");
        TColStd_MapIteratorOfMapOfInteger();
        %feature("autodoc", "1");
        TColStd_MapIteratorOfMapOfInteger(TColStd_MapOfInteger const & aMap);
        %feature("autodoc", "1");
        void Initialize(TColStd_MapOfInteger const & aMap);
        %feature("autodoc", "1");
        Standard_Integer const & Key() const; 
};

%feature("shadow") TColStd_MapIteratorOfMapOfInteger::~TColStd_MapIteratorOfMapOfInteger {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_MapIteratorOfMapOfInteger {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColStd_MapIteratorOfMapOfReal;

class TColStd_MapIteratorOfMapOfReal : public TCollection_BasicMapIterator {
    public:

        %feature("autodoc", "1");
        TColStd_MapIteratorOfMapOfReal(TColStd_MapIteratorOfMapOfReal const & arg0);
        %feature("autodoc", "1");
        TColStd_MapIteratorOfMapOfReal();
        %feature("autodoc", "1");
        TColStd_MapIteratorOfMapOfReal(TColStd_MapOfReal const & aMap);
        %feature("autodoc", "1");
        void Initialize(TColStd_MapOfReal const & aMap);
        %feature("autodoc", "1");
        Standard_Real const & Key() const; 
};

%feature("shadow") TColStd_MapIteratorOfMapOfReal::~TColStd_MapIteratorOfMapOfReal {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_MapIteratorOfMapOfReal {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColStd_MapIteratorOfMapOfTransient;

class TColStd_MapIteratorOfMapOfTransient : public TCollection_BasicMapIterator {
    public:

        %feature("autodoc", "1");
        TColStd_MapIteratorOfMapOfTransient(TColStd_MapIteratorOfMapOfTransient const & arg0);
        %feature("autodoc", "1");
        TColStd_MapIteratorOfMapOfTransient();
        %feature("autodoc", "1");
        TColStd_MapIteratorOfMapOfTransient(TColStd_MapOfTransient const & aMap);
        %feature("autodoc", "1");
        void Initialize(TColStd_MapOfTransient const & aMap);
        %feature("autodoc", "1");
        Handle_Standard_Transient const & Key() const; 
};

%feature("shadow") TColStd_MapIteratorOfMapOfTransient::~TColStd_MapIteratorOfMapOfTransient {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_MapIteratorOfMapOfTransient {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColStd_MapIteratorOfPackedMapOfInteger;

class TColStd_MapIteratorOfPackedMapOfInteger : public TCollection_BasicMapIterator {
    public:

        %feature("autodoc", "1");
        TColStd_MapIteratorOfPackedMapOfInteger(TColStd_MapIteratorOfPackedMapOfInteger const & arg0);
        %feature("autodoc", "1");
        TColStd_MapIteratorOfPackedMapOfInteger();
        %feature("autodoc", "1");
        TColStd_MapIteratorOfPackedMapOfInteger(TColStd_PackedMapOfInteger const & arg0);
        %feature("autodoc", "1");
        void Initialize(TColStd_PackedMapOfInteger const & arg0);
        %feature("autodoc", "1");
        void Reset();
        %feature("autodoc", "1");
        Standard_Integer Key() const;
        %feature("autodoc", "1");
        void Next(); 
};
//Var: unsigned int myIntMask
//Get: None
//Set: None
//Var: Standard_Integer myKey
//Get: None
//Set: None
%feature("shadow") TColStd_MapIteratorOfPackedMapOfInteger::~TColStd_MapIteratorOfPackedMapOfInteger {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_MapIteratorOfPackedMapOfInteger {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColStd_DataMapOfIntegerInteger;

class TColStd_DataMapOfIntegerInteger : public TCollection_BasicMap {
    public:

        %feature("autodoc", "1");
        TColStd_DataMapOfIntegerInteger(Standard_Integer const NbBuckets=1);
        %feature("autodoc", "1");
        TColStd_DataMapOfIntegerInteger(TColStd_DataMapOfIntegerInteger const & Other);
        %feature("autodoc", "1");
        TColStd_DataMapOfIntegerInteger & Assign(TColStd_DataMapOfIntegerInteger const & Other);
        %feature("autodoc", "1");
        void ReSize(Standard_Integer const NbBuckets);
        %feature("autodoc", "1");
        void Clear();
        %feature("autodoc", "1");
        Standard_Boolean Bind(Standard_Integer const & K, Standard_Integer const & I);
        %feature("autodoc", "1");
        Standard_Boolean IsBound(Standard_Integer const & K) const;
        %feature("autodoc", "1");
        Standard_Boolean UnBind(Standard_Integer const & K);
        %feature("autodoc", "1");
        Standard_Integer const & Find(Standard_Integer const & K) const;
        %feature("autodoc", "1");
        Standard_Integer & ChangeFind(Standard_Integer const & K); 
};

%feature("shadow") TColStd_DataMapOfIntegerInteger::~TColStd_DataMapOfIntegerInteger {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_DataMapOfIntegerInteger {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColStd_DataMapOfIntegerListOfInteger;

class TColStd_DataMapOfIntegerListOfInteger : public TCollection_BasicMap {
    public:

        %feature("autodoc", "1");
        TColStd_DataMapOfIntegerListOfInteger(Standard_Integer const NbBuckets=1);
        %feature("autodoc", "1");
        TColStd_DataMapOfIntegerListOfInteger(TColStd_DataMapOfIntegerListOfInteger const & Other);
        %feature("autodoc", "1");
        TColStd_DataMapOfIntegerListOfInteger & Assign(TColStd_DataMapOfIntegerListOfInteger const & Other);
        %feature("autodoc", "1");
        void ReSize(Standard_Integer const NbBuckets);
        %feature("autodoc", "1");
        void Clear();
        %feature("autodoc", "1");
        Standard_Boolean Bind(Standard_Integer const & K, TColStd_ListOfInteger const & I);
        %feature("autodoc", "1");
        Standard_Boolean IsBound(Standard_Integer const & K) const;
        %feature("autodoc", "1");
        Standard_Boolean UnBind(Standard_Integer const & K);
        %feature("autodoc", "1");
        TColStd_ListOfInteger const & Find(Standard_Integer const & K) const;
        %feature("autodoc", "1");
        TColStd_ListOfInteger & ChangeFind(Standard_Integer const & K); 
};

%feature("shadow") TColStd_DataMapOfIntegerListOfInteger::~TColStd_DataMapOfIntegerListOfInteger {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_DataMapOfIntegerListOfInteger {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColStd_DataMapOfIntegerReal;

class TColStd_DataMapOfIntegerReal : public TCollection_BasicMap {
    public:

        %feature("autodoc", "1");
        TColStd_DataMapOfIntegerReal(Standard_Integer const NbBuckets=1);
        %feature("autodoc", "1");
        TColStd_DataMapOfIntegerReal(TColStd_DataMapOfIntegerReal const & Other);
        %feature("autodoc", "1");
        TColStd_DataMapOfIntegerReal & Assign(TColStd_DataMapOfIntegerReal const & Other);
        %feature("autodoc", "1");
        void ReSize(Standard_Integer const NbBuckets);
        %feature("autodoc", "1");
        void Clear();
        %feature("autodoc", "1");
        Standard_Boolean Bind(Standard_Integer const & K, Standard_Real const & I);
        %feature("autodoc", "1");
        Standard_Boolean IsBound(Standard_Integer const & K) const;
        %feature("autodoc", "1");
        Standard_Boolean UnBind(Standard_Integer const & K);
        %feature("autodoc", "1");
        Standard_Real const & Find(Standard_Integer const & K) const;
        %feature("autodoc", "1");
        Standard_Real & ChangeFind(Standard_Integer const & K); 
};

%feature("shadow") TColStd_DataMapOfIntegerReal::~TColStd_DataMapOfIntegerReal {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_DataMapOfIntegerReal {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColStd_IndexedDataMapOfTransientTransient;

class TColStd_IndexedDataMapOfTransientTransient : public TCollection_BasicMap {
    public:

        %feature("autodoc", "1");
        TColStd_IndexedDataMapOfTransientTransient(Standard_Integer const NbBuckets=1);
        %feature("autodoc", "1");
        TColStd_IndexedDataMapOfTransientTransient(TColStd_IndexedDataMapOfTransientTransient const & Other);
        %feature("autodoc", "1");
        TColStd_IndexedDataMapOfTransientTransient & Assign(TColStd_IndexedDataMapOfTransientTransient const & Other);
        %feature("autodoc", "1");
        void ReSize(Standard_Integer const NbBuckets);
        %feature("autodoc", "1");
        void Clear();
        %feature("autodoc", "1");
        Standard_Integer Add(Handle_Standard_Transient const & K, Handle_Standard_Transient const & I);
        %feature("autodoc", "1");
        void Substitute(Standard_Integer const I, Handle_Standard_Transient const & K, Handle_Standard_Transient const & T);
        %feature("autodoc", "1");
        void RemoveLast();
        %feature("autodoc", "1");
        Standard_Boolean Contains(Handle_Standard_Transient const & K) const;
        %feature("autodoc", "1");
        Handle_Standard_Transient const & FindKey(Standard_Integer const I) const;
        %feature("autodoc", "1");
        Handle_Standard_Transient const & FindFromIndex(Standard_Integer const I) const;
        %feature("autodoc", "1");
        Handle_Standard_Transient & ChangeFromIndex(Standard_Integer const I);
        %feature("autodoc", "1");
        Standard_Integer FindIndex(Handle_Standard_Transient const & K) const;
        %feature("autodoc", "1");
        Handle_Standard_Transient const & FindFromKey(Handle_Standard_Transient const & K) const;
        %feature("autodoc", "1");
        Handle_Standard_Transient & ChangeFromKey(Handle_Standard_Transient const & K); 
};

%feature("shadow") TColStd_IndexedDataMapOfTransientTransient::~TColStd_IndexedDataMapOfTransientTransient {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_IndexedDataMapOfTransientTransient {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColStd_IndexedMapOfInteger;

class TColStd_IndexedMapOfInteger : public TCollection_BasicMap {
    public:

        %feature("autodoc", "1");
        TColStd_IndexedMapOfInteger(Standard_Integer const NbBuckets=1);
        %feature("autodoc", "1");
        TColStd_IndexedMapOfInteger(TColStd_IndexedMapOfInteger const & Other);
        %feature("autodoc", "1");
        TColStd_IndexedMapOfInteger & Assign(TColStd_IndexedMapOfInteger const & Other);
        %feature("autodoc", "1");
        void ReSize(Standard_Integer const NbBuckets);
        %feature("autodoc", "1");
        void Clear();
        %feature("autodoc", "1");
        Standard_Integer Add(Standard_Integer const & K);
        %feature("autodoc", "1");
        void Substitute(Standard_Integer const I, Standard_Integer const & K);
        %feature("autodoc", "1");
        void RemoveLast();
        %feature("autodoc", "1");
        Standard_Boolean Contains(Standard_Integer const & K) const;
        %feature("autodoc", "1");
        Standard_Integer const & FindKey(Standard_Integer const I) const;
        %feature("autodoc", "1");
        Standard_Integer FindIndex(Standard_Integer const & K) const; 
};

%feature("shadow") TColStd_IndexedMapOfInteger::~TColStd_IndexedMapOfInteger {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_IndexedMapOfInteger {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColStd_IndexedMapOfReal;

class TColStd_IndexedMapOfReal : public TCollection_BasicMap {
    public:

        %feature("autodoc", "1");
        TColStd_IndexedMapOfReal(Standard_Integer const NbBuckets=1);
        %feature("autodoc", "1");
        TColStd_IndexedMapOfReal(TColStd_IndexedMapOfReal const & Other);
        %feature("autodoc", "1");
        TColStd_IndexedMapOfReal & Assign(TColStd_IndexedMapOfReal const & Other);
        %feature("autodoc", "1");
        void ReSize(Standard_Integer const NbBuckets);
        %feature("autodoc", "1");
        void Clear();
        %feature("autodoc", "1");
        Standard_Integer Add(Standard_Real const & K);
        %feature("autodoc", "1");
        void Substitute(Standard_Integer const I, Standard_Real const & K);
        %feature("autodoc", "1");
        void RemoveLast();
        %feature("autodoc", "1");
        Standard_Boolean Contains(Standard_Real const & K) const;
        %feature("autodoc", "1");
        Standard_Real const & FindKey(Standard_Integer const I) const;
        %feature("autodoc", "1");
        Standard_Integer FindIndex(Standard_Real const & K) const; 
};

%feature("shadow") TColStd_IndexedMapOfReal::~TColStd_IndexedMapOfReal {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_IndexedMapOfReal {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColStd_IndexedMapOfTransient;

class TColStd_IndexedMapOfTransient : public TCollection_BasicMap {
    public:

        %feature("autodoc", "1");
        TColStd_IndexedMapOfTransient(Standard_Integer const NbBuckets=1);
        %feature("autodoc", "1");
        TColStd_IndexedMapOfTransient(TColStd_IndexedMapOfTransient const & Other);
        %feature("autodoc", "1");
        TColStd_IndexedMapOfTransient & Assign(TColStd_IndexedMapOfTransient const & Other);
        %feature("autodoc", "1");
        void ReSize(Standard_Integer const NbBuckets);
        %feature("autodoc", "1");
        void Clear();
        %feature("autodoc", "1");
        Standard_Integer Add(Handle_Standard_Transient const & K);
        %feature("autodoc", "1");
        void Substitute(Standard_Integer const I, Handle_Standard_Transient const & K);
        %feature("autodoc", "1");
        void RemoveLast();
        %feature("autodoc", "1");
        Standard_Boolean Contains(Handle_Standard_Transient const & K) const;
        %feature("autodoc", "1");
        Handle_Standard_Transient const & FindKey(Standard_Integer const I) const;
        %feature("autodoc", "1");
        Standard_Integer FindIndex(Handle_Standard_Transient const & K) const; 
};

%feature("shadow") TColStd_IndexedMapOfTransient::~TColStd_IndexedMapOfTransient {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_IndexedMapOfTransient {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColStd_MapOfInteger;

class TColStd_MapOfInteger : public TCollection_BasicMap {
    public:

        %feature("autodoc", "1");
        TColStd_MapOfInteger(Standard_Integer const NbBuckets=1);
        %feature("autodoc", "1");
        TColStd_MapOfInteger(TColStd_MapOfInteger const & Other);
        %feature("autodoc", "1");
        TColStd_MapOfInteger & Assign(TColStd_MapOfInteger const & Other);
        %feature("autodoc", "1");
        void ReSize(Standard_Integer const NbBuckets);
        %feature("autodoc", "1");
        void Clear();
        %feature("autodoc", "1");
        Standard_Boolean Add(Standard_Integer const & aKey);
        %feature("autodoc", "1");
        Standard_Boolean Contains(Standard_Integer const & aKey) const;
        %feature("autodoc", "1");
        Standard_Boolean Remove(Standard_Integer const & aKey); 
};

%feature("shadow") TColStd_MapOfInteger::~TColStd_MapOfInteger {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_MapOfInteger {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColStd_MapOfReal;

class TColStd_MapOfReal : public TCollection_BasicMap {
    public:

        %feature("autodoc", "1");
        TColStd_MapOfReal(Standard_Integer const NbBuckets=1);
        %feature("autodoc", "1");
        TColStd_MapOfReal(TColStd_MapOfReal const & Other);
        %feature("autodoc", "1");
        TColStd_MapOfReal & Assign(TColStd_MapOfReal const & Other);
        %feature("autodoc", "1");
        void ReSize(Standard_Integer const NbBuckets);
        %feature("autodoc", "1");
        void Clear();
        %feature("autodoc", "1");
        Standard_Boolean Add(Standard_Real const & aKey);
        %feature("autodoc", "1");
        Standard_Boolean Contains(Standard_Real const & aKey) const;
        %feature("autodoc", "1");
        Standard_Boolean Remove(Standard_Real const & aKey); 
};

%feature("shadow") TColStd_MapOfReal::~TColStd_MapOfReal {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_MapOfReal {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColStd_MapOfTransient;

class TColStd_MapOfTransient : public TCollection_BasicMap {
    public:

        %feature("autodoc", "1");
        TColStd_MapOfTransient(Standard_Integer const NbBuckets=1);
        %feature("autodoc", "1");
        TColStd_MapOfTransient(TColStd_MapOfTransient const & Other);
        %feature("autodoc", "1");
        TColStd_MapOfTransient & Assign(TColStd_MapOfTransient const & Other);
        %feature("autodoc", "1");
        void ReSize(Standard_Integer const NbBuckets);
        %feature("autodoc", "1");
        void Clear();
        %feature("autodoc", "1");
        Standard_Boolean Add(Handle_Standard_Transient const & aKey);
        %feature("autodoc", "1");
        Standard_Boolean Contains(Handle_Standard_Transient const & aKey) const;
        %feature("autodoc", "1");
        Standard_Boolean Remove(Handle_Standard_Transient const & aKey); 
};

%feature("shadow") TColStd_MapOfTransient::~TColStd_MapOfTransient {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_MapOfTransient {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColStd_PackedMapOfInteger;

class TColStd_PackedMapOfInteger : public TCollection_BasicMap {
    public:

        %feature("autodoc", "1");
        TColStd_PackedMapOfInteger(Standard_Integer const NbBuckets=1);
        %feature("autodoc", "1");
        TColStd_PackedMapOfInteger(TColStd_PackedMapOfInteger const & theOther);
        %feature("autodoc", "1");
        TColStd_PackedMapOfInteger & Assign(TColStd_PackedMapOfInteger const & arg0);
        %feature("autodoc", "1");
        void ReSize(Standard_Integer const NbBuckets);
        %feature("autodoc", "1");
        void Clear();
        %feature("autodoc", "1");
        Standard_Boolean Add(Standard_Integer const aKey);
        %feature("autodoc", "1");
        Standard_Boolean Contains(Standard_Integer const aKey) const;
        %feature("autodoc", "1");
        Standard_Boolean Remove(Standard_Integer const aKey);
        %feature("autodoc", "1");
        Standard_Integer NbBuckets() const;
        %feature("autodoc", "1");
        Standard_Integer Extent() const;
        %feature("autodoc", "1");
        Standard_Integer IsEmpty() const;
        %feature("autodoc", "1");
        %extend{
            std::stringstream StatisticsToString() {
                std::stringstream s;
                self->Statistics(s);
                return s.str();
            }
        };
        %feature("autodoc", "1");
        Standard_Integer GetMinimalMapped() const;
        %feature("autodoc", "1");
        Standard_Integer GetMaximalMapped() const;
        %feature("autodoc", "1");
        void Union(TColStd_PackedMapOfInteger const & arg0, TColStd_PackedMapOfInteger const & arg1);
        %feature("autodoc", "1");
        Standard_Boolean Unite(TColStd_PackedMapOfInteger const & arg0);
        %feature("autodoc", "1");
        void Intersection(TColStd_PackedMapOfInteger const & arg0, TColStd_PackedMapOfInteger const & arg1);
        %feature("autodoc", "1");
        Standard_Boolean Intersect(TColStd_PackedMapOfInteger const & arg0);
        %feature("autodoc", "1");
        void Subtraction(TColStd_PackedMapOfInteger const & arg0, TColStd_PackedMapOfInteger const & arg1);
        %feature("autodoc", "1");
        Standard_Boolean Subtract(TColStd_PackedMapOfInteger const & arg0);
        %feature("autodoc", "1");
        void Difference(TColStd_PackedMapOfInteger const & arg0, TColStd_PackedMapOfInteger const & arg1);
        %feature("autodoc", "1");
        Standard_Boolean Differ(TColStd_PackedMapOfInteger const & arg0);
        %feature("autodoc", "1");
        Standard_Boolean IsEqual(TColStd_PackedMapOfInteger const & arg0) const;
        %feature("autodoc", "1");
        Standard_Boolean IsSubset(TColStd_PackedMapOfInteger const & arg0) const;
        %feature("autodoc", "1");
        Standard_Boolean HasIntersection(TColStd_PackedMapOfInteger const & arg0) const;
        %feature("autodoc", "1");
        Standard_Integer InternalExtent() const; 
};
//Var: size_t myExtent
//Get: None
//Set: None
%feature("shadow") TColStd_PackedMapOfInteger::~TColStd_PackedMapOfInteger {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_PackedMapOfInteger {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColStd_DataMapNodeOfDataMapOfIntegerInteger;

class TColStd_DataMapNodeOfDataMapOfIntegerInteger : public TCollection_MapNode {
    public:

        %feature("autodoc", "1");
        TColStd_DataMapNodeOfDataMapOfIntegerInteger(TColStd_DataMapNodeOfDataMapOfIntegerInteger const & arg0);
        %feature("autodoc", "1");
        TColStd_DataMapNodeOfDataMapOfIntegerInteger(Standard_Integer const & K, Standard_Integer const & I, TCollection_MapNodePtr const & n);
        %feature("autodoc", "1");
        Standard_Integer & Key() const;
        %feature("autodoc", "1");
        Standard_Integer & Value() const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: Standard_Integer myKey
//Get: None
//Set: None
//Var: Standard_Integer myValue
//Get: None
//Set: None
%feature("shadow") TColStd_DataMapNodeOfDataMapOfIntegerInteger::~TColStd_DataMapNodeOfDataMapOfIntegerInteger {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_DataMapNodeOfDataMapOfIntegerInteger {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColStd_DataMapNodeOfDataMapOfIntegerInteger {
    Handle_TColStd_DataMapNodeOfDataMapOfIntegerInteger* GetHandle(){
        return (Handle_TColStd_DataMapNodeOfDataMapOfIntegerInteger*)$self;
    }
};
   
%nodefaultctor TColStd_DataMapNodeOfDataMapOfIntegerListOfInteger;

class TColStd_DataMapNodeOfDataMapOfIntegerListOfInteger : public TCollection_MapNode {
    public:

        %feature("autodoc", "1");
        TColStd_DataMapNodeOfDataMapOfIntegerListOfInteger(Standard_Integer const & K, TColStd_ListOfInteger const & I, TCollection_MapNodePtr const & n);
        %feature("autodoc", "1");
        Standard_Integer & Key() const;
        %feature("autodoc", "1");
        TColStd_ListOfInteger & Value() const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: Standard_Integer myKey
//Get: None
//Set: None
//Var: TColStd_ListOfInteger myValue
//Get: None
//Set: None
%feature("shadow") TColStd_DataMapNodeOfDataMapOfIntegerListOfInteger::~TColStd_DataMapNodeOfDataMapOfIntegerListOfInteger {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_DataMapNodeOfDataMapOfIntegerListOfInteger {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColStd_DataMapNodeOfDataMapOfIntegerListOfInteger {
    Handle_TColStd_DataMapNodeOfDataMapOfIntegerListOfInteger* GetHandle(){
        return (Handle_TColStd_DataMapNodeOfDataMapOfIntegerListOfInteger*)$self;
    }
};
   
%nodefaultctor TColStd_DataMapNodeOfDataMapOfIntegerReal;

class TColStd_DataMapNodeOfDataMapOfIntegerReal : public TCollection_MapNode {
    public:

        %feature("autodoc", "1");
        TColStd_DataMapNodeOfDataMapOfIntegerReal(TColStd_DataMapNodeOfDataMapOfIntegerReal const & arg0);
        %feature("autodoc", "1");
        TColStd_DataMapNodeOfDataMapOfIntegerReal(Standard_Integer const & K, Standard_Real const & I, TCollection_MapNodePtr const & n);
        %feature("autodoc", "1");
        Standard_Integer & Key() const;
        %feature("autodoc", "1");
        Standard_Real & Value() const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: Standard_Integer myKey
//Get: None
//Set: None
//Var: Standard_Real myValue
//Get: None
//Set: None
%feature("shadow") TColStd_DataMapNodeOfDataMapOfIntegerReal::~TColStd_DataMapNodeOfDataMapOfIntegerReal {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_DataMapNodeOfDataMapOfIntegerReal {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColStd_DataMapNodeOfDataMapOfIntegerReal {
    Handle_TColStd_DataMapNodeOfDataMapOfIntegerReal* GetHandle(){
        return (Handle_TColStd_DataMapNodeOfDataMapOfIntegerReal*)$self;
    }
};
   
%nodefaultctor TColStd_IndexedDataMapNodeOfIndexedDataMapOfTransientTransient;

class TColStd_IndexedDataMapNodeOfIndexedDataMapOfTransientTransient : public TCollection_MapNode {
    public:

        %feature("autodoc", "1");
        TColStd_IndexedDataMapNodeOfIndexedDataMapOfTransientTransient(TColStd_IndexedDataMapNodeOfIndexedDataMapOfTransientTransient const & arg0);
        %feature("autodoc", "1");
        TColStd_IndexedDataMapNodeOfIndexedDataMapOfTransientTransient(Handle_Standard_Transient const & K1, Standard_Integer const K2, Handle_Standard_Transient const & I, TCollection_MapNodePtr const & n1, TCollection_MapNodePtr const & n2);
        %feature("autodoc", "1");
        Handle_Standard_Transient & Key1() const;
        %feature("autodoc", "1");
        Standard_Integer & Key2() const;
        %feature("autodoc", "1");
        TCollection_MapNodePtr & Next2() const;
        %feature("autodoc", "1");
        Handle_Standard_Transient & Value() const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: Handle_Standard_Transient myKey1
//Get: None
//Set: None
//Var: Standard_Integer myKey2
//Get: None
//Set: None
//Var: Handle_Standard_Transient myValue
//Get: None
//Set: None
//Var: TCollection_MapNodePtr myNext2
//Get: None
//Set: None
%feature("shadow") TColStd_IndexedDataMapNodeOfIndexedDataMapOfTransientTransient::~TColStd_IndexedDataMapNodeOfIndexedDataMapOfTransientTransient {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_IndexedDataMapNodeOfIndexedDataMapOfTransientTransient {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColStd_IndexedDataMapNodeOfIndexedDataMapOfTransientTransient {
    Handle_TColStd_IndexedDataMapNodeOfIndexedDataMapOfTransientTransient* GetHandle(){
        return (Handle_TColStd_IndexedDataMapNodeOfIndexedDataMapOfTransientTransient*)$self;
    }
};
   
%nodefaultctor TColStd_IndexedMapNodeOfIndexedMapOfInteger;

class TColStd_IndexedMapNodeOfIndexedMapOfInteger : public TCollection_MapNode {
    public:

        %feature("autodoc", "1");
        TColStd_IndexedMapNodeOfIndexedMapOfInteger(TColStd_IndexedMapNodeOfIndexedMapOfInteger const & arg0);
        %feature("autodoc", "1");
        TColStd_IndexedMapNodeOfIndexedMapOfInteger(Standard_Integer const & K1, Standard_Integer const K2, TCollection_MapNodePtr const & n1, TCollection_MapNodePtr const & n2);
        %feature("autodoc", "1");
        Standard_Integer & Key1() const;
        %feature("autodoc", "1");
        Standard_Integer & Key2() const;
        %feature("autodoc", "1");
        TCollection_MapNodePtr & Next2() const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: Standard_Integer myKey1
//Get: None
//Set: None
//Var: Standard_Integer myKey2
//Get: None
//Set: None
//Var: TCollection_MapNodePtr myNext2
//Get: None
//Set: None
%feature("shadow") TColStd_IndexedMapNodeOfIndexedMapOfInteger::~TColStd_IndexedMapNodeOfIndexedMapOfInteger {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_IndexedMapNodeOfIndexedMapOfInteger {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColStd_IndexedMapNodeOfIndexedMapOfInteger {
    Handle_TColStd_IndexedMapNodeOfIndexedMapOfInteger* GetHandle(){
        return (Handle_TColStd_IndexedMapNodeOfIndexedMapOfInteger*)$self;
    }
};
   
%nodefaultctor TColStd_IndexedMapNodeOfIndexedMapOfReal;

class TColStd_IndexedMapNodeOfIndexedMapOfReal : public TCollection_MapNode {
    public:

        %feature("autodoc", "1");
        TColStd_IndexedMapNodeOfIndexedMapOfReal(TColStd_IndexedMapNodeOfIndexedMapOfReal const & arg0);
        %feature("autodoc", "1");
        TColStd_IndexedMapNodeOfIndexedMapOfReal(Standard_Real const & K1, Standard_Integer const K2, TCollection_MapNodePtr const & n1, TCollection_MapNodePtr const & n2);
        %feature("autodoc", "1");
        Standard_Real & Key1() const;
        %feature("autodoc", "1");
        Standard_Integer & Key2() const;
        %feature("autodoc", "1");
        TCollection_MapNodePtr & Next2() const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: Standard_Real myKey1
//Get: None
//Set: None
//Var: Standard_Integer myKey2
//Get: None
//Set: None
//Var: TCollection_MapNodePtr myNext2
//Get: None
//Set: None
%feature("shadow") TColStd_IndexedMapNodeOfIndexedMapOfReal::~TColStd_IndexedMapNodeOfIndexedMapOfReal {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_IndexedMapNodeOfIndexedMapOfReal {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColStd_IndexedMapNodeOfIndexedMapOfReal {
    Handle_TColStd_IndexedMapNodeOfIndexedMapOfReal* GetHandle(){
        return (Handle_TColStd_IndexedMapNodeOfIndexedMapOfReal*)$self;
    }
};
   
%nodefaultctor TColStd_IndexedMapNodeOfIndexedMapOfTransient;

class TColStd_IndexedMapNodeOfIndexedMapOfTransient : public TCollection_MapNode {
    public:

        %feature("autodoc", "1");
        TColStd_IndexedMapNodeOfIndexedMapOfTransient(TColStd_IndexedMapNodeOfIndexedMapOfTransient const & arg0);
        %feature("autodoc", "1");
        TColStd_IndexedMapNodeOfIndexedMapOfTransient(Handle_Standard_Transient const & K1, Standard_Integer const K2, TCollection_MapNodePtr const & n1, TCollection_MapNodePtr const & n2);
        %feature("autodoc", "1");
        Handle_Standard_Transient & Key1() const;
        %feature("autodoc", "1");
        Standard_Integer & Key2() const;
        %feature("autodoc", "1");
        TCollection_MapNodePtr & Next2() const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: Handle_Standard_Transient myKey1
//Get: None
//Set: None
//Var: Standard_Integer myKey2
//Get: None
//Set: None
//Var: TCollection_MapNodePtr myNext2
//Get: None
//Set: None
%feature("shadow") TColStd_IndexedMapNodeOfIndexedMapOfTransient::~TColStd_IndexedMapNodeOfIndexedMapOfTransient {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_IndexedMapNodeOfIndexedMapOfTransient {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColStd_IndexedMapNodeOfIndexedMapOfTransient {
    Handle_TColStd_IndexedMapNodeOfIndexedMapOfTransient* GetHandle(){
        return (Handle_TColStd_IndexedMapNodeOfIndexedMapOfTransient*)$self;
    }
};
   
%nodefaultctor TColStd_ListNodeOfListOfInteger;

class TColStd_ListNodeOfListOfInteger : public TCollection_MapNode {
    public:

        %feature("autodoc", "1");
        TColStd_ListNodeOfListOfInteger(TColStd_ListNodeOfListOfInteger const & arg0);
        %feature("autodoc", "1");
        TColStd_ListNodeOfListOfInteger(Standard_Integer const & I, TCollection_MapNodePtr const & n);
        %feature("autodoc", "1");
        Standard_Integer & Value() const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: Standard_Integer myValue
//Get: None
//Set: None
%feature("shadow") TColStd_ListNodeOfListOfInteger::~TColStd_ListNodeOfListOfInteger {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_ListNodeOfListOfInteger {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColStd_ListNodeOfListOfInteger {
    Handle_TColStd_ListNodeOfListOfInteger* GetHandle(){
        return (Handle_TColStd_ListNodeOfListOfInteger*)$self;
    }
};
   
%nodefaultctor TColStd_ListNodeOfListOfReal;

class TColStd_ListNodeOfListOfReal : public TCollection_MapNode {
    public:

        %feature("autodoc", "1");
        TColStd_ListNodeOfListOfReal(TColStd_ListNodeOfListOfReal const & arg0);
        %feature("autodoc", "1");
        TColStd_ListNodeOfListOfReal(Standard_Real const & I, TCollection_MapNodePtr const & n);
        %feature("autodoc", "1");
        Standard_Real & Value() const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: Standard_Real myValue
//Get: None
//Set: None
%feature("shadow") TColStd_ListNodeOfListOfReal::~TColStd_ListNodeOfListOfReal {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_ListNodeOfListOfReal {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColStd_ListNodeOfListOfReal {
    Handle_TColStd_ListNodeOfListOfReal* GetHandle(){
        return (Handle_TColStd_ListNodeOfListOfReal*)$self;
    }
};
   
%nodefaultctor TColStd_ListNodeOfListOfTransient;

class TColStd_ListNodeOfListOfTransient : public TCollection_MapNode {
    public:

        %feature("autodoc", "1");
        TColStd_ListNodeOfListOfTransient(TColStd_ListNodeOfListOfTransient const & arg0);
        %feature("autodoc", "1");
        TColStd_ListNodeOfListOfTransient(Handle_Standard_Transient const & I, TCollection_MapNodePtr const & n);
        %feature("autodoc", "1");
        Handle_Standard_Transient & Value() const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: Handle_Standard_Transient myValue
//Get: None
//Set: None
%feature("shadow") TColStd_ListNodeOfListOfTransient::~TColStd_ListNodeOfListOfTransient {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_ListNodeOfListOfTransient {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColStd_ListNodeOfListOfTransient {
    Handle_TColStd_ListNodeOfListOfTransient* GetHandle(){
        return (Handle_TColStd_ListNodeOfListOfTransient*)$self;
    }
};
   
%nodefaultctor TColStd_ListNodeOfSetListOfSetOfInteger;

class TColStd_ListNodeOfSetListOfSetOfInteger : public TCollection_MapNode {
    public:

        %feature("autodoc", "1");
        TColStd_ListNodeOfSetListOfSetOfInteger(TColStd_ListNodeOfSetListOfSetOfInteger const & arg0);
        %feature("autodoc", "1");
        TColStd_ListNodeOfSetListOfSetOfInteger(Standard_Integer const & I, TCollection_MapNodePtr const & n);
        %feature("autodoc", "1");
        Standard_Integer & Value() const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: Standard_Integer myValue
//Get: None
//Set: None
%feature("shadow") TColStd_ListNodeOfSetListOfSetOfInteger::~TColStd_ListNodeOfSetListOfSetOfInteger {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_ListNodeOfSetListOfSetOfInteger {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColStd_ListNodeOfSetListOfSetOfInteger {
    Handle_TColStd_ListNodeOfSetListOfSetOfInteger* GetHandle(){
        return (Handle_TColStd_ListNodeOfSetListOfSetOfInteger*)$self;
    }
};
   
%nodefaultctor TColStd_ListNodeOfSetListOfSetOfReal;

class TColStd_ListNodeOfSetListOfSetOfReal : public TCollection_MapNode {
    public:

        %feature("autodoc", "1");
        TColStd_ListNodeOfSetListOfSetOfReal(TColStd_ListNodeOfSetListOfSetOfReal const & arg0);
        %feature("autodoc", "1");
        TColStd_ListNodeOfSetListOfSetOfReal(Standard_Real const & I, TCollection_MapNodePtr const & n);
        %feature("autodoc", "1");
        Standard_Real & Value() const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: Standard_Real myValue
//Get: None
//Set: None
%feature("shadow") TColStd_ListNodeOfSetListOfSetOfReal::~TColStd_ListNodeOfSetListOfSetOfReal {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_ListNodeOfSetListOfSetOfReal {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColStd_ListNodeOfSetListOfSetOfReal {
    Handle_TColStd_ListNodeOfSetListOfSetOfReal* GetHandle(){
        return (Handle_TColStd_ListNodeOfSetListOfSetOfReal*)$self;
    }
};
   
%nodefaultctor TColStd_ListNodeOfSetListOfSetOfTransient;

class TColStd_ListNodeOfSetListOfSetOfTransient : public TCollection_MapNode {
    public:

        %feature("autodoc", "1");
        TColStd_ListNodeOfSetListOfSetOfTransient(TColStd_ListNodeOfSetListOfSetOfTransient const & arg0);
        %feature("autodoc", "1");
        TColStd_ListNodeOfSetListOfSetOfTransient(Handle_Standard_Transient const & I, TCollection_MapNodePtr const & n);
        %feature("autodoc", "1");
        Handle_Standard_Transient & Value() const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: Handle_Standard_Transient myValue
//Get: None
//Set: None
%feature("shadow") TColStd_ListNodeOfSetListOfSetOfTransient::~TColStd_ListNodeOfSetListOfSetOfTransient {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_ListNodeOfSetListOfSetOfTransient {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColStd_ListNodeOfSetListOfSetOfTransient {
    Handle_TColStd_ListNodeOfSetListOfSetOfTransient* GetHandle(){
        return (Handle_TColStd_ListNodeOfSetListOfSetOfTransient*)$self;
    }
};
   
%nodefaultctor TColStd_QueueNodeOfQueueOfInteger;

class TColStd_QueueNodeOfQueueOfInteger : public TCollection_MapNode {
    public:

        %feature("autodoc", "1");
        TColStd_QueueNodeOfQueueOfInteger(TColStd_QueueNodeOfQueueOfInteger const & arg0);
        %feature("autodoc", "1");
        TColStd_QueueNodeOfQueueOfInteger(Standard_Integer const & I, TCollection_MapNodePtr const & n);
        %feature("autodoc", "1");
        Standard_Integer & Value() const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: Standard_Integer myValue
//Get: None
//Set: None
%feature("shadow") TColStd_QueueNodeOfQueueOfInteger::~TColStd_QueueNodeOfQueueOfInteger {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_QueueNodeOfQueueOfInteger {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColStd_QueueNodeOfQueueOfInteger {
    Handle_TColStd_QueueNodeOfQueueOfInteger* GetHandle(){
        return (Handle_TColStd_QueueNodeOfQueueOfInteger*)$self;
    }
};
   
%nodefaultctor TColStd_QueueNodeOfQueueOfReal;

class TColStd_QueueNodeOfQueueOfReal : public TCollection_MapNode {
    public:

        %feature("autodoc", "1");
        TColStd_QueueNodeOfQueueOfReal(TColStd_QueueNodeOfQueueOfReal const & arg0);
        %feature("autodoc", "1");
        TColStd_QueueNodeOfQueueOfReal(Standard_Real const & I, TCollection_MapNodePtr const & n);
        %feature("autodoc", "1");
        Standard_Real & Value() const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: Standard_Real myValue
//Get: None
//Set: None
%feature("shadow") TColStd_QueueNodeOfQueueOfReal::~TColStd_QueueNodeOfQueueOfReal {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_QueueNodeOfQueueOfReal {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColStd_QueueNodeOfQueueOfReal {
    Handle_TColStd_QueueNodeOfQueueOfReal* GetHandle(){
        return (Handle_TColStd_QueueNodeOfQueueOfReal*)$self;
    }
};
   
%nodefaultctor TColStd_QueueNodeOfQueueOfTransient;

class TColStd_QueueNodeOfQueueOfTransient : public TCollection_MapNode {
    public:

        %feature("autodoc", "1");
        TColStd_QueueNodeOfQueueOfTransient(TColStd_QueueNodeOfQueueOfTransient const & arg0);
        %feature("autodoc", "1");
        TColStd_QueueNodeOfQueueOfTransient(Handle_Standard_Transient const & I, TCollection_MapNodePtr const & n);
        %feature("autodoc", "1");
        Handle_Standard_Transient & Value() const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: Handle_Standard_Transient myValue
//Get: None
//Set: None
%feature("shadow") TColStd_QueueNodeOfQueueOfTransient::~TColStd_QueueNodeOfQueueOfTransient {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_QueueNodeOfQueueOfTransient {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColStd_QueueNodeOfQueueOfTransient {
    Handle_TColStd_QueueNodeOfQueueOfTransient* GetHandle(){
        return (Handle_TColStd_QueueNodeOfQueueOfTransient*)$self;
    }
};
   
%nodefaultctor TColStd_StackNodeOfStackOfInteger;

class TColStd_StackNodeOfStackOfInteger : public TCollection_MapNode {
    public:

        %feature("autodoc", "1");
        TColStd_StackNodeOfStackOfInteger(TColStd_StackNodeOfStackOfInteger const & arg0);
        %feature("autodoc", "1");
        TColStd_StackNodeOfStackOfInteger(Standard_Integer const & I, TCollection_MapNodePtr const & n);
        %feature("autodoc", "1");
        Standard_Integer & Value() const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: Standard_Integer myValue
//Get: None
//Set: None
%feature("shadow") TColStd_StackNodeOfStackOfInteger::~TColStd_StackNodeOfStackOfInteger {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_StackNodeOfStackOfInteger {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColStd_StackNodeOfStackOfInteger {
    Handle_TColStd_StackNodeOfStackOfInteger* GetHandle(){
        return (Handle_TColStd_StackNodeOfStackOfInteger*)$self;
    }
};
   
%nodefaultctor TColStd_StackNodeOfStackOfReal;

class TColStd_StackNodeOfStackOfReal : public TCollection_MapNode {
    public:

        %feature("autodoc", "1");
        TColStd_StackNodeOfStackOfReal(TColStd_StackNodeOfStackOfReal const & arg0);
        %feature("autodoc", "1");
        TColStd_StackNodeOfStackOfReal(Standard_Real const & I, TCollection_MapNodePtr const & n);
        %feature("autodoc", "1");
        Standard_Real & Value() const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: Standard_Real myValue
//Get: None
//Set: None
%feature("shadow") TColStd_StackNodeOfStackOfReal::~TColStd_StackNodeOfStackOfReal {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_StackNodeOfStackOfReal {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColStd_StackNodeOfStackOfReal {
    Handle_TColStd_StackNodeOfStackOfReal* GetHandle(){
        return (Handle_TColStd_StackNodeOfStackOfReal*)$self;
    }
};
   
%nodefaultctor TColStd_StackNodeOfStackOfTransient;

class TColStd_StackNodeOfStackOfTransient : public TCollection_MapNode {
    public:

        %feature("autodoc", "1");
        TColStd_StackNodeOfStackOfTransient(TColStd_StackNodeOfStackOfTransient const & arg0);
        %feature("autodoc", "1");
        TColStd_StackNodeOfStackOfTransient(Handle_Standard_Transient const & I, TCollection_MapNodePtr const & n);
        %feature("autodoc", "1");
        Handle_Standard_Transient & Value() const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: Handle_Standard_Transient myValue
//Get: None
//Set: None
%feature("shadow") TColStd_StackNodeOfStackOfTransient::~TColStd_StackNodeOfStackOfTransient {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_StackNodeOfStackOfTransient {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColStd_StackNodeOfStackOfTransient {
    Handle_TColStd_StackNodeOfStackOfTransient* GetHandle(){
        return (Handle_TColStd_StackNodeOfStackOfTransient*)$self;
    }
};
   
%nodefaultctor TColStd_StdMapNodeOfMapOfInteger;

class TColStd_StdMapNodeOfMapOfInteger : public TCollection_MapNode {
    public:

        %feature("autodoc", "1");
        TColStd_StdMapNodeOfMapOfInteger(TColStd_StdMapNodeOfMapOfInteger const & arg0);
        %feature("autodoc", "1");
        TColStd_StdMapNodeOfMapOfInteger(Standard_Integer const & K, TCollection_MapNodePtr const & n);
        %feature("autodoc", "1");
        Standard_Integer & Key() const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: Standard_Integer myKey
//Get: None
//Set: None
%feature("shadow") TColStd_StdMapNodeOfMapOfInteger::~TColStd_StdMapNodeOfMapOfInteger {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_StdMapNodeOfMapOfInteger {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColStd_StdMapNodeOfMapOfInteger {
    Handle_TColStd_StdMapNodeOfMapOfInteger* GetHandle(){
        return (Handle_TColStd_StdMapNodeOfMapOfInteger*)$self;
    }
};
   
%nodefaultctor TColStd_StdMapNodeOfMapOfReal;

class TColStd_StdMapNodeOfMapOfReal : public TCollection_MapNode {
    public:

        %feature("autodoc", "1");
        TColStd_StdMapNodeOfMapOfReal(TColStd_StdMapNodeOfMapOfReal const & arg0);
        %feature("autodoc", "1");
        TColStd_StdMapNodeOfMapOfReal(Standard_Real const & K, TCollection_MapNodePtr const & n);
        %feature("autodoc", "1");
        Standard_Real & Key() const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: Standard_Real myKey
//Get: None
//Set: None
%feature("shadow") TColStd_StdMapNodeOfMapOfReal::~TColStd_StdMapNodeOfMapOfReal {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_StdMapNodeOfMapOfReal {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColStd_StdMapNodeOfMapOfReal {
    Handle_TColStd_StdMapNodeOfMapOfReal* GetHandle(){
        return (Handle_TColStd_StdMapNodeOfMapOfReal*)$self;
    }
};
   
%nodefaultctor TColStd_StdMapNodeOfMapOfTransient;

class TColStd_StdMapNodeOfMapOfTransient : public TCollection_MapNode {
    public:

        %feature("autodoc", "1");
        TColStd_StdMapNodeOfMapOfTransient(TColStd_StdMapNodeOfMapOfTransient const & arg0);
        %feature("autodoc", "1");
        TColStd_StdMapNodeOfMapOfTransient(Handle_Standard_Transient const & K, TCollection_MapNodePtr const & n);
        %feature("autodoc", "1");
        Handle_Standard_Transient & Key() const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: Handle_Standard_Transient myKey
//Get: None
//Set: None
%feature("shadow") TColStd_StdMapNodeOfMapOfTransient::~TColStd_StdMapNodeOfMapOfTransient {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_StdMapNodeOfMapOfTransient {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColStd_StdMapNodeOfMapOfTransient {
    Handle_TColStd_StdMapNodeOfMapOfTransient* GetHandle(){
        return (Handle_TColStd_StdMapNodeOfMapOfTransient*)$self;
    }
};
   
%nodefaultctor TColStd_SequenceNodeOfSequenceOfAsciiString;

class TColStd_SequenceNodeOfSequenceOfAsciiString : public TCollection_SeqNode {
    public:

        %feature("autodoc", "1");
        TColStd_SequenceNodeOfSequenceOfAsciiString(TColStd_SequenceNodeOfSequenceOfAsciiString const & arg0);
        %feature("autodoc", "1");
        TColStd_SequenceNodeOfSequenceOfAsciiString(TCollection_AsciiString const & I, TCollection_SeqNodePtr const & n, TCollection_SeqNodePtr const & p);
        %feature("autodoc", "1");
        TCollection_AsciiString & Value() const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: TCollection_AsciiString myValue
//Get: None
//Set: None
%feature("shadow") TColStd_SequenceNodeOfSequenceOfAsciiString::~TColStd_SequenceNodeOfSequenceOfAsciiString {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_SequenceNodeOfSequenceOfAsciiString {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColStd_SequenceNodeOfSequenceOfAsciiString {
    Handle_TColStd_SequenceNodeOfSequenceOfAsciiString* GetHandle(){
        return (Handle_TColStd_SequenceNodeOfSequenceOfAsciiString*)$self;
    }
};
   
%nodefaultctor TColStd_SequenceNodeOfSequenceOfExtendedString;

class TColStd_SequenceNodeOfSequenceOfExtendedString : public TCollection_SeqNode {
    public:

        %feature("autodoc", "1");
        TColStd_SequenceNodeOfSequenceOfExtendedString(TColStd_SequenceNodeOfSequenceOfExtendedString const & arg0);
        %feature("autodoc", "1");
        TColStd_SequenceNodeOfSequenceOfExtendedString(TCollection_ExtendedString const & I, TCollection_SeqNodePtr const & n, TCollection_SeqNodePtr const & p);
        %feature("autodoc", "1");
        TCollection_ExtendedString & Value() const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: TCollection_ExtendedString myValue
//Get: None
//Set: None
%feature("shadow") TColStd_SequenceNodeOfSequenceOfExtendedString::~TColStd_SequenceNodeOfSequenceOfExtendedString {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_SequenceNodeOfSequenceOfExtendedString {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColStd_SequenceNodeOfSequenceOfExtendedString {
    Handle_TColStd_SequenceNodeOfSequenceOfExtendedString* GetHandle(){
        return (Handle_TColStd_SequenceNodeOfSequenceOfExtendedString*)$self;
    }
};
   
%nodefaultctor TColStd_SequenceNodeOfSequenceOfHAsciiString;

class TColStd_SequenceNodeOfSequenceOfHAsciiString : public TCollection_SeqNode {
    public:

        %feature("autodoc", "1");
        TColStd_SequenceNodeOfSequenceOfHAsciiString(TColStd_SequenceNodeOfSequenceOfHAsciiString const & arg0);
        %feature("autodoc", "1");
        TColStd_SequenceNodeOfSequenceOfHAsciiString(Handle_TCollection_HAsciiString const & I, TCollection_SeqNodePtr const & n, TCollection_SeqNodePtr const & p);
        %feature("autodoc", "1");
        Handle_TCollection_HAsciiString & Value() const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: Handle_TCollection_HAsciiString myValue
//Get: None
//Set: None
%feature("shadow") TColStd_SequenceNodeOfSequenceOfHAsciiString::~TColStd_SequenceNodeOfSequenceOfHAsciiString {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_SequenceNodeOfSequenceOfHAsciiString {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColStd_SequenceNodeOfSequenceOfHAsciiString {
    Handle_TColStd_SequenceNodeOfSequenceOfHAsciiString* GetHandle(){
        return (Handle_TColStd_SequenceNodeOfSequenceOfHAsciiString*)$self;
    }
};
   
%nodefaultctor TColStd_SequenceNodeOfSequenceOfHExtendedString;

class TColStd_SequenceNodeOfSequenceOfHExtendedString : public TCollection_SeqNode {
    public:

        %feature("autodoc", "1");
        TColStd_SequenceNodeOfSequenceOfHExtendedString(TColStd_SequenceNodeOfSequenceOfHExtendedString const & arg0);
        %feature("autodoc", "1");
        TColStd_SequenceNodeOfSequenceOfHExtendedString(Handle_TCollection_HExtendedString const & I, TCollection_SeqNodePtr const & n, TCollection_SeqNodePtr const & p);
        %feature("autodoc", "1");
        Handle_TCollection_HExtendedString & Value() const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: Handle_TCollection_HExtendedString myValue
//Get: None
//Set: None
%feature("shadow") TColStd_SequenceNodeOfSequenceOfHExtendedString::~TColStd_SequenceNodeOfSequenceOfHExtendedString {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_SequenceNodeOfSequenceOfHExtendedString {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColStd_SequenceNodeOfSequenceOfHExtendedString {
    Handle_TColStd_SequenceNodeOfSequenceOfHExtendedString* GetHandle(){
        return (Handle_TColStd_SequenceNodeOfSequenceOfHExtendedString*)$self;
    }
};
   
%nodefaultctor TColStd_SequenceNodeOfSequenceOfInteger;

class TColStd_SequenceNodeOfSequenceOfInteger : public TCollection_SeqNode {
    public:

        %feature("autodoc", "1");
        TColStd_SequenceNodeOfSequenceOfInteger(TColStd_SequenceNodeOfSequenceOfInteger const & arg0);
        %feature("autodoc", "1");
        TColStd_SequenceNodeOfSequenceOfInteger(Standard_Integer const & I, TCollection_SeqNodePtr const & n, TCollection_SeqNodePtr const & p);
        %feature("autodoc", "1");
        Standard_Integer & Value() const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: Standard_Integer myValue
//Get: None
//Set: None
%feature("shadow") TColStd_SequenceNodeOfSequenceOfInteger::~TColStd_SequenceNodeOfSequenceOfInteger {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_SequenceNodeOfSequenceOfInteger {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColStd_SequenceNodeOfSequenceOfInteger {
    Handle_TColStd_SequenceNodeOfSequenceOfInteger* GetHandle(){
        return (Handle_TColStd_SequenceNodeOfSequenceOfInteger*)$self;
    }
};
   
%nodefaultctor TColStd_SequenceNodeOfSequenceOfReal;

class TColStd_SequenceNodeOfSequenceOfReal : public TCollection_SeqNode {
    public:

        %feature("autodoc", "1");
        TColStd_SequenceNodeOfSequenceOfReal(TColStd_SequenceNodeOfSequenceOfReal const & arg0);
        %feature("autodoc", "1");
        TColStd_SequenceNodeOfSequenceOfReal(Standard_Real const & I, TCollection_SeqNodePtr const & n, TCollection_SeqNodePtr const & p);
        %feature("autodoc", "1");
        Standard_Real & Value() const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: Standard_Real myValue
//Get: None
//Set: None
%feature("shadow") TColStd_SequenceNodeOfSequenceOfReal::~TColStd_SequenceNodeOfSequenceOfReal {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_SequenceNodeOfSequenceOfReal {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColStd_SequenceNodeOfSequenceOfReal {
    Handle_TColStd_SequenceNodeOfSequenceOfReal* GetHandle(){
        return (Handle_TColStd_SequenceNodeOfSequenceOfReal*)$self;
    }
};
   
%nodefaultctor TColStd_SequenceNodeOfSequenceOfTransient;

class TColStd_SequenceNodeOfSequenceOfTransient : public TCollection_SeqNode {
    public:

        %feature("autodoc", "1");
        TColStd_SequenceNodeOfSequenceOfTransient(TColStd_SequenceNodeOfSequenceOfTransient const & arg0);
        %feature("autodoc", "1");
        TColStd_SequenceNodeOfSequenceOfTransient(Handle_Standard_Transient const & I, TCollection_SeqNodePtr const & n, TCollection_SeqNodePtr const & p);
        %feature("autodoc", "1");
        Handle_Standard_Transient & Value() const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: Handle_Standard_Transient myValue
//Get: None
//Set: None
%feature("shadow") TColStd_SequenceNodeOfSequenceOfTransient::~TColStd_SequenceNodeOfSequenceOfTransient {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColStd_SequenceNodeOfSequenceOfTransient {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColStd_SequenceNodeOfSequenceOfTransient {
    Handle_TColStd_SequenceNodeOfSequenceOfTransient* GetHandle(){
        return (Handle_TColStd_SequenceNodeOfSequenceOfTransient*)$self;
    }
};