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
 
%module TColgp
       
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i


%pythoncode {
import GarbageCollector
};
%include TColgp_dependencies.i



   
%nodefaultctor Handle_TColgp_HArray1OfCirc2d;

class Handle_TColgp_HArray1OfCirc2d : public Handle_MMgt_TShared {
    public:

        %feature("autodoc", "1");
        Handle_TColgp_HArray1OfCirc2d();
        %feature("autodoc", "1");
        Handle_TColgp_HArray1OfCirc2d(Handle_TColgp_HArray1OfCirc2d const & aHandle);
        %feature("autodoc", "1");
        Handle_TColgp_HArray1OfCirc2d(TColgp_HArray1OfCirc2d const * anItem);
        %feature("autodoc", "1");
        Handle_TColgp_HArray1OfCirc2d const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TColgp_HArray1OfCirc2d::~Handle_TColgp_HArray1OfCirc2d {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TColgp_HArray1OfCirc2d {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TColgp_HArray1OfCirc2d {
    TColgp_HArray1OfCirc2d* GetObject() {
        return (TColgp_HArray1OfCirc2d*)$self->Access();
    }
};
   
%nodefaultctor Handle_TColgp_HArray1OfDir;

class Handle_TColgp_HArray1OfDir : public Handle_MMgt_TShared {
    public:

        %feature("autodoc", "1");
        Handle_TColgp_HArray1OfDir();
        %feature("autodoc", "1");
        Handle_TColgp_HArray1OfDir(Handle_TColgp_HArray1OfDir const & aHandle);
        %feature("autodoc", "1");
        Handle_TColgp_HArray1OfDir(TColgp_HArray1OfDir const * anItem);
        %feature("autodoc", "1");
        Handle_TColgp_HArray1OfDir const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TColgp_HArray1OfDir::~Handle_TColgp_HArray1OfDir {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TColgp_HArray1OfDir {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TColgp_HArray1OfDir {
    TColgp_HArray1OfDir* GetObject() {
        return (TColgp_HArray1OfDir*)$self->Access();
    }
};
   
%nodefaultctor Handle_TColgp_HArray1OfDir2d;

class Handle_TColgp_HArray1OfDir2d : public Handle_MMgt_TShared {
    public:

        %feature("autodoc", "1");
        Handle_TColgp_HArray1OfDir2d();
        %feature("autodoc", "1");
        Handle_TColgp_HArray1OfDir2d(Handle_TColgp_HArray1OfDir2d const & aHandle);
        %feature("autodoc", "1");
        Handle_TColgp_HArray1OfDir2d(TColgp_HArray1OfDir2d const * anItem);
        %feature("autodoc", "1");
        Handle_TColgp_HArray1OfDir2d const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TColgp_HArray1OfDir2d::~Handle_TColgp_HArray1OfDir2d {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TColgp_HArray1OfDir2d {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TColgp_HArray1OfDir2d {
    TColgp_HArray1OfDir2d* GetObject() {
        return (TColgp_HArray1OfDir2d*)$self->Access();
    }
};
   
%nodefaultctor Handle_TColgp_HArray1OfLin2d;

class Handle_TColgp_HArray1OfLin2d : public Handle_MMgt_TShared {
    public:

        %feature("autodoc", "1");
        Handle_TColgp_HArray1OfLin2d();
        %feature("autodoc", "1");
        Handle_TColgp_HArray1OfLin2d(Handle_TColgp_HArray1OfLin2d const & aHandle);
        %feature("autodoc", "1");
        Handle_TColgp_HArray1OfLin2d(TColgp_HArray1OfLin2d const * anItem);
        %feature("autodoc", "1");
        Handle_TColgp_HArray1OfLin2d const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TColgp_HArray1OfLin2d::~Handle_TColgp_HArray1OfLin2d {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TColgp_HArray1OfLin2d {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TColgp_HArray1OfLin2d {
    TColgp_HArray1OfLin2d* GetObject() {
        return (TColgp_HArray1OfLin2d*)$self->Access();
    }
};
   
%nodefaultctor Handle_TColgp_HArray1OfPnt;

class Handle_TColgp_HArray1OfPnt : public Handle_MMgt_TShared {
    public:

        %feature("autodoc", "1");
        Handle_TColgp_HArray1OfPnt();
        %feature("autodoc", "1");
        Handle_TColgp_HArray1OfPnt(Handle_TColgp_HArray1OfPnt const & aHandle);
        %feature("autodoc", "1");
        Handle_TColgp_HArray1OfPnt(TColgp_HArray1OfPnt const * anItem);
        %feature("autodoc", "1");
        Handle_TColgp_HArray1OfPnt const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TColgp_HArray1OfPnt::~Handle_TColgp_HArray1OfPnt {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TColgp_HArray1OfPnt {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TColgp_HArray1OfPnt {
    TColgp_HArray1OfPnt* GetObject() {
        return (TColgp_HArray1OfPnt*)$self->Access();
    }
};
   
%nodefaultctor Handle_TColgp_HArray1OfPnt2d;

class Handle_TColgp_HArray1OfPnt2d : public Handle_MMgt_TShared {
    public:

        %feature("autodoc", "1");
        Handle_TColgp_HArray1OfPnt2d();
        %feature("autodoc", "1");
        Handle_TColgp_HArray1OfPnt2d(Handle_TColgp_HArray1OfPnt2d const & aHandle);
        %feature("autodoc", "1");
        Handle_TColgp_HArray1OfPnt2d(TColgp_HArray1OfPnt2d const * anItem);
        %feature("autodoc", "1");
        Handle_TColgp_HArray1OfPnt2d const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TColgp_HArray1OfPnt2d::~Handle_TColgp_HArray1OfPnt2d {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TColgp_HArray1OfPnt2d {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TColgp_HArray1OfPnt2d {
    TColgp_HArray1OfPnt2d* GetObject() {
        return (TColgp_HArray1OfPnt2d*)$self->Access();
    }
};
   
%nodefaultctor Handle_TColgp_HArray1OfVec;

class Handle_TColgp_HArray1OfVec : public Handle_MMgt_TShared {
    public:

        %feature("autodoc", "1");
        Handle_TColgp_HArray1OfVec();
        %feature("autodoc", "1");
        Handle_TColgp_HArray1OfVec(Handle_TColgp_HArray1OfVec const & aHandle);
        %feature("autodoc", "1");
        Handle_TColgp_HArray1OfVec(TColgp_HArray1OfVec const * anItem);
        %feature("autodoc", "1");
        Handle_TColgp_HArray1OfVec const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TColgp_HArray1OfVec::~Handle_TColgp_HArray1OfVec {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TColgp_HArray1OfVec {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TColgp_HArray1OfVec {
    TColgp_HArray1OfVec* GetObject() {
        return (TColgp_HArray1OfVec*)$self->Access();
    }
};
   
%nodefaultctor Handle_TColgp_HArray1OfVec2d;

class Handle_TColgp_HArray1OfVec2d : public Handle_MMgt_TShared {
    public:

        %feature("autodoc", "1");
        Handle_TColgp_HArray1OfVec2d();
        %feature("autodoc", "1");
        Handle_TColgp_HArray1OfVec2d(Handle_TColgp_HArray1OfVec2d const & aHandle);
        %feature("autodoc", "1");
        Handle_TColgp_HArray1OfVec2d(TColgp_HArray1OfVec2d const * anItem);
        %feature("autodoc", "1");
        Handle_TColgp_HArray1OfVec2d const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TColgp_HArray1OfVec2d::~Handle_TColgp_HArray1OfVec2d {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TColgp_HArray1OfVec2d {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TColgp_HArray1OfVec2d {
    TColgp_HArray1OfVec2d* GetObject() {
        return (TColgp_HArray1OfVec2d*)$self->Access();
    }
};
   
%nodefaultctor Handle_TColgp_HArray1OfXY;

class Handle_TColgp_HArray1OfXY : public Handle_MMgt_TShared {
    public:

        %feature("autodoc", "1");
        Handle_TColgp_HArray1OfXY();
        %feature("autodoc", "1");
        Handle_TColgp_HArray1OfXY(Handle_TColgp_HArray1OfXY const & aHandle);
        %feature("autodoc", "1");
        Handle_TColgp_HArray1OfXY(TColgp_HArray1OfXY const * anItem);
        %feature("autodoc", "1");
        Handle_TColgp_HArray1OfXY const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TColgp_HArray1OfXY::~Handle_TColgp_HArray1OfXY {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TColgp_HArray1OfXY {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TColgp_HArray1OfXY {
    TColgp_HArray1OfXY* GetObject() {
        return (TColgp_HArray1OfXY*)$self->Access();
    }
};
   
%nodefaultctor Handle_TColgp_HArray1OfXYZ;

class Handle_TColgp_HArray1OfXYZ : public Handle_MMgt_TShared {
    public:

        %feature("autodoc", "1");
        Handle_TColgp_HArray1OfXYZ();
        %feature("autodoc", "1");
        Handle_TColgp_HArray1OfXYZ(Handle_TColgp_HArray1OfXYZ const & aHandle);
        %feature("autodoc", "1");
        Handle_TColgp_HArray1OfXYZ(TColgp_HArray1OfXYZ const * anItem);
        %feature("autodoc", "1");
        Handle_TColgp_HArray1OfXYZ const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TColgp_HArray1OfXYZ::~Handle_TColgp_HArray1OfXYZ {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TColgp_HArray1OfXYZ {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TColgp_HArray1OfXYZ {
    TColgp_HArray1OfXYZ* GetObject() {
        return (TColgp_HArray1OfXYZ*)$self->Access();
    }
};
   
%nodefaultctor Handle_TColgp_HArray2OfCirc2d;

class Handle_TColgp_HArray2OfCirc2d : public Handle_MMgt_TShared {
    public:

        %feature("autodoc", "1");
        Handle_TColgp_HArray2OfCirc2d();
        %feature("autodoc", "1");
        Handle_TColgp_HArray2OfCirc2d(Handle_TColgp_HArray2OfCirc2d const & aHandle);
        %feature("autodoc", "1");
        Handle_TColgp_HArray2OfCirc2d(TColgp_HArray2OfCirc2d const * anItem);
        %feature("autodoc", "1");
        Handle_TColgp_HArray2OfCirc2d const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TColgp_HArray2OfCirc2d::~Handle_TColgp_HArray2OfCirc2d {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TColgp_HArray2OfCirc2d {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TColgp_HArray2OfCirc2d {
    TColgp_HArray2OfCirc2d* GetObject() {
        return (TColgp_HArray2OfCirc2d*)$self->Access();
    }
};
   
%nodefaultctor Handle_TColgp_HArray2OfDir;

class Handle_TColgp_HArray2OfDir : public Handle_MMgt_TShared {
    public:

        %feature("autodoc", "1");
        Handle_TColgp_HArray2OfDir();
        %feature("autodoc", "1");
        Handle_TColgp_HArray2OfDir(Handle_TColgp_HArray2OfDir const & aHandle);
        %feature("autodoc", "1");
        Handle_TColgp_HArray2OfDir(TColgp_HArray2OfDir const * anItem);
        %feature("autodoc", "1");
        Handle_TColgp_HArray2OfDir const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TColgp_HArray2OfDir::~Handle_TColgp_HArray2OfDir {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TColgp_HArray2OfDir {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TColgp_HArray2OfDir {
    TColgp_HArray2OfDir* GetObject() {
        return (TColgp_HArray2OfDir*)$self->Access();
    }
};
   
%nodefaultctor Handle_TColgp_HArray2OfDir2d;

class Handle_TColgp_HArray2OfDir2d : public Handle_MMgt_TShared {
    public:

        %feature("autodoc", "1");
        Handle_TColgp_HArray2OfDir2d();
        %feature("autodoc", "1");
        Handle_TColgp_HArray2OfDir2d(Handle_TColgp_HArray2OfDir2d const & aHandle);
        %feature("autodoc", "1");
        Handle_TColgp_HArray2OfDir2d(TColgp_HArray2OfDir2d const * anItem);
        %feature("autodoc", "1");
        Handle_TColgp_HArray2OfDir2d const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TColgp_HArray2OfDir2d::~Handle_TColgp_HArray2OfDir2d {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TColgp_HArray2OfDir2d {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TColgp_HArray2OfDir2d {
    TColgp_HArray2OfDir2d* GetObject() {
        return (TColgp_HArray2OfDir2d*)$self->Access();
    }
};
   
%nodefaultctor Handle_TColgp_HArray2OfLin2d;

class Handle_TColgp_HArray2OfLin2d : public Handle_MMgt_TShared {
    public:

        %feature("autodoc", "1");
        Handle_TColgp_HArray2OfLin2d();
        %feature("autodoc", "1");
        Handle_TColgp_HArray2OfLin2d(Handle_TColgp_HArray2OfLin2d const & aHandle);
        %feature("autodoc", "1");
        Handle_TColgp_HArray2OfLin2d(TColgp_HArray2OfLin2d const * anItem);
        %feature("autodoc", "1");
        Handle_TColgp_HArray2OfLin2d const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TColgp_HArray2OfLin2d::~Handle_TColgp_HArray2OfLin2d {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TColgp_HArray2OfLin2d {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TColgp_HArray2OfLin2d {
    TColgp_HArray2OfLin2d* GetObject() {
        return (TColgp_HArray2OfLin2d*)$self->Access();
    }
};
   
%nodefaultctor Handle_TColgp_HArray2OfPnt;

class Handle_TColgp_HArray2OfPnt : public Handle_MMgt_TShared {
    public:

        %feature("autodoc", "1");
        Handle_TColgp_HArray2OfPnt();
        %feature("autodoc", "1");
        Handle_TColgp_HArray2OfPnt(Handle_TColgp_HArray2OfPnt const & aHandle);
        %feature("autodoc", "1");
        Handle_TColgp_HArray2OfPnt(TColgp_HArray2OfPnt const * anItem);
        %feature("autodoc", "1");
        Handle_TColgp_HArray2OfPnt const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TColgp_HArray2OfPnt::~Handle_TColgp_HArray2OfPnt {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TColgp_HArray2OfPnt {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TColgp_HArray2OfPnt {
    TColgp_HArray2OfPnt* GetObject() {
        return (TColgp_HArray2OfPnt*)$self->Access();
    }
};
   
%nodefaultctor Handle_TColgp_HArray2OfPnt2d;

class Handle_TColgp_HArray2OfPnt2d : public Handle_MMgt_TShared {
    public:

        %feature("autodoc", "1");
        Handle_TColgp_HArray2OfPnt2d();
        %feature("autodoc", "1");
        Handle_TColgp_HArray2OfPnt2d(Handle_TColgp_HArray2OfPnt2d const & aHandle);
        %feature("autodoc", "1");
        Handle_TColgp_HArray2OfPnt2d(TColgp_HArray2OfPnt2d const * anItem);
        %feature("autodoc", "1");
        Handle_TColgp_HArray2OfPnt2d const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TColgp_HArray2OfPnt2d::~Handle_TColgp_HArray2OfPnt2d {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TColgp_HArray2OfPnt2d {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TColgp_HArray2OfPnt2d {
    TColgp_HArray2OfPnt2d* GetObject() {
        return (TColgp_HArray2OfPnt2d*)$self->Access();
    }
};
   
%nodefaultctor Handle_TColgp_HArray2OfVec;

class Handle_TColgp_HArray2OfVec : public Handle_MMgt_TShared {
    public:

        %feature("autodoc", "1");
        Handle_TColgp_HArray2OfVec();
        %feature("autodoc", "1");
        Handle_TColgp_HArray2OfVec(Handle_TColgp_HArray2OfVec const & aHandle);
        %feature("autodoc", "1");
        Handle_TColgp_HArray2OfVec(TColgp_HArray2OfVec const * anItem);
        %feature("autodoc", "1");
        Handle_TColgp_HArray2OfVec const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TColgp_HArray2OfVec::~Handle_TColgp_HArray2OfVec {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TColgp_HArray2OfVec {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TColgp_HArray2OfVec {
    TColgp_HArray2OfVec* GetObject() {
        return (TColgp_HArray2OfVec*)$self->Access();
    }
};
   
%nodefaultctor Handle_TColgp_HArray2OfVec2d;

class Handle_TColgp_HArray2OfVec2d : public Handle_MMgt_TShared {
    public:

        %feature("autodoc", "1");
        Handle_TColgp_HArray2OfVec2d();
        %feature("autodoc", "1");
        Handle_TColgp_HArray2OfVec2d(Handle_TColgp_HArray2OfVec2d const & aHandle);
        %feature("autodoc", "1");
        Handle_TColgp_HArray2OfVec2d(TColgp_HArray2OfVec2d const * anItem);
        %feature("autodoc", "1");
        Handle_TColgp_HArray2OfVec2d const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TColgp_HArray2OfVec2d::~Handle_TColgp_HArray2OfVec2d {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TColgp_HArray2OfVec2d {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TColgp_HArray2OfVec2d {
    TColgp_HArray2OfVec2d* GetObject() {
        return (TColgp_HArray2OfVec2d*)$self->Access();
    }
};
   
%nodefaultctor Handle_TColgp_HArray2OfXY;

class Handle_TColgp_HArray2OfXY : public Handle_MMgt_TShared {
    public:

        %feature("autodoc", "1");
        Handle_TColgp_HArray2OfXY();
        %feature("autodoc", "1");
        Handle_TColgp_HArray2OfXY(Handle_TColgp_HArray2OfXY const & aHandle);
        %feature("autodoc", "1");
        Handle_TColgp_HArray2OfXY(TColgp_HArray2OfXY const * anItem);
        %feature("autodoc", "1");
        Handle_TColgp_HArray2OfXY const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TColgp_HArray2OfXY::~Handle_TColgp_HArray2OfXY {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TColgp_HArray2OfXY {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TColgp_HArray2OfXY {
    TColgp_HArray2OfXY* GetObject() {
        return (TColgp_HArray2OfXY*)$self->Access();
    }
};
   
%nodefaultctor Handle_TColgp_HArray2OfXYZ;

class Handle_TColgp_HArray2OfXYZ : public Handle_MMgt_TShared {
    public:

        %feature("autodoc", "1");
        Handle_TColgp_HArray2OfXYZ();
        %feature("autodoc", "1");
        Handle_TColgp_HArray2OfXYZ(Handle_TColgp_HArray2OfXYZ const & aHandle);
        %feature("autodoc", "1");
        Handle_TColgp_HArray2OfXYZ(TColgp_HArray2OfXYZ const * anItem);
        %feature("autodoc", "1");
        Handle_TColgp_HArray2OfXYZ const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TColgp_HArray2OfXYZ::~Handle_TColgp_HArray2OfXYZ {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TColgp_HArray2OfXYZ {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TColgp_HArray2OfXYZ {
    TColgp_HArray2OfXYZ* GetObject() {
        return (TColgp_HArray2OfXYZ*)$self->Access();
    }
};
   
%nodefaultctor Handle_TColgp_HSequenceOfDir;

class Handle_TColgp_HSequenceOfDir : public Handle_MMgt_TShared {
    public:

        %feature("autodoc", "1");
        Handle_TColgp_HSequenceOfDir();
        %feature("autodoc", "1");
        Handle_TColgp_HSequenceOfDir(Handle_TColgp_HSequenceOfDir const & aHandle);
        %feature("autodoc", "1");
        Handle_TColgp_HSequenceOfDir(TColgp_HSequenceOfDir const * anItem);
        %feature("autodoc", "1");
        Handle_TColgp_HSequenceOfDir const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TColgp_HSequenceOfDir::~Handle_TColgp_HSequenceOfDir {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TColgp_HSequenceOfDir {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TColgp_HSequenceOfDir {
    TColgp_HSequenceOfDir* GetObject() {
        return (TColgp_HSequenceOfDir*)$self->Access();
    }
};
   
%nodefaultctor Handle_TColgp_HSequenceOfDir2d;

class Handle_TColgp_HSequenceOfDir2d : public Handle_MMgt_TShared {
    public:

        %feature("autodoc", "1");
        Handle_TColgp_HSequenceOfDir2d();
        %feature("autodoc", "1");
        Handle_TColgp_HSequenceOfDir2d(Handle_TColgp_HSequenceOfDir2d const & aHandle);
        %feature("autodoc", "1");
        Handle_TColgp_HSequenceOfDir2d(TColgp_HSequenceOfDir2d const * anItem);
        %feature("autodoc", "1");
        Handle_TColgp_HSequenceOfDir2d const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TColgp_HSequenceOfDir2d::~Handle_TColgp_HSequenceOfDir2d {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TColgp_HSequenceOfDir2d {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TColgp_HSequenceOfDir2d {
    TColgp_HSequenceOfDir2d* GetObject() {
        return (TColgp_HSequenceOfDir2d*)$self->Access();
    }
};
   
%nodefaultctor Handle_TColgp_HSequenceOfPnt;

class Handle_TColgp_HSequenceOfPnt : public Handle_MMgt_TShared {
    public:

        %feature("autodoc", "1");
        Handle_TColgp_HSequenceOfPnt();
        %feature("autodoc", "1");
        Handle_TColgp_HSequenceOfPnt(Handle_TColgp_HSequenceOfPnt const & aHandle);
        %feature("autodoc", "1");
        Handle_TColgp_HSequenceOfPnt(TColgp_HSequenceOfPnt const * anItem);
        %feature("autodoc", "1");
        Handle_TColgp_HSequenceOfPnt const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TColgp_HSequenceOfPnt::~Handle_TColgp_HSequenceOfPnt {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TColgp_HSequenceOfPnt {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TColgp_HSequenceOfPnt {
    TColgp_HSequenceOfPnt* GetObject() {
        return (TColgp_HSequenceOfPnt*)$self->Access();
    }
};
   
%nodefaultctor Handle_TColgp_HSequenceOfPnt2d;

class Handle_TColgp_HSequenceOfPnt2d : public Handle_MMgt_TShared {
    public:

        %feature("autodoc", "1");
        Handle_TColgp_HSequenceOfPnt2d();
        %feature("autodoc", "1");
        Handle_TColgp_HSequenceOfPnt2d(Handle_TColgp_HSequenceOfPnt2d const & aHandle);
        %feature("autodoc", "1");
        Handle_TColgp_HSequenceOfPnt2d(TColgp_HSequenceOfPnt2d const * anItem);
        %feature("autodoc", "1");
        Handle_TColgp_HSequenceOfPnt2d const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TColgp_HSequenceOfPnt2d::~Handle_TColgp_HSequenceOfPnt2d {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TColgp_HSequenceOfPnt2d {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TColgp_HSequenceOfPnt2d {
    TColgp_HSequenceOfPnt2d* GetObject() {
        return (TColgp_HSequenceOfPnt2d*)$self->Access();
    }
};
   
%nodefaultctor Handle_TColgp_HSequenceOfVec;

class Handle_TColgp_HSequenceOfVec : public Handle_MMgt_TShared {
    public:

        %feature("autodoc", "1");
        Handle_TColgp_HSequenceOfVec();
        %feature("autodoc", "1");
        Handle_TColgp_HSequenceOfVec(Handle_TColgp_HSequenceOfVec const & aHandle);
        %feature("autodoc", "1");
        Handle_TColgp_HSequenceOfVec(TColgp_HSequenceOfVec const * anItem);
        %feature("autodoc", "1");
        Handle_TColgp_HSequenceOfVec const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TColgp_HSequenceOfVec::~Handle_TColgp_HSequenceOfVec {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TColgp_HSequenceOfVec {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TColgp_HSequenceOfVec {
    TColgp_HSequenceOfVec* GetObject() {
        return (TColgp_HSequenceOfVec*)$self->Access();
    }
};
   
%nodefaultctor Handle_TColgp_HSequenceOfVec2d;

class Handle_TColgp_HSequenceOfVec2d : public Handle_MMgt_TShared {
    public:

        %feature("autodoc", "1");
        Handle_TColgp_HSequenceOfVec2d();
        %feature("autodoc", "1");
        Handle_TColgp_HSequenceOfVec2d(Handle_TColgp_HSequenceOfVec2d const & aHandle);
        %feature("autodoc", "1");
        Handle_TColgp_HSequenceOfVec2d(TColgp_HSequenceOfVec2d const * anItem);
        %feature("autodoc", "1");
        Handle_TColgp_HSequenceOfVec2d const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TColgp_HSequenceOfVec2d::~Handle_TColgp_HSequenceOfVec2d {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TColgp_HSequenceOfVec2d {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TColgp_HSequenceOfVec2d {
    TColgp_HSequenceOfVec2d* GetObject() {
        return (TColgp_HSequenceOfVec2d*)$self->Access();
    }
};
   
%nodefaultctor Handle_TColgp_HSequenceOfXY;

class Handle_TColgp_HSequenceOfXY : public Handle_MMgt_TShared {
    public:

        %feature("autodoc", "1");
        Handle_TColgp_HSequenceOfXY();
        %feature("autodoc", "1");
        Handle_TColgp_HSequenceOfXY(Handle_TColgp_HSequenceOfXY const & aHandle);
        %feature("autodoc", "1");
        Handle_TColgp_HSequenceOfXY(TColgp_HSequenceOfXY const * anItem);
        %feature("autodoc", "1");
        Handle_TColgp_HSequenceOfXY const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TColgp_HSequenceOfXY::~Handle_TColgp_HSequenceOfXY {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TColgp_HSequenceOfXY {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TColgp_HSequenceOfXY {
    TColgp_HSequenceOfXY* GetObject() {
        return (TColgp_HSequenceOfXY*)$self->Access();
    }
};
   
%nodefaultctor Handle_TColgp_HSequenceOfXYZ;

class Handle_TColgp_HSequenceOfXYZ : public Handle_MMgt_TShared {
    public:

        %feature("autodoc", "1");
        Handle_TColgp_HSequenceOfXYZ();
        %feature("autodoc", "1");
        Handle_TColgp_HSequenceOfXYZ(Handle_TColgp_HSequenceOfXYZ const & aHandle);
        %feature("autodoc", "1");
        Handle_TColgp_HSequenceOfXYZ(TColgp_HSequenceOfXYZ const * anItem);
        %feature("autodoc", "1");
        Handle_TColgp_HSequenceOfXYZ const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TColgp_HSequenceOfXYZ::~Handle_TColgp_HSequenceOfXYZ {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TColgp_HSequenceOfXYZ {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TColgp_HSequenceOfXYZ {
    TColgp_HSequenceOfXYZ* GetObject() {
        return (TColgp_HSequenceOfXYZ*)$self->Access();
    }
};
   
%nodefaultctor Handle_TColgp_DataMapNodeOfDataMapOfIntegerCirc2d;

class Handle_TColgp_DataMapNodeOfDataMapOfIntegerCirc2d : public Handle_TCollection_MapNode {
    public:

        %feature("autodoc", "1");
        Handle_TColgp_DataMapNodeOfDataMapOfIntegerCirc2d();
        %feature("autodoc", "1");
        Handle_TColgp_DataMapNodeOfDataMapOfIntegerCirc2d(Handle_TColgp_DataMapNodeOfDataMapOfIntegerCirc2d const & aHandle);
        %feature("autodoc", "1");
        Handle_TColgp_DataMapNodeOfDataMapOfIntegerCirc2d(TColgp_DataMapNodeOfDataMapOfIntegerCirc2d const * anItem);
        %feature("autodoc", "1");
        Handle_TColgp_DataMapNodeOfDataMapOfIntegerCirc2d const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TColgp_DataMapNodeOfDataMapOfIntegerCirc2d::~Handle_TColgp_DataMapNodeOfDataMapOfIntegerCirc2d {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TColgp_DataMapNodeOfDataMapOfIntegerCirc2d {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TColgp_DataMapNodeOfDataMapOfIntegerCirc2d {
    TColgp_DataMapNodeOfDataMapOfIntegerCirc2d* GetObject() {
        return (TColgp_DataMapNodeOfDataMapOfIntegerCirc2d*)$self->Access();
    }
};
   
%nodefaultctor Handle_TColgp_SequenceNodeOfSequenceOfDir;

class Handle_TColgp_SequenceNodeOfSequenceOfDir : public Handle_TCollection_SeqNode {
    public:

        %feature("autodoc", "1");
        Handle_TColgp_SequenceNodeOfSequenceOfDir();
        %feature("autodoc", "1");
        Handle_TColgp_SequenceNodeOfSequenceOfDir(Handle_TColgp_SequenceNodeOfSequenceOfDir const & aHandle);
        %feature("autodoc", "1");
        Handle_TColgp_SequenceNodeOfSequenceOfDir(TColgp_SequenceNodeOfSequenceOfDir const * anItem);
        %feature("autodoc", "1");
        Handle_TColgp_SequenceNodeOfSequenceOfDir const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TColgp_SequenceNodeOfSequenceOfDir::~Handle_TColgp_SequenceNodeOfSequenceOfDir {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TColgp_SequenceNodeOfSequenceOfDir {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TColgp_SequenceNodeOfSequenceOfDir {
    TColgp_SequenceNodeOfSequenceOfDir* GetObject() {
        return (TColgp_SequenceNodeOfSequenceOfDir*)$self->Access();
    }
};
   
%nodefaultctor Handle_TColgp_SequenceNodeOfSequenceOfDir2d;

class Handle_TColgp_SequenceNodeOfSequenceOfDir2d : public Handle_TCollection_SeqNode {
    public:

        %feature("autodoc", "1");
        Handle_TColgp_SequenceNodeOfSequenceOfDir2d();
        %feature("autodoc", "1");
        Handle_TColgp_SequenceNodeOfSequenceOfDir2d(Handle_TColgp_SequenceNodeOfSequenceOfDir2d const & aHandle);
        %feature("autodoc", "1");
        Handle_TColgp_SequenceNodeOfSequenceOfDir2d(TColgp_SequenceNodeOfSequenceOfDir2d const * anItem);
        %feature("autodoc", "1");
        Handle_TColgp_SequenceNodeOfSequenceOfDir2d const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TColgp_SequenceNodeOfSequenceOfDir2d::~Handle_TColgp_SequenceNodeOfSequenceOfDir2d {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TColgp_SequenceNodeOfSequenceOfDir2d {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TColgp_SequenceNodeOfSequenceOfDir2d {
    TColgp_SequenceNodeOfSequenceOfDir2d* GetObject() {
        return (TColgp_SequenceNodeOfSequenceOfDir2d*)$self->Access();
    }
};
   
%nodefaultctor Handle_TColgp_SequenceNodeOfSequenceOfPnt;

class Handle_TColgp_SequenceNodeOfSequenceOfPnt : public Handle_TCollection_SeqNode {
    public:

        %feature("autodoc", "1");
        Handle_TColgp_SequenceNodeOfSequenceOfPnt();
        %feature("autodoc", "1");
        Handle_TColgp_SequenceNodeOfSequenceOfPnt(Handle_TColgp_SequenceNodeOfSequenceOfPnt const & aHandle);
        %feature("autodoc", "1");
        Handle_TColgp_SequenceNodeOfSequenceOfPnt(TColgp_SequenceNodeOfSequenceOfPnt const * anItem);
        %feature("autodoc", "1");
        Handle_TColgp_SequenceNodeOfSequenceOfPnt const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TColgp_SequenceNodeOfSequenceOfPnt::~Handle_TColgp_SequenceNodeOfSequenceOfPnt {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TColgp_SequenceNodeOfSequenceOfPnt {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TColgp_SequenceNodeOfSequenceOfPnt {
    TColgp_SequenceNodeOfSequenceOfPnt* GetObject() {
        return (TColgp_SequenceNodeOfSequenceOfPnt*)$self->Access();
    }
};
   
%nodefaultctor Handle_TColgp_SequenceNodeOfSequenceOfPnt2d;

class Handle_TColgp_SequenceNodeOfSequenceOfPnt2d : public Handle_TCollection_SeqNode {
    public:

        %feature("autodoc", "1");
        Handle_TColgp_SequenceNodeOfSequenceOfPnt2d();
        %feature("autodoc", "1");
        Handle_TColgp_SequenceNodeOfSequenceOfPnt2d(Handle_TColgp_SequenceNodeOfSequenceOfPnt2d const & aHandle);
        %feature("autodoc", "1");
        Handle_TColgp_SequenceNodeOfSequenceOfPnt2d(TColgp_SequenceNodeOfSequenceOfPnt2d const * anItem);
        %feature("autodoc", "1");
        Handle_TColgp_SequenceNodeOfSequenceOfPnt2d const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TColgp_SequenceNodeOfSequenceOfPnt2d::~Handle_TColgp_SequenceNodeOfSequenceOfPnt2d {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TColgp_SequenceNodeOfSequenceOfPnt2d {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TColgp_SequenceNodeOfSequenceOfPnt2d {
    TColgp_SequenceNodeOfSequenceOfPnt2d* GetObject() {
        return (TColgp_SequenceNodeOfSequenceOfPnt2d*)$self->Access();
    }
};
   
%nodefaultctor Handle_TColgp_SequenceNodeOfSequenceOfVec;

class Handle_TColgp_SequenceNodeOfSequenceOfVec : public Handle_TCollection_SeqNode {
    public:

        %feature("autodoc", "1");
        Handle_TColgp_SequenceNodeOfSequenceOfVec();
        %feature("autodoc", "1");
        Handle_TColgp_SequenceNodeOfSequenceOfVec(Handle_TColgp_SequenceNodeOfSequenceOfVec const & aHandle);
        %feature("autodoc", "1");
        Handle_TColgp_SequenceNodeOfSequenceOfVec(TColgp_SequenceNodeOfSequenceOfVec const * anItem);
        %feature("autodoc", "1");
        Handle_TColgp_SequenceNodeOfSequenceOfVec const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TColgp_SequenceNodeOfSequenceOfVec::~Handle_TColgp_SequenceNodeOfSequenceOfVec {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TColgp_SequenceNodeOfSequenceOfVec {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TColgp_SequenceNodeOfSequenceOfVec {
    TColgp_SequenceNodeOfSequenceOfVec* GetObject() {
        return (TColgp_SequenceNodeOfSequenceOfVec*)$self->Access();
    }
};
   
%nodefaultctor Handle_TColgp_SequenceNodeOfSequenceOfVec2d;

class Handle_TColgp_SequenceNodeOfSequenceOfVec2d : public Handle_TCollection_SeqNode {
    public:

        %feature("autodoc", "1");
        Handle_TColgp_SequenceNodeOfSequenceOfVec2d();
        %feature("autodoc", "1");
        Handle_TColgp_SequenceNodeOfSequenceOfVec2d(Handle_TColgp_SequenceNodeOfSequenceOfVec2d const & aHandle);
        %feature("autodoc", "1");
        Handle_TColgp_SequenceNodeOfSequenceOfVec2d(TColgp_SequenceNodeOfSequenceOfVec2d const * anItem);
        %feature("autodoc", "1");
        Handle_TColgp_SequenceNodeOfSequenceOfVec2d const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TColgp_SequenceNodeOfSequenceOfVec2d::~Handle_TColgp_SequenceNodeOfSequenceOfVec2d {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TColgp_SequenceNodeOfSequenceOfVec2d {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TColgp_SequenceNodeOfSequenceOfVec2d {
    TColgp_SequenceNodeOfSequenceOfVec2d* GetObject() {
        return (TColgp_SequenceNodeOfSequenceOfVec2d*)$self->Access();
    }
};
   
%nodefaultctor Handle_TColgp_SequenceNodeOfSequenceOfXY;

class Handle_TColgp_SequenceNodeOfSequenceOfXY : public Handle_TCollection_SeqNode {
    public:

        %feature("autodoc", "1");
        Handle_TColgp_SequenceNodeOfSequenceOfXY();
        %feature("autodoc", "1");
        Handle_TColgp_SequenceNodeOfSequenceOfXY(Handle_TColgp_SequenceNodeOfSequenceOfXY const & aHandle);
        %feature("autodoc", "1");
        Handle_TColgp_SequenceNodeOfSequenceOfXY(TColgp_SequenceNodeOfSequenceOfXY const * anItem);
        %feature("autodoc", "1");
        Handle_TColgp_SequenceNodeOfSequenceOfXY const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TColgp_SequenceNodeOfSequenceOfXY::~Handle_TColgp_SequenceNodeOfSequenceOfXY {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TColgp_SequenceNodeOfSequenceOfXY {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TColgp_SequenceNodeOfSequenceOfXY {
    TColgp_SequenceNodeOfSequenceOfXY* GetObject() {
        return (TColgp_SequenceNodeOfSequenceOfXY*)$self->Access();
    }
};
   
%nodefaultctor Handle_TColgp_SequenceNodeOfSequenceOfXYZ;

class Handle_TColgp_SequenceNodeOfSequenceOfXYZ : public Handle_TCollection_SeqNode {
    public:

        %feature("autodoc", "1");
        Handle_TColgp_SequenceNodeOfSequenceOfXYZ();
        %feature("autodoc", "1");
        Handle_TColgp_SequenceNodeOfSequenceOfXYZ(Handle_TColgp_SequenceNodeOfSequenceOfXYZ const & aHandle);
        %feature("autodoc", "1");
        Handle_TColgp_SequenceNodeOfSequenceOfXYZ(TColgp_SequenceNodeOfSequenceOfXYZ const * anItem);
        %feature("autodoc", "1");
        Handle_TColgp_SequenceNodeOfSequenceOfXYZ const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_TColgp_SequenceNodeOfSequenceOfXYZ::~Handle_TColgp_SequenceNodeOfSequenceOfXYZ {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_TColgp_SequenceNodeOfSequenceOfXYZ {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_TColgp_SequenceNodeOfSequenceOfXYZ {
    TColgp_SequenceNodeOfSequenceOfXYZ* GetObject() {
        return (TColgp_SequenceNodeOfSequenceOfXYZ*)$self->Access();
    }
};
   
%nodefaultctor TColgp_HArray1OfCirc2d;

class TColgp_HArray1OfCirc2d : public MMgt_TShared {
    public:

        %feature("autodoc", "1");
        TColgp_HArray1OfCirc2d(Standard_Integer const Low, Standard_Integer const Up);
        %feature("autodoc", "1");
        TColgp_HArray1OfCirc2d(Standard_Integer const Low, Standard_Integer const Up, gp_Circ2d const & V);
        %feature("autodoc", "1");
        void Init(gp_Circ2d const & V);
        %feature("autodoc", "1");
        Standard_Integer Length() const;
        %feature("autodoc", "1");
        Standard_Integer Lower() const;
        %feature("autodoc", "1");
        Standard_Integer Upper() const;
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const Index, gp_Circ2d const & Value);
        %feature("autodoc", "1");
        gp_Circ2d const & Value(Standard_Integer const Index) const;
        %feature("autodoc", "1");
        gp_Circ2d & ChangeValue(Standard_Integer const Index);
        %feature("autodoc", "1");
        TColgp_Array1OfCirc2d const & Array1() const;
        %feature("autodoc", "1");
        TColgp_Array1OfCirc2d & ChangeArray1();
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: TColgp_Array1OfCirc2d myArray
//Get: None
//Set: None
%feature("shadow") TColgp_HArray1OfCirc2d::~TColgp_HArray1OfCirc2d {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColgp_HArray1OfCirc2d {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColgp_HArray1OfCirc2d {
    Handle_TColgp_HArray1OfCirc2d* GetHandle(){
        return (Handle_TColgp_HArray1OfCirc2d*)$self;
    }
};
   
%nodefaultctor TColgp_HArray1OfDir;

class TColgp_HArray1OfDir : public MMgt_TShared {
    public:

        %feature("autodoc", "1");
        TColgp_HArray1OfDir(Standard_Integer const Low, Standard_Integer const Up);
        %feature("autodoc", "1");
        TColgp_HArray1OfDir(Standard_Integer const Low, Standard_Integer const Up, gp_Dir const & V);
        %feature("autodoc", "1");
        void Init(gp_Dir const & V);
        %feature("autodoc", "1");
        Standard_Integer Length() const;
        %feature("autodoc", "1");
        Standard_Integer Lower() const;
        %feature("autodoc", "1");
        Standard_Integer Upper() const;
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const Index, gp_Dir const & Value);
        %feature("autodoc", "1");
        gp_Dir const & Value(Standard_Integer const Index) const;
        %feature("autodoc", "1");
        gp_Dir & ChangeValue(Standard_Integer const Index);
        %feature("autodoc", "1");
        TColgp_Array1OfDir const & Array1() const;
        %feature("autodoc", "1");
        TColgp_Array1OfDir & ChangeArray1();
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: TColgp_Array1OfDir myArray
//Get: None
//Set: None
%feature("shadow") TColgp_HArray1OfDir::~TColgp_HArray1OfDir {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColgp_HArray1OfDir {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColgp_HArray1OfDir {
    Handle_TColgp_HArray1OfDir* GetHandle(){
        return (Handle_TColgp_HArray1OfDir*)$self;
    }
};
   
%nodefaultctor TColgp_HArray1OfDir2d;

class TColgp_HArray1OfDir2d : public MMgt_TShared {
    public:

        %feature("autodoc", "1");
        TColgp_HArray1OfDir2d(Standard_Integer const Low, Standard_Integer const Up);
        %feature("autodoc", "1");
        TColgp_HArray1OfDir2d(Standard_Integer const Low, Standard_Integer const Up, gp_Dir2d const & V);
        %feature("autodoc", "1");
        void Init(gp_Dir2d const & V);
        %feature("autodoc", "1");
        Standard_Integer Length() const;
        %feature("autodoc", "1");
        Standard_Integer Lower() const;
        %feature("autodoc", "1");
        Standard_Integer Upper() const;
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const Index, gp_Dir2d const & Value);
        %feature("autodoc", "1");
        gp_Dir2d const & Value(Standard_Integer const Index) const;
        %feature("autodoc", "1");
        gp_Dir2d & ChangeValue(Standard_Integer const Index);
        %feature("autodoc", "1");
        TColgp_Array1OfDir2d const & Array1() const;
        %feature("autodoc", "1");
        TColgp_Array1OfDir2d & ChangeArray1();
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: TColgp_Array1OfDir2d myArray
//Get: None
//Set: None
%feature("shadow") TColgp_HArray1OfDir2d::~TColgp_HArray1OfDir2d {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColgp_HArray1OfDir2d {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColgp_HArray1OfDir2d {
    Handle_TColgp_HArray1OfDir2d* GetHandle(){
        return (Handle_TColgp_HArray1OfDir2d*)$self;
    }
};
   
%nodefaultctor TColgp_HArray1OfLin2d;

class TColgp_HArray1OfLin2d : public MMgt_TShared {
    public:

        %feature("autodoc", "1");
        TColgp_HArray1OfLin2d(Standard_Integer const Low, Standard_Integer const Up);
        %feature("autodoc", "1");
        TColgp_HArray1OfLin2d(Standard_Integer const Low, Standard_Integer const Up, gp_Lin2d const & V);
        %feature("autodoc", "1");
        void Init(gp_Lin2d const & V);
        %feature("autodoc", "1");
        Standard_Integer Length() const;
        %feature("autodoc", "1");
        Standard_Integer Lower() const;
        %feature("autodoc", "1");
        Standard_Integer Upper() const;
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const Index, gp_Lin2d const & Value);
        %feature("autodoc", "1");
        gp_Lin2d const & Value(Standard_Integer const Index) const;
        %feature("autodoc", "1");
        gp_Lin2d & ChangeValue(Standard_Integer const Index);
        %feature("autodoc", "1");
        TColgp_Array1OfLin2d const & Array1() const;
        %feature("autodoc", "1");
        TColgp_Array1OfLin2d & ChangeArray1();
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: TColgp_Array1OfLin2d myArray
//Get: None
//Set: None
%feature("shadow") TColgp_HArray1OfLin2d::~TColgp_HArray1OfLin2d {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColgp_HArray1OfLin2d {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColgp_HArray1OfLin2d {
    Handle_TColgp_HArray1OfLin2d* GetHandle(){
        return (Handle_TColgp_HArray1OfLin2d*)$self;
    }
};
   
%nodefaultctor TColgp_HArray1OfPnt;

class TColgp_HArray1OfPnt : public MMgt_TShared {
    public:

        %feature("autodoc", "1");
        TColgp_HArray1OfPnt(Standard_Integer const Low, Standard_Integer const Up);
        %feature("autodoc", "1");
        TColgp_HArray1OfPnt(Standard_Integer const Low, Standard_Integer const Up, gp_Pnt const & V);
        %feature("autodoc", "1");
        void Init(gp_Pnt const & V);
        %feature("autodoc", "1");
        Standard_Integer Length() const;
        %feature("autodoc", "1");
        Standard_Integer Lower() const;
        %feature("autodoc", "1");
        Standard_Integer Upper() const;
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const Index, gp_Pnt const & Value);
        %feature("autodoc", "1");
        gp_Pnt const & Value(Standard_Integer const Index) const;
        %feature("autodoc", "1");
        gp_Pnt & ChangeValue(Standard_Integer const Index);
        %feature("autodoc", "1");
        TColgp_Array1OfPnt const & Array1() const;
        %feature("autodoc", "1");
        TColgp_Array1OfPnt & ChangeArray1();
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: TColgp_Array1OfPnt myArray
//Get: None
//Set: None
%feature("shadow") TColgp_HArray1OfPnt::~TColgp_HArray1OfPnt {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColgp_HArray1OfPnt {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColgp_HArray1OfPnt {
    Handle_TColgp_HArray1OfPnt* GetHandle(){
        return (Handle_TColgp_HArray1OfPnt*)$self;
    }
};
   
%nodefaultctor TColgp_HArray1OfPnt2d;

class TColgp_HArray1OfPnt2d : public MMgt_TShared {
    public:

        %feature("autodoc", "1");
        TColgp_HArray1OfPnt2d(Standard_Integer const Low, Standard_Integer const Up);
        %feature("autodoc", "1");
        TColgp_HArray1OfPnt2d(Standard_Integer const Low, Standard_Integer const Up, gp_Pnt2d const & V);
        %feature("autodoc", "1");
        void Init(gp_Pnt2d const & V);
        %feature("autodoc", "1");
        Standard_Integer Length() const;
        %feature("autodoc", "1");
        Standard_Integer Lower() const;
        %feature("autodoc", "1");
        Standard_Integer Upper() const;
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const Index, gp_Pnt2d const & Value);
        %feature("autodoc", "1");
        gp_Pnt2d const & Value(Standard_Integer const Index) const;
        %feature("autodoc", "1");
        gp_Pnt2d & ChangeValue(Standard_Integer const Index);
        %feature("autodoc", "1");
        TColgp_Array1OfPnt2d const & Array1() const;
        %feature("autodoc", "1");
        TColgp_Array1OfPnt2d & ChangeArray1();
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: TColgp_Array1OfPnt2d myArray
//Get: None
//Set: None
%feature("shadow") TColgp_HArray1OfPnt2d::~TColgp_HArray1OfPnt2d {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColgp_HArray1OfPnt2d {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColgp_HArray1OfPnt2d {
    Handle_TColgp_HArray1OfPnt2d* GetHandle(){
        return (Handle_TColgp_HArray1OfPnt2d*)$self;
    }
};
   
%nodefaultctor TColgp_HArray1OfVec;

class TColgp_HArray1OfVec : public MMgt_TShared {
    public:

        %feature("autodoc", "1");
        TColgp_HArray1OfVec(Standard_Integer const Low, Standard_Integer const Up);
        %feature("autodoc", "1");
        TColgp_HArray1OfVec(Standard_Integer const Low, Standard_Integer const Up, gp_Vec const & V);
        %feature("autodoc", "1");
        void Init(gp_Vec const & V);
        %feature("autodoc", "1");
        Standard_Integer Length() const;
        %feature("autodoc", "1");
        Standard_Integer Lower() const;
        %feature("autodoc", "1");
        Standard_Integer Upper() const;
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const Index, gp_Vec const & Value);
        %feature("autodoc", "1");
        gp_Vec const & Value(Standard_Integer const Index) const;
        %feature("autodoc", "1");
        gp_Vec & ChangeValue(Standard_Integer const Index);
        %feature("autodoc", "1");
        TColgp_Array1OfVec const & Array1() const;
        %feature("autodoc", "1");
        TColgp_Array1OfVec & ChangeArray1();
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: TColgp_Array1OfVec myArray
//Get: None
//Set: None
%feature("shadow") TColgp_HArray1OfVec::~TColgp_HArray1OfVec {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColgp_HArray1OfVec {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColgp_HArray1OfVec {
    Handle_TColgp_HArray1OfVec* GetHandle(){
        return (Handle_TColgp_HArray1OfVec*)$self;
    }
};
   
%nodefaultctor TColgp_HArray1OfVec2d;

class TColgp_HArray1OfVec2d : public MMgt_TShared {
    public:

        %feature("autodoc", "1");
        TColgp_HArray1OfVec2d(Standard_Integer const Low, Standard_Integer const Up);
        %feature("autodoc", "1");
        TColgp_HArray1OfVec2d(Standard_Integer const Low, Standard_Integer const Up, gp_Vec2d const & V);
        %feature("autodoc", "1");
        void Init(gp_Vec2d const & V);
        %feature("autodoc", "1");
        Standard_Integer Length() const;
        %feature("autodoc", "1");
        Standard_Integer Lower() const;
        %feature("autodoc", "1");
        Standard_Integer Upper() const;
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const Index, gp_Vec2d const & Value);
        %feature("autodoc", "1");
        gp_Vec2d const & Value(Standard_Integer const Index) const;
        %feature("autodoc", "1");
        gp_Vec2d & ChangeValue(Standard_Integer const Index);
        %feature("autodoc", "1");
        TColgp_Array1OfVec2d const & Array1() const;
        %feature("autodoc", "1");
        TColgp_Array1OfVec2d & ChangeArray1();
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: TColgp_Array1OfVec2d myArray
//Get: None
//Set: None
%feature("shadow") TColgp_HArray1OfVec2d::~TColgp_HArray1OfVec2d {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColgp_HArray1OfVec2d {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColgp_HArray1OfVec2d {
    Handle_TColgp_HArray1OfVec2d* GetHandle(){
        return (Handle_TColgp_HArray1OfVec2d*)$self;
    }
};
   
%nodefaultctor TColgp_HArray1OfXY;

class TColgp_HArray1OfXY : public MMgt_TShared {
    public:

        %feature("autodoc", "1");
        TColgp_HArray1OfXY(Standard_Integer const Low, Standard_Integer const Up);
        %feature("autodoc", "1");
        TColgp_HArray1OfXY(Standard_Integer const Low, Standard_Integer const Up, gp_XY const & V);
        %feature("autodoc", "1");
        void Init(gp_XY const & V);
        %feature("autodoc", "1");
        Standard_Integer Length() const;
        %feature("autodoc", "1");
        Standard_Integer Lower() const;
        %feature("autodoc", "1");
        Standard_Integer Upper() const;
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const Index, gp_XY const & Value);
        %feature("autodoc", "1");
        gp_XY const & Value(Standard_Integer const Index) const;
        %feature("autodoc", "1");
        gp_XY & ChangeValue(Standard_Integer const Index);
        %feature("autodoc", "1");
        TColgp_Array1OfXY const & Array1() const;
        %feature("autodoc", "1");
        TColgp_Array1OfXY & ChangeArray1();
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: TColgp_Array1OfXY myArray
//Get: None
//Set: None
%feature("shadow") TColgp_HArray1OfXY::~TColgp_HArray1OfXY {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColgp_HArray1OfXY {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColgp_HArray1OfXY {
    Handle_TColgp_HArray1OfXY* GetHandle(){
        return (Handle_TColgp_HArray1OfXY*)$self;
    }
};
   
%nodefaultctor TColgp_HArray1OfXYZ;

class TColgp_HArray1OfXYZ : public MMgt_TShared {
    public:

        %feature("autodoc", "1");
        TColgp_HArray1OfXYZ(Standard_Integer const Low, Standard_Integer const Up);
        %feature("autodoc", "1");
        TColgp_HArray1OfXYZ(Standard_Integer const Low, Standard_Integer const Up, gp_XYZ const & V);
        %feature("autodoc", "1");
        void Init(gp_XYZ const & V);
        %feature("autodoc", "1");
        Standard_Integer Length() const;
        %feature("autodoc", "1");
        Standard_Integer Lower() const;
        %feature("autodoc", "1");
        Standard_Integer Upper() const;
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const Index, gp_XYZ const & Value);
        %feature("autodoc", "1");
        gp_XYZ const & Value(Standard_Integer const Index) const;
        %feature("autodoc", "1");
        gp_XYZ & ChangeValue(Standard_Integer const Index);
        %feature("autodoc", "1");
        TColgp_Array1OfXYZ const & Array1() const;
        %feature("autodoc", "1");
        TColgp_Array1OfXYZ & ChangeArray1();
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: TColgp_Array1OfXYZ myArray
//Get: None
//Set: None
%feature("shadow") TColgp_HArray1OfXYZ::~TColgp_HArray1OfXYZ {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColgp_HArray1OfXYZ {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColgp_HArray1OfXYZ {
    Handle_TColgp_HArray1OfXYZ* GetHandle(){
        return (Handle_TColgp_HArray1OfXYZ*)$self;
    }
};
   
%nodefaultctor TColgp_HArray2OfCirc2d;

class TColgp_HArray2OfCirc2d : public MMgt_TShared {
    public:

        %feature("autodoc", "1");
        TColgp_HArray2OfCirc2d(Standard_Integer const R1, Standard_Integer const R2, Standard_Integer const C1, Standard_Integer const C2);
        %feature("autodoc", "1");
        TColgp_HArray2OfCirc2d(Standard_Integer const R1, Standard_Integer const R2, Standard_Integer const C1, Standard_Integer const C2, gp_Circ2d const & V);
        %feature("autodoc", "1");
        void Init(gp_Circ2d const & V);
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
        void SetValue(Standard_Integer const Row, Standard_Integer const Col, gp_Circ2d const & Value);
        %feature("autodoc", "1");
        gp_Circ2d const & Value(Standard_Integer const Row, Standard_Integer const Col) const;
        %feature("autodoc", "1");
        gp_Circ2d & ChangeValue(Standard_Integer const Row, Standard_Integer const Col);
        %feature("autodoc", "1");
        TColgp_Array2OfCirc2d const & Array2() const;
        %feature("autodoc", "1");
        TColgp_Array2OfCirc2d & ChangeArray2();
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: TColgp_Array2OfCirc2d myArray
//Get: None
//Set: None
%feature("shadow") TColgp_HArray2OfCirc2d::~TColgp_HArray2OfCirc2d {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColgp_HArray2OfCirc2d {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColgp_HArray2OfCirc2d {
    Handle_TColgp_HArray2OfCirc2d* GetHandle(){
        return (Handle_TColgp_HArray2OfCirc2d*)$self;
    }
};
   
%nodefaultctor TColgp_HArray2OfDir;

class TColgp_HArray2OfDir : public MMgt_TShared {
    public:

        %feature("autodoc", "1");
        TColgp_HArray2OfDir(Standard_Integer const R1, Standard_Integer const R2, Standard_Integer const C1, Standard_Integer const C2);
        %feature("autodoc", "1");
        TColgp_HArray2OfDir(Standard_Integer const R1, Standard_Integer const R2, Standard_Integer const C1, Standard_Integer const C2, gp_Dir const & V);
        %feature("autodoc", "1");
        void Init(gp_Dir const & V);
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
        void SetValue(Standard_Integer const Row, Standard_Integer const Col, gp_Dir const & Value);
        %feature("autodoc", "1");
        gp_Dir const & Value(Standard_Integer const Row, Standard_Integer const Col) const;
        %feature("autodoc", "1");
        gp_Dir & ChangeValue(Standard_Integer const Row, Standard_Integer const Col);
        %feature("autodoc", "1");
        TColgp_Array2OfDir const & Array2() const;
        %feature("autodoc", "1");
        TColgp_Array2OfDir & ChangeArray2();
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: TColgp_Array2OfDir myArray
//Get: None
//Set: None
%feature("shadow") TColgp_HArray2OfDir::~TColgp_HArray2OfDir {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColgp_HArray2OfDir {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColgp_HArray2OfDir {
    Handle_TColgp_HArray2OfDir* GetHandle(){
        return (Handle_TColgp_HArray2OfDir*)$self;
    }
};
   
%nodefaultctor TColgp_HArray2OfDir2d;

class TColgp_HArray2OfDir2d : public MMgt_TShared {
    public:

        %feature("autodoc", "1");
        TColgp_HArray2OfDir2d(Standard_Integer const R1, Standard_Integer const R2, Standard_Integer const C1, Standard_Integer const C2);
        %feature("autodoc", "1");
        TColgp_HArray2OfDir2d(Standard_Integer const R1, Standard_Integer const R2, Standard_Integer const C1, Standard_Integer const C2, gp_Dir2d const & V);
        %feature("autodoc", "1");
        void Init(gp_Dir2d const & V);
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
        void SetValue(Standard_Integer const Row, Standard_Integer const Col, gp_Dir2d const & Value);
        %feature("autodoc", "1");
        gp_Dir2d const & Value(Standard_Integer const Row, Standard_Integer const Col) const;
        %feature("autodoc", "1");
        gp_Dir2d & ChangeValue(Standard_Integer const Row, Standard_Integer const Col);
        %feature("autodoc", "1");
        TColgp_Array2OfDir2d const & Array2() const;
        %feature("autodoc", "1");
        TColgp_Array2OfDir2d & ChangeArray2();
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: TColgp_Array2OfDir2d myArray
//Get: None
//Set: None
%feature("shadow") TColgp_HArray2OfDir2d::~TColgp_HArray2OfDir2d {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColgp_HArray2OfDir2d {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColgp_HArray2OfDir2d {
    Handle_TColgp_HArray2OfDir2d* GetHandle(){
        return (Handle_TColgp_HArray2OfDir2d*)$self;
    }
};
   
%nodefaultctor TColgp_HArray2OfLin2d;

class TColgp_HArray2OfLin2d : public MMgt_TShared {
    public:

        %feature("autodoc", "1");
        TColgp_HArray2OfLin2d(Standard_Integer const R1, Standard_Integer const R2, Standard_Integer const C1, Standard_Integer const C2);
        %feature("autodoc", "1");
        TColgp_HArray2OfLin2d(Standard_Integer const R1, Standard_Integer const R2, Standard_Integer const C1, Standard_Integer const C2, gp_Lin2d const & V);
        %feature("autodoc", "1");
        void Init(gp_Lin2d const & V);
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
        void SetValue(Standard_Integer const Row, Standard_Integer const Col, gp_Lin2d const & Value);
        %feature("autodoc", "1");
        gp_Lin2d const & Value(Standard_Integer const Row, Standard_Integer const Col) const;
        %feature("autodoc", "1");
        gp_Lin2d & ChangeValue(Standard_Integer const Row, Standard_Integer const Col);
        %feature("autodoc", "1");
        TColgp_Array2OfLin2d const & Array2() const;
        %feature("autodoc", "1");
        TColgp_Array2OfLin2d & ChangeArray2();
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: TColgp_Array2OfLin2d myArray
//Get: None
//Set: None
%feature("shadow") TColgp_HArray2OfLin2d::~TColgp_HArray2OfLin2d {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColgp_HArray2OfLin2d {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColgp_HArray2OfLin2d {
    Handle_TColgp_HArray2OfLin2d* GetHandle(){
        return (Handle_TColgp_HArray2OfLin2d*)$self;
    }
};
   
%nodefaultctor TColgp_HArray2OfPnt;

class TColgp_HArray2OfPnt : public MMgt_TShared {
    public:

        %feature("autodoc", "1");
        TColgp_HArray2OfPnt(Standard_Integer const R1, Standard_Integer const R2, Standard_Integer const C1, Standard_Integer const C2);
        %feature("autodoc", "1");
        TColgp_HArray2OfPnt(Standard_Integer const R1, Standard_Integer const R2, Standard_Integer const C1, Standard_Integer const C2, gp_Pnt const & V);
        %feature("autodoc", "1");
        void Init(gp_Pnt const & V);
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
        void SetValue(Standard_Integer const Row, Standard_Integer const Col, gp_Pnt const & Value);
        %feature("autodoc", "1");
        gp_Pnt const & Value(Standard_Integer const Row, Standard_Integer const Col) const;
        %feature("autodoc", "1");
        gp_Pnt & ChangeValue(Standard_Integer const Row, Standard_Integer const Col);
        %feature("autodoc", "1");
        TColgp_Array2OfPnt const & Array2() const;
        %feature("autodoc", "1");
        TColgp_Array2OfPnt & ChangeArray2();
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: TColgp_Array2OfPnt myArray
//Get: None
//Set: None
%feature("shadow") TColgp_HArray2OfPnt::~TColgp_HArray2OfPnt {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColgp_HArray2OfPnt {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColgp_HArray2OfPnt {
    Handle_TColgp_HArray2OfPnt* GetHandle(){
        return (Handle_TColgp_HArray2OfPnt*)$self;
    }
};
   
%nodefaultctor TColgp_HArray2OfPnt2d;

class TColgp_HArray2OfPnt2d : public MMgt_TShared {
    public:

        %feature("autodoc", "1");
        TColgp_HArray2OfPnt2d(Standard_Integer const R1, Standard_Integer const R2, Standard_Integer const C1, Standard_Integer const C2);
        %feature("autodoc", "1");
        TColgp_HArray2OfPnt2d(Standard_Integer const R1, Standard_Integer const R2, Standard_Integer const C1, Standard_Integer const C2, gp_Pnt2d const & V);
        %feature("autodoc", "1");
        void Init(gp_Pnt2d const & V);
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
        void SetValue(Standard_Integer const Row, Standard_Integer const Col, gp_Pnt2d const & Value);
        %feature("autodoc", "1");
        gp_Pnt2d const & Value(Standard_Integer const Row, Standard_Integer const Col) const;
        %feature("autodoc", "1");
        gp_Pnt2d & ChangeValue(Standard_Integer const Row, Standard_Integer const Col);
        %feature("autodoc", "1");
        TColgp_Array2OfPnt2d const & Array2() const;
        %feature("autodoc", "1");
        TColgp_Array2OfPnt2d & ChangeArray2();
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: TColgp_Array2OfPnt2d myArray
//Get: None
//Set: None
%feature("shadow") TColgp_HArray2OfPnt2d::~TColgp_HArray2OfPnt2d {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColgp_HArray2OfPnt2d {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColgp_HArray2OfPnt2d {
    Handle_TColgp_HArray2OfPnt2d* GetHandle(){
        return (Handle_TColgp_HArray2OfPnt2d*)$self;
    }
};
   
%nodefaultctor TColgp_HArray2OfVec;

class TColgp_HArray2OfVec : public MMgt_TShared {
    public:

        %feature("autodoc", "1");
        TColgp_HArray2OfVec(Standard_Integer const R1, Standard_Integer const R2, Standard_Integer const C1, Standard_Integer const C2);
        %feature("autodoc", "1");
        TColgp_HArray2OfVec(Standard_Integer const R1, Standard_Integer const R2, Standard_Integer const C1, Standard_Integer const C2, gp_Vec const & V);
        %feature("autodoc", "1");
        void Init(gp_Vec const & V);
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
        void SetValue(Standard_Integer const Row, Standard_Integer const Col, gp_Vec const & Value);
        %feature("autodoc", "1");
        gp_Vec const & Value(Standard_Integer const Row, Standard_Integer const Col) const;
        %feature("autodoc", "1");
        gp_Vec & ChangeValue(Standard_Integer const Row, Standard_Integer const Col);
        %feature("autodoc", "1");
        TColgp_Array2OfVec const & Array2() const;
        %feature("autodoc", "1");
        TColgp_Array2OfVec & ChangeArray2();
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: TColgp_Array2OfVec myArray
//Get: None
//Set: None
%feature("shadow") TColgp_HArray2OfVec::~TColgp_HArray2OfVec {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColgp_HArray2OfVec {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColgp_HArray2OfVec {
    Handle_TColgp_HArray2OfVec* GetHandle(){
        return (Handle_TColgp_HArray2OfVec*)$self;
    }
};
   
%nodefaultctor TColgp_HArray2OfVec2d;

class TColgp_HArray2OfVec2d : public MMgt_TShared {
    public:

        %feature("autodoc", "1");
        TColgp_HArray2OfVec2d(Standard_Integer const R1, Standard_Integer const R2, Standard_Integer const C1, Standard_Integer const C2);
        %feature("autodoc", "1");
        TColgp_HArray2OfVec2d(Standard_Integer const R1, Standard_Integer const R2, Standard_Integer const C1, Standard_Integer const C2, gp_Vec2d const & V);
        %feature("autodoc", "1");
        void Init(gp_Vec2d const & V);
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
        void SetValue(Standard_Integer const Row, Standard_Integer const Col, gp_Vec2d const & Value);
        %feature("autodoc", "1");
        gp_Vec2d const & Value(Standard_Integer const Row, Standard_Integer const Col) const;
        %feature("autodoc", "1");
        gp_Vec2d & ChangeValue(Standard_Integer const Row, Standard_Integer const Col);
        %feature("autodoc", "1");
        TColgp_Array2OfVec2d const & Array2() const;
        %feature("autodoc", "1");
        TColgp_Array2OfVec2d & ChangeArray2();
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: TColgp_Array2OfVec2d myArray
//Get: None
//Set: None
%feature("shadow") TColgp_HArray2OfVec2d::~TColgp_HArray2OfVec2d {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColgp_HArray2OfVec2d {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColgp_HArray2OfVec2d {
    Handle_TColgp_HArray2OfVec2d* GetHandle(){
        return (Handle_TColgp_HArray2OfVec2d*)$self;
    }
};
   
%nodefaultctor TColgp_HArray2OfXY;

class TColgp_HArray2OfXY : public MMgt_TShared {
    public:

        %feature("autodoc", "1");
        TColgp_HArray2OfXY(Standard_Integer const R1, Standard_Integer const R2, Standard_Integer const C1, Standard_Integer const C2);
        %feature("autodoc", "1");
        TColgp_HArray2OfXY(Standard_Integer const R1, Standard_Integer const R2, Standard_Integer const C1, Standard_Integer const C2, gp_XY const & V);
        %feature("autodoc", "1");
        void Init(gp_XY const & V);
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
        void SetValue(Standard_Integer const Row, Standard_Integer const Col, gp_XY const & Value);
        %feature("autodoc", "1");
        gp_XY const & Value(Standard_Integer const Row, Standard_Integer const Col) const;
        %feature("autodoc", "1");
        gp_XY & ChangeValue(Standard_Integer const Row, Standard_Integer const Col);
        %feature("autodoc", "1");
        TColgp_Array2OfXY const & Array2() const;
        %feature("autodoc", "1");
        TColgp_Array2OfXY & ChangeArray2();
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: TColgp_Array2OfXY myArray
//Get: None
//Set: None
%feature("shadow") TColgp_HArray2OfXY::~TColgp_HArray2OfXY {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColgp_HArray2OfXY {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColgp_HArray2OfXY {
    Handle_TColgp_HArray2OfXY* GetHandle(){
        return (Handle_TColgp_HArray2OfXY*)$self;
    }
};
   
%nodefaultctor TColgp_HArray2OfXYZ;

class TColgp_HArray2OfXYZ : public MMgt_TShared {
    public:

        %feature("autodoc", "1");
        TColgp_HArray2OfXYZ(Standard_Integer const R1, Standard_Integer const R2, Standard_Integer const C1, Standard_Integer const C2);
        %feature("autodoc", "1");
        TColgp_HArray2OfXYZ(Standard_Integer const R1, Standard_Integer const R2, Standard_Integer const C1, Standard_Integer const C2, gp_XYZ const & V);
        %feature("autodoc", "1");
        void Init(gp_XYZ const & V);
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
        void SetValue(Standard_Integer const Row, Standard_Integer const Col, gp_XYZ const & Value);
        %feature("autodoc", "1");
        gp_XYZ const & Value(Standard_Integer const Row, Standard_Integer const Col) const;
        %feature("autodoc", "1");
        gp_XYZ & ChangeValue(Standard_Integer const Row, Standard_Integer const Col);
        %feature("autodoc", "1");
        TColgp_Array2OfXYZ const & Array2() const;
        %feature("autodoc", "1");
        TColgp_Array2OfXYZ & ChangeArray2();
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: TColgp_Array2OfXYZ myArray
//Get: None
//Set: None
%feature("shadow") TColgp_HArray2OfXYZ::~TColgp_HArray2OfXYZ {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColgp_HArray2OfXYZ {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColgp_HArray2OfXYZ {
    Handle_TColgp_HArray2OfXYZ* GetHandle(){
        return (Handle_TColgp_HArray2OfXYZ*)$self;
    }
};
   
%nodefaultctor TColgp_HSequenceOfDir;

class TColgp_HSequenceOfDir : public MMgt_TShared {
    public:

        %feature("autodoc", "1");
        TColgp_HSequenceOfDir();
        %feature("autodoc", "1");
        Standard_Boolean IsEmpty() const;
        %feature("autodoc", "1");
        Standard_Integer Length() const;
        %feature("autodoc", "1");
        void Clear();
        %feature("autodoc", "1");
        void Append(gp_Dir const & anItem);
        %feature("autodoc", "1");
        void Append(Handle_TColgp_HSequenceOfDir const & aSequence);
        %feature("autodoc", "1");
        void Prepend(gp_Dir const & anItem);
        %feature("autodoc", "1");
        void Prepend(Handle_TColgp_HSequenceOfDir const & aSequence);
        %feature("autodoc", "1");
        void Reverse();
        %feature("autodoc", "1");
        void InsertBefore(Standard_Integer const anIndex, gp_Dir const & anItem);
        %feature("autodoc", "1");
        void InsertBefore(Standard_Integer const anIndex, Handle_TColgp_HSequenceOfDir const & aSequence);
        %feature("autodoc", "1");
        void InsertAfter(Standard_Integer const anIndex, gp_Dir const & anItem);
        %feature("autodoc", "1");
        void InsertAfter(Standard_Integer const anIndex, Handle_TColgp_HSequenceOfDir const & aSequence);
        %feature("autodoc", "1");
        void Exchange(Standard_Integer const anIndex, Standard_Integer const anOtherIndex);
        %feature("autodoc", "1");
        Handle_TColgp_HSequenceOfDir Split(Standard_Integer const anIndex);
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const anIndex, gp_Dir const & anItem);
        %feature("autodoc", "1");
        gp_Dir const & Value(Standard_Integer const anIndex) const;
        %feature("autodoc", "1");
        gp_Dir & ChangeValue(Standard_Integer const anIndex);
        %feature("autodoc", "1");
        void Remove(Standard_Integer const anIndex);
        %feature("autodoc", "1");
        void Remove(Standard_Integer const fromIndex, Standard_Integer const toIndex);
        %feature("autodoc", "1");
        TColgp_SequenceOfDir const & Sequence() const;
        %feature("autodoc", "1");
        TColgp_SequenceOfDir & ChangeSequence();
        %feature("autodoc", "1");
        Handle_TColgp_HSequenceOfDir ShallowCopy() const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: TColgp_SequenceOfDir mySequence
//Get: None
//Set: None
%feature("shadow") TColgp_HSequenceOfDir::~TColgp_HSequenceOfDir {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColgp_HSequenceOfDir {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColgp_HSequenceOfDir {
    Handle_TColgp_HSequenceOfDir* GetHandle(){
        return (Handle_TColgp_HSequenceOfDir*)$self;
    }
};
   
%nodefaultctor TColgp_HSequenceOfDir2d;

class TColgp_HSequenceOfDir2d : public MMgt_TShared {
    public:

        %feature("autodoc", "1");
        TColgp_HSequenceOfDir2d();
        %feature("autodoc", "1");
        Standard_Boolean IsEmpty() const;
        %feature("autodoc", "1");
        Standard_Integer Length() const;
        %feature("autodoc", "1");
        void Clear();
        %feature("autodoc", "1");
        void Append(gp_Dir2d const & anItem);
        %feature("autodoc", "1");
        void Append(Handle_TColgp_HSequenceOfDir2d const & aSequence);
        %feature("autodoc", "1");
        void Prepend(gp_Dir2d const & anItem);
        %feature("autodoc", "1");
        void Prepend(Handle_TColgp_HSequenceOfDir2d const & aSequence);
        %feature("autodoc", "1");
        void Reverse();
        %feature("autodoc", "1");
        void InsertBefore(Standard_Integer const anIndex, gp_Dir2d const & anItem);
        %feature("autodoc", "1");
        void InsertBefore(Standard_Integer const anIndex, Handle_TColgp_HSequenceOfDir2d const & aSequence);
        %feature("autodoc", "1");
        void InsertAfter(Standard_Integer const anIndex, gp_Dir2d const & anItem);
        %feature("autodoc", "1");
        void InsertAfter(Standard_Integer const anIndex, Handle_TColgp_HSequenceOfDir2d const & aSequence);
        %feature("autodoc", "1");
        void Exchange(Standard_Integer const anIndex, Standard_Integer const anOtherIndex);
        %feature("autodoc", "1");
        Handle_TColgp_HSequenceOfDir2d Split(Standard_Integer const anIndex);
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const anIndex, gp_Dir2d const & anItem);
        %feature("autodoc", "1");
        gp_Dir2d const & Value(Standard_Integer const anIndex) const;
        %feature("autodoc", "1");
        gp_Dir2d & ChangeValue(Standard_Integer const anIndex);
        %feature("autodoc", "1");
        void Remove(Standard_Integer const anIndex);
        %feature("autodoc", "1");
        void Remove(Standard_Integer const fromIndex, Standard_Integer const toIndex);
        %feature("autodoc", "1");
        TColgp_SequenceOfDir2d const & Sequence() const;
        %feature("autodoc", "1");
        TColgp_SequenceOfDir2d & ChangeSequence();
        %feature("autodoc", "1");
        Handle_TColgp_HSequenceOfDir2d ShallowCopy() const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: TColgp_SequenceOfDir2d mySequence
//Get: None
//Set: None
%feature("shadow") TColgp_HSequenceOfDir2d::~TColgp_HSequenceOfDir2d {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColgp_HSequenceOfDir2d {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColgp_HSequenceOfDir2d {
    Handle_TColgp_HSequenceOfDir2d* GetHandle(){
        return (Handle_TColgp_HSequenceOfDir2d*)$self;
    }
};
   
%nodefaultctor TColgp_HSequenceOfPnt;

class TColgp_HSequenceOfPnt : public MMgt_TShared {
    public:

        %feature("autodoc", "1");
        TColgp_HSequenceOfPnt();
        %feature("autodoc", "1");
        Standard_Boolean IsEmpty() const;
        %feature("autodoc", "1");
        Standard_Integer Length() const;
        %feature("autodoc", "1");
        void Clear();
        %feature("autodoc", "1");
        void Append(gp_Pnt const & anItem);
        %feature("autodoc", "1");
        void Append(Handle_TColgp_HSequenceOfPnt const & aSequence);
        %feature("autodoc", "1");
        void Prepend(gp_Pnt const & anItem);
        %feature("autodoc", "1");
        void Prepend(Handle_TColgp_HSequenceOfPnt const & aSequence);
        %feature("autodoc", "1");
        void Reverse();
        %feature("autodoc", "1");
        void InsertBefore(Standard_Integer const anIndex, gp_Pnt const & anItem);
        %feature("autodoc", "1");
        void InsertBefore(Standard_Integer const anIndex, Handle_TColgp_HSequenceOfPnt const & aSequence);
        %feature("autodoc", "1");
        void InsertAfter(Standard_Integer const anIndex, gp_Pnt const & anItem);
        %feature("autodoc", "1");
        void InsertAfter(Standard_Integer const anIndex, Handle_TColgp_HSequenceOfPnt const & aSequence);
        %feature("autodoc", "1");
        void Exchange(Standard_Integer const anIndex, Standard_Integer const anOtherIndex);
        %feature("autodoc", "1");
        Handle_TColgp_HSequenceOfPnt Split(Standard_Integer const anIndex);
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const anIndex, gp_Pnt const & anItem);
        %feature("autodoc", "1");
        gp_Pnt const & Value(Standard_Integer const anIndex) const;
        %feature("autodoc", "1");
        gp_Pnt & ChangeValue(Standard_Integer const anIndex);
        %feature("autodoc", "1");
        void Remove(Standard_Integer const anIndex);
        %feature("autodoc", "1");
        void Remove(Standard_Integer const fromIndex, Standard_Integer const toIndex);
        %feature("autodoc", "1");
        TColgp_SequenceOfPnt const & Sequence() const;
        %feature("autodoc", "1");
        TColgp_SequenceOfPnt & ChangeSequence();
        %feature("autodoc", "1");
        Handle_TColgp_HSequenceOfPnt ShallowCopy() const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: TColgp_SequenceOfPnt mySequence
//Get: None
//Set: None
%feature("shadow") TColgp_HSequenceOfPnt::~TColgp_HSequenceOfPnt {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColgp_HSequenceOfPnt {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColgp_HSequenceOfPnt {
    Handle_TColgp_HSequenceOfPnt* GetHandle(){
        return (Handle_TColgp_HSequenceOfPnt*)$self;
    }
};
   
%nodefaultctor TColgp_HSequenceOfPnt2d;

class TColgp_HSequenceOfPnt2d : public MMgt_TShared {
    public:

        %feature("autodoc", "1");
        TColgp_HSequenceOfPnt2d();
        %feature("autodoc", "1");
        Standard_Boolean IsEmpty() const;
        %feature("autodoc", "1");
        Standard_Integer Length() const;
        %feature("autodoc", "1");
        void Clear();
        %feature("autodoc", "1");
        void Append(gp_Pnt2d const & anItem);
        %feature("autodoc", "1");
        void Append(Handle_TColgp_HSequenceOfPnt2d const & aSequence);
        %feature("autodoc", "1");
        void Prepend(gp_Pnt2d const & anItem);
        %feature("autodoc", "1");
        void Prepend(Handle_TColgp_HSequenceOfPnt2d const & aSequence);
        %feature("autodoc", "1");
        void Reverse();
        %feature("autodoc", "1");
        void InsertBefore(Standard_Integer const anIndex, gp_Pnt2d const & anItem);
        %feature("autodoc", "1");
        void InsertBefore(Standard_Integer const anIndex, Handle_TColgp_HSequenceOfPnt2d const & aSequence);
        %feature("autodoc", "1");
        void InsertAfter(Standard_Integer const anIndex, gp_Pnt2d const & anItem);
        %feature("autodoc", "1");
        void InsertAfter(Standard_Integer const anIndex, Handle_TColgp_HSequenceOfPnt2d const & aSequence);
        %feature("autodoc", "1");
        void Exchange(Standard_Integer const anIndex, Standard_Integer const anOtherIndex);
        %feature("autodoc", "1");
        Handle_TColgp_HSequenceOfPnt2d Split(Standard_Integer const anIndex);
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const anIndex, gp_Pnt2d const & anItem);
        %feature("autodoc", "1");
        gp_Pnt2d const & Value(Standard_Integer const anIndex) const;
        %feature("autodoc", "1");
        gp_Pnt2d & ChangeValue(Standard_Integer const anIndex);
        %feature("autodoc", "1");
        void Remove(Standard_Integer const anIndex);
        %feature("autodoc", "1");
        void Remove(Standard_Integer const fromIndex, Standard_Integer const toIndex);
        %feature("autodoc", "1");
        TColgp_SequenceOfPnt2d const & Sequence() const;
        %feature("autodoc", "1");
        TColgp_SequenceOfPnt2d & ChangeSequence();
        %feature("autodoc", "1");
        Handle_TColgp_HSequenceOfPnt2d ShallowCopy() const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: TColgp_SequenceOfPnt2d mySequence
//Get: None
//Set: None
%feature("shadow") TColgp_HSequenceOfPnt2d::~TColgp_HSequenceOfPnt2d {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColgp_HSequenceOfPnt2d {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColgp_HSequenceOfPnt2d {
    Handle_TColgp_HSequenceOfPnt2d* GetHandle(){
        return (Handle_TColgp_HSequenceOfPnt2d*)$self;
    }
};
   
%nodefaultctor TColgp_HSequenceOfVec;

class TColgp_HSequenceOfVec : public MMgt_TShared {
    public:

        %feature("autodoc", "1");
        TColgp_HSequenceOfVec();
        %feature("autodoc", "1");
        Standard_Boolean IsEmpty() const;
        %feature("autodoc", "1");
        Standard_Integer Length() const;
        %feature("autodoc", "1");
        void Clear();
        %feature("autodoc", "1");
        void Append(gp_Vec const & anItem);
        %feature("autodoc", "1");
        void Append(Handle_TColgp_HSequenceOfVec const & aSequence);
        %feature("autodoc", "1");
        void Prepend(gp_Vec const & anItem);
        %feature("autodoc", "1");
        void Prepend(Handle_TColgp_HSequenceOfVec const & aSequence);
        %feature("autodoc", "1");
        void Reverse();
        %feature("autodoc", "1");
        void InsertBefore(Standard_Integer const anIndex, gp_Vec const & anItem);
        %feature("autodoc", "1");
        void InsertBefore(Standard_Integer const anIndex, Handle_TColgp_HSequenceOfVec const & aSequence);
        %feature("autodoc", "1");
        void InsertAfter(Standard_Integer const anIndex, gp_Vec const & anItem);
        %feature("autodoc", "1");
        void InsertAfter(Standard_Integer const anIndex, Handle_TColgp_HSequenceOfVec const & aSequence);
        %feature("autodoc", "1");
        void Exchange(Standard_Integer const anIndex, Standard_Integer const anOtherIndex);
        %feature("autodoc", "1");
        Handle_TColgp_HSequenceOfVec Split(Standard_Integer const anIndex);
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const anIndex, gp_Vec const & anItem);
        %feature("autodoc", "1");
        gp_Vec const & Value(Standard_Integer const anIndex) const;
        %feature("autodoc", "1");
        gp_Vec & ChangeValue(Standard_Integer const anIndex);
        %feature("autodoc", "1");
        void Remove(Standard_Integer const anIndex);
        %feature("autodoc", "1");
        void Remove(Standard_Integer const fromIndex, Standard_Integer const toIndex);
        %feature("autodoc", "1");
        TColgp_SequenceOfVec const & Sequence() const;
        %feature("autodoc", "1");
        TColgp_SequenceOfVec & ChangeSequence();
        %feature("autodoc", "1");
        Handle_TColgp_HSequenceOfVec ShallowCopy() const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: TColgp_SequenceOfVec mySequence
//Get: None
//Set: None
%feature("shadow") TColgp_HSequenceOfVec::~TColgp_HSequenceOfVec {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColgp_HSequenceOfVec {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColgp_HSequenceOfVec {
    Handle_TColgp_HSequenceOfVec* GetHandle(){
        return (Handle_TColgp_HSequenceOfVec*)$self;
    }
};
   
%nodefaultctor TColgp_HSequenceOfVec2d;

class TColgp_HSequenceOfVec2d : public MMgt_TShared {
    public:

        %feature("autodoc", "1");
        TColgp_HSequenceOfVec2d();
        %feature("autodoc", "1");
        Standard_Boolean IsEmpty() const;
        %feature("autodoc", "1");
        Standard_Integer Length() const;
        %feature("autodoc", "1");
        void Clear();
        %feature("autodoc", "1");
        void Append(gp_Vec2d const & anItem);
        %feature("autodoc", "1");
        void Append(Handle_TColgp_HSequenceOfVec2d const & aSequence);
        %feature("autodoc", "1");
        void Prepend(gp_Vec2d const & anItem);
        %feature("autodoc", "1");
        void Prepend(Handle_TColgp_HSequenceOfVec2d const & aSequence);
        %feature("autodoc", "1");
        void Reverse();
        %feature("autodoc", "1");
        void InsertBefore(Standard_Integer const anIndex, gp_Vec2d const & anItem);
        %feature("autodoc", "1");
        void InsertBefore(Standard_Integer const anIndex, Handle_TColgp_HSequenceOfVec2d const & aSequence);
        %feature("autodoc", "1");
        void InsertAfter(Standard_Integer const anIndex, gp_Vec2d const & anItem);
        %feature("autodoc", "1");
        void InsertAfter(Standard_Integer const anIndex, Handle_TColgp_HSequenceOfVec2d const & aSequence);
        %feature("autodoc", "1");
        void Exchange(Standard_Integer const anIndex, Standard_Integer const anOtherIndex);
        %feature("autodoc", "1");
        Handle_TColgp_HSequenceOfVec2d Split(Standard_Integer const anIndex);
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const anIndex, gp_Vec2d const & anItem);
        %feature("autodoc", "1");
        gp_Vec2d const & Value(Standard_Integer const anIndex) const;
        %feature("autodoc", "1");
        gp_Vec2d & ChangeValue(Standard_Integer const anIndex);
        %feature("autodoc", "1");
        void Remove(Standard_Integer const anIndex);
        %feature("autodoc", "1");
        void Remove(Standard_Integer const fromIndex, Standard_Integer const toIndex);
        %feature("autodoc", "1");
        TColgp_SequenceOfVec2d const & Sequence() const;
        %feature("autodoc", "1");
        TColgp_SequenceOfVec2d & ChangeSequence();
        %feature("autodoc", "1");
        Handle_TColgp_HSequenceOfVec2d ShallowCopy() const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: TColgp_SequenceOfVec2d mySequence
//Get: None
//Set: None
%feature("shadow") TColgp_HSequenceOfVec2d::~TColgp_HSequenceOfVec2d {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColgp_HSequenceOfVec2d {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColgp_HSequenceOfVec2d {
    Handle_TColgp_HSequenceOfVec2d* GetHandle(){
        return (Handle_TColgp_HSequenceOfVec2d*)$self;
    }
};
   
%nodefaultctor TColgp_HSequenceOfXY;

class TColgp_HSequenceOfXY : public MMgt_TShared {
    public:

        %feature("autodoc", "1");
        TColgp_HSequenceOfXY();
        %feature("autodoc", "1");
        Standard_Boolean IsEmpty() const;
        %feature("autodoc", "1");
        Standard_Integer Length() const;
        %feature("autodoc", "1");
        void Clear();
        %feature("autodoc", "1");
        void Append(gp_XY const & anItem);
        %feature("autodoc", "1");
        void Append(Handle_TColgp_HSequenceOfXY const & aSequence);
        %feature("autodoc", "1");
        void Prepend(gp_XY const & anItem);
        %feature("autodoc", "1");
        void Prepend(Handle_TColgp_HSequenceOfXY const & aSequence);
        %feature("autodoc", "1");
        void Reverse();
        %feature("autodoc", "1");
        void InsertBefore(Standard_Integer const anIndex, gp_XY const & anItem);
        %feature("autodoc", "1");
        void InsertBefore(Standard_Integer const anIndex, Handle_TColgp_HSequenceOfXY const & aSequence);
        %feature("autodoc", "1");
        void InsertAfter(Standard_Integer const anIndex, gp_XY const & anItem);
        %feature("autodoc", "1");
        void InsertAfter(Standard_Integer const anIndex, Handle_TColgp_HSequenceOfXY const & aSequence);
        %feature("autodoc", "1");
        void Exchange(Standard_Integer const anIndex, Standard_Integer const anOtherIndex);
        %feature("autodoc", "1");
        Handle_TColgp_HSequenceOfXY Split(Standard_Integer const anIndex);
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const anIndex, gp_XY const & anItem);
        %feature("autodoc", "1");
        gp_XY const & Value(Standard_Integer const anIndex) const;
        %feature("autodoc", "1");
        gp_XY & ChangeValue(Standard_Integer const anIndex);
        %feature("autodoc", "1");
        void Remove(Standard_Integer const anIndex);
        %feature("autodoc", "1");
        void Remove(Standard_Integer const fromIndex, Standard_Integer const toIndex);
        %feature("autodoc", "1");
        TColgp_SequenceOfXY const & Sequence() const;
        %feature("autodoc", "1");
        TColgp_SequenceOfXY & ChangeSequence();
        %feature("autodoc", "1");
        Handle_TColgp_HSequenceOfXY ShallowCopy() const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: TColgp_SequenceOfXY mySequence
//Get: None
//Set: None
%feature("shadow") TColgp_HSequenceOfXY::~TColgp_HSequenceOfXY {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColgp_HSequenceOfXY {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColgp_HSequenceOfXY {
    Handle_TColgp_HSequenceOfXY* GetHandle(){
        return (Handle_TColgp_HSequenceOfXY*)$self;
    }
};
   
%nodefaultctor TColgp_HSequenceOfXYZ;

class TColgp_HSequenceOfXYZ : public MMgt_TShared {
    public:

        %feature("autodoc", "1");
        TColgp_HSequenceOfXYZ();
        %feature("autodoc", "1");
        Standard_Boolean IsEmpty() const;
        %feature("autodoc", "1");
        Standard_Integer Length() const;
        %feature("autodoc", "1");
        void Clear();
        %feature("autodoc", "1");
        void Append(gp_XYZ const & anItem);
        %feature("autodoc", "1");
        void Append(Handle_TColgp_HSequenceOfXYZ const & aSequence);
        %feature("autodoc", "1");
        void Prepend(gp_XYZ const & anItem);
        %feature("autodoc", "1");
        void Prepend(Handle_TColgp_HSequenceOfXYZ const & aSequence);
        %feature("autodoc", "1");
        void Reverse();
        %feature("autodoc", "1");
        void InsertBefore(Standard_Integer const anIndex, gp_XYZ const & anItem);
        %feature("autodoc", "1");
        void InsertBefore(Standard_Integer const anIndex, Handle_TColgp_HSequenceOfXYZ const & aSequence);
        %feature("autodoc", "1");
        void InsertAfter(Standard_Integer const anIndex, gp_XYZ const & anItem);
        %feature("autodoc", "1");
        void InsertAfter(Standard_Integer const anIndex, Handle_TColgp_HSequenceOfXYZ const & aSequence);
        %feature("autodoc", "1");
        void Exchange(Standard_Integer const anIndex, Standard_Integer const anOtherIndex);
        %feature("autodoc", "1");
        Handle_TColgp_HSequenceOfXYZ Split(Standard_Integer const anIndex);
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const anIndex, gp_XYZ const & anItem);
        %feature("autodoc", "1");
        gp_XYZ const & Value(Standard_Integer const anIndex) const;
        %feature("autodoc", "1");
        gp_XYZ & ChangeValue(Standard_Integer const anIndex);
        %feature("autodoc", "1");
        void Remove(Standard_Integer const anIndex);
        %feature("autodoc", "1");
        void Remove(Standard_Integer const fromIndex, Standard_Integer const toIndex);
        %feature("autodoc", "1");
        TColgp_SequenceOfXYZ const & Sequence() const;
        %feature("autodoc", "1");
        TColgp_SequenceOfXYZ & ChangeSequence();
        %feature("autodoc", "1");
        Handle_TColgp_HSequenceOfXYZ ShallowCopy() const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: TColgp_SequenceOfXYZ mySequence
//Get: None
//Set: None
%feature("shadow") TColgp_HSequenceOfXYZ::~TColgp_HSequenceOfXYZ {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColgp_HSequenceOfXYZ {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColgp_HSequenceOfXYZ {
    Handle_TColgp_HSequenceOfXYZ* GetHandle(){
        return (Handle_TColgp_HSequenceOfXYZ*)$self;
    }
};
   
%nodefaultctor TColgp_Array1OfCirc2d;

class TColgp_Array1OfCirc2d  {
    public:

        %feature("autodoc", "1");
        TColgp_Array1OfCirc2d(Standard_Integer const Low, Standard_Integer const Up);
        %feature("autodoc", "1");
        TColgp_Array1OfCirc2d(gp_Circ2d const & Item, Standard_Integer const Low, Standard_Integer const Up);
        %feature("autodoc", "1");
        TColgp_Array1OfCirc2d(TColgp_Array1OfCirc2d const & AnArray);
        %feature("autodoc", "1");
        void Init(gp_Circ2d const & V);
        %feature("autodoc", "1");
        void Destroy();
        %feature("autodoc", "1");
        Standard_Boolean IsAllocated() const;
        %feature("autodoc", "1");
        TColgp_Array1OfCirc2d const & Assign(TColgp_Array1OfCirc2d const & Other);
        %feature("autodoc", "1");
        Standard_Integer Length() const;
        %feature("autodoc", "1");
        Standard_Integer Lower() const;
        %feature("autodoc", "1");
        Standard_Integer Upper() const;
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const Index, gp_Circ2d const & Value);
        %feature("autodoc", "1");
        gp_Circ2d const & Value(Standard_Integer const Index) const;
        %feature("autodoc", "1");
        gp_Circ2d & ChangeValue(Standard_Integer const Index); 
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
%feature("shadow") TColgp_Array1OfCirc2d::~TColgp_Array1OfCirc2d {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColgp_Array1OfCirc2d {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColgp_Array1OfDir;

class TColgp_Array1OfDir  {
    public:

        %feature("autodoc", "1");
        TColgp_Array1OfDir(Standard_Integer const Low, Standard_Integer const Up);
        %feature("autodoc", "1");
        TColgp_Array1OfDir(gp_Dir const & Item, Standard_Integer const Low, Standard_Integer const Up);
        %feature("autodoc", "1");
        TColgp_Array1OfDir(TColgp_Array1OfDir const & AnArray);
        %feature("autodoc", "1");
        void Init(gp_Dir const & V);
        %feature("autodoc", "1");
        void Destroy();
        %feature("autodoc", "1");
        Standard_Boolean IsAllocated() const;
        %feature("autodoc", "1");
        TColgp_Array1OfDir const & Assign(TColgp_Array1OfDir const & Other);
        %feature("autodoc", "1");
        Standard_Integer Length() const;
        %feature("autodoc", "1");
        Standard_Integer Lower() const;
        %feature("autodoc", "1");
        Standard_Integer Upper() const;
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const Index, gp_Dir const & Value);
        %feature("autodoc", "1");
        gp_Dir const & Value(Standard_Integer const Index) const;
        %feature("autodoc", "1");
        gp_Dir & ChangeValue(Standard_Integer const Index); 
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
%feature("shadow") TColgp_Array1OfDir::~TColgp_Array1OfDir {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColgp_Array1OfDir {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColgp_Array1OfDir2d;

class TColgp_Array1OfDir2d  {
    public:

        %feature("autodoc", "1");
        TColgp_Array1OfDir2d(Standard_Integer const Low, Standard_Integer const Up);
        %feature("autodoc", "1");
        TColgp_Array1OfDir2d(gp_Dir2d const & Item, Standard_Integer const Low, Standard_Integer const Up);
        %feature("autodoc", "1");
        TColgp_Array1OfDir2d(TColgp_Array1OfDir2d const & AnArray);
        %feature("autodoc", "1");
        void Init(gp_Dir2d const & V);
        %feature("autodoc", "1");
        void Destroy();
        %feature("autodoc", "1");
        Standard_Boolean IsAllocated() const;
        %feature("autodoc", "1");
        TColgp_Array1OfDir2d const & Assign(TColgp_Array1OfDir2d const & Other);
        %feature("autodoc", "1");
        Standard_Integer Length() const;
        %feature("autodoc", "1");
        Standard_Integer Lower() const;
        %feature("autodoc", "1");
        Standard_Integer Upper() const;
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const Index, gp_Dir2d const & Value);
        %feature("autodoc", "1");
        gp_Dir2d const & Value(Standard_Integer const Index) const;
        %feature("autodoc", "1");
        gp_Dir2d & ChangeValue(Standard_Integer const Index); 
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
%feature("shadow") TColgp_Array1OfDir2d::~TColgp_Array1OfDir2d {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColgp_Array1OfDir2d {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColgp_Array1OfLin2d;

class TColgp_Array1OfLin2d  {
    public:

        %feature("autodoc", "1");
        TColgp_Array1OfLin2d(Standard_Integer const Low, Standard_Integer const Up);
        %feature("autodoc", "1");
        TColgp_Array1OfLin2d(gp_Lin2d const & Item, Standard_Integer const Low, Standard_Integer const Up);
        %feature("autodoc", "1");
        TColgp_Array1OfLin2d(TColgp_Array1OfLin2d const & AnArray);
        %feature("autodoc", "1");
        void Init(gp_Lin2d const & V);
        %feature("autodoc", "1");
        void Destroy();
        %feature("autodoc", "1");
        Standard_Boolean IsAllocated() const;
        %feature("autodoc", "1");
        TColgp_Array1OfLin2d const & Assign(TColgp_Array1OfLin2d const & Other);
        %feature("autodoc", "1");
        Standard_Integer Length() const;
        %feature("autodoc", "1");
        Standard_Integer Lower() const;
        %feature("autodoc", "1");
        Standard_Integer Upper() const;
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const Index, gp_Lin2d const & Value);
        %feature("autodoc", "1");
        gp_Lin2d const & Value(Standard_Integer const Index) const;
        %feature("autodoc", "1");
        gp_Lin2d & ChangeValue(Standard_Integer const Index); 
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
%feature("shadow") TColgp_Array1OfLin2d::~TColgp_Array1OfLin2d {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColgp_Array1OfLin2d {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColgp_Array1OfPnt;

class TColgp_Array1OfPnt  {
    public:

        %feature("autodoc", "1");
        TColgp_Array1OfPnt(Standard_Integer const Low, Standard_Integer const Up);
        %feature("autodoc", "1");
        TColgp_Array1OfPnt(gp_Pnt const & Item, Standard_Integer const Low, Standard_Integer const Up);
        %feature("autodoc", "1");
        TColgp_Array1OfPnt(TColgp_Array1OfPnt const & AnArray);
        %feature("autodoc", "1");
        void Init(gp_Pnt const & V);
        %feature("autodoc", "1");
        void Destroy();
        %feature("autodoc", "1");
        Standard_Boolean IsAllocated() const;
        %feature("autodoc", "1");
        TColgp_Array1OfPnt const & Assign(TColgp_Array1OfPnt const & Other);
        %feature("autodoc", "1");
        Standard_Integer Length() const;
        %feature("autodoc", "1");
        Standard_Integer Lower() const;
        %feature("autodoc", "1");
        Standard_Integer Upper() const;
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const Index, gp_Pnt const & Value);
        %feature("autodoc", "1");
        gp_Pnt const & Value(Standard_Integer const Index) const;
        %feature("autodoc", "1");
        gp_Pnt & ChangeValue(Standard_Integer const Index); 
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
%feature("shadow") TColgp_Array1OfPnt::~TColgp_Array1OfPnt {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColgp_Array1OfPnt {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColgp_Array1OfPnt2d;

class TColgp_Array1OfPnt2d  {
    public:

        %feature("autodoc", "1");
        TColgp_Array1OfPnt2d(Standard_Integer const Low, Standard_Integer const Up);
        %feature("autodoc", "1");
        TColgp_Array1OfPnt2d(gp_Pnt2d const & Item, Standard_Integer const Low, Standard_Integer const Up);
        %feature("autodoc", "1");
        TColgp_Array1OfPnt2d(TColgp_Array1OfPnt2d const & AnArray);
        %feature("autodoc", "1");
        void Init(gp_Pnt2d const & V);
        %feature("autodoc", "1");
        void Destroy();
        %feature("autodoc", "1");
        Standard_Boolean IsAllocated() const;
        %feature("autodoc", "1");
        TColgp_Array1OfPnt2d const & Assign(TColgp_Array1OfPnt2d const & Other);
        %feature("autodoc", "1");
        Standard_Integer Length() const;
        %feature("autodoc", "1");
        Standard_Integer Lower() const;
        %feature("autodoc", "1");
        Standard_Integer Upper() const;
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const Index, gp_Pnt2d const & Value);
        %feature("autodoc", "1");
        gp_Pnt2d const & Value(Standard_Integer const Index) const;
        %feature("autodoc", "1");
        gp_Pnt2d & ChangeValue(Standard_Integer const Index); 
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
%feature("shadow") TColgp_Array1OfPnt2d::~TColgp_Array1OfPnt2d {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColgp_Array1OfPnt2d {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColgp_Array1OfVec;

class TColgp_Array1OfVec  {
    public:

        %feature("autodoc", "1");
        TColgp_Array1OfVec(Standard_Integer const Low, Standard_Integer const Up);
        %feature("autodoc", "1");
        TColgp_Array1OfVec(gp_Vec const & Item, Standard_Integer const Low, Standard_Integer const Up);
        %feature("autodoc", "1");
        TColgp_Array1OfVec(TColgp_Array1OfVec const & AnArray);
        %feature("autodoc", "1");
        void Init(gp_Vec const & V);
        %feature("autodoc", "1");
        void Destroy();
        %feature("autodoc", "1");
        Standard_Boolean IsAllocated() const;
        %feature("autodoc", "1");
        TColgp_Array1OfVec const & Assign(TColgp_Array1OfVec const & Other);
        %feature("autodoc", "1");
        Standard_Integer Length() const;
        %feature("autodoc", "1");
        Standard_Integer Lower() const;
        %feature("autodoc", "1");
        Standard_Integer Upper() const;
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const Index, gp_Vec const & Value);
        %feature("autodoc", "1");
        gp_Vec const & Value(Standard_Integer const Index) const;
        %feature("autodoc", "1");
        gp_Vec & ChangeValue(Standard_Integer const Index); 
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
%feature("shadow") TColgp_Array1OfVec::~TColgp_Array1OfVec {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColgp_Array1OfVec {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColgp_Array1OfVec2d;

class TColgp_Array1OfVec2d  {
    public:

        %feature("autodoc", "1");
        TColgp_Array1OfVec2d(Standard_Integer const Low, Standard_Integer const Up);
        %feature("autodoc", "1");
        TColgp_Array1OfVec2d(gp_Vec2d const & Item, Standard_Integer const Low, Standard_Integer const Up);
        %feature("autodoc", "1");
        TColgp_Array1OfVec2d(TColgp_Array1OfVec2d const & AnArray);
        %feature("autodoc", "1");
        void Init(gp_Vec2d const & V);
        %feature("autodoc", "1");
        void Destroy();
        %feature("autodoc", "1");
        Standard_Boolean IsAllocated() const;
        %feature("autodoc", "1");
        TColgp_Array1OfVec2d const & Assign(TColgp_Array1OfVec2d const & Other);
        %feature("autodoc", "1");
        Standard_Integer Length() const;
        %feature("autodoc", "1");
        Standard_Integer Lower() const;
        %feature("autodoc", "1");
        Standard_Integer Upper() const;
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const Index, gp_Vec2d const & Value);
        %feature("autodoc", "1");
        gp_Vec2d const & Value(Standard_Integer const Index) const;
        %feature("autodoc", "1");
        gp_Vec2d & ChangeValue(Standard_Integer const Index); 
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
%feature("shadow") TColgp_Array1OfVec2d::~TColgp_Array1OfVec2d {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColgp_Array1OfVec2d {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColgp_Array1OfXY;

class TColgp_Array1OfXY  {
    public:

        %feature("autodoc", "1");
        TColgp_Array1OfXY(Standard_Integer const Low, Standard_Integer const Up);
        %feature("autodoc", "1");
        TColgp_Array1OfXY(gp_XY const & Item, Standard_Integer const Low, Standard_Integer const Up);
        %feature("autodoc", "1");
        TColgp_Array1OfXY(TColgp_Array1OfXY const & AnArray);
        %feature("autodoc", "1");
        void Init(gp_XY const & V);
        %feature("autodoc", "1");
        void Destroy();
        %feature("autodoc", "1");
        Standard_Boolean IsAllocated() const;
        %feature("autodoc", "1");
        TColgp_Array1OfXY const & Assign(TColgp_Array1OfXY const & Other);
        %feature("autodoc", "1");
        Standard_Integer Length() const;
        %feature("autodoc", "1");
        Standard_Integer Lower() const;
        %feature("autodoc", "1");
        Standard_Integer Upper() const;
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const Index, gp_XY const & Value);
        %feature("autodoc", "1");
        gp_XY const & Value(Standard_Integer const Index) const;
        %feature("autodoc", "1");
        gp_XY & ChangeValue(Standard_Integer const Index); 
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
%feature("shadow") TColgp_Array1OfXY::~TColgp_Array1OfXY {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColgp_Array1OfXY {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColgp_Array1OfXYZ;

class TColgp_Array1OfXYZ  {
    public:

        %feature("autodoc", "1");
        TColgp_Array1OfXYZ(Standard_Integer const Low, Standard_Integer const Up);
        %feature("autodoc", "1");
        TColgp_Array1OfXYZ(gp_XYZ const & Item, Standard_Integer const Low, Standard_Integer const Up);
        %feature("autodoc", "1");
        TColgp_Array1OfXYZ(TColgp_Array1OfXYZ const & AnArray);
        %feature("autodoc", "1");
        void Init(gp_XYZ const & V);
        %feature("autodoc", "1");
        void Destroy();
        %feature("autodoc", "1");
        Standard_Boolean IsAllocated() const;
        %feature("autodoc", "1");
        TColgp_Array1OfXYZ const & Assign(TColgp_Array1OfXYZ const & Other);
        %feature("autodoc", "1");
        Standard_Integer Length() const;
        %feature("autodoc", "1");
        Standard_Integer Lower() const;
        %feature("autodoc", "1");
        Standard_Integer Upper() const;
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const Index, gp_XYZ const & Value);
        %feature("autodoc", "1");
        gp_XYZ const & Value(Standard_Integer const Index) const;
        %feature("autodoc", "1");
        gp_XYZ & ChangeValue(Standard_Integer const Index); 
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
%feature("shadow") TColgp_Array1OfXYZ::~TColgp_Array1OfXYZ {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColgp_Array1OfXYZ {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColgp_Array2OfCirc2d;

class TColgp_Array2OfCirc2d  {
    public:

        %feature("autodoc", "1");
        TColgp_Array2OfCirc2d(Standard_Integer const R1, Standard_Integer const R2, Standard_Integer const C1, Standard_Integer const C2);
        %feature("autodoc", "1");
        TColgp_Array2OfCirc2d(gp_Circ2d const & Item, Standard_Integer const R1, Standard_Integer const R2, Standard_Integer const C1, Standard_Integer const C2);
        %feature("autodoc", "1");
        TColgp_Array2OfCirc2d(TColgp_Array2OfCirc2d const & AnArray);
        %feature("autodoc", "1");
        void Init(gp_Circ2d const & V);
        %feature("autodoc", "1");
        void Destroy();
        %feature("autodoc", "1");
        TColgp_Array2OfCirc2d const & Assign(TColgp_Array2OfCirc2d const & Other);
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
        void SetValue(Standard_Integer const Row, Standard_Integer const Col, gp_Circ2d const & Value);
        %feature("autodoc", "1");
        gp_Circ2d const & Value(Standard_Integer const Row, Standard_Integer const Col) const;
        %feature("autodoc", "1");
        gp_Circ2d & ChangeValue(Standard_Integer const Row, Standard_Integer const Col);
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
%feature("shadow") TColgp_Array2OfCirc2d::~TColgp_Array2OfCirc2d {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColgp_Array2OfCirc2d {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColgp_Array2OfDir;

class TColgp_Array2OfDir  {
    public:

        %feature("autodoc", "1");
        TColgp_Array2OfDir(Standard_Integer const R1, Standard_Integer const R2, Standard_Integer const C1, Standard_Integer const C2);
        %feature("autodoc", "1");
        TColgp_Array2OfDir(gp_Dir const & Item, Standard_Integer const R1, Standard_Integer const R2, Standard_Integer const C1, Standard_Integer const C2);
        %feature("autodoc", "1");
        TColgp_Array2OfDir(TColgp_Array2OfDir const & AnArray);
        %feature("autodoc", "1");
        void Init(gp_Dir const & V);
        %feature("autodoc", "1");
        void Destroy();
        %feature("autodoc", "1");
        TColgp_Array2OfDir const & Assign(TColgp_Array2OfDir const & Other);
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
        void SetValue(Standard_Integer const Row, Standard_Integer const Col, gp_Dir const & Value);
        %feature("autodoc", "1");
        gp_Dir const & Value(Standard_Integer const Row, Standard_Integer const Col) const;
        %feature("autodoc", "1");
        gp_Dir & ChangeValue(Standard_Integer const Row, Standard_Integer const Col);
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
%feature("shadow") TColgp_Array2OfDir::~TColgp_Array2OfDir {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColgp_Array2OfDir {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColgp_Array2OfDir2d;

class TColgp_Array2OfDir2d  {
    public:

        %feature("autodoc", "1");
        TColgp_Array2OfDir2d(Standard_Integer const R1, Standard_Integer const R2, Standard_Integer const C1, Standard_Integer const C2);
        %feature("autodoc", "1");
        TColgp_Array2OfDir2d(gp_Dir2d const & Item, Standard_Integer const R1, Standard_Integer const R2, Standard_Integer const C1, Standard_Integer const C2);
        %feature("autodoc", "1");
        TColgp_Array2OfDir2d(TColgp_Array2OfDir2d const & AnArray);
        %feature("autodoc", "1");
        void Init(gp_Dir2d const & V);
        %feature("autodoc", "1");
        void Destroy();
        %feature("autodoc", "1");
        TColgp_Array2OfDir2d const & Assign(TColgp_Array2OfDir2d const & Other);
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
        void SetValue(Standard_Integer const Row, Standard_Integer const Col, gp_Dir2d const & Value);
        %feature("autodoc", "1");
        gp_Dir2d const & Value(Standard_Integer const Row, Standard_Integer const Col) const;
        %feature("autodoc", "1");
        gp_Dir2d & ChangeValue(Standard_Integer const Row, Standard_Integer const Col);
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
%feature("shadow") TColgp_Array2OfDir2d::~TColgp_Array2OfDir2d {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColgp_Array2OfDir2d {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColgp_Array2OfLin2d;

class TColgp_Array2OfLin2d  {
    public:

        %feature("autodoc", "1");
        TColgp_Array2OfLin2d(Standard_Integer const R1, Standard_Integer const R2, Standard_Integer const C1, Standard_Integer const C2);
        %feature("autodoc", "1");
        TColgp_Array2OfLin2d(gp_Lin2d const & Item, Standard_Integer const R1, Standard_Integer const R2, Standard_Integer const C1, Standard_Integer const C2);
        %feature("autodoc", "1");
        TColgp_Array2OfLin2d(TColgp_Array2OfLin2d const & AnArray);
        %feature("autodoc", "1");
        void Init(gp_Lin2d const & V);
        %feature("autodoc", "1");
        void Destroy();
        %feature("autodoc", "1");
        TColgp_Array2OfLin2d const & Assign(TColgp_Array2OfLin2d const & Other);
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
        void SetValue(Standard_Integer const Row, Standard_Integer const Col, gp_Lin2d const & Value);
        %feature("autodoc", "1");
        gp_Lin2d const & Value(Standard_Integer const Row, Standard_Integer const Col) const;
        %feature("autodoc", "1");
        gp_Lin2d & ChangeValue(Standard_Integer const Row, Standard_Integer const Col);
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
%feature("shadow") TColgp_Array2OfLin2d::~TColgp_Array2OfLin2d {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColgp_Array2OfLin2d {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColgp_Array2OfPnt;

class TColgp_Array2OfPnt  {
    public:

        %feature("autodoc", "1");
        TColgp_Array2OfPnt(Standard_Integer const R1, Standard_Integer const R2, Standard_Integer const C1, Standard_Integer const C2);
        %feature("autodoc", "1");
        TColgp_Array2OfPnt(gp_Pnt const & Item, Standard_Integer const R1, Standard_Integer const R2, Standard_Integer const C1, Standard_Integer const C2);
        %feature("autodoc", "1");
        TColgp_Array2OfPnt(TColgp_Array2OfPnt const & AnArray);
        %feature("autodoc", "1");
        void Init(gp_Pnt const & V);
        %feature("autodoc", "1");
        void Destroy();
        %feature("autodoc", "1");
        TColgp_Array2OfPnt const & Assign(TColgp_Array2OfPnt const & Other);
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
        void SetValue(Standard_Integer const Row, Standard_Integer const Col, gp_Pnt const & Value);
        %feature("autodoc", "1");
        gp_Pnt const & Value(Standard_Integer const Row, Standard_Integer const Col) const;
        %feature("autodoc", "1");
        gp_Pnt & ChangeValue(Standard_Integer const Row, Standard_Integer const Col);
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
%feature("shadow") TColgp_Array2OfPnt::~TColgp_Array2OfPnt {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColgp_Array2OfPnt {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColgp_Array2OfPnt2d;

class TColgp_Array2OfPnt2d  {
    public:

        %feature("autodoc", "1");
        TColgp_Array2OfPnt2d(Standard_Integer const R1, Standard_Integer const R2, Standard_Integer const C1, Standard_Integer const C2);
        %feature("autodoc", "1");
        TColgp_Array2OfPnt2d(gp_Pnt2d const & Item, Standard_Integer const R1, Standard_Integer const R2, Standard_Integer const C1, Standard_Integer const C2);
        %feature("autodoc", "1");
        TColgp_Array2OfPnt2d(TColgp_Array2OfPnt2d const & AnArray);
        %feature("autodoc", "1");
        void Init(gp_Pnt2d const & V);
        %feature("autodoc", "1");
        void Destroy();
        %feature("autodoc", "1");
        TColgp_Array2OfPnt2d const & Assign(TColgp_Array2OfPnt2d const & Other);
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
        void SetValue(Standard_Integer const Row, Standard_Integer const Col, gp_Pnt2d const & Value);
        %feature("autodoc", "1");
        gp_Pnt2d const & Value(Standard_Integer const Row, Standard_Integer const Col) const;
        %feature("autodoc", "1");
        gp_Pnt2d & ChangeValue(Standard_Integer const Row, Standard_Integer const Col);
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
%feature("shadow") TColgp_Array2OfPnt2d::~TColgp_Array2OfPnt2d {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColgp_Array2OfPnt2d {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColgp_Array2OfVec;

class TColgp_Array2OfVec  {
    public:

        %feature("autodoc", "1");
        TColgp_Array2OfVec(Standard_Integer const R1, Standard_Integer const R2, Standard_Integer const C1, Standard_Integer const C2);
        %feature("autodoc", "1");
        TColgp_Array2OfVec(gp_Vec const & Item, Standard_Integer const R1, Standard_Integer const R2, Standard_Integer const C1, Standard_Integer const C2);
        %feature("autodoc", "1");
        TColgp_Array2OfVec(TColgp_Array2OfVec const & AnArray);
        %feature("autodoc", "1");
        void Init(gp_Vec const & V);
        %feature("autodoc", "1");
        void Destroy();
        %feature("autodoc", "1");
        TColgp_Array2OfVec const & Assign(TColgp_Array2OfVec const & Other);
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
        void SetValue(Standard_Integer const Row, Standard_Integer const Col, gp_Vec const & Value);
        %feature("autodoc", "1");
        gp_Vec const & Value(Standard_Integer const Row, Standard_Integer const Col) const;
        %feature("autodoc", "1");
        gp_Vec & ChangeValue(Standard_Integer const Row, Standard_Integer const Col);
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
%feature("shadow") TColgp_Array2OfVec::~TColgp_Array2OfVec {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColgp_Array2OfVec {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColgp_Array2OfVec2d;

class TColgp_Array2OfVec2d  {
    public:

        %feature("autodoc", "1");
        TColgp_Array2OfVec2d(Standard_Integer const R1, Standard_Integer const R2, Standard_Integer const C1, Standard_Integer const C2);
        %feature("autodoc", "1");
        TColgp_Array2OfVec2d(gp_Vec2d const & Item, Standard_Integer const R1, Standard_Integer const R2, Standard_Integer const C1, Standard_Integer const C2);
        %feature("autodoc", "1");
        TColgp_Array2OfVec2d(TColgp_Array2OfVec2d const & AnArray);
        %feature("autodoc", "1");
        void Init(gp_Vec2d const & V);
        %feature("autodoc", "1");
        void Destroy();
        %feature("autodoc", "1");
        TColgp_Array2OfVec2d const & Assign(TColgp_Array2OfVec2d const & Other);
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
        void SetValue(Standard_Integer const Row, Standard_Integer const Col, gp_Vec2d const & Value);
        %feature("autodoc", "1");
        gp_Vec2d const & Value(Standard_Integer const Row, Standard_Integer const Col) const;
        %feature("autodoc", "1");
        gp_Vec2d & ChangeValue(Standard_Integer const Row, Standard_Integer const Col);
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
%feature("shadow") TColgp_Array2OfVec2d::~TColgp_Array2OfVec2d {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColgp_Array2OfVec2d {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColgp_Array2OfXY;

class TColgp_Array2OfXY  {
    public:

        %feature("autodoc", "1");
        TColgp_Array2OfXY(Standard_Integer const R1, Standard_Integer const R2, Standard_Integer const C1, Standard_Integer const C2);
        %feature("autodoc", "1");
        TColgp_Array2OfXY(gp_XY const & Item, Standard_Integer const R1, Standard_Integer const R2, Standard_Integer const C1, Standard_Integer const C2);
        %feature("autodoc", "1");
        TColgp_Array2OfXY(TColgp_Array2OfXY const & AnArray);
        %feature("autodoc", "1");
        void Init(gp_XY const & V);
        %feature("autodoc", "1");
        void Destroy();
        %feature("autodoc", "1");
        TColgp_Array2OfXY const & Assign(TColgp_Array2OfXY const & Other);
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
        void SetValue(Standard_Integer const Row, Standard_Integer const Col, gp_XY const & Value);
        %feature("autodoc", "1");
        gp_XY const & Value(Standard_Integer const Row, Standard_Integer const Col) const;
        %feature("autodoc", "1");
        gp_XY & ChangeValue(Standard_Integer const Row, Standard_Integer const Col);
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
%feature("shadow") TColgp_Array2OfXY::~TColgp_Array2OfXY {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColgp_Array2OfXY {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColgp_Array2OfXYZ;

class TColgp_Array2OfXYZ  {
    public:

        %feature("autodoc", "1");
        TColgp_Array2OfXYZ(Standard_Integer const R1, Standard_Integer const R2, Standard_Integer const C1, Standard_Integer const C2);
        %feature("autodoc", "1");
        TColgp_Array2OfXYZ(gp_XYZ const & Item, Standard_Integer const R1, Standard_Integer const R2, Standard_Integer const C1, Standard_Integer const C2);
        %feature("autodoc", "1");
        TColgp_Array2OfXYZ(TColgp_Array2OfXYZ const & AnArray);
        %feature("autodoc", "1");
        void Init(gp_XYZ const & V);
        %feature("autodoc", "1");
        void Destroy();
        %feature("autodoc", "1");
        TColgp_Array2OfXYZ const & Assign(TColgp_Array2OfXYZ const & Other);
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
        void SetValue(Standard_Integer const Row, Standard_Integer const Col, gp_XYZ const & Value);
        %feature("autodoc", "1");
        gp_XYZ const & Value(Standard_Integer const Row, Standard_Integer const Col) const;
        %feature("autodoc", "1");
        gp_XYZ & ChangeValue(Standard_Integer const Row, Standard_Integer const Col);
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
%feature("shadow") TColgp_Array2OfXYZ::~TColgp_Array2OfXYZ {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColgp_Array2OfXYZ {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColgp_SequenceOfDir;

class TColgp_SequenceOfDir : public TCollection_BaseSequence {
    public:

        %feature("autodoc", "1");
        TColgp_SequenceOfDir();
        %feature("autodoc", "1");
        TColgp_SequenceOfDir(TColgp_SequenceOfDir const & Other);
        %feature("autodoc", "1");
        void Clear();
        %feature("autodoc", "1");
        TColgp_SequenceOfDir const & Assign(TColgp_SequenceOfDir const & Other);
        %feature("autodoc", "1");
        void Append(gp_Dir const & T);
        %feature("autodoc", "1");
        void Append(TColgp_SequenceOfDir & S);
        %feature("autodoc", "1");
        void Prepend(gp_Dir const & T);
        %feature("autodoc", "1");
        void Prepend(TColgp_SequenceOfDir & S);
        %feature("autodoc", "1");
        void InsertBefore(Standard_Integer const Index, gp_Dir const & I);
        %feature("autodoc", "1");
        void InsertBefore(Standard_Integer const Index, TColgp_SequenceOfDir & S);
        %feature("autodoc", "1");
        void InsertAfter(Standard_Integer const Index, gp_Dir const & T);
        %feature("autodoc", "1");
        void InsertAfter(Standard_Integer const Index, TColgp_SequenceOfDir & S);
        %feature("autodoc", "1");
        gp_Dir const & First() const;
        %feature("autodoc", "1");
        gp_Dir const & Last() const;
        %feature("autodoc", "1");
        void Split(Standard_Integer const Index, TColgp_SequenceOfDir & S);
        %feature("autodoc", "1");
        gp_Dir const & Value(Standard_Integer const Index) const;
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const Index, gp_Dir const & I);
        %feature("autodoc", "1");
        gp_Dir & ChangeValue(Standard_Integer const Index);
        %feature("autodoc", "1");
        void Remove(Standard_Integer const Index);
        %feature("autodoc", "1");
        void Remove(Standard_Integer const FromIndex, Standard_Integer const ToIndex); 
};

%feature("shadow") TColgp_SequenceOfDir::~TColgp_SequenceOfDir {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColgp_SequenceOfDir {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColgp_SequenceOfDir2d;

class TColgp_SequenceOfDir2d : public TCollection_BaseSequence {
    public:

        %feature("autodoc", "1");
        TColgp_SequenceOfDir2d();
        %feature("autodoc", "1");
        TColgp_SequenceOfDir2d(TColgp_SequenceOfDir2d const & Other);
        %feature("autodoc", "1");
        void Clear();
        %feature("autodoc", "1");
        TColgp_SequenceOfDir2d const & Assign(TColgp_SequenceOfDir2d const & Other);
        %feature("autodoc", "1");
        void Append(gp_Dir2d const & T);
        %feature("autodoc", "1");
        void Append(TColgp_SequenceOfDir2d & S);
        %feature("autodoc", "1");
        void Prepend(gp_Dir2d const & T);
        %feature("autodoc", "1");
        void Prepend(TColgp_SequenceOfDir2d & S);
        %feature("autodoc", "1");
        void InsertBefore(Standard_Integer const Index, gp_Dir2d const & I);
        %feature("autodoc", "1");
        void InsertBefore(Standard_Integer const Index, TColgp_SequenceOfDir2d & S);
        %feature("autodoc", "1");
        void InsertAfter(Standard_Integer const Index, gp_Dir2d const & T);
        %feature("autodoc", "1");
        void InsertAfter(Standard_Integer const Index, TColgp_SequenceOfDir2d & S);
        %feature("autodoc", "1");
        gp_Dir2d const & First() const;
        %feature("autodoc", "1");
        gp_Dir2d const & Last() const;
        %feature("autodoc", "1");
        void Split(Standard_Integer const Index, TColgp_SequenceOfDir2d & S);
        %feature("autodoc", "1");
        gp_Dir2d const & Value(Standard_Integer const Index) const;
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const Index, gp_Dir2d const & I);
        %feature("autodoc", "1");
        gp_Dir2d & ChangeValue(Standard_Integer const Index);
        %feature("autodoc", "1");
        void Remove(Standard_Integer const Index);
        %feature("autodoc", "1");
        void Remove(Standard_Integer const FromIndex, Standard_Integer const ToIndex); 
};

%feature("shadow") TColgp_SequenceOfDir2d::~TColgp_SequenceOfDir2d {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColgp_SequenceOfDir2d {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColgp_SequenceOfPnt;

class TColgp_SequenceOfPnt : public TCollection_BaseSequence {
    public:

        %feature("autodoc", "1");
        TColgp_SequenceOfPnt();
        %feature("autodoc", "1");
        TColgp_SequenceOfPnt(TColgp_SequenceOfPnt const & Other);
        %feature("autodoc", "1");
        void Clear();
        %feature("autodoc", "1");
        TColgp_SequenceOfPnt const & Assign(TColgp_SequenceOfPnt const & Other);
        %feature("autodoc", "1");
        void Append(gp_Pnt const & T);
        %feature("autodoc", "1");
        void Append(TColgp_SequenceOfPnt & S);
        %feature("autodoc", "1");
        void Prepend(gp_Pnt const & T);
        %feature("autodoc", "1");
        void Prepend(TColgp_SequenceOfPnt & S);
        %feature("autodoc", "1");
        void InsertBefore(Standard_Integer const Index, gp_Pnt const & I);
        %feature("autodoc", "1");
        void InsertBefore(Standard_Integer const Index, TColgp_SequenceOfPnt & S);
        %feature("autodoc", "1");
        void InsertAfter(Standard_Integer const Index, gp_Pnt const & T);
        %feature("autodoc", "1");
        void InsertAfter(Standard_Integer const Index, TColgp_SequenceOfPnt & S);
        %feature("autodoc", "1");
        gp_Pnt const & First() const;
        %feature("autodoc", "1");
        gp_Pnt const & Last() const;
        %feature("autodoc", "1");
        void Split(Standard_Integer const Index, TColgp_SequenceOfPnt & S);
        %feature("autodoc", "1");
        gp_Pnt const & Value(Standard_Integer const Index) const;
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const Index, gp_Pnt const & I);
        %feature("autodoc", "1");
        gp_Pnt & ChangeValue(Standard_Integer const Index);
        %feature("autodoc", "1");
        void Remove(Standard_Integer const Index);
        %feature("autodoc", "1");
        void Remove(Standard_Integer const FromIndex, Standard_Integer const ToIndex); 
};

%feature("shadow") TColgp_SequenceOfPnt::~TColgp_SequenceOfPnt {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColgp_SequenceOfPnt {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColgp_SequenceOfPnt2d;

class TColgp_SequenceOfPnt2d : public TCollection_BaseSequence {
    public:

        %feature("autodoc", "1");
        TColgp_SequenceOfPnt2d();
        %feature("autodoc", "1");
        TColgp_SequenceOfPnt2d(TColgp_SequenceOfPnt2d const & Other);
        %feature("autodoc", "1");
        void Clear();
        %feature("autodoc", "1");
        TColgp_SequenceOfPnt2d const & Assign(TColgp_SequenceOfPnt2d const & Other);
        %feature("autodoc", "1");
        void Append(gp_Pnt2d const & T);
        %feature("autodoc", "1");
        void Append(TColgp_SequenceOfPnt2d & S);
        %feature("autodoc", "1");
        void Prepend(gp_Pnt2d const & T);
        %feature("autodoc", "1");
        void Prepend(TColgp_SequenceOfPnt2d & S);
        %feature("autodoc", "1");
        void InsertBefore(Standard_Integer const Index, gp_Pnt2d const & I);
        %feature("autodoc", "1");
        void InsertBefore(Standard_Integer const Index, TColgp_SequenceOfPnt2d & S);
        %feature("autodoc", "1");
        void InsertAfter(Standard_Integer const Index, gp_Pnt2d const & T);
        %feature("autodoc", "1");
        void InsertAfter(Standard_Integer const Index, TColgp_SequenceOfPnt2d & S);
        %feature("autodoc", "1");
        gp_Pnt2d const & First() const;
        %feature("autodoc", "1");
        gp_Pnt2d const & Last() const;
        %feature("autodoc", "1");
        void Split(Standard_Integer const Index, TColgp_SequenceOfPnt2d & S);
        %feature("autodoc", "1");
        gp_Pnt2d const & Value(Standard_Integer const Index) const;
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const Index, gp_Pnt2d const & I);
        %feature("autodoc", "1");
        gp_Pnt2d & ChangeValue(Standard_Integer const Index);
        %feature("autodoc", "1");
        void Remove(Standard_Integer const Index);
        %feature("autodoc", "1");
        void Remove(Standard_Integer const FromIndex, Standard_Integer const ToIndex); 
};

%feature("shadow") TColgp_SequenceOfPnt2d::~TColgp_SequenceOfPnt2d {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColgp_SequenceOfPnt2d {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColgp_SequenceOfVec;

class TColgp_SequenceOfVec : public TCollection_BaseSequence {
    public:

        %feature("autodoc", "1");
        TColgp_SequenceOfVec();
        %feature("autodoc", "1");
        TColgp_SequenceOfVec(TColgp_SequenceOfVec const & Other);
        %feature("autodoc", "1");
        void Clear();
        %feature("autodoc", "1");
        TColgp_SequenceOfVec const & Assign(TColgp_SequenceOfVec const & Other);
        %feature("autodoc", "1");
        void Append(gp_Vec const & T);
        %feature("autodoc", "1");
        void Append(TColgp_SequenceOfVec & S);
        %feature("autodoc", "1");
        void Prepend(gp_Vec const & T);
        %feature("autodoc", "1");
        void Prepend(TColgp_SequenceOfVec & S);
        %feature("autodoc", "1");
        void InsertBefore(Standard_Integer const Index, gp_Vec const & I);
        %feature("autodoc", "1");
        void InsertBefore(Standard_Integer const Index, TColgp_SequenceOfVec & S);
        %feature("autodoc", "1");
        void InsertAfter(Standard_Integer const Index, gp_Vec const & T);
        %feature("autodoc", "1");
        void InsertAfter(Standard_Integer const Index, TColgp_SequenceOfVec & S);
        %feature("autodoc", "1");
        gp_Vec const & First() const;
        %feature("autodoc", "1");
        gp_Vec const & Last() const;
        %feature("autodoc", "1");
        void Split(Standard_Integer const Index, TColgp_SequenceOfVec & S);
        %feature("autodoc", "1");
        gp_Vec const & Value(Standard_Integer const Index) const;
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const Index, gp_Vec const & I);
        %feature("autodoc", "1");
        gp_Vec & ChangeValue(Standard_Integer const Index);
        %feature("autodoc", "1");
        void Remove(Standard_Integer const Index);
        %feature("autodoc", "1");
        void Remove(Standard_Integer const FromIndex, Standard_Integer const ToIndex); 
};

%feature("shadow") TColgp_SequenceOfVec::~TColgp_SequenceOfVec {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColgp_SequenceOfVec {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColgp_SequenceOfVec2d;

class TColgp_SequenceOfVec2d : public TCollection_BaseSequence {
    public:

        %feature("autodoc", "1");
        TColgp_SequenceOfVec2d();
        %feature("autodoc", "1");
        TColgp_SequenceOfVec2d(TColgp_SequenceOfVec2d const & Other);
        %feature("autodoc", "1");
        void Clear();
        %feature("autodoc", "1");
        TColgp_SequenceOfVec2d const & Assign(TColgp_SequenceOfVec2d const & Other);
        %feature("autodoc", "1");
        void Append(gp_Vec2d const & T);
        %feature("autodoc", "1");
        void Append(TColgp_SequenceOfVec2d & S);
        %feature("autodoc", "1");
        void Prepend(gp_Vec2d const & T);
        %feature("autodoc", "1");
        void Prepend(TColgp_SequenceOfVec2d & S);
        %feature("autodoc", "1");
        void InsertBefore(Standard_Integer const Index, gp_Vec2d const & I);
        %feature("autodoc", "1");
        void InsertBefore(Standard_Integer const Index, TColgp_SequenceOfVec2d & S);
        %feature("autodoc", "1");
        void InsertAfter(Standard_Integer const Index, gp_Vec2d const & T);
        %feature("autodoc", "1");
        void InsertAfter(Standard_Integer const Index, TColgp_SequenceOfVec2d & S);
        %feature("autodoc", "1");
        gp_Vec2d const & First() const;
        %feature("autodoc", "1");
        gp_Vec2d const & Last() const;
        %feature("autodoc", "1");
        void Split(Standard_Integer const Index, TColgp_SequenceOfVec2d & S);
        %feature("autodoc", "1");
        gp_Vec2d const & Value(Standard_Integer const Index) const;
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const Index, gp_Vec2d const & I);
        %feature("autodoc", "1");
        gp_Vec2d & ChangeValue(Standard_Integer const Index);
        %feature("autodoc", "1");
        void Remove(Standard_Integer const Index);
        %feature("autodoc", "1");
        void Remove(Standard_Integer const FromIndex, Standard_Integer const ToIndex); 
};

%feature("shadow") TColgp_SequenceOfVec2d::~TColgp_SequenceOfVec2d {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColgp_SequenceOfVec2d {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColgp_SequenceOfXY;

class TColgp_SequenceOfXY : public TCollection_BaseSequence {
    public:

        %feature("autodoc", "1");
        TColgp_SequenceOfXY();
        %feature("autodoc", "1");
        TColgp_SequenceOfXY(TColgp_SequenceOfXY const & Other);
        %feature("autodoc", "1");
        void Clear();
        %feature("autodoc", "1");
        TColgp_SequenceOfXY const & Assign(TColgp_SequenceOfXY const & Other);
        %feature("autodoc", "1");
        void Append(gp_XY const & T);
        %feature("autodoc", "1");
        void Append(TColgp_SequenceOfXY & S);
        %feature("autodoc", "1");
        void Prepend(gp_XY const & T);
        %feature("autodoc", "1");
        void Prepend(TColgp_SequenceOfXY & S);
        %feature("autodoc", "1");
        void InsertBefore(Standard_Integer const Index, gp_XY const & I);
        %feature("autodoc", "1");
        void InsertBefore(Standard_Integer const Index, TColgp_SequenceOfXY & S);
        %feature("autodoc", "1");
        void InsertAfter(Standard_Integer const Index, gp_XY const & T);
        %feature("autodoc", "1");
        void InsertAfter(Standard_Integer const Index, TColgp_SequenceOfXY & S);
        %feature("autodoc", "1");
        gp_XY const & First() const;
        %feature("autodoc", "1");
        gp_XY const & Last() const;
        %feature("autodoc", "1");
        void Split(Standard_Integer const Index, TColgp_SequenceOfXY & S);
        %feature("autodoc", "1");
        gp_XY const & Value(Standard_Integer const Index) const;
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const Index, gp_XY const & I);
        %feature("autodoc", "1");
        gp_XY & ChangeValue(Standard_Integer const Index);
        %feature("autodoc", "1");
        void Remove(Standard_Integer const Index);
        %feature("autodoc", "1");
        void Remove(Standard_Integer const FromIndex, Standard_Integer const ToIndex); 
};

%feature("shadow") TColgp_SequenceOfXY::~TColgp_SequenceOfXY {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColgp_SequenceOfXY {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColgp_SequenceOfXYZ;

class TColgp_SequenceOfXYZ : public TCollection_BaseSequence {
    public:

        %feature("autodoc", "1");
        TColgp_SequenceOfXYZ();
        %feature("autodoc", "1");
        TColgp_SequenceOfXYZ(TColgp_SequenceOfXYZ const & Other);
        %feature("autodoc", "1");
        void Clear();
        %feature("autodoc", "1");
        TColgp_SequenceOfXYZ const & Assign(TColgp_SequenceOfXYZ const & Other);
        %feature("autodoc", "1");
        void Append(gp_XYZ const & T);
        %feature("autodoc", "1");
        void Append(TColgp_SequenceOfXYZ & S);
        %feature("autodoc", "1");
        void Prepend(gp_XYZ const & T);
        %feature("autodoc", "1");
        void Prepend(TColgp_SequenceOfXYZ & S);
        %feature("autodoc", "1");
        void InsertBefore(Standard_Integer const Index, gp_XYZ const & I);
        %feature("autodoc", "1");
        void InsertBefore(Standard_Integer const Index, TColgp_SequenceOfXYZ & S);
        %feature("autodoc", "1");
        void InsertAfter(Standard_Integer const Index, gp_XYZ const & T);
        %feature("autodoc", "1");
        void InsertAfter(Standard_Integer const Index, TColgp_SequenceOfXYZ & S);
        %feature("autodoc", "1");
        gp_XYZ const & First() const;
        %feature("autodoc", "1");
        gp_XYZ const & Last() const;
        %feature("autodoc", "1");
        void Split(Standard_Integer const Index, TColgp_SequenceOfXYZ & S);
        %feature("autodoc", "1");
        gp_XYZ const & Value(Standard_Integer const Index) const;
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const Index, gp_XYZ const & I);
        %feature("autodoc", "1");
        gp_XYZ & ChangeValue(Standard_Integer const Index);
        %feature("autodoc", "1");
        void Remove(Standard_Integer const Index);
        %feature("autodoc", "1");
        void Remove(Standard_Integer const FromIndex, Standard_Integer const ToIndex); 
};

%feature("shadow") TColgp_SequenceOfXYZ::~TColgp_SequenceOfXYZ {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColgp_SequenceOfXYZ {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColgp_DataMapIteratorOfDataMapOfIntegerCirc2d;

class TColgp_DataMapIteratorOfDataMapOfIntegerCirc2d : public TCollection_BasicMapIterator {
    public:

        %feature("autodoc", "1");
        TColgp_DataMapIteratorOfDataMapOfIntegerCirc2d(TColgp_DataMapIteratorOfDataMapOfIntegerCirc2d const & arg0);
        %feature("autodoc", "1");
        TColgp_DataMapIteratorOfDataMapOfIntegerCirc2d();
        %feature("autodoc", "1");
        TColgp_DataMapIteratorOfDataMapOfIntegerCirc2d(TColgp_DataMapOfIntegerCirc2d const & aMap);
        %feature("autodoc", "1");
        void Initialize(TColgp_DataMapOfIntegerCirc2d const & aMap);
        %feature("autodoc", "1");
        Standard_Integer const & Key() const;
        %feature("autodoc", "1");
        gp_Circ2d const & Value() const; 
};

%feature("shadow") TColgp_DataMapIteratorOfDataMapOfIntegerCirc2d::~TColgp_DataMapIteratorOfDataMapOfIntegerCirc2d {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColgp_DataMapIteratorOfDataMapOfIntegerCirc2d {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColgp_DataMapOfIntegerCirc2d;

class TColgp_DataMapOfIntegerCirc2d : public TCollection_BasicMap {
    public:

        %feature("autodoc", "1");
        TColgp_DataMapOfIntegerCirc2d(Standard_Integer const NbBuckets=1);
        %feature("autodoc", "1");
        TColgp_DataMapOfIntegerCirc2d(TColgp_DataMapOfIntegerCirc2d const & Other);
        %feature("autodoc", "1");
        TColgp_DataMapOfIntegerCirc2d & Assign(TColgp_DataMapOfIntegerCirc2d const & Other);
        %feature("autodoc", "1");
        void ReSize(Standard_Integer const NbBuckets);
        %feature("autodoc", "1");
        void Clear();
        %feature("autodoc", "1");
        Standard_Boolean Bind(Standard_Integer const & K, gp_Circ2d const & I);
        %feature("autodoc", "1");
        Standard_Boolean IsBound(Standard_Integer const & K) const;
        %feature("autodoc", "1");
        Standard_Boolean UnBind(Standard_Integer const & K);
        %feature("autodoc", "1");
        gp_Circ2d const & Find(Standard_Integer const & K) const;
        %feature("autodoc", "1");
        gp_Circ2d & ChangeFind(Standard_Integer const & K); 
};

%feature("shadow") TColgp_DataMapOfIntegerCirc2d::~TColgp_DataMapOfIntegerCirc2d {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColgp_DataMapOfIntegerCirc2d {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor TColgp_DataMapNodeOfDataMapOfIntegerCirc2d;

class TColgp_DataMapNodeOfDataMapOfIntegerCirc2d : public TCollection_MapNode {
    public:

        %feature("autodoc", "1");
        TColgp_DataMapNodeOfDataMapOfIntegerCirc2d(TColgp_DataMapNodeOfDataMapOfIntegerCirc2d const & arg0);
        %feature("autodoc", "1");
        TColgp_DataMapNodeOfDataMapOfIntegerCirc2d(Standard_Integer const & K, gp_Circ2d const & I, TCollection_MapNodePtr const & n);
        %feature("autodoc", "1");
        Standard_Integer & Key() const;
        %feature("autodoc", "1");
        gp_Circ2d & Value() const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: Standard_Integer myKey
//Get: None
//Set: None
//Var: gp_Circ2d myValue
//Get: None
//Set: None
%feature("shadow") TColgp_DataMapNodeOfDataMapOfIntegerCirc2d::~TColgp_DataMapNodeOfDataMapOfIntegerCirc2d {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColgp_DataMapNodeOfDataMapOfIntegerCirc2d {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColgp_DataMapNodeOfDataMapOfIntegerCirc2d {
    Handle_TColgp_DataMapNodeOfDataMapOfIntegerCirc2d* GetHandle(){
        return (Handle_TColgp_DataMapNodeOfDataMapOfIntegerCirc2d*)$self;
    }
};
   
%nodefaultctor TColgp_SequenceNodeOfSequenceOfDir;

class TColgp_SequenceNodeOfSequenceOfDir : public TCollection_SeqNode {
    public:

        %feature("autodoc", "1");
        TColgp_SequenceNodeOfSequenceOfDir(TColgp_SequenceNodeOfSequenceOfDir const & arg0);
        %feature("autodoc", "1");
        TColgp_SequenceNodeOfSequenceOfDir(gp_Dir const & I, TCollection_SeqNodePtr const & n, TCollection_SeqNodePtr const & p);
        %feature("autodoc", "1");
        gp_Dir & Value() const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: gp_Dir myValue
//Get: None
//Set: None
%feature("shadow") TColgp_SequenceNodeOfSequenceOfDir::~TColgp_SequenceNodeOfSequenceOfDir {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColgp_SequenceNodeOfSequenceOfDir {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColgp_SequenceNodeOfSequenceOfDir {
    Handle_TColgp_SequenceNodeOfSequenceOfDir* GetHandle(){
        return (Handle_TColgp_SequenceNodeOfSequenceOfDir*)$self;
    }
};
   
%nodefaultctor TColgp_SequenceNodeOfSequenceOfDir2d;

class TColgp_SequenceNodeOfSequenceOfDir2d : public TCollection_SeqNode {
    public:

        %feature("autodoc", "1");
        TColgp_SequenceNodeOfSequenceOfDir2d(TColgp_SequenceNodeOfSequenceOfDir2d const & arg0);
        %feature("autodoc", "1");
        TColgp_SequenceNodeOfSequenceOfDir2d(gp_Dir2d const & I, TCollection_SeqNodePtr const & n, TCollection_SeqNodePtr const & p);
        %feature("autodoc", "1");
        gp_Dir2d & Value() const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: gp_Dir2d myValue
//Get: None
//Set: None
%feature("shadow") TColgp_SequenceNodeOfSequenceOfDir2d::~TColgp_SequenceNodeOfSequenceOfDir2d {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColgp_SequenceNodeOfSequenceOfDir2d {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColgp_SequenceNodeOfSequenceOfDir2d {
    Handle_TColgp_SequenceNodeOfSequenceOfDir2d* GetHandle(){
        return (Handle_TColgp_SequenceNodeOfSequenceOfDir2d*)$self;
    }
};
   
%nodefaultctor TColgp_SequenceNodeOfSequenceOfPnt;

class TColgp_SequenceNodeOfSequenceOfPnt : public TCollection_SeqNode {
    public:

        %feature("autodoc", "1");
        TColgp_SequenceNodeOfSequenceOfPnt(TColgp_SequenceNodeOfSequenceOfPnt const & arg0);
        %feature("autodoc", "1");
        TColgp_SequenceNodeOfSequenceOfPnt(gp_Pnt const & I, TCollection_SeqNodePtr const & n, TCollection_SeqNodePtr const & p);
        %feature("autodoc", "1");
        gp_Pnt & Value() const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: gp_Pnt myValue
//Get: None
//Set: None
%feature("shadow") TColgp_SequenceNodeOfSequenceOfPnt::~TColgp_SequenceNodeOfSequenceOfPnt {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColgp_SequenceNodeOfSequenceOfPnt {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColgp_SequenceNodeOfSequenceOfPnt {
    Handle_TColgp_SequenceNodeOfSequenceOfPnt* GetHandle(){
        return (Handle_TColgp_SequenceNodeOfSequenceOfPnt*)$self;
    }
};
   
%nodefaultctor TColgp_SequenceNodeOfSequenceOfPnt2d;

class TColgp_SequenceNodeOfSequenceOfPnt2d : public TCollection_SeqNode {
    public:

        %feature("autodoc", "1");
        TColgp_SequenceNodeOfSequenceOfPnt2d(TColgp_SequenceNodeOfSequenceOfPnt2d const & arg0);
        %feature("autodoc", "1");
        TColgp_SequenceNodeOfSequenceOfPnt2d(gp_Pnt2d const & I, TCollection_SeqNodePtr const & n, TCollection_SeqNodePtr const & p);
        %feature("autodoc", "1");
        gp_Pnt2d & Value() const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: gp_Pnt2d myValue
//Get: None
//Set: None
%feature("shadow") TColgp_SequenceNodeOfSequenceOfPnt2d::~TColgp_SequenceNodeOfSequenceOfPnt2d {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColgp_SequenceNodeOfSequenceOfPnt2d {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColgp_SequenceNodeOfSequenceOfPnt2d {
    Handle_TColgp_SequenceNodeOfSequenceOfPnt2d* GetHandle(){
        return (Handle_TColgp_SequenceNodeOfSequenceOfPnt2d*)$self;
    }
};
   
%nodefaultctor TColgp_SequenceNodeOfSequenceOfVec;

class TColgp_SequenceNodeOfSequenceOfVec : public TCollection_SeqNode {
    public:

        %feature("autodoc", "1");
        TColgp_SequenceNodeOfSequenceOfVec(TColgp_SequenceNodeOfSequenceOfVec const & arg0);
        %feature("autodoc", "1");
        TColgp_SequenceNodeOfSequenceOfVec(gp_Vec const & I, TCollection_SeqNodePtr const & n, TCollection_SeqNodePtr const & p);
        %feature("autodoc", "1");
        gp_Vec & Value() const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: gp_Vec myValue
//Get: None
//Set: None
%feature("shadow") TColgp_SequenceNodeOfSequenceOfVec::~TColgp_SequenceNodeOfSequenceOfVec {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColgp_SequenceNodeOfSequenceOfVec {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColgp_SequenceNodeOfSequenceOfVec {
    Handle_TColgp_SequenceNodeOfSequenceOfVec* GetHandle(){
        return (Handle_TColgp_SequenceNodeOfSequenceOfVec*)$self;
    }
};
   
%nodefaultctor TColgp_SequenceNodeOfSequenceOfVec2d;

class TColgp_SequenceNodeOfSequenceOfVec2d : public TCollection_SeqNode {
    public:

        %feature("autodoc", "1");
        TColgp_SequenceNodeOfSequenceOfVec2d(TColgp_SequenceNodeOfSequenceOfVec2d const & arg0);
        %feature("autodoc", "1");
        TColgp_SequenceNodeOfSequenceOfVec2d(gp_Vec2d const & I, TCollection_SeqNodePtr const & n, TCollection_SeqNodePtr const & p);
        %feature("autodoc", "1");
        gp_Vec2d & Value() const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: gp_Vec2d myValue
//Get: None
//Set: None
%feature("shadow") TColgp_SequenceNodeOfSequenceOfVec2d::~TColgp_SequenceNodeOfSequenceOfVec2d {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColgp_SequenceNodeOfSequenceOfVec2d {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColgp_SequenceNodeOfSequenceOfVec2d {
    Handle_TColgp_SequenceNodeOfSequenceOfVec2d* GetHandle(){
        return (Handle_TColgp_SequenceNodeOfSequenceOfVec2d*)$self;
    }
};
   
%nodefaultctor TColgp_SequenceNodeOfSequenceOfXY;

class TColgp_SequenceNodeOfSequenceOfXY : public TCollection_SeqNode {
    public:

        %feature("autodoc", "1");
        TColgp_SequenceNodeOfSequenceOfXY(TColgp_SequenceNodeOfSequenceOfXY const & arg0);
        %feature("autodoc", "1");
        TColgp_SequenceNodeOfSequenceOfXY(gp_XY const & I, TCollection_SeqNodePtr const & n, TCollection_SeqNodePtr const & p);
        %feature("autodoc", "1");
        gp_XY & Value() const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: gp_XY myValue
//Get: None
//Set: None
%feature("shadow") TColgp_SequenceNodeOfSequenceOfXY::~TColgp_SequenceNodeOfSequenceOfXY {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColgp_SequenceNodeOfSequenceOfXY {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColgp_SequenceNodeOfSequenceOfXY {
    Handle_TColgp_SequenceNodeOfSequenceOfXY* GetHandle(){
        return (Handle_TColgp_SequenceNodeOfSequenceOfXY*)$self;
    }
};
   
%nodefaultctor TColgp_SequenceNodeOfSequenceOfXYZ;

class TColgp_SequenceNodeOfSequenceOfXYZ : public TCollection_SeqNode {
    public:

        %feature("autodoc", "1");
        TColgp_SequenceNodeOfSequenceOfXYZ(TColgp_SequenceNodeOfSequenceOfXYZ const & arg0);
        %feature("autodoc", "1");
        TColgp_SequenceNodeOfSequenceOfXYZ(gp_XYZ const & I, TCollection_SeqNodePtr const & n, TCollection_SeqNodePtr const & p);
        %feature("autodoc", "1");
        gp_XYZ & Value() const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: gp_XYZ myValue
//Get: None
//Set: None
%feature("shadow") TColgp_SequenceNodeOfSequenceOfXYZ::~TColgp_SequenceNodeOfSequenceOfXYZ {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend TColgp_SequenceNodeOfSequenceOfXYZ {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend TColgp_SequenceNodeOfSequenceOfXYZ {
    Handle_TColgp_SequenceNodeOfSequenceOfXYZ* GetHandle(){
        return (Handle_TColgp_SequenceNodeOfSequenceOfXYZ*)$self;
    }
};