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

%module ChFiDS
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include ChFiDS_renames.i


%include ChFiDS_required_python_modules.i


%include ChFiDS_dependencies.i


%include ChFiDS_headers.i


enum ChFiDS_ErrorStatus {
	ChFiDS_Ok,
	ChFiDS_Error,
	ChFiDS_WalkingFailure,
	ChFiDS_StartsolFailure,
	ChFiDS_TwistedSurface,
	};

enum ChFiDS_ChamfMethod {
	ChFiDS_Sym,
	ChFiDS_TwoDist,
	ChFiDS_DistAngle,
	};

enum ChFiDS_State {
	ChFiDS_OnSame,
	ChFiDS_OnDiff,
	ChFiDS_AllSame,
	ChFiDS_BreakPoint,
	ChFiDS_FreeBoundary,
	ChFiDS_Closed,
	ChFiDS_Tangent,
	};



%nodefaultctor Handle_ChFiDS_SecHArray1;
class Handle_ChFiDS_SecHArray1 : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_ChFiDS_SecHArray1();
		%feature("autodoc", "1");
		Handle_ChFiDS_SecHArray1(const Handle_ChFiDS_SecHArray1 &aHandle);
		%feature("autodoc", "1");
		Handle_ChFiDS_SecHArray1(const ChFiDS_SecHArray1 *anItem);
		%feature("autodoc", "1");
		Handle_ChFiDS_SecHArray1 & operator=(const Handle_ChFiDS_SecHArray1 &aHandle);
		%feature("autodoc", "1");
		Handle_ChFiDS_SecHArray1 & operator=(const ChFiDS_SecHArray1 *anItem);
		%feature("autodoc", "1");
		static		Handle_ChFiDS_SecHArray1 const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ChFiDS_SecHArray1 {
	ChFiDS_SecHArray1* GetObject() {
	return (ChFiDS_SecHArray1*)$self->Access();
	}
};
%feature("shadow") Handle_ChFiDS_SecHArray1::~Handle_ChFiDS_SecHArray1 %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ChFiDS_SecHArray1 {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_ChFiDS_ListNodeOfListOfStripe;
class Handle_ChFiDS_ListNodeOfListOfStripe : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_ChFiDS_ListNodeOfListOfStripe();
		%feature("autodoc", "1");
		Handle_ChFiDS_ListNodeOfListOfStripe(const Handle_ChFiDS_ListNodeOfListOfStripe &aHandle);
		%feature("autodoc", "1");
		Handle_ChFiDS_ListNodeOfListOfStripe(const ChFiDS_ListNodeOfListOfStripe *anItem);
		%feature("autodoc", "1");
		Handle_ChFiDS_ListNodeOfListOfStripe & operator=(const Handle_ChFiDS_ListNodeOfListOfStripe &aHandle);
		%feature("autodoc", "1");
		Handle_ChFiDS_ListNodeOfListOfStripe & operator=(const ChFiDS_ListNodeOfListOfStripe *anItem);
		%feature("autodoc", "1");
		static		Handle_ChFiDS_ListNodeOfListOfStripe const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ChFiDS_ListNodeOfListOfStripe {
	ChFiDS_ListNodeOfListOfStripe* GetObject() {
	return (ChFiDS_ListNodeOfListOfStripe*)$self->Access();
	}
};
%feature("shadow") Handle_ChFiDS_ListNodeOfListOfStripe::~Handle_ChFiDS_ListNodeOfListOfStripe %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ChFiDS_ListNodeOfListOfStripe {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_ChFiDS_Stripe;
class Handle_ChFiDS_Stripe : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_ChFiDS_Stripe();
		%feature("autodoc", "1");
		Handle_ChFiDS_Stripe(const Handle_ChFiDS_Stripe &aHandle);
		%feature("autodoc", "1");
		Handle_ChFiDS_Stripe(const ChFiDS_Stripe *anItem);
		%feature("autodoc", "1");
		Handle_ChFiDS_Stripe & operator=(const Handle_ChFiDS_Stripe &aHandle);
		%feature("autodoc", "1");
		Handle_ChFiDS_Stripe & operator=(const ChFiDS_Stripe *anItem);
		%feature("autodoc", "1");
		static		Handle_ChFiDS_Stripe const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ChFiDS_Stripe {
	ChFiDS_Stripe* GetObject() {
	return (ChFiDS_Stripe*)$self->Access();
	}
};
%feature("shadow") Handle_ChFiDS_Stripe::~Handle_ChFiDS_Stripe %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ChFiDS_Stripe {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_ChFiDS_ListNodeOfListOfHElSpine;
class Handle_ChFiDS_ListNodeOfListOfHElSpine : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_ChFiDS_ListNodeOfListOfHElSpine();
		%feature("autodoc", "1");
		Handle_ChFiDS_ListNodeOfListOfHElSpine(const Handle_ChFiDS_ListNodeOfListOfHElSpine &aHandle);
		%feature("autodoc", "1");
		Handle_ChFiDS_ListNodeOfListOfHElSpine(const ChFiDS_ListNodeOfListOfHElSpine *anItem);
		%feature("autodoc", "1");
		Handle_ChFiDS_ListNodeOfListOfHElSpine & operator=(const Handle_ChFiDS_ListNodeOfListOfHElSpine &aHandle);
		%feature("autodoc", "1");
		Handle_ChFiDS_ListNodeOfListOfHElSpine & operator=(const ChFiDS_ListNodeOfListOfHElSpine *anItem);
		%feature("autodoc", "1");
		static		Handle_ChFiDS_ListNodeOfListOfHElSpine const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ChFiDS_ListNodeOfListOfHElSpine {
	ChFiDS_ListNodeOfListOfHElSpine* GetObject() {
	return (ChFiDS_ListNodeOfListOfHElSpine*)$self->Access();
	}
};
%feature("shadow") Handle_ChFiDS_ListNodeOfListOfHElSpine::~Handle_ChFiDS_ListNodeOfListOfHElSpine %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ChFiDS_ListNodeOfListOfHElSpine {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_ChFiDS_Spine;
class Handle_ChFiDS_Spine : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_ChFiDS_Spine();
		%feature("autodoc", "1");
		Handle_ChFiDS_Spine(const Handle_ChFiDS_Spine &aHandle);
		%feature("autodoc", "1");
		Handle_ChFiDS_Spine(const ChFiDS_Spine *anItem);
		%feature("autodoc", "1");
		Handle_ChFiDS_Spine & operator=(const Handle_ChFiDS_Spine &aHandle);
		%feature("autodoc", "1");
		Handle_ChFiDS_Spine & operator=(const ChFiDS_Spine *anItem);
		%feature("autodoc", "1");
		static		Handle_ChFiDS_Spine const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ChFiDS_Spine {
	ChFiDS_Spine* GetObject() {
	return (ChFiDS_Spine*)$self->Access();
	}
};
%feature("shadow") Handle_ChFiDS_Spine::~Handle_ChFiDS_Spine %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ChFiDS_Spine {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_ChFiDS_ChamfSpine;
class Handle_ChFiDS_ChamfSpine : public Handle_ChFiDS_Spine {
	public:
		%feature("autodoc", "1");
		Handle_ChFiDS_ChamfSpine();
		%feature("autodoc", "1");
		Handle_ChFiDS_ChamfSpine(const Handle_ChFiDS_ChamfSpine &aHandle);
		%feature("autodoc", "1");
		Handle_ChFiDS_ChamfSpine(const ChFiDS_ChamfSpine *anItem);
		%feature("autodoc", "1");
		Handle_ChFiDS_ChamfSpine & operator=(const Handle_ChFiDS_ChamfSpine &aHandle);
		%feature("autodoc", "1");
		Handle_ChFiDS_ChamfSpine & operator=(const ChFiDS_ChamfSpine *anItem);
		%feature("autodoc", "1");
		static		Handle_ChFiDS_ChamfSpine const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ChFiDS_ChamfSpine {
	ChFiDS_ChamfSpine* GetObject() {
	return (ChFiDS_ChamfSpine*)$self->Access();
	}
};
%feature("shadow") Handle_ChFiDS_ChamfSpine::~Handle_ChFiDS_ChamfSpine %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ChFiDS_ChamfSpine {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_ChFiDS_IndexedDataMapNodeOfIndexedDataMapOfVertexListOfStripe;
class Handle_ChFiDS_IndexedDataMapNodeOfIndexedDataMapOfVertexListOfStripe : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_ChFiDS_IndexedDataMapNodeOfIndexedDataMapOfVertexListOfStripe();
		%feature("autodoc", "1");
		Handle_ChFiDS_IndexedDataMapNodeOfIndexedDataMapOfVertexListOfStripe(const Handle_ChFiDS_IndexedDataMapNodeOfIndexedDataMapOfVertexListOfStripe &aHandle);
		%feature("autodoc", "1");
		Handle_ChFiDS_IndexedDataMapNodeOfIndexedDataMapOfVertexListOfStripe(const ChFiDS_IndexedDataMapNodeOfIndexedDataMapOfVertexListOfStripe *anItem);
		%feature("autodoc", "1");
		Handle_ChFiDS_IndexedDataMapNodeOfIndexedDataMapOfVertexListOfStripe & operator=(const Handle_ChFiDS_IndexedDataMapNodeOfIndexedDataMapOfVertexListOfStripe &aHandle);
		%feature("autodoc", "1");
		Handle_ChFiDS_IndexedDataMapNodeOfIndexedDataMapOfVertexListOfStripe & operator=(const ChFiDS_IndexedDataMapNodeOfIndexedDataMapOfVertexListOfStripe *anItem);
		%feature("autodoc", "1");
		static		Handle_ChFiDS_IndexedDataMapNodeOfIndexedDataMapOfVertexListOfStripe const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ChFiDS_IndexedDataMapNodeOfIndexedDataMapOfVertexListOfStripe {
	ChFiDS_IndexedDataMapNodeOfIndexedDataMapOfVertexListOfStripe* GetObject() {
	return (ChFiDS_IndexedDataMapNodeOfIndexedDataMapOfVertexListOfStripe*)$self->Access();
	}
};
%feature("shadow") Handle_ChFiDS_IndexedDataMapNodeOfIndexedDataMapOfVertexListOfStripe::~Handle_ChFiDS_IndexedDataMapNodeOfIndexedDataMapOfVertexListOfStripe %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ChFiDS_IndexedDataMapNodeOfIndexedDataMapOfVertexListOfStripe {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_ChFiDS_HData;
class Handle_ChFiDS_HData : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_ChFiDS_HData();
		%feature("autodoc", "1");
		Handle_ChFiDS_HData(const Handle_ChFiDS_HData &aHandle);
		%feature("autodoc", "1");
		Handle_ChFiDS_HData(const ChFiDS_HData *anItem);
		%feature("autodoc", "1");
		Handle_ChFiDS_HData & operator=(const Handle_ChFiDS_HData &aHandle);
		%feature("autodoc", "1");
		Handle_ChFiDS_HData & operator=(const ChFiDS_HData *anItem);
		%feature("autodoc", "1");
		static		Handle_ChFiDS_HData const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ChFiDS_HData {
	ChFiDS_HData* GetObject() {
	return (ChFiDS_HData*)$self->Access();
	}
};
%feature("shadow") Handle_ChFiDS_HData::~Handle_ChFiDS_HData %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ChFiDS_HData {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_ChFiDS_SequenceNodeOfSequenceOfSpine;
class Handle_ChFiDS_SequenceNodeOfSequenceOfSpine : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_ChFiDS_SequenceNodeOfSequenceOfSpine();
		%feature("autodoc", "1");
		Handle_ChFiDS_SequenceNodeOfSequenceOfSpine(const Handle_ChFiDS_SequenceNodeOfSequenceOfSpine &aHandle);
		%feature("autodoc", "1");
		Handle_ChFiDS_SequenceNodeOfSequenceOfSpine(const ChFiDS_SequenceNodeOfSequenceOfSpine *anItem);
		%feature("autodoc", "1");
		Handle_ChFiDS_SequenceNodeOfSequenceOfSpine & operator=(const Handle_ChFiDS_SequenceNodeOfSequenceOfSpine &aHandle);
		%feature("autodoc", "1");
		Handle_ChFiDS_SequenceNodeOfSequenceOfSpine & operator=(const ChFiDS_SequenceNodeOfSequenceOfSpine *anItem);
		%feature("autodoc", "1");
		static		Handle_ChFiDS_SequenceNodeOfSequenceOfSpine const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ChFiDS_SequenceNodeOfSequenceOfSpine {
	ChFiDS_SequenceNodeOfSequenceOfSpine* GetObject() {
	return (ChFiDS_SequenceNodeOfSequenceOfSpine*)$self->Access();
	}
};
%feature("shadow") Handle_ChFiDS_SequenceNodeOfSequenceOfSpine::~Handle_ChFiDS_SequenceNodeOfSequenceOfSpine %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ChFiDS_SequenceNodeOfSequenceOfSpine {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_ChFiDS_SurfData;
class Handle_ChFiDS_SurfData : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_ChFiDS_SurfData();
		%feature("autodoc", "1");
		Handle_ChFiDS_SurfData(const Handle_ChFiDS_SurfData &aHandle);
		%feature("autodoc", "1");
		Handle_ChFiDS_SurfData(const ChFiDS_SurfData *anItem);
		%feature("autodoc", "1");
		Handle_ChFiDS_SurfData & operator=(const Handle_ChFiDS_SurfData &aHandle);
		%feature("autodoc", "1");
		Handle_ChFiDS_SurfData & operator=(const ChFiDS_SurfData *anItem);
		%feature("autodoc", "1");
		static		Handle_ChFiDS_SurfData const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ChFiDS_SurfData {
	ChFiDS_SurfData* GetObject() {
	return (ChFiDS_SurfData*)$self->Access();
	}
};
%feature("shadow") Handle_ChFiDS_SurfData::~Handle_ChFiDS_SurfData %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ChFiDS_SurfData {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_ChFiDS_SequenceNodeOfSequenceOfSurfData;
class Handle_ChFiDS_SequenceNodeOfSequenceOfSurfData : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_ChFiDS_SequenceNodeOfSequenceOfSurfData();
		%feature("autodoc", "1");
		Handle_ChFiDS_SequenceNodeOfSequenceOfSurfData(const Handle_ChFiDS_SequenceNodeOfSequenceOfSurfData &aHandle);
		%feature("autodoc", "1");
		Handle_ChFiDS_SequenceNodeOfSequenceOfSurfData(const ChFiDS_SequenceNodeOfSequenceOfSurfData *anItem);
		%feature("autodoc", "1");
		Handle_ChFiDS_SequenceNodeOfSequenceOfSurfData & operator=(const Handle_ChFiDS_SequenceNodeOfSequenceOfSurfData &aHandle);
		%feature("autodoc", "1");
		Handle_ChFiDS_SequenceNodeOfSequenceOfSurfData & operator=(const ChFiDS_SequenceNodeOfSequenceOfSurfData *anItem);
		%feature("autodoc", "1");
		static		Handle_ChFiDS_SequenceNodeOfSequenceOfSurfData const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ChFiDS_SequenceNodeOfSequenceOfSurfData {
	ChFiDS_SequenceNodeOfSequenceOfSurfData* GetObject() {
	return (ChFiDS_SequenceNodeOfSequenceOfSurfData*)$self->Access();
	}
};
%feature("shadow") Handle_ChFiDS_SequenceNodeOfSequenceOfSurfData::~Handle_ChFiDS_SequenceNodeOfSequenceOfSurfData %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ChFiDS_SequenceNodeOfSequenceOfSurfData {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_ChFiDS_ListNodeOfRegularities;
class Handle_ChFiDS_ListNodeOfRegularities : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_ChFiDS_ListNodeOfRegularities();
		%feature("autodoc", "1");
		Handle_ChFiDS_ListNodeOfRegularities(const Handle_ChFiDS_ListNodeOfRegularities &aHandle);
		%feature("autodoc", "1");
		Handle_ChFiDS_ListNodeOfRegularities(const ChFiDS_ListNodeOfRegularities *anItem);
		%feature("autodoc", "1");
		Handle_ChFiDS_ListNodeOfRegularities & operator=(const Handle_ChFiDS_ListNodeOfRegularities &aHandle);
		%feature("autodoc", "1");
		Handle_ChFiDS_ListNodeOfRegularities & operator=(const ChFiDS_ListNodeOfRegularities *anItem);
		%feature("autodoc", "1");
		static		Handle_ChFiDS_ListNodeOfRegularities const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ChFiDS_ListNodeOfRegularities {
	ChFiDS_ListNodeOfRegularities* GetObject() {
	return (ChFiDS_ListNodeOfRegularities*)$self->Access();
	}
};
%feature("shadow") Handle_ChFiDS_ListNodeOfRegularities::~Handle_ChFiDS_ListNodeOfRegularities %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ChFiDS_ListNodeOfRegularities {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_ChFiDS_FilSpine;
class Handle_ChFiDS_FilSpine : public Handle_ChFiDS_Spine {
	public:
		%feature("autodoc", "1");
		Handle_ChFiDS_FilSpine();
		%feature("autodoc", "1");
		Handle_ChFiDS_FilSpine(const Handle_ChFiDS_FilSpine &aHandle);
		%feature("autodoc", "1");
		Handle_ChFiDS_FilSpine(const ChFiDS_FilSpine *anItem);
		%feature("autodoc", "1");
		Handle_ChFiDS_FilSpine & operator=(const Handle_ChFiDS_FilSpine &aHandle);
		%feature("autodoc", "1");
		Handle_ChFiDS_FilSpine & operator=(const ChFiDS_FilSpine *anItem);
		%feature("autodoc", "1");
		static		Handle_ChFiDS_FilSpine const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ChFiDS_FilSpine {
	ChFiDS_FilSpine* GetObject() {
	return (ChFiDS_FilSpine*)$self->Access();
	}
};
%feature("shadow") Handle_ChFiDS_FilSpine::~Handle_ChFiDS_FilSpine %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ChFiDS_FilSpine {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_ChFiDS_HElSpine;
class Handle_ChFiDS_HElSpine : public Handle_Adaptor3d_HCurve {
	public:
		%feature("autodoc", "1");
		Handle_ChFiDS_HElSpine();
		%feature("autodoc", "1");
		Handle_ChFiDS_HElSpine(const Handle_ChFiDS_HElSpine &aHandle);
		%feature("autodoc", "1");
		Handle_ChFiDS_HElSpine(const ChFiDS_HElSpine *anItem);
		%feature("autodoc", "1");
		Handle_ChFiDS_HElSpine & operator=(const Handle_ChFiDS_HElSpine &aHandle);
		%feature("autodoc", "1");
		Handle_ChFiDS_HElSpine & operator=(const ChFiDS_HElSpine *anItem);
		%feature("autodoc", "1");
		static		Handle_ChFiDS_HElSpine const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ChFiDS_HElSpine {
	ChFiDS_HElSpine* GetObject() {
	return (ChFiDS_HElSpine*)$self->Access();
	}
};
%feature("shadow") Handle_ChFiDS_HElSpine::~Handle_ChFiDS_HElSpine %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ChFiDS_HElSpine {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ChFiDS_StripeArray1;
class ChFiDS_StripeArray1 {
	public:
		%feature("autodoc", "1");
		ChFiDS_StripeArray1(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		ChFiDS_StripeArray1(const Handle_ChFiDS_Stripe &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Handle_ChFiDS_Stripe &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const ChFiDS_StripeArray1 & Assign(const ChFiDS_StripeArray1 &Other);
		%feature("autodoc", "1");
		const ChFiDS_StripeArray1 & operator=(const ChFiDS_StripeArray1 &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_ChFiDS_Stripe &Value);
		%feature("autodoc", "1");
		const Handle_ChFiDS_Stripe & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_ChFiDS_Stripe & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_ChFiDS_Stripe & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_ChFiDS_Stripe & operator()(const Standard_Integer Index);

};
%feature("shadow") ChFiDS_StripeArray1::~ChFiDS_StripeArray1 %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ChFiDS_StripeArray1 {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ChFiDS_Spine;
class ChFiDS_Spine : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		ChFiDS_Spine();
		%feature("autodoc", "1");
		ChFiDS_Spine(const Standard_Real Tol);
		%feature("autodoc", "1");
		void SetEdges(const TopoDS_Edge E);
		%feature("autodoc", "1");
		void PutInFirst(const TopoDS_Edge E);
		%feature("autodoc", "1");
		Standard_Integer NbEdges() const;
		%feature("autodoc", "1");
		const TopoDS_Edge  Edges(const Standard_Integer I) const;
		%feature("autodoc", "1");
		void SetFirstStatus(const ChFiDS_State S);
		%feature("autodoc", "1");
		void SetLastStatus(const ChFiDS_State S);
		%feature("autodoc", "1");
		virtual		void AppendElSpine(const Handle_ChFiDS_HElSpine &Els);
		%feature("autodoc", "1");
		Handle_ChFiDS_HElSpine ElSpine(const Standard_Integer IE) const;
		%feature("autodoc", "1");
		Handle_ChFiDS_HElSpine ElSpine(const TopoDS_Edge E) const;
		%feature("autodoc", "1");
		Handle_ChFiDS_HElSpine ElSpine(const Standard_Real W) const;
		%feature("autodoc", "1");
		ChFiDS_ListOfHElSpine & ChangeElSpines();
		%feature("autodoc", "1");
		virtual		void Reset(const Standard_Boolean AllData=0);
		%feature("autodoc", "1");
		Standard_Boolean SplitDone() const;
		%feature("autodoc", "1");
		void SplitDone(const Standard_Boolean B);
		%feature("autodoc", "1");
		void Load();
		%feature("autodoc", "1");
		Standard_Real Resolution(const Standard_Real R3d) const;
		%feature("autodoc", "1");
		Standard_Boolean IsClosed() const;
		%feature("autodoc", "1");
		Standard_Real FirstParameter() const;
		%feature("autodoc", "1");
		Standard_Real LastParameter() const;
		%feature("autodoc", "1");
		void SetFirstParameter(const Standard_Real Par);
		%feature("autodoc", "1");
		void SetLastParameter(const Standard_Real Par);
		%feature("autodoc", "1");
		Standard_Real FirstParameter(const Standard_Integer IndexSpine) const;
		%feature("autodoc", "1");
		Standard_Real LastParameter(const Standard_Integer IndexSpine) const;
		%feature("autodoc", "1");
		Standard_Real Length(const Standard_Integer IndexSpine) const;
		%feature("autodoc", "1");
		Standard_Boolean IsPeriodic() const;
		%feature("autodoc", "1");
		Standard_Real Period() const;
		%feature("autodoc", "1");
		Standard_Real Absc(const Standard_Real U);
		%feature("autodoc", "1");
		Standard_Real Absc(const Standard_Real U, const Standard_Integer I);
		%feature("autodoc","Parameter(Standard_Real AbsC, Standard_Boolean Oriented=1) -> Standard_Real");

		void Parameter(const Standard_Real AbsC, Standard_Real &OutValue, const Standard_Boolean Oriented=1);
		%feature("autodoc","Parameter(Standard_Integer Index, Standard_Real AbsC, Standard_Boolean Oriented=1) -> Standard_Real");

		void Parameter(const Standard_Integer Index, const Standard_Real AbsC, Standard_Real &OutValue, const Standard_Boolean Oriented=1);
		%feature("autodoc", "1");
		gp_Pnt Value(const Standard_Real AbsC);
		%feature("autodoc", "1");
		void D0(const Standard_Real AbsC, gp_Pnt & P);
		%feature("autodoc", "1");
		void D1(const Standard_Real AbsC, gp_Pnt & P, gp_Vec & V1);
		%feature("autodoc", "1");
		void D2(const Standard_Real AbsC, gp_Pnt & P, gp_Vec & V1, gp_Vec & V2);
		%feature("autodoc", "1");
		void SetCurrent(const Standard_Integer Index);
		%feature("autodoc", "1");
		const BRepAdaptor_Curve & CurrentElementarySpine(const Standard_Integer Index);
		%feature("autodoc", "1");
		Standard_Integer CurrentIndexOfElementarySpine() const;
		%feature("autodoc", "1");
		GeomAbs_CurveType GetType() const;
		%feature("autodoc", "1");
		gp_Lin Line() const;
		%feature("autodoc", "1");
		gp_Circ Circle() const;
		%feature("autodoc", "1");
		ChFiDS_State FirstStatus() const;
		%feature("autodoc", "1");
		ChFiDS_State LastStatus() const;
		%feature("autodoc", "1");
		ChFiDS_State Status(const Standard_Boolean IsFirst) const;
		%feature("autodoc", "1");
		void SetStatus(const ChFiDS_State S, const Standard_Boolean IsFirst);
		%feature("autodoc", "1");
		Standard_Boolean IsTangencyExtremity(const Standard_Boolean IsFirst) const;
		%feature("autodoc", "1");
		void SetTangencyExtremity(const Standard_Boolean IsTangency, const Standard_Boolean IsFirst);
		%feature("autodoc", "1");
		Standard_Real Absc(const TopoDS_Vertex V) const;
		%feature("autodoc", "1");
		TopoDS_Vertex FirstVertex() const;
		%feature("autodoc", "1");
		TopoDS_Vertex LastVertex() const;
		%feature("autodoc", "1");
		void SetFirstTgt(const Standard_Real W);
		%feature("autodoc", "1");
		void SetLastTgt(const Standard_Real W);
		%feature("autodoc", "1");
		Standard_Boolean HasFirstTgt() const;
		%feature("autodoc", "1");
		Standard_Boolean HasLastTgt() const;
		%feature("autodoc", "1");
		void SetReference(const Standard_Real W);
		%feature("autodoc", "1");
		void SetReference(const Standard_Integer I);
		%feature("autodoc", "1");
		Standard_Integer Index(const Standard_Real W, const Standard_Boolean Forward=1) const;
		%feature("autodoc", "1");
		Standard_Integer Index(const TopoDS_Edge E) const;
		%feature("autodoc", "1");
		void UnsetReference();
		%feature("autodoc", "1");
		void SetErrorStatus(const ChFiDS_ErrorStatus state);
		%feature("autodoc", "1");
		ChFiDS_ErrorStatus ErrorStatus() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ChFiDS_Spine {
	Handle_ChFiDS_Spine GetHandle() {
	return *(Handle_ChFiDS_Spine*) &$self;
	}
};
%extend ChFiDS_Spine {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") ChFiDS_Spine::~ChFiDS_Spine %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ChFiDS_Spine {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ChFiDS_SecArray1;
class ChFiDS_SecArray1 {
	public:
		%feature("autodoc", "1");
		ChFiDS_SecArray1(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		ChFiDS_SecArray1(const ChFiDS_CircSection &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const ChFiDS_CircSection &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const ChFiDS_SecArray1 & Assign(const ChFiDS_SecArray1 &Other);
		%feature("autodoc", "1");
		const ChFiDS_SecArray1 & operator=(const ChFiDS_SecArray1 &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const ChFiDS_CircSection &Value);
		%feature("autodoc", "1");
		const ChFiDS_CircSection & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const ChFiDS_CircSection & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		ChFiDS_CircSection & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		ChFiDS_CircSection & operator()(const Standard_Integer Index);

};
%feature("shadow") ChFiDS_SecArray1::~ChFiDS_SecArray1 %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ChFiDS_SecArray1 {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ChFiDS_FaceInterference;
class ChFiDS_FaceInterference {
	public:
		%feature("autodoc", "1");
		ChFiDS_FaceInterference();
		%feature("autodoc", "1");
		void SetInterference(const Standard_Integer LineIndex, const TopAbs_Orientation Trans, const Handle_Geom2d_Curve &PCurv1, const Handle_Geom2d_Curve &PCurv2);
		%feature("autodoc", "1");
		void SetTransition(const TopAbs_Orientation Trans);
		%feature("autodoc", "1");
		void SetFirstParameter(const Standard_Real U1);
		%feature("autodoc", "1");
		void SetLastParameter(const Standard_Real U1);
		%feature("autodoc", "1");
		void SetParameter(const Standard_Real U1, const Standard_Boolean IsFirst);
		%feature("autodoc", "1");
		Standard_Integer LineIndex() const;
		%feature("autodoc", "1");
		void SetLineIndex(const Standard_Integer I);
		%feature("autodoc", "1");
		TopAbs_Orientation Transition() const;
		%feature("autodoc", "1");
		const Handle_Geom2d_Curve & PCurveOnFace() const;
		%feature("autodoc", "1");
		const Handle_Geom2d_Curve & PCurveOnSurf() const;
		%feature("autodoc", "1");
		Handle_Geom2d_Curve & ChangePCurveOnFace();
		%feature("autodoc", "1");
		Handle_Geom2d_Curve & ChangePCurveOnSurf();
		%feature("autodoc", "1");
		Standard_Real FirstParameter() const;
		%feature("autodoc", "1");
		Standard_Real LastParameter() const;
		%feature("autodoc", "1");
		Standard_Real Parameter(const Standard_Boolean IsFirst) const;

};
%feature("shadow") ChFiDS_FaceInterference::~ChFiDS_FaceInterference %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ChFiDS_FaceInterference {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ChFiDS_ListOfStripe;
class ChFiDS_ListOfStripe {
	public:
		%feature("autodoc", "1");
		ChFiDS_ListOfStripe();
		%feature("autodoc", "1");
		void Assign(const ChFiDS_ListOfStripe &Other);
		%feature("autodoc", "1");
		void operator=(const ChFiDS_ListOfStripe &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const Handle_ChFiDS_Stripe &I);
		%feature("autodoc", "1");
		void Prepend(const Handle_ChFiDS_Stripe &I, ChFiDS_ListIteratorOfListOfStripe & theIt);
		%feature("autodoc", "1");
		void Prepend(ChFiDS_ListOfStripe & Other);
		%feature("autodoc", "1");
		void Append(const Handle_ChFiDS_Stripe &I);
		%feature("autodoc", "1");
		void Append(const Handle_ChFiDS_Stripe &I, ChFiDS_ListIteratorOfListOfStripe & theIt);
		%feature("autodoc", "1");
		void Append(ChFiDS_ListOfStripe & Other);
		%feature("autodoc", "1");
		Handle_ChFiDS_Stripe & First() const;
		%feature("autodoc", "1");
		Handle_ChFiDS_Stripe & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(ChFiDS_ListIteratorOfListOfStripe & It);
		%feature("autodoc", "1");
		void InsertBefore(const Handle_ChFiDS_Stripe &I, ChFiDS_ListIteratorOfListOfStripe & It);
		%feature("autodoc", "1");
		void InsertBefore(ChFiDS_ListOfStripe & Other, ChFiDS_ListIteratorOfListOfStripe & It);
		%feature("autodoc", "1");
		void InsertAfter(const Handle_ChFiDS_Stripe &I, ChFiDS_ListIteratorOfListOfStripe & It);
		%feature("autodoc", "1");
		void InsertAfter(ChFiDS_ListOfStripe & Other, ChFiDS_ListIteratorOfListOfStripe & It);

};
%feature("shadow") ChFiDS_ListOfStripe::~ChFiDS_ListOfStripe %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ChFiDS_ListOfStripe {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ChFiDS_ListIteratorOfListOfHElSpine;
class ChFiDS_ListIteratorOfListOfHElSpine {
	public:
		%feature("autodoc", "1");
		ChFiDS_ListIteratorOfListOfHElSpine();
		%feature("autodoc", "1");
		ChFiDS_ListIteratorOfListOfHElSpine(const ChFiDS_ListOfHElSpine &L);
		%feature("autodoc", "1");
		void Initialize(const ChFiDS_ListOfHElSpine &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		Handle_ChFiDS_HElSpine & Value() const;

};
%feature("shadow") ChFiDS_ListIteratorOfListOfHElSpine::~ChFiDS_ListIteratorOfListOfHElSpine %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ChFiDS_ListIteratorOfListOfHElSpine {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ChFiDS_ListNodeOfListOfStripe;
class ChFiDS_ListNodeOfListOfStripe : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		ChFiDS_ListNodeOfListOfStripe(const Handle_ChFiDS_Stripe &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Handle_ChFiDS_Stripe & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ChFiDS_ListNodeOfListOfStripe {
	Handle_ChFiDS_ListNodeOfListOfStripe GetHandle() {
	return *(Handle_ChFiDS_ListNodeOfListOfStripe*) &$self;
	}
};
%extend ChFiDS_ListNodeOfListOfStripe {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") ChFiDS_ListNodeOfListOfStripe::~ChFiDS_ListNodeOfListOfStripe %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ChFiDS_ListNodeOfListOfStripe {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ChFiDS_Map;
class ChFiDS_Map {
	public:
		%feature("autodoc", "1");
		ChFiDS_Map();
		%feature("autodoc", "1");
		void Fill(const TopoDS_Shape S, const TopAbs_ShapeEnum T1, const TopAbs_ShapeEnum T2);
		%feature("autodoc", "1");
		Standard_Boolean Contains(const TopoDS_Shape S) const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & FindFromKey(const TopoDS_Shape S) const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & operator()(const TopoDS_Shape S) const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & FindFromIndex(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & operator()(const Standard_Integer I) const;

};
%feature("shadow") ChFiDS_Map::~ChFiDS_Map %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ChFiDS_Map {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ChFiDS_ListNodeOfRegularities;
class ChFiDS_ListNodeOfRegularities : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		ChFiDS_ListNodeOfRegularities(const ChFiDS_Regul &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		ChFiDS_Regul & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ChFiDS_ListNodeOfRegularities {
	Handle_ChFiDS_ListNodeOfRegularities GetHandle() {
	return *(Handle_ChFiDS_ListNodeOfRegularities*) &$self;
	}
};
%extend ChFiDS_ListNodeOfRegularities {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") ChFiDS_ListNodeOfRegularities::~ChFiDS_ListNodeOfRegularities %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ChFiDS_ListNodeOfRegularities {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ChFiDS_CommonPoint;
class ChFiDS_CommonPoint {
	public:
		%feature("autodoc", "1");
		ChFiDS_CommonPoint();
		%feature("autodoc", "1");
		void Reset();
		%feature("autodoc", "1");
		void SetVertex(const TopoDS_Vertex V);
		%feature("autodoc", "1");
		void SetArc(const Standard_Real Tol, const TopoDS_Edge A, const Standard_Real Param, const TopAbs_Orientation TArc);
		%feature("autodoc", "1");
		void SetParameter(const Standard_Real Param);
		%feature("autodoc", "1");
		void SetPoint(const gp_Pnt Point);
		%feature("autodoc", "1");
		void SetVector(const gp_Vec Vector);
		%feature("autodoc", "1");
		void SetTolerance(const Standard_Real Tol);
		%feature("autodoc", "1");
		Standard_Real Tolerance() const;
		%feature("autodoc", "1");
		Standard_Boolean IsVertex() const;
		%feature("autodoc", "1");
		const TopoDS_Vertex  Vertex() const;
		%feature("autodoc", "1");
		Standard_Boolean IsOnArc() const;
		%feature("autodoc", "1");
		const TopoDS_Edge  Arc() const;
		%feature("autodoc", "1");
		TopAbs_Orientation TransitionOnArc() const;
		%feature("autodoc", "1");
		Standard_Real ParameterOnArc() const;
		%feature("autodoc", "1");
		Standard_Real Parameter() const;
		%feature("autodoc", "1");
		const gp_Pnt  Point() const;
		%feature("autodoc", "1");
		Standard_Boolean HasVector() const;
		%feature("autodoc", "1");
		const gp_Vec  Vector() const;

};
%feature("shadow") ChFiDS_CommonPoint::~ChFiDS_CommonPoint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ChFiDS_CommonPoint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ChFiDS_FilSpine;
class ChFiDS_FilSpine : public ChFiDS_Spine {
	public:
		%feature("autodoc", "1");
		ChFiDS_FilSpine();
		%feature("autodoc", "1");
		ChFiDS_FilSpine(const Standard_Real Tol);
		%feature("autodoc", "1");
		virtual		void Reset(const Standard_Boolean AllData=0);
		%feature("autodoc", "1");
		void SetRadius(const Standard_Real Radius, const TopoDS_Edge E);
		%feature("autodoc", "1");
		void UnSetRadius(const TopoDS_Edge E);
		%feature("autodoc", "1");
		void SetRadius(const Standard_Real Radius, const TopoDS_Vertex V);
		%feature("autodoc", "1");
		void UnSetRadius(const TopoDS_Vertex V);
		%feature("autodoc", "1");
		void SetRadius(const gp_XY UandR, const Standard_Integer IinC);
		%feature("autodoc", "1");
		void SetRadius(const Standard_Real Radius);
		%feature("autodoc", "1");
		void SetRadius(const Handle_Law_Function &C, const Standard_Integer IinC);
		%feature("autodoc", "1");
		Standard_Boolean IsConstant() const;
		%feature("autodoc", "1");
		Standard_Boolean IsConstant(const Standard_Integer IE) const;
		%feature("autodoc", "1");
		Standard_Real Radius() const;
		%feature("autodoc", "1");
		Standard_Real Radius(const Standard_Integer IE) const;
		%feature("autodoc", "1");
		Standard_Real Radius(const TopoDS_Edge E) const;
		%feature("autodoc", "1");
		virtual		void AppendElSpine(const Handle_ChFiDS_HElSpine &Els);
		%feature("autodoc", "1");
		Handle_Law_Composite Law(const Handle_ChFiDS_HElSpine &Els) const;
		%feature("autodoc", "1");
		Handle_Law_Function & ChangeLaw(const TopoDS_Edge E);
		%feature("autodoc", "1");
		Standard_Real MaxRadFromSeqAndLaws() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ChFiDS_FilSpine {
	Handle_ChFiDS_FilSpine GetHandle() {
	return *(Handle_ChFiDS_FilSpine*) &$self;
	}
};
%extend ChFiDS_FilSpine {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") ChFiDS_FilSpine::~ChFiDS_FilSpine %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ChFiDS_FilSpine {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ChFiDS_SequenceOfSpine;
class ChFiDS_SequenceOfSpine : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		ChFiDS_SequenceOfSpine();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const ChFiDS_SequenceOfSpine & Assign(const ChFiDS_SequenceOfSpine &Other);
		%feature("autodoc", "1");
		const ChFiDS_SequenceOfSpine & operator=(const ChFiDS_SequenceOfSpine &Other);
		%feature("autodoc", "1");
		void Append(const Handle_ChFiDS_Spine &T);
		%feature("autodoc", "1");
		void Append(ChFiDS_SequenceOfSpine & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_ChFiDS_Spine &T);
		%feature("autodoc", "1");
		void Prepend(ChFiDS_SequenceOfSpine & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_ChFiDS_Spine &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, ChFiDS_SequenceOfSpine & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_ChFiDS_Spine &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, ChFiDS_SequenceOfSpine & S);
		%feature("autodoc", "1");
		const Handle_ChFiDS_Spine & First() const;
		%feature("autodoc", "1");
		const Handle_ChFiDS_Spine & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, ChFiDS_SequenceOfSpine & S);
		%feature("autodoc", "1");
		const Handle_ChFiDS_Spine & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_ChFiDS_Spine & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_ChFiDS_Spine &I);
		%feature("autodoc", "1");
		Handle_ChFiDS_Spine & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_ChFiDS_Spine & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") ChFiDS_SequenceOfSpine::~ChFiDS_SequenceOfSpine %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ChFiDS_SequenceOfSpine {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ChFiDS_ChamfSpine;
class ChFiDS_ChamfSpine : public ChFiDS_Spine {
	public:
		%feature("autodoc", "1");
		ChFiDS_ChamfSpine();
		%feature("autodoc", "1");
		ChFiDS_ChamfSpine(const Standard_Real Tol);
		%feature("autodoc", "1");
		void SetDist(const Standard_Real Dis);
		%feature("autodoc","GetDist() -> Standard_Real");

		void GetDist(Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		void SetDists(const Standard_Real Dis1, const Standard_Real Dis2);
		%feature("autodoc","Dists() -> [Standard_Real, Standard_Real]");

		void Dists(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc","GetDistAngle() -> [Standard_Real, Standard_Real]");

		void GetDistAngle(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Boolean & DisOnF1) const;
		%feature("autodoc", "1");
		void SetDistAngle(const Standard_Real Dis, const Standard_Real Angle, const Standard_Boolean DisOnF1);
		%feature("autodoc", "1");
		ChFiDS_ChamfMethod IsChamfer() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ChFiDS_ChamfSpine {
	Handle_ChFiDS_ChamfSpine GetHandle() {
	return *(Handle_ChFiDS_ChamfSpine*) &$self;
	}
};
%extend ChFiDS_ChamfSpine {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") ChFiDS_ChamfSpine::~ChFiDS_ChamfSpine %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ChFiDS_ChamfSpine {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ChFiDS_SurfData;
class ChFiDS_SurfData : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		ChFiDS_SurfData();
		%feature("autodoc", "1");
		void Copy(const Handle_ChFiDS_SurfData &Other);
		%feature("autodoc", "1");
		Standard_Integer IndexOfS1() const;
		%feature("autodoc", "1");
		Standard_Integer IndexOfS2() const;
		%feature("autodoc", "1");
		Standard_Boolean IsOnCurve1() const;
		%feature("autodoc", "1");
		Standard_Boolean IsOnCurve2() const;
		%feature("autodoc", "1");
		Standard_Integer IndexOfC1() const;
		%feature("autodoc", "1");
		Standard_Integer IndexOfC2() const;
		%feature("autodoc", "1");
		Standard_Integer Surf() const;
		%feature("autodoc", "1");
		TopAbs_Orientation Orientation() const;
		%feature("autodoc", "1");
		const ChFiDS_FaceInterference & InterferenceOnS1() const;
		%feature("autodoc", "1");
		const ChFiDS_FaceInterference & InterferenceOnS2() const;
		%feature("autodoc", "1");
		const ChFiDS_CommonPoint & VertexFirstOnS1() const;
		%feature("autodoc", "1");
		const ChFiDS_CommonPoint & VertexFirstOnS2() const;
		%feature("autodoc", "1");
		const ChFiDS_CommonPoint & VertexLastOnS1() const;
		%feature("autodoc", "1");
		const ChFiDS_CommonPoint & VertexLastOnS2() const;
		%feature("autodoc", "1");
		void ChangeIndexOfS1(const Standard_Integer Index);
		%feature("autodoc", "1");
		void ChangeIndexOfS2(const Standard_Integer Index);
		%feature("autodoc", "1");
		void ChangeSurf(const Standard_Integer Index);
		%feature("autodoc", "1");
		void SetIndexOfC1(const Standard_Integer Index);
		%feature("autodoc", "1");
		void SetIndexOfC2(const Standard_Integer Index);
		%feature("autodoc", "1");
		TopAbs_Orientation & ChangeOrientation();
		%feature("autodoc", "1");
		ChFiDS_FaceInterference & ChangeInterferenceOnS1();
		%feature("autodoc", "1");
		ChFiDS_FaceInterference & ChangeInterferenceOnS2();
		%feature("autodoc", "1");
		ChFiDS_CommonPoint & ChangeVertexFirstOnS1();
		%feature("autodoc", "1");
		ChFiDS_CommonPoint & ChangeVertexFirstOnS2();
		%feature("autodoc", "1");
		ChFiDS_CommonPoint & ChangeVertexLastOnS1();
		%feature("autodoc", "1");
		ChFiDS_CommonPoint & ChangeVertexLastOnS2();
		%feature("autodoc", "1");
		const ChFiDS_FaceInterference & Interference(const Standard_Integer OnS) const;
		%feature("autodoc", "1");
		ChFiDS_FaceInterference & ChangeInterference(const Standard_Integer OnS);
		%feature("autodoc", "1");
		Standard_Integer Index(const Standard_Integer OfS) const;
		%feature("autodoc", "1");
		const ChFiDS_CommonPoint & Vertex(const Standard_Boolean First, const Standard_Integer OnS) const;
		%feature("autodoc", "1");
		ChFiDS_CommonPoint & ChangeVertex(const Standard_Boolean First, const Standard_Integer OnS);
		%feature("autodoc", "1");
		Standard_Boolean IsOnCurve(const Standard_Integer OnS) const;
		%feature("autodoc", "1");
		Standard_Integer IndexOfC(const Standard_Integer OnS) const;
		%feature("autodoc", "1");
		Standard_Real FirstSpineParam() const;
		%feature("autodoc", "1");
		Standard_Real LastSpineParam() const;
		%feature("autodoc", "1");
		void FirstSpineParam(const Standard_Real Par);
		%feature("autodoc", "1");
		void LastSpineParam(const Standard_Real Par);
		%feature("autodoc", "1");
		Standard_Real FirstExtensionValue() const;
		%feature("autodoc", "1");
		Standard_Real LastExtensionValue() const;
		%feature("autodoc", "1");
		void FirstExtensionValue(const Standard_Real Extend);
		%feature("autodoc", "1");
		void LastExtensionValue(const Standard_Real Extend);
		%feature("autodoc", "1");
		Handle_MMgt_TShared Simul() const;
		%feature("autodoc", "1");
		void SetSimul(const Handle_MMgt_TShared &S);
		%feature("autodoc", "1");
		void ResetSimul();
		%feature("autodoc", "1");
		gp_Pnt2d Get2dPoints(const Standard_Boolean First, const Standard_Integer OnS) const;
		%feature("autodoc", "1");
		void Get2dPoints(gp_Pnt2d & P2df1, gp_Pnt2d & P2dl1, gp_Pnt2d & P2df2, gp_Pnt2d & P2dl2) const;
		%feature("autodoc", "1");
		void Set2dPoints(const gp_Pnt2d P2df1, const gp_Pnt2d P2dl1, const gp_Pnt2d P2df2, const gp_Pnt2d P2dl2);
		%feature("autodoc", "1");
		Standard_Boolean TwistOnS1() const;
		%feature("autodoc", "1");
		Standard_Boolean TwistOnS2() const;
		%feature("autodoc", "1");
		void TwistOnS1(const Standard_Boolean T);
		%feature("autodoc", "1");
		void TwistOnS2(const Standard_Boolean T);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ChFiDS_SurfData {
	Handle_ChFiDS_SurfData GetHandle() {
	return *(Handle_ChFiDS_SurfData*) &$self;
	}
};
%extend ChFiDS_SurfData {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") ChFiDS_SurfData::~ChFiDS_SurfData %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ChFiDS_SurfData {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ChFiDS_StripeMap;
class ChFiDS_StripeMap {
	public:
		%feature("autodoc", "1");
		ChFiDS_StripeMap();
		%feature("autodoc", "1");
		void Add(const TopoDS_Vertex V, const Handle_ChFiDS_Stripe &F);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		const ChFiDS_ListOfStripe & FindFromKey(const TopoDS_Vertex V) const;
		%feature("autodoc", "1");
		const ChFiDS_ListOfStripe & operator()(const TopoDS_Vertex V) const;
		%feature("autodoc", "1");
		const ChFiDS_ListOfStripe & FindFromIndex(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const ChFiDS_ListOfStripe & operator()(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const TopoDS_Vertex  FindKey(const Standard_Integer I) const;
		%feature("autodoc", "1");
		void Clear();

};
%feature("shadow") ChFiDS_StripeMap::~ChFiDS_StripeMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ChFiDS_StripeMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ChFiDS_HData;
class ChFiDS_HData : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		ChFiDS_HData();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const Handle_ChFiDS_SurfData &anItem);
		%feature("autodoc", "1");
		void Append(const Handle_ChFiDS_HData &aSequence);
		%feature("autodoc", "1");
		void Prepend(const Handle_ChFiDS_SurfData &anItem);
		%feature("autodoc", "1");
		void Prepend(const Handle_ChFiDS_HData &aSequence);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_ChFiDS_SurfData &anItem);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_ChFiDS_HData &aSequence);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_ChFiDS_SurfData &anItem);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_ChFiDS_HData &aSequence);
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer anIndex, const Standard_Integer anOtherIndex);
		%feature("autodoc", "1");
		Handle_ChFiDS_HData Split(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer anIndex, const Handle_ChFiDS_SurfData &anItem);
		%feature("autodoc", "1");
		const Handle_ChFiDS_SurfData & Value(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		Handle_ChFiDS_SurfData & ChangeValue(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer fromIndex, const Standard_Integer toIndex);
		%feature("autodoc", "1");
		const ChFiDS_SequenceOfSurfData & Sequence() const;
		%feature("autodoc", "1");
		ChFiDS_SequenceOfSurfData & ChangeSequence();
		%feature("autodoc", "1");
		Handle_ChFiDS_HData ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ChFiDS_HData {
	Handle_ChFiDS_HData GetHandle() {
	return *(Handle_ChFiDS_HData*) &$self;
	}
};
%extend ChFiDS_HData {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") ChFiDS_HData::~ChFiDS_HData %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ChFiDS_HData {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ChFiDS_SequenceNodeOfSequenceOfSurfData;
class ChFiDS_SequenceNodeOfSequenceOfSurfData : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		ChFiDS_SequenceNodeOfSequenceOfSurfData(const Handle_ChFiDS_SurfData &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_ChFiDS_SurfData & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ChFiDS_SequenceNodeOfSequenceOfSurfData {
	Handle_ChFiDS_SequenceNodeOfSequenceOfSurfData GetHandle() {
	return *(Handle_ChFiDS_SequenceNodeOfSequenceOfSurfData*) &$self;
	}
};
%extend ChFiDS_SequenceNodeOfSequenceOfSurfData {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") ChFiDS_SequenceNodeOfSequenceOfSurfData::~ChFiDS_SequenceNodeOfSequenceOfSurfData %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ChFiDS_SequenceNodeOfSequenceOfSurfData {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ChFiDS_CircSection;
class ChFiDS_CircSection {
	public:
		%feature("autodoc", "1");
		ChFiDS_CircSection();
		%feature("autodoc", "1");
		void Set(const gp_Circ C, const Standard_Real F, const Standard_Real L);
		%feature("autodoc", "1");
		void Set(const gp_Lin C, const Standard_Real F, const Standard_Real L);
		%feature("autodoc","Get() -> [Standard_Real, Standard_Real]");

		void Get(gp_Circ & C, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc","Get() -> [Standard_Real, Standard_Real]");

		void Get(gp_Lin & C, Standard_Real &OutValue, Standard_Real &OutValue) const;

};
%feature("shadow") ChFiDS_CircSection::~ChFiDS_CircSection %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ChFiDS_CircSection {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ChFiDS_ListIteratorOfListOfStripe;
class ChFiDS_ListIteratorOfListOfStripe {
	public:
		%feature("autodoc", "1");
		ChFiDS_ListIteratorOfListOfStripe();
		%feature("autodoc", "1");
		ChFiDS_ListIteratorOfListOfStripe(const ChFiDS_ListOfStripe &L);
		%feature("autodoc", "1");
		void Initialize(const ChFiDS_ListOfStripe &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		Handle_ChFiDS_Stripe & Value() const;

};
%feature("shadow") ChFiDS_ListIteratorOfListOfStripe::~ChFiDS_ListIteratorOfListOfStripe %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ChFiDS_ListIteratorOfListOfStripe {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ChFiDS_SequenceOfSurfData;
class ChFiDS_SequenceOfSurfData : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		ChFiDS_SequenceOfSurfData();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const ChFiDS_SequenceOfSurfData & Assign(const ChFiDS_SequenceOfSurfData &Other);
		%feature("autodoc", "1");
		const ChFiDS_SequenceOfSurfData & operator=(const ChFiDS_SequenceOfSurfData &Other);
		%feature("autodoc", "1");
		void Append(const Handle_ChFiDS_SurfData &T);
		%feature("autodoc", "1");
		void Append(ChFiDS_SequenceOfSurfData & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_ChFiDS_SurfData &T);
		%feature("autodoc", "1");
		void Prepend(ChFiDS_SequenceOfSurfData & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_ChFiDS_SurfData &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, ChFiDS_SequenceOfSurfData & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_ChFiDS_SurfData &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, ChFiDS_SequenceOfSurfData & S);
		%feature("autodoc", "1");
		const Handle_ChFiDS_SurfData & First() const;
		%feature("autodoc", "1");
		const Handle_ChFiDS_SurfData & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, ChFiDS_SequenceOfSurfData & S);
		%feature("autodoc", "1");
		const Handle_ChFiDS_SurfData & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_ChFiDS_SurfData & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_ChFiDS_SurfData &I);
		%feature("autodoc", "1");
		Handle_ChFiDS_SurfData & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_ChFiDS_SurfData & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") ChFiDS_SequenceOfSurfData::~ChFiDS_SequenceOfSurfData %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ChFiDS_SequenceOfSurfData {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ChFiDS_SequenceNodeOfSequenceOfSpine;
class ChFiDS_SequenceNodeOfSequenceOfSpine : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		ChFiDS_SequenceNodeOfSequenceOfSpine(const Handle_ChFiDS_Spine &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_ChFiDS_Spine & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ChFiDS_SequenceNodeOfSequenceOfSpine {
	Handle_ChFiDS_SequenceNodeOfSequenceOfSpine GetHandle() {
	return *(Handle_ChFiDS_SequenceNodeOfSequenceOfSpine*) &$self;
	}
};
%extend ChFiDS_SequenceNodeOfSequenceOfSpine {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") ChFiDS_SequenceNodeOfSequenceOfSpine::~ChFiDS_SequenceNodeOfSequenceOfSpine %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ChFiDS_SequenceNodeOfSequenceOfSpine {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ChFiDS_HElSpine;
class ChFiDS_HElSpine : public Adaptor3d_HCurve {
	public:
		%feature("autodoc", "1");
		ChFiDS_HElSpine();
		%feature("autodoc", "1");
		ChFiDS_HElSpine(const ChFiDS_ElSpine &C);
		%feature("autodoc", "1");
		void Set(const ChFiDS_ElSpine &C);
		%feature("autodoc", "1");
		virtual		const Adaptor3d_Curve & Curve() const;
		%feature("autodoc", "1");
		virtual		Adaptor3d_Curve & GetCurve();
		%feature("autodoc", "1");
		ChFiDS_ElSpine & ChangeCurve();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ChFiDS_HElSpine {
	Handle_ChFiDS_HElSpine GetHandle() {
	return *(Handle_ChFiDS_HElSpine*) &$self;
	}
};
%extend ChFiDS_HElSpine {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") ChFiDS_HElSpine::~ChFiDS_HElSpine %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ChFiDS_HElSpine {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ChFiDS_ElSpine;
class ChFiDS_ElSpine : public Adaptor3d_Curve {
	public:
		%feature("autodoc", "1");
		ChFiDS_ElSpine();
		%feature("autodoc", "1");
		virtual		Standard_Real FirstParameter() const;
		%feature("autodoc", "1");
		virtual		Standard_Real LastParameter() const;
		%feature("autodoc", "1");
		virtual		GeomAbs_Shape Continuity() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbIntervals(const GeomAbs_Shape S);
		%feature("autodoc", "1");
		virtual		void Intervals(TColStd_Array1OfReal & T, const GeomAbs_Shape S);
		%feature("autodoc", "1");
		virtual		Handle_Adaptor3d_HCurve Trim(const Standard_Real First, const Standard_Real Last, const Standard_Real Tol) const;
		%feature("autodoc", "1");
		virtual		Standard_Real Resolution(const Standard_Real R3d) const;
		%feature("autodoc", "1");
		virtual		GeomAbs_CurveType GetType() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsPeriodic() const;
		%feature("autodoc", "1");
		void SetPeriodic(const Standard_Boolean I);
		%feature("autodoc", "1");
		virtual		Standard_Real Period() const;
		%feature("autodoc", "1");
		virtual		gp_Pnt Value(const Standard_Real AbsC) const;
		%feature("autodoc", "1");
		virtual		void D0(const Standard_Real AbsC, gp_Pnt & P) const;
		%feature("autodoc", "1");
		virtual		void D1(const Standard_Real AbsC, gp_Pnt & P, gp_Vec & V1) const;
		%feature("autodoc", "1");
		virtual		void D2(const Standard_Real AbsC, gp_Pnt & P, gp_Vec & V1, gp_Vec & V2) const;
		%feature("autodoc", "1");
		virtual		void D3(const Standard_Real AbsC, gp_Pnt & P, gp_Vec & V1, gp_Vec & V2, gp_Vec & V3) const;
		%feature("autodoc", "1");
		void FirstParameter(const Standard_Real P);
		%feature("autodoc", "1");
		void LastParameter(const Standard_Real P);
		%feature("autodoc", "1");
		void SetOrigin(const Standard_Real O);
		%feature("autodoc", "1");
		void FirstPointAndTgt(gp_Pnt & P, gp_Vec & T) const;
		%feature("autodoc", "1");
		void LastPointAndTgt(gp_Pnt & P, gp_Vec & T) const;
		%feature("autodoc", "1");
		void SetFirstPointAndTgt(const gp_Pnt P, const gp_Vec T);
		%feature("autodoc", "1");
		void SetLastPointAndTgt(const gp_Pnt P, const gp_Vec T);
		%feature("autodoc", "1");
		void SetCurve(const Handle_Geom_Curve &C);
		%feature("autodoc", "1");
		const Handle_ChFiDS_SurfData & Previous() const;
		%feature("autodoc", "1");
		Handle_ChFiDS_SurfData & ChangePrevious();
		%feature("autodoc", "1");
		const Handle_ChFiDS_SurfData & Next() const;
		%feature("autodoc", "1");
		Handle_ChFiDS_SurfData & ChangeNext();
		%feature("autodoc", "1");
		virtual		gp_Lin Line() const;
		%feature("autodoc", "1");
		virtual		gp_Circ Circle() const;
		%feature("autodoc", "1");
		virtual		gp_Elips Ellipse() const;
		%feature("autodoc", "1");
		virtual		gp_Hypr Hyperbola() const;
		%feature("autodoc", "1");
		virtual		gp_Parab Parabola() const;
		%feature("autodoc", "1");
		virtual		Handle_Geom_BezierCurve Bezier() const;
		%feature("autodoc", "1");
		virtual		Handle_Geom_BSplineCurve BSpline() const;

};
%feature("shadow") ChFiDS_ElSpine::~ChFiDS_ElSpine %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ChFiDS_ElSpine {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ChFiDS_ListOfHElSpine;
class ChFiDS_ListOfHElSpine {
	public:
		%feature("autodoc", "1");
		ChFiDS_ListOfHElSpine();
		%feature("autodoc", "1");
		void Assign(const ChFiDS_ListOfHElSpine &Other);
		%feature("autodoc", "1");
		void operator=(const ChFiDS_ListOfHElSpine &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const Handle_ChFiDS_HElSpine &I);
		%feature("autodoc", "1");
		void Prepend(const Handle_ChFiDS_HElSpine &I, ChFiDS_ListIteratorOfListOfHElSpine & theIt);
		%feature("autodoc", "1");
		void Prepend(ChFiDS_ListOfHElSpine & Other);
		%feature("autodoc", "1");
		void Append(const Handle_ChFiDS_HElSpine &I);
		%feature("autodoc", "1");
		void Append(const Handle_ChFiDS_HElSpine &I, ChFiDS_ListIteratorOfListOfHElSpine & theIt);
		%feature("autodoc", "1");
		void Append(ChFiDS_ListOfHElSpine & Other);
		%feature("autodoc", "1");
		Handle_ChFiDS_HElSpine & First() const;
		%feature("autodoc", "1");
		Handle_ChFiDS_HElSpine & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(ChFiDS_ListIteratorOfListOfHElSpine & It);
		%feature("autodoc", "1");
		void InsertBefore(const Handle_ChFiDS_HElSpine &I, ChFiDS_ListIteratorOfListOfHElSpine & It);
		%feature("autodoc", "1");
		void InsertBefore(ChFiDS_ListOfHElSpine & Other, ChFiDS_ListIteratorOfListOfHElSpine & It);
		%feature("autodoc", "1");
		void InsertAfter(const Handle_ChFiDS_HElSpine &I, ChFiDS_ListIteratorOfListOfHElSpine & It);
		%feature("autodoc", "1");
		void InsertAfter(ChFiDS_ListOfHElSpine & Other, ChFiDS_ListIteratorOfListOfHElSpine & It);

};
%feature("shadow") ChFiDS_ListOfHElSpine::~ChFiDS_ListOfHElSpine %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ChFiDS_ListOfHElSpine {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ChFiDS_Regul;
class ChFiDS_Regul {
	public:
		%feature("autodoc", "1");
		ChFiDS_Regul();
		%feature("autodoc", "1");
		void SetCurve(const Standard_Integer IC);
		%feature("autodoc", "1");
		void SetS1(const Standard_Integer IS1, const Standard_Boolean IsFace=1);
		%feature("autodoc", "1");
		void SetS2(const Standard_Integer IS2, const Standard_Boolean IsFace=1);
		%feature("autodoc", "1");
		Standard_Boolean IsSurface1() const;
		%feature("autodoc", "1");
		Standard_Boolean IsSurface2() const;
		%feature("autodoc", "1");
		Standard_Integer Curve() const;
		%feature("autodoc", "1");
		Standard_Integer S1() const;
		%feature("autodoc", "1");
		Standard_Integer S2() const;

};
%feature("shadow") ChFiDS_Regul::~ChFiDS_Regul %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ChFiDS_Regul {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ChFiDS_IndexedDataMapNodeOfIndexedDataMapOfVertexListOfStripe;
class ChFiDS_IndexedDataMapNodeOfIndexedDataMapOfVertexListOfStripe : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		ChFiDS_IndexedDataMapNodeOfIndexedDataMapOfVertexListOfStripe(const TopoDS_Vertex K1, const Standard_Integer K2, const ChFiDS_ListOfStripe &I, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
		%feature("autodoc", "1");
		TopoDS_Vertex  Key1() const;
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetKey2() {
				return (Standard_Integer) $self->Key2();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetKey2(Standard_Integer value ) {
				$self->Key2()=value;
				}
		};
		%feature("autodoc", "1");
		TCollection_MapNodePtr & Next2() const;
		%feature("autodoc", "1");
		ChFiDS_ListOfStripe & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ChFiDS_IndexedDataMapNodeOfIndexedDataMapOfVertexListOfStripe {
	Handle_ChFiDS_IndexedDataMapNodeOfIndexedDataMapOfVertexListOfStripe GetHandle() {
	return *(Handle_ChFiDS_IndexedDataMapNodeOfIndexedDataMapOfVertexListOfStripe*) &$self;
	}
};
%extend ChFiDS_IndexedDataMapNodeOfIndexedDataMapOfVertexListOfStripe {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") ChFiDS_IndexedDataMapNodeOfIndexedDataMapOfVertexListOfStripe::~ChFiDS_IndexedDataMapNodeOfIndexedDataMapOfVertexListOfStripe %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ChFiDS_IndexedDataMapNodeOfIndexedDataMapOfVertexListOfStripe {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ChFiDS_Stripe;
class ChFiDS_Stripe : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		ChFiDS_Stripe();
		%feature("autodoc", "1");
		void Reset();
		%feature("autodoc", "1");
		const Handle_ChFiDS_HData & SetOfSurfData() const;
		%feature("autodoc", "1");
		const Handle_ChFiDS_Spine & Spine() const;
		%feature("autodoc", "1");
		TopAbs_Orientation OrientationOnFace1() const;
		%feature("autodoc", "1");
		TopAbs_Orientation OrientationOnFace2() const;
		%feature("autodoc", "1");
		Standard_Integer Choix() const;
		%feature("autodoc", "1");
		Handle_ChFiDS_HData & ChangeSetOfSurfData();
		%feature("autodoc", "1");
		Handle_ChFiDS_Spine & ChangeSpine();
		%feature("autodoc", "1");
		void OrientationOnFace1(const TopAbs_Orientation Or1);
		%feature("autodoc", "1");
		void OrientationOnFace2(const TopAbs_Orientation Or2);
		%feature("autodoc", "1");
		void Choix(const Standard_Integer C);
		%feature("autodoc","FirstParameters() -> [Standard_Real, Standard_Real]");

		void FirstParameters(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc","LastParameters() -> [Standard_Real, Standard_Real]");

		void LastParameters(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		void ChangeFirstParameters(const Standard_Real Pdeb, const Standard_Real Pfin);
		%feature("autodoc", "1");
		void ChangeLastParameters(const Standard_Real Pdeb, const Standard_Real Pfin);
		%feature("autodoc", "1");
		Standard_Integer FirstCurve() const;
		%feature("autodoc", "1");
		Standard_Integer LastCurve() const;
		%feature("autodoc", "1");
		void ChangeFirstCurve(const Standard_Integer Index);
		%feature("autodoc", "1");
		void ChangeLastCurve(const Standard_Integer Index);
		%feature("autodoc", "1");
		const Handle_Geom2d_Curve & FirstPCurve() const;
		%feature("autodoc", "1");
		const Handle_Geom2d_Curve & LastPCurve() const;
		%feature("autodoc", "1");
		Handle_Geom2d_Curve & ChangeFirstPCurve();
		%feature("autodoc", "1");
		Handle_Geom2d_Curve & ChangeLastPCurve();
		%feature("autodoc", "1");
		TopAbs_Orientation FirstPCurveOrientation() const;
		%feature("autodoc", "1");
		TopAbs_Orientation LastPCurveOrientation() const;
		%feature("autodoc", "1");
		void FirstPCurveOrientation(const TopAbs_Orientation O);
		%feature("autodoc", "1");
		void LastPCurveOrientation(const TopAbs_Orientation O);
		%feature("autodoc", "1");
		Standard_Integer IndexFirstPointOnS1() const;
		%feature("autodoc", "1");
		Standard_Integer IndexFirstPointOnS2() const;
		%feature("autodoc", "1");
		Standard_Integer IndexLastPointOnS1() const;
		%feature("autodoc", "1");
		Standard_Integer IndexLastPointOnS2() const;
		%feature("autodoc", "1");
		void ChangeIndexFirstPointOnS1(const Standard_Integer Index);
		%feature("autodoc", "1");
		void ChangeIndexFirstPointOnS2(const Standard_Integer Index);
		%feature("autodoc", "1");
		void ChangeIndexLastPointOnS1(const Standard_Integer Index);
		%feature("autodoc", "1");
		void ChangeIndexLastPointOnS2(const Standard_Integer Index);
		%feature("autodoc","Parameters(Standard_Boolean First) -> [Standard_Real, Standard_Real]");

		void Parameters(const Standard_Boolean First, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		void SetParameters(const Standard_Boolean First, const Standard_Real Pdeb, const Standard_Real Pfin);
		%feature("autodoc", "1");
		Standard_Integer Curve(const Standard_Boolean First) const;
		%feature("autodoc", "1");
		void SetCurve(const Standard_Integer Index, const Standard_Boolean First);
		%feature("autodoc", "1");
		const Handle_Geom2d_Curve & PCurve(const Standard_Boolean First) const;
		%feature("autodoc", "1");
		Handle_Geom2d_Curve & ChangePCurve(const Standard_Boolean First);
		%feature("autodoc", "1");
		TopAbs_Orientation Orientation(const Standard_Integer OnS) const;
		%feature("autodoc", "1");
		void SetOrientation(const TopAbs_Orientation Or, const Standard_Integer OnS);
		%feature("autodoc", "1");
		TopAbs_Orientation Orientation(const Standard_Boolean First) const;
		%feature("autodoc", "1");
		void SetOrientation(const TopAbs_Orientation Or, const Standard_Boolean First);
		%feature("autodoc", "1");
		Standard_Integer IndexPoint(const Standard_Boolean First, const Standard_Integer OnS) const;
		%feature("autodoc", "1");
		void SetIndexPoint(const Standard_Integer Index, const Standard_Boolean First, const Standard_Integer OnS);
		%feature("autodoc", "1");
		Standard_Integer SolidIndex() const;
		%feature("autodoc", "1");
		void SetSolidIndex(const Standard_Integer Index);
		%feature("autodoc", "1");
		void InDS(const Standard_Boolean First, const Standard_Integer Nb=1);
		%feature("autodoc", "1");
		Standard_Integer IsInDS(const Standard_Boolean First) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ChFiDS_Stripe {
	Handle_ChFiDS_Stripe GetHandle() {
	return *(Handle_ChFiDS_Stripe*) &$self;
	}
};
%extend ChFiDS_Stripe {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") ChFiDS_Stripe::~ChFiDS_Stripe %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ChFiDS_Stripe {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ChFiDS_ListIteratorOfRegularities;
class ChFiDS_ListIteratorOfRegularities {
	public:
		%feature("autodoc", "1");
		ChFiDS_ListIteratorOfRegularities();
		%feature("autodoc", "1");
		ChFiDS_ListIteratorOfRegularities(const ChFiDS_Regularities &L);
		%feature("autodoc", "1");
		void Initialize(const ChFiDS_Regularities &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		ChFiDS_Regul & Value() const;

};
%feature("shadow") ChFiDS_ListIteratorOfRegularities::~ChFiDS_ListIteratorOfRegularities %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ChFiDS_ListIteratorOfRegularities {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ChFiDS_ListNodeOfListOfHElSpine;
class ChFiDS_ListNodeOfListOfHElSpine : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		ChFiDS_ListNodeOfListOfHElSpine(const Handle_ChFiDS_HElSpine &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Handle_ChFiDS_HElSpine & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ChFiDS_ListNodeOfListOfHElSpine {
	Handle_ChFiDS_ListNodeOfListOfHElSpine GetHandle() {
	return *(Handle_ChFiDS_ListNodeOfListOfHElSpine*) &$self;
	}
};
%extend ChFiDS_ListNodeOfListOfHElSpine {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") ChFiDS_ListNodeOfListOfHElSpine::~ChFiDS_ListNodeOfListOfHElSpine %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ChFiDS_ListNodeOfListOfHElSpine {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ChFiDS_IndexedDataMapOfVertexListOfStripe;
class ChFiDS_IndexedDataMapOfVertexListOfStripe : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		ChFiDS_IndexedDataMapOfVertexListOfStripe(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		ChFiDS_IndexedDataMapOfVertexListOfStripe & Assign(const ChFiDS_IndexedDataMapOfVertexListOfStripe &Other);
		%feature("autodoc", "1");
		ChFiDS_IndexedDataMapOfVertexListOfStripe & operator=(const ChFiDS_IndexedDataMapOfVertexListOfStripe &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer Add(const TopoDS_Vertex K, const ChFiDS_ListOfStripe &I);
		%feature("autodoc", "1");
		void Substitute(const Standard_Integer I, const TopoDS_Vertex K, const ChFiDS_ListOfStripe &T);
		%feature("autodoc", "1");
		void RemoveLast();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const TopoDS_Vertex K) const;
		%feature("autodoc", "1");
		const TopoDS_Vertex  FindKey(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const ChFiDS_ListOfStripe & FindFromIndex(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const ChFiDS_ListOfStripe & operator()(const Standard_Integer I) const;
		%feature("autodoc", "1");
		ChFiDS_ListOfStripe & ChangeFromIndex(const Standard_Integer I);
		%feature("autodoc", "1");
		ChFiDS_ListOfStripe & operator()(const Standard_Integer I);
		%feature("autodoc", "1");
		Standard_Integer FindIndex(const TopoDS_Vertex K) const;
		%feature("autodoc", "1");
		const ChFiDS_ListOfStripe & FindFromKey(const TopoDS_Vertex K) const;
		%feature("autodoc", "1");
		ChFiDS_ListOfStripe & ChangeFromKey(const TopoDS_Vertex K);

};
%feature("shadow") ChFiDS_IndexedDataMapOfVertexListOfStripe::~ChFiDS_IndexedDataMapOfVertexListOfStripe %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ChFiDS_IndexedDataMapOfVertexListOfStripe {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ChFiDS_Regularities;
class ChFiDS_Regularities {
	public:
		%feature("autodoc", "1");
		ChFiDS_Regularities();
		%feature("autodoc", "1");
		void Assign(const ChFiDS_Regularities &Other);
		%feature("autodoc", "1");
		void operator=(const ChFiDS_Regularities &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const ChFiDS_Regul &I);
		%feature("autodoc", "1");
		void Prepend(const ChFiDS_Regul &I, ChFiDS_ListIteratorOfRegularities & theIt);
		%feature("autodoc", "1");
		void Prepend(ChFiDS_Regularities & Other);
		%feature("autodoc", "1");
		void Append(const ChFiDS_Regul &I);
		%feature("autodoc", "1");
		void Append(const ChFiDS_Regul &I, ChFiDS_ListIteratorOfRegularities & theIt);
		%feature("autodoc", "1");
		void Append(ChFiDS_Regularities & Other);
		%feature("autodoc", "1");
		ChFiDS_Regul & First() const;
		%feature("autodoc", "1");
		ChFiDS_Regul & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(ChFiDS_ListIteratorOfRegularities & It);
		%feature("autodoc", "1");
		void InsertBefore(const ChFiDS_Regul &I, ChFiDS_ListIteratorOfRegularities & It);
		%feature("autodoc", "1");
		void InsertBefore(ChFiDS_Regularities & Other, ChFiDS_ListIteratorOfRegularities & It);
		%feature("autodoc", "1");
		void InsertAfter(const ChFiDS_Regul &I, ChFiDS_ListIteratorOfRegularities & It);
		%feature("autodoc", "1");
		void InsertAfter(ChFiDS_Regularities & Other, ChFiDS_ListIteratorOfRegularities & It);

};
%feature("shadow") ChFiDS_Regularities::~ChFiDS_Regularities %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ChFiDS_Regularities {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ChFiDS_SecHArray1;
class ChFiDS_SecHArray1 : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		ChFiDS_SecHArray1(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		ChFiDS_SecHArray1(const Standard_Integer Low, const Standard_Integer Up, const ChFiDS_CircSection &V);
		%feature("autodoc", "1");
		void Init(const ChFiDS_CircSection &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const ChFiDS_CircSection &Value);
		%feature("autodoc", "1");
		const ChFiDS_CircSection & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		ChFiDS_CircSection & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const ChFiDS_SecArray1 & Array1() const;
		%feature("autodoc", "1");
		ChFiDS_SecArray1 & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ChFiDS_SecHArray1 {
	Handle_ChFiDS_SecHArray1 GetHandle() {
	return *(Handle_ChFiDS_SecHArray1*) &$self;
	}
};
%extend ChFiDS_SecHArray1 {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") ChFiDS_SecHArray1::~ChFiDS_SecHArray1 %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ChFiDS_SecHArray1 {
	void _kill_pointed() {
		delete $self;
	}
};
