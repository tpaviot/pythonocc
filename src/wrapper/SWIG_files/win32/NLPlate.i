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

%module NLPlate
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include NLPlate_renames.i


%include NLPlate_required_python_modules.i


%include NLPlate_dependencies.i


%include NLPlate_headers.i




%nodefaultctor Handle_NLPlate_HGPPConstraint;
class Handle_NLPlate_HGPPConstraint : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_NLPlate_HGPPConstraint();
		%feature("autodoc", "1");
		Handle_NLPlate_HGPPConstraint(const Handle_NLPlate_HGPPConstraint &aHandle);
		%feature("autodoc", "1");
		Handle_NLPlate_HGPPConstraint(const NLPlate_HGPPConstraint *anItem);
		%feature("autodoc", "1");
		Handle_NLPlate_HGPPConstraint & operator=(const Handle_NLPlate_HGPPConstraint &aHandle);
		%feature("autodoc", "1");
		Handle_NLPlate_HGPPConstraint & operator=(const NLPlate_HGPPConstraint *anItem);
		%feature("autodoc", "1");
		static		Handle_NLPlate_HGPPConstraint DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_NLPlate_HGPPConstraint {
	NLPlate_HGPPConstraint* GetObject() {
	return (NLPlate_HGPPConstraint*)$self->Access();
	}
};
%feature("shadow") Handle_NLPlate_HGPPConstraint::~Handle_NLPlate_HGPPConstraint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_NLPlate_HGPPConstraint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_NLPlate_HPG0Constraint;
class Handle_NLPlate_HPG0Constraint : public Handle_NLPlate_HGPPConstraint {
	public:
		%feature("autodoc", "1");
		Handle_NLPlate_HPG0Constraint();
		%feature("autodoc", "1");
		Handle_NLPlate_HPG0Constraint(const Handle_NLPlate_HPG0Constraint &aHandle);
		%feature("autodoc", "1");
		Handle_NLPlate_HPG0Constraint(const NLPlate_HPG0Constraint *anItem);
		%feature("autodoc", "1");
		Handle_NLPlate_HPG0Constraint & operator=(const Handle_NLPlate_HPG0Constraint &aHandle);
		%feature("autodoc", "1");
		Handle_NLPlate_HPG0Constraint & operator=(const NLPlate_HPG0Constraint *anItem);
		%feature("autodoc", "1");
		static		Handle_NLPlate_HPG0Constraint DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_NLPlate_HPG0Constraint {
	NLPlate_HPG0Constraint* GetObject() {
	return (NLPlate_HPG0Constraint*)$self->Access();
	}
};
%feature("shadow") Handle_NLPlate_HPG0Constraint::~Handle_NLPlate_HPG0Constraint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_NLPlate_HPG0Constraint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_NLPlate_HPG0G1Constraint;
class Handle_NLPlate_HPG0G1Constraint : public Handle_NLPlate_HPG0Constraint {
	public:
		%feature("autodoc", "1");
		Handle_NLPlate_HPG0G1Constraint();
		%feature("autodoc", "1");
		Handle_NLPlate_HPG0G1Constraint(const Handle_NLPlate_HPG0G1Constraint &aHandle);
		%feature("autodoc", "1");
		Handle_NLPlate_HPG0G1Constraint(const NLPlate_HPG0G1Constraint *anItem);
		%feature("autodoc", "1");
		Handle_NLPlate_HPG0G1Constraint & operator=(const Handle_NLPlate_HPG0G1Constraint &aHandle);
		%feature("autodoc", "1");
		Handle_NLPlate_HPG0G1Constraint & operator=(const NLPlate_HPG0G1Constraint *anItem);
		%feature("autodoc", "1");
		static		Handle_NLPlate_HPG0G1Constraint DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_NLPlate_HPG0G1Constraint {
	NLPlate_HPG0G1Constraint* GetObject() {
	return (NLPlate_HPG0G1Constraint*)$self->Access();
	}
};
%feature("shadow") Handle_NLPlate_HPG0G1Constraint::~Handle_NLPlate_HPG0G1Constraint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_NLPlate_HPG0G1Constraint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_NLPlate_HPG0G2Constraint;
class Handle_NLPlate_HPG0G2Constraint : public Handle_NLPlate_HPG0G1Constraint {
	public:
		%feature("autodoc", "1");
		Handle_NLPlate_HPG0G2Constraint();
		%feature("autodoc", "1");
		Handle_NLPlate_HPG0G2Constraint(const Handle_NLPlate_HPG0G2Constraint &aHandle);
		%feature("autodoc", "1");
		Handle_NLPlate_HPG0G2Constraint(const NLPlate_HPG0G2Constraint *anItem);
		%feature("autodoc", "1");
		Handle_NLPlate_HPG0G2Constraint & operator=(const Handle_NLPlate_HPG0G2Constraint &aHandle);
		%feature("autodoc", "1");
		Handle_NLPlate_HPG0G2Constraint & operator=(const NLPlate_HPG0G2Constraint *anItem);
		%feature("autodoc", "1");
		static		Handle_NLPlate_HPG0G2Constraint DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_NLPlate_HPG0G2Constraint {
	NLPlate_HPG0G2Constraint* GetObject() {
	return (NLPlate_HPG0G2Constraint*)$self->Access();
	}
};
%feature("shadow") Handle_NLPlate_HPG0G2Constraint::~Handle_NLPlate_HPG0G2Constraint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_NLPlate_HPG0G2Constraint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_NLPlate_SequenceNodeOfSequenceOfHGPPConstraint;
class Handle_NLPlate_SequenceNodeOfSequenceOfHGPPConstraint : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_NLPlate_SequenceNodeOfSequenceOfHGPPConstraint();
		%feature("autodoc", "1");
		Handle_NLPlate_SequenceNodeOfSequenceOfHGPPConstraint(const Handle_NLPlate_SequenceNodeOfSequenceOfHGPPConstraint &aHandle);
		%feature("autodoc", "1");
		Handle_NLPlate_SequenceNodeOfSequenceOfHGPPConstraint(const NLPlate_SequenceNodeOfSequenceOfHGPPConstraint *anItem);
		%feature("autodoc", "1");
		Handle_NLPlate_SequenceNodeOfSequenceOfHGPPConstraint & operator=(const Handle_NLPlate_SequenceNodeOfSequenceOfHGPPConstraint &aHandle);
		%feature("autodoc", "1");
		Handle_NLPlate_SequenceNodeOfSequenceOfHGPPConstraint & operator=(const NLPlate_SequenceNodeOfSequenceOfHGPPConstraint *anItem);
		%feature("autodoc", "1");
		static		Handle_NLPlate_SequenceNodeOfSequenceOfHGPPConstraint DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_NLPlate_SequenceNodeOfSequenceOfHGPPConstraint {
	NLPlate_SequenceNodeOfSequenceOfHGPPConstraint* GetObject() {
	return (NLPlate_SequenceNodeOfSequenceOfHGPPConstraint*)$self->Access();
	}
};
%feature("shadow") Handle_NLPlate_SequenceNodeOfSequenceOfHGPPConstraint::~Handle_NLPlate_SequenceNodeOfSequenceOfHGPPConstraint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_NLPlate_SequenceNodeOfSequenceOfHGPPConstraint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_NLPlate_HPG1Constraint;
class Handle_NLPlate_HPG1Constraint : public Handle_NLPlate_HGPPConstraint {
	public:
		%feature("autodoc", "1");
		Handle_NLPlate_HPG1Constraint();
		%feature("autodoc", "1");
		Handle_NLPlate_HPG1Constraint(const Handle_NLPlate_HPG1Constraint &aHandle);
		%feature("autodoc", "1");
		Handle_NLPlate_HPG1Constraint(const NLPlate_HPG1Constraint *anItem);
		%feature("autodoc", "1");
		Handle_NLPlate_HPG1Constraint & operator=(const Handle_NLPlate_HPG1Constraint &aHandle);
		%feature("autodoc", "1");
		Handle_NLPlate_HPG1Constraint & operator=(const NLPlate_HPG1Constraint *anItem);
		%feature("autodoc", "1");
		static		Handle_NLPlate_HPG1Constraint DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_NLPlate_HPG1Constraint {
	NLPlate_HPG1Constraint* GetObject() {
	return (NLPlate_HPG1Constraint*)$self->Access();
	}
};
%feature("shadow") Handle_NLPlate_HPG1Constraint::~Handle_NLPlate_HPG1Constraint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_NLPlate_HPG1Constraint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_NLPlate_HPG2Constraint;
class Handle_NLPlate_HPG2Constraint : public Handle_NLPlate_HPG1Constraint {
	public:
		%feature("autodoc", "1");
		Handle_NLPlate_HPG2Constraint();
		%feature("autodoc", "1");
		Handle_NLPlate_HPG2Constraint(const Handle_NLPlate_HPG2Constraint &aHandle);
		%feature("autodoc", "1");
		Handle_NLPlate_HPG2Constraint(const NLPlate_HPG2Constraint *anItem);
		%feature("autodoc", "1");
		Handle_NLPlate_HPG2Constraint & operator=(const Handle_NLPlate_HPG2Constraint &aHandle);
		%feature("autodoc", "1");
		Handle_NLPlate_HPG2Constraint & operator=(const NLPlate_HPG2Constraint *anItem);
		%feature("autodoc", "1");
		static		Handle_NLPlate_HPG2Constraint DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_NLPlate_HPG2Constraint {
	NLPlate_HPG2Constraint* GetObject() {
	return (NLPlate_HPG2Constraint*)$self->Access();
	}
};
%feature("shadow") Handle_NLPlate_HPG2Constraint::~Handle_NLPlate_HPG2Constraint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_NLPlate_HPG2Constraint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_NLPlate_HPG3Constraint;
class Handle_NLPlate_HPG3Constraint : public Handle_NLPlate_HPG2Constraint {
	public:
		%feature("autodoc", "1");
		Handle_NLPlate_HPG3Constraint();
		%feature("autodoc", "1");
		Handle_NLPlate_HPG3Constraint(const Handle_NLPlate_HPG3Constraint &aHandle);
		%feature("autodoc", "1");
		Handle_NLPlate_HPG3Constraint(const NLPlate_HPG3Constraint *anItem);
		%feature("autodoc", "1");
		Handle_NLPlate_HPG3Constraint & operator=(const Handle_NLPlate_HPG3Constraint &aHandle);
		%feature("autodoc", "1");
		Handle_NLPlate_HPG3Constraint & operator=(const NLPlate_HPG3Constraint *anItem);
		%feature("autodoc", "1");
		static		Handle_NLPlate_HPG3Constraint DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_NLPlate_HPG3Constraint {
	NLPlate_HPG3Constraint* GetObject() {
	return (NLPlate_HPG3Constraint*)$self->Access();
	}
};
%feature("shadow") Handle_NLPlate_HPG3Constraint::~Handle_NLPlate_HPG3Constraint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_NLPlate_HPG3Constraint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_NLPlate_StackNodeOfStackOfPlate;
class Handle_NLPlate_StackNodeOfStackOfPlate : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_NLPlate_StackNodeOfStackOfPlate();
		%feature("autodoc", "1");
		Handle_NLPlate_StackNodeOfStackOfPlate(const Handle_NLPlate_StackNodeOfStackOfPlate &aHandle);
		%feature("autodoc", "1");
		Handle_NLPlate_StackNodeOfStackOfPlate(const NLPlate_StackNodeOfStackOfPlate *anItem);
		%feature("autodoc", "1");
		Handle_NLPlate_StackNodeOfStackOfPlate & operator=(const Handle_NLPlate_StackNodeOfStackOfPlate &aHandle);
		%feature("autodoc", "1");
		Handle_NLPlate_StackNodeOfStackOfPlate & operator=(const NLPlate_StackNodeOfStackOfPlate *anItem);
		%feature("autodoc", "1");
		static		Handle_NLPlate_StackNodeOfStackOfPlate DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_NLPlate_StackNodeOfStackOfPlate {
	NLPlate_StackNodeOfStackOfPlate* GetObject() {
	return (NLPlate_StackNodeOfStackOfPlate*)$self->Access();
	}
};
%feature("shadow") Handle_NLPlate_StackNodeOfStackOfPlate::~Handle_NLPlate_StackNodeOfStackOfPlate %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_NLPlate_StackNodeOfStackOfPlate {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_NLPlate_HPG0G3Constraint;
class Handle_NLPlate_HPG0G3Constraint : public Handle_NLPlate_HPG0G2Constraint {
	public:
		%feature("autodoc", "1");
		Handle_NLPlate_HPG0G3Constraint();
		%feature("autodoc", "1");
		Handle_NLPlate_HPG0G3Constraint(const Handle_NLPlate_HPG0G3Constraint &aHandle);
		%feature("autodoc", "1");
		Handle_NLPlate_HPG0G3Constraint(const NLPlate_HPG0G3Constraint *anItem);
		%feature("autodoc", "1");
		Handle_NLPlate_HPG0G3Constraint & operator=(const Handle_NLPlate_HPG0G3Constraint &aHandle);
		%feature("autodoc", "1");
		Handle_NLPlate_HPG0G3Constraint & operator=(const NLPlate_HPG0G3Constraint *anItem);
		%feature("autodoc", "1");
		static		Handle_NLPlate_HPG0G3Constraint DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_NLPlate_HPG0G3Constraint {
	NLPlate_HPG0G3Constraint* GetObject() {
	return (NLPlate_HPG0G3Constraint*)$self->Access();
	}
};
%feature("shadow") Handle_NLPlate_HPG0G3Constraint::~Handle_NLPlate_HPG0G3Constraint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_NLPlate_HPG0G3Constraint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NLPlate_StackIteratorOfStackOfPlate;
class NLPlate_StackIteratorOfStackOfPlate {
	public:
		%feature("autodoc", "1");
		NLPlate_StackIteratorOfStackOfPlate();
		%feature("autodoc", "1");
		NLPlate_StackIteratorOfStackOfPlate(const NLPlate_StackOfPlate &S);
		%feature("autodoc", "1");
		void Initialize(const NLPlate_StackOfPlate &S);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		const Plate_Plate & Value() const;

};
%feature("shadow") NLPlate_StackIteratorOfStackOfPlate::~NLPlate_StackIteratorOfStackOfPlate %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NLPlate_StackIteratorOfStackOfPlate {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NLPlate_SequenceOfHGPPConstraint;
class NLPlate_SequenceOfHGPPConstraint : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		NLPlate_SequenceOfHGPPConstraint();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const NLPlate_SequenceOfHGPPConstraint & Assign(const NLPlate_SequenceOfHGPPConstraint &Other);
		%feature("autodoc", "1");
		const NLPlate_SequenceOfHGPPConstraint & operator=(const NLPlate_SequenceOfHGPPConstraint &Other);
		%feature("autodoc", "1");
		void Append(const Handle_NLPlate_HGPPConstraint &T);
		%feature("autodoc", "1");
		void Append(NLPlate_SequenceOfHGPPConstraint & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_NLPlate_HGPPConstraint &T);
		%feature("autodoc", "1");
		void Prepend(NLPlate_SequenceOfHGPPConstraint & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_NLPlate_HGPPConstraint &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, NLPlate_SequenceOfHGPPConstraint & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_NLPlate_HGPPConstraint &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, NLPlate_SequenceOfHGPPConstraint & S);
		%feature("autodoc", "1");
		const Handle_NLPlate_HGPPConstraint & First() const;
		%feature("autodoc", "1");
		const Handle_NLPlate_HGPPConstraint & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, NLPlate_SequenceOfHGPPConstraint & S);
		%feature("autodoc", "1");
		const Handle_NLPlate_HGPPConstraint & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_NLPlate_HGPPConstraint & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_NLPlate_HGPPConstraint &I);
		%feature("autodoc", "1");
		Handle_NLPlate_HGPPConstraint & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_NLPlate_HGPPConstraint & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") NLPlate_SequenceOfHGPPConstraint::~NLPlate_SequenceOfHGPPConstraint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NLPlate_SequenceOfHGPPConstraint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NLPlate_HGPPConstraint;
class NLPlate_HGPPConstraint : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		virtual		void SetUVFreeSliding(const Standard_Boolean UVFree);
		%feature("autodoc", "1");
		virtual		void SetIncrementalLoadAllowed(const Standard_Boolean ILA);
		%feature("autodoc", "1");
		virtual		void SetActiveOrder(const Standard_Integer ActiveOrder);
		%feature("autodoc", "1");
		virtual		void SetUV(const gp_XY UV);
		%feature("autodoc", "1");
		virtual		void SetOrientation(const Standard_Integer Orient=0);
		%feature("autodoc", "1");
		virtual		void SetG0Criterion(const Standard_Real TolDist);
		%feature("autodoc", "1");
		virtual		void SetG1Criterion(const Standard_Real TolAng);
		%feature("autodoc", "1");
		virtual		void SetG2Criterion(const Standard_Real TolCurv);
		%feature("autodoc", "1");
		virtual		void SetG3Criterion(const Standard_Real TolG3);
		%feature("autodoc", "1");
		virtual		Standard_Boolean UVFreeSliding() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IncrementalLoadAllowed() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer ActiveOrder() const;
		%feature("autodoc", "1");
		virtual		const gp_XY  UV() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer Orientation();
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsG0() const;
		%feature("autodoc", "1");
		virtual		const gp_XYZ  G0Target() const;
		%feature("autodoc", "1");
		virtual		const Plate_D1 & G1Target() const;
		%feature("autodoc", "1");
		virtual		const Plate_D2 & G2Target() const;
		%feature("autodoc", "1");
		virtual		const Plate_D3 & G3Target() const;
		%feature("autodoc", "1");
		virtual		Standard_Real G0Criterion() const;
		%feature("autodoc", "1");
		virtual		Standard_Real G1Criterion() const;
		%feature("autodoc", "1");
		virtual		Standard_Real G2Criterion() const;
		%feature("autodoc", "1");
		virtual		Standard_Real G3Criterion() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend NLPlate_HGPPConstraint {
	Handle_NLPlate_HGPPConstraint GetHandle() {
	return *(Handle_NLPlate_HGPPConstraint*) &$self;
	}
};
%extend NLPlate_HGPPConstraint {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") NLPlate_HGPPConstraint::~NLPlate_HGPPConstraint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NLPlate_HGPPConstraint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NLPlate_HPG0Constraint;
class NLPlate_HPG0Constraint : public NLPlate_HGPPConstraint {
	public:
		%feature("autodoc", "1");
		NLPlate_HPG0Constraint(const gp_XY UV, const gp_XYZ Value);

};
%extend NLPlate_HPG0Constraint {
	Handle_NLPlate_HPG0Constraint GetHandle() {
	return *(Handle_NLPlate_HPG0Constraint*) &$self;
	}
};
%extend NLPlate_HPG0Constraint {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") NLPlate_HPG0Constraint::~NLPlate_HPG0Constraint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NLPlate_HPG0Constraint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NLPlate_HPG0G1Constraint;
class NLPlate_HPG0G1Constraint : public NLPlate_HPG0Constraint {
	public:
		%feature("autodoc", "1");
		NLPlate_HPG0G1Constraint(const gp_XY UV, const gp_XYZ Value, const Plate_D1 &D1T);

};
%extend NLPlate_HPG0G1Constraint {
	Handle_NLPlate_HPG0G1Constraint GetHandle() {
	return *(Handle_NLPlate_HPG0G1Constraint*) &$self;
	}
};
%extend NLPlate_HPG0G1Constraint {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") NLPlate_HPG0G1Constraint::~NLPlate_HPG0G1Constraint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NLPlate_HPG0G1Constraint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NLPlate_HPG0G2Constraint;
class NLPlate_HPG0G2Constraint : public NLPlate_HPG0G1Constraint {
	public:
		%feature("autodoc", "1");
		NLPlate_HPG0G2Constraint(const gp_XY UV, const gp_XYZ Value, const Plate_D1 &D1T, const Plate_D2 &D2T);

};
%extend NLPlate_HPG0G2Constraint {
	Handle_NLPlate_HPG0G2Constraint GetHandle() {
	return *(Handle_NLPlate_HPG0G2Constraint*) &$self;
	}
};
%extend NLPlate_HPG0G2Constraint {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") NLPlate_HPG0G2Constraint::~NLPlate_HPG0G2Constraint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NLPlate_HPG0G2Constraint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NLPlate_HPG1Constraint;
class NLPlate_HPG1Constraint : public NLPlate_HGPPConstraint {
	public:
		%feature("autodoc", "1");
		NLPlate_HPG1Constraint(const gp_XY UV, const Plate_D1 &D1T);
		%feature("autodoc", "1");
		virtual		void SetIncrementalLoadAllowed(const Standard_Boolean ILA);
		%feature("autodoc", "1");
		virtual		void SetOrientation(const Standard_Integer Orient=0);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IncrementalLoadAllowed() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer ActiveOrder() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsG0() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer Orientation();
		%feature("autodoc", "1");
		virtual		const Plate_D1 & G1Target() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend NLPlate_HPG1Constraint {
	Handle_NLPlate_HPG1Constraint GetHandle() {
	return *(Handle_NLPlate_HPG1Constraint*) &$self;
	}
};
%extend NLPlate_HPG1Constraint {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") NLPlate_HPG1Constraint::~NLPlate_HPG1Constraint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NLPlate_HPG1Constraint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NLPlate_HPG2Constraint;
class NLPlate_HPG2Constraint : public NLPlate_HPG1Constraint {
	public:
		%feature("autodoc", "1");
		NLPlate_HPG2Constraint(const gp_XY UV, const Plate_D1 &D1T, const Plate_D2 &D2T);
		%feature("autodoc", "1");
		virtual		const Plate_D2 & G2Target() const;

};
%extend NLPlate_HPG2Constraint {
	Handle_NLPlate_HPG2Constraint GetHandle() {
	return *(Handle_NLPlate_HPG2Constraint*) &$self;
	}
};
%extend NLPlate_HPG2Constraint {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") NLPlate_HPG2Constraint::~NLPlate_HPG2Constraint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NLPlate_HPG2Constraint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NLPlate_HPG3Constraint;
class NLPlate_HPG3Constraint : public NLPlate_HPG2Constraint {
	public:
		%feature("autodoc", "1");
		NLPlate_HPG3Constraint(const gp_XY UV, const Plate_D1 &D1T, const Plate_D2 &D2T, const Plate_D3 &D3T);
		%feature("autodoc", "1");
		virtual		Standard_Integer ActiveOrder() const;
		%feature("autodoc", "1");
		virtual		const Plate_D3 & G3Target() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend NLPlate_HPG3Constraint {
	Handle_NLPlate_HPG3Constraint GetHandle() {
	return *(Handle_NLPlate_HPG3Constraint*) &$self;
	}
};
%extend NLPlate_HPG3Constraint {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") NLPlate_HPG3Constraint::~NLPlate_HPG3Constraint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NLPlate_HPG3Constraint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NLPlate_StackOfPlate;
class NLPlate_StackOfPlate {
	public:
		%feature("autodoc", "1");
		NLPlate_StackOfPlate();
		%feature("autodoc", "1");
		const NLPlate_StackOfPlate & Assign(const NLPlate_StackOfPlate &Other);
		%feature("autodoc", "1");
		const NLPlate_StackOfPlate & operator=(const NLPlate_StackOfPlate &Other);
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Depth() const;
		%feature("autodoc", "1");
		const Plate_Plate & Top() const;
		%feature("autodoc", "1");
		void Push(const Plate_Plate &I);
		%feature("autodoc", "1");
		void Pop();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Plate_Plate & ChangeTop();

};
%feature("shadow") NLPlate_StackOfPlate::~NLPlate_StackOfPlate %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NLPlate_StackOfPlate {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NLPlate_SequenceNodeOfSequenceOfHGPPConstraint;
class NLPlate_SequenceNodeOfSequenceOfHGPPConstraint : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		NLPlate_SequenceNodeOfSequenceOfHGPPConstraint(const Handle_NLPlate_HGPPConstraint &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_NLPlate_HGPPConstraint & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend NLPlate_SequenceNodeOfSequenceOfHGPPConstraint {
	Handle_NLPlate_SequenceNodeOfSequenceOfHGPPConstraint GetHandle() {
	return *(Handle_NLPlate_SequenceNodeOfSequenceOfHGPPConstraint*) &$self;
	}
};
%extend NLPlate_SequenceNodeOfSequenceOfHGPPConstraint {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") NLPlate_SequenceNodeOfSequenceOfHGPPConstraint::~NLPlate_SequenceNodeOfSequenceOfHGPPConstraint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NLPlate_SequenceNodeOfSequenceOfHGPPConstraint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NLPlate_HPG0G3Constraint;
class NLPlate_HPG0G3Constraint : public NLPlate_HPG0G2Constraint {
	public:
		%feature("autodoc", "1");
		NLPlate_HPG0G3Constraint(const gp_XY UV, const gp_XYZ Value, const Plate_D1 &D1T, const Plate_D2 &D2T, const Plate_D3 &D3T);
		%feature("autodoc", "1");
		virtual		Standard_Integer ActiveOrder() const;
		%feature("autodoc", "1");
		virtual		const Plate_D3 & G3Target() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend NLPlate_HPG0G3Constraint {
	Handle_NLPlate_HPG0G3Constraint GetHandle() {
	return *(Handle_NLPlate_HPG0G3Constraint*) &$self;
	}
};
%extend NLPlate_HPG0G3Constraint {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") NLPlate_HPG0G3Constraint::~NLPlate_HPG0G3Constraint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NLPlate_HPG0G3Constraint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NLPlate_NLPlate;
class NLPlate_NLPlate {
	public:
		%feature("autodoc", "1");
		NLPlate_NLPlate(const Handle_Geom_Surface &InitialSurface);
		%feature("autodoc", "1");
		void Load(const Handle_NLPlate_HGPPConstraint &GConst);
		%feature("autodoc", "1");
		void Solve(const Standard_Integer ord=2, const Standard_Integer InitialConsraintOrder=1);
		%feature("autodoc", "1");
		void Solve2(const Standard_Integer ord=2, const Standard_Integer InitialConsraintOrder=1);
		%feature("autodoc", "1");
		void IncrementalSolve(const Standard_Integer ord=2, const Standard_Integer InitialConsraintOrder=1, const Standard_Integer NbIncrements=4, const Standard_Boolean UVSliding=0);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		void destroy();
		%feature("autodoc", "1");
		void Init();
		%feature("autodoc", "1");
		gp_XYZ Evaluate(const gp_XY point2d) const;
		%feature("autodoc", "1");
		gp_XYZ EvaluateDerivative(const gp_XY point2d, const Standard_Integer iu, const Standard_Integer iv) const;
		%feature("autodoc", "1");
		Standard_Integer Continuity() const;
		%feature("autodoc", "1");
		void ConstraintsSliding(const Standard_Integer NbIterations=3);
		%feature("autodoc", "1");
		Standard_Integer MaxActiveConstraintOrder() const;

};
%feature("shadow") NLPlate_NLPlate::~NLPlate_NLPlate %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NLPlate_NLPlate {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NLPlate_StackNodeOfStackOfPlate;
class NLPlate_StackNodeOfStackOfPlate : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		NLPlate_StackNodeOfStackOfPlate(const Plate_Plate &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Plate_Plate & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend NLPlate_StackNodeOfStackOfPlate {
	Handle_NLPlate_StackNodeOfStackOfPlate GetHandle() {
	return *(Handle_NLPlate_StackNodeOfStackOfPlate*) &$self;
	}
};
%extend NLPlate_StackNodeOfStackOfPlate {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") NLPlate_StackNodeOfStackOfPlate::~NLPlate_StackNodeOfStackOfPlate %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NLPlate_StackNodeOfStackOfPlate {
	void _kill_pointed() {
		delete $self;
	}
};
