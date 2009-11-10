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
%module TColGeom2d

%include TColGeom2d_renames.i
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%pythoncode {
import GarbageCollector
};

%include TColGeom2d_dependencies.i


%include TColGeom2d_headers.i




%nodefaultctor Handle_TColGeom2d_HSequenceOfCurve;
class Handle_TColGeom2d_HSequenceOfCurve : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TColGeom2d_HSequenceOfCurve();
		%feature("autodoc", "1");
		Handle_TColGeom2d_HSequenceOfCurve(const Handle_TColGeom2d_HSequenceOfCurve &aHandle);
		%feature("autodoc", "1");
		Handle_TColGeom2d_HSequenceOfCurve(const TColGeom2d_HSequenceOfCurve *anItem);
		%feature("autodoc", "1");
		Handle_TColGeom2d_HSequenceOfCurve & operator=(const Handle_TColGeom2d_HSequenceOfCurve &aHandle);
		%feature("autodoc", "1");
		Handle_TColGeom2d_HSequenceOfCurve & operator=(const TColGeom2d_HSequenceOfCurve *anItem);
		%feature("autodoc", "1");
		Handle_TColGeom2d_HSequenceOfCurve const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColGeom2d_HSequenceOfCurve {
	TColGeom2d_HSequenceOfCurve* GetObject() {
	return (TColGeom2d_HSequenceOfCurve*)$self->Access();
	}
};
%feature("shadow") Handle_TColGeom2d_HSequenceOfCurve::~Handle_TColGeom2d_HSequenceOfCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColGeom2d_HSequenceOfCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColGeom2d_HSequenceOfGeometry;
class Handle_TColGeom2d_HSequenceOfGeometry : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TColGeom2d_HSequenceOfGeometry();
		%feature("autodoc", "1");
		Handle_TColGeom2d_HSequenceOfGeometry(const Handle_TColGeom2d_HSequenceOfGeometry &aHandle);
		%feature("autodoc", "1");
		Handle_TColGeom2d_HSequenceOfGeometry(const TColGeom2d_HSequenceOfGeometry *anItem);
		%feature("autodoc", "1");
		Handle_TColGeom2d_HSequenceOfGeometry & operator=(const Handle_TColGeom2d_HSequenceOfGeometry &aHandle);
		%feature("autodoc", "1");
		Handle_TColGeom2d_HSequenceOfGeometry & operator=(const TColGeom2d_HSequenceOfGeometry *anItem);
		%feature("autodoc", "1");
		Handle_TColGeom2d_HSequenceOfGeometry const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColGeom2d_HSequenceOfGeometry {
	TColGeom2d_HSequenceOfGeometry* GetObject() {
	return (TColGeom2d_HSequenceOfGeometry*)$self->Access();
	}
};
%feature("shadow") Handle_TColGeom2d_HSequenceOfGeometry::~Handle_TColGeom2d_HSequenceOfGeometry %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColGeom2d_HSequenceOfGeometry {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColGeom2d_HSequenceOfBoundedCurve;
class Handle_TColGeom2d_HSequenceOfBoundedCurve : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TColGeom2d_HSequenceOfBoundedCurve();
		%feature("autodoc", "1");
		Handle_TColGeom2d_HSequenceOfBoundedCurve(const Handle_TColGeom2d_HSequenceOfBoundedCurve &aHandle);
		%feature("autodoc", "1");
		Handle_TColGeom2d_HSequenceOfBoundedCurve(const TColGeom2d_HSequenceOfBoundedCurve *anItem);
		%feature("autodoc", "1");
		Handle_TColGeom2d_HSequenceOfBoundedCurve & operator=(const Handle_TColGeom2d_HSequenceOfBoundedCurve &aHandle);
		%feature("autodoc", "1");
		Handle_TColGeom2d_HSequenceOfBoundedCurve & operator=(const TColGeom2d_HSequenceOfBoundedCurve *anItem);
		%feature("autodoc", "1");
		Handle_TColGeom2d_HSequenceOfBoundedCurve const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColGeom2d_HSequenceOfBoundedCurve {
	TColGeom2d_HSequenceOfBoundedCurve* GetObject() {
	return (TColGeom2d_HSequenceOfBoundedCurve*)$self->Access();
	}
};
%feature("shadow") Handle_TColGeom2d_HSequenceOfBoundedCurve::~Handle_TColGeom2d_HSequenceOfBoundedCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColGeom2d_HSequenceOfBoundedCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColGeom2d_HArray1OfGeometry;
class Handle_TColGeom2d_HArray1OfGeometry : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TColGeom2d_HArray1OfGeometry();
		%feature("autodoc", "1");
		Handle_TColGeom2d_HArray1OfGeometry(const Handle_TColGeom2d_HArray1OfGeometry &aHandle);
		%feature("autodoc", "1");
		Handle_TColGeom2d_HArray1OfGeometry(const TColGeom2d_HArray1OfGeometry *anItem);
		%feature("autodoc", "1");
		Handle_TColGeom2d_HArray1OfGeometry & operator=(const Handle_TColGeom2d_HArray1OfGeometry &aHandle);
		%feature("autodoc", "1");
		Handle_TColGeom2d_HArray1OfGeometry & operator=(const TColGeom2d_HArray1OfGeometry *anItem);
		%feature("autodoc", "1");
		Handle_TColGeom2d_HArray1OfGeometry const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColGeom2d_HArray1OfGeometry {
	TColGeom2d_HArray1OfGeometry* GetObject() {
	return (TColGeom2d_HArray1OfGeometry*)$self->Access();
	}
};
%feature("shadow") Handle_TColGeom2d_HArray1OfGeometry::~Handle_TColGeom2d_HArray1OfGeometry %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColGeom2d_HArray1OfGeometry {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColGeom2d_SequenceNodeOfSequenceOfBoundedCurve;
class Handle_TColGeom2d_SequenceNodeOfSequenceOfBoundedCurve : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_TColGeom2d_SequenceNodeOfSequenceOfBoundedCurve();
		%feature("autodoc", "1");
		Handle_TColGeom2d_SequenceNodeOfSequenceOfBoundedCurve(const Handle_TColGeom2d_SequenceNodeOfSequenceOfBoundedCurve &aHandle);
		%feature("autodoc", "1");
		Handle_TColGeom2d_SequenceNodeOfSequenceOfBoundedCurve(const TColGeom2d_SequenceNodeOfSequenceOfBoundedCurve *anItem);
		%feature("autodoc", "1");
		Handle_TColGeom2d_SequenceNodeOfSequenceOfBoundedCurve & operator=(const Handle_TColGeom2d_SequenceNodeOfSequenceOfBoundedCurve &aHandle);
		%feature("autodoc", "1");
		Handle_TColGeom2d_SequenceNodeOfSequenceOfBoundedCurve & operator=(const TColGeom2d_SequenceNodeOfSequenceOfBoundedCurve *anItem);
		%feature("autodoc", "1");
		Handle_TColGeom2d_SequenceNodeOfSequenceOfBoundedCurve const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColGeom2d_SequenceNodeOfSequenceOfBoundedCurve {
	TColGeom2d_SequenceNodeOfSequenceOfBoundedCurve* GetObject() {
	return (TColGeom2d_SequenceNodeOfSequenceOfBoundedCurve*)$self->Access();
	}
};
%feature("shadow") Handle_TColGeom2d_SequenceNodeOfSequenceOfBoundedCurve::~Handle_TColGeom2d_SequenceNodeOfSequenceOfBoundedCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColGeom2d_SequenceNodeOfSequenceOfBoundedCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColGeom2d_HArray1OfBSplineCurve;
class Handle_TColGeom2d_HArray1OfBSplineCurve : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TColGeom2d_HArray1OfBSplineCurve();
		%feature("autodoc", "1");
		Handle_TColGeom2d_HArray1OfBSplineCurve(const Handle_TColGeom2d_HArray1OfBSplineCurve &aHandle);
		%feature("autodoc", "1");
		Handle_TColGeom2d_HArray1OfBSplineCurve(const TColGeom2d_HArray1OfBSplineCurve *anItem);
		%feature("autodoc", "1");
		Handle_TColGeom2d_HArray1OfBSplineCurve & operator=(const Handle_TColGeom2d_HArray1OfBSplineCurve &aHandle);
		%feature("autodoc", "1");
		Handle_TColGeom2d_HArray1OfBSplineCurve & operator=(const TColGeom2d_HArray1OfBSplineCurve *anItem);
		%feature("autodoc", "1");
		Handle_TColGeom2d_HArray1OfBSplineCurve const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColGeom2d_HArray1OfBSplineCurve {
	TColGeom2d_HArray1OfBSplineCurve* GetObject() {
	return (TColGeom2d_HArray1OfBSplineCurve*)$self->Access();
	}
};
%feature("shadow") Handle_TColGeom2d_HArray1OfBSplineCurve::~Handle_TColGeom2d_HArray1OfBSplineCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColGeom2d_HArray1OfBSplineCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColGeom2d_HArray1OfCurve;
class Handle_TColGeom2d_HArray1OfCurve : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TColGeom2d_HArray1OfCurve();
		%feature("autodoc", "1");
		Handle_TColGeom2d_HArray1OfCurve(const Handle_TColGeom2d_HArray1OfCurve &aHandle);
		%feature("autodoc", "1");
		Handle_TColGeom2d_HArray1OfCurve(const TColGeom2d_HArray1OfCurve *anItem);
		%feature("autodoc", "1");
		Handle_TColGeom2d_HArray1OfCurve & operator=(const Handle_TColGeom2d_HArray1OfCurve &aHandle);
		%feature("autodoc", "1");
		Handle_TColGeom2d_HArray1OfCurve & operator=(const TColGeom2d_HArray1OfCurve *anItem);
		%feature("autodoc", "1");
		Handle_TColGeom2d_HArray1OfCurve const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColGeom2d_HArray1OfCurve {
	TColGeom2d_HArray1OfCurve* GetObject() {
	return (TColGeom2d_HArray1OfCurve*)$self->Access();
	}
};
%feature("shadow") Handle_TColGeom2d_HArray1OfCurve::~Handle_TColGeom2d_HArray1OfCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColGeom2d_HArray1OfCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColGeom2d_SequenceNodeOfSequenceOfCurve;
class Handle_TColGeom2d_SequenceNodeOfSequenceOfCurve : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_TColGeom2d_SequenceNodeOfSequenceOfCurve();
		%feature("autodoc", "1");
		Handle_TColGeom2d_SequenceNodeOfSequenceOfCurve(const Handle_TColGeom2d_SequenceNodeOfSequenceOfCurve &aHandle);
		%feature("autodoc", "1");
		Handle_TColGeom2d_SequenceNodeOfSequenceOfCurve(const TColGeom2d_SequenceNodeOfSequenceOfCurve *anItem);
		%feature("autodoc", "1");
		Handle_TColGeom2d_SequenceNodeOfSequenceOfCurve & operator=(const Handle_TColGeom2d_SequenceNodeOfSequenceOfCurve &aHandle);
		%feature("autodoc", "1");
		Handle_TColGeom2d_SequenceNodeOfSequenceOfCurve & operator=(const TColGeom2d_SequenceNodeOfSequenceOfCurve *anItem);
		%feature("autodoc", "1");
		Handle_TColGeom2d_SequenceNodeOfSequenceOfCurve const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColGeom2d_SequenceNodeOfSequenceOfCurve {
	TColGeom2d_SequenceNodeOfSequenceOfCurve* GetObject() {
	return (TColGeom2d_SequenceNodeOfSequenceOfCurve*)$self->Access();
	}
};
%feature("shadow") Handle_TColGeom2d_SequenceNodeOfSequenceOfCurve::~Handle_TColGeom2d_SequenceNodeOfSequenceOfCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColGeom2d_SequenceNodeOfSequenceOfCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColGeom2d_HArray1OfBoundedCurve;
class Handle_TColGeom2d_HArray1OfBoundedCurve : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TColGeom2d_HArray1OfBoundedCurve();
		%feature("autodoc", "1");
		Handle_TColGeom2d_HArray1OfBoundedCurve(const Handle_TColGeom2d_HArray1OfBoundedCurve &aHandle);
		%feature("autodoc", "1");
		Handle_TColGeom2d_HArray1OfBoundedCurve(const TColGeom2d_HArray1OfBoundedCurve *anItem);
		%feature("autodoc", "1");
		Handle_TColGeom2d_HArray1OfBoundedCurve & operator=(const Handle_TColGeom2d_HArray1OfBoundedCurve &aHandle);
		%feature("autodoc", "1");
		Handle_TColGeom2d_HArray1OfBoundedCurve & operator=(const TColGeom2d_HArray1OfBoundedCurve *anItem);
		%feature("autodoc", "1");
		Handle_TColGeom2d_HArray1OfBoundedCurve const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColGeom2d_HArray1OfBoundedCurve {
	TColGeom2d_HArray1OfBoundedCurve* GetObject() {
	return (TColGeom2d_HArray1OfBoundedCurve*)$self->Access();
	}
};
%feature("shadow") Handle_TColGeom2d_HArray1OfBoundedCurve::~Handle_TColGeom2d_HArray1OfBoundedCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColGeom2d_HArray1OfBoundedCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColGeom2d_HArray1OfBezierCurve;
class Handle_TColGeom2d_HArray1OfBezierCurve : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TColGeom2d_HArray1OfBezierCurve();
		%feature("autodoc", "1");
		Handle_TColGeom2d_HArray1OfBezierCurve(const Handle_TColGeom2d_HArray1OfBezierCurve &aHandle);
		%feature("autodoc", "1");
		Handle_TColGeom2d_HArray1OfBezierCurve(const TColGeom2d_HArray1OfBezierCurve *anItem);
		%feature("autodoc", "1");
		Handle_TColGeom2d_HArray1OfBezierCurve & operator=(const Handle_TColGeom2d_HArray1OfBezierCurve &aHandle);
		%feature("autodoc", "1");
		Handle_TColGeom2d_HArray1OfBezierCurve & operator=(const TColGeom2d_HArray1OfBezierCurve *anItem);
		%feature("autodoc", "1");
		Handle_TColGeom2d_HArray1OfBezierCurve const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColGeom2d_HArray1OfBezierCurve {
	TColGeom2d_HArray1OfBezierCurve* GetObject() {
	return (TColGeom2d_HArray1OfBezierCurve*)$self->Access();
	}
};
%feature("shadow") Handle_TColGeom2d_HArray1OfBezierCurve::~Handle_TColGeom2d_HArray1OfBezierCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColGeom2d_HArray1OfBezierCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColGeom2d_SequenceNodeOfSequenceOfGeometry;
class Handle_TColGeom2d_SequenceNodeOfSequenceOfGeometry : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_TColGeom2d_SequenceNodeOfSequenceOfGeometry();
		%feature("autodoc", "1");
		Handle_TColGeom2d_SequenceNodeOfSequenceOfGeometry(const Handle_TColGeom2d_SequenceNodeOfSequenceOfGeometry &aHandle);
		%feature("autodoc", "1");
		Handle_TColGeom2d_SequenceNodeOfSequenceOfGeometry(const TColGeom2d_SequenceNodeOfSequenceOfGeometry *anItem);
		%feature("autodoc", "1");
		Handle_TColGeom2d_SequenceNodeOfSequenceOfGeometry & operator=(const Handle_TColGeom2d_SequenceNodeOfSequenceOfGeometry &aHandle);
		%feature("autodoc", "1");
		Handle_TColGeom2d_SequenceNodeOfSequenceOfGeometry & operator=(const TColGeom2d_SequenceNodeOfSequenceOfGeometry *anItem);
		%feature("autodoc", "1");
		Handle_TColGeom2d_SequenceNodeOfSequenceOfGeometry const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColGeom2d_SequenceNodeOfSequenceOfGeometry {
	TColGeom2d_SequenceNodeOfSequenceOfGeometry* GetObject() {
	return (TColGeom2d_SequenceNodeOfSequenceOfGeometry*)$self->Access();
	}
};
%feature("shadow") Handle_TColGeom2d_SequenceNodeOfSequenceOfGeometry::~Handle_TColGeom2d_SequenceNodeOfSequenceOfGeometry %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColGeom2d_SequenceNodeOfSequenceOfGeometry {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColGeom2d_Array1OfBoundedCurve;
class TColGeom2d_Array1OfBoundedCurve {
	public:
		%feature("autodoc", "1");
		TColGeom2d_Array1OfBoundedCurve(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TColGeom2d_Array1OfBoundedCurve(const Handle_Geom2d_BoundedCurve &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Handle_Geom2d_BoundedCurve &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const TColGeom2d_Array1OfBoundedCurve & Assign(const TColGeom2d_Array1OfBoundedCurve &Other);
		%feature("autodoc", "1");
		const TColGeom2d_Array1OfBoundedCurve & operator=(const TColGeom2d_Array1OfBoundedCurve &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_Geom2d_BoundedCurve &Value);
		%feature("autodoc", "1");
		const Handle_Geom2d_BoundedCurve & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_Geom2d_BoundedCurve & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_Geom2d_BoundedCurve & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_Geom2d_BoundedCurve & operator()(const Standard_Integer Index);

};
%feature("shadow") TColGeom2d_Array1OfBoundedCurve::~TColGeom2d_Array1OfBoundedCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColGeom2d_Array1OfBoundedCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColGeom2d_HSequenceOfBoundedCurve;
class TColGeom2d_HSequenceOfBoundedCurve : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TColGeom2d_HSequenceOfBoundedCurve();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const Handle_Geom2d_BoundedCurve &anItem);
		%feature("autodoc", "1");
		void Append(const Handle_TColGeom2d_HSequenceOfBoundedCurve &aSequence);
		%feature("autodoc", "1");
		void Prepend(const Handle_Geom2d_BoundedCurve &anItem);
		%feature("autodoc", "1");
		void Prepend(const Handle_TColGeom2d_HSequenceOfBoundedCurve &aSequence);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_Geom2d_BoundedCurve &anItem);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_TColGeom2d_HSequenceOfBoundedCurve &aSequence);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_Geom2d_BoundedCurve &anItem);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_TColGeom2d_HSequenceOfBoundedCurve &aSequence);
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer anIndex, const Standard_Integer anOtherIndex);
		%feature("autodoc", "1");
		Handle_TColGeom2d_HSequenceOfBoundedCurve Split(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer anIndex, const Handle_Geom2d_BoundedCurve &anItem);
		%feature("autodoc", "1");
		const Handle_Geom2d_BoundedCurve & Value(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		Handle_Geom2d_BoundedCurve & ChangeValue(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer fromIndex, const Standard_Integer toIndex);
		%feature("autodoc", "1");
		const TColGeom2d_SequenceOfBoundedCurve & Sequence() const;
		%feature("autodoc", "1");
		TColGeom2d_SequenceOfBoundedCurve & ChangeSequence();
		%feature("autodoc", "1");
		Handle_TColGeom2d_HSequenceOfBoundedCurve ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColGeom2d_HSequenceOfBoundedCurve {
	Handle_TColGeom2d_HSequenceOfBoundedCurve GetHandle() {
	return *(Handle_TColGeom2d_HSequenceOfBoundedCurve*) &$self;
	}
};
%extend TColGeom2d_HSequenceOfBoundedCurve {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") TColGeom2d_HSequenceOfBoundedCurve::~TColGeom2d_HSequenceOfBoundedCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColGeom2d_HSequenceOfBoundedCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColGeom2d_Array1OfBezierCurve;
class TColGeom2d_Array1OfBezierCurve {
	public:
		%feature("autodoc", "1");
		TColGeom2d_Array1OfBezierCurve(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TColGeom2d_Array1OfBezierCurve(const Handle_Geom2d_BezierCurve &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Handle_Geom2d_BezierCurve &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const TColGeom2d_Array1OfBezierCurve & Assign(const TColGeom2d_Array1OfBezierCurve &Other);
		%feature("autodoc", "1");
		const TColGeom2d_Array1OfBezierCurve & operator=(const TColGeom2d_Array1OfBezierCurve &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_Geom2d_BezierCurve &Value);
		%feature("autodoc", "1");
		const Handle_Geom2d_BezierCurve & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_Geom2d_BezierCurve & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_Geom2d_BezierCurve & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_Geom2d_BezierCurve & operator()(const Standard_Integer Index);

};
%feature("shadow") TColGeom2d_Array1OfBezierCurve::~TColGeom2d_Array1OfBezierCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColGeom2d_Array1OfBezierCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColGeom2d_SequenceOfCurve;
class TColGeom2d_SequenceOfCurve : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		TColGeom2d_SequenceOfCurve();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const TColGeom2d_SequenceOfCurve & Assign(const TColGeom2d_SequenceOfCurve &Other);
		%feature("autodoc", "1");
		const TColGeom2d_SequenceOfCurve & operator=(const TColGeom2d_SequenceOfCurve &Other);
		%feature("autodoc", "1");
		void Append(const Handle_Geom2d_Curve &T);
		%feature("autodoc", "1");
		void Append(TColGeom2d_SequenceOfCurve & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_Geom2d_Curve &T);
		%feature("autodoc", "1");
		void Prepend(TColGeom2d_SequenceOfCurve & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_Geom2d_Curve &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, TColGeom2d_SequenceOfCurve & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_Geom2d_Curve &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, TColGeom2d_SequenceOfCurve & S);
		%feature("autodoc", "1");
		const Handle_Geom2d_Curve & First() const;
		%feature("autodoc", "1");
		const Handle_Geom2d_Curve & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, TColGeom2d_SequenceOfCurve & S);
		%feature("autodoc", "1");
		const Handle_Geom2d_Curve & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_Geom2d_Curve & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_Geom2d_Curve &I);
		%feature("autodoc", "1");
		Handle_Geom2d_Curve & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_Geom2d_Curve & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") TColGeom2d_SequenceOfCurve::~TColGeom2d_SequenceOfCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColGeom2d_SequenceOfCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColGeom2d_SequenceNodeOfSequenceOfCurve;
class TColGeom2d_SequenceNodeOfSequenceOfCurve : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		TColGeom2d_SequenceNodeOfSequenceOfCurve(const Handle_Geom2d_Curve &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_Geom2d_Curve & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColGeom2d_SequenceNodeOfSequenceOfCurve {
	Handle_TColGeom2d_SequenceNodeOfSequenceOfCurve GetHandle() {
	return *(Handle_TColGeom2d_SequenceNodeOfSequenceOfCurve*) &$self;
	}
};
%extend TColGeom2d_SequenceNodeOfSequenceOfCurve {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") TColGeom2d_SequenceNodeOfSequenceOfCurve::~TColGeom2d_SequenceNodeOfSequenceOfCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColGeom2d_SequenceNodeOfSequenceOfCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColGeom2d_HSequenceOfGeometry;
class TColGeom2d_HSequenceOfGeometry : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TColGeom2d_HSequenceOfGeometry();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const Handle_Geom2d_Geometry &anItem);
		%feature("autodoc", "1");
		void Append(const Handle_TColGeom2d_HSequenceOfGeometry &aSequence);
		%feature("autodoc", "1");
		void Prepend(const Handle_Geom2d_Geometry &anItem);
		%feature("autodoc", "1");
		void Prepend(const Handle_TColGeom2d_HSequenceOfGeometry &aSequence);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_Geom2d_Geometry &anItem);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_TColGeom2d_HSequenceOfGeometry &aSequence);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_Geom2d_Geometry &anItem);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_TColGeom2d_HSequenceOfGeometry &aSequence);
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer anIndex, const Standard_Integer anOtherIndex);
		%feature("autodoc", "1");
		Handle_TColGeom2d_HSequenceOfGeometry Split(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer anIndex, const Handle_Geom2d_Geometry &anItem);
		%feature("autodoc", "1");
		const Handle_Geom2d_Geometry & Value(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		Handle_Geom2d_Geometry & ChangeValue(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer fromIndex, const Standard_Integer toIndex);
		%feature("autodoc", "1");
		const TColGeom2d_SequenceOfGeometry & Sequence() const;
		%feature("autodoc", "1");
		TColGeom2d_SequenceOfGeometry & ChangeSequence();
		%feature("autodoc", "1");
		Handle_TColGeom2d_HSequenceOfGeometry ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColGeom2d_HSequenceOfGeometry {
	Handle_TColGeom2d_HSequenceOfGeometry GetHandle() {
	return *(Handle_TColGeom2d_HSequenceOfGeometry*) &$self;
	}
};
%extend TColGeom2d_HSequenceOfGeometry {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") TColGeom2d_HSequenceOfGeometry::~TColGeom2d_HSequenceOfGeometry %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColGeom2d_HSequenceOfGeometry {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColGeom2d_HArray1OfCurve;
class TColGeom2d_HArray1OfCurve : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TColGeom2d_HArray1OfCurve(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TColGeom2d_HArray1OfCurve(const Standard_Integer Low, const Standard_Integer Up, const Handle_Geom2d_Curve &V);
		%feature("autodoc", "1");
		void Init(const Handle_Geom2d_Curve &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_Geom2d_Curve &Value);
		%feature("autodoc", "1");
		const Handle_Geom2d_Curve & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_Geom2d_Curve & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const TColGeom2d_Array1OfCurve & Array1() const;
		%feature("autodoc", "1");
		TColGeom2d_Array1OfCurve & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColGeom2d_HArray1OfCurve {
	Handle_TColGeom2d_HArray1OfCurve GetHandle() {
	return *(Handle_TColGeom2d_HArray1OfCurve*) &$self;
	}
};
%extend TColGeom2d_HArray1OfCurve {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") TColGeom2d_HArray1OfCurve::~TColGeom2d_HArray1OfCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColGeom2d_HArray1OfCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColGeom2d_HArray1OfGeometry;
class TColGeom2d_HArray1OfGeometry : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TColGeom2d_HArray1OfGeometry(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TColGeom2d_HArray1OfGeometry(const Standard_Integer Low, const Standard_Integer Up, const Handle_Geom2d_Geometry &V);
		%feature("autodoc", "1");
		void Init(const Handle_Geom2d_Geometry &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_Geom2d_Geometry &Value);
		%feature("autodoc", "1");
		const Handle_Geom2d_Geometry & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_Geom2d_Geometry & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const TColGeom2d_Array1OfGeometry & Array1() const;
		%feature("autodoc", "1");
		TColGeom2d_Array1OfGeometry & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColGeom2d_HArray1OfGeometry {
	Handle_TColGeom2d_HArray1OfGeometry GetHandle() {
	return *(Handle_TColGeom2d_HArray1OfGeometry*) &$self;
	}
};
%extend TColGeom2d_HArray1OfGeometry {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") TColGeom2d_HArray1OfGeometry::~TColGeom2d_HArray1OfGeometry %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColGeom2d_HArray1OfGeometry {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColGeom2d_SequenceNodeOfSequenceOfGeometry;
class TColGeom2d_SequenceNodeOfSequenceOfGeometry : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		TColGeom2d_SequenceNodeOfSequenceOfGeometry(const Handle_Geom2d_Geometry &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_Geom2d_Geometry & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColGeom2d_SequenceNodeOfSequenceOfGeometry {
	Handle_TColGeom2d_SequenceNodeOfSequenceOfGeometry GetHandle() {
	return *(Handle_TColGeom2d_SequenceNodeOfSequenceOfGeometry*) &$self;
	}
};
%extend TColGeom2d_SequenceNodeOfSequenceOfGeometry {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") TColGeom2d_SequenceNodeOfSequenceOfGeometry::~TColGeom2d_SequenceNodeOfSequenceOfGeometry %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColGeom2d_SequenceNodeOfSequenceOfGeometry {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColGeom2d_Array1OfGeometry;
class TColGeom2d_Array1OfGeometry {
	public:
		%feature("autodoc", "1");
		TColGeom2d_Array1OfGeometry(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TColGeom2d_Array1OfGeometry(const Handle_Geom2d_Geometry &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Handle_Geom2d_Geometry &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const TColGeom2d_Array1OfGeometry & Assign(const TColGeom2d_Array1OfGeometry &Other);
		%feature("autodoc", "1");
		const TColGeom2d_Array1OfGeometry & operator=(const TColGeom2d_Array1OfGeometry &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_Geom2d_Geometry &Value);
		%feature("autodoc", "1");
		const Handle_Geom2d_Geometry & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_Geom2d_Geometry & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_Geom2d_Geometry & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_Geom2d_Geometry & operator()(const Standard_Integer Index);

};
%feature("shadow") TColGeom2d_Array1OfGeometry::~TColGeom2d_Array1OfGeometry %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColGeom2d_Array1OfGeometry {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColGeom2d_SequenceNodeOfSequenceOfBoundedCurve;
class TColGeom2d_SequenceNodeOfSequenceOfBoundedCurve : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		TColGeom2d_SequenceNodeOfSequenceOfBoundedCurve(const Handle_Geom2d_BoundedCurve &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_Geom2d_BoundedCurve & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColGeom2d_SequenceNodeOfSequenceOfBoundedCurve {
	Handle_TColGeom2d_SequenceNodeOfSequenceOfBoundedCurve GetHandle() {
	return *(Handle_TColGeom2d_SequenceNodeOfSequenceOfBoundedCurve*) &$self;
	}
};
%extend TColGeom2d_SequenceNodeOfSequenceOfBoundedCurve {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") TColGeom2d_SequenceNodeOfSequenceOfBoundedCurve::~TColGeom2d_SequenceNodeOfSequenceOfBoundedCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColGeom2d_SequenceNodeOfSequenceOfBoundedCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColGeom2d_Array1OfBSplineCurve;
class TColGeom2d_Array1OfBSplineCurve {
	public:
		%feature("autodoc", "1");
		TColGeom2d_Array1OfBSplineCurve(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TColGeom2d_Array1OfBSplineCurve(const Handle_Geom2d_BSplineCurve &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Handle_Geom2d_BSplineCurve &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const TColGeom2d_Array1OfBSplineCurve & Assign(const TColGeom2d_Array1OfBSplineCurve &Other);
		%feature("autodoc", "1");
		const TColGeom2d_Array1OfBSplineCurve & operator=(const TColGeom2d_Array1OfBSplineCurve &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_Geom2d_BSplineCurve &Value);
		%feature("autodoc", "1");
		const Handle_Geom2d_BSplineCurve & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_Geom2d_BSplineCurve & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_Geom2d_BSplineCurve & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_Geom2d_BSplineCurve & operator()(const Standard_Integer Index);

};
%feature("shadow") TColGeom2d_Array1OfBSplineCurve::~TColGeom2d_Array1OfBSplineCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColGeom2d_Array1OfBSplineCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColGeom2d_HArray1OfBSplineCurve;
class TColGeom2d_HArray1OfBSplineCurve : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TColGeom2d_HArray1OfBSplineCurve(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TColGeom2d_HArray1OfBSplineCurve(const Standard_Integer Low, const Standard_Integer Up, const Handle_Geom2d_BSplineCurve &V);
		%feature("autodoc", "1");
		void Init(const Handle_Geom2d_BSplineCurve &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_Geom2d_BSplineCurve &Value);
		%feature("autodoc", "1");
		const Handle_Geom2d_BSplineCurve & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_Geom2d_BSplineCurve & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const TColGeom2d_Array1OfBSplineCurve & Array1() const;
		%feature("autodoc", "1");
		TColGeom2d_Array1OfBSplineCurve & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColGeom2d_HArray1OfBSplineCurve {
	Handle_TColGeom2d_HArray1OfBSplineCurve GetHandle() {
	return *(Handle_TColGeom2d_HArray1OfBSplineCurve*) &$self;
	}
};
%extend TColGeom2d_HArray1OfBSplineCurve {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") TColGeom2d_HArray1OfBSplineCurve::~TColGeom2d_HArray1OfBSplineCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColGeom2d_HArray1OfBSplineCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColGeom2d_SequenceOfGeometry;
class TColGeom2d_SequenceOfGeometry : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		TColGeom2d_SequenceOfGeometry();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const TColGeom2d_SequenceOfGeometry & Assign(const TColGeom2d_SequenceOfGeometry &Other);
		%feature("autodoc", "1");
		const TColGeom2d_SequenceOfGeometry & operator=(const TColGeom2d_SequenceOfGeometry &Other);
		%feature("autodoc", "1");
		void Append(const Handle_Geom2d_Geometry &T);
		%feature("autodoc", "1");
		void Append(TColGeom2d_SequenceOfGeometry & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_Geom2d_Geometry &T);
		%feature("autodoc", "1");
		void Prepend(TColGeom2d_SequenceOfGeometry & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_Geom2d_Geometry &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, TColGeom2d_SequenceOfGeometry & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_Geom2d_Geometry &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, TColGeom2d_SequenceOfGeometry & S);
		%feature("autodoc", "1");
		const Handle_Geom2d_Geometry & First() const;
		%feature("autodoc", "1");
		const Handle_Geom2d_Geometry & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, TColGeom2d_SequenceOfGeometry & S);
		%feature("autodoc", "1");
		const Handle_Geom2d_Geometry & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_Geom2d_Geometry & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_Geom2d_Geometry &I);
		%feature("autodoc", "1");
		Handle_Geom2d_Geometry & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_Geom2d_Geometry & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") TColGeom2d_SequenceOfGeometry::~TColGeom2d_SequenceOfGeometry %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColGeom2d_SequenceOfGeometry {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColGeom2d_HArray1OfBezierCurve;
class TColGeom2d_HArray1OfBezierCurve : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TColGeom2d_HArray1OfBezierCurve(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TColGeom2d_HArray1OfBezierCurve(const Standard_Integer Low, const Standard_Integer Up, const Handle_Geom2d_BezierCurve &V);
		%feature("autodoc", "1");
		void Init(const Handle_Geom2d_BezierCurve &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_Geom2d_BezierCurve &Value);
		%feature("autodoc", "1");
		const Handle_Geom2d_BezierCurve & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_Geom2d_BezierCurve & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const TColGeom2d_Array1OfBezierCurve & Array1() const;
		%feature("autodoc", "1");
		TColGeom2d_Array1OfBezierCurve & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColGeom2d_HArray1OfBezierCurve {
	Handle_TColGeom2d_HArray1OfBezierCurve GetHandle() {
	return *(Handle_TColGeom2d_HArray1OfBezierCurve*) &$self;
	}
};
%extend TColGeom2d_HArray1OfBezierCurve {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") TColGeom2d_HArray1OfBezierCurve::~TColGeom2d_HArray1OfBezierCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColGeom2d_HArray1OfBezierCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColGeom2d_HSequenceOfCurve;
class TColGeom2d_HSequenceOfCurve : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TColGeom2d_HSequenceOfCurve();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const Handle_Geom2d_Curve &anItem);
		%feature("autodoc", "1");
		void Append(const Handle_TColGeom2d_HSequenceOfCurve &aSequence);
		%feature("autodoc", "1");
		void Prepend(const Handle_Geom2d_Curve &anItem);
		%feature("autodoc", "1");
		void Prepend(const Handle_TColGeom2d_HSequenceOfCurve &aSequence);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_Geom2d_Curve &anItem);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_TColGeom2d_HSequenceOfCurve &aSequence);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_Geom2d_Curve &anItem);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_TColGeom2d_HSequenceOfCurve &aSequence);
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer anIndex, const Standard_Integer anOtherIndex);
		%feature("autodoc", "1");
		Handle_TColGeom2d_HSequenceOfCurve Split(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer anIndex, const Handle_Geom2d_Curve &anItem);
		%feature("autodoc", "1");
		const Handle_Geom2d_Curve & Value(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		Handle_Geom2d_Curve & ChangeValue(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer fromIndex, const Standard_Integer toIndex);
		%feature("autodoc", "1");
		const TColGeom2d_SequenceOfCurve & Sequence() const;
		%feature("autodoc", "1");
		TColGeom2d_SequenceOfCurve & ChangeSequence();
		%feature("autodoc", "1");
		Handle_TColGeom2d_HSequenceOfCurve ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColGeom2d_HSequenceOfCurve {
	Handle_TColGeom2d_HSequenceOfCurve GetHandle() {
	return *(Handle_TColGeom2d_HSequenceOfCurve*) &$self;
	}
};
%extend TColGeom2d_HSequenceOfCurve {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") TColGeom2d_HSequenceOfCurve::~TColGeom2d_HSequenceOfCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColGeom2d_HSequenceOfCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColGeom2d_Array1OfCurve;
class TColGeom2d_Array1OfCurve {
	public:
		%feature("autodoc", "1");
		TColGeom2d_Array1OfCurve(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TColGeom2d_Array1OfCurve(const Handle_Geom2d_Curve &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Handle_Geom2d_Curve &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const TColGeom2d_Array1OfCurve & Assign(const TColGeom2d_Array1OfCurve &Other);
		%feature("autodoc", "1");
		const TColGeom2d_Array1OfCurve & operator=(const TColGeom2d_Array1OfCurve &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_Geom2d_Curve &Value);
		%feature("autodoc", "1");
		const Handle_Geom2d_Curve & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_Geom2d_Curve & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_Geom2d_Curve & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_Geom2d_Curve & operator()(const Standard_Integer Index);

};
%feature("shadow") TColGeom2d_Array1OfCurve::~TColGeom2d_Array1OfCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColGeom2d_Array1OfCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColGeom2d_SequenceOfBoundedCurve;
class TColGeom2d_SequenceOfBoundedCurve : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		TColGeom2d_SequenceOfBoundedCurve();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const TColGeom2d_SequenceOfBoundedCurve & Assign(const TColGeom2d_SequenceOfBoundedCurve &Other);
		%feature("autodoc", "1");
		const TColGeom2d_SequenceOfBoundedCurve & operator=(const TColGeom2d_SequenceOfBoundedCurve &Other);
		%feature("autodoc", "1");
		void Append(const Handle_Geom2d_BoundedCurve &T);
		%feature("autodoc", "1");
		void Append(TColGeom2d_SequenceOfBoundedCurve & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_Geom2d_BoundedCurve &T);
		%feature("autodoc", "1");
		void Prepend(TColGeom2d_SequenceOfBoundedCurve & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_Geom2d_BoundedCurve &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, TColGeom2d_SequenceOfBoundedCurve & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_Geom2d_BoundedCurve &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, TColGeom2d_SequenceOfBoundedCurve & S);
		%feature("autodoc", "1");
		const Handle_Geom2d_BoundedCurve & First() const;
		%feature("autodoc", "1");
		const Handle_Geom2d_BoundedCurve & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, TColGeom2d_SequenceOfBoundedCurve & S);
		%feature("autodoc", "1");
		const Handle_Geom2d_BoundedCurve & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_Geom2d_BoundedCurve & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_Geom2d_BoundedCurve &I);
		%feature("autodoc", "1");
		Handle_Geom2d_BoundedCurve & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_Geom2d_BoundedCurve & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") TColGeom2d_SequenceOfBoundedCurve::~TColGeom2d_SequenceOfBoundedCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColGeom2d_SequenceOfBoundedCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColGeom2d_HArray1OfBoundedCurve;
class TColGeom2d_HArray1OfBoundedCurve : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TColGeom2d_HArray1OfBoundedCurve(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TColGeom2d_HArray1OfBoundedCurve(const Standard_Integer Low, const Standard_Integer Up, const Handle_Geom2d_BoundedCurve &V);
		%feature("autodoc", "1");
		void Init(const Handle_Geom2d_BoundedCurve &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_Geom2d_BoundedCurve &Value);
		%feature("autodoc", "1");
		const Handle_Geom2d_BoundedCurve & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_Geom2d_BoundedCurve & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const TColGeom2d_Array1OfBoundedCurve & Array1() const;
		%feature("autodoc", "1");
		TColGeom2d_Array1OfBoundedCurve & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColGeom2d_HArray1OfBoundedCurve {
	Handle_TColGeom2d_HArray1OfBoundedCurve GetHandle() {
	return *(Handle_TColGeom2d_HArray1OfBoundedCurve*) &$self;
	}
};
%extend TColGeom2d_HArray1OfBoundedCurve {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") TColGeom2d_HArray1OfBoundedCurve::~TColGeom2d_HArray1OfBoundedCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColGeom2d_HArray1OfBoundedCurve {
	void _kill_pointed() {
		delete $self;
	}
};
