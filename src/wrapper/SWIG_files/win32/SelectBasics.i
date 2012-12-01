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

%module SelectBasics
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include SelectBasics_renames.i


%include SelectBasics_required_python_modules.i


%include SelectBasics_dependencies.i


%include SelectBasics_headers.i




%nodefaultctor Handle_SelectBasics_ListNodeOfListOfBox2d;
class Handle_SelectBasics_ListNodeOfListOfBox2d : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_SelectBasics_ListNodeOfListOfBox2d();
		%feature("autodoc", "1");
		Handle_SelectBasics_ListNodeOfListOfBox2d(const Handle_SelectBasics_ListNodeOfListOfBox2d &aHandle);
		%feature("autodoc", "1");
		Handle_SelectBasics_ListNodeOfListOfBox2d(const SelectBasics_ListNodeOfListOfBox2d *anItem);
		%feature("autodoc", "1");
		Handle_SelectBasics_ListNodeOfListOfBox2d & operator=(const Handle_SelectBasics_ListNodeOfListOfBox2d &aHandle);
		%feature("autodoc", "1");
		Handle_SelectBasics_ListNodeOfListOfBox2d & operator=(const SelectBasics_ListNodeOfListOfBox2d *anItem);
		%feature("autodoc", "1");
		static		Handle_SelectBasics_ListNodeOfListOfBox2d DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_SelectBasics_ListNodeOfListOfBox2d {
	SelectBasics_ListNodeOfListOfBox2d* GetObject() {
	return (SelectBasics_ListNodeOfListOfBox2d*)$self->Access();
	}
};
%feature("shadow") Handle_SelectBasics_ListNodeOfListOfBox2d::~Handle_SelectBasics_ListNodeOfListOfBox2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_SelectBasics_ListNodeOfListOfBox2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_SelectBasics_EntityOwner;
class Handle_SelectBasics_EntityOwner : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_SelectBasics_EntityOwner();
		%feature("autodoc", "1");
		Handle_SelectBasics_EntityOwner(const Handle_SelectBasics_EntityOwner &aHandle);
		%feature("autodoc", "1");
		Handle_SelectBasics_EntityOwner(const SelectBasics_EntityOwner *anItem);
		%feature("autodoc", "1");
		Handle_SelectBasics_EntityOwner & operator=(const Handle_SelectBasics_EntityOwner &aHandle);
		%feature("autodoc", "1");
		Handle_SelectBasics_EntityOwner & operator=(const SelectBasics_EntityOwner *anItem);
		%feature("autodoc", "1");
		static		Handle_SelectBasics_EntityOwner DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_SelectBasics_EntityOwner {
	SelectBasics_EntityOwner* GetObject() {
	return (SelectBasics_EntityOwner*)$self->Access();
	}
};
%feature("shadow") Handle_SelectBasics_EntityOwner::~Handle_SelectBasics_EntityOwner %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_SelectBasics_EntityOwner {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_SelectBasics_ListNodeOfListOfSensitive;
class Handle_SelectBasics_ListNodeOfListOfSensitive : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_SelectBasics_ListNodeOfListOfSensitive();
		%feature("autodoc", "1");
		Handle_SelectBasics_ListNodeOfListOfSensitive(const Handle_SelectBasics_ListNodeOfListOfSensitive &aHandle);
		%feature("autodoc", "1");
		Handle_SelectBasics_ListNodeOfListOfSensitive(const SelectBasics_ListNodeOfListOfSensitive *anItem);
		%feature("autodoc", "1");
		Handle_SelectBasics_ListNodeOfListOfSensitive & operator=(const Handle_SelectBasics_ListNodeOfListOfSensitive &aHandle);
		%feature("autodoc", "1");
		Handle_SelectBasics_ListNodeOfListOfSensitive & operator=(const SelectBasics_ListNodeOfListOfSensitive *anItem);
		%feature("autodoc", "1");
		static		Handle_SelectBasics_ListNodeOfListOfSensitive DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_SelectBasics_ListNodeOfListOfSensitive {
	SelectBasics_ListNodeOfListOfSensitive* GetObject() {
	return (SelectBasics_ListNodeOfListOfSensitive*)$self->Access();
	}
};
%feature("shadow") Handle_SelectBasics_ListNodeOfListOfSensitive::~Handle_SelectBasics_ListNodeOfListOfSensitive %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_SelectBasics_ListNodeOfListOfSensitive {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_SelectBasics_SensitiveEntity;
class Handle_SelectBasics_SensitiveEntity : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_SelectBasics_SensitiveEntity();
		%feature("autodoc", "1");
		Handle_SelectBasics_SensitiveEntity(const Handle_SelectBasics_SensitiveEntity &aHandle);
		%feature("autodoc", "1");
		Handle_SelectBasics_SensitiveEntity(const SelectBasics_SensitiveEntity *anItem);
		%feature("autodoc", "1");
		Handle_SelectBasics_SensitiveEntity & operator=(const Handle_SelectBasics_SensitiveEntity &aHandle);
		%feature("autodoc", "1");
		Handle_SelectBasics_SensitiveEntity & operator=(const SelectBasics_SensitiveEntity *anItem);
		%feature("autodoc", "1");
		static		Handle_SelectBasics_SensitiveEntity DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_SelectBasics_SensitiveEntity {
	SelectBasics_SensitiveEntity* GetObject() {
	return (SelectBasics_SensitiveEntity*)$self->Access();
	}
};
%feature("shadow") Handle_SelectBasics_SensitiveEntity::~Handle_SelectBasics_SensitiveEntity %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_SelectBasics_SensitiveEntity {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_SelectBasics_SequenceNodeOfSequenceOfOwner;
class Handle_SelectBasics_SequenceNodeOfSequenceOfOwner : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_SelectBasics_SequenceNodeOfSequenceOfOwner();
		%feature("autodoc", "1");
		Handle_SelectBasics_SequenceNodeOfSequenceOfOwner(const Handle_SelectBasics_SequenceNodeOfSequenceOfOwner &aHandle);
		%feature("autodoc", "1");
		Handle_SelectBasics_SequenceNodeOfSequenceOfOwner(const SelectBasics_SequenceNodeOfSequenceOfOwner *anItem);
		%feature("autodoc", "1");
		Handle_SelectBasics_SequenceNodeOfSequenceOfOwner & operator=(const Handle_SelectBasics_SequenceNodeOfSequenceOfOwner &aHandle);
		%feature("autodoc", "1");
		Handle_SelectBasics_SequenceNodeOfSequenceOfOwner & operator=(const SelectBasics_SequenceNodeOfSequenceOfOwner *anItem);
		%feature("autodoc", "1");
		static		Handle_SelectBasics_SequenceNodeOfSequenceOfOwner DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_SelectBasics_SequenceNodeOfSequenceOfOwner {
	SelectBasics_SequenceNodeOfSequenceOfOwner* GetObject() {
	return (SelectBasics_SequenceNodeOfSequenceOfOwner*)$self->Access();
	}
};
%feature("shadow") Handle_SelectBasics_SequenceNodeOfSequenceOfOwner::~Handle_SelectBasics_SequenceNodeOfSequenceOfOwner %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_SelectBasics_SequenceNodeOfSequenceOfOwner {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SelectBasics_ListNodeOfListOfSensitive;
class SelectBasics_ListNodeOfListOfSensitive : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		SelectBasics_ListNodeOfListOfSensitive(const Handle_SelectBasics_SensitiveEntity &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Handle_SelectBasics_SensitiveEntity & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend SelectBasics_ListNodeOfListOfSensitive {
	Handle_SelectBasics_ListNodeOfListOfSensitive GetHandle() {
	return *(Handle_SelectBasics_ListNodeOfListOfSensitive*) &$self;
	}
};
%extend SelectBasics_ListNodeOfListOfSensitive {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") SelectBasics_ListNodeOfListOfSensitive::~SelectBasics_ListNodeOfListOfSensitive %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SelectBasics_ListNodeOfListOfSensitive {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SelectBasics_SortAlgo;
class SelectBasics_SortAlgo {
	public:
		%feature("autodoc", "1");
		SelectBasics_SortAlgo();
		%feature("autodoc", "1");
		SelectBasics_SortAlgo(const Bnd_Box2d &ClippingRectangle, const Standard_Real sizeOfSensitiveArea, const Handle_Bnd_HArray1OfBox2d &theRectangles);
		%feature("autodoc", "1");
		void Initialize(const Bnd_Box2d &ClippingRectangle, const Standard_Real sizeOfSensitiveArea, const Handle_Bnd_HArray1OfBox2d &theRectangles);
		%feature("autodoc", "1");
		void InitSelect(const Standard_Real x, const Standard_Real y);
		%feature("autodoc", "1");
		void InitSelect(const Bnd_Box2d &rect);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		Standard_Integer Value() const;

};
%feature("shadow") SelectBasics_SortAlgo::~SelectBasics_SortAlgo %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SelectBasics_SortAlgo {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SelectBasics_ListIteratorOfListOfBox2d;
class SelectBasics_ListIteratorOfListOfBox2d {
	public:
		%feature("autodoc", "1");
		SelectBasics_ListIteratorOfListOfBox2d();
		%feature("autodoc", "1");
		SelectBasics_ListIteratorOfListOfBox2d(const SelectBasics_ListOfBox2d &L);
		%feature("autodoc", "1");
		void Initialize(const SelectBasics_ListOfBox2d &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		Bnd_Box2d & Value() const;

};
%feature("shadow") SelectBasics_ListIteratorOfListOfBox2d::~SelectBasics_ListIteratorOfListOfBox2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SelectBasics_ListIteratorOfListOfBox2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SelectBasics_EntityOwner;
class SelectBasics_EntityOwner : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		void Set(const Standard_Integer aPriority);
		%feature("autodoc", "1");
		Standard_Integer Priority() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean HasLocation() const;
		%feature("autodoc", "1");
		virtual		void SetLocation(const TopLoc_Location &aLoc);
		%feature("autodoc", "1");
		virtual		void ResetLocation();
		%feature("autodoc", "1");
		virtual		const TopLoc_Location & Location() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend SelectBasics_EntityOwner {
	Handle_SelectBasics_EntityOwner GetHandle() {
	return *(Handle_SelectBasics_EntityOwner*) &$self;
	}
};
%extend SelectBasics_EntityOwner {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") SelectBasics_EntityOwner::~SelectBasics_EntityOwner %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SelectBasics_EntityOwner {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SelectBasics_ListNodeOfListOfBox2d;
class SelectBasics_ListNodeOfListOfBox2d : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		SelectBasics_ListNodeOfListOfBox2d(const Bnd_Box2d &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Bnd_Box2d & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend SelectBasics_ListNodeOfListOfBox2d {
	Handle_SelectBasics_ListNodeOfListOfBox2d GetHandle() {
	return *(Handle_SelectBasics_ListNodeOfListOfBox2d*) &$self;
	}
};
%extend SelectBasics_ListNodeOfListOfBox2d {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") SelectBasics_ListNodeOfListOfBox2d::~SelectBasics_ListNodeOfListOfBox2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SelectBasics_ListNodeOfListOfBox2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SelectBasics_ListOfSensitive;
class SelectBasics_ListOfSensitive {
	public:
		%feature("autodoc", "1");
		SelectBasics_ListOfSensitive();
		%feature("autodoc", "1");
		void Assign(const SelectBasics_ListOfSensitive &Other);
		%feature("autodoc", "1");
		void operator=(const SelectBasics_ListOfSensitive &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const Handle_SelectBasics_SensitiveEntity &I);
		%feature("autodoc", "1");
		void Prepend(const Handle_SelectBasics_SensitiveEntity &I, SelectBasics_ListIteratorOfListOfSensitive & theIt);
		%feature("autodoc", "1");
		void Prepend(SelectBasics_ListOfSensitive & Other);
		%feature("autodoc", "1");
		void Append(const Handle_SelectBasics_SensitiveEntity &I);
		%feature("autodoc", "1");
		void Append(const Handle_SelectBasics_SensitiveEntity &I, SelectBasics_ListIteratorOfListOfSensitive & theIt);
		%feature("autodoc", "1");
		void Append(SelectBasics_ListOfSensitive & Other);
		%feature("autodoc", "1");
		Handle_SelectBasics_SensitiveEntity & First() const;
		%feature("autodoc", "1");
		Handle_SelectBasics_SensitiveEntity & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(SelectBasics_ListIteratorOfListOfSensitive & It);
		%feature("autodoc", "1");
		void InsertBefore(const Handle_SelectBasics_SensitiveEntity &I, SelectBasics_ListIteratorOfListOfSensitive & It);
		%feature("autodoc", "1");
		void InsertBefore(SelectBasics_ListOfSensitive & Other, SelectBasics_ListIteratorOfListOfSensitive & It);
		%feature("autodoc", "1");
		void InsertAfter(const Handle_SelectBasics_SensitiveEntity &I, SelectBasics_ListIteratorOfListOfSensitive & It);
		%feature("autodoc", "1");
		void InsertAfter(SelectBasics_ListOfSensitive & Other, SelectBasics_ListIteratorOfListOfSensitive & It);

};
%feature("shadow") SelectBasics_ListOfSensitive::~SelectBasics_ListOfSensitive %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SelectBasics_ListOfSensitive {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SelectBasics_ListIteratorOfListOfSensitive;
class SelectBasics_ListIteratorOfListOfSensitive {
	public:
		%feature("autodoc", "1");
		SelectBasics_ListIteratorOfListOfSensitive();
		%feature("autodoc", "1");
		SelectBasics_ListIteratorOfListOfSensitive(const SelectBasics_ListOfSensitive &L);
		%feature("autodoc", "1");
		void Initialize(const SelectBasics_ListOfSensitive &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		Handle_SelectBasics_SensitiveEntity & Value() const;

};
%feature("shadow") SelectBasics_ListIteratorOfListOfSensitive::~SelectBasics_ListIteratorOfListOfSensitive %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SelectBasics_ListIteratorOfListOfSensitive {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SelectBasics_BasicTool;
class SelectBasics_BasicTool {
	public:
		%feature("autodoc", "1");
		SelectBasics_BasicTool();
		%feature("autodoc", "1");
		static		Standard_Boolean MatchSegments(const gp_Pnt2d P1, const gp_Pnt2d P2, const gp_Pnt2d P3, const gp_Pnt2d P4);
		%feature("autodoc","MatchSegment(const pBegin, const pEnd, Standard_Real X, Standard_Real Y, Standard_Real aTol) -> Standard_Real");

		static		Standard_Boolean MatchSegment(const gp_Pnt2d pBegin, const gp_Pnt2d pEnd, const Standard_Real X, const Standard_Real Y, const Standard_Real aTol, Standard_Real &OutValue);
		%feature("autodoc", "1");
		static		Standard_Boolean AutoInter(const TColgp_Array1OfPnt2d &aPolyg2d);
		%feature("autodoc","MatchPolyg2d(const tabpoint, Standard_Real X, Standard_Real Y, Standard_Real aTol) -> [Standard_Real, Standard_Integer]");

		static		Standard_Boolean MatchPolyg2d(const TColgp_Array1OfPnt2d &tabpoint, const Standard_Real X, const Standard_Real Y, const Standard_Real aTol, Standard_Real &OutValue, Standard_Integer &OutValue);

};
%feature("shadow") SelectBasics_BasicTool::~SelectBasics_BasicTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SelectBasics_BasicTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SelectBasics;
class SelectBasics {
	public:
		%feature("autodoc", "1");
		SelectBasics();
		%feature("autodoc", "1");
		static		Standard_Integer MaxOwnerPriority();
		%feature("autodoc", "1");
		static		Standard_Integer MinOwnerPriority();

};
%feature("shadow") SelectBasics::~SelectBasics %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SelectBasics {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SelectBasics_SequenceNodeOfSequenceOfOwner;
class SelectBasics_SequenceNodeOfSequenceOfOwner : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		SelectBasics_SequenceNodeOfSequenceOfOwner(const Handle_SelectBasics_EntityOwner &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_SelectBasics_EntityOwner & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend SelectBasics_SequenceNodeOfSequenceOfOwner {
	Handle_SelectBasics_SequenceNodeOfSequenceOfOwner GetHandle() {
	return *(Handle_SelectBasics_SequenceNodeOfSequenceOfOwner*) &$self;
	}
};
%extend SelectBasics_SequenceNodeOfSequenceOfOwner {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") SelectBasics_SequenceNodeOfSequenceOfOwner::~SelectBasics_SequenceNodeOfSequenceOfOwner %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SelectBasics_SequenceNodeOfSequenceOfOwner {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SelectBasics_ListOfBox2d;
class SelectBasics_ListOfBox2d {
	public:
		%feature("autodoc", "1");
		SelectBasics_ListOfBox2d();
		%feature("autodoc", "1");
		void Assign(const SelectBasics_ListOfBox2d &Other);
		%feature("autodoc", "1");
		void operator=(const SelectBasics_ListOfBox2d &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const Bnd_Box2d &I);
		%feature("autodoc", "1");
		void Prepend(const Bnd_Box2d &I, SelectBasics_ListIteratorOfListOfBox2d & theIt);
		%feature("autodoc", "1");
		void Prepend(SelectBasics_ListOfBox2d & Other);
		%feature("autodoc", "1");
		void Append(const Bnd_Box2d &I);
		%feature("autodoc", "1");
		void Append(const Bnd_Box2d &I, SelectBasics_ListIteratorOfListOfBox2d & theIt);
		%feature("autodoc", "1");
		void Append(SelectBasics_ListOfBox2d & Other);
		%feature("autodoc", "1");
		Bnd_Box2d & First() const;
		%feature("autodoc", "1");
		Bnd_Box2d & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(SelectBasics_ListIteratorOfListOfBox2d & It);
		%feature("autodoc", "1");
		void InsertBefore(const Bnd_Box2d &I, SelectBasics_ListIteratorOfListOfBox2d & It);
		%feature("autodoc", "1");
		void InsertBefore(SelectBasics_ListOfBox2d & Other, SelectBasics_ListIteratorOfListOfBox2d & It);
		%feature("autodoc", "1");
		void InsertAfter(const Bnd_Box2d &I, SelectBasics_ListIteratorOfListOfBox2d & It);
		%feature("autodoc", "1");
		void InsertAfter(SelectBasics_ListOfBox2d & Other, SelectBasics_ListIteratorOfListOfBox2d & It);

};
%feature("shadow") SelectBasics_ListOfBox2d::~SelectBasics_ListOfBox2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SelectBasics_ListOfBox2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SelectBasics_SensitiveEntity;
class SelectBasics_SensitiveEntity : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		virtual		void Set(const Handle_SelectBasics_EntityOwner &TheOwnerId);
		%feature("autodoc", "1");
		const Handle_SelectBasics_EntityOwner & OwnerId() const;
		%feature("autodoc", "1");
		virtual		void Areas(SelectBasics_ListOfBox2d & aresult);
		%feature("autodoc","Matches(Standard_Real X, Standard_Real Y, Standard_Real aTol) -> Standard_Real");

		virtual		Standard_Boolean Matches(const Standard_Real X, const Standard_Real Y, const Standard_Real aTol, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Matches(const Standard_Real XMin, const Standard_Real YMin, const Standard_Real XMax, const Standard_Real YMax, const Standard_Real aTol);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Matches(const TColgp_Array1OfPnt2d &Polyline, const Bnd_Box2d &aBox, const Standard_Real aTol);
		%feature("autodoc", "1");
		virtual		Standard_Boolean NeedsConversion() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Is3D() const;
		%feature("autodoc", "1");
		virtual		Standard_Real Depth() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer MaxBoxes() const;
		%feature("autodoc", "1");
		void SetSensitivityFactor(const Standard_ShortReal F);
		%feature("autodoc", "1");
		Standard_ShortReal SensitivityFactor() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend SelectBasics_SensitiveEntity {
	Handle_SelectBasics_SensitiveEntity GetHandle() {
	return *(Handle_SelectBasics_SensitiveEntity*) &$self;
	}
};
%extend SelectBasics_SensitiveEntity {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") SelectBasics_SensitiveEntity::~SelectBasics_SensitiveEntity %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SelectBasics_SensitiveEntity {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SelectBasics_SequenceOfOwner;
class SelectBasics_SequenceOfOwner : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		SelectBasics_SequenceOfOwner();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const SelectBasics_SequenceOfOwner & Assign(const SelectBasics_SequenceOfOwner &Other);
		%feature("autodoc", "1");
		const SelectBasics_SequenceOfOwner & operator=(const SelectBasics_SequenceOfOwner &Other);
		%feature("autodoc", "1");
		void Append(const Handle_SelectBasics_EntityOwner &T);
		%feature("autodoc", "1");
		void Append(SelectBasics_SequenceOfOwner & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_SelectBasics_EntityOwner &T);
		%feature("autodoc", "1");
		void Prepend(SelectBasics_SequenceOfOwner & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_SelectBasics_EntityOwner &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, SelectBasics_SequenceOfOwner & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_SelectBasics_EntityOwner &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, SelectBasics_SequenceOfOwner & S);
		%feature("autodoc", "1");
		const Handle_SelectBasics_EntityOwner & First() const;
		%feature("autodoc", "1");
		const Handle_SelectBasics_EntityOwner & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, SelectBasics_SequenceOfOwner & S);
		%feature("autodoc", "1");
		const Handle_SelectBasics_EntityOwner & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_SelectBasics_EntityOwner & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_SelectBasics_EntityOwner &I);
		%feature("autodoc", "1");
		Handle_SelectBasics_EntityOwner & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_SelectBasics_EntityOwner & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") SelectBasics_SequenceOfOwner::~SelectBasics_SequenceOfOwner %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SelectBasics_SequenceOfOwner {
	void _kill_pointed() {
		delete $self;
	}
};
