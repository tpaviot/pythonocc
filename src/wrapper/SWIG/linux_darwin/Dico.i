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

%module Dico
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include Dico_renames.i


%include Dico_required_python_modules.i


%include Dico_dependencies.i


%include Dico_headers.i




%nodefaultctor Handle_Dico_DictionaryOfTransient;
class Handle_Dico_DictionaryOfTransient : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Dico_DictionaryOfTransient();
		%feature("autodoc", "1");
		Handle_Dico_DictionaryOfTransient(const Handle_Dico_DictionaryOfTransient &aHandle);
		%feature("autodoc", "1");
		Handle_Dico_DictionaryOfTransient(const Dico_DictionaryOfTransient *anItem);
		%feature("autodoc", "1");
		Handle_Dico_DictionaryOfTransient & operator=(const Handle_Dico_DictionaryOfTransient &aHandle);
		%feature("autodoc", "1");
		Handle_Dico_DictionaryOfTransient & operator=(const Dico_DictionaryOfTransient *anItem);
		%feature("autodoc", "1");
		static		Handle_Dico_DictionaryOfTransient DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Dico_DictionaryOfTransient {
	Dico_DictionaryOfTransient* GetObject() {
	return (Dico_DictionaryOfTransient*)$self->Access();
	}
};
%feature("shadow") Handle_Dico_DictionaryOfTransient::~Handle_Dico_DictionaryOfTransient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Dico_DictionaryOfTransient {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Dico_StackItemOfDictionaryOfTransient;
class Handle_Dico_StackItemOfDictionaryOfTransient : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Dico_StackItemOfDictionaryOfTransient();
		%feature("autodoc", "1");
		Handle_Dico_StackItemOfDictionaryOfTransient(const Handle_Dico_StackItemOfDictionaryOfTransient &aHandle);
		%feature("autodoc", "1");
		Handle_Dico_StackItemOfDictionaryOfTransient(const Dico_StackItemOfDictionaryOfTransient *anItem);
		%feature("autodoc", "1");
		Handle_Dico_StackItemOfDictionaryOfTransient & operator=(const Handle_Dico_StackItemOfDictionaryOfTransient &aHandle);
		%feature("autodoc", "1");
		Handle_Dico_StackItemOfDictionaryOfTransient & operator=(const Dico_StackItemOfDictionaryOfTransient *anItem);
		%feature("autodoc", "1");
		static		Handle_Dico_StackItemOfDictionaryOfTransient DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Dico_StackItemOfDictionaryOfTransient {
	Dico_StackItemOfDictionaryOfTransient* GetObject() {
	return (Dico_StackItemOfDictionaryOfTransient*)$self->Access();
	}
};
%feature("shadow") Handle_Dico_StackItemOfDictionaryOfTransient::~Handle_Dico_StackItemOfDictionaryOfTransient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Dico_StackItemOfDictionaryOfTransient {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Dico_DictionaryOfInteger;
class Handle_Dico_DictionaryOfInteger : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Dico_DictionaryOfInteger();
		%feature("autodoc", "1");
		Handle_Dico_DictionaryOfInteger(const Handle_Dico_DictionaryOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_Dico_DictionaryOfInteger(const Dico_DictionaryOfInteger *anItem);
		%feature("autodoc", "1");
		Handle_Dico_DictionaryOfInteger & operator=(const Handle_Dico_DictionaryOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_Dico_DictionaryOfInteger & operator=(const Dico_DictionaryOfInteger *anItem);
		%feature("autodoc", "1");
		static		Handle_Dico_DictionaryOfInteger DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Dico_DictionaryOfInteger {
	Dico_DictionaryOfInteger* GetObject() {
	return (Dico_DictionaryOfInteger*)$self->Access();
	}
};
%feature("shadow") Handle_Dico_DictionaryOfInteger::~Handle_Dico_DictionaryOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Dico_DictionaryOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Dico_StackItemOfDictionaryOfInteger;
class Handle_Dico_StackItemOfDictionaryOfInteger : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Dico_StackItemOfDictionaryOfInteger();
		%feature("autodoc", "1");
		Handle_Dico_StackItemOfDictionaryOfInteger(const Handle_Dico_StackItemOfDictionaryOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_Dico_StackItemOfDictionaryOfInteger(const Dico_StackItemOfDictionaryOfInteger *anItem);
		%feature("autodoc", "1");
		Handle_Dico_StackItemOfDictionaryOfInteger & operator=(const Handle_Dico_StackItemOfDictionaryOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_Dico_StackItemOfDictionaryOfInteger & operator=(const Dico_StackItemOfDictionaryOfInteger *anItem);
		%feature("autodoc", "1");
		static		Handle_Dico_StackItemOfDictionaryOfInteger DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Dico_StackItemOfDictionaryOfInteger {
	Dico_StackItemOfDictionaryOfInteger* GetObject() {
	return (Dico_StackItemOfDictionaryOfInteger*)$self->Access();
	}
};
%feature("shadow") Handle_Dico_StackItemOfDictionaryOfInteger::~Handle_Dico_StackItemOfDictionaryOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Dico_StackItemOfDictionaryOfInteger {
	void _kill_pointed() {
		delete $self;
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
		%feature("autodoc","GetItem(Standard_CString name, Standard_Boolean exact=1) -> Standard_Integer");

		Standard_Boolean GetItem(const char * name, Standard_Integer &OutValue, const Standard_Boolean exact=1) const;
		%feature("autodoc","GetItem(const name, Standard_Boolean exact=1) -> Standard_Integer");

		Standard_Boolean GetItem(const TCollection_AsciiString &name, Standard_Integer &OutValue, const Standard_Boolean exact=1) const;
		%feature("autodoc", "1");
		void SetItem(const char * name, const Standard_Integer &anitem, const Standard_Boolean exact=1);
		%feature("autodoc", "1");
		void SetItem(const TCollection_AsciiString &name, const Standard_Integer &anitem, const Standard_Boolean exact=1);
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetNewItem(const Standard_CString name, Standard_Boolean & isvalued, const Standard_Boolean exact=1) {
				return (Standard_Integer) $self->NewItem(name,isvalued,exact);
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetNewItem(Standard_Integer value ,const Standard_CString name, Standard_Boolean & isvalued, const Standard_Boolean exact=1) {
				$self->NewItem(name,isvalued,exact)=value;
				}
		};
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetNewItem(const TCollection_AsciiString &name, Standard_Boolean & isvalued, const Standard_Boolean exact=1) {
				return (Standard_Integer) $self->NewItem(name,isvalued,exact);
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetNewItem(Standard_Integer value ,const TCollection_AsciiString &name, Standard_Boolean & isvalued, const Standard_Boolean exact=1) {
				$self->NewItem(name,isvalued,exact)=value;
				}
		};
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

};
%extend Dico_DictionaryOfInteger {
	Handle_Dico_DictionaryOfInteger GetHandle() {
	return *(Handle_Dico_DictionaryOfInteger*) &$self;
	}
};
%extend Dico_DictionaryOfInteger {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Dico_DictionaryOfInteger::~Dico_DictionaryOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Dico_DictionaryOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Dico_IteratorOfDictionaryOfTransient;
class Dico_IteratorOfDictionaryOfTransient {
	public:
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
%feature("shadow") Dico_IteratorOfDictionaryOfTransient::~Dico_IteratorOfDictionaryOfTransient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Dico_IteratorOfDictionaryOfTransient {
	void _kill_pointed() {
		delete $self;
	}
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

};
%extend Dico_StackItemOfDictionaryOfTransient {
	Handle_Dico_StackItemOfDictionaryOfTransient GetHandle() {
	return *(Handle_Dico_StackItemOfDictionaryOfTransient*) &$self;
	}
};
%extend Dico_StackItemOfDictionaryOfTransient {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Dico_StackItemOfDictionaryOfTransient::~Dico_StackItemOfDictionaryOfTransient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Dico_StackItemOfDictionaryOfTransient {
	void _kill_pointed() {
		delete $self;
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

};
%extend Dico_DictionaryOfTransient {
	Handle_Dico_DictionaryOfTransient GetHandle() {
	return *(Handle_Dico_DictionaryOfTransient*) &$self;
	}
};
%extend Dico_DictionaryOfTransient {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Dico_DictionaryOfTransient::~Dico_DictionaryOfTransient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Dico_DictionaryOfTransient {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Dico_IteratorOfDictionaryOfInteger;
class Dico_IteratorOfDictionaryOfInteger {
	public:
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
%feature("shadow") Dico_IteratorOfDictionaryOfInteger::~Dico_IteratorOfDictionaryOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Dico_IteratorOfDictionaryOfInteger {
	void _kill_pointed() {
		delete $self;
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

};
%extend Dico_StackItemOfDictionaryOfInteger {
	Handle_Dico_StackItemOfDictionaryOfInteger GetHandle() {
	return *(Handle_Dico_StackItemOfDictionaryOfInteger*) &$self;
	}
};
%extend Dico_StackItemOfDictionaryOfInteger {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Dico_StackItemOfDictionaryOfInteger::~Dico_StackItemOfDictionaryOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Dico_StackItemOfDictionaryOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};
