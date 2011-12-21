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

%module DBC
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include DBC_renames.i


%include DBC_required_python_modules.i


%include DBC_dependencies.i


%include DBC_headers.i

typedef void * DBC_DBVArray;



%nodefaultctor Handle_DBC_VArrayNodeOfVArrayOfExtCharacter;
class Handle_DBC_VArrayNodeOfVArrayOfExtCharacter : public Handle_PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		Handle_DBC_VArrayNodeOfVArrayOfExtCharacter();
		%feature("autodoc", "1");
		Handle_DBC_VArrayNodeOfVArrayOfExtCharacter(const Handle_DBC_VArrayNodeOfVArrayOfExtCharacter &aHandle);
		%feature("autodoc", "1");
		Handle_DBC_VArrayNodeOfVArrayOfExtCharacter(const DBC_VArrayNodeOfVArrayOfExtCharacter *anItem);
		%feature("autodoc", "1");
		Handle_DBC_VArrayNodeOfVArrayOfExtCharacter & operator=(const Handle_DBC_VArrayNodeOfVArrayOfExtCharacter &aHandle);
		%feature("autodoc", "1");
		Handle_DBC_VArrayNodeOfVArrayOfExtCharacter & operator=(const DBC_VArrayNodeOfVArrayOfExtCharacter *anItem);
		%feature("autodoc", "1");
		static		Handle_DBC_VArrayNodeOfVArrayOfExtCharacter DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_DBC_VArrayNodeOfVArrayOfExtCharacter {
	DBC_VArrayNodeOfVArrayOfExtCharacter* GetObject() {
	return (DBC_VArrayNodeOfVArrayOfExtCharacter*)$self->Access();
	}
};
%feature("shadow") Handle_DBC_VArrayNodeOfVArrayOfExtCharacter::~Handle_DBC_VArrayNodeOfVArrayOfExtCharacter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_DBC_VArrayNodeOfVArrayOfExtCharacter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_DBC_VArrayNodeOfVArrayOfCharacter;
class Handle_DBC_VArrayNodeOfVArrayOfCharacter : public Handle_PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		Handle_DBC_VArrayNodeOfVArrayOfCharacter();
		%feature("autodoc", "1");
		Handle_DBC_VArrayNodeOfVArrayOfCharacter(const Handle_DBC_VArrayNodeOfVArrayOfCharacter &aHandle);
		%feature("autodoc", "1");
		Handle_DBC_VArrayNodeOfVArrayOfCharacter(const DBC_VArrayNodeOfVArrayOfCharacter *anItem);
		%feature("autodoc", "1");
		Handle_DBC_VArrayNodeOfVArrayOfCharacter & operator=(const Handle_DBC_VArrayNodeOfVArrayOfCharacter &aHandle);
		%feature("autodoc", "1");
		Handle_DBC_VArrayNodeOfVArrayOfCharacter & operator=(const DBC_VArrayNodeOfVArrayOfCharacter *anItem);
		%feature("autodoc", "1");
		static		Handle_DBC_VArrayNodeOfVArrayOfCharacter DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_DBC_VArrayNodeOfVArrayOfCharacter {
	DBC_VArrayNodeOfVArrayOfCharacter* GetObject() {
	return (DBC_VArrayNodeOfVArrayOfCharacter*)$self->Access();
	}
};
%feature("shadow") Handle_DBC_VArrayNodeOfVArrayOfCharacter::~Handle_DBC_VArrayNodeOfVArrayOfCharacter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_DBC_VArrayNodeOfVArrayOfCharacter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_DBC_VArrayNodeOfVArrayOfInteger;
class Handle_DBC_VArrayNodeOfVArrayOfInteger : public Handle_PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		Handle_DBC_VArrayNodeOfVArrayOfInteger();
		%feature("autodoc", "1");
		Handle_DBC_VArrayNodeOfVArrayOfInteger(const Handle_DBC_VArrayNodeOfVArrayOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_DBC_VArrayNodeOfVArrayOfInteger(const DBC_VArrayNodeOfVArrayOfInteger *anItem);
		%feature("autodoc", "1");
		Handle_DBC_VArrayNodeOfVArrayOfInteger & operator=(const Handle_DBC_VArrayNodeOfVArrayOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_DBC_VArrayNodeOfVArrayOfInteger & operator=(const DBC_VArrayNodeOfVArrayOfInteger *anItem);
		%feature("autodoc", "1");
		static		Handle_DBC_VArrayNodeOfVArrayOfInteger DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_DBC_VArrayNodeOfVArrayOfInteger {
	DBC_VArrayNodeOfVArrayOfInteger* GetObject() {
	return (DBC_VArrayNodeOfVArrayOfInteger*)$self->Access();
	}
};
%feature("shadow") Handle_DBC_VArrayNodeOfVArrayOfInteger::~Handle_DBC_VArrayNodeOfVArrayOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_DBC_VArrayNodeOfVArrayOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_DBC_VArrayNodeOfVArrayOfReal;
class Handle_DBC_VArrayNodeOfVArrayOfReal : public Handle_PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		Handle_DBC_VArrayNodeOfVArrayOfReal();
		%feature("autodoc", "1");
		Handle_DBC_VArrayNodeOfVArrayOfReal(const Handle_DBC_VArrayNodeOfVArrayOfReal &aHandle);
		%feature("autodoc", "1");
		Handle_DBC_VArrayNodeOfVArrayOfReal(const DBC_VArrayNodeOfVArrayOfReal *anItem);
		%feature("autodoc", "1");
		Handle_DBC_VArrayNodeOfVArrayOfReal & operator=(const Handle_DBC_VArrayNodeOfVArrayOfReal &aHandle);
		%feature("autodoc", "1");
		Handle_DBC_VArrayNodeOfVArrayOfReal & operator=(const DBC_VArrayNodeOfVArrayOfReal *anItem);
		%feature("autodoc", "1");
		static		Handle_DBC_VArrayNodeOfVArrayOfReal DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_DBC_VArrayNodeOfVArrayOfReal {
	DBC_VArrayNodeOfVArrayOfReal* GetObject() {
	return (DBC_VArrayNodeOfVArrayOfReal*)$self->Access();
	}
};
%feature("shadow") Handle_DBC_VArrayNodeOfVArrayOfReal::~Handle_DBC_VArrayNodeOfVArrayOfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_DBC_VArrayNodeOfVArrayOfReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor DBC_VArrayNodeOfVArrayOfExtCharacter;
class DBC_VArrayNodeOfVArrayOfExtCharacter : public PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		DBC_VArrayNodeOfVArrayOfExtCharacter();
		%feature("autodoc", "1");
		DBC_VArrayNodeOfVArrayOfExtCharacter(const Standard_ExtCharacter &aValue);
		%feature("autodoc", "1");
		void SetValue(const Standard_ExtCharacter &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;
		%feature("autodoc", "1");
		DBC_VArrayNodeOfVArrayOfExtCharacter(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_ExtCharacter _CSFDB_GetDBC_VArrayNodeOfVArrayOfExtCharactermyValue() const;
		%feature("autodoc", "1");
		void _CSFDB_SetDBC_VArrayNodeOfVArrayOfExtCharactermyValue(const Standard_ExtCharacter p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend DBC_VArrayNodeOfVArrayOfExtCharacter {
	Handle_DBC_VArrayNodeOfVArrayOfExtCharacter GetHandle() {
	return *(Handle_DBC_VArrayNodeOfVArrayOfExtCharacter*) &$self;
	}
};
%extend DBC_VArrayNodeOfVArrayOfExtCharacter {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") DBC_VArrayNodeOfVArrayOfExtCharacter::~DBC_VArrayNodeOfVArrayOfExtCharacter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend DBC_VArrayNodeOfVArrayOfExtCharacter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor DBC_VArrayNodeOfVArrayOfCharacter;
class DBC_VArrayNodeOfVArrayOfCharacter : public PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		DBC_VArrayNodeOfVArrayOfCharacter();
		%feature("autodoc", "1");
		DBC_VArrayNodeOfVArrayOfCharacter(const Standard_Character &aValue);
		%feature("autodoc", "1");
		void SetValue(const Standard_Character &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;
		%feature("autodoc", "1");
		DBC_VArrayNodeOfVArrayOfCharacter(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Character _CSFDB_GetDBC_VArrayNodeOfVArrayOfCharactermyValue() const;
		%feature("autodoc", "1");
		void _CSFDB_SetDBC_VArrayNodeOfVArrayOfCharactermyValue(const Standard_Character p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend DBC_VArrayNodeOfVArrayOfCharacter {
	Handle_DBC_VArrayNodeOfVArrayOfCharacter GetHandle() {
	return *(Handle_DBC_VArrayNodeOfVArrayOfCharacter*) &$self;
	}
};
%extend DBC_VArrayNodeOfVArrayOfCharacter {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") DBC_VArrayNodeOfVArrayOfCharacter::~DBC_VArrayNodeOfVArrayOfCharacter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend DBC_VArrayNodeOfVArrayOfCharacter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor DBC_VArrayTNodeOfVArrayOfCharacter;
class DBC_VArrayTNodeOfVArrayOfCharacter {
	public:
		%feature("autodoc", "1");
		DBC_VArrayTNodeOfVArrayOfCharacter();
		%feature("autodoc", "1");
		DBC_VArrayTNodeOfVArrayOfCharacter(const Standard_Character &aValue);
		%feature("autodoc", "1");
		void SetValue(const Standard_Character &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;

};
%feature("shadow") DBC_VArrayTNodeOfVArrayOfCharacter::~DBC_VArrayTNodeOfVArrayOfCharacter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend DBC_VArrayTNodeOfVArrayOfCharacter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor DBC_BaseArray;
class DBC_BaseArray {
	public:
		%feature("autodoc", "1");
		DBC_BaseArray();
		%feature("autodoc", "1");
		DBC_BaseArray(const Standard_Integer Size);
		%feature("autodoc", "1");
		DBC_BaseArray(const DBC_BaseArray &BaseArray);
		%feature("autodoc", "1");
		virtual		void Delete();
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		Standard_Address Lock() const;
		%feature("autodoc", "1");
		void Unlock() const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string ShallowDumpToString() {
			std::stringstream s;
			self->ShallowDump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetDBC_BaseArraymySize() const;
		%feature("autodoc", "1");
		void _CSFDB_SetDBC_BaseArraymySize(const Standard_Integer p);
		%feature("autodoc", "1");
		DBC_DBVArray _CSFDB_GetDBC_BaseArraymyData() const;
		%feature("autodoc", "1");
		void _CSFDB_SetDBC_BaseArraymyData(const DBC_DBVArray p);

};
%feature("shadow") DBC_BaseArray::~DBC_BaseArray %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend DBC_BaseArray {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor DBC_VArrayOfExtCharacter;
class DBC_VArrayOfExtCharacter : public DBC_BaseArray {
	public:
		%feature("autodoc", "1");
		DBC_VArrayOfExtCharacter();
		%feature("autodoc", "1");
		DBC_VArrayOfExtCharacter(const Standard_Integer Size);
		%feature("autodoc", "1");
		DBC_VArrayOfExtCharacter(const DBC_VArrayOfExtCharacter &Varray);
		%feature("autodoc", "1");
		void Resize(const Standard_Integer Size);
		%feature("autodoc", "1");
		void Assign(const DBC_VArrayOfExtCharacter &Other);
		%feature("autodoc", "1");
		void operator=(const DBC_VArrayOfExtCharacter &Other);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Standard_ExtCharacter &Value);
		%feature("autodoc", "1");
		Standard_ExtCharacter & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_ExtCharacter & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void Destroy();

};
%feature("shadow") DBC_VArrayOfExtCharacter::~DBC_VArrayOfExtCharacter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend DBC_VArrayOfExtCharacter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor DBC_VArrayTNodeOfVArrayOfInteger;
class DBC_VArrayTNodeOfVArrayOfInteger {
	public:
		%feature("autodoc", "1");
		DBC_VArrayTNodeOfVArrayOfInteger();
		%feature("autodoc", "1");
		DBC_VArrayTNodeOfVArrayOfInteger(const Standard_Integer &aValue);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;

};
%feature("shadow") DBC_VArrayTNodeOfVArrayOfInteger::~DBC_VArrayTNodeOfVArrayOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend DBC_VArrayTNodeOfVArrayOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor DBC_VArrayTNodeOfVArrayOfExtCharacter;
class DBC_VArrayTNodeOfVArrayOfExtCharacter {
	public:
		%feature("autodoc", "1");
		DBC_VArrayTNodeOfVArrayOfExtCharacter();
		%feature("autodoc", "1");
		DBC_VArrayTNodeOfVArrayOfExtCharacter(const Standard_ExtCharacter &aValue);
		%feature("autodoc", "1");
		void SetValue(const Standard_ExtCharacter &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;

};
%feature("shadow") DBC_VArrayTNodeOfVArrayOfExtCharacter::~DBC_VArrayTNodeOfVArrayOfExtCharacter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend DBC_VArrayTNodeOfVArrayOfExtCharacter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor DBC_VArrayOfReal;
class DBC_VArrayOfReal : public DBC_BaseArray {
	public:
		%feature("autodoc", "1");
		DBC_VArrayOfReal();
		%feature("autodoc", "1");
		DBC_VArrayOfReal(const Standard_Integer Size);
		%feature("autodoc", "1");
		DBC_VArrayOfReal(const DBC_VArrayOfReal &Varray);
		%feature("autodoc", "1");
		void Resize(const Standard_Integer Size);
		%feature("autodoc", "1");
		void Assign(const DBC_VArrayOfReal &Other);
		%feature("autodoc", "1");
		void operator=(const DBC_VArrayOfReal &Other);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Standard_Real &Value);
		%feature("autodoc","1");
		%extend {
				Standard_Real GetValue(const Standard_Integer Index) {
				return (Standard_Real) $self->Value(Index);
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetValue(Standard_Real value ,const Standard_Integer Index) {
				$self->Value(Index)=value;
				}
		};
		%feature("autodoc", "1");
		Standard_Real & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void Destroy();

};
%feature("shadow") DBC_VArrayOfReal::~DBC_VArrayOfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend DBC_VArrayOfReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor DBC_VArrayOfCharacter;
class DBC_VArrayOfCharacter : public DBC_BaseArray {
	public:
		%feature("autodoc", "1");
		DBC_VArrayOfCharacter();
		%feature("autodoc", "1");
		DBC_VArrayOfCharacter(const Standard_Integer Size);
		%feature("autodoc", "1");
		DBC_VArrayOfCharacter(const DBC_VArrayOfCharacter &Varray);
		%feature("autodoc", "1");
		void Resize(const Standard_Integer Size);
		%feature("autodoc", "1");
		void Assign(const DBC_VArrayOfCharacter &Other);
		%feature("autodoc", "1");
		void operator=(const DBC_VArrayOfCharacter &Other);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Standard_Character &Value);
		%feature("autodoc", "1");
		Standard_Character & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Character & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void Destroy();

};
%feature("shadow") DBC_VArrayOfCharacter::~DBC_VArrayOfCharacter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend DBC_VArrayOfCharacter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor DBC_VArrayOfInteger;
class DBC_VArrayOfInteger : public DBC_BaseArray {
	public:
		%feature("autodoc", "1");
		DBC_VArrayOfInteger();
		%feature("autodoc", "1");
		DBC_VArrayOfInteger(const Standard_Integer Size);
		%feature("autodoc", "1");
		DBC_VArrayOfInteger(const DBC_VArrayOfInteger &Varray);
		%feature("autodoc", "1");
		void Resize(const Standard_Integer Size);
		%feature("autodoc", "1");
		void Assign(const DBC_VArrayOfInteger &Other);
		%feature("autodoc", "1");
		void operator=(const DBC_VArrayOfInteger &Other);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Standard_Integer &Value);
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetValue(const Standard_Integer Index) {
				return (Standard_Integer) $self->Value(Index);
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetValue(Standard_Integer value ,const Standard_Integer Index) {
				$self->Value(Index)=value;
				}
		};
		%feature("autodoc", "1");
		Standard_Integer & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void Destroy();

};
%feature("shadow") DBC_VArrayOfInteger::~DBC_VArrayOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend DBC_VArrayOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor DBC_VArrayNodeOfVArrayOfReal;
class DBC_VArrayNodeOfVArrayOfReal : public PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		DBC_VArrayNodeOfVArrayOfReal();
		%feature("autodoc", "1");
		DBC_VArrayNodeOfVArrayOfReal(const Standard_Real &aValue);
		%feature("autodoc", "1");
		void SetValue(const Standard_Real &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;
		%feature("autodoc", "1");
		DBC_VArrayNodeOfVArrayOfReal(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Real _CSFDB_GetDBC_VArrayNodeOfVArrayOfRealmyValue() const;
		%feature("autodoc", "1");
		void _CSFDB_SetDBC_VArrayNodeOfVArrayOfRealmyValue(const Standard_Real p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend DBC_VArrayNodeOfVArrayOfReal {
	Handle_DBC_VArrayNodeOfVArrayOfReal GetHandle() {
	return *(Handle_DBC_VArrayNodeOfVArrayOfReal*) &$self;
	}
};
%extend DBC_VArrayNodeOfVArrayOfReal {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") DBC_VArrayNodeOfVArrayOfReal::~DBC_VArrayNodeOfVArrayOfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend DBC_VArrayNodeOfVArrayOfReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor DBC_VArrayTNodeOfVArrayOfReal;
class DBC_VArrayTNodeOfVArrayOfReal {
	public:
		%feature("autodoc", "1");
		DBC_VArrayTNodeOfVArrayOfReal();
		%feature("autodoc", "1");
		DBC_VArrayTNodeOfVArrayOfReal(const Standard_Real &aValue);
		%feature("autodoc", "1");
		void SetValue(const Standard_Real &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;

};
%feature("shadow") DBC_VArrayTNodeOfVArrayOfReal::~DBC_VArrayTNodeOfVArrayOfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend DBC_VArrayTNodeOfVArrayOfReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor DBC_VArrayNodeOfVArrayOfInteger;
class DBC_VArrayNodeOfVArrayOfInteger : public PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		DBC_VArrayNodeOfVArrayOfInteger();
		%feature("autodoc", "1");
		DBC_VArrayNodeOfVArrayOfInteger(const Standard_Integer &aValue);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;
		%feature("autodoc", "1");
		DBC_VArrayNodeOfVArrayOfInteger(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetDBC_VArrayNodeOfVArrayOfIntegermyValue() const;
		%feature("autodoc", "1");
		void _CSFDB_SetDBC_VArrayNodeOfVArrayOfIntegermyValue(const Standard_Integer p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend DBC_VArrayNodeOfVArrayOfInteger {
	Handle_DBC_VArrayNodeOfVArrayOfInteger GetHandle() {
	return *(Handle_DBC_VArrayNodeOfVArrayOfInteger*) &$self;
	}
};
%extend DBC_VArrayNodeOfVArrayOfInteger {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") DBC_VArrayNodeOfVArrayOfInteger::~DBC_VArrayNodeOfVArrayOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend DBC_VArrayNodeOfVArrayOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};
