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
%module Select2D
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%pythoncode {
import GarbageCollector
};

%include Select2D_dependencies.i


%include Select2D_headers.i


enum Select2D_TypeOfSelection {
	Select2D_TOS_BOUNDARY,
	Select2D_TOS_INTERIOR,
	};



%nodefaultctor Handle_Select2D_Projector;
class Handle_Select2D_Projector : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Select2D_Projector();
		%feature("autodoc", "1");
		Handle_Select2D_Projector(const Handle_Select2D_Projector &aHandle);
		%feature("autodoc", "1");
		Handle_Select2D_Projector(const Select2D_Projector *anItem);
		%feature("autodoc", "1");
		Handle_Select2D_Projector & operator=(const Handle_Select2D_Projector &aHandle);
		%feature("autodoc", "1");
		Handle_Select2D_Projector & operator=(const Select2D_Projector *anItem);
		%feature("autodoc", "1");
		Handle_Select2D_Projector const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Select2D_Projector {
	Select2D_Projector* GetObject() {
	return (Select2D_Projector*)$self->Access();
	}
};
%feature("shadow") Handle_Select2D_Projector::~Handle_Select2D_Projector %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Select2D_Projector {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Select2D_SensitiveEntity;
class Handle_Select2D_SensitiveEntity : public Handle_SelectBasics_SensitiveEntity {
	public:
		%feature("autodoc", "1");
		Handle_Select2D_SensitiveEntity();
		%feature("autodoc", "1");
		Handle_Select2D_SensitiveEntity(const Handle_Select2D_SensitiveEntity &aHandle);
		%feature("autodoc", "1");
		Handle_Select2D_SensitiveEntity(const Select2D_SensitiveEntity *anItem);
		%feature("autodoc", "1");
		Handle_Select2D_SensitiveEntity & operator=(const Handle_Select2D_SensitiveEntity &aHandle);
		%feature("autodoc", "1");
		Handle_Select2D_SensitiveEntity & operator=(const Select2D_SensitiveEntity *anItem);
		%feature("autodoc", "1");
		Handle_Select2D_SensitiveEntity const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Select2D_SensitiveEntity {
	Select2D_SensitiveEntity* GetObject() {
	return (Select2D_SensitiveEntity*)$self->Access();
	}
};
%feature("shadow") Handle_Select2D_SensitiveEntity::~Handle_Select2D_SensitiveEntity %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Select2D_SensitiveEntity {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Select2D_SensitiveBox;
class Handle_Select2D_SensitiveBox : public Handle_Select2D_SensitiveEntity {
	public:
		%feature("autodoc", "1");
		Handle_Select2D_SensitiveBox();
		%feature("autodoc", "1");
		Handle_Select2D_SensitiveBox(const Handle_Select2D_SensitiveBox &aHandle);
		%feature("autodoc", "1");
		Handle_Select2D_SensitiveBox(const Select2D_SensitiveBox *anItem);
		%feature("autodoc", "1");
		Handle_Select2D_SensitiveBox & operator=(const Handle_Select2D_SensitiveBox &aHandle);
		%feature("autodoc", "1");
		Handle_Select2D_SensitiveBox & operator=(const Select2D_SensitiveBox *anItem);
		%feature("autodoc", "1");
		Handle_Select2D_SensitiveBox const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Select2D_SensitiveBox {
	Select2D_SensitiveBox* GetObject() {
	return (Select2D_SensitiveBox*)$self->Access();
	}
};
%feature("shadow") Handle_Select2D_SensitiveBox::~Handle_Select2D_SensitiveBox %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Select2D_SensitiveBox {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Select2D_SensitivePoint;
class Handle_Select2D_SensitivePoint : public Handle_Select2D_SensitiveEntity {
	public:
		%feature("autodoc", "1");
		Handle_Select2D_SensitivePoint();
		%feature("autodoc", "1");
		Handle_Select2D_SensitivePoint(const Handle_Select2D_SensitivePoint &aHandle);
		%feature("autodoc", "1");
		Handle_Select2D_SensitivePoint(const Select2D_SensitivePoint *anItem);
		%feature("autodoc", "1");
		Handle_Select2D_SensitivePoint & operator=(const Handle_Select2D_SensitivePoint &aHandle);
		%feature("autodoc", "1");
		Handle_Select2D_SensitivePoint & operator=(const Select2D_SensitivePoint *anItem);
		%feature("autodoc", "1");
		Handle_Select2D_SensitivePoint const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Select2D_SensitivePoint {
	Select2D_SensitivePoint* GetObject() {
	return (Select2D_SensitivePoint*)$self->Access();
	}
};
%feature("shadow") Handle_Select2D_SensitivePoint::~Handle_Select2D_SensitivePoint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Select2D_SensitivePoint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Select2D_SensitiveArc;
class Handle_Select2D_SensitiveArc : public Handle_Select2D_SensitiveEntity {
	public:
		%feature("autodoc", "1");
		Handle_Select2D_SensitiveArc();
		%feature("autodoc", "1");
		Handle_Select2D_SensitiveArc(const Handle_Select2D_SensitiveArc &aHandle);
		%feature("autodoc", "1");
		Handle_Select2D_SensitiveArc(const Select2D_SensitiveArc *anItem);
		%feature("autodoc", "1");
		Handle_Select2D_SensitiveArc & operator=(const Handle_Select2D_SensitiveArc &aHandle);
		%feature("autodoc", "1");
		Handle_Select2D_SensitiveArc & operator=(const Select2D_SensitiveArc *anItem);
		%feature("autodoc", "1");
		Handle_Select2D_SensitiveArc const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Select2D_SensitiveArc {
	Select2D_SensitiveArc* GetObject() {
	return (Select2D_SensitiveArc*)$self->Access();
	}
};
%feature("shadow") Handle_Select2D_SensitiveArc::~Handle_Select2D_SensitiveArc %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Select2D_SensitiveArc {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Select2D_SensitiveSegment;
class Handle_Select2D_SensitiveSegment : public Handle_Select2D_SensitiveEntity {
	public:
		%feature("autodoc", "1");
		Handle_Select2D_SensitiveSegment();
		%feature("autodoc", "1");
		Handle_Select2D_SensitiveSegment(const Handle_Select2D_SensitiveSegment &aHandle);
		%feature("autodoc", "1");
		Handle_Select2D_SensitiveSegment(const Select2D_SensitiveSegment *anItem);
		%feature("autodoc", "1");
		Handle_Select2D_SensitiveSegment & operator=(const Handle_Select2D_SensitiveSegment &aHandle);
		%feature("autodoc", "1");
		Handle_Select2D_SensitiveSegment & operator=(const Select2D_SensitiveSegment *anItem);
		%feature("autodoc", "1");
		Handle_Select2D_SensitiveSegment const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Select2D_SensitiveSegment {
	Select2D_SensitiveSegment* GetObject() {
	return (Select2D_SensitiveSegment*)$self->Access();
	}
};
%feature("shadow") Handle_Select2D_SensitiveSegment::~Handle_Select2D_SensitiveSegment %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Select2D_SensitiveSegment {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Select2D_SensitiveCircle;
class Handle_Select2D_SensitiveCircle : public Handle_Select2D_SensitiveEntity {
	public:
		%feature("autodoc", "1");
		Handle_Select2D_SensitiveCircle();
		%feature("autodoc", "1");
		Handle_Select2D_SensitiveCircle(const Handle_Select2D_SensitiveCircle &aHandle);
		%feature("autodoc", "1");
		Handle_Select2D_SensitiveCircle(const Select2D_SensitiveCircle *anItem);
		%feature("autodoc", "1");
		Handle_Select2D_SensitiveCircle & operator=(const Handle_Select2D_SensitiveCircle &aHandle);
		%feature("autodoc", "1");
		Handle_Select2D_SensitiveCircle & operator=(const Select2D_SensitiveCircle *anItem);
		%feature("autodoc", "1");
		Handle_Select2D_SensitiveCircle const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Select2D_SensitiveCircle {
	Select2D_SensitiveCircle* GetObject() {
	return (Select2D_SensitiveCircle*)$self->Access();
	}
};
%feature("shadow") Handle_Select2D_SensitiveCircle::~Handle_Select2D_SensitiveCircle %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Select2D_SensitiveCircle {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Select2D_SensitiveEntity;
class Select2D_SensitiveEntity : public SelectBasics_SensitiveEntity {
	public:
		%feature("autodoc", "1");
		virtual		Standard_Boolean NeedsConversion() const;
		%feature("autodoc", "1");
		virtual		void Convert(const Handle_Select2D_Projector &aProjector);
		%feature("autodoc", "1");
		virtual		Standard_Integer MaxBoxes() const;
		%feature("autodoc", "1");
		void SetOwnTolerance(const Standard_Real aVal);
		%feature("autodoc", "1");
		void UnsetOwnTolerance();
		%feature("autodoc", "1");
		Standard_Boolean HasOwnTolerance() const;
		%feature("autodoc", "1");
		Standard_Real OwnTolerance() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Is3D() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Matches(const TColgp_Array1OfPnt2d &Polyline, const Bnd_Box2d &aBox, const Standard_Real aTol);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Select2D_SensitiveEntity {
	Handle_Select2D_SensitiveEntity GetHandle() {
	return *(Handle_Select2D_SensitiveEntity*) &$self;
	}
};
%extend Select2D_SensitiveEntity {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Select2D_SensitiveEntity::~Select2D_SensitiveEntity %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Select2D_SensitiveEntity {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Select2D_SensitiveCircle;
class Select2D_SensitiveCircle : public Select2D_SensitiveEntity {
	public:
		%feature("autodoc", "1");
		Select2D_SensitiveCircle(const Handle_SelectBasics_EntityOwner &OwnerId, const gp_Circ2d &TheCirc, const Select2D_TypeOfSelection TheType=Select2D_TOS_BOUNDARY);
		%feature("autodoc", "1");
		virtual		void Areas(SelectBasics_ListOfBox2d & aresul);
		%feature("autodoc","Matches(Standard_Real X, Standard_Real Y, Standard_Real aTol) -> Standard_Real");

		virtual		Standard_Boolean Matches(const Standard_Real X, const Standard_Real Y, const Standard_Real aTol, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Matches(const Standard_Real XMin, const Standard_Real YMin, const Standard_Real XMax, const Standard_Real YMax, const Standard_Real aTol);
		%feature("autodoc", "1");
		const gp_Circ2d & Circle() const;
		%feature("autodoc", "1");
		void SetTypeOfSelection(const Select2D_TypeOfSelection theType);
		%feature("autodoc", "1");
		Select2D_TypeOfSelection Selection();

};
%extend Select2D_SensitiveCircle {
	Handle_Select2D_SensitiveCircle GetHandle() {
	return *(Handle_Select2D_SensitiveCircle*) &$self;
	}
};
%extend Select2D_SensitiveCircle {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Select2D_SensitiveCircle::~Select2D_SensitiveCircle %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Select2D_SensitiveCircle {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Select2D_SensitiveSegment;
class Select2D_SensitiveSegment : public Select2D_SensitiveEntity {
	public:
		%feature("autodoc", "1");
		Select2D_SensitiveSegment(const Handle_SelectBasics_EntityOwner &OwnerId, const gp_Pnt2d &FirstP, const gp_Pnt2d &LastP, const Standard_Integer MaxRect=3);
		%feature("autodoc", "1");
		void Set(const Standard_Integer nbrect);
		%feature("autodoc", "1");
		void StartPoint(const gp_Pnt2d &aPt);
		%feature("autodoc", "1");
		void EndPoint(const gp_Pnt2d &aPt);
		%feature("autodoc", "1");
		const gp_Pnt2d & StartPoint() const;
		%feature("autodoc", "1");
		const gp_Pnt2d & EndPoint() const;
		%feature("autodoc", "1");
		virtual		void Areas(SelectBasics_ListOfBox2d & aSeq);
		%feature("autodoc","Matches(Standard_Real X, Standard_Real Y, Standard_Real aTol) -> Standard_Real");

		virtual		Standard_Boolean Matches(const Standard_Real X, const Standard_Real Y, const Standard_Real aTol, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Matches(const Standard_Real XMin, const Standard_Real YMin, const Standard_Real XMax, const Standard_Real YMax, const Standard_Real aTol);
		%feature("autodoc", "1");
		virtual		Standard_Integer MaxBoxes() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Select2D_SensitiveSegment {
	Handle_Select2D_SensitiveSegment GetHandle() {
	return *(Handle_Select2D_SensitiveSegment*) &$self;
	}
};
%extend Select2D_SensitiveSegment {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Select2D_SensitiveSegment::~Select2D_SensitiveSegment %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Select2D_SensitiveSegment {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Select2D_SensitiveArc;
class Select2D_SensitiveArc : public Select2D_SensitiveEntity {
	public:
		%feature("autodoc", "1");
		Select2D_SensitiveArc(const Handle_SelectBasics_EntityOwner &OwnerId, const gp_Ax2d &OriginAxis, const Standard_Real Angle, const Standard_Real Radius, const Standard_Integer MaxPoints=9);
		%feature("autodoc", "1");
		virtual		void Areas(SelectBasics_ListOfBox2d & aresul);
		%feature("autodoc","Matches(Standard_Real X, Standard_Real Y, Standard_Real aTol) -> Standard_Real");

		virtual		Standard_Boolean Matches(const Standard_Real X, const Standard_Real Y, const Standard_Real aTol, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Matches(const Standard_Real XMin, const Standard_Real YMin, const Standard_Real XMax, const Standard_Real YMax, const Standard_Real aTol);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Select2D_SensitiveArc {
	Handle_Select2D_SensitiveArc GetHandle() {
	return *(Handle_Select2D_SensitiveArc*) &$self;
	}
};
%extend Select2D_SensitiveArc {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Select2D_SensitiveArc::~Select2D_SensitiveArc %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Select2D_SensitiveArc {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Select2D_SensitiveBox;
class Select2D_SensitiveBox : public Select2D_SensitiveEntity {
	public:
		%feature("autodoc", "1");
		Select2D_SensitiveBox(const Handle_SelectBasics_EntityOwner &OwnerId, const gp_Pnt2d &Center, const Standard_Real Height, const Standard_Real Width, const Select2D_TypeOfSelection Type=Select2D_TOS_INTERIOR);
		%feature("autodoc", "1");
		Select2D_SensitiveBox(const Handle_SelectBasics_EntityOwner &OwnerId, const Standard_Real Xmin, const Standard_Real YMin, const Standard_Real XMax, const Standard_Real YMax, const Select2D_TypeOfSelection Type=Select2D_TOS_INTERIOR);
		%feature("autodoc", "1");
		virtual		void Areas(SelectBasics_ListOfBox2d & aresul);
		%feature("autodoc","Matches(Standard_Real X, Standard_Real Y, Standard_Real aTol) -> Standard_Real");

		virtual		Standard_Boolean Matches(const Standard_Real X, const Standard_Real Y, const Standard_Real aTol, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Matches(const Standard_Real XMin, const Standard_Real YMin, const Standard_Real XMax, const Standard_Real YMax, const Standard_Real aTol);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Select2D_SensitiveBox {
	Handle_Select2D_SensitiveBox GetHandle() {
	return *(Handle_Select2D_SensitiveBox*) &$self;
	}
};
%extend Select2D_SensitiveBox {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Select2D_SensitiveBox::~Select2D_SensitiveBox %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Select2D_SensitiveBox {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Select2D_Projector;
class Select2D_Projector : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		virtual		void Convert(const gp_Pnt2d &aPointIn, gp_Pnt2d & aPointOut) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Select2D_Projector {
	Handle_Select2D_Projector GetHandle() {
	return *(Handle_Select2D_Projector*) &$self;
	}
};
%extend Select2D_Projector {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Select2D_Projector::~Select2D_Projector %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Select2D_Projector {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Select2D_SensitivePoint;
class Select2D_SensitivePoint : public Select2D_SensitiveEntity {
	public:
		%feature("autodoc", "1");
		Select2D_SensitivePoint(const Handle_SelectBasics_EntityOwner &OwnerId, const gp_Pnt2d &Location, const Standard_Real InitSensitivity=0);
		%feature("autodoc", "1");
		void Set(const Standard_Real aSensitivity);
		%feature("autodoc", "1");
		virtual		void Areas(SelectBasics_ListOfBox2d & aresul);
		%feature("autodoc", "1");
		const gp_Pnt2d & Location() const;
		%feature("autodoc","Matches(Standard_Real X, Standard_Real Y, Standard_Real aTol) -> Standard_Real");

		virtual		Standard_Boolean Matches(const Standard_Real X, const Standard_Real Y, const Standard_Real aTol, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Matches(const Standard_Real XMin, const Standard_Real YMin, const Standard_Real XMax, const Standard_Real YMax, const Standard_Real aTol);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Select2D_SensitivePoint {
	Handle_Select2D_SensitivePoint GetHandle() {
	return *(Handle_Select2D_SensitivePoint*) &$self;
	}
};
%extend Select2D_SensitivePoint {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Select2D_SensitivePoint::~Select2D_SensitivePoint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Select2D_SensitivePoint {
	void _kill_pointed() {
		delete $self;
	}
};
