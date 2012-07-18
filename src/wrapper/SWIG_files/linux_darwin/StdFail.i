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

%module StdFail
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include StdFail_renames.i


%include StdFail_required_python_modules.i


%include StdFail_dependencies.i


%include StdFail_headers.i




%nodefaultctor Handle_StdFail_UndefinedValue;
class Handle_StdFail_UndefinedValue : public Handle_Standard_DomainError {
	public:
		%feature("autodoc", "1");
		Handle_StdFail_UndefinedValue();
		%feature("autodoc", "1");
		Handle_StdFail_UndefinedValue(const Handle_StdFail_UndefinedValue &aHandle);
		%feature("autodoc", "1");
		Handle_StdFail_UndefinedValue(const StdFail_UndefinedValue *anItem);
		%feature("autodoc", "1");
		Handle_StdFail_UndefinedValue & operator=(const Handle_StdFail_UndefinedValue &aHandle);
		%feature("autodoc", "1");
		Handle_StdFail_UndefinedValue & operator=(const StdFail_UndefinedValue *anItem);
		%feature("autodoc", "1");
		static		Handle_StdFail_UndefinedValue DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StdFail_UndefinedValue {
	StdFail_UndefinedValue* GetObject() {
	return (StdFail_UndefinedValue*)$self->Access();
	}
};
%feature("shadow") Handle_StdFail_UndefinedValue::~Handle_StdFail_UndefinedValue %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StdFail_UndefinedValue {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StdFail_NotDone;
class Handle_StdFail_NotDone : public Handle_Standard_Failure {
	public:
		%feature("autodoc", "1");
		Handle_StdFail_NotDone();
		%feature("autodoc", "1");
		Handle_StdFail_NotDone(const Handle_StdFail_NotDone &aHandle);
		%feature("autodoc", "1");
		Handle_StdFail_NotDone(const StdFail_NotDone *anItem);
		%feature("autodoc", "1");
		Handle_StdFail_NotDone & operator=(const Handle_StdFail_NotDone &aHandle);
		%feature("autodoc", "1");
		Handle_StdFail_NotDone & operator=(const StdFail_NotDone *anItem);
		%feature("autodoc", "1");
		static		Handle_StdFail_NotDone DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StdFail_NotDone {
	StdFail_NotDone* GetObject() {
	return (StdFail_NotDone*)$self->Access();
	}
};
%feature("shadow") Handle_StdFail_NotDone::~Handle_StdFail_NotDone %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StdFail_NotDone {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StdFail_Undefined;
class Handle_StdFail_Undefined : public Handle_Standard_Failure {
	public:
		%feature("autodoc", "1");
		Handle_StdFail_Undefined();
		%feature("autodoc", "1");
		Handle_StdFail_Undefined(const Handle_StdFail_Undefined &aHandle);
		%feature("autodoc", "1");
		Handle_StdFail_Undefined(const StdFail_Undefined *anItem);
		%feature("autodoc", "1");
		Handle_StdFail_Undefined & operator=(const Handle_StdFail_Undefined &aHandle);
		%feature("autodoc", "1");
		Handle_StdFail_Undefined & operator=(const StdFail_Undefined *anItem);
		%feature("autodoc", "1");
		static		Handle_StdFail_Undefined DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StdFail_Undefined {
	StdFail_Undefined* GetObject() {
	return (StdFail_Undefined*)$self->Access();
	}
};
%feature("shadow") Handle_StdFail_Undefined::~Handle_StdFail_Undefined %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StdFail_Undefined {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StdFail_UndefinedDerivative;
class Handle_StdFail_UndefinedDerivative : public Handle_Standard_DomainError {
	public:
		%feature("autodoc", "1");
		Handle_StdFail_UndefinedDerivative();
		%feature("autodoc", "1");
		Handle_StdFail_UndefinedDerivative(const Handle_StdFail_UndefinedDerivative &aHandle);
		%feature("autodoc", "1");
		Handle_StdFail_UndefinedDerivative(const StdFail_UndefinedDerivative *anItem);
		%feature("autodoc", "1");
		Handle_StdFail_UndefinedDerivative & operator=(const Handle_StdFail_UndefinedDerivative &aHandle);
		%feature("autodoc", "1");
		Handle_StdFail_UndefinedDerivative & operator=(const StdFail_UndefinedDerivative *anItem);
		%feature("autodoc", "1");
		static		Handle_StdFail_UndefinedDerivative DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StdFail_UndefinedDerivative {
	StdFail_UndefinedDerivative* GetObject() {
	return (StdFail_UndefinedDerivative*)$self->Access();
	}
};
%feature("shadow") Handle_StdFail_UndefinedDerivative::~Handle_StdFail_UndefinedDerivative %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StdFail_UndefinedDerivative {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StdFail_InfiniteSolutions;
class Handle_StdFail_InfiniteSolutions : public Handle_Standard_Failure {
	public:
		%feature("autodoc", "1");
		Handle_StdFail_InfiniteSolutions();
		%feature("autodoc", "1");
		Handle_StdFail_InfiniteSolutions(const Handle_StdFail_InfiniteSolutions &aHandle);
		%feature("autodoc", "1");
		Handle_StdFail_InfiniteSolutions(const StdFail_InfiniteSolutions *anItem);
		%feature("autodoc", "1");
		Handle_StdFail_InfiniteSolutions & operator=(const Handle_StdFail_InfiniteSolutions &aHandle);
		%feature("autodoc", "1");
		Handle_StdFail_InfiniteSolutions & operator=(const StdFail_InfiniteSolutions *anItem);
		%feature("autodoc", "1");
		static		Handle_StdFail_InfiniteSolutions DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StdFail_InfiniteSolutions {
	StdFail_InfiniteSolutions* GetObject() {
	return (StdFail_InfiniteSolutions*)$self->Access();
	}
};
%feature("shadow") Handle_StdFail_InfiniteSolutions::~Handle_StdFail_InfiniteSolutions %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StdFail_InfiniteSolutions {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StdFail_UndefinedDerivative;
class StdFail_UndefinedDerivative : public Standard_DomainError {
	public:
		%feature("autodoc", "1");
		StdFail_UndefinedDerivative();
		%feature("autodoc", "1");
		StdFail_UndefinedDerivative(const char * AString);
		%feature("autodoc", "1");
		static		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		static		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		static		Handle_StdFail_UndefinedDerivative NewInstance(const char * aMessage="");
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StdFail_UndefinedDerivative {
	Handle_StdFail_UndefinedDerivative GetHandle() {
	return *(Handle_StdFail_UndefinedDerivative*) &$self;
	}
};
%extend StdFail_UndefinedDerivative {
	Standard_Integer __hash__() {
	return HashCode(*(Handle_Standard_Transient*)&$self,2147483647);
	}
};
%feature("shadow") StdFail_UndefinedDerivative::~StdFail_UndefinedDerivative %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StdFail_UndefinedDerivative {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StdFail_UndefinedValue;
class StdFail_UndefinedValue : public Standard_DomainError {
	public:
		%feature("autodoc", "1");
		StdFail_UndefinedValue();
		%feature("autodoc", "1");
		StdFail_UndefinedValue(const char * AString);
		%feature("autodoc", "1");
		static		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		static		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		static		Handle_StdFail_UndefinedValue NewInstance(const char * aMessage="");
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StdFail_UndefinedValue {
	Handle_StdFail_UndefinedValue GetHandle() {
	return *(Handle_StdFail_UndefinedValue*) &$self;
	}
};
%extend StdFail_UndefinedValue {
	Standard_Integer __hash__() {
	return HashCode(*(Handle_Standard_Transient*)&$self,2147483647);
	}
};
%feature("shadow") StdFail_UndefinedValue::~StdFail_UndefinedValue %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StdFail_UndefinedValue {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StdFail_NotDone;
class StdFail_NotDone : public Standard_Failure {
	public:
		%feature("autodoc", "1");
		StdFail_NotDone();
		%feature("autodoc", "1");
		StdFail_NotDone(const char * AString);
		%feature("autodoc", "1");
		static		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		static		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		static		Handle_StdFail_NotDone NewInstance(const char * aMessage="");
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StdFail_NotDone {
	Handle_StdFail_NotDone GetHandle() {
	return *(Handle_StdFail_NotDone*) &$self;
	}
};
%extend StdFail_NotDone {
	Standard_Integer __hash__() {
	return HashCode(*(Handle_Standard_Transient*)&$self,2147483647);
	}
};
%feature("shadow") StdFail_NotDone::~StdFail_NotDone %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StdFail_NotDone {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StdFail_InfiniteSolutions;
class StdFail_InfiniteSolutions : public Standard_Failure {
	public:
		%feature("autodoc", "1");
		StdFail_InfiniteSolutions();
		%feature("autodoc", "1");
		StdFail_InfiniteSolutions(const char * AString);
		%feature("autodoc", "1");
		static		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		static		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		static		Handle_StdFail_InfiniteSolutions NewInstance(const char * aMessage="");
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StdFail_InfiniteSolutions {
	Handle_StdFail_InfiniteSolutions GetHandle() {
	return *(Handle_StdFail_InfiniteSolutions*) &$self;
	}
};
%extend StdFail_InfiniteSolutions {
	Standard_Integer __hash__() {
	return HashCode(*(Handle_Standard_Transient*)&$self,2147483647);
	}
};
%feature("shadow") StdFail_InfiniteSolutions::~StdFail_InfiniteSolutions %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StdFail_InfiniteSolutions {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StdFail_Undefined;
class StdFail_Undefined : public Standard_Failure {
	public:
		%feature("autodoc", "1");
		StdFail_Undefined();
		%feature("autodoc", "1");
		StdFail_Undefined(const char * AString);
		%feature("autodoc", "1");
		static		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		static		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		static		Handle_StdFail_Undefined NewInstance(const char * aMessage="");
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StdFail_Undefined {
	Handle_StdFail_Undefined GetHandle() {
	return *(Handle_StdFail_Undefined*) &$self;
	}
};
%extend StdFail_Undefined {
	Standard_Integer __hash__() {
	return HashCode(*(Handle_Standard_Transient*)&$self,2147483647);
	}
};
%feature("shadow") StdFail_Undefined::~StdFail_Undefined %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StdFail_Undefined {
	void _kill_pointed() {
		delete $self;
	}
};
