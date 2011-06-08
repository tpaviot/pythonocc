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

%module TColQuantity
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include TColQuantity_renames.i


%include TColQuantity_required_python_modules.i


%include TColQuantity_dependencies.i


%include TColQuantity_headers.i




%nodefaultctor Handle_TColQuantity_HArray1OfLength;
class Handle_TColQuantity_HArray1OfLength : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TColQuantity_HArray1OfLength();
		%feature("autodoc", "1");
		Handle_TColQuantity_HArray1OfLength(const Handle_TColQuantity_HArray1OfLength &aHandle);
		%feature("autodoc", "1");
		Handle_TColQuantity_HArray1OfLength(const TColQuantity_HArray1OfLength *anItem);
		%feature("autodoc", "1");
		Handle_TColQuantity_HArray1OfLength & operator=(const Handle_TColQuantity_HArray1OfLength &aHandle);
		%feature("autodoc", "1");
		Handle_TColQuantity_HArray1OfLength & operator=(const TColQuantity_HArray1OfLength *anItem);
		%feature("autodoc", "1");
		static		Handle_TColQuantity_HArray1OfLength DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColQuantity_HArray1OfLength {
	TColQuantity_HArray1OfLength* GetObject() {
	return (TColQuantity_HArray1OfLength*)$self->Access();
	}
};
%feature("shadow") Handle_TColQuantity_HArray1OfLength::~Handle_TColQuantity_HArray1OfLength %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColQuantity_HArray1OfLength {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColQuantity_HArray2OfLength;
class Handle_TColQuantity_HArray2OfLength : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TColQuantity_HArray2OfLength();
		%feature("autodoc", "1");
		Handle_TColQuantity_HArray2OfLength(const Handle_TColQuantity_HArray2OfLength &aHandle);
		%feature("autodoc", "1");
		Handle_TColQuantity_HArray2OfLength(const TColQuantity_HArray2OfLength *anItem);
		%feature("autodoc", "1");
		Handle_TColQuantity_HArray2OfLength & operator=(const Handle_TColQuantity_HArray2OfLength &aHandle);
		%feature("autodoc", "1");
		Handle_TColQuantity_HArray2OfLength & operator=(const TColQuantity_HArray2OfLength *anItem);
		%feature("autodoc", "1");
		static		Handle_TColQuantity_HArray2OfLength DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColQuantity_HArray2OfLength {
	TColQuantity_HArray2OfLength* GetObject() {
	return (TColQuantity_HArray2OfLength*)$self->Access();
	}
};
%feature("shadow") Handle_TColQuantity_HArray2OfLength::~Handle_TColQuantity_HArray2OfLength %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColQuantity_HArray2OfLength {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColQuantity_Array1OfLength;
class TColQuantity_Array1OfLength {
	public:
		%feature("autodoc", "1");
		TColQuantity_Array1OfLength(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TColQuantity_Array1OfLength(const Quantity_Length &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Quantity_Length &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const TColQuantity_Array1OfLength & Assign(const TColQuantity_Array1OfLength &Other);
		%feature("autodoc", "1");
		const TColQuantity_Array1OfLength & operator=(const TColQuantity_Array1OfLength &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Quantity_Length &Value);
		%feature("autodoc", "1");
		const Quantity_Length & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Quantity_Length & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Quantity_Length & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Quantity_Length & operator()(const Standard_Integer Index);

};
%feature("shadow") TColQuantity_Array1OfLength::~TColQuantity_Array1OfLength %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColQuantity_Array1OfLength {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColQuantity_HArray1OfLength;
class TColQuantity_HArray1OfLength : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TColQuantity_HArray1OfLength(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TColQuantity_HArray1OfLength(const Standard_Integer Low, const Standard_Integer Up, const Quantity_Length &V);
		%feature("autodoc", "1");
		void Init(const Quantity_Length &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Quantity_Length &Value);
		%feature("autodoc", "1");
		const Quantity_Length & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Quantity_Length & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const TColQuantity_Array1OfLength & Array1() const;
		%feature("autodoc", "1");
		TColQuantity_Array1OfLength & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColQuantity_HArray1OfLength {
	Handle_TColQuantity_HArray1OfLength GetHandle() {
	return *(Handle_TColQuantity_HArray1OfLength*) &$self;
	}
};
%extend TColQuantity_HArray1OfLength {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") TColQuantity_HArray1OfLength::~TColQuantity_HArray1OfLength %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColQuantity_HArray1OfLength {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColQuantity_HArray2OfLength;
class TColQuantity_HArray2OfLength : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TColQuantity_HArray2OfLength(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		TColQuantity_HArray2OfLength(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2, const Quantity_Length &V);
		%feature("autodoc", "1");
		void Init(const Quantity_Length &V);
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
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const Quantity_Length &Value);
		%feature("autodoc", "1");
		const Quantity_Length & Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		Quantity_Length & ChangeValue(const Standard_Integer Row, const Standard_Integer Col);
		%feature("autodoc", "1");
		const TColQuantity_Array2OfLength & Array2() const;
		%feature("autodoc", "1");
		TColQuantity_Array2OfLength & ChangeArray2();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColQuantity_HArray2OfLength {
	Handle_TColQuantity_HArray2OfLength GetHandle() {
	return *(Handle_TColQuantity_HArray2OfLength*) &$self;
	}
};
%extend TColQuantity_HArray2OfLength {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") TColQuantity_HArray2OfLength::~TColQuantity_HArray2OfLength %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColQuantity_HArray2OfLength {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColQuantity_Array2OfLength;
class TColQuantity_Array2OfLength {
	public:
		%feature("autodoc", "1");
		TColQuantity_Array2OfLength(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		TColQuantity_Array2OfLength(const Quantity_Length &Item, const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		void Init(const Quantity_Length &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		const TColQuantity_Array2OfLength & Assign(const TColQuantity_Array2OfLength &Other);
		%feature("autodoc", "1");
		const TColQuantity_Array2OfLength & operator=(const TColQuantity_Array2OfLength &Other);
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
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const Quantity_Length &Value);
		%feature("autodoc", "1");
		const Quantity_Length & Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		const Quantity_Length & operator()(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		Quantity_Length & ChangeValue(const Standard_Integer Row, const Standard_Integer Col);
		%feature("autodoc", "1");
		Quantity_Length & operator()(const Standard_Integer Row, const Standard_Integer Col);

};
%feature("shadow") TColQuantity_Array2OfLength::~TColQuantity_Array2OfLength %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColQuantity_Array2OfLength {
	void _kill_pointed() {
		delete $self;
	}
};
