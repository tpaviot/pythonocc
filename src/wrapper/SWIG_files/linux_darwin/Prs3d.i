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

%module Prs3d
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include Prs3d_renames.i


%include Prs3d_required_python_modules.i


%include Prs3d_dependencies.i


%include Prs3d_headers.i

typedef NCollection_BaseCollection<TColgp_SequenceOfPnt> Prs3d_BaseCollListOfSequenceOfPnt;
typedef NCollection_List<TColgp_SequenceOfPnt> Prs3d_NListOfSequenceOfPnt;
typedef NCollection_TListIterator<TColgp_SequenceOfPnt> Prs3d_NListIteratorOfListOfSequenceOfPnt;

enum Prs3d_TypeOfLinePicking {
	Prs3d_TOLP_Point,
	Prs3d_TOLP_Segment,
	};



%nodefaultctor Handle_Prs3d_Drawer;
class Handle_Prs3d_Drawer : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Prs3d_Drawer();
		%feature("autodoc", "1");
		Handle_Prs3d_Drawer(const Handle_Prs3d_Drawer &aHandle);
		%feature("autodoc", "1");
		Handle_Prs3d_Drawer(const Prs3d_Drawer *anItem);
		%feature("autodoc", "1");
		Handle_Prs3d_Drawer & operator=(const Handle_Prs3d_Drawer &aHandle);
		%feature("autodoc", "1");
		Handle_Prs3d_Drawer & operator=(const Prs3d_Drawer *anItem);
		%feature("autodoc", "1");
		static		Handle_Prs3d_Drawer DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Prs3d_Drawer {
	Prs3d_Drawer* GetObject() {
	return (Prs3d_Drawer*)$self->Access();
	}
};
%feature("shadow") Handle_Prs3d_Drawer::~Handle_Prs3d_Drawer %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Prs3d_Drawer {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Prs3d_BasicAspect;
class Handle_Prs3d_BasicAspect : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Prs3d_BasicAspect();
		%feature("autodoc", "1");
		Handle_Prs3d_BasicAspect(const Handle_Prs3d_BasicAspect &aHandle);
		%feature("autodoc", "1");
		Handle_Prs3d_BasicAspect(const Prs3d_BasicAspect *anItem);
		%feature("autodoc", "1");
		Handle_Prs3d_BasicAspect & operator=(const Handle_Prs3d_BasicAspect &aHandle);
		%feature("autodoc", "1");
		Handle_Prs3d_BasicAspect & operator=(const Prs3d_BasicAspect *anItem);
		%feature("autodoc", "1");
		static		Handle_Prs3d_BasicAspect DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Prs3d_BasicAspect {
	Prs3d_BasicAspect* GetObject() {
	return (Prs3d_BasicAspect*)$self->Access();
	}
};
%feature("shadow") Handle_Prs3d_BasicAspect::~Handle_Prs3d_BasicAspect %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Prs3d_BasicAspect {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Prs3d_PlaneSet;
class Handle_Prs3d_PlaneSet : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Prs3d_PlaneSet();
		%feature("autodoc", "1");
		Handle_Prs3d_PlaneSet(const Handle_Prs3d_PlaneSet &aHandle);
		%feature("autodoc", "1");
		Handle_Prs3d_PlaneSet(const Prs3d_PlaneSet *anItem);
		%feature("autodoc", "1");
		Handle_Prs3d_PlaneSet & operator=(const Handle_Prs3d_PlaneSet &aHandle);
		%feature("autodoc", "1");
		Handle_Prs3d_PlaneSet & operator=(const Prs3d_PlaneSet *anItem);
		%feature("autodoc", "1");
		static		Handle_Prs3d_PlaneSet DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Prs3d_PlaneSet {
	Prs3d_PlaneSet* GetObject() {
	return (Prs3d_PlaneSet*)$self->Access();
	}
};
%feature("shadow") Handle_Prs3d_PlaneSet::~Handle_Prs3d_PlaneSet %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Prs3d_PlaneSet {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Prs3d_CompositeAspect;
class Handle_Prs3d_CompositeAspect : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Prs3d_CompositeAspect();
		%feature("autodoc", "1");
		Handle_Prs3d_CompositeAspect(const Handle_Prs3d_CompositeAspect &aHandle);
		%feature("autodoc", "1");
		Handle_Prs3d_CompositeAspect(const Prs3d_CompositeAspect *anItem);
		%feature("autodoc", "1");
		Handle_Prs3d_CompositeAspect & operator=(const Handle_Prs3d_CompositeAspect &aHandle);
		%feature("autodoc", "1");
		Handle_Prs3d_CompositeAspect & operator=(const Prs3d_CompositeAspect *anItem);
		%feature("autodoc", "1");
		static		Handle_Prs3d_CompositeAspect DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Prs3d_CompositeAspect {
	Prs3d_CompositeAspect* GetObject() {
	return (Prs3d_CompositeAspect*)$self->Access();
	}
};
%feature("shadow") Handle_Prs3d_CompositeAspect::~Handle_Prs3d_CompositeAspect %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Prs3d_CompositeAspect {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Prs3d_LengthAspect;
class Handle_Prs3d_LengthAspect : public Handle_Prs3d_CompositeAspect {
	public:
		%feature("autodoc", "1");
		Handle_Prs3d_LengthAspect();
		%feature("autodoc", "1");
		Handle_Prs3d_LengthAspect(const Handle_Prs3d_LengthAspect &aHandle);
		%feature("autodoc", "1");
		Handle_Prs3d_LengthAspect(const Prs3d_LengthAspect *anItem);
		%feature("autodoc", "1");
		Handle_Prs3d_LengthAspect & operator=(const Handle_Prs3d_LengthAspect &aHandle);
		%feature("autodoc", "1");
		Handle_Prs3d_LengthAspect & operator=(const Prs3d_LengthAspect *anItem);
		%feature("autodoc", "1");
		static		Handle_Prs3d_LengthAspect DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Prs3d_LengthAspect {
	Prs3d_LengthAspect* GetObject() {
	return (Prs3d_LengthAspect*)$self->Access();
	}
};
%feature("shadow") Handle_Prs3d_LengthAspect::~Handle_Prs3d_LengthAspect %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Prs3d_LengthAspect {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Prs3d_LineAspect;
class Handle_Prs3d_LineAspect : public Handle_Prs3d_BasicAspect {
	public:
		%feature("autodoc", "1");
		Handle_Prs3d_LineAspect();
		%feature("autodoc", "1");
		Handle_Prs3d_LineAspect(const Handle_Prs3d_LineAspect &aHandle);
		%feature("autodoc", "1");
		Handle_Prs3d_LineAspect(const Prs3d_LineAspect *anItem);
		%feature("autodoc", "1");
		Handle_Prs3d_LineAspect & operator=(const Handle_Prs3d_LineAspect &aHandle);
		%feature("autodoc", "1");
		Handle_Prs3d_LineAspect & operator=(const Prs3d_LineAspect *anItem);
		%feature("autodoc", "1");
		static		Handle_Prs3d_LineAspect DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Prs3d_LineAspect {
	Prs3d_LineAspect* GetObject() {
	return (Prs3d_LineAspect*)$self->Access();
	}
};
%feature("shadow") Handle_Prs3d_LineAspect::~Handle_Prs3d_LineAspect %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Prs3d_LineAspect {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Prs3d_IsoAspect;
class Handle_Prs3d_IsoAspect : public Handle_Prs3d_LineAspect {
	public:
		%feature("autodoc", "1");
		Handle_Prs3d_IsoAspect();
		%feature("autodoc", "1");
		Handle_Prs3d_IsoAspect(const Handle_Prs3d_IsoAspect &aHandle);
		%feature("autodoc", "1");
		Handle_Prs3d_IsoAspect(const Prs3d_IsoAspect *anItem);
		%feature("autodoc", "1");
		Handle_Prs3d_IsoAspect & operator=(const Handle_Prs3d_IsoAspect &aHandle);
		%feature("autodoc", "1");
		Handle_Prs3d_IsoAspect & operator=(const Prs3d_IsoAspect *anItem);
		%feature("autodoc", "1");
		static		Handle_Prs3d_IsoAspect DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Prs3d_IsoAspect {
	Prs3d_IsoAspect* GetObject() {
	return (Prs3d_IsoAspect*)$self->Access();
	}
};
%feature("shadow") Handle_Prs3d_IsoAspect::~Handle_Prs3d_IsoAspect %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Prs3d_IsoAspect {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Prs3d_ShadingAspect;
class Handle_Prs3d_ShadingAspect : public Handle_Prs3d_BasicAspect {
	public:
		%feature("autodoc", "1");
		Handle_Prs3d_ShadingAspect();
		%feature("autodoc", "1");
		Handle_Prs3d_ShadingAspect(const Handle_Prs3d_ShadingAspect &aHandle);
		%feature("autodoc", "1");
		Handle_Prs3d_ShadingAspect(const Prs3d_ShadingAspect *anItem);
		%feature("autodoc", "1");
		Handle_Prs3d_ShadingAspect & operator=(const Handle_Prs3d_ShadingAspect &aHandle);
		%feature("autodoc", "1");
		Handle_Prs3d_ShadingAspect & operator=(const Prs3d_ShadingAspect *anItem);
		%feature("autodoc", "1");
		static		Handle_Prs3d_ShadingAspect DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Prs3d_ShadingAspect {
	Prs3d_ShadingAspect* GetObject() {
	return (Prs3d_ShadingAspect*)$self->Access();
	}
};
%feature("shadow") Handle_Prs3d_ShadingAspect::~Handle_Prs3d_ShadingAspect %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Prs3d_ShadingAspect {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Prs3d_PointAspect;
class Handle_Prs3d_PointAspect : public Handle_Prs3d_BasicAspect {
	public:
		%feature("autodoc", "1");
		Handle_Prs3d_PointAspect();
		%feature("autodoc", "1");
		Handle_Prs3d_PointAspect(const Handle_Prs3d_PointAspect &aHandle);
		%feature("autodoc", "1");
		Handle_Prs3d_PointAspect(const Prs3d_PointAspect *anItem);
		%feature("autodoc", "1");
		Handle_Prs3d_PointAspect & operator=(const Handle_Prs3d_PointAspect &aHandle);
		%feature("autodoc", "1");
		Handle_Prs3d_PointAspect & operator=(const Prs3d_PointAspect *anItem);
		%feature("autodoc", "1");
		static		Handle_Prs3d_PointAspect DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Prs3d_PointAspect {
	Prs3d_PointAspect* GetObject() {
	return (Prs3d_PointAspect*)$self->Access();
	}
};
%feature("shadow") Handle_Prs3d_PointAspect::~Handle_Prs3d_PointAspect %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Prs3d_PointAspect {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Prs3d_ArrowAspect;
class Handle_Prs3d_ArrowAspect : public Handle_Prs3d_CompositeAspect {
	public:
		%feature("autodoc", "1");
		Handle_Prs3d_ArrowAspect();
		%feature("autodoc", "1");
		Handle_Prs3d_ArrowAspect(const Handle_Prs3d_ArrowAspect &aHandle);
		%feature("autodoc", "1");
		Handle_Prs3d_ArrowAspect(const Prs3d_ArrowAspect *anItem);
		%feature("autodoc", "1");
		Handle_Prs3d_ArrowAspect & operator=(const Handle_Prs3d_ArrowAspect &aHandle);
		%feature("autodoc", "1");
		Handle_Prs3d_ArrowAspect & operator=(const Prs3d_ArrowAspect *anItem);
		%feature("autodoc", "1");
		static		Handle_Prs3d_ArrowAspect DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Prs3d_ArrowAspect {
	Prs3d_ArrowAspect* GetObject() {
	return (Prs3d_ArrowAspect*)$self->Access();
	}
};
%feature("shadow") Handle_Prs3d_ArrowAspect::~Handle_Prs3d_ArrowAspect %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Prs3d_ArrowAspect {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Prs3d_Projector;
class Handle_Prs3d_Projector : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Prs3d_Projector();
		%feature("autodoc", "1");
		Handle_Prs3d_Projector(const Handle_Prs3d_Projector &aHandle);
		%feature("autodoc", "1");
		Handle_Prs3d_Projector(const Prs3d_Projector *anItem);
		%feature("autodoc", "1");
		Handle_Prs3d_Projector & operator=(const Handle_Prs3d_Projector &aHandle);
		%feature("autodoc", "1");
		Handle_Prs3d_Projector & operator=(const Prs3d_Projector *anItem);
		%feature("autodoc", "1");
		static		Handle_Prs3d_Projector DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Prs3d_Projector {
	Prs3d_Projector* GetObject() {
	return (Prs3d_Projector*)$self->Access();
	}
};
%feature("shadow") Handle_Prs3d_Projector::~Handle_Prs3d_Projector %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Prs3d_Projector {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Prs3d_RadiusAspect;
class Handle_Prs3d_RadiusAspect : public Handle_Prs3d_CompositeAspect {
	public:
		%feature("autodoc", "1");
		Handle_Prs3d_RadiusAspect();
		%feature("autodoc", "1");
		Handle_Prs3d_RadiusAspect(const Handle_Prs3d_RadiusAspect &aHandle);
		%feature("autodoc", "1");
		Handle_Prs3d_RadiusAspect(const Prs3d_RadiusAspect *anItem);
		%feature("autodoc", "1");
		Handle_Prs3d_RadiusAspect & operator=(const Handle_Prs3d_RadiusAspect &aHandle);
		%feature("autodoc", "1");
		Handle_Prs3d_RadiusAspect & operator=(const Prs3d_RadiusAspect *anItem);
		%feature("autodoc", "1");
		static		Handle_Prs3d_RadiusAspect DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Prs3d_RadiusAspect {
	Prs3d_RadiusAspect* GetObject() {
	return (Prs3d_RadiusAspect*)$self->Access();
	}
};
%feature("shadow") Handle_Prs3d_RadiusAspect::~Handle_Prs3d_RadiusAspect %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Prs3d_RadiusAspect {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Prs3d_InvalidAngle;
class Handle_Prs3d_InvalidAngle : public Handle_Standard_RangeError {
	public:
		%feature("autodoc", "1");
		Handle_Prs3d_InvalidAngle();
		%feature("autodoc", "1");
		Handle_Prs3d_InvalidAngle(const Handle_Prs3d_InvalidAngle &aHandle);
		%feature("autodoc", "1");
		Handle_Prs3d_InvalidAngle(const Prs3d_InvalidAngle *anItem);
		%feature("autodoc", "1");
		Handle_Prs3d_InvalidAngle & operator=(const Handle_Prs3d_InvalidAngle &aHandle);
		%feature("autodoc", "1");
		Handle_Prs3d_InvalidAngle & operator=(const Prs3d_InvalidAngle *anItem);
		%feature("autodoc", "1");
		static		Handle_Prs3d_InvalidAngle DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Prs3d_InvalidAngle {
	Prs3d_InvalidAngle* GetObject() {
	return (Prs3d_InvalidAngle*)$self->Access();
	}
};
%feature("shadow") Handle_Prs3d_InvalidAngle::~Handle_Prs3d_InvalidAngle %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Prs3d_InvalidAngle {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Prs3d_DatumAspect;
class Handle_Prs3d_DatumAspect : public Handle_Prs3d_CompositeAspect {
	public:
		%feature("autodoc", "1");
		Handle_Prs3d_DatumAspect();
		%feature("autodoc", "1");
		Handle_Prs3d_DatumAspect(const Handle_Prs3d_DatumAspect &aHandle);
		%feature("autodoc", "1");
		Handle_Prs3d_DatumAspect(const Prs3d_DatumAspect *anItem);
		%feature("autodoc", "1");
		Handle_Prs3d_DatumAspect & operator=(const Handle_Prs3d_DatumAspect &aHandle);
		%feature("autodoc", "1");
		Handle_Prs3d_DatumAspect & operator=(const Prs3d_DatumAspect *anItem);
		%feature("autodoc", "1");
		static		Handle_Prs3d_DatumAspect DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Prs3d_DatumAspect {
	Prs3d_DatumAspect* GetObject() {
	return (Prs3d_DatumAspect*)$self->Access();
	}
};
%feature("shadow") Handle_Prs3d_DatumAspect::~Handle_Prs3d_DatumAspect %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Prs3d_DatumAspect {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Prs3d_PlaneAspect;
class Handle_Prs3d_PlaneAspect : public Handle_Prs3d_CompositeAspect {
	public:
		%feature("autodoc", "1");
		Handle_Prs3d_PlaneAspect();
		%feature("autodoc", "1");
		Handle_Prs3d_PlaneAspect(const Handle_Prs3d_PlaneAspect &aHandle);
		%feature("autodoc", "1");
		Handle_Prs3d_PlaneAspect(const Prs3d_PlaneAspect *anItem);
		%feature("autodoc", "1");
		Handle_Prs3d_PlaneAspect & operator=(const Handle_Prs3d_PlaneAspect &aHandle);
		%feature("autodoc", "1");
		Handle_Prs3d_PlaneAspect & operator=(const Prs3d_PlaneAspect *anItem);
		%feature("autodoc", "1");
		static		Handle_Prs3d_PlaneAspect DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Prs3d_PlaneAspect {
	Prs3d_PlaneAspect* GetObject() {
	return (Prs3d_PlaneAspect*)$self->Access();
	}
};
%feature("shadow") Handle_Prs3d_PlaneAspect::~Handle_Prs3d_PlaneAspect %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Prs3d_PlaneAspect {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Prs3d_AngleAspect;
class Handle_Prs3d_AngleAspect : public Handle_Prs3d_CompositeAspect {
	public:
		%feature("autodoc", "1");
		Handle_Prs3d_AngleAspect();
		%feature("autodoc", "1");
		Handle_Prs3d_AngleAspect(const Handle_Prs3d_AngleAspect &aHandle);
		%feature("autodoc", "1");
		Handle_Prs3d_AngleAspect(const Prs3d_AngleAspect *anItem);
		%feature("autodoc", "1");
		Handle_Prs3d_AngleAspect & operator=(const Handle_Prs3d_AngleAspect &aHandle);
		%feature("autodoc", "1");
		Handle_Prs3d_AngleAspect & operator=(const Prs3d_AngleAspect *anItem);
		%feature("autodoc", "1");
		static		Handle_Prs3d_AngleAspect DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Prs3d_AngleAspect {
	Prs3d_AngleAspect* GetObject() {
	return (Prs3d_AngleAspect*)$self->Access();
	}
};
%feature("shadow") Handle_Prs3d_AngleAspect::~Handle_Prs3d_AngleAspect %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Prs3d_AngleAspect {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Prs3d_Presentation;
class Handle_Prs3d_Presentation : public Handle_Graphic3d_Structure {
	public:
		%feature("autodoc", "1");
		Handle_Prs3d_Presentation();
		%feature("autodoc", "1");
		Handle_Prs3d_Presentation(const Handle_Prs3d_Presentation &aHandle);
		%feature("autodoc", "1");
		Handle_Prs3d_Presentation(const Prs3d_Presentation *anItem);
		%feature("autodoc", "1");
		Handle_Prs3d_Presentation & operator=(const Handle_Prs3d_Presentation &aHandle);
		%feature("autodoc", "1");
		Handle_Prs3d_Presentation & operator=(const Prs3d_Presentation *anItem);
		%feature("autodoc", "1");
		static		Handle_Prs3d_Presentation DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Prs3d_Presentation {
	Prs3d_Presentation* GetObject() {
	return (Prs3d_Presentation*)$self->Access();
	}
};
%feature("shadow") Handle_Prs3d_Presentation::~Handle_Prs3d_Presentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Prs3d_Presentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Prs3d_TextAspect;
class Handle_Prs3d_TextAspect : public Handle_Prs3d_BasicAspect {
	public:
		%feature("autodoc", "1");
		Handle_Prs3d_TextAspect();
		%feature("autodoc", "1");
		Handle_Prs3d_TextAspect(const Handle_Prs3d_TextAspect &aHandle);
		%feature("autodoc", "1");
		Handle_Prs3d_TextAspect(const Prs3d_TextAspect *anItem);
		%feature("autodoc", "1");
		Handle_Prs3d_TextAspect & operator=(const Handle_Prs3d_TextAspect &aHandle);
		%feature("autodoc", "1");
		Handle_Prs3d_TextAspect & operator=(const Prs3d_TextAspect *anItem);
		%feature("autodoc", "1");
		static		Handle_Prs3d_TextAspect DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Prs3d_TextAspect {
	Prs3d_TextAspect* GetObject() {
	return (Prs3d_TextAspect*)$self->Access();
	}
};
%feature("shadow") Handle_Prs3d_TextAspect::~Handle_Prs3d_TextAspect %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Prs3d_TextAspect {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Prs3d_Presentation;
class Prs3d_Presentation : public Graphic3d_Structure {
	public:
		%feature("autodoc", "1");
		Prs3d_Presentation(const Handle_Graphic3d_StructureManager &aStructureManager, const Standard_Boolean Init=1);
		%feature("autodoc", "1");
		virtual		Handle_Graphic3d_Structure Compute(const Handle_Graphic3d_DataStructureManager &aProjector);
		%feature("autodoc", "1");
		virtual		Handle_Graphic3d_Structure Compute(const Handle_Graphic3d_DataStructureManager &aProjector, const TColStd_Array2OfReal &AMatrix);
		%feature("autodoc", "1");
		virtual		void Compute(const Handle_Graphic3d_DataStructureManager &aProjector, Handle_Graphic3d_Structure & aStructure);
		%feature("autodoc", "1");
		virtual		void Compute(const Handle_Graphic3d_DataStructureManager &aProjector, const TColStd_Array2OfReal &AMatrix, Handle_Graphic3d_Structure & aStructure);
		%feature("autodoc", "1");
		void Highlight();
		%feature("autodoc", "1");
		void Color(const Quantity_NameOfColor aColor);
		%feature("autodoc", "1");
		void BoundBox();
		%feature("autodoc", "1");
		virtual		void Display();
		%feature("autodoc", "1");
		void SetShadingAspect(const Handle_Prs3d_ShadingAspect &aShadingAspect);
		%feature("autodoc", "1");
		Standard_Boolean IsPickable() const;
		%feature("autodoc", "1");
		void Transform(const Handle_Geom_Transformation &aTransformation);
		%feature("autodoc", "1");
		void Place(const Quantity_Length X, const Quantity_Length Y, const Quantity_Length Z);
		%feature("autodoc", "1");
		void Multiply(const Handle_Geom_Transformation &aTransformation);
		%feature("autodoc", "1");
		void Move(const Quantity_Length X, const Quantity_Length Y, const Quantity_Length Z);
		%feature("autodoc", "1");
		Handle_Geom_Transformation Transformation() const;
		%feature("autodoc", "1");
		virtual		void Clear(const Standard_Boolean WithDestruction=1);
		%feature("autodoc", "1");
		void Connect(const Handle_Prs3d_Presentation &aPresentation);
		%feature("autodoc", "1");
		void Remove(const Handle_Prs3d_Presentation &aPresentation);
		%feature("autodoc", "1");
		void RemoveAll();
		%feature("autodoc", "1");
		void SetPickable();
		%feature("autodoc", "1");
		void SetUnPickable();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Prs3d_Presentation {
	Handle_Prs3d_Presentation GetHandle() {
	return *(Handle_Prs3d_Presentation*) &$self;
	}
};
%extend Prs3d_Presentation {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Prs3d_Presentation::~Prs3d_Presentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Prs3d_Presentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Prs3d_CompositeAspect;
class Prs3d_CompositeAspect : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Prs3d_CompositeAspect();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Prs3d_CompositeAspect {
	Handle_Prs3d_CompositeAspect GetHandle() {
	return *(Handle_Prs3d_CompositeAspect*) &$self;
	}
};
%extend Prs3d_CompositeAspect {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Prs3d_CompositeAspect::~Prs3d_CompositeAspect %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Prs3d_CompositeAspect {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Prs3d_AngleAspect;
class Prs3d_AngleAspect : public Prs3d_CompositeAspect {
	public:
		%feature("autodoc", "1");
		Prs3d_AngleAspect();
		%feature("autodoc", "1");
		Handle_Prs3d_LineAspect LineAspect() const;
		%feature("autodoc", "1");
		void SetLineAspect(const Handle_Prs3d_LineAspect &anAspect);
		%feature("autodoc", "1");
		Handle_Prs3d_TextAspect TextAspect() const;
		%feature("autodoc", "1");
		void SetTextAspect(const Handle_Prs3d_TextAspect &anAspect);
		%feature("autodoc", "1");
		Handle_Prs3d_ArrowAspect ArrowAspect() const;
		%feature("autodoc", "1");
		void SetArrowAspect(const Handle_Prs3d_ArrowAspect &anAspect);

};
%extend Prs3d_AngleAspect {
	Handle_Prs3d_AngleAspect GetHandle() {
	return *(Handle_Prs3d_AngleAspect*) &$self;
	}
};
%extend Prs3d_AngleAspect {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Prs3d_AngleAspect::~Prs3d_AngleAspect %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Prs3d_AngleAspect {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Prs3d_Root;
class Prs3d_Root {
	public:
		%feature("autodoc", "1");
		Prs3d_Root();
		%feature("autodoc", "1");
		static		Handle_Graphic3d_Group CurrentGroup(const Handle_Prs3d_Presentation &Prs3d);
		%feature("autodoc", "1");
		static		Handle_Graphic3d_Group NewGroup(const Handle_Prs3d_Presentation &Prs3d);

};
%feature("shadow") Prs3d_Root::~Prs3d_Root %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Prs3d_Root {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Prs3d_LengthPresentation;
class Prs3d_LengthPresentation : public Prs3d_Root {
	public:
		%feature("autodoc", "1");
		Prs3d_LengthPresentation();
		%feature("autodoc", "1");
		static		void Draw(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const TCollection_ExtendedString &aText, const gp_Pnt AttachmentPoint1, const gp_Pnt AttachmentPoint2, const gp_Pnt OffsetPoint);

};
%feature("shadow") Prs3d_LengthPresentation::~Prs3d_LengthPresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Prs3d_LengthPresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Prs3d_DatumAspect;
class Prs3d_DatumAspect : public Prs3d_CompositeAspect {
	public:
		%feature("autodoc", "1");
		Prs3d_DatumAspect();
		%feature("autodoc", "1");
		Handle_Prs3d_LineAspect FirstAxisAspect() const;
		%feature("autodoc", "1");
		Handle_Prs3d_LineAspect SecondAxisAspect() const;
		%feature("autodoc", "1");
		Handle_Prs3d_LineAspect ThirdAxisAspect() const;
		%feature("autodoc", "1");
		void SetDrawFirstAndSecondAxis(const Standard_Boolean draw);
		%feature("autodoc", "1");
		Standard_Boolean DrawFirstAndSecondAxis() const;
		%feature("autodoc", "1");
		void SetDrawThirdAxis(const Standard_Boolean draw);
		%feature("autodoc", "1");
		Standard_Boolean DrawThirdAxis() const;
		%feature("autodoc", "1");
		void SetAxisLength(const Standard_Real L1, const Standard_Real L2, const Standard_Real L3);
		%feature("autodoc", "1");
		Quantity_Length FirstAxisLength() const;
		%feature("autodoc", "1");
		Quantity_Length SecondAxisLength() const;
		%feature("autodoc", "1");
		Quantity_Length ThirdAxisLength() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Prs3d_DatumAspect {
	Handle_Prs3d_DatumAspect GetHandle() {
	return *(Handle_Prs3d_DatumAspect*) &$self;
	}
};
%extend Prs3d_DatumAspect {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Prs3d_DatumAspect::~Prs3d_DatumAspect %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Prs3d_DatumAspect {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Prs3d_BasicAspect;
class Prs3d_BasicAspect : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Prs3d_BasicAspect();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Prs3d_BasicAspect {
	Handle_Prs3d_BasicAspect GetHandle() {
	return *(Handle_Prs3d_BasicAspect*) &$self;
	}
};
%extend Prs3d_BasicAspect {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Prs3d_BasicAspect::~Prs3d_BasicAspect %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Prs3d_BasicAspect {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Prs3d_PointAspect;
class Prs3d_PointAspect : public Prs3d_BasicAspect {
	public:
		%feature("autodoc", "1");
		Prs3d_PointAspect(const Aspect_TypeOfMarker aType, const Quantity_Color &aColor, const Standard_Real aScale);
		%feature("autodoc", "1");
		Prs3d_PointAspect(const Aspect_TypeOfMarker aType, const Quantity_NameOfColor aColor, const Standard_Real aScale);
		%feature("autodoc", "1");
		Prs3d_PointAspect(const Quantity_Color &AColor, const Standard_Real AnId, const Standard_Integer AWidth, const Standard_Integer AHeight, const Handle_TColStd_HArray1OfByte &ATexture);
		%feature("autodoc", "1");
		void SetColor(const Quantity_Color &aColor);
		%feature("autodoc", "1");
		void SetColor(const Quantity_NameOfColor aColor);
		%feature("autodoc", "1");
		void SetTypeOfMarker(const Aspect_TypeOfMarker aType);
		%feature("autodoc", "1");
		void SetScale(const Standard_Real aScale);
		%feature("autodoc", "1");
		Handle_Graphic3d_AspectMarker3d Aspect() const;
		%feature("autodoc","GetTextureSize() -> [Standard_Integer, Standard_Integer]");

		void GetTextureSize(Standard_Integer &OutValue, Standard_Integer &OutValue);
		%feature("autodoc", "1");
		const Handle_TColStd_HArray1OfByte & GetTexture();

};
%extend Prs3d_PointAspect {
	Handle_Prs3d_PointAspect GetHandle() {
	return *(Handle_Prs3d_PointAspect*) &$self;
	}
};
%extend Prs3d_PointAspect {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Prs3d_PointAspect::~Prs3d_PointAspect %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Prs3d_PointAspect {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Prs3d_ArrowAspect;
class Prs3d_ArrowAspect : public Prs3d_CompositeAspect {
	public:
		%feature("autodoc", "1");
		Prs3d_ArrowAspect();
		%feature("autodoc", "1");
		Prs3d_ArrowAspect(const Quantity_PlaneAngle anAngle, const Quantity_Length aLength);
		%feature("autodoc", "1");
		void SetAngle(const Quantity_PlaneAngle anAngle);
		%feature("autodoc", "1");
		Quantity_PlaneAngle Angle() const;
		%feature("autodoc", "1");
		void SetLength(const Quantity_Length aLength);
		%feature("autodoc", "1");
		Quantity_Length Length() const;
		%feature("autodoc", "1");
		void SetColor(const Quantity_Color &aColor);
		%feature("autodoc", "1");
		void SetColor(const Quantity_NameOfColor aColor);
		%feature("autodoc", "1");
		Handle_Graphic3d_AspectLine3d Aspect() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Prs3d_ArrowAspect {
	Handle_Prs3d_ArrowAspect GetHandle() {
	return *(Handle_Prs3d_ArrowAspect*) &$self;
	}
};
%extend Prs3d_ArrowAspect {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Prs3d_ArrowAspect::~Prs3d_ArrowAspect %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Prs3d_ArrowAspect {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Prs3d;
class Prs3d {
	public:
		%feature("autodoc", "1");
		Prs3d();
		%feature("autodoc","MatchSegment(Quantity_Length X, Quantity_Length Y, Quantity_Length Z, Quantity_Length aDistance, const p1, const p2) -> Standard_Real");

		static		Standard_Boolean MatchSegment(const Quantity_Length X, const Quantity_Length Y, const Quantity_Length Z, const Quantity_Length aDistance, const gp_Pnt p1, const gp_Pnt p2, Standard_Real &OutValue);

};
%feature("shadow") Prs3d::~Prs3d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Prs3d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Prs3d_AnglePresentation;
class Prs3d_AnglePresentation : public Prs3d_Root {
	public:
		%feature("autodoc", "1");
		Prs3d_AnglePresentation();
		%feature("autodoc", "1");
		static		void Draw(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const TCollection_ExtendedString &aText, const gp_Pnt AttachmentPoint1, const gp_Pnt AttachmentPoint2, const gp_Pnt AttachmentPoint3, const gp_Pnt OffsetPoint);

};
%feature("shadow") Prs3d_AnglePresentation::~Prs3d_AnglePresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Prs3d_AnglePresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Prs3d_Projector;
class Prs3d_Projector : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Prs3d_Projector(const HLRAlgo_Projector &Pr);
		%feature("autodoc", "1");
		Prs3d_Projector(const Standard_Boolean Pers, const Quantity_Length Focus, const Quantity_Length DX, const Quantity_Length DY, const Quantity_Length DZ, const Quantity_Length XAt, const Quantity_Length YAt, const Quantity_Length ZAt, const Quantity_Length XUp, const Quantity_Length YUp, const Quantity_Length ZUp);
		%feature("autodoc", "1");
		HLRAlgo_Projector Projector() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Prs3d_Projector {
	Handle_Prs3d_Projector GetHandle() {
	return *(Handle_Prs3d_Projector*) &$self;
	}
};
%extend Prs3d_Projector {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Prs3d_Projector::~Prs3d_Projector %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Prs3d_Projector {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Prs3d_LineAspect;
class Prs3d_LineAspect : public Prs3d_BasicAspect {
	public:
		%feature("autodoc", "1");
		Prs3d_LineAspect(const Quantity_NameOfColor aColor, const Aspect_TypeOfLine aType, const Standard_Real aWidth);
		%feature("autodoc", "1");
		Prs3d_LineAspect(const Quantity_Color &aColor, const Aspect_TypeOfLine aType, const Standard_Real aWidth);
		%feature("autodoc", "1");
		void SetColor(const Quantity_Color &aColor);
		%feature("autodoc", "1");
		void SetColor(const Quantity_NameOfColor aColor);
		%feature("autodoc", "1");
		void SetTypeOfLine(const Aspect_TypeOfLine aType);
		%feature("autodoc", "1");
		void SetWidth(const Standard_Real aWidth);
		%feature("autodoc", "1");
		Handle_Graphic3d_AspectLine3d Aspect() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Prs3d_LineAspect {
	Handle_Prs3d_LineAspect GetHandle() {
	return *(Handle_Prs3d_LineAspect*) &$self;
	}
};
%extend Prs3d_LineAspect {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Prs3d_LineAspect::~Prs3d_LineAspect %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Prs3d_LineAspect {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Prs3d_PlaneAspect;
class Prs3d_PlaneAspect : public Prs3d_CompositeAspect {
	public:
		%feature("autodoc", "1");
		Prs3d_PlaneAspect();
		%feature("autodoc", "1");
		Handle_Prs3d_LineAspect EdgesAspect() const;
		%feature("autodoc", "1");
		Handle_Prs3d_LineAspect IsoAspect() const;
		%feature("autodoc", "1");
		Handle_Prs3d_LineAspect ArrowAspect() const;
		%feature("autodoc", "1");
		void SetArrowsLength(const Quantity_Length L);
		%feature("autodoc", "1");
		Quantity_Length ArrowsLength() const;
		%feature("autodoc", "1");
		void SetArrowsSize(const Quantity_Length L);
		%feature("autodoc", "1");
		Quantity_Length ArrowsSize() const;
		%feature("autodoc", "1");
		void SetArrowsAngle(const Quantity_PlaneAngle ang);
		%feature("autodoc", "1");
		Quantity_PlaneAngle ArrowsAngle() const;
		%feature("autodoc", "1");
		void SetDisplayCenterArrow(const Standard_Boolean draw);
		%feature("autodoc", "1");
		Standard_Boolean DisplayCenterArrow() const;
		%feature("autodoc", "1");
		void SetDisplayEdgesArrows(const Standard_Boolean draw);
		%feature("autodoc", "1");
		Standard_Boolean DisplayEdgesArrows() const;
		%feature("autodoc", "1");
		void SetDisplayEdges(const Standard_Boolean draw);
		%feature("autodoc", "1");
		Standard_Boolean DisplayEdges() const;
		%feature("autodoc", "1");
		void SetDisplayIso(const Standard_Boolean draw);
		%feature("autodoc", "1");
		Standard_Boolean DisplayIso() const;
		%feature("autodoc", "1");
		void SetPlaneLength(const Quantity_Length LX, const Quantity_Length LY);
		%feature("autodoc", "1");
		Quantity_Length PlaneXLength() const;
		%feature("autodoc", "1");
		Quantity_Length PlaneYLength() const;
		%feature("autodoc", "1");
		void SetIsoDistance(const Quantity_Length L);
		%feature("autodoc", "1");
		Quantity_Length IsoDistance() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Prs3d_PlaneAspect {
	Handle_Prs3d_PlaneAspect GetHandle() {
	return *(Handle_Prs3d_PlaneAspect*) &$self;
	}
};
%extend Prs3d_PlaneAspect {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Prs3d_PlaneAspect::~Prs3d_PlaneAspect %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Prs3d_PlaneAspect {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Prs3d_Drawer;
class Prs3d_Drawer : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Prs3d_Drawer();
		%feature("autodoc", "1");
		virtual		void SetTypeOfDeflection(const Aspect_TypeOfDeflection aTypeOfDeflection);
		%feature("autodoc", "1");
		virtual		Aspect_TypeOfDeflection TypeOfDeflection() const;
		%feature("autodoc", "1");
		virtual		void SetMaximalChordialDeviation(const Quantity_Length aChordialDeviation);
		%feature("autodoc", "1");
		virtual		Quantity_Length MaximalChordialDeviation() const;
		%feature("autodoc", "1");
		virtual		void SetDeviationCoefficient(const Standard_Real aCoefficient);
		%feature("autodoc", "1");
		virtual		Standard_Real DeviationCoefficient() const;
		%feature("autodoc", "1");
		virtual		void SetHLRDeviationCoefficient(const Standard_Real aCoefficient);
		%feature("autodoc", "1");
		virtual		Standard_Real HLRDeviationCoefficient() const;
		%feature("autodoc", "1");
		virtual		void SetHLRAngle(const Standard_Real anAngle);
		%feature("autodoc", "1");
		virtual		Standard_Real HLRAngle() const;
		%feature("autodoc", "1");
		virtual		void SetDeviationAngle(const Standard_Real anAngle);
		%feature("autodoc", "1");
		virtual		Standard_Real DeviationAngle() const;
		%feature("autodoc", "1");
		virtual		void SetDiscretisation(const Standard_Integer d);
		%feature("autodoc", "1");
		virtual		Standard_Integer Discretisation() const;
		%feature("autodoc", "1");
		virtual		void SetMaximalParameterValue(const Standard_Real Value);
		%feature("autodoc", "1");
		virtual		Standard_Real MaximalParameterValue() const;
		%feature("autodoc", "1");
		virtual		void SetIsoOnPlane(const Standard_Boolean OnOff);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsoOnPlane() const;
		%feature("autodoc", "1");
		virtual		Handle_Prs3d_IsoAspect UIsoAspect();
		%feature("autodoc", "1");
		virtual		void SetUIsoAspect(const Handle_Prs3d_IsoAspect &anAspect);
		%feature("autodoc", "1");
		virtual		Handle_Prs3d_IsoAspect VIsoAspect();
		%feature("autodoc", "1");
		virtual		void SetVIsoAspect(const Handle_Prs3d_IsoAspect &anAspect);
		%feature("autodoc", "1");
		virtual		Handle_Prs3d_LineAspect FreeBoundaryAspect();
		%feature("autodoc", "1");
		virtual		void SetFreeBoundaryAspect(const Handle_Prs3d_LineAspect &anAspect);
		%feature("autodoc", "1");
		virtual		void SetFreeBoundaryDraw(const Standard_Boolean OnOff);
		%feature("autodoc", "1");
		virtual		Standard_Boolean FreeBoundaryDraw() const;
		%feature("autodoc", "1");
		virtual		Handle_Prs3d_LineAspect WireAspect();
		%feature("autodoc", "1");
		virtual		void SetWireAspect(const Handle_Prs3d_LineAspect &anAspect);
		%feature("autodoc", "1");
		virtual		void SetWireDraw(const Standard_Boolean OnOff);
		%feature("autodoc", "1");
		virtual		Standard_Boolean WireDraw() const;
		%feature("autodoc", "1");
		virtual		Handle_Prs3d_LineAspect UnFreeBoundaryAspect();
		%feature("autodoc", "1");
		virtual		void SetUnFreeBoundaryAspect(const Handle_Prs3d_LineAspect &anAspect);
		%feature("autodoc", "1");
		virtual		void SetUnFreeBoundaryDraw(const Standard_Boolean OnOff);
		%feature("autodoc", "1");
		virtual		Standard_Boolean UnFreeBoundaryDraw() const;
		%feature("autodoc", "1");
		virtual		Handle_Prs3d_LineAspect LineAspect();
		%feature("autodoc", "1");
		virtual		void SetLineAspect(const Handle_Prs3d_LineAspect &anAspect);
		%feature("autodoc", "1");
		virtual		Handle_Prs3d_TextAspect TextAspect();
		%feature("autodoc", "1");
		virtual		void SetTextAspect(const Handle_Prs3d_TextAspect &anAspect);
		%feature("autodoc", "1");
		virtual		void SetLineArrowDraw(const Standard_Boolean OnOff);
		%feature("autodoc", "1");
		virtual		Standard_Boolean LineArrowDraw() const;
		%feature("autodoc", "1");
		virtual		Handle_Prs3d_ArrowAspect ArrowAspect();
		%feature("autodoc", "1");
		virtual		void SetArrowAspect(const Handle_Prs3d_ArrowAspect &anAspect);
		%feature("autodoc", "1");
		virtual		Handle_Prs3d_PointAspect PointAspect();
		%feature("autodoc", "1");
		virtual		void SetPointAspect(const Handle_Prs3d_PointAspect &anAspect);
		%feature("autodoc", "1");
		virtual		Handle_Prs3d_ShadingAspect ShadingAspect();
		%feature("autodoc", "1");
		virtual		void SetShadingAspect(const Handle_Prs3d_ShadingAspect &anAspect);
		%feature("autodoc", "1");
		virtual		void SetShadingAspectGlobal(const Standard_Boolean aValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean ShadingAspectGlobal() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean DrawHiddenLine() const;
		%feature("autodoc", "1");
		virtual		void EnableDrawHiddenLine();
		%feature("autodoc", "1");
		virtual		void DisableDrawHiddenLine();
		%feature("autodoc", "1");
		virtual		Handle_Prs3d_LineAspect HiddenLineAspect();
		%feature("autodoc", "1");
		virtual		void SetHiddenLineAspect(const Handle_Prs3d_LineAspect &anAspect);
		%feature("autodoc", "1");
		virtual		Handle_Prs3d_LineAspect SeenLineAspect();
		%feature("autodoc", "1");
		virtual		void SetSeenLineAspect(const Handle_Prs3d_LineAspect &anAspect);
		%feature("autodoc", "1");
		virtual		Handle_Prs3d_PlaneAspect PlaneAspect();
		%feature("autodoc", "1");
		virtual		void SetPlaneAspect(const Handle_Prs3d_PlaneAspect &anAspect);
		%feature("autodoc", "1");
		virtual		Handle_Prs3d_LineAspect VectorAspect();
		%feature("autodoc", "1");
		virtual		void SetVectorAspect(const Handle_Prs3d_LineAspect &anAspect);
		%feature("autodoc", "1");
		virtual		Handle_Prs3d_DatumAspect DatumAspect();
		%feature("autodoc", "1");
		virtual		void SetDatumAspect(const Handle_Prs3d_DatumAspect &anAspect);
		%feature("autodoc", "1");
		virtual		Handle_Prs3d_LengthAspect LengthAspect();
		%feature("autodoc", "1");
		virtual		void SetLengthAspect(const Handle_Prs3d_LengthAspect &anAspect);
		%feature("autodoc", "1");
		virtual		Handle_Prs3d_AngleAspect AngleAspect();
		%feature("autodoc", "1");
		virtual		void SetAngleAspect(const Handle_Prs3d_AngleAspect &anAspect);
		%feature("autodoc", "1");
		virtual		Handle_Prs3d_RadiusAspect RadiusAspect() const;
		%feature("autodoc", "1");
		virtual		void SetRadiusAspect(const Handle_Prs3d_RadiusAspect &anAspect);
		%feature("autodoc", "1");
		virtual		Handle_Prs3d_LineAspect SectionAspect();
		%feature("autodoc", "1");
		virtual		void SetSectionAspect(const Handle_Prs3d_LineAspect &anAspect);
		%feature("autodoc", "1");
		virtual		void SetFaceBoundaryDraw(const Standard_Boolean theIsEnabled);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsFaceBoundaryDraw() const;
		%feature("autodoc", "1");
		virtual		void SetFaceBoundaryAspect(const Handle_Prs3d_LineAspect &theAspect);
		%feature("autodoc", "1");
		virtual		Handle_Prs3d_LineAspect FaceBoundaryAspect();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Prs3d_Drawer {
	Handle_Prs3d_Drawer GetHandle() {
	return *(Handle_Prs3d_Drawer*) &$self;
	}
};
%extend Prs3d_Drawer {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Prs3d_Drawer::~Prs3d_Drawer %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Prs3d_Drawer {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Prs3d_ShapeTool;
class Prs3d_ShapeTool {
	public:
		%feature("autodoc", "1");
		Prs3d_ShapeTool(const TopoDS_Shape TheShape);
		%feature("autodoc", "1");
		void InitFace();
		%feature("autodoc", "1");
		Standard_Boolean MoreFace() const;
		%feature("autodoc", "1");
		void NextFace();
		%feature("autodoc", "1");
		const TopoDS_Face  GetFace() const;
		%feature("autodoc", "1");
		Bnd_Box FaceBound() const;
		%feature("autodoc", "1");
		Standard_Boolean IsPlanarFace() const;
		%feature("autodoc", "1");
		void InitCurve();
		%feature("autodoc", "1");
		Standard_Boolean MoreCurve() const;
		%feature("autodoc", "1");
		void NextCurve();
		%feature("autodoc", "1");
		const TopoDS_Edge  GetCurve() const;
		%feature("autodoc", "1");
		Bnd_Box CurveBound() const;
		%feature("autodoc", "1");
		Standard_Integer Neighbours() const;
		%feature("autodoc", "1");
		Handle_TopTools_HSequenceOfShape FacesOfEdge() const;
		%feature("autodoc", "1");
		void InitVertex();
		%feature("autodoc", "1");
		Standard_Boolean MoreVertex() const;
		%feature("autodoc", "1");
		void NextVertex();
		%feature("autodoc", "1");
		const TopoDS_Vertex  GetVertex() const;
		%feature("autodoc", "1");
		Standard_Boolean HasSurface() const;
		%feature("autodoc", "1");
		Handle_Poly_Triangulation CurrentTriangulation(TopLoc_Location & l) const;
		%feature("autodoc", "1");
		Standard_Boolean HasCurve() const;
		%feature("autodoc", "1");
		void PolygonOnTriangulation(Handle_Poly_PolygonOnTriangulation & Indices, Handle_Poly_Triangulation & T, TopLoc_Location & l) const;
		%feature("autodoc", "1");
		Handle_Poly_Polygon3D Polygon3D(TopLoc_Location & l) const;

};
%feature("shadow") Prs3d_ShapeTool::~Prs3d_ShapeTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Prs3d_ShapeTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Prs3d_TextAspect;
class Prs3d_TextAspect : public Prs3d_BasicAspect {
	public:
		%feature("autodoc", "1");
		Prs3d_TextAspect();
		%feature("autodoc", "1");
		void SetColor(const Quantity_Color &aColor);
		%feature("autodoc", "1");
		void SetColor(const Quantity_NameOfColor aColor);
		%feature("autodoc", "1");
		void SetFont(const char * aFont);
		%feature("autodoc", "1");
		void SetHeightWidthRatio(const Standard_Real aRatio);
		%feature("autodoc", "1");
		void SetSpace(const Quantity_Length aSpace);
		%feature("autodoc", "1");
		void SetHeight(const Standard_Real aHeight);
		%feature("autodoc", "1");
		void SetAngle(const Quantity_PlaneAngle anAngle);
		%feature("autodoc", "1");
		Standard_Real Height() const;
		%feature("autodoc", "1");
		Quantity_PlaneAngle Angle() const;
		%feature("autodoc", "1");
		void SetHorizontalJustification(const Graphic3d_HorizontalTextAlignment aJustification);
		%feature("autodoc", "1");
		void SetVerticalJustification(const Graphic3d_VerticalTextAlignment aJustification);
		%feature("autodoc", "1");
		void SetOrientation(const Graphic3d_TextPath anOrientation);
		%feature("autodoc", "1");
		Graphic3d_HorizontalTextAlignment HorizontalJustification() const;
		%feature("autodoc", "1");
		Graphic3d_VerticalTextAlignment VerticalJustification() const;
		%feature("autodoc", "1");
		Graphic3d_TextPath Orientation() const;
		%feature("autodoc", "1");
		Handle_Graphic3d_AspectText3d Aspect() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Prs3d_TextAspect {
	Handle_Prs3d_TextAspect GetHandle() {
	return *(Handle_Prs3d_TextAspect*) &$self;
	}
};
%extend Prs3d_TextAspect {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Prs3d_TextAspect::~Prs3d_TextAspect %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Prs3d_TextAspect {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Prs3d_IsoAspect;
class Prs3d_IsoAspect : public Prs3d_LineAspect {
	public:
		%feature("autodoc", "1");
		Prs3d_IsoAspect(const Quantity_NameOfColor aColor, const Aspect_TypeOfLine aType, const Standard_Real aWidth, const Standard_Integer aNumber);
		%feature("autodoc", "1");
		Prs3d_IsoAspect(const Quantity_Color &aColor, const Aspect_TypeOfLine aType, const Standard_Real aWidth, const Standard_Integer aNumber);
		%feature("autodoc", "1");
		void SetNumber(const Standard_Integer aNumber);
		%feature("autodoc", "1");
		Standard_Integer Number() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Prs3d_IsoAspect {
	Handle_Prs3d_IsoAspect GetHandle() {
	return *(Handle_Prs3d_IsoAspect*) &$self;
	}
};
%extend Prs3d_IsoAspect {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Prs3d_IsoAspect::~Prs3d_IsoAspect %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Prs3d_IsoAspect {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Prs3d_InvalidAngle;
class Prs3d_InvalidAngle : public Standard_RangeError {
	public:
		%feature("autodoc", "1");
		Prs3d_InvalidAngle();
		%feature("autodoc", "1");
		Prs3d_InvalidAngle(const char * AString);
		%feature("autodoc", "1");
		static		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		static		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		static		Handle_Prs3d_InvalidAngle NewInstance(const char * aMessage="");
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Prs3d_InvalidAngle {
	Handle_Prs3d_InvalidAngle GetHandle() {
	return *(Handle_Prs3d_InvalidAngle*) &$self;
	}
};
%extend Prs3d_InvalidAngle {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Prs3d_InvalidAngle::~Prs3d_InvalidAngle %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Prs3d_InvalidAngle {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Prs3d_PlaneSet;
class Prs3d_PlaneSet : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Prs3d_PlaneSet(const Standard_Real Xdir, const Standard_Real Ydir, const Standard_Real Zdir, const Quantity_Length Xloc, const Quantity_Length Yloc, const Quantity_Length Zloc, const Quantity_Length anOffset);
		%feature("autodoc", "1");
		void SetDirection(const Standard_Real X, const Standard_Real Y, const Standard_Real Z);
		%feature("autodoc", "1");
		void SetLocation(const Quantity_Length X, const Quantity_Length Y, const Quantity_Length Z);
		%feature("autodoc", "1");
		void SetOffset(const Quantity_Length anOffset);
		%feature("autodoc", "1");
		gp_Pln Plane() const;
		%feature("autodoc", "1");
		Quantity_Length Offset() const;
		%feature("autodoc","Location() -> [Standard_Real, Standard_Real, Standard_Real]");

		void Location(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc","Direction() -> [Standard_Real, Standard_Real, Standard_Real]");

		void Direction(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Prs3d_PlaneSet {
	Handle_Prs3d_PlaneSet GetHandle() {
	return *(Handle_Prs3d_PlaneSet*) &$self;
	}
};
%extend Prs3d_PlaneSet {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Prs3d_PlaneSet::~Prs3d_PlaneSet %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Prs3d_PlaneSet {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Prs3d_Text;
class Prs3d_Text : public Prs3d_Root {
	public:
		%feature("autodoc", "1");
		Prs3d_Text();
		%feature("autodoc", "1");
		static		void Draw(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const TCollection_ExtendedString &aText, const gp_Pnt AttachmentPoint);
		%feature("autodoc", "1");
		static		void Draw(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_TextAspect &anAspect, const TCollection_ExtendedString &aText, const gp_Pnt AttachmentPoint);

};
%feature("shadow") Prs3d_Text::~Prs3d_Text %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Prs3d_Text {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Prs3d_RadiusAspect;
class Prs3d_RadiusAspect : public Prs3d_CompositeAspect {
	public:
		%feature("autodoc", "1");
		Prs3d_RadiusAspect(const Quantity_NameOfColor aColor, const Aspect_TypeOfLine aType, const Standard_Real aWidth);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Prs3d_RadiusAspect {
	Handle_Prs3d_RadiusAspect GetHandle() {
	return *(Handle_Prs3d_RadiusAspect*) &$self;
	}
};
%extend Prs3d_RadiusAspect {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Prs3d_RadiusAspect::~Prs3d_RadiusAspect %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Prs3d_RadiusAspect {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Prs3d_ShadingAspect;
class Prs3d_ShadingAspect : public Prs3d_BasicAspect {
	public:
		%feature("autodoc", "1");
		Prs3d_ShadingAspect();
		%feature("autodoc", "1");
		void SetColor(const Quantity_Color &aColor, const Aspect_TypeOfFacingModel aModel=Aspect_TOFM_BOTH_SIDE);
		%feature("autodoc", "1");
		void SetColor(const Quantity_NameOfColor aColor, const Aspect_TypeOfFacingModel aModel=Aspect_TOFM_BOTH_SIDE);
		%feature("autodoc", "1");
		void SetMaterial(const Graphic3d_MaterialAspect &aMaterial, const Aspect_TypeOfFacingModel aModel=Aspect_TOFM_BOTH_SIDE);
		%feature("autodoc", "1");
		void SetMaterial(const Graphic3d_NameOfMaterial aMaterial, const Aspect_TypeOfFacingModel aModel=Aspect_TOFM_BOTH_SIDE);
		%feature("autodoc", "1");
		void SetTransparency(const Standard_Real aValue, const Aspect_TypeOfFacingModel aModel=Aspect_TOFM_BOTH_SIDE);
		%feature("autodoc", "1");
		void SetAspect(const Handle_Graphic3d_AspectFillArea3d &Asp);
		%feature("autodoc", "1");
		Quantity_Color Color(const Aspect_TypeOfFacingModel aModel=Aspect_TOFM_FRONT_SIDE) const;
		%feature("autodoc", "1");
		Graphic3d_MaterialAspect Material(const Aspect_TypeOfFacingModel aModel=Aspect_TOFM_FRONT_SIDE) const;
		%feature("autodoc", "1");
		Standard_Real Transparency(const Aspect_TypeOfFacingModel aModel=Aspect_TOFM_FRONT_SIDE) const;
		%feature("autodoc", "1");
		Handle_Graphic3d_AspectFillArea3d Aspect() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Prs3d_ShadingAspect {
	Handle_Prs3d_ShadingAspect GetHandle() {
	return *(Handle_Prs3d_ShadingAspect*) &$self;
	}
};
%extend Prs3d_ShadingAspect {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Prs3d_ShadingAspect::~Prs3d_ShadingAspect %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Prs3d_ShadingAspect {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Prs3d_Arrow;
class Prs3d_Arrow : public Prs3d_Root {
	public:
		%feature("autodoc", "1");
		Prs3d_Arrow();
		%feature("autodoc", "1");
		static		void Draw(const Handle_Prs3d_Presentation &aPresentation, const gp_Pnt aLocation, const gp_Dir aDirection, const Quantity_PlaneAngle anAngle, const Quantity_Length aLength);
		%feature("autodoc", "1");
		static		void Fill(const Handle_Prs3d_Presentation &aPresentation, const gp_Pnt aLocation, const gp_Dir aDirection, const Quantity_PlaneAngle anAngle, const Quantity_Length aLength);

};
%feature("shadow") Prs3d_Arrow::~Prs3d_Arrow %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Prs3d_Arrow {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Prs3d_LengthAspect;
class Prs3d_LengthAspect : public Prs3d_CompositeAspect {
	public:
		%feature("autodoc", "1");
		Prs3d_LengthAspect();
		%feature("autodoc", "1");
		Handle_Prs3d_LineAspect LineAspect() const;
		%feature("autodoc", "1");
		void SetLineAspect(const Handle_Prs3d_LineAspect &anAspect);
		%feature("autodoc", "1");
		Handle_Prs3d_ArrowAspect Arrow1Aspect() const;
		%feature("autodoc", "1");
		void SetArrow1Aspect(const Handle_Prs3d_ArrowAspect &anAspect);
		%feature("autodoc", "1");
		Handle_Prs3d_ArrowAspect Arrow2Aspect() const;
		%feature("autodoc", "1");
		void SetArrow2Aspect(const Handle_Prs3d_ArrowAspect &anAspect);
		%feature("autodoc", "1");
		Handle_Prs3d_TextAspect TextAspect() const;
		%feature("autodoc", "1");
		void SetTextAspect(const Handle_Prs3d_TextAspect &anAspect);
		%feature("autodoc", "1");
		void SetDrawFirstArrow(const Standard_Boolean draw);
		%feature("autodoc", "1");
		Standard_Boolean DrawFirstArrow() const;
		%feature("autodoc", "1");
		void SetDrawSecondArrow(const Standard_Boolean draw);
		%feature("autodoc", "1");
		Standard_Boolean DrawSecondArrow() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Prs3d_LengthAspect {
	Handle_Prs3d_LengthAspect GetHandle() {
	return *(Handle_Prs3d_LengthAspect*) &$self;
	}
};
%extend Prs3d_LengthAspect {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Prs3d_LengthAspect::~Prs3d_LengthAspect %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Prs3d_LengthAspect {
	void _kill_pointed() {
		delete $self;
	}
};
