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

%module Select3D
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include Select3D_renames.i


%include Select3D_required_python_modules.i


%include Select3D_dependencies.i


%include Select3D_headers.i


enum Select3D_TypeOfSensitivity {
	Select3D_TOS_INTERIOR,
	Select3D_TOS_BOUNDARY,
	Select3D_TOS_EXTERIOR,
	};



%nodefaultctor Handle_Select3D_SensitiveEntity;
class Handle_Select3D_SensitiveEntity : public Handle_SelectBasics_SensitiveEntity {
	public:
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveEntity();
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveEntity(const Handle_Select3D_SensitiveEntity &aHandle);
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveEntity(const Select3D_SensitiveEntity *anItem);
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveEntity & operator=(const Handle_Select3D_SensitiveEntity &aHandle);
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveEntity & operator=(const Select3D_SensitiveEntity *anItem);
		%feature("autodoc", "1");
		static		Handle_Select3D_SensitiveEntity DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Select3D_SensitiveEntity {
	Select3D_SensitiveEntity* GetObject() {
	return (Select3D_SensitiveEntity*)$self->Access();
	}
};
%feature("shadow") Handle_Select3D_SensitiveEntity::~Handle_Select3D_SensitiveEntity %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Select3D_SensitiveEntity {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Select3D_SensitivePoly;
class Handle_Select3D_SensitivePoly : public Handle_Select3D_SensitiveEntity {
	public:
		%feature("autodoc", "1");
		Handle_Select3D_SensitivePoly();
		%feature("autodoc", "1");
		Handle_Select3D_SensitivePoly(const Handle_Select3D_SensitivePoly &aHandle);
		%feature("autodoc", "1");
		Handle_Select3D_SensitivePoly(const Select3D_SensitivePoly *anItem);
		%feature("autodoc", "1");
		Handle_Select3D_SensitivePoly & operator=(const Handle_Select3D_SensitivePoly &aHandle);
		%feature("autodoc", "1");
		Handle_Select3D_SensitivePoly & operator=(const Select3D_SensitivePoly *anItem);
		%feature("autodoc", "1");
		static		Handle_Select3D_SensitivePoly DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Select3D_SensitivePoly {
	Select3D_SensitivePoly* GetObject() {
	return (Select3D_SensitivePoly*)$self->Access();
	}
};
%feature("shadow") Handle_Select3D_SensitivePoly::~Handle_Select3D_SensitivePoly %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Select3D_SensitivePoly {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Select3D_SensitiveCurve;
class Handle_Select3D_SensitiveCurve : public Handle_Select3D_SensitivePoly {
	public:
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveCurve();
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveCurve(const Handle_Select3D_SensitiveCurve &aHandle);
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveCurve(const Select3D_SensitiveCurve *anItem);
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveCurve & operator=(const Handle_Select3D_SensitiveCurve &aHandle);
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveCurve & operator=(const Select3D_SensitiveCurve *anItem);
		%feature("autodoc", "1");
		static		Handle_Select3D_SensitiveCurve DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Select3D_SensitiveCurve {
	Select3D_SensitiveCurve* GetObject() {
	return (Select3D_SensitiveCurve*)$self->Access();
	}
};
%feature("shadow") Handle_Select3D_SensitiveCurve::~Handle_Select3D_SensitiveCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Select3D_SensitiveCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Select3D_SensitiveCircle;
class Handle_Select3D_SensitiveCircle : public Handle_Select3D_SensitivePoly {
	public:
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveCircle();
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveCircle(const Handle_Select3D_SensitiveCircle &aHandle);
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveCircle(const Select3D_SensitiveCircle *anItem);
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveCircle & operator=(const Handle_Select3D_SensitiveCircle &aHandle);
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveCircle & operator=(const Select3D_SensitiveCircle *anItem);
		%feature("autodoc", "1");
		static		Handle_Select3D_SensitiveCircle DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Select3D_SensitiveCircle {
	Select3D_SensitiveCircle* GetObject() {
	return (Select3D_SensitiveCircle*)$self->Access();
	}
};
%feature("shadow") Handle_Select3D_SensitiveCircle::~Handle_Select3D_SensitiveCircle %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Select3D_SensitiveCircle {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Select3D_SensitiveBox;
class Handle_Select3D_SensitiveBox : public Handle_Select3D_SensitiveEntity {
	public:
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveBox();
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveBox(const Handle_Select3D_SensitiveBox &aHandle);
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveBox(const Select3D_SensitiveBox *anItem);
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveBox & operator=(const Handle_Select3D_SensitiveBox &aHandle);
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveBox & operator=(const Select3D_SensitiveBox *anItem);
		%feature("autodoc", "1");
		static		Handle_Select3D_SensitiveBox DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Select3D_SensitiveBox {
	Select3D_SensitiveBox* GetObject() {
	return (Select3D_SensitiveBox*)$self->Access();
	}
};
%feature("shadow") Handle_Select3D_SensitiveBox::~Handle_Select3D_SensitiveBox %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Select3D_SensitiveBox {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Select3D_Projector;
class Handle_Select3D_Projector : public Handle_Standard_Transient {
	public:
		%feature("autodoc", "1");
		Handle_Select3D_Projector();
		%feature("autodoc", "1");
		Handle_Select3D_Projector(const Handle_Select3D_Projector &aHandle);
		%feature("autodoc", "1");
		Handle_Select3D_Projector(const Select3D_Projector *anItem);
		%feature("autodoc", "1");
		Handle_Select3D_Projector & operator=(const Handle_Select3D_Projector &aHandle);
		%feature("autodoc", "1");
		Handle_Select3D_Projector & operator=(const Select3D_Projector *anItem);
		%feature("autodoc", "1");
		static		Handle_Select3D_Projector DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Select3D_Projector {
	Select3D_Projector* GetObject() {
	return (Select3D_Projector*)$self->Access();
	}
};
%feature("shadow") Handle_Select3D_Projector::~Handle_Select3D_Projector %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Select3D_Projector {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Select3D_SensitiveWire;
class Handle_Select3D_SensitiveWire : public Handle_Select3D_SensitiveEntity {
	public:
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveWire();
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveWire(const Handle_Select3D_SensitiveWire &aHandle);
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveWire(const Select3D_SensitiveWire *anItem);
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveWire & operator=(const Handle_Select3D_SensitiveWire &aHandle);
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveWire & operator=(const Select3D_SensitiveWire *anItem);
		%feature("autodoc", "1");
		static		Handle_Select3D_SensitiveWire DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Select3D_SensitiveWire {
	Select3D_SensitiveWire* GetObject() {
	return (Select3D_SensitiveWire*)$self->Access();
	}
};
%feature("shadow") Handle_Select3D_SensitiveWire::~Handle_Select3D_SensitiveWire %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Select3D_SensitiveWire {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Select3D_SensitivePoint;
class Handle_Select3D_SensitivePoint : public Handle_Select3D_SensitiveEntity {
	public:
		%feature("autodoc", "1");
		Handle_Select3D_SensitivePoint();
		%feature("autodoc", "1");
		Handle_Select3D_SensitivePoint(const Handle_Select3D_SensitivePoint &aHandle);
		%feature("autodoc", "1");
		Handle_Select3D_SensitivePoint(const Select3D_SensitivePoint *anItem);
		%feature("autodoc", "1");
		Handle_Select3D_SensitivePoint & operator=(const Handle_Select3D_SensitivePoint &aHandle);
		%feature("autodoc", "1");
		Handle_Select3D_SensitivePoint & operator=(const Select3D_SensitivePoint *anItem);
		%feature("autodoc", "1");
		static		Handle_Select3D_SensitivePoint DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Select3D_SensitivePoint {
	Select3D_SensitivePoint* GetObject() {
	return (Select3D_SensitivePoint*)$self->Access();
	}
};
%feature("shadow") Handle_Select3D_SensitivePoint::~Handle_Select3D_SensitivePoint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Select3D_SensitivePoint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Select3D_SequenceNodeOfSensitiveEntitySequence;
class Handle_Select3D_SequenceNodeOfSensitiveEntitySequence : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_Select3D_SequenceNodeOfSensitiveEntitySequence();
		%feature("autodoc", "1");
		Handle_Select3D_SequenceNodeOfSensitiveEntitySequence(const Handle_Select3D_SequenceNodeOfSensitiveEntitySequence &aHandle);
		%feature("autodoc", "1");
		Handle_Select3D_SequenceNodeOfSensitiveEntitySequence(const Select3D_SequenceNodeOfSensitiveEntitySequence *anItem);
		%feature("autodoc", "1");
		Handle_Select3D_SequenceNodeOfSensitiveEntitySequence & operator=(const Handle_Select3D_SequenceNodeOfSensitiveEntitySequence &aHandle);
		%feature("autodoc", "1");
		Handle_Select3D_SequenceNodeOfSensitiveEntitySequence & operator=(const Select3D_SequenceNodeOfSensitiveEntitySequence *anItem);
		%feature("autodoc", "1");
		static		Handle_Select3D_SequenceNodeOfSensitiveEntitySequence DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Select3D_SequenceNodeOfSensitiveEntitySequence {
	Select3D_SequenceNodeOfSensitiveEntitySequence* GetObject() {
	return (Select3D_SequenceNodeOfSensitiveEntitySequence*)$self->Access();
	}
};
%feature("shadow") Handle_Select3D_SequenceNodeOfSensitiveEntitySequence::~Handle_Select3D_SequenceNodeOfSensitiveEntitySequence %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Select3D_SequenceNodeOfSensitiveEntitySequence {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Select3D_ListNodeOfListOfSensitiveTriangle;
class Handle_Select3D_ListNodeOfListOfSensitiveTriangle : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_Select3D_ListNodeOfListOfSensitiveTriangle();
		%feature("autodoc", "1");
		Handle_Select3D_ListNodeOfListOfSensitiveTriangle(const Handle_Select3D_ListNodeOfListOfSensitiveTriangle &aHandle);
		%feature("autodoc", "1");
		Handle_Select3D_ListNodeOfListOfSensitiveTriangle(const Select3D_ListNodeOfListOfSensitiveTriangle *anItem);
		%feature("autodoc", "1");
		Handle_Select3D_ListNodeOfListOfSensitiveTriangle & operator=(const Handle_Select3D_ListNodeOfListOfSensitiveTriangle &aHandle);
		%feature("autodoc", "1");
		Handle_Select3D_ListNodeOfListOfSensitiveTriangle & operator=(const Select3D_ListNodeOfListOfSensitiveTriangle *anItem);
		%feature("autodoc", "1");
		static		Handle_Select3D_ListNodeOfListOfSensitiveTriangle DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Select3D_ListNodeOfListOfSensitiveTriangle {
	Select3D_ListNodeOfListOfSensitiveTriangle* GetObject() {
	return (Select3D_ListNodeOfListOfSensitiveTriangle*)$self->Access();
	}
};
%feature("shadow") Handle_Select3D_ListNodeOfListOfSensitiveTriangle::~Handle_Select3D_ListNodeOfListOfSensitiveTriangle %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Select3D_ListNodeOfListOfSensitiveTriangle {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Select3D_ListNodeOfListOfSensitive;
class Handle_Select3D_ListNodeOfListOfSensitive : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_Select3D_ListNodeOfListOfSensitive();
		%feature("autodoc", "1");
		Handle_Select3D_ListNodeOfListOfSensitive(const Handle_Select3D_ListNodeOfListOfSensitive &aHandle);
		%feature("autodoc", "1");
		Handle_Select3D_ListNodeOfListOfSensitive(const Select3D_ListNodeOfListOfSensitive *anItem);
		%feature("autodoc", "1");
		Handle_Select3D_ListNodeOfListOfSensitive & operator=(const Handle_Select3D_ListNodeOfListOfSensitive &aHandle);
		%feature("autodoc", "1");
		Handle_Select3D_ListNodeOfListOfSensitive & operator=(const Select3D_ListNodeOfListOfSensitive *anItem);
		%feature("autodoc", "1");
		static		Handle_Select3D_ListNodeOfListOfSensitive DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Select3D_ListNodeOfListOfSensitive {
	Select3D_ListNodeOfListOfSensitive* GetObject() {
	return (Select3D_ListNodeOfListOfSensitive*)$self->Access();
	}
};
%feature("shadow") Handle_Select3D_ListNodeOfListOfSensitive::~Handle_Select3D_ListNodeOfListOfSensitive %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Select3D_ListNodeOfListOfSensitive {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Select3D_SensitiveTriangulation;
class Handle_Select3D_SensitiveTriangulation : public Handle_Select3D_SensitiveEntity {
	public:
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveTriangulation();
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveTriangulation(const Handle_Select3D_SensitiveTriangulation &aHandle);
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveTriangulation(const Select3D_SensitiveTriangulation *anItem);
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveTriangulation & operator=(const Handle_Select3D_SensitiveTriangulation &aHandle);
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveTriangulation & operator=(const Select3D_SensitiveTriangulation *anItem);
		%feature("autodoc", "1");
		static		Handle_Select3D_SensitiveTriangulation DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Select3D_SensitiveTriangulation {
	Select3D_SensitiveTriangulation* GetObject() {
	return (Select3D_SensitiveTriangulation*)$self->Access();
	}
};
%feature("shadow") Handle_Select3D_SensitiveTriangulation::~Handle_Select3D_SensitiveTriangulation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Select3D_SensitiveTriangulation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Select3D_SensitiveFace;
class Handle_Select3D_SensitiveFace : public Handle_Select3D_SensitivePoly {
	public:
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveFace();
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveFace(const Handle_Select3D_SensitiveFace &aHandle);
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveFace(const Select3D_SensitiveFace *anItem);
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveFace & operator=(const Handle_Select3D_SensitiveFace &aHandle);
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveFace & operator=(const Select3D_SensitiveFace *anItem);
		%feature("autodoc", "1");
		static		Handle_Select3D_SensitiveFace DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Select3D_SensitiveFace {
	Select3D_SensitiveFace* GetObject() {
	return (Select3D_SensitiveFace*)$self->Access();
	}
};
%feature("shadow") Handle_Select3D_SensitiveFace::~Handle_Select3D_SensitiveFace %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Select3D_SensitiveFace {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Select3D_SensitiveTriangle;
class Handle_Select3D_SensitiveTriangle : public Handle_Select3D_SensitivePoly {
	public:
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveTriangle();
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveTriangle(const Handle_Select3D_SensitiveTriangle &aHandle);
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveTriangle(const Select3D_SensitiveTriangle *anItem);
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveTriangle & operator=(const Handle_Select3D_SensitiveTriangle &aHandle);
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveTriangle & operator=(const Select3D_SensitiveTriangle *anItem);
		%feature("autodoc", "1");
		static		Handle_Select3D_SensitiveTriangle DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Select3D_SensitiveTriangle {
	Select3D_SensitiveTriangle* GetObject() {
	return (Select3D_SensitiveTriangle*)$self->Access();
	}
};
%feature("shadow") Handle_Select3D_SensitiveTriangle::~Handle_Select3D_SensitiveTriangle %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Select3D_SensitiveTriangle {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Select3D_SensitiveGroup;
class Handle_Select3D_SensitiveGroup : public Handle_Select3D_SensitiveEntity {
	public:
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveGroup();
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveGroup(const Handle_Select3D_SensitiveGroup &aHandle);
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveGroup(const Select3D_SensitiveGroup *anItem);
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveGroup & operator=(const Handle_Select3D_SensitiveGroup &aHandle);
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveGroup & operator=(const Select3D_SensitiveGroup *anItem);
		%feature("autodoc", "1");
		static		Handle_Select3D_SensitiveGroup DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Select3D_SensitiveGroup {
	Select3D_SensitiveGroup* GetObject() {
	return (Select3D_SensitiveGroup*)$self->Access();
	}
};
%feature("shadow") Handle_Select3D_SensitiveGroup::~Handle_Select3D_SensitiveGroup %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Select3D_SensitiveGroup {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Select3D_SensitiveSegment;
class Handle_Select3D_SensitiveSegment : public Handle_Select3D_SensitiveEntity {
	public:
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveSegment();
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveSegment(const Handle_Select3D_SensitiveSegment &aHandle);
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveSegment(const Select3D_SensitiveSegment *anItem);
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveSegment & operator=(const Handle_Select3D_SensitiveSegment &aHandle);
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveSegment & operator=(const Select3D_SensitiveSegment *anItem);
		%feature("autodoc", "1");
		static		Handle_Select3D_SensitiveSegment DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Select3D_SensitiveSegment {
	Select3D_SensitiveSegment* GetObject() {
	return (Select3D_SensitiveSegment*)$self->Access();
	}
};
%feature("shadow") Handle_Select3D_SensitiveSegment::~Handle_Select3D_SensitiveSegment %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Select3D_SensitiveSegment {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Select3D_SensitiveEntity;
class Select3D_SensitiveEntity : public SelectBasics_SensitiveEntity {
	public:
		%feature("autodoc", "1");
		virtual		Standard_Boolean NeedsConversion() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Is3D() const;
		%feature("autodoc", "1");
		virtual		void Project(const Handle_Select3D_Projector &aProjector);
		%feature("autodoc", "1");
		virtual		Standard_Integer MaxBoxes() const;
		%feature("autodoc", "1");
		virtual		Handle_Select3D_SensitiveEntity GetConnected(const TopLoc_Location &aLocation);
		%feature("autodoc","Matches(Standard_Real X, Standard_Real Y, Standard_Real aTol) -> Standard_Real");

		virtual		Standard_Boolean Matches(const Standard_Real X, const Standard_Real Y, const Standard_Real aTol, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Matches(const Standard_Real XMin, const Standard_Real YMin, const Standard_Real XMax, const Standard_Real YMax, const Standard_Real aTol);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Matches(const TColgp_Array1OfPnt2d &Polyline, const Bnd_Box2d &aBox, const Standard_Real aTol);
		%feature("autodoc", "1");
		gp_Lin GetEyeLine(const Standard_Real X, const Standard_Real Y) const;
		%feature("autodoc", "1");
		virtual		Standard_Real ComputeDepth(const gp_Lin EyeLine) const;
		%feature("autodoc", "1");
		virtual		Standard_Real Depth() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean HasLocation() const;
		%feature("autodoc", "1");
		virtual		const TopLoc_Location & Location() const;
		%feature("autodoc", "1");
		virtual		void ResetLocation();
		%feature("autodoc", "1");
		virtual		void SetLocation(const TopLoc_Location &aLoc);
		%feature("autodoc", "1");
		virtual		void Dump(Standard_OStream & S, const Standard_Boolean FullDump=1) const;
		%feature("autodoc", "1");
		static		void DumpBox(Standard_OStream & S, const Bnd_Box2d &abox);
		%feature("autodoc", "1");
		void UpdateLocation(const TopLoc_Location &aLoc);
		%feature("autodoc", "1");
		virtual		void SetLastPrj(const Handle_Select3D_Projector &aPrj);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Select3D_SensitiveEntity {
	Handle_Select3D_SensitiveEntity GetHandle() {
	return *(Handle_Select3D_SensitiveEntity*) &$self;
	}
};
%extend Select3D_SensitiveEntity {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Select3D_SensitiveEntity::~Select3D_SensitiveEntity %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Select3D_SensitiveEntity {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Select3D_SensitiveBox;
class Select3D_SensitiveBox : public Select3D_SensitiveEntity {
	public:
		%feature("autodoc", "1");
		Select3D_SensitiveBox(const Handle_SelectBasics_EntityOwner &OwnerId, const Bnd_Box &BoundingBox);
		%feature("autodoc", "1");
		Select3D_SensitiveBox(const Handle_SelectBasics_EntityOwner &OwnerId, const Standard_Real XMin, const Standard_Real YMin, const Standard_Real ZMin, const Standard_Real XMax, const Standard_Real YMax, const Standard_Real ZMax);
		%feature("autodoc", "1");
		virtual		void Areas(SelectBasics_ListOfBox2d & boxes);
		%feature("autodoc", "1");
		const Bnd_Box & Box() const;

};
%extend Select3D_SensitiveBox {
	Handle_Select3D_SensitiveBox GetHandle() {
	return *(Handle_Select3D_SensitiveBox*) &$self;
	}
};
%extend Select3D_SensitiveBox {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Select3D_SensitiveBox::~Select3D_SensitiveBox %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Select3D_SensitiveBox {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Select3D_Projector;
class Select3D_Projector : public Standard_Transient {
	public:
		%feature("autodoc", "1");
		Select3D_Projector(const Handle_V3d_View &aView);
		%feature("autodoc", "1");
		Select3D_Projector();
		%feature("autodoc", "1");
		Select3D_Projector(const gp_Ax2 CS);
		%feature("autodoc", "1");
		Select3D_Projector(const gp_Ax2 CS, const Standard_Real Focus);
		%feature("autodoc", "1");
		Select3D_Projector(const gp_Trsf T, const Standard_Boolean Persp, const Standard_Real Focus);
		%feature("autodoc", "1");
		Select3D_Projector(const gp_GTrsf GT, const Standard_Boolean Persp, const Standard_Real Focus);
		%feature("autodoc", "1");
		void Set(const gp_Trsf T, const Standard_Boolean Persp, const Standard_Real Focus);
		%feature("autodoc", "1");
		void SetView(const Handle_V3d_View &V);
		%feature("autodoc", "1");
		const Handle_V3d_View & View() const;
		%feature("autodoc", "1");
		virtual		void Scaled(const Standard_Boolean On=0);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Perspective() const;
		%feature("autodoc", "1");
		virtual		const gp_GTrsf  Transformation() const;
		%feature("autodoc", "1");
		virtual		const gp_GTrsf  InvertedTransformation() const;
		%feature("autodoc", "1");
		virtual		const gp_Trsf  FullTransformation() const;
		%feature("autodoc", "1");
		virtual		Standard_Real Focus() const;
		%feature("autodoc", "1");
		virtual		void Transform(gp_Vec & D) const;
		%feature("autodoc", "1");
		virtual		void Transform(gp_Pnt & Pnt) const;
		%feature("autodoc", "1");
		virtual		void Project(const gp_Pnt P, gp_Pnt2d & Pout) const;
		%feature("autodoc","Project(const P) -> [Standard_Real, Standard_Real, Standard_Real]");

		void Project(const gp_Pnt P, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		virtual		void Project(const gp_Pnt P, const gp_Vec D1, gp_Pnt2d & Pout, gp_Vec2d & D1out) const;
		%feature("autodoc", "1");
		virtual		gp_Lin Shoot(const Standard_Real X, const Standard_Real Y) const;
		%feature("autodoc", "1");
		Standard_Real DepthMin() const;
		%feature("autodoc", "1");
		Standard_Real DepthMax() const;
		%feature("autodoc", "1");
		void DepthMinMax(const Standard_Real theDepthMin, const Standard_Real theDepthMax);
		%feature("autodoc", "1");
		virtual		void Transform(gp_Pnt & Pnt, const gp_GTrsf T) const;
		%feature("autodoc", "1");
		virtual		void Transform(gp_Lin & Lin, const gp_GTrsf T) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Select3D_Projector {
	Handle_Select3D_Projector GetHandle() {
	return *(Handle_Select3D_Projector*) &$self;
	}
};
%extend Select3D_Projector {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Select3D_Projector::~Select3D_Projector %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Select3D_Projector {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Select3D_ListIteratorOfListOfSensitive;
class Select3D_ListIteratorOfListOfSensitive {
	public:
		%feature("autodoc", "1");
		Select3D_ListIteratorOfListOfSensitive();
		%feature("autodoc", "1");
		Select3D_ListIteratorOfListOfSensitive(const Select3D_ListOfSensitive &L);
		%feature("autodoc", "1");
		void Initialize(const Select3D_ListOfSensitive &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveEntity & Value() const;

};
%feature("shadow") Select3D_ListIteratorOfListOfSensitive::~Select3D_ListIteratorOfListOfSensitive %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Select3D_ListIteratorOfListOfSensitive {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Select3D_Pnt;
class Select3D_Pnt {
	public:
		%feature("autodoc", "1");
		Select3D_Pnt();
		%feature("autodoc", "1");
		gp_Pnt operator=(const gp_Pnt thePnt);

};
%feature("shadow") Select3D_Pnt::~Select3D_Pnt %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Select3D_Pnt {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Select3D_SensitivePoly;
class Select3D_SensitivePoly : public Select3D_SensitiveEntity {
	public:
		%feature("autodoc", "1");
		virtual		void Project(const Handle_Select3D_Projector &aProjector);
		%feature("autodoc", "1");
		virtual		void Areas(SelectBasics_ListOfBox2d & boxes);
		%feature("autodoc", "1");
		void Points3D(Handle_TColgp_HArray1OfPnt & theHArrayOfPnt);
		%feature("autodoc", "1");
		void Points2D(TColgp_Array1OfPnt2d & aArrayOf2dPnt);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Select3D_SensitivePoly {
	Handle_Select3D_SensitivePoly GetHandle() {
	return *(Handle_Select3D_SensitivePoly*) &$self;
	}
};
%extend Select3D_SensitivePoly {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Select3D_SensitivePoly::~Select3D_SensitivePoly %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Select3D_SensitivePoly {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Select3D_SensitiveTriangle;
class Select3D_SensitiveTriangle : public Select3D_SensitivePoly {
	public:
		%feature("autodoc", "1");
		Select3D_SensitiveTriangle(const Handle_SelectBasics_EntityOwner &OwnerId, const gp_Pnt P1, const gp_Pnt P2, const gp_Pnt P3, const Select3D_TypeOfSensitivity Sensitivity=Select3D_TOS_INTERIOR);
		%feature("autodoc","Matches(Standard_Real X, Standard_Real Y, Standard_Real aTol) -> Standard_Real");

		virtual		Standard_Boolean Matches(const Standard_Real X, const Standard_Real Y, const Standard_Real aTol, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Matches(const Standard_Real XMin, const Standard_Real YMin, const Standard_Real XMax, const Standard_Real YMax, const Standard_Real aTol);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Matches(const TColgp_Array1OfPnt2d &Polyline, const Bnd_Box2d &aBox, const Standard_Real aTol);
		%feature("autodoc", "1");
		virtual		Standard_Real ComputeDepth(const gp_Lin EyeLine) const;
		%feature("autodoc", "1");
		void Points3D(gp_Pnt & P1, gp_Pnt & P2, gp_Pnt & P3) const;
		%feature("autodoc", "1");
		gp_Pnt Center3D() const;
		%feature("autodoc", "1");
		gp_XY Center2D() const;
		%feature("autodoc","Status(Standard_Real X, Standard_Real Y, Standard_Real aTol) -> Standard_Real");

		Standard_Integer Status(const Standard_Real X, const Standard_Real Y, const Standard_Real aTol, Standard_Real &OutValue) const;
		%feature("autodoc","Status(const p0, const p1, const p2, const aPoint, Standard_Real aTol) -> Standard_Real");

		static		Standard_Integer Status(const gp_XY p0, const gp_XY p1, const gp_XY p2, const gp_XY aPoint, const Standard_Real aTol, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		void Dump(Standard_OStream & S, const Standard_Boolean FullDump=1) const;
		%feature("autodoc", "1");
		virtual		Handle_Select3D_SensitiveEntity GetConnected(const TopLoc_Location &theLocation);

};
%extend Select3D_SensitiveTriangle {
	Handle_Select3D_SensitiveTriangle GetHandle() {
	return *(Handle_Select3D_SensitiveTriangle*) &$self;
	}
};
%extend Select3D_SensitiveTriangle {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Select3D_SensitiveTriangle::~Select3D_SensitiveTriangle %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Select3D_SensitiveTriangle {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Select3D_ListIteratorOfListOfSensitiveTriangle;
class Select3D_ListIteratorOfListOfSensitiveTriangle {
	public:
		%feature("autodoc", "1");
		Select3D_ListIteratorOfListOfSensitiveTriangle();
		%feature("autodoc", "1");
		Select3D_ListIteratorOfListOfSensitiveTriangle(const Select3D_ListOfSensitiveTriangle &L);
		%feature("autodoc", "1");
		void Initialize(const Select3D_ListOfSensitiveTriangle &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveTriangle & Value() const;

};
%feature("shadow") Select3D_ListIteratorOfListOfSensitiveTriangle::~Select3D_ListIteratorOfListOfSensitiveTriangle %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Select3D_ListIteratorOfListOfSensitiveTriangle {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Select3D_SensitiveFace;
class Select3D_SensitiveFace : public Select3D_SensitivePoly {
	public:
		%feature("autodoc", "1");
		Select3D_SensitiveFace(const Handle_SelectBasics_EntityOwner &OwnerId, const TColgp_Array1OfPnt &ThePoints, const Select3D_TypeOfSensitivity Sensitivity=Select3D_TOS_INTERIOR);
		%feature("autodoc", "1");
		Select3D_SensitiveFace(const Handle_SelectBasics_EntityOwner &OwnerId, const Handle_TColgp_HArray1OfPnt &ThePoints, const Select3D_TypeOfSensitivity Sensitivity=Select3D_TOS_INTERIOR);
		%feature("autodoc","Matches(Standard_Real X, Standard_Real Y, Standard_Real aTol) -> Standard_Real");

		virtual		Standard_Boolean Matches(const Standard_Real X, const Standard_Real Y, const Standard_Real aTol, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Matches(const Standard_Real XMin, const Standard_Real YMin, const Standard_Real XMax, const Standard_Real YMax, const Standard_Real aTol);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Matches(const TColgp_Array1OfPnt2d &Polyline, const Bnd_Box2d &aBox, const Standard_Real aTol);
		%feature("autodoc", "1");
		virtual		Standard_Real ComputeDepth(const gp_Lin EyeLine) const;
		%feature("autodoc", "1");
		virtual		void Dump(Standard_OStream & S, const Standard_Boolean FullDump=1) const;
		%feature("autodoc", "1");
		virtual		Handle_Select3D_SensitiveEntity GetConnected(const TopLoc_Location &theLocation);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Select3D_SensitiveFace {
	Handle_Select3D_SensitiveFace GetHandle() {
	return *(Handle_Select3D_SensitiveFace*) &$self;
	}
};
%extend Select3D_SensitiveFace {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Select3D_SensitiveFace::~Select3D_SensitiveFace %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Select3D_SensitiveFace {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Select3D_ListOfSensitive;
class Select3D_ListOfSensitive {
	public:
		%feature("autodoc", "1");
		Select3D_ListOfSensitive();
		%feature("autodoc", "1");
		void Assign(const Select3D_ListOfSensitive &Other);
		%feature("autodoc", "1");
		void operator=(const Select3D_ListOfSensitive &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const Handle_Select3D_SensitiveEntity &I);
		%feature("autodoc", "1");
		void Prepend(const Handle_Select3D_SensitiveEntity &I, Select3D_ListIteratorOfListOfSensitive & theIt);
		%feature("autodoc", "1");
		void Prepend(Select3D_ListOfSensitive & Other);
		%feature("autodoc", "1");
		void Append(const Handle_Select3D_SensitiveEntity &I);
		%feature("autodoc", "1");
		void Append(const Handle_Select3D_SensitiveEntity &I, Select3D_ListIteratorOfListOfSensitive & theIt);
		%feature("autodoc", "1");
		void Append(Select3D_ListOfSensitive & Other);
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveEntity & First() const;
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveEntity & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(Select3D_ListIteratorOfListOfSensitive & It);
		%feature("autodoc", "1");
		void InsertBefore(const Handle_Select3D_SensitiveEntity &I, Select3D_ListIteratorOfListOfSensitive & It);
		%feature("autodoc", "1");
		void InsertBefore(Select3D_ListOfSensitive & Other, Select3D_ListIteratorOfListOfSensitive & It);
		%feature("autodoc", "1");
		void InsertAfter(const Handle_Select3D_SensitiveEntity &I, Select3D_ListIteratorOfListOfSensitive & It);
		%feature("autodoc", "1");
		void InsertAfter(Select3D_ListOfSensitive & Other, Select3D_ListIteratorOfListOfSensitive & It);

};
%feature("shadow") Select3D_ListOfSensitive::~Select3D_ListOfSensitive %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Select3D_ListOfSensitive {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Select3D_Pnt2d;
class Select3D_Pnt2d {
	public:
		%feature("autodoc", "1");
		Select3D_Pnt2d();
		%feature("autodoc", "1");
		gp_Pnt2d operator=(const gp_Pnt2d thePnt);

};
%feature("shadow") Select3D_Pnt2d::~Select3D_Pnt2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Select3D_Pnt2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Select3D_SensitiveTriangulation;
class Select3D_SensitiveTriangulation : public Select3D_SensitiveEntity {
	public:
		%feature("autodoc", "1");
		Select3D_SensitiveTriangulation(const Handle_SelectBasics_EntityOwner &OwnerId, const Handle_Poly_Triangulation &aTriangulation, const TopLoc_Location &aLoc, const Standard_Boolean InteriorFlag=1);
		%feature("autodoc", "1");
		Select3D_SensitiveTriangulation(const Handle_SelectBasics_EntityOwner &OwnerId, const Handle_Poly_Triangulation &aTriangulation, const TopLoc_Location &aLoc, const Handle_TColStd_HArray1OfInteger &thefreeedges, const gp_Pnt theCDG, const Standard_Boolean InteriorFlag);
		%feature("autodoc", "1");
		virtual		void Project(const Handle_Select3D_Projector &aProjector);
		%feature("autodoc", "1");
		virtual		void Areas(SelectBasics_ListOfBox2d & boxes);
		%feature("autodoc", "1");
		virtual		Handle_Select3D_SensitiveEntity GetConnected(const TopLoc_Location &aLocation);
		%feature("autodoc","Matches(Standard_Real X, Standard_Real Y, Standard_Real aTol) -> Standard_Real");

		virtual		Standard_Boolean Matches(const Standard_Real X, const Standard_Real Y, const Standard_Real aTol, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Matches(const Standard_Real XMin, const Standard_Real YMin, const Standard_Real XMax, const Standard_Real YMax, const Standard_Real aTol);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Matches(const TColgp_Array1OfPnt2d &Polyline, const Bnd_Box2d &aBox, const Standard_Real aTol);
		%feature("autodoc", "1");
		virtual		Standard_Real ComputeDepth(const gp_Lin EyeLine) const;
		%feature("autodoc", "1");
		const Handle_Poly_Triangulation & Triangulation() const;
		%feature("autodoc", "1");
		const gp_Pnt  CDG3D() const;
		%feature("autodoc", "1");
		const gp_Pnt2d  CDG2D() const;
		%feature("autodoc","Status(const p0, const p1, const p2, const aPoint, Standard_Real aTol) -> Standard_Real");

		Standard_Integer Status(const gp_XY p0, const gp_XY p1, const gp_XY p2, const gp_XY aPoint, const Standard_Real aTol, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Boolean HasInitLocation() const;
		%feature("autodoc", "1");
		const TopLoc_Location & GetInitLocation() const;
		%feature("autodoc", "1");
		virtual		void ResetLocation();
		%feature("autodoc", "1");
		virtual		void SetLocation(const TopLoc_Location &aLoc);
		%feature("autodoc", "1");
		virtual		void Dump(Standard_OStream & S, const Standard_Boolean FullDump=1) const;
		%feature("autodoc", "1");
		Standard_Boolean DetectedTriangle2d(gp_Pnt2d & P1, gp_Pnt2d & P2, gp_Pnt2d & P3) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Select3D_SensitiveTriangulation {
	Handle_Select3D_SensitiveTriangulation GetHandle() {
	return *(Handle_Select3D_SensitiveTriangulation*) &$self;
	}
};
%extend Select3D_SensitiveTriangulation {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Select3D_SensitiveTriangulation::~Select3D_SensitiveTriangulation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Select3D_SensitiveTriangulation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Select3D_SensitiveSegment;
class Select3D_SensitiveSegment : public Select3D_SensitiveEntity {
	public:
		%feature("autodoc", "1");
		Select3D_SensitiveSegment(const Handle_SelectBasics_EntityOwner &OwnerId, const gp_Pnt FirstP, const gp_Pnt LastP, const Standard_Integer MaxRect=1);
		%feature("autodoc", "1");
		void Set(const Standard_Integer MaxRect);
		%feature("autodoc", "1");
		void StartPoint(const gp_Pnt start);
		%feature("autodoc", "1");
		void EndPoint(const gp_Pnt end);
		%feature("autodoc", "1");
		gp_Pnt StartPoint() const;
		%feature("autodoc", "1");
		gp_Pnt EndPoint() const;
		%feature("autodoc", "1");
		gp_Pnt2d StartPoint2d() const;
		%feature("autodoc", "1");
		gp_Pnt2d EndPoint2d() const;
		%feature("autodoc", "1");
		virtual		void Project(const Handle_Select3D_Projector &aProjector);
		%feature("autodoc", "1");
		virtual		void Areas(SelectBasics_ListOfBox2d & boxes);
		%feature("autodoc", "1");
		virtual		Handle_Select3D_SensitiveEntity GetConnected(const TopLoc_Location &aLocation);
		%feature("autodoc","Matches(Standard_Real X, Standard_Real Y, Standard_Real aTol) -> Standard_Real");

		virtual		Standard_Boolean Matches(const Standard_Real X, const Standard_Real Y, const Standard_Real aTol, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Matches(const Standard_Real XMin, const Standard_Real YMin, const Standard_Real XMax, const Standard_Real YMax, const Standard_Real aTol);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Matches(const TColgp_Array1OfPnt2d &Polyline, const Bnd_Box2d &aBox, const Standard_Real aTol);
		%feature("autodoc", "1");
		virtual		Standard_Real ComputeDepth(const gp_Lin EyeLine) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer MaxBoxes() const;
		%feature("autodoc", "1");
		virtual		void Dump(Standard_OStream & S, const Standard_Boolean FullDump=1) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Select3D_SensitiveSegment {
	Handle_Select3D_SensitiveSegment GetHandle() {
	return *(Handle_Select3D_SensitiveSegment*) &$self;
	}
};
%extend Select3D_SensitiveSegment {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Select3D_SensitiveSegment::~Select3D_SensitiveSegment %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Select3D_SensitiveSegment {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Select3D_SequenceNodeOfSensitiveEntitySequence;
class Select3D_SequenceNodeOfSensitiveEntitySequence : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Select3D_SequenceNodeOfSensitiveEntitySequence(const Handle_Select3D_SensitiveEntity &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveEntity & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Select3D_SequenceNodeOfSensitiveEntitySequence {
	Handle_Select3D_SequenceNodeOfSensitiveEntitySequence GetHandle() {
	return *(Handle_Select3D_SequenceNodeOfSensitiveEntitySequence*) &$self;
	}
};
%extend Select3D_SequenceNodeOfSensitiveEntitySequence {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Select3D_SequenceNodeOfSensitiveEntitySequence::~Select3D_SequenceNodeOfSensitiveEntitySequence %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Select3D_SequenceNodeOfSensitiveEntitySequence {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Select3D_SensitiveCircle;
class Select3D_SensitiveCircle : public Select3D_SensitivePoly {
	public:
		%feature("autodoc", "1");
		Select3D_SensitiveCircle(const Handle_SelectBasics_EntityOwner &OwnerId, const Handle_Geom_Circle &TheCircle, const Standard_Boolean FilledCircle=0, const Standard_Integer NbOfPoints=6);
		%feature("autodoc", "1");
		Select3D_SensitiveCircle(const Handle_SelectBasics_EntityOwner &OwnerId, const Handle_Geom_Circle &TheCircle, const Standard_Real u1, const Standard_Real u2, const Standard_Boolean FilledCircle=0, const Standard_Integer NbOfPoints=6);
		%feature("autodoc", "1");
		Select3D_SensitiveCircle(const Handle_SelectBasics_EntityOwner &OwnerId, const Handle_TColgp_HArray1OfPnt &apolyg3d, const Standard_Boolean FilledCircle=0);
		%feature("autodoc", "1");
		Select3D_SensitiveCircle(const Handle_SelectBasics_EntityOwner &OwnerId, const TColgp_Array1OfPnt &apolyg3d, const Standard_Boolean FilledCircle=0);
		%feature("autodoc","Matches(Standard_Real X, Standard_Real Y, Standard_Real aTol) -> Standard_Real");

		virtual		Standard_Boolean Matches(const Standard_Real X, const Standard_Real Y, const Standard_Real aTol, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Matches(const Standard_Real XMin, const Standard_Real YMin, const Standard_Real XMax, const Standard_Real YMax, const Standard_Real aTol);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Matches(const TColgp_Array1OfPnt2d &Polyline, const Bnd_Box2d &aBox, const Standard_Real aTol);
		%feature("autodoc", "1");
		virtual		Standard_Real ComputeDepth(const gp_Lin EyeLine) const;
		%feature("autodoc","ArrayBounds() -> [Standard_Integer, Standard_Integer]");

		void ArrayBounds(Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		gp_Pnt GetPoint3d(const Standard_Integer rank) const;
		%feature("autodoc", "1");
		virtual		void Dump(Standard_OStream & S, const Standard_Boolean FullDump=1) const;
		%feature("autodoc", "1");
		virtual		Handle_Select3D_SensitiveEntity GetConnected(const TopLoc_Location &theLocation);
		%feature("autodoc", "1");
		virtual		void Project(const Handle_Select3D_Projector &aProjector);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Select3D_SensitiveCircle {
	Handle_Select3D_SensitiveCircle GetHandle() {
	return *(Handle_Select3D_SensitiveCircle*) &$self;
	}
};
%extend Select3D_SensitiveCircle {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Select3D_SensitiveCircle::~Select3D_SensitiveCircle %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Select3D_SensitiveCircle {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Select3D_ListNodeOfListOfSensitiveTriangle;
class Select3D_ListNodeOfListOfSensitiveTriangle : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Select3D_ListNodeOfListOfSensitiveTriangle(const Handle_Select3D_SensitiveTriangle &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveTriangle & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Select3D_ListNodeOfListOfSensitiveTriangle {
	Handle_Select3D_ListNodeOfListOfSensitiveTriangle GetHandle() {
	return *(Handle_Select3D_ListNodeOfListOfSensitiveTriangle*) &$self;
	}
};
%extend Select3D_ListNodeOfListOfSensitiveTriangle {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Select3D_ListNodeOfListOfSensitiveTriangle::~Select3D_ListNodeOfListOfSensitiveTriangle %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Select3D_ListNodeOfListOfSensitiveTriangle {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Select3D_SensitiveEntitySequence;
class Select3D_SensitiveEntitySequence : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		Select3D_SensitiveEntitySequence();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const Select3D_SensitiveEntitySequence & Assign(const Select3D_SensitiveEntitySequence &Other);
		%feature("autodoc", "1");
		const Select3D_SensitiveEntitySequence & operator=(const Select3D_SensitiveEntitySequence &Other);
		%feature("autodoc", "1");
		void Append(const Handle_Select3D_SensitiveEntity &T);
		%feature("autodoc", "1");
		void Append(Select3D_SensitiveEntitySequence & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_Select3D_SensitiveEntity &T);
		%feature("autodoc", "1");
		void Prepend(Select3D_SensitiveEntitySequence & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_Select3D_SensitiveEntity &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, Select3D_SensitiveEntitySequence & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_Select3D_SensitiveEntity &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, Select3D_SensitiveEntitySequence & S);
		%feature("autodoc", "1");
		const Handle_Select3D_SensitiveEntity & First() const;
		%feature("autodoc", "1");
		const Handle_Select3D_SensitiveEntity & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, Select3D_SensitiveEntitySequence & S);
		%feature("autodoc", "1");
		const Handle_Select3D_SensitiveEntity & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_Select3D_SensitiveEntity & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_Select3D_SensitiveEntity &I);
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveEntity & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveEntity & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") Select3D_SensitiveEntitySequence::~Select3D_SensitiveEntitySequence %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Select3D_SensitiveEntitySequence {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Select3D_SensitiveWire;
class Select3D_SensitiveWire : public Select3D_SensitiveEntity {
	public:
		%feature("autodoc", "1");
		Select3D_SensitiveWire(const Handle_SelectBasics_EntityOwner &OwnerId, const Standard_Integer MaxRect=1);
		%feature("autodoc", "1");
		void Add(const Handle_Select3D_SensitiveEntity &aSensitive);
		%feature("autodoc", "1");
		virtual		void Project(const Handle_Select3D_Projector &aProjector);
		%feature("autodoc", "1");
		virtual		void Areas(SelectBasics_ListOfBox2d & boxes);
		%feature("autodoc", "1");
		virtual		Handle_Select3D_SensitiveEntity GetConnected(const TopLoc_Location &aLocation);
		%feature("autodoc", "1");
		void GetEdges(Select3D_SensitiveEntitySequence & theEdges);
		%feature("autodoc", "1");
		virtual		void SetLocation(const TopLoc_Location &aLoc);
		%feature("autodoc", "1");
		virtual		void ResetLocation();
		%feature("autodoc","Matches(Standard_Real X, Standard_Real Y, Standard_Real aTol) -> Standard_Real");

		virtual		Standard_Boolean Matches(const Standard_Real X, const Standard_Real Y, const Standard_Real aTol, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Matches(const Standard_Real XMin, const Standard_Real YMin, const Standard_Real XMax, const Standard_Real YMax, const Standard_Real aTol);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Matches(const TColgp_Array1OfPnt2d &Polyline, const Bnd_Box2d &aBox, const Standard_Real aTol);
		%feature("autodoc", "1");
		virtual		Standard_Real ComputeDepth(const gp_Lin EyeLine) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer MaxBoxes() const;
		%feature("autodoc", "1");
		virtual		void Dump(Standard_OStream & S, const Standard_Boolean FullDump=1) const;
		%feature("autodoc", "1");
		virtual		void Set(const Handle_SelectBasics_EntityOwner &TheOwnerId);
		%feature("autodoc", "1");
		virtual		void SetLastPrj(const Handle_Select3D_Projector &aPrj);
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveEntity GetLastDetected() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Select3D_SensitiveWire {
	Handle_Select3D_SensitiveWire GetHandle() {
	return *(Handle_Select3D_SensitiveWire*) &$self;
	}
};
%extend Select3D_SensitiveWire {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Select3D_SensitiveWire::~Select3D_SensitiveWire %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Select3D_SensitiveWire {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Select3D_ListOfSensitiveTriangle;
class Select3D_ListOfSensitiveTriangle {
	public:
		%feature("autodoc", "1");
		Select3D_ListOfSensitiveTriangle();
		%feature("autodoc", "1");
		void Assign(const Select3D_ListOfSensitiveTriangle &Other);
		%feature("autodoc", "1");
		void operator=(const Select3D_ListOfSensitiveTriangle &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const Handle_Select3D_SensitiveTriangle &I);
		%feature("autodoc", "1");
		void Prepend(const Handle_Select3D_SensitiveTriangle &I, Select3D_ListIteratorOfListOfSensitiveTriangle & theIt);
		%feature("autodoc", "1");
		void Prepend(Select3D_ListOfSensitiveTriangle & Other);
		%feature("autodoc", "1");
		void Append(const Handle_Select3D_SensitiveTriangle &I);
		%feature("autodoc", "1");
		void Append(const Handle_Select3D_SensitiveTriangle &I, Select3D_ListIteratorOfListOfSensitiveTriangle & theIt);
		%feature("autodoc", "1");
		void Append(Select3D_ListOfSensitiveTriangle & Other);
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveTriangle & First() const;
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveTriangle & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(Select3D_ListIteratorOfListOfSensitiveTriangle & It);
		%feature("autodoc", "1");
		void InsertBefore(const Handle_Select3D_SensitiveTriangle &I, Select3D_ListIteratorOfListOfSensitiveTriangle & It);
		%feature("autodoc", "1");
		void InsertBefore(Select3D_ListOfSensitiveTriangle & Other, Select3D_ListIteratorOfListOfSensitiveTriangle & It);
		%feature("autodoc", "1");
		void InsertAfter(const Handle_Select3D_SensitiveTriangle &I, Select3D_ListIteratorOfListOfSensitiveTriangle & It);
		%feature("autodoc", "1");
		void InsertAfter(Select3D_ListOfSensitiveTriangle & Other, Select3D_ListIteratorOfListOfSensitiveTriangle & It);

};
%feature("shadow") Select3D_ListOfSensitiveTriangle::~Select3D_ListOfSensitiveTriangle %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Select3D_ListOfSensitiveTriangle {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Select3D_SensitiveCurve;
class Select3D_SensitiveCurve : public Select3D_SensitivePoly {
	public:
		%feature("autodoc", "1");
		Select3D_SensitiveCurve(const Handle_SelectBasics_EntityOwner &OwnerId, const Handle_Geom_Curve &TheCurve, const Standard_Integer MaxPoints=17);
		%feature("autodoc", "1");
		Select3D_SensitiveCurve(const Handle_SelectBasics_EntityOwner &OwnerId, const Handle_TColgp_HArray1OfPnt &ThePoints);
		%feature("autodoc", "1");
		Select3D_SensitiveCurve(const Handle_SelectBasics_EntityOwner &OwnerId, const TColgp_Array1OfPnt &ThePoints);
		%feature("autodoc","Matches(Standard_Real X, Standard_Real Y, Standard_Real aTol) -> Standard_Real");

		virtual		Standard_Boolean Matches(const Standard_Real X, const Standard_Real Y, const Standard_Real aTol, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Matches(const Standard_Real XMin, const Standard_Real YMin, const Standard_Real XMax, const Standard_Real YMax, const Standard_Real aTol);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Matches(const TColgp_Array1OfPnt2d &Polyline, const Bnd_Box2d &aBox, const Standard_Real aTol);
		%feature("autodoc", "1");
		virtual		Standard_Real ComputeDepth(const gp_Lin EyeLine) const;
		%feature("autodoc", "1");
		Standard_Integer GetLastDetected() const;
		%feature("autodoc", "1");
		virtual		void Dump(Standard_OStream & S, const Standard_Boolean FullDump=1) const;
		%feature("autodoc", "1");
		virtual		Handle_Select3D_SensitiveEntity GetConnected(const TopLoc_Location &theLocation);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Select3D_SensitiveCurve {
	Handle_Select3D_SensitiveCurve GetHandle() {
	return *(Handle_Select3D_SensitiveCurve*) &$self;
	}
};
%extend Select3D_SensitiveCurve {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Select3D_SensitiveCurve::~Select3D_SensitiveCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Select3D_SensitiveCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Select3D_SensitivePoint;
class Select3D_SensitivePoint : public Select3D_SensitiveEntity {
	public:
		%feature("autodoc", "1");
		Select3D_SensitivePoint(const Handle_SelectBasics_EntityOwner &OwnerId, const gp_Pnt Point);
		%feature("autodoc", "1");
		virtual		void Project(const Handle_Select3D_Projector &aProjector);
		%feature("autodoc", "1");
		virtual		void Areas(SelectBasics_ListOfBox2d & aresult);
		%feature("autodoc", "1");
		virtual		Handle_Select3D_SensitiveEntity GetConnected(const TopLoc_Location &aLocation);
		%feature("autodoc","Matches(Standard_Real X, Standard_Real Y, Standard_Real aTol) -> Standard_Real");

		virtual		Standard_Boolean Matches(const Standard_Real X, const Standard_Real Y, const Standard_Real aTol, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Matches(const Standard_Real XMin, const Standard_Real YMin, const Standard_Real XMax, const Standard_Real YMax, const Standard_Real aTol);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Matches(const TColgp_Array1OfPnt2d &Polyline, const Bnd_Box2d &aBox, const Standard_Real aTol);
		%feature("autodoc", "1");
		virtual		Standard_Real ComputeDepth(const gp_Lin EyeLine) const;
		%feature("autodoc", "1");
		gp_Pnt Point() const;
		%feature("autodoc", "1");
		virtual		void Dump(Standard_OStream & S, const Standard_Boolean FullDump=1) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Select3D_SensitivePoint {
	Handle_Select3D_SensitivePoint GetHandle() {
	return *(Handle_Select3D_SensitivePoint*) &$self;
	}
};
%extend Select3D_SensitivePoint {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Select3D_SensitivePoint::~Select3D_SensitivePoint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Select3D_SensitivePoint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Select3D_PointData;
class Select3D_PointData {
	public:
		%feature("autodoc", "1");
		Select3D_PointData(const Standard_Integer theNbPoints);
		%feature("autodoc", "1");
		void SetPnt(const Standard_Integer theIndex, const Select3D_Pnt &theValue);
		%feature("autodoc", "1");
		void SetPnt(const Standard_Integer theIndex, const gp_Pnt theValue);
		%feature("autodoc", "1");
		void SetPnt2d(const Standard_Integer theIndex, const Select3D_Pnt2d &theValue);
		%feature("autodoc", "1");
		void SetPnt2d(const Standard_Integer theIndex, const gp_Pnt2d theValue);
		%feature("autodoc", "1");
		Select3D_Pnt Pnt(const Standard_Integer theIndex) const;
		%feature("autodoc", "1");
		Select3D_Pnt2d Pnt2d(const Standard_Integer theIndex) const;
		%feature("autodoc", "1");
		Standard_Integer const Size() const;

};
%feature("shadow") Select3D_PointData::~Select3D_PointData %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Select3D_PointData {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Select3D_SensitiveGroup;
class Select3D_SensitiveGroup : public Select3D_SensitiveEntity {
	public:
		%feature("autodoc", "1");
		Select3D_SensitiveGroup(const Handle_SelectBasics_EntityOwner &OwnerId, const Standard_Boolean MatchAll=1);
		%feature("autodoc", "1");
		Select3D_SensitiveGroup(const Handle_SelectBasics_EntityOwner &OwnerId, Select3D_ListOfSensitive & TheList, const Standard_Boolean MatchAll=1);
		%feature("autodoc", "1");
		void Add(Select3D_ListOfSensitive & LL);
		%feature("autodoc", "1");
		void Add(const Handle_Select3D_SensitiveEntity &aSensitive);
		%feature("autodoc", "1");
		void Remove(const Handle_Select3D_SensitiveEntity &aSensitive);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsIn(const Handle_Select3D_SensitiveEntity &aSensitive) const;
		%feature("autodoc", "1");
		void Set(const Standard_Boolean MustMatchAllEntities);
		%feature("autodoc", "1");
		Standard_Boolean MustMatchAll() const;
		%feature("autodoc", "1");
		virtual		void Project(const Handle_Select3D_Projector &aProjector);
		%feature("autodoc", "1");
		virtual		void Areas(SelectBasics_ListOfBox2d & boxes);
		%feature("autodoc", "1");
		virtual		Standard_Integer MaxBoxes() const;
		%feature("autodoc", "1");
		virtual		Handle_Select3D_SensitiveEntity GetConnected(const TopLoc_Location &aLocation);
		%feature("autodoc", "1");
		virtual		void SetLocation(const TopLoc_Location &aLoc);
		%feature("autodoc", "1");
		virtual		void ResetLocation();
		%feature("autodoc","Matches(Standard_Real X, Standard_Real Y, Standard_Real aTol) -> Standard_Real");

		virtual		Standard_Boolean Matches(const Standard_Real X, const Standard_Real Y, const Standard_Real aTol, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Matches(const Standard_Real XMin, const Standard_Real YMin, const Standard_Real XMax, const Standard_Real YMax, const Standard_Real aTol);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Matches(const TColgp_Array1OfPnt2d &Polyline, const Bnd_Box2d &aBox, const Standard_Real aTol);
		%feature("autodoc", "1");
		virtual		Standard_Real ComputeDepth(const gp_Lin EyeLine) const;
		%feature("autodoc", "1");
		virtual		void SetLastPrj(const Handle_Select3D_Projector &aPrj);
		%feature("autodoc", "1");
		virtual		void Set(const Handle_SelectBasics_EntityOwner &TheOwnerId);
		%feature("autodoc", "1");
		const Select3D_ListOfSensitive & GetEntities() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Select3D_SensitiveGroup {
	Handle_Select3D_SensitiveGroup GetHandle() {
	return *(Handle_Select3D_SensitiveGroup*) &$self;
	}
};
%extend Select3D_SensitiveGroup {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Select3D_SensitiveGroup::~Select3D_SensitiveGroup %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Select3D_SensitiveGroup {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Select3D_ListNodeOfListOfSensitive;
class Select3D_ListNodeOfListOfSensitive : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Select3D_ListNodeOfListOfSensitive(const Handle_Select3D_SensitiveEntity &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveEntity & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Select3D_ListNodeOfListOfSensitive {
	Handle_Select3D_ListNodeOfListOfSensitive GetHandle() {
	return *(Handle_Select3D_ListNodeOfListOfSensitive*) &$self;
	}
};
%extend Select3D_ListNodeOfListOfSensitive {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Select3D_ListNodeOfListOfSensitive::~Select3D_ListNodeOfListOfSensitive %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Select3D_ListNodeOfListOfSensitive {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Select3D_Box2d;
class Select3D_Box2d {
	public:
		%feature("autodoc", "1");
		Select3D_Box2d();
		%feature("autodoc", "1");
		Select3D_Box2d(const Bnd_Box2d &theBox);
		%feature("autodoc", "1");
		Select3D_Box2d operator=(const Bnd_Box2d &theBox);
		%feature("autodoc", "1");
		void Update(const gp_Pnt2d thePnt);
		%feature("autodoc", "1");
		void SetVoid();
		%feature("autodoc", "1");
		Standard_Boolean IsVoid() const;

};
%feature("shadow") Select3D_Box2d::~Select3D_Box2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Select3D_Box2d {
	void _kill_pointed() {
		delete $self;
	}
};
