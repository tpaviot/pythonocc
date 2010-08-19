/*

Copyright 2008-2010 Thomas Paviot (tpaviot@gmail.com)

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

%module GeomPlate
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include GeomPlate_renames.i


%include GeomPlate_required_python_modules.i


%include GeomPlate_dependencies.i


%include GeomPlate_headers.i




%nodefaultctor Handle_GeomPlate_SequenceNodeOfSequenceOfPointConstraint;
class Handle_GeomPlate_SequenceNodeOfSequenceOfPointConstraint : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_GeomPlate_SequenceNodeOfSequenceOfPointConstraint();
		%feature("autodoc", "1");
		Handle_GeomPlate_SequenceNodeOfSequenceOfPointConstraint(const Handle_GeomPlate_SequenceNodeOfSequenceOfPointConstraint &aHandle);
		%feature("autodoc", "1");
		Handle_GeomPlate_SequenceNodeOfSequenceOfPointConstraint(const GeomPlate_SequenceNodeOfSequenceOfPointConstraint *anItem);
		%feature("autodoc", "1");
		Handle_GeomPlate_SequenceNodeOfSequenceOfPointConstraint & operator=(const Handle_GeomPlate_SequenceNodeOfSequenceOfPointConstraint &aHandle);
		%feature("autodoc", "1");
		Handle_GeomPlate_SequenceNodeOfSequenceOfPointConstraint & operator=(const GeomPlate_SequenceNodeOfSequenceOfPointConstraint *anItem);
		%feature("autodoc", "1");
		static		Handle_GeomPlate_SequenceNodeOfSequenceOfPointConstraint const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GeomPlate_SequenceNodeOfSequenceOfPointConstraint {
	GeomPlate_SequenceNodeOfSequenceOfPointConstraint* GetObject() {
	return (GeomPlate_SequenceNodeOfSequenceOfPointConstraint*)$self->Access();
	}
};
%feature("shadow") Handle_GeomPlate_SequenceNodeOfSequenceOfPointConstraint::~Handle_GeomPlate_SequenceNodeOfSequenceOfPointConstraint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GeomPlate_SequenceNodeOfSequenceOfPointConstraint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GeomPlate_SequenceNodeOfSequenceOfAij;
class Handle_GeomPlate_SequenceNodeOfSequenceOfAij : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_GeomPlate_SequenceNodeOfSequenceOfAij();
		%feature("autodoc", "1");
		Handle_GeomPlate_SequenceNodeOfSequenceOfAij(const Handle_GeomPlate_SequenceNodeOfSequenceOfAij &aHandle);
		%feature("autodoc", "1");
		Handle_GeomPlate_SequenceNodeOfSequenceOfAij(const GeomPlate_SequenceNodeOfSequenceOfAij *anItem);
		%feature("autodoc", "1");
		Handle_GeomPlate_SequenceNodeOfSequenceOfAij & operator=(const Handle_GeomPlate_SequenceNodeOfSequenceOfAij &aHandle);
		%feature("autodoc", "1");
		Handle_GeomPlate_SequenceNodeOfSequenceOfAij & operator=(const GeomPlate_SequenceNodeOfSequenceOfAij *anItem);
		%feature("autodoc", "1");
		static		Handle_GeomPlate_SequenceNodeOfSequenceOfAij const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GeomPlate_SequenceNodeOfSequenceOfAij {
	GeomPlate_SequenceNodeOfSequenceOfAij* GetObject() {
	return (GeomPlate_SequenceNodeOfSequenceOfAij*)$self->Access();
	}
};
%feature("shadow") Handle_GeomPlate_SequenceNodeOfSequenceOfAij::~Handle_GeomPlate_SequenceNodeOfSequenceOfAij %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GeomPlate_SequenceNodeOfSequenceOfAij {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GeomPlate_PointConstraint;
class Handle_GeomPlate_PointConstraint : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_GeomPlate_PointConstraint();
		%feature("autodoc", "1");
		Handle_GeomPlate_PointConstraint(const Handle_GeomPlate_PointConstraint &aHandle);
		%feature("autodoc", "1");
		Handle_GeomPlate_PointConstraint(const GeomPlate_PointConstraint *anItem);
		%feature("autodoc", "1");
		Handle_GeomPlate_PointConstraint & operator=(const Handle_GeomPlate_PointConstraint &aHandle);
		%feature("autodoc", "1");
		Handle_GeomPlate_PointConstraint & operator=(const GeomPlate_PointConstraint *anItem);
		%feature("autodoc", "1");
		static		Handle_GeomPlate_PointConstraint const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GeomPlate_PointConstraint {
	GeomPlate_PointConstraint* GetObject() {
	return (GeomPlate_PointConstraint*)$self->Access();
	}
};
%feature("shadow") Handle_GeomPlate_PointConstraint::~Handle_GeomPlate_PointConstraint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GeomPlate_PointConstraint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GeomPlate_HArray1OfHCurveOnSurface;
class Handle_GeomPlate_HArray1OfHCurveOnSurface : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_GeomPlate_HArray1OfHCurveOnSurface();
		%feature("autodoc", "1");
		Handle_GeomPlate_HArray1OfHCurveOnSurface(const Handle_GeomPlate_HArray1OfHCurveOnSurface &aHandle);
		%feature("autodoc", "1");
		Handle_GeomPlate_HArray1OfHCurveOnSurface(const GeomPlate_HArray1OfHCurveOnSurface *anItem);
		%feature("autodoc", "1");
		Handle_GeomPlate_HArray1OfHCurveOnSurface & operator=(const Handle_GeomPlate_HArray1OfHCurveOnSurface &aHandle);
		%feature("autodoc", "1");
		Handle_GeomPlate_HArray1OfHCurveOnSurface & operator=(const GeomPlate_HArray1OfHCurveOnSurface *anItem);
		%feature("autodoc", "1");
		static		Handle_GeomPlate_HArray1OfHCurveOnSurface const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GeomPlate_HArray1OfHCurveOnSurface {
	GeomPlate_HArray1OfHCurveOnSurface* GetObject() {
	return (GeomPlate_HArray1OfHCurveOnSurface*)$self->Access();
	}
};
%feature("shadow") Handle_GeomPlate_HArray1OfHCurveOnSurface::~Handle_GeomPlate_HArray1OfHCurveOnSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GeomPlate_HArray1OfHCurveOnSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GeomPlate_SequenceNodeOfSequenceOfCurveConstraint;
class Handle_GeomPlate_SequenceNodeOfSequenceOfCurveConstraint : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_GeomPlate_SequenceNodeOfSequenceOfCurveConstraint();
		%feature("autodoc", "1");
		Handle_GeomPlate_SequenceNodeOfSequenceOfCurveConstraint(const Handle_GeomPlate_SequenceNodeOfSequenceOfCurveConstraint &aHandle);
		%feature("autodoc", "1");
		Handle_GeomPlate_SequenceNodeOfSequenceOfCurveConstraint(const GeomPlate_SequenceNodeOfSequenceOfCurveConstraint *anItem);
		%feature("autodoc", "1");
		Handle_GeomPlate_SequenceNodeOfSequenceOfCurveConstraint & operator=(const Handle_GeomPlate_SequenceNodeOfSequenceOfCurveConstraint &aHandle);
		%feature("autodoc", "1");
		Handle_GeomPlate_SequenceNodeOfSequenceOfCurveConstraint & operator=(const GeomPlate_SequenceNodeOfSequenceOfCurveConstraint *anItem);
		%feature("autodoc", "1");
		static		Handle_GeomPlate_SequenceNodeOfSequenceOfCurveConstraint const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GeomPlate_SequenceNodeOfSequenceOfCurveConstraint {
	GeomPlate_SequenceNodeOfSequenceOfCurveConstraint* GetObject() {
	return (GeomPlate_SequenceNodeOfSequenceOfCurveConstraint*)$self->Access();
	}
};
%feature("shadow") Handle_GeomPlate_SequenceNodeOfSequenceOfCurveConstraint::~Handle_GeomPlate_SequenceNodeOfSequenceOfCurveConstraint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GeomPlate_SequenceNodeOfSequenceOfCurveConstraint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GeomPlate_Surface;
class Handle_GeomPlate_Surface : public Handle_Geom_Surface {
	public:
		%feature("autodoc", "1");
		Handle_GeomPlate_Surface();
		%feature("autodoc", "1");
		Handle_GeomPlate_Surface(const Handle_GeomPlate_Surface &aHandle);
		%feature("autodoc", "1");
		Handle_GeomPlate_Surface(const GeomPlate_Surface *anItem);
		%feature("autodoc", "1");
		Handle_GeomPlate_Surface & operator=(const Handle_GeomPlate_Surface &aHandle);
		%feature("autodoc", "1");
		Handle_GeomPlate_Surface & operator=(const GeomPlate_Surface *anItem);
		%feature("autodoc", "1");
		static		Handle_GeomPlate_Surface const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GeomPlate_Surface {
	GeomPlate_Surface* GetObject() {
	return (GeomPlate_Surface*)$self->Access();
	}
};
%feature("shadow") Handle_GeomPlate_Surface::~Handle_GeomPlate_Surface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GeomPlate_Surface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GeomPlate_HArray1OfSequenceOfReal;
class Handle_GeomPlate_HArray1OfSequenceOfReal : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_GeomPlate_HArray1OfSequenceOfReal();
		%feature("autodoc", "1");
		Handle_GeomPlate_HArray1OfSequenceOfReal(const Handle_GeomPlate_HArray1OfSequenceOfReal &aHandle);
		%feature("autodoc", "1");
		Handle_GeomPlate_HArray1OfSequenceOfReal(const GeomPlate_HArray1OfSequenceOfReal *anItem);
		%feature("autodoc", "1");
		Handle_GeomPlate_HArray1OfSequenceOfReal & operator=(const Handle_GeomPlate_HArray1OfSequenceOfReal &aHandle);
		%feature("autodoc", "1");
		Handle_GeomPlate_HArray1OfSequenceOfReal & operator=(const GeomPlate_HArray1OfSequenceOfReal *anItem);
		%feature("autodoc", "1");
		static		Handle_GeomPlate_HArray1OfSequenceOfReal const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GeomPlate_HArray1OfSequenceOfReal {
	GeomPlate_HArray1OfSequenceOfReal* GetObject() {
	return (GeomPlate_HArray1OfSequenceOfReal*)$self->Access();
	}
};
%feature("shadow") Handle_GeomPlate_HArray1OfSequenceOfReal::~Handle_GeomPlate_HArray1OfSequenceOfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GeomPlate_HArray1OfSequenceOfReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GeomPlate_HSequenceOfPointConstraint;
class Handle_GeomPlate_HSequenceOfPointConstraint : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_GeomPlate_HSequenceOfPointConstraint();
		%feature("autodoc", "1");
		Handle_GeomPlate_HSequenceOfPointConstraint(const Handle_GeomPlate_HSequenceOfPointConstraint &aHandle);
		%feature("autodoc", "1");
		Handle_GeomPlate_HSequenceOfPointConstraint(const GeomPlate_HSequenceOfPointConstraint *anItem);
		%feature("autodoc", "1");
		Handle_GeomPlate_HSequenceOfPointConstraint & operator=(const Handle_GeomPlate_HSequenceOfPointConstraint &aHandle);
		%feature("autodoc", "1");
		Handle_GeomPlate_HSequenceOfPointConstraint & operator=(const GeomPlate_HSequenceOfPointConstraint *anItem);
		%feature("autodoc", "1");
		static		Handle_GeomPlate_HSequenceOfPointConstraint const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GeomPlate_HSequenceOfPointConstraint {
	GeomPlate_HSequenceOfPointConstraint* GetObject() {
	return (GeomPlate_HSequenceOfPointConstraint*)$self->Access();
	}
};
%feature("shadow") Handle_GeomPlate_HSequenceOfPointConstraint::~Handle_GeomPlate_HSequenceOfPointConstraint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GeomPlate_HSequenceOfPointConstraint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GeomPlate_CurveConstraint;
class Handle_GeomPlate_CurveConstraint : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_GeomPlate_CurveConstraint();
		%feature("autodoc", "1");
		Handle_GeomPlate_CurveConstraint(const Handle_GeomPlate_CurveConstraint &aHandle);
		%feature("autodoc", "1");
		Handle_GeomPlate_CurveConstraint(const GeomPlate_CurveConstraint *anItem);
		%feature("autodoc", "1");
		Handle_GeomPlate_CurveConstraint & operator=(const Handle_GeomPlate_CurveConstraint &aHandle);
		%feature("autodoc", "1");
		Handle_GeomPlate_CurveConstraint & operator=(const GeomPlate_CurveConstraint *anItem);
		%feature("autodoc", "1");
		static		Handle_GeomPlate_CurveConstraint const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GeomPlate_CurveConstraint {
	GeomPlate_CurveConstraint* GetObject() {
	return (GeomPlate_CurveConstraint*)$self->Access();
	}
};
%feature("shadow") Handle_GeomPlate_CurveConstraint::~Handle_GeomPlate_CurveConstraint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GeomPlate_CurveConstraint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GeomPlate_HSequenceOfCurveConstraint;
class Handle_GeomPlate_HSequenceOfCurveConstraint : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_GeomPlate_HSequenceOfCurveConstraint();
		%feature("autodoc", "1");
		Handle_GeomPlate_HSequenceOfCurveConstraint(const Handle_GeomPlate_HSequenceOfCurveConstraint &aHandle);
		%feature("autodoc", "1");
		Handle_GeomPlate_HSequenceOfCurveConstraint(const GeomPlate_HSequenceOfCurveConstraint *anItem);
		%feature("autodoc", "1");
		Handle_GeomPlate_HSequenceOfCurveConstraint & operator=(const Handle_GeomPlate_HSequenceOfCurveConstraint &aHandle);
		%feature("autodoc", "1");
		Handle_GeomPlate_HSequenceOfCurveConstraint & operator=(const GeomPlate_HSequenceOfCurveConstraint *anItem);
		%feature("autodoc", "1");
		static		Handle_GeomPlate_HSequenceOfCurveConstraint const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GeomPlate_HSequenceOfCurveConstraint {
	GeomPlate_HSequenceOfCurveConstraint* GetObject() {
	return (GeomPlate_HSequenceOfCurveConstraint*)$self->Access();
	}
};
%feature("shadow") Handle_GeomPlate_HSequenceOfCurveConstraint::~Handle_GeomPlate_HSequenceOfCurveConstraint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GeomPlate_HSequenceOfCurveConstraint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomPlate_HSequenceOfCurveConstraint;
class GeomPlate_HSequenceOfCurveConstraint : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		GeomPlate_HSequenceOfCurveConstraint();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const Handle_GeomPlate_CurveConstraint &anItem);
		%feature("autodoc", "1");
		void Append(const Handle_GeomPlate_HSequenceOfCurveConstraint &aSequence);
		%feature("autodoc", "1");
		void Prepend(const Handle_GeomPlate_CurveConstraint &anItem);
		%feature("autodoc", "1");
		void Prepend(const Handle_GeomPlate_HSequenceOfCurveConstraint &aSequence);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_GeomPlate_CurveConstraint &anItem);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_GeomPlate_HSequenceOfCurveConstraint &aSequence);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_GeomPlate_CurveConstraint &anItem);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_GeomPlate_HSequenceOfCurveConstraint &aSequence);
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer anIndex, const Standard_Integer anOtherIndex);
		%feature("autodoc", "1");
		Handle_GeomPlate_HSequenceOfCurveConstraint Split(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer anIndex, const Handle_GeomPlate_CurveConstraint &anItem);
		%feature("autodoc", "1");
		const Handle_GeomPlate_CurveConstraint & Value(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		Handle_GeomPlate_CurveConstraint & ChangeValue(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer fromIndex, const Standard_Integer toIndex);
		%feature("autodoc", "1");
		const GeomPlate_SequenceOfCurveConstraint & Sequence() const;
		%feature("autodoc", "1");
		GeomPlate_SequenceOfCurveConstraint & ChangeSequence();
		%feature("autodoc", "1");
		Handle_GeomPlate_HSequenceOfCurveConstraint ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GeomPlate_HSequenceOfCurveConstraint {
	Handle_GeomPlate_HSequenceOfCurveConstraint GetHandle() {
	return *(Handle_GeomPlate_HSequenceOfCurveConstraint*) &$self;
	}
};
%extend GeomPlate_HSequenceOfCurveConstraint {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") GeomPlate_HSequenceOfCurveConstraint::~GeomPlate_HSequenceOfCurveConstraint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomPlate_HSequenceOfCurveConstraint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomPlate_SequenceNodeOfSequenceOfCurveConstraint;
class GeomPlate_SequenceNodeOfSequenceOfCurveConstraint : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		GeomPlate_SequenceNodeOfSequenceOfCurveConstraint(const Handle_GeomPlate_CurveConstraint &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_GeomPlate_CurveConstraint & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GeomPlate_SequenceNodeOfSequenceOfCurveConstraint {
	Handle_GeomPlate_SequenceNodeOfSequenceOfCurveConstraint GetHandle() {
	return *(Handle_GeomPlate_SequenceNodeOfSequenceOfCurveConstraint*) &$self;
	}
};
%extend GeomPlate_SequenceNodeOfSequenceOfCurveConstraint {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") GeomPlate_SequenceNodeOfSequenceOfCurveConstraint::~GeomPlate_SequenceNodeOfSequenceOfCurveConstraint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomPlate_SequenceNodeOfSequenceOfCurveConstraint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomPlate_HArray1OfHCurveOnSurface;
class GeomPlate_HArray1OfHCurveOnSurface : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		GeomPlate_HArray1OfHCurveOnSurface(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		GeomPlate_HArray1OfHCurveOnSurface(const Standard_Integer Low, const Standard_Integer Up, const Handle_Adaptor3d_HCurveOnSurface &V);
		%feature("autodoc", "1");
		void Init(const Handle_Adaptor3d_HCurveOnSurface &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_Adaptor3d_HCurveOnSurface &Value);
		%feature("autodoc", "1");
		const Handle_Adaptor3d_HCurveOnSurface & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_Adaptor3d_HCurveOnSurface & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const GeomPlate_Array1OfHCurveOnSurface & Array1() const;
		%feature("autodoc", "1");
		GeomPlate_Array1OfHCurveOnSurface & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GeomPlate_HArray1OfHCurveOnSurface {
	Handle_GeomPlate_HArray1OfHCurveOnSurface GetHandle() {
	return *(Handle_GeomPlate_HArray1OfHCurveOnSurface*) &$self;
	}
};
%extend GeomPlate_HArray1OfHCurveOnSurface {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") GeomPlate_HArray1OfHCurveOnSurface::~GeomPlate_HArray1OfHCurveOnSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomPlate_HArray1OfHCurveOnSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomPlate_SequenceOfCurveConstraint;
class GeomPlate_SequenceOfCurveConstraint : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		GeomPlate_SequenceOfCurveConstraint();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const GeomPlate_SequenceOfCurveConstraint & Assign(const GeomPlate_SequenceOfCurveConstraint &Other);
		%feature("autodoc", "1");
		const GeomPlate_SequenceOfCurveConstraint & operator=(const GeomPlate_SequenceOfCurveConstraint &Other);
		%feature("autodoc", "1");
		void Append(const Handle_GeomPlate_CurveConstraint &T);
		%feature("autodoc", "1");
		void Append(GeomPlate_SequenceOfCurveConstraint & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_GeomPlate_CurveConstraint &T);
		%feature("autodoc", "1");
		void Prepend(GeomPlate_SequenceOfCurveConstraint & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_GeomPlate_CurveConstraint &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, GeomPlate_SequenceOfCurveConstraint & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_GeomPlate_CurveConstraint &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, GeomPlate_SequenceOfCurveConstraint & S);
		%feature("autodoc", "1");
		const Handle_GeomPlate_CurveConstraint & First() const;
		%feature("autodoc", "1");
		const Handle_GeomPlate_CurveConstraint & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, GeomPlate_SequenceOfCurveConstraint & S);
		%feature("autodoc", "1");
		const Handle_GeomPlate_CurveConstraint & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_GeomPlate_CurveConstraint & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_GeomPlate_CurveConstraint &I);
		%feature("autodoc", "1");
		Handle_GeomPlate_CurveConstraint & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_GeomPlate_CurveConstraint & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") GeomPlate_SequenceOfCurveConstraint::~GeomPlate_SequenceOfCurveConstraint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomPlate_SequenceOfCurveConstraint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomPlate_HArray1OfSequenceOfReal;
class GeomPlate_HArray1OfSequenceOfReal : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		GeomPlate_HArray1OfSequenceOfReal(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		GeomPlate_HArray1OfSequenceOfReal(const Standard_Integer Low, const Standard_Integer Up, const TColStd_SequenceOfReal &V);
		%feature("autodoc", "1");
		void Init(const TColStd_SequenceOfReal &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const TColStd_SequenceOfReal &Value);
		%feature("autodoc", "1");
		const TColStd_SequenceOfReal & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		TColStd_SequenceOfReal & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const GeomPlate_Array1OfSequenceOfReal & Array1() const;
		%feature("autodoc", "1");
		GeomPlate_Array1OfSequenceOfReal & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GeomPlate_HArray1OfSequenceOfReal {
	Handle_GeomPlate_HArray1OfSequenceOfReal GetHandle() {
	return *(Handle_GeomPlate_HArray1OfSequenceOfReal*) &$self;
	}
};
%extend GeomPlate_HArray1OfSequenceOfReal {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") GeomPlate_HArray1OfSequenceOfReal::~GeomPlate_HArray1OfSequenceOfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomPlate_HArray1OfSequenceOfReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomPlate_HSequenceOfPointConstraint;
class GeomPlate_HSequenceOfPointConstraint : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		GeomPlate_HSequenceOfPointConstraint();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const Handle_GeomPlate_PointConstraint &anItem);
		%feature("autodoc", "1");
		void Append(const Handle_GeomPlate_HSequenceOfPointConstraint &aSequence);
		%feature("autodoc", "1");
		void Prepend(const Handle_GeomPlate_PointConstraint &anItem);
		%feature("autodoc", "1");
		void Prepend(const Handle_GeomPlate_HSequenceOfPointConstraint &aSequence);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_GeomPlate_PointConstraint &anItem);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_GeomPlate_HSequenceOfPointConstraint &aSequence);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_GeomPlate_PointConstraint &anItem);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_GeomPlate_HSequenceOfPointConstraint &aSequence);
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer anIndex, const Standard_Integer anOtherIndex);
		%feature("autodoc", "1");
		Handle_GeomPlate_HSequenceOfPointConstraint Split(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer anIndex, const Handle_GeomPlate_PointConstraint &anItem);
		%feature("autodoc", "1");
		const Handle_GeomPlate_PointConstraint & Value(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		Handle_GeomPlate_PointConstraint & ChangeValue(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer fromIndex, const Standard_Integer toIndex);
		%feature("autodoc", "1");
		const GeomPlate_SequenceOfPointConstraint & Sequence() const;
		%feature("autodoc", "1");
		GeomPlate_SequenceOfPointConstraint & ChangeSequence();
		%feature("autodoc", "1");
		Handle_GeomPlate_HSequenceOfPointConstraint ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GeomPlate_HSequenceOfPointConstraint {
	Handle_GeomPlate_HSequenceOfPointConstraint GetHandle() {
	return *(Handle_GeomPlate_HSequenceOfPointConstraint*) &$self;
	}
};
%extend GeomPlate_HSequenceOfPointConstraint {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") GeomPlate_HSequenceOfPointConstraint::~GeomPlate_HSequenceOfPointConstraint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomPlate_HSequenceOfPointConstraint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomPlate_MakeApprox;
class GeomPlate_MakeApprox {
	public:
		%feature("autodoc", "1");
		GeomPlate_MakeApprox(const Handle_GeomPlate_Surface &SurfPlate, const AdvApp2Var_Criterion &PlateCrit, const Standard_Real Tol3d, const Standard_Integer Nbmax, const Standard_Integer dgmax, const GeomAbs_Shape Continuity=GeomAbs_C1, const Standard_Real EnlargeCoeff=1.10000000000000008881784197001252323389053344727e+0);
		%feature("autodoc", "1");
		GeomPlate_MakeApprox(const Handle_GeomPlate_Surface &SurfPlate, const Standard_Real Tol3d, const Standard_Integer Nbmax, const Standard_Integer dgmax, const Standard_Real dmax, const Standard_Integer CritOrder=0, const GeomAbs_Shape Continuity=GeomAbs_C1, const Standard_Real EnlargeCoeff=1.10000000000000008881784197001252323389053344727e+0);
		%feature("autodoc", "1");
		Handle_Geom_BSplineSurface Surface() const;
		%feature("autodoc", "1");
		Standard_Real ApproxError() const;
		%feature("autodoc", "1");
		Standard_Real CriterionError() const;

};
%feature("shadow") GeomPlate_MakeApprox::~GeomPlate_MakeApprox %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomPlate_MakeApprox {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomPlate_SequenceNodeOfSequenceOfPointConstraint;
class GeomPlate_SequenceNodeOfSequenceOfPointConstraint : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		GeomPlate_SequenceNodeOfSequenceOfPointConstraint(const Handle_GeomPlate_PointConstraint &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_GeomPlate_PointConstraint & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GeomPlate_SequenceNodeOfSequenceOfPointConstraint {
	Handle_GeomPlate_SequenceNodeOfSequenceOfPointConstraint GetHandle() {
	return *(Handle_GeomPlate_SequenceNodeOfSequenceOfPointConstraint*) &$self;
	}
};
%extend GeomPlate_SequenceNodeOfSequenceOfPointConstraint {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") GeomPlate_SequenceNodeOfSequenceOfPointConstraint::~GeomPlate_SequenceNodeOfSequenceOfPointConstraint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomPlate_SequenceNodeOfSequenceOfPointConstraint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomPlate_CurveConstraint;
class GeomPlate_CurveConstraint : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		GeomPlate_CurveConstraint();
		%feature("autodoc", "1");
		GeomPlate_CurveConstraint(const Handle_Adaptor3d_HCurveOnSurface &Boundary, const Standard_Integer Order, const Standard_Integer NPt=10, const Standard_Real TolDist=1.00000000000000004792173602385929598312941379845e-4, const Standard_Real TolAng=1.0000000000000000208166817117216851329430937767e-2, const Standard_Real TolCurv=1.00000000000000005551115123125782702118158340454e-1);
		%feature("autodoc", "1");
		GeomPlate_CurveConstraint(const Handle_Adaptor3d_HCurve &Boundary, const Standard_Integer Tang, const Standard_Integer NPt=10, const Standard_Real TolDist=1.00000000000000004792173602385929598312941379845e-4);
		%feature("autodoc", "1");
		void SetOrder(const Standard_Integer Order);
		%feature("autodoc", "1");
		Standard_Integer Order() const;
		%feature("autodoc", "1");
		Standard_Integer NbPoints() const;
		%feature("autodoc", "1");
		void SetNbPoints(const Standard_Integer NewNb);
		%feature("autodoc", "1");
		void SetG0Criterion(const Handle_Law_Function &G0Crit);
		%feature("autodoc", "1");
		void SetG1Criterion(const Handle_Law_Function &G1Crit);
		%feature("autodoc", "1");
		void SetG2Criterion(const Handle_Law_Function &G2Crit);
		%feature("autodoc", "1");
		Standard_Real G0Criterion(const Standard_Real U) const;
		%feature("autodoc", "1");
		Standard_Real G1Criterion(const Standard_Real U) const;
		%feature("autodoc", "1");
		Standard_Real G2Criterion(const Standard_Real U) const;
		%feature("autodoc", "1");
		Standard_Real FirstParameter() const;
		%feature("autodoc", "1");
		Standard_Real LastParameter() const;
		%feature("autodoc", "1");
		Standard_Real Length() const;
		%feature("autodoc", "1");
		GeomLProp_SLProps & LPropSurf(const Standard_Real U);
		%feature("autodoc", "1");
		void D0(const Standard_Real U, gp_Pnt & P) const;
		%feature("autodoc", "1");
		void D1(const Standard_Real U, gp_Pnt & P, gp_Vec & V1, gp_Vec & V2) const;
		%feature("autodoc", "1");
		void D2(const Standard_Real U, gp_Pnt & P, gp_Vec & V1, gp_Vec & V2, gp_Vec & V3, gp_Vec & V4, gp_Vec & V5) const;
		%feature("autodoc", "1");
		Handle_Adaptor3d_HCurve Curve3d() const;
		%feature("autodoc", "1");
		void SetCurve2dOnSurf(const Handle_Geom2d_Curve &Curve2d);
		%feature("autodoc", "1");
		Handle_Geom2d_Curve Curve2dOnSurf() const;
		%feature("autodoc", "1");
		void SetProjectedCurve(const Handle_Adaptor2d_HCurve2d &Curve2d, const Standard_Real TolU, const Standard_Real TolV);
		%feature("autodoc", "1");
		Handle_Adaptor2d_HCurve2d ProjectedCurve() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GeomPlate_CurveConstraint {
	Handle_GeomPlate_CurveConstraint GetHandle() {
	return *(Handle_GeomPlate_CurveConstraint*) &$self;
	}
};
%extend GeomPlate_CurveConstraint {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") GeomPlate_CurveConstraint::~GeomPlate_CurveConstraint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomPlate_CurveConstraint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomPlate_BuildAveragePlane;
class GeomPlate_BuildAveragePlane {
	public:
		%feature("autodoc", "1");
		GeomPlate_BuildAveragePlane(const Handle_TColgp_HArray1OfPnt &Pts, const Standard_Integer NbBoundPoints, const Standard_Real Tol, const Standard_Integer POption, const Standard_Integer NOption);
		%feature("autodoc", "1");
		GeomPlate_BuildAveragePlane(const TColgp_SequenceOfVec &Normals, const Handle_TColgp_HArray1OfPnt &Pts);
		%feature("autodoc", "1");
		Handle_Geom_Plane Plane() const;
		%feature("autodoc", "1");
		Handle_Geom_Line Line() const;
		%feature("autodoc", "1");
		Standard_Boolean IsPlane() const;
		%feature("autodoc", "1");
		Standard_Boolean IsLine() const;
		%feature("autodoc","MinMaxBox() -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real]");

		void MinMaxBox(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		static		Standard_Boolean HalfSpace(const TColgp_SequenceOfVec &NewNormals, TColgp_SequenceOfVec & Normals, GeomPlate_SequenceOfAij & Bset, const Standard_Real LinTol, const Standard_Real AngTol);

};
%feature("shadow") GeomPlate_BuildAveragePlane::~GeomPlate_BuildAveragePlane %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomPlate_BuildAveragePlane {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomPlate_SequenceNodeOfSequenceOfAij;
class GeomPlate_SequenceNodeOfSequenceOfAij : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		GeomPlate_SequenceNodeOfSequenceOfAij(const GeomPlate_Aij &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		GeomPlate_Aij & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GeomPlate_SequenceNodeOfSequenceOfAij {
	Handle_GeomPlate_SequenceNodeOfSequenceOfAij GetHandle() {
	return *(Handle_GeomPlate_SequenceNodeOfSequenceOfAij*) &$self;
	}
};
%extend GeomPlate_SequenceNodeOfSequenceOfAij {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") GeomPlate_SequenceNodeOfSequenceOfAij::~GeomPlate_SequenceNodeOfSequenceOfAij %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomPlate_SequenceNodeOfSequenceOfAij {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomPlate_Surface;
class GeomPlate_Surface : public Geom_Surface {
	public:
		%feature("autodoc", "1");
		GeomPlate_Surface(const Handle_Geom_Surface &Surfinit, const Plate_Plate &Surfinter);
		%feature("autodoc", "1");
		virtual		void UReverse();
		%feature("autodoc", "1");
		virtual		Standard_Real UReversedParameter(const Standard_Real U) const;
		%feature("autodoc", "1");
		virtual		void VReverse();
		%feature("autodoc", "1");
		virtual		Standard_Real VReversedParameter(const Standard_Real V) const;
		%feature("autodoc","TransformParameters(const T) -> [Standard_Real, Standard_Real]");

		virtual		void TransformParameters(Standard_Real &OutValue, Standard_Real &OutValue, const gp_Trsf &T) const;
		%feature("autodoc", "1");
		virtual		gp_GTrsf2d ParametricTransformation(const gp_Trsf &T) const;
		%feature("autodoc","Bounds() -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real]");

		virtual		void Bounds(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsUClosed() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsVClosed() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsUPeriodic() const;
		%feature("autodoc", "1");
		virtual		Standard_Real UPeriod() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsVPeriodic() const;
		%feature("autodoc", "1");
		virtual		Standard_Real VPeriod() const;
		%feature("autodoc", "1");
		virtual		Handle_Geom_Curve UIso(const Standard_Real U) const;
		%feature("autodoc", "1");
		virtual		Handle_Geom_Curve VIso(const Standard_Real V) const;
		%feature("autodoc", "1");
		virtual		GeomAbs_Shape Continuity() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsCNu(const Standard_Integer N) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsCNv(const Standard_Integer N) const;
		%feature("autodoc", "1");
		virtual		void D0(const Standard_Real U, const Standard_Real V, gp_Pnt & P) const;
		%feature("autodoc", "1");
		virtual		void D1(const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V) const;
		%feature("autodoc", "1");
		virtual		void D2(const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V, gp_Vec & D2U, gp_Vec & D2V, gp_Vec & D2UV) const;
		%feature("autodoc", "1");
		virtual		void D3(const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V, gp_Vec & D2U, gp_Vec & D2V, gp_Vec & D2UV, gp_Vec & D3U, gp_Vec & D3V, gp_Vec & D3UUV, gp_Vec & D3UVV) const;
		%feature("autodoc", "1");
		virtual		gp_Vec DN(const Standard_Real U, const Standard_Real V, const Standard_Integer Nu, const Standard_Integer Nv) const;
		%feature("autodoc", "1");
		virtual		Handle_Geom_Geometry Copy() const;
		%feature("autodoc", "1");
		virtual		void Transform(const gp_Trsf &T);
		%feature("autodoc", "1");
		Handle_Geom_Surface CallSurfinit() const;
		%feature("autodoc", "1");
		void SetBounds(const Standard_Real Umin, const Standard_Real Umax, const Standard_Real Vmin, const Standard_Real Vmax);
		%feature("autodoc","RealBounds() -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real]");

		void RealBounds(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		void Constraints(TColgp_SequenceOfXY & Seq) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GeomPlate_Surface {
	Handle_GeomPlate_Surface GetHandle() {
	return *(Handle_GeomPlate_Surface*) &$self;
	}
};
%extend GeomPlate_Surface {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") GeomPlate_Surface::~GeomPlate_Surface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomPlate_Surface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomPlate_PlateG0Criterion;
class GeomPlate_PlateG0Criterion : public AdvApp2Var_Criterion {
	public:
		%feature("autodoc", "1");
		GeomPlate_PlateG0Criterion(const TColgp_SequenceOfXY &Data, const TColgp_SequenceOfXYZ &G0Data, const Standard_Real Maximum, const AdvApp2Var_CriterionType Type=AdvApp2Var_Absolute, const AdvApp2Var_CriterionRepartition Repart=AdvApp2Var_Regular);
		%feature("autodoc", "1");
		virtual		void Value(AdvApp2Var_Patch & P, const AdvApp2Var_Context &C) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsSatisfied(const AdvApp2Var_Patch &P) const;

};
%feature("shadow") GeomPlate_PlateG0Criterion::~GeomPlate_PlateG0Criterion %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomPlate_PlateG0Criterion {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomPlate_SequenceOfPointConstraint;
class GeomPlate_SequenceOfPointConstraint : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		GeomPlate_SequenceOfPointConstraint();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const GeomPlate_SequenceOfPointConstraint & Assign(const GeomPlate_SequenceOfPointConstraint &Other);
		%feature("autodoc", "1");
		const GeomPlate_SequenceOfPointConstraint & operator=(const GeomPlate_SequenceOfPointConstraint &Other);
		%feature("autodoc", "1");
		void Append(const Handle_GeomPlate_PointConstraint &T);
		%feature("autodoc", "1");
		void Append(GeomPlate_SequenceOfPointConstraint & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_GeomPlate_PointConstraint &T);
		%feature("autodoc", "1");
		void Prepend(GeomPlate_SequenceOfPointConstraint & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_GeomPlate_PointConstraint &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, GeomPlate_SequenceOfPointConstraint & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_GeomPlate_PointConstraint &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, GeomPlate_SequenceOfPointConstraint & S);
		%feature("autodoc", "1");
		const Handle_GeomPlate_PointConstraint & First() const;
		%feature("autodoc", "1");
		const Handle_GeomPlate_PointConstraint & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, GeomPlate_SequenceOfPointConstraint & S);
		%feature("autodoc", "1");
		const Handle_GeomPlate_PointConstraint & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_GeomPlate_PointConstraint & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_GeomPlate_PointConstraint &I);
		%feature("autodoc", "1");
		Handle_GeomPlate_PointConstraint & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_GeomPlate_PointConstraint & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") GeomPlate_SequenceOfPointConstraint::~GeomPlate_SequenceOfPointConstraint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomPlate_SequenceOfPointConstraint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomPlate_PointConstraint;
class GeomPlate_PointConstraint : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		GeomPlate_PointConstraint(const gp_Pnt &Pt, const Standard_Integer Order, const Standard_Real TolDist=1.00000000000000004792173602385929598312941379845e-4);
		%feature("autodoc", "1");
		GeomPlate_PointConstraint(const Standard_Real U, const Standard_Real V, const Handle_Geom_Surface &Surf, const Standard_Integer Order, const Standard_Real TolDist=1.00000000000000004792173602385929598312941379845e-4, const Standard_Real TolAng=1.0000000000000000208166817117216851329430937767e-2, const Standard_Real TolCurv=1.00000000000000005551115123125782702118158340454e-1);
		%feature("autodoc", "1");
		void SetOrder(const Standard_Integer Order);
		%feature("autodoc", "1");
		Standard_Integer Order() const;
		%feature("autodoc", "1");
		void SetG0Criterion(const Standard_Real TolDist);
		%feature("autodoc", "1");
		void SetG1Criterion(const Standard_Real TolAng);
		%feature("autodoc", "1");
		void SetG2Criterion(const Standard_Real TolCurv);
		%feature("autodoc", "1");
		Standard_Real G0Criterion() const;
		%feature("autodoc", "1");
		Standard_Real G1Criterion() const;
		%feature("autodoc", "1");
		Standard_Real G2Criterion() const;
		%feature("autodoc", "1");
		void D0(gp_Pnt & P) const;
		%feature("autodoc", "1");
		void D1(gp_Pnt & P, gp_Vec & V1, gp_Vec & V2) const;
		%feature("autodoc", "1");
		void D2(gp_Pnt & P, gp_Vec & V1, gp_Vec & V2, gp_Vec & V3, gp_Vec & V4, gp_Vec & V5) const;
		%feature("autodoc", "1");
		Standard_Boolean HasPnt2dOnSurf() const;
		%feature("autodoc", "1");
		void SetPnt2dOnSurf(const gp_Pnt2d &Pnt);
		%feature("autodoc", "1");
		gp_Pnt2d Pnt2dOnSurf() const;
		%feature("autodoc", "1");
		GeomLProp_SLProps & LPropSurf();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GeomPlate_PointConstraint {
	Handle_GeomPlate_PointConstraint GetHandle() {
	return *(Handle_GeomPlate_PointConstraint*) &$self;
	}
};
%extend GeomPlate_PointConstraint {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") GeomPlate_PointConstraint::~GeomPlate_PointConstraint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomPlate_PointConstraint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomPlate_SequenceOfAij;
class GeomPlate_SequenceOfAij : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		GeomPlate_SequenceOfAij();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const GeomPlate_SequenceOfAij & Assign(const GeomPlate_SequenceOfAij &Other);
		%feature("autodoc", "1");
		const GeomPlate_SequenceOfAij & operator=(const GeomPlate_SequenceOfAij &Other);
		%feature("autodoc", "1");
		void Append(const GeomPlate_Aij &T);
		%feature("autodoc", "1");
		void Append(GeomPlate_SequenceOfAij & S);
		%feature("autodoc", "1");
		void Prepend(const GeomPlate_Aij &T);
		%feature("autodoc", "1");
		void Prepend(GeomPlate_SequenceOfAij & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const GeomPlate_Aij &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, GeomPlate_SequenceOfAij & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const GeomPlate_Aij &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, GeomPlate_SequenceOfAij & S);
		%feature("autodoc", "1");
		const GeomPlate_Aij & First() const;
		%feature("autodoc", "1");
		const GeomPlate_Aij & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, GeomPlate_SequenceOfAij & S);
		%feature("autodoc", "1");
		const GeomPlate_Aij & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const GeomPlate_Aij & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const GeomPlate_Aij &I);
		%feature("autodoc", "1");
		GeomPlate_Aij & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		GeomPlate_Aij & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") GeomPlate_SequenceOfAij::~GeomPlate_SequenceOfAij %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomPlate_SequenceOfAij {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomPlate_BuildPlateSurface;
class GeomPlate_BuildPlateSurface {
	public:
		%feature("autodoc", "1");
		GeomPlate_BuildPlateSurface(const Handle_TColStd_HArray1OfInteger &NPoints, const Handle_GeomPlate_HArray1OfHCurveOnSurface &TabCurve, const Handle_TColStd_HArray1OfInteger &Tang, const Standard_Integer Degree, const Standard_Integer NbIter=3, const Standard_Real Tol2d=1.00000000000000008180305391403130954586231382564e-5, const Standard_Real Tol3d=1.00000000000000004792173602385929598312941379845e-4, const Standard_Real TolAng=1.0000000000000000208166817117216851329430937767e-2, const Standard_Real TolCurv=1.00000000000000005551115123125782702118158340454e-1, const Standard_Boolean Anisotropie=0);
		%feature("autodoc", "1");
		GeomPlate_BuildPlateSurface(const Handle_Geom_Surface &Surf, const Standard_Integer Degree=3, const Standard_Integer NbPtsOnCur=10, const Standard_Integer NbIter=3, const Standard_Real Tol2d=1.00000000000000008180305391403130954586231382564e-5, const Standard_Real Tol3d=1.00000000000000004792173602385929598312941379845e-4, const Standard_Real TolAng=1.0000000000000000208166817117216851329430937767e-2, const Standard_Real TolCurv=1.00000000000000005551115123125782702118158340454e-1, const Standard_Boolean Anisotropie=0);
		%feature("autodoc", "1");
		GeomPlate_BuildPlateSurface(const Standard_Integer Degree=3, const Standard_Integer NbPtsOnCur=10, const Standard_Integer NbIter=3, const Standard_Real Tol2d=1.00000000000000008180305391403130954586231382564e-5, const Standard_Real Tol3d=1.00000000000000004792173602385929598312941379845e-4, const Standard_Real TolAng=1.0000000000000000208166817117216851329430937767e-2, const Standard_Real TolCurv=1.00000000000000005551115123125782702118158340454e-1, const Standard_Boolean Anisotropie=0);
		%feature("autodoc", "1");
		void Init();
		%feature("autodoc", "1");
		void LoadInitSurface(const Handle_Geom_Surface &Surf);
		%feature("autodoc", "1");
		void Add(const Handle_GeomPlate_CurveConstraint &Cont);
		%feature("autodoc", "1");
		void SetNbBounds(const Standard_Integer NbBounds);
		%feature("autodoc", "1");
		void Add(const Handle_GeomPlate_PointConstraint &Cont);
		%feature("autodoc", "1");
		void Perform();
		%feature("autodoc", "1");
		Handle_GeomPlate_CurveConstraint CurveConstraint(const Standard_Integer order) const;
		%feature("autodoc", "1");
		Handle_GeomPlate_PointConstraint PointConstraint(const Standard_Integer order) const;
		%feature("autodoc", "1");
		void Disc2dContour(const Standard_Integer nbp, TColgp_SequenceOfXY & Seq2d);
		%feature("autodoc", "1");
		void Disc3dContour(const Standard_Integer nbp, const Standard_Integer iordre, TColgp_SequenceOfXYZ & Seq3d);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Handle_GeomPlate_Surface Surface() const;
		%feature("autodoc", "1");
		Handle_Geom_Surface SurfInit() const;
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfInteger Sense() const;
		%feature("autodoc", "1");
		Handle_TColGeom2d_HArray1OfCurve Curves2d() const;
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfInteger Order() const;
		%feature("autodoc", "1");
		Standard_Real G0Error() const;
		%feature("autodoc", "1");
		Standard_Real G1Error() const;
		%feature("autodoc", "1");
		Standard_Real G2Error() const;
		%feature("autodoc", "1");
		Standard_Real G0Error(const Standard_Integer Index);
		%feature("autodoc", "1");
		Standard_Real G1Error(const Standard_Integer Index);
		%feature("autodoc", "1");
		Standard_Real G2Error(const Standard_Integer Index);

};
%feature("shadow") GeomPlate_BuildPlateSurface::~GeomPlate_BuildPlateSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomPlate_BuildPlateSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomPlate_Aij;
class GeomPlate_Aij {
	public:
		%feature("autodoc", "1");
		GeomPlate_Aij();
		%feature("autodoc", "1");
		GeomPlate_Aij(const Standard_Integer anInd1, const Standard_Integer anInd2, const gp_Vec &aVec);

};
%feature("shadow") GeomPlate_Aij::~GeomPlate_Aij %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomPlate_Aij {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomPlate_PlateG1Criterion;
class GeomPlate_PlateG1Criterion : public AdvApp2Var_Criterion {
	public:
		%feature("autodoc", "1");
		GeomPlate_PlateG1Criterion(const TColgp_SequenceOfXY &Data, const TColgp_SequenceOfXYZ &G1Data, const Standard_Real Maximum, const AdvApp2Var_CriterionType Type=AdvApp2Var_Absolute, const AdvApp2Var_CriterionRepartition Repart=AdvApp2Var_Regular);
		%feature("autodoc", "1");
		virtual		void Value(AdvApp2Var_Patch & P, const AdvApp2Var_Context &C) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsSatisfied(const AdvApp2Var_Patch &P) const;

};
%feature("shadow") GeomPlate_PlateG1Criterion::~GeomPlate_PlateG1Criterion %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomPlate_PlateG1Criterion {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomPlate_Array1OfSequenceOfReal;
class GeomPlate_Array1OfSequenceOfReal {
	public:
		%feature("autodoc", "1");
		GeomPlate_Array1OfSequenceOfReal(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		GeomPlate_Array1OfSequenceOfReal(const TColStd_SequenceOfReal &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const TColStd_SequenceOfReal &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const GeomPlate_Array1OfSequenceOfReal & Assign(const GeomPlate_Array1OfSequenceOfReal &Other);
		%feature("autodoc", "1");
		const GeomPlate_Array1OfSequenceOfReal & operator=(const GeomPlate_Array1OfSequenceOfReal &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const TColStd_SequenceOfReal &Value);
		%feature("autodoc", "1");
		const TColStd_SequenceOfReal & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const TColStd_SequenceOfReal & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		TColStd_SequenceOfReal & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		TColStd_SequenceOfReal & operator()(const Standard_Integer Index);

};
%feature("shadow") GeomPlate_Array1OfSequenceOfReal::~GeomPlate_Array1OfSequenceOfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomPlate_Array1OfSequenceOfReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomPlate_Array1OfHCurveOnSurface;
class GeomPlate_Array1OfHCurveOnSurface {
	public:
		%feature("autodoc", "1");
		GeomPlate_Array1OfHCurveOnSurface(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		GeomPlate_Array1OfHCurveOnSurface(const Handle_Adaptor3d_HCurveOnSurface &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Handle_Adaptor3d_HCurveOnSurface &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const GeomPlate_Array1OfHCurveOnSurface & Assign(const GeomPlate_Array1OfHCurveOnSurface &Other);
		%feature("autodoc", "1");
		const GeomPlate_Array1OfHCurveOnSurface & operator=(const GeomPlate_Array1OfHCurveOnSurface &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_Adaptor3d_HCurveOnSurface &Value);
		%feature("autodoc", "1");
		const Handle_Adaptor3d_HCurveOnSurface & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_Adaptor3d_HCurveOnSurface & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_Adaptor3d_HCurveOnSurface & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_Adaptor3d_HCurveOnSurface & operator()(const Standard_Integer Index);

};
%feature("shadow") GeomPlate_Array1OfHCurveOnSurface::~GeomPlate_Array1OfHCurveOnSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomPlate_Array1OfHCurveOnSurface {
	void _kill_pointed() {
		delete $self;
	}
};
