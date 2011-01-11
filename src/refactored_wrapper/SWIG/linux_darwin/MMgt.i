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
 
%module MMgt
       
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i


%pythoncode {
import GarbageCollector
};
%include MMgt_dependencies.i



   
%nodefaultctor Handle_MMgt_TShared;

class Handle_MMgt_TShared : public Handle_Standard_Transient {
    public:

        %feature("autodoc", "1");
        Handle_MMgt_TShared();
        %feature("autodoc", "1");
        Handle_MMgt_TShared(Handle_MMgt_TShared const & aHandle);
        %feature("autodoc", "1");
        Handle_MMgt_TShared(MMgt_TShared const * anItem);
        %feature("autodoc", "1");
        Handle_MMgt_TShared const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_MMgt_TShared::~Handle_MMgt_TShared {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_MMgt_TShared {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_MMgt_TShared {
    MMgt_TShared* GetObject() {
        return (MMgt_TShared*)$self->Access();
    }
};
   
%nodefaultctor MMgt_StackManager;

class MMgt_StackManager  {
    public:

        %feature("autodoc", "1");
        MMgt_StackManager(MMgt_StackManager const & arg0);
        %feature("autodoc", "1");
        MMgt_StackManager();
        %feature("autodoc", "1");
        Standard_Address Allocate(Standard_Integer const size);
        %feature("autodoc", "1");
        void Free(Standard_Address & aStack, Standard_Integer const aSize);
        %feature("autodoc", "1");
        MMgt_StackManager ShallowCopy() const;
        %feature("autodoc", "1");
        %extend{
            std::stringstream ShallowDumpToString() {
                std::stringstream s;
                self->ShallowDump(s);
                return s.str();
            }
        };
        %feature("autodoc", "1");
        void Destructor();
        %feature("autodoc", "1");
        void Purge(); 
};
//Var: Standard_Integer myFreeListSize
//Get: None
//Set: None
//Var: Standard_Address myFreeList
//Get: None
//Set: None
%feature("shadow") MMgt_StackManager::~MMgt_StackManager {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend MMgt_StackManager {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor MMgt_TShared;

class MMgt_TShared : public Standard_Transient {
    public:

        %feature("autodoc", "1");
        MMgt_TShared(MMgt_TShared const & arg0);
        %feature("autodoc", "1");
        MMgt_TShared();
        %feature("autodoc", "1");
        virtual void Delete() const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};

%feature("shadow") MMgt_TShared::~MMgt_TShared {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend MMgt_TShared {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend MMgt_TShared {
    Handle_MMgt_TShared* GetHandle(){
        return (Handle_MMgt_TShared*)$self;
    }
};