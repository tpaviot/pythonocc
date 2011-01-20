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

%module LProp
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include LProp_renames.i


%include LProp_required_python_modules.i


%include LProp_dependencies.i


%include LProp_headers.i


enum LProp_CIType {
	LProp_Inflection,
	LProp_MinCur,
	LProp_MaxCur,
	};

enum LProp_Status {
	LProp_Undecided,
	LProp_Undefined,
	LProp_Defined,
	LProp_Computed,
	};



%nodefaultctor Handle_LProp_SequenceNodeOfSequenceOfCIType;
class Handle_LProp_SequenceNodeOfSequenceOfCIType : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_LProp_SequenceNodeOfSequenceOfCIType();
		%feature("autodoc", "1");
		Handle_LProp_SequenceNodeOfSequenceOfCIType(const Handle_LProp_SequenceNodeOfSequenceOfCIType &aHandle);
		%feature("autodoc", "1");
		Handle_LProp_SequenceNodeOfSequenceOfCIType(const LProp_SequenceNodeOfSequenceOfCIType *anItem);
		%feature("autodoc", "1");
		Handle_LProp_SequenceNodeOfSequenceOfCIType & operator=(const Handle_LProp_SequenceNodeOfSequenceOfCIType &aHandle);
		%feature("autodoc", "1");
		Handle_LProp_SequenceNodeOfSequenceOfCIType & operator=(const LProp_SequenceNodeOfSequenceOfCIType *anItem);
		%feature("autodoc", "1");
		static		Handle_LProp_SequenceNodeOfSequenceOfCIType const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_LProp_SequenceNodeOfSequenceOfCIType {
	LProp_SequenceNodeOfSequenceOfCIType* GetObject() {
	return (LProp_SequenceNodeOfSequenceOfCIType*)$self->Access();
	}
};
%feature("shadow") Handle_LProp_SequenceNodeOfSequenceOfCIType::~Handle_LProp_SequenceNodeOfSequenceOfCIType %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_LProp_SequenceNodeOfSequenceOfCIType {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_LProp_BadContinuity;
class Handle_LProp_BadContinuity : public Handle_Standard_Failure {
	public:
		%feature("autodoc", "1");
		Handle_LProp_BadContinuity();
		%feature("autodoc", "1");
		Handle_LProp_BadContinuity(const Handle_LProp_BadContinuity &aHandle);
		%feature("autodoc", "1");
		Handle_LProp_BadContinuity(const LProp_BadContinuity *anItem);
		%feature("autodoc", "1");
		Handle_LProp_BadContinuity & operator=(const Handle_LProp_BadContinuity &aHandle);
		%feature("autodoc", "1");
		Handle_LProp_BadContinuity & operator=(const LProp_BadContinuity *anItem);
		%feature("autodoc", "1");
		static		Handle_LProp_BadContinuity const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_LProp_BadContinuity {
	LProp_BadContinuity* GetObject() {
	return (LProp_BadContinuity*)$self->Access();
	}
};
%feature("shadow") Handle_LProp_BadContinuity::~Handle_LProp_BadContinuity %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_LProp_BadContinuity {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_LProp_NotDefined;
class Handle_LProp_NotDefined : public Handle_Standard_Failure {
	public:
		%feature("autodoc", "1");
		Handle_LProp_NotDefined();
		%feature("autodoc", "1");
		Handle_LProp_NotDefined(const Handle_LProp_NotDefined &aHandle);
		%feature("autodoc", "1");
		Handle_LProp_NotDefined(const LProp_NotDefined *anItem);
		%feature("autodoc", "1");
		Handle_LProp_NotDefined & operator=(const Handle_LProp_NotDefined &aHandle);
		%feature("autodoc", "1");
		Handle_LProp_NotDefined & operator=(const LProp_NotDefined *anItem);
		%feature("autodoc", "1");
		static		Handle_LProp_NotDefined const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_LProp_NotDefined {
	LProp_NotDefined* GetObject() {
	return (LProp_NotDefined*)$self->Access();
	}
};
%feature("shadow") Handle_LProp_NotDefined::~Handle_LProp_NotDefined %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_LProp_NotDefined {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor LProp_SequenceNodeOfSequenceOfCIType;
class LProp_SequenceNodeOfSequenceOfCIType : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		LProp_SequenceNodeOfSequenceOfCIType(const LProp_CIType &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		LProp_CIType & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend LProp_SequenceNodeOfSequenceOfCIType {
	Handle_LProp_SequenceNodeOfSequenceOfCIType GetHandle() {
	return *(Handle_LProp_SequenceNodeOfSequenceOfCIType*) &$self;
	}
};
%extend LProp_SequenceNodeOfSequenceOfCIType {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") LProp_SequenceNodeOfSequenceOfCIType::~LProp_SequenceNodeOfSequenceOfCIType %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend LProp_SequenceNodeOfSequenceOfCIType {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor LProp_SequenceOfCIType;
class LProp_SequenceOfCIType : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		LProp_SequenceOfCIType();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const LProp_SequenceOfCIType & Assign(const LProp_SequenceOfCIType &Other);
		%feature("autodoc", "1");
		const LProp_SequenceOfCIType & operator=(const LProp_SequenceOfCIType &Other);
		%feature("autodoc", "1");
		void Append(const LProp_CIType &T);
		%feature("autodoc", "1");
		void Append(LProp_SequenceOfCIType & S);
		%feature("autodoc", "1");
		void Prepend(const LProp_CIType &T);
		%feature("autodoc", "1");
		void Prepend(LProp_SequenceOfCIType & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const LProp_CIType &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, LProp_SequenceOfCIType & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const LProp_CIType &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, LProp_SequenceOfCIType & S);
		%feature("autodoc", "1");
		const LProp_CIType & First() const;
		%feature("autodoc", "1");
		const LProp_CIType & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, LProp_SequenceOfCIType & S);
		%feature("autodoc", "1");
		const LProp_CIType & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const LProp_CIType & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const LProp_CIType &I);
		%feature("autodoc", "1");
		LProp_CIType & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		LProp_CIType & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") LProp_SequenceOfCIType::~LProp_SequenceOfCIType %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend LProp_SequenceOfCIType {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor LProp_AnalyticCurInf;
class LProp_AnalyticCurInf {
	public:
		%feature("autodoc", "1");
		LProp_AnalyticCurInf();
		%feature("autodoc", "1");
		void Perform(const GeomAbs_CurveType T, const Standard_Real UFirst, const Standard_Real ULast, LProp_CurAndInf & Result);

};
%feature("shadow") LProp_AnalyticCurInf::~LProp_AnalyticCurInf %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend LProp_AnalyticCurInf {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor LProp_CurAndInf;
class LProp_CurAndInf {
	public:
		%feature("autodoc", "1");
		LProp_CurAndInf();
		%feature("autodoc", "1");
		void AddInflection(const Standard_Real Param);
		%feature("autodoc", "1");
		void AddExtCur(const Standard_Real Param, const Standard_Boolean IsMin);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer NbPoints() const;
		%feature("autodoc", "1");
		Standard_Real Parameter(const Standard_Integer N) const;
		%feature("autodoc", "1");
		LProp_CIType Type(const Standard_Integer N) const;

};
%feature("shadow") LProp_CurAndInf::~LProp_CurAndInf %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend LProp_CurAndInf {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor LProp_NotDefined;
class LProp_NotDefined : public Standard_Failure {
	public:
		%feature("autodoc", "1");
		LProp_NotDefined();
		%feature("autodoc", "1");
		LProp_NotDefined(const char * AString);
		%feature("autodoc", "1");
		static		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		static		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		static		Handle_LProp_NotDefined NewInstance(const char * aMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend LProp_NotDefined {
	Handle_LProp_NotDefined GetHandle() {
	return *(Handle_LProp_NotDefined*) &$self;
	}
};
%extend LProp_NotDefined {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") LProp_NotDefined::~LProp_NotDefined %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend LProp_NotDefined {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor LProp_BadContinuity;
class LProp_BadContinuity : public Standard_Failure {
	public:
		%feature("autodoc", "1");
		LProp_BadContinuity();
		%feature("autodoc", "1");
		LProp_BadContinuity(const char * AString);
		%feature("autodoc", "1");
		static		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		static		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		static		Handle_LProp_BadContinuity NewInstance(const char * aMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend LProp_BadContinuity {
	Handle_LProp_BadContinuity GetHandle() {
	return *(Handle_LProp_BadContinuity*) &$self;
	}
};
%extend LProp_BadContinuity {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") LProp_BadContinuity::~LProp_BadContinuity %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend LProp_BadContinuity {
	void _kill_pointed() {
		delete $self;
	}
};
