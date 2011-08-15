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

%module GEOMAlgo
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include GEOMAlgo_renames.i


%include GEOMAlgo_required_python_modules.i


%include GEOMAlgo_dependencies.i


%include GEOMAlgo_headers.i

typedef GEOMAlgo_WireEdgeSet * GEOMAlgo_PWireEdgeSet;

enum GEOMAlgo_KindOfShape {
	GEOMAlgo_KS_UNKNOWN,
	GEOMAlgo_KS_SPHERE,
	GEOMAlgo_KS_CYLINDER,
	GEOMAlgo_KS_BOX,
	GEOMAlgo_KS_TORUS,
	GEOMAlgo_KS_CONE,
	GEOMAlgo_KS_ELLIPSE,
	GEOMAlgo_KS_PLANE,
	GEOMAlgo_KS_CIRCLE,
	GEOMAlgo_KS_LINE,
	GEOMAlgo_KS_DEGENERATED,
	};

enum GEOMAlgo_State {
	GEOMAlgo_ST_UNKNOWN,
	GEOMAlgo_ST_IN,
	GEOMAlgo_ST_OUT,
	GEOMAlgo_ST_ON,
	GEOMAlgo_ST_ONIN,
	GEOMAlgo_ST_ONOUT,
	GEOMAlgo_ST_INOUT,
	};

enum GEOMAlgo_KindOfBounds {
	GEOMAlgo_KB_UNKNOWN,
	GEOMAlgo_KB_TRIMMED,
	GEOMAlgo_KB_INFINITE,
	};

enum GEOMAlgo_KindOfClosed {
	GEOMAlgo_KC_UNKNOWN,
	GEOMAlgo_KC_CLOSED,
	GEOMAlgo_KC_NOTCLOSED,
	};

enum GEOMAlgo_KindOfName {
	GEOMAlgo_KN_UNKNOWN,
	GEOMAlgo_KN_SPHERE,
	GEOMAlgo_KN_CYLINDER,
	GEOMAlgo_KN_TORUS,
	GEOMAlgo_KN_CONE,
	GEOMAlgo_KN_ELLIPSE,
	GEOMAlgo_KN_CIRCLE,
	GEOMAlgo_KN_PLANE,
	GEOMAlgo_KN_LINE,
	GEOMAlgo_KN_BOX,
	GEOMAlgo_KN_SEGMENT,
	GEOMAlgo_KN_ARCCIRCLE,
	GEOMAlgo_KN_POLYGON,
	GEOMAlgo_KN_POLYHEDRON,
	GEOMAlgo_KN_DISKCIRCLE,
	GEOMAlgo_KN_DISKELLIPSE,
	GEOMAlgo_KN_RECTANGLE,
	GEOMAlgo_KN_TRIANGLE,
	GEOMAlgo_KN_QUADRANGLE,
	GEOMAlgo_KN_ARCELLIPSE,
	};



%nodefaultctor Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyListOfShape;
class Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyListOfShape : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyListOfShape();
		%feature("autodoc", "1");
		Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyListOfShape(const Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyListOfShape &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyListOfShape(const GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyListOfShape *anItem);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyListOfShape & operator=(const Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyListOfShape &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyListOfShape & operator=(const GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyListOfShape *anItem);
		%feature("autodoc", "1");
		static		Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyListOfShape const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyListOfShape {
	GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyListOfShape* GetObject() {
	return (GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyListOfShape*)$self->Access();
	}
};
%feature("shadow") Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyListOfShape::~Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyListOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyListOfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox;
class Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox();
		%feature("autodoc", "1");
		Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox(const Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox(const GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox *anItem);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox & operator=(const Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox & operator=(const GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox *anItem);
		%feature("autodoc", "1");
		static		Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox {
	GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox* GetObject() {
	return (GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox*)$self->Access();
	}
};
%feature("shadow") Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox::~Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeShapeInfo;
class Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeShapeInfo : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeShapeInfo();
		%feature("autodoc", "1");
		Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeShapeInfo(const Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeShapeInfo &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeShapeInfo(const GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeShapeInfo *anItem);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeShapeInfo & operator=(const Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeShapeInfo &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeShapeInfo & operator=(const GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeShapeInfo *anItem);
		%feature("autodoc", "1");
		static		Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeShapeInfo const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeShapeInfo {
	GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeShapeInfo* GetObject() {
	return (GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeShapeInfo*)$self->Access();
	}
};
%feature("shadow") Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeShapeInfo::~Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeShapeInfo %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeShapeInfo {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GEOMAlgo_HAlgo;
class Handle_GEOMAlgo_HAlgo : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_GEOMAlgo_HAlgo();
		%feature("autodoc", "1");
		Handle_GEOMAlgo_HAlgo(const Handle_GEOMAlgo_HAlgo &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_HAlgo(const GEOMAlgo_HAlgo *anItem);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_HAlgo & operator=(const Handle_GEOMAlgo_HAlgo &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_HAlgo & operator=(const GEOMAlgo_HAlgo *anItem);
		%feature("autodoc", "1");
		static		Handle_GEOMAlgo_HAlgo const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMAlgo_HAlgo {
	GEOMAlgo_HAlgo* GetObject() {
	return (GEOMAlgo_HAlgo*)$self->Access();
	}
};
%feature("shadow") Handle_GEOMAlgo_HAlgo::~Handle_GEOMAlgo_HAlgo %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GEOMAlgo_HAlgo {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GEOMAlgo_Clsf;
class Handle_GEOMAlgo_Clsf : public Handle_GEOMAlgo_HAlgo {
	public:
		%feature("autodoc", "1");
		Handle_GEOMAlgo_Clsf();
		%feature("autodoc", "1");
		Handle_GEOMAlgo_Clsf(const Handle_GEOMAlgo_Clsf &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_Clsf(const GEOMAlgo_Clsf *anItem);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_Clsf & operator=(const Handle_GEOMAlgo_Clsf &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_Clsf & operator=(const GEOMAlgo_Clsf *anItem);
		%feature("autodoc", "1");
		static		Handle_GEOMAlgo_Clsf const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMAlgo_Clsf {
	GEOMAlgo_Clsf* GetObject() {
	return (GEOMAlgo_Clsf*)$self->Access();
	}
};
%feature("shadow") Handle_GEOMAlgo_Clsf::~Handle_GEOMAlgo_Clsf %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GEOMAlgo_Clsf {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GEOMAlgo_ClsfBox;
class Handle_GEOMAlgo_ClsfBox : public Handle_GEOMAlgo_Clsf {
	public:
		%feature("autodoc", "1");
		Handle_GEOMAlgo_ClsfBox();
		%feature("autodoc", "1");
		Handle_GEOMAlgo_ClsfBox(const Handle_GEOMAlgo_ClsfBox &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_ClsfBox(const GEOMAlgo_ClsfBox *anItem);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_ClsfBox & operator=(const Handle_GEOMAlgo_ClsfBox &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_ClsfBox & operator=(const GEOMAlgo_ClsfBox *anItem);
		%feature("autodoc", "1");
		static		Handle_GEOMAlgo_ClsfBox const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMAlgo_ClsfBox {
	GEOMAlgo_ClsfBox* GetObject() {
	return (GEOMAlgo_ClsfBox*)$self->Access();
	}
};
%feature("shadow") Handle_GEOMAlgo_ClsfBox::~Handle_GEOMAlgo_ClsfBox %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GEOMAlgo_ClsfBox {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GEOMAlgo_DataMapNodeOfDataMapOfShapeReal;
class Handle_GEOMAlgo_DataMapNodeOfDataMapOfShapeReal : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_GEOMAlgo_DataMapNodeOfDataMapOfShapeReal();
		%feature("autodoc", "1");
		Handle_GEOMAlgo_DataMapNodeOfDataMapOfShapeReal(const Handle_GEOMAlgo_DataMapNodeOfDataMapOfShapeReal &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_DataMapNodeOfDataMapOfShapeReal(const GEOMAlgo_DataMapNodeOfDataMapOfShapeReal *anItem);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_DataMapNodeOfDataMapOfShapeReal & operator=(const Handle_GEOMAlgo_DataMapNodeOfDataMapOfShapeReal &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_DataMapNodeOfDataMapOfShapeReal & operator=(const GEOMAlgo_DataMapNodeOfDataMapOfShapeReal *anItem);
		%feature("autodoc", "1");
		static		Handle_GEOMAlgo_DataMapNodeOfDataMapOfShapeReal const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMAlgo_DataMapNodeOfDataMapOfShapeReal {
	GEOMAlgo_DataMapNodeOfDataMapOfShapeReal* GetObject() {
	return (GEOMAlgo_DataMapNodeOfDataMapOfShapeReal*)$self->Access();
	}
};
%feature("shadow") Handle_GEOMAlgo_DataMapNodeOfDataMapOfShapeReal::~Handle_GEOMAlgo_DataMapNodeOfDataMapOfShapeReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GEOMAlgo_DataMapNodeOfDataMapOfShapeReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape;
class Handle_GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape();
		%feature("autodoc", "1");
		Handle_GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape(const Handle_GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape(const GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape *anItem);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape & operator=(const Handle_GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape & operator=(const GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape *anItem);
		%feature("autodoc", "1");
		static		Handle_GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape {
	GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape* GetObject() {
	return (GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape*)$self->Access();
	}
};
%feature("shadow") Handle_GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape::~Handle_GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GEOMAlgo_DataMapNodeOfDataMapOfOrientedShapeShape;
class Handle_GEOMAlgo_DataMapNodeOfDataMapOfOrientedShapeShape : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_GEOMAlgo_DataMapNodeOfDataMapOfOrientedShapeShape();
		%feature("autodoc", "1");
		Handle_GEOMAlgo_DataMapNodeOfDataMapOfOrientedShapeShape(const Handle_GEOMAlgo_DataMapNodeOfDataMapOfOrientedShapeShape &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_DataMapNodeOfDataMapOfOrientedShapeShape(const GEOMAlgo_DataMapNodeOfDataMapOfOrientedShapeShape *anItem);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_DataMapNodeOfDataMapOfOrientedShapeShape & operator=(const Handle_GEOMAlgo_DataMapNodeOfDataMapOfOrientedShapeShape &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_DataMapNodeOfDataMapOfOrientedShapeShape & operator=(const GEOMAlgo_DataMapNodeOfDataMapOfOrientedShapeShape *anItem);
		%feature("autodoc", "1");
		static		Handle_GEOMAlgo_DataMapNodeOfDataMapOfOrientedShapeShape const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMAlgo_DataMapNodeOfDataMapOfOrientedShapeShape {
	GEOMAlgo_DataMapNodeOfDataMapOfOrientedShapeShape* GetObject() {
	return (GEOMAlgo_DataMapNodeOfDataMapOfOrientedShapeShape*)$self->Access();
	}
};
%feature("shadow") Handle_GEOMAlgo_DataMapNodeOfDataMapOfOrientedShapeShape::~Handle_GEOMAlgo_DataMapNodeOfDataMapOfOrientedShapeShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GEOMAlgo_DataMapNodeOfDataMapOfOrientedShapeShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GEOMAlgo_DataMapNodeOfDataMapOfPassKeyShapeShape;
class Handle_GEOMAlgo_DataMapNodeOfDataMapOfPassKeyShapeShape : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_GEOMAlgo_DataMapNodeOfDataMapOfPassKeyShapeShape();
		%feature("autodoc", "1");
		Handle_GEOMAlgo_DataMapNodeOfDataMapOfPassKeyShapeShape(const Handle_GEOMAlgo_DataMapNodeOfDataMapOfPassKeyShapeShape &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_DataMapNodeOfDataMapOfPassKeyShapeShape(const GEOMAlgo_DataMapNodeOfDataMapOfPassKeyShapeShape *anItem);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_DataMapNodeOfDataMapOfPassKeyShapeShape & operator=(const Handle_GEOMAlgo_DataMapNodeOfDataMapOfPassKeyShapeShape &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_DataMapNodeOfDataMapOfPassKeyShapeShape & operator=(const GEOMAlgo_DataMapNodeOfDataMapOfPassKeyShapeShape *anItem);
		%feature("autodoc", "1");
		static		Handle_GEOMAlgo_DataMapNodeOfDataMapOfPassKeyShapeShape const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMAlgo_DataMapNodeOfDataMapOfPassKeyShapeShape {
	GEOMAlgo_DataMapNodeOfDataMapOfPassKeyShapeShape* GetObject() {
	return (GEOMAlgo_DataMapNodeOfDataMapOfPassKeyShapeShape*)$self->Access();
	}
};
%feature("shadow") Handle_GEOMAlgo_DataMapNodeOfDataMapOfPassKeyShapeShape::~Handle_GEOMAlgo_DataMapNodeOfDataMapOfPassKeyShapeShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GEOMAlgo_DataMapNodeOfDataMapOfPassKeyShapeShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GEOMAlgo_DataMapNodeOfDataMapOfShapeShapeSet;
class Handle_GEOMAlgo_DataMapNodeOfDataMapOfShapeShapeSet : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_GEOMAlgo_DataMapNodeOfDataMapOfShapeShapeSet();
		%feature("autodoc", "1");
		Handle_GEOMAlgo_DataMapNodeOfDataMapOfShapeShapeSet(const Handle_GEOMAlgo_DataMapNodeOfDataMapOfShapeShapeSet &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_DataMapNodeOfDataMapOfShapeShapeSet(const GEOMAlgo_DataMapNodeOfDataMapOfShapeShapeSet *anItem);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_DataMapNodeOfDataMapOfShapeShapeSet & operator=(const Handle_GEOMAlgo_DataMapNodeOfDataMapOfShapeShapeSet &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_DataMapNodeOfDataMapOfShapeShapeSet & operator=(const GEOMAlgo_DataMapNodeOfDataMapOfShapeShapeSet *anItem);
		%feature("autodoc", "1");
		static		Handle_GEOMAlgo_DataMapNodeOfDataMapOfShapeShapeSet const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMAlgo_DataMapNodeOfDataMapOfShapeShapeSet {
	GEOMAlgo_DataMapNodeOfDataMapOfShapeShapeSet* GetObject() {
	return (GEOMAlgo_DataMapNodeOfDataMapOfShapeShapeSet*)$self->Access();
	}
};
%feature("shadow") Handle_GEOMAlgo_DataMapNodeOfDataMapOfShapeShapeSet::~Handle_GEOMAlgo_DataMapNodeOfDataMapOfShapeShapeSet %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GEOMAlgo_DataMapNodeOfDataMapOfShapeShapeSet {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyShapeListOfShape;
class Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyShapeListOfShape : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyShapeListOfShape();
		%feature("autodoc", "1");
		Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyShapeListOfShape(const Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyShapeListOfShape &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyShapeListOfShape(const GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyShapeListOfShape *anItem);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyShapeListOfShape & operator=(const Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyShapeListOfShape &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyShapeListOfShape & operator=(const GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyShapeListOfShape *anItem);
		%feature("autodoc", "1");
		static		Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyShapeListOfShape const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyShapeListOfShape {
	GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyShapeListOfShape* GetObject() {
	return (GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyShapeListOfShape*)$self->Access();
	}
};
%feature("shadow") Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyShapeListOfShape::~Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyShapeListOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyShapeListOfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger;
class Handle_GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger();
		%feature("autodoc", "1");
		Handle_GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger(const Handle_GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger(const GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger *anItem);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger & operator=(const Handle_GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger & operator=(const GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger *anItem);
		%feature("autodoc", "1");
		static		Handle_GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger {
	GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger* GetObject() {
	return (GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger*)$self->Access();
	}
};
%feature("shadow") Handle_GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger::~Handle_GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GEOMAlgo_ClsfSurf;
class Handle_GEOMAlgo_ClsfSurf : public Handle_GEOMAlgo_Clsf {
	public:
		%feature("autodoc", "1");
		Handle_GEOMAlgo_ClsfSurf();
		%feature("autodoc", "1");
		Handle_GEOMAlgo_ClsfSurf(const Handle_GEOMAlgo_ClsfSurf &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_ClsfSurf(const GEOMAlgo_ClsfSurf *anItem);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_ClsfSurf & operator=(const Handle_GEOMAlgo_ClsfSurf &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_ClsfSurf & operator=(const GEOMAlgo_ClsfSurf *anItem);
		%feature("autodoc", "1");
		static		Handle_GEOMAlgo_ClsfSurf const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMAlgo_ClsfSurf {
	GEOMAlgo_ClsfSurf* GetObject() {
	return (GEOMAlgo_ClsfSurf*)$self->Access();
	}
};
%feature("shadow") Handle_GEOMAlgo_ClsfSurf::~Handle_GEOMAlgo_ClsfSurf %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GEOMAlgo_ClsfSurf {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeState;
class Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeState : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeState();
		%feature("autodoc", "1");
		Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeState(const Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeState &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeState(const GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeState *anItem);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeState & operator=(const Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeState &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeState & operator=(const GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeState *anItem);
		%feature("autodoc", "1");
		static		Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeState const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeState {
	GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeState* GetObject() {
	return (GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeState*)$self->Access();
	}
};
%feature("shadow") Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeState::~Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeState %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeState {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape;
class Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape();
		%feature("autodoc", "1");
		Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape(const Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape(const GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape *anItem);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape & operator=(const Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape & operator=(const GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape *anItem);
		%feature("autodoc", "1");
		static		Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape {
	GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape* GetObject() {
	return (GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape*)$self->Access();
	}
};
%feature("shadow") Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape::~Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GEOMAlgo_ListNodeOfListOfCoupleOfShapes;
class Handle_GEOMAlgo_ListNodeOfListOfCoupleOfShapes : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_GEOMAlgo_ListNodeOfListOfCoupleOfShapes();
		%feature("autodoc", "1");
		Handle_GEOMAlgo_ListNodeOfListOfCoupleOfShapes(const Handle_GEOMAlgo_ListNodeOfListOfCoupleOfShapes &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_ListNodeOfListOfCoupleOfShapes(const GEOMAlgo_ListNodeOfListOfCoupleOfShapes *anItem);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_ListNodeOfListOfCoupleOfShapes & operator=(const Handle_GEOMAlgo_ListNodeOfListOfCoupleOfShapes &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_ListNodeOfListOfCoupleOfShapes & operator=(const GEOMAlgo_ListNodeOfListOfCoupleOfShapes *anItem);
		%feature("autodoc", "1");
		static		Handle_GEOMAlgo_ListNodeOfListOfCoupleOfShapes const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMAlgo_ListNodeOfListOfCoupleOfShapes {
	GEOMAlgo_ListNodeOfListOfCoupleOfShapes* GetObject() {
	return (GEOMAlgo_ListNodeOfListOfCoupleOfShapes*)$self->Access();
	}
};
%feature("shadow") Handle_GEOMAlgo_ListNodeOfListOfCoupleOfShapes::~Handle_GEOMAlgo_ListNodeOfListOfCoupleOfShapes %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GEOMAlgo_ListNodeOfListOfCoupleOfShapes {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GEOMAlgo_ClsfSolid;
class Handle_GEOMAlgo_ClsfSolid : public Handle_GEOMAlgo_Clsf {
	public:
		%feature("autodoc", "1");
		Handle_GEOMAlgo_ClsfSolid();
		%feature("autodoc", "1");
		Handle_GEOMAlgo_ClsfSolid(const Handle_GEOMAlgo_ClsfSolid &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_ClsfSolid(const GEOMAlgo_ClsfSolid *anItem);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_ClsfSolid & operator=(const Handle_GEOMAlgo_ClsfSolid &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_ClsfSolid & operator=(const GEOMAlgo_ClsfSolid *anItem);
		%feature("autodoc", "1");
		static		Handle_GEOMAlgo_ClsfSolid const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMAlgo_ClsfSolid {
	GEOMAlgo_ClsfSolid* GetObject() {
	return (GEOMAlgo_ClsfSolid*)$self->Access();
	}
};
%feature("shadow") Handle_GEOMAlgo_ClsfSolid::~Handle_GEOMAlgo_ClsfSolid %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GEOMAlgo_ClsfSolid {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GEOMAlgo_ListNodeOfListOfPnt;
class Handle_GEOMAlgo_ListNodeOfListOfPnt : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_GEOMAlgo_ListNodeOfListOfPnt();
		%feature("autodoc", "1");
		Handle_GEOMAlgo_ListNodeOfListOfPnt(const Handle_GEOMAlgo_ListNodeOfListOfPnt &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_ListNodeOfListOfPnt(const GEOMAlgo_ListNodeOfListOfPnt *anItem);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_ListNodeOfListOfPnt & operator=(const Handle_GEOMAlgo_ListNodeOfListOfPnt &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_ListNodeOfListOfPnt & operator=(const GEOMAlgo_ListNodeOfListOfPnt *anItem);
		%feature("autodoc", "1");
		static		Handle_GEOMAlgo_ListNodeOfListOfPnt const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMAlgo_ListNodeOfListOfPnt {
	GEOMAlgo_ListNodeOfListOfPnt* GetObject() {
	return (GEOMAlgo_ListNodeOfListOfPnt*)$self->Access();
	}
};
%feature("shadow") Handle_GEOMAlgo_ListNodeOfListOfPnt::~Handle_GEOMAlgo_ListNodeOfListOfPnt %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GEOMAlgo_ListNodeOfListOfPnt {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_PassKeyShapeMapHasher;
class GEOMAlgo_PassKeyShapeMapHasher {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_PassKeyShapeMapHasher();
		%feature("autodoc", "1");
		static		Standard_Integer HashCode(const GEOMAlgo_PassKeyShape &aPKey, const Standard_Integer Upper);
		%feature("autodoc", "1");
		static		Standard_Boolean IsEqual(const GEOMAlgo_PassKeyShape &aPKey1, const GEOMAlgo_PassKeyShape &aPKey2);

};
%feature("shadow") GEOMAlgo_PassKeyShapeMapHasher::~GEOMAlgo_PassKeyShapeMapHasher %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_PassKeyShapeMapHasher {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_Algo;


%nodefaultdtor GEOMAlgo_Algo;
class GEOMAlgo_Algo {
	public:
		%feature("autodoc", "1");
		virtual		void Perform();
		%feature("autodoc", "1");
		Standard_Integer ErrorStatus() const;
		%feature("autodoc", "1");
		Standard_Integer WarningStatus() const;

};

%nodefaultctor GEOMAlgo_BuilderArea;


%nodefaultdtor GEOMAlgo_BuilderArea;
class GEOMAlgo_BuilderArea : public GEOMAlgo_Algo {
	public:
		%feature("autodoc", "1");
		void SetContext(const IntTools_Context &theContext);
		%feature("autodoc", "1");
		void SetShapes(const TopTools_ListOfShape &theLS);
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Shapes() const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Loops() const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Areas() const;

};

%nodefaultctor GEOMAlgo_BuilderSolid;
class GEOMAlgo_BuilderSolid : public GEOMAlgo_BuilderArea {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_BuilderSolid();

};
%feature("shadow") GEOMAlgo_BuilderSolid::~GEOMAlgo_BuilderSolid %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_BuilderSolid {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_DataMapNodeOfDataMapOfShapeShapeSet;
class GEOMAlgo_DataMapNodeOfDataMapOfShapeShapeSet : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_DataMapNodeOfDataMapOfShapeShapeSet(const TopoDS_Shape K, const GEOMAlgo_ShapeSet &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Shape  Key() const;
		%feature("autodoc", "1");
		GEOMAlgo_ShapeSet & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GEOMAlgo_DataMapNodeOfDataMapOfShapeShapeSet {
	Handle_GEOMAlgo_DataMapNodeOfDataMapOfShapeShapeSet GetHandle() {
	return *(Handle_GEOMAlgo_DataMapNodeOfDataMapOfShapeShapeSet*) &$self;
	}
};
%extend GEOMAlgo_DataMapNodeOfDataMapOfShapeShapeSet {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") GEOMAlgo_DataMapNodeOfDataMapOfShapeShapeSet::~GEOMAlgo_DataMapNodeOfDataMapOfShapeShapeSet %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_DataMapNodeOfDataMapOfShapeShapeSet {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_ShapeAlgo;


%nodefaultdtor GEOMAlgo_ShapeAlgo;
class GEOMAlgo_ShapeAlgo : public GEOMAlgo_Algo {
	public:
		%feature("autodoc", "1");
		void SetShape(const TopoDS_Shape aS);
		%feature("autodoc", "1");
		void SetTolerance(const Standard_Real aT);
		%feature("autodoc", "1");
		const TopoDS_Shape  Shape() const;
		%feature("autodoc", "1");
		Standard_Real Tolerance() const;
		%feature("autodoc", "1");
		const TopoDS_Shape  Result() const;

};

%nodefaultctor GEOMAlgo_FinderShapeOn;
class GEOMAlgo_FinderShapeOn : public GEOMAlgo_ShapeAlgo {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_FinderShapeOn();
		%feature("autodoc", "1");
		virtual		void Perform();
		%feature("autodoc", "1");
		void SetSurface(const Handle_Geom_Surface &aS);
		%feature("autodoc", "1");
		void SetShapeType(const TopAbs_ShapeEnum aST);
		%feature("autodoc", "1");
		void SetState(const GEOMAlgo_State aSF);
		%feature("autodoc", "1");
		const Handle_Geom_Surface & Surface() const;
		%feature("autodoc", "1");
		TopAbs_ShapeEnum ShapeType() const;
		%feature("autodoc", "1");
		GEOMAlgo_State State() const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Shapes() const;
		%feature("autodoc", "1");
		static		void CopySource(const TopoDS_Shape aS, TopTools_DataMapOfShapeShape & aImages, TopTools_DataMapOfShapeShape & aOriginals, TopoDS_Shape & aSC);
		%feature("autodoc", "1");
		static		bool BuildTriangulation(const TopoDS_Shape theShape);

};
%feature("shadow") GEOMAlgo_FinderShapeOn::~GEOMAlgo_FinderShapeOn %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_FinderShapeOn {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_DataMapNodeOfDataMapOfShapeReal;
class GEOMAlgo_DataMapNodeOfDataMapOfShapeReal : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_DataMapNodeOfDataMapOfShapeReal(const TopoDS_Shape K, const Standard_Real &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Shape  Key() const;
		%feature("autodoc","1");
		%extend {
				Standard_Real GetValue() {
				return (Standard_Real) $self->Value();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetValue(Standard_Real value ) {
				$self->Value()=value;
				}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GEOMAlgo_DataMapNodeOfDataMapOfShapeReal {
	Handle_GEOMAlgo_DataMapNodeOfDataMapOfShapeReal GetHandle() {
	return *(Handle_GEOMAlgo_DataMapNodeOfDataMapOfShapeReal*) &$self;
	}
};
%extend GEOMAlgo_DataMapNodeOfDataMapOfShapeReal {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") GEOMAlgo_DataMapNodeOfDataMapOfShapeReal::~GEOMAlgo_DataMapNodeOfDataMapOfShapeReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_DataMapNodeOfDataMapOfShapeReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_BuilderShape;


%nodefaultdtor GEOMAlgo_BuilderShape;
class GEOMAlgo_BuilderShape : public GEOMAlgo_Algo {
	public:
		%feature("autodoc", "1");
		const TopoDS_Shape  Shape() const;
		%feature("autodoc", "1");
		virtual		const TopTools_ListOfShape & Generated(const TopoDS_Shape theS);
		%feature("autodoc", "1");
		virtual		const TopTools_ListOfShape & Modified(const TopoDS_Shape theS);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsDeleted(const TopoDS_Shape theS);
		%feature("autodoc", "1");
		Standard_Boolean HasDeleted() const;
		%feature("autodoc", "1");
		Standard_Boolean HasGenerated() const;
		%feature("autodoc", "1");
		Standard_Boolean HasModified() const;
		%feature("autodoc", "1");
		const TopTools_IndexedDataMapOfShapeListOfShape & ImagesResult() const;

};

%nodefaultctor GEOMAlgo_Builder;
class GEOMAlgo_Builder : public GEOMAlgo_BuilderShape {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_Builder();
		%feature("autodoc", "1");
		virtual		void Perform();
		%feature("autodoc", "1");
		virtual		void PerformWithFiller(const NMTTools_PaveFiller &theDSF);
		%feature("autodoc", "1");
		virtual		void AddShape(const TopoDS_Shape theShape);
		%feature("autodoc", "1");
		virtual		void Clear();
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Shapes() const;
		%feature("autodoc", "1");
		void AddCompound(const TopoDS_Shape theShape);
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Shapes1(const Standard_Integer theType) const;
		%feature("autodoc", "1");
		const BRepAlgo_Image & Images() const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & InParts(const TopoDS_Shape theShape) const;

};
%feature("shadow") GEOMAlgo_Builder::~GEOMAlgo_Builder %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_Builder {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_ShapeInfo;
class GEOMAlgo_ShapeInfo {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_ShapeInfo();
		%feature("autodoc", "1");
		void Reset();
		%feature("autodoc", "1");
		void SetType(const TopAbs_ShapeEnum aType);
		%feature("autodoc", "1");
		TopAbs_ShapeEnum Type() const;
		%feature("autodoc", "1");
		void SetNbSubShapes(const TopAbs_ShapeEnum aType, const Standard_Integer aNb);
		%feature("autodoc", "1");
		Standard_Integer NbSubShapes(const TopAbs_ShapeEnum aType) const;
		%feature("autodoc", "1");
		void SetKindOfShape(const GEOMAlgo_KindOfShape aT);
		%feature("autodoc", "1");
		GEOMAlgo_KindOfShape KindOfShape() const;
		%feature("autodoc", "1");
		void SetKindOfName(const GEOMAlgo_KindOfName aT);
		%feature("autodoc", "1");
		GEOMAlgo_KindOfName KindOfName() const;
		%feature("autodoc", "1");
		void SetKindOfBounds(const GEOMAlgo_KindOfBounds aT);
		%feature("autodoc", "1");
		GEOMAlgo_KindOfBounds KindOfBounds() const;
		%feature("autodoc", "1");
		void SetKindOfClosed(const GEOMAlgo_KindOfClosed aT);
		%feature("autodoc", "1");
		GEOMAlgo_KindOfClosed KindOfClosed() const;
		%feature("autodoc", "1");
		void SetLocation(const gp_Pnt aP);
		%feature("autodoc", "1");
		const gp_Pnt  Location() const;
		%feature("autodoc", "1");
		void SetDirection(const gp_Dir aD);
		%feature("autodoc", "1");
		const gp_Dir  Direction() const;
		%feature("autodoc", "1");
		void SetPosition(const gp_Ax2 aAx2);
		%feature("autodoc", "1");
		void SetPosition(const gp_Ax3 aAx3);
		%feature("autodoc", "1");
		const gp_Ax3  Position() const;
		%feature("autodoc", "1");
		void SetPnt1(const gp_Pnt aP);
		%feature("autodoc", "1");
		const gp_Pnt  Pnt1() const;
		%feature("autodoc", "1");
		void SetPnt2(const gp_Pnt aP);
		%feature("autodoc", "1");
		const gp_Pnt  Pnt2() const;
		%feature("autodoc", "1");
		void SetRadius1(const Standard_Real aR);
		%feature("autodoc", "1");
		Standard_Real Radius1() const;
		%feature("autodoc", "1");
		void SetRadius2(const Standard_Real aR);
		%feature("autodoc", "1");
		Standard_Real Radius2() const;
		%feature("autodoc", "1");
		void SetLength(const Standard_Real aL);
		%feature("autodoc", "1");
		Standard_Real Length() const;
		%feature("autodoc", "1");
		void SetWidth(const Standard_Real aW);
		%feature("autodoc", "1");
		Standard_Real Width() const;
		%feature("autodoc", "1");
		void SetHeight(const Standard_Real aH);
		%feature("autodoc", "1");
		Standard_Real Height() const;
		%feature("autodoc", "1");
		void Dump() const;

};
%feature("shadow") GEOMAlgo_ShapeInfo::~GEOMAlgo_ShapeInfo %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_ShapeInfo {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_FinderShapeOn1;
class GEOMAlgo_FinderShapeOn1 : public GEOMAlgo_ShapeAlgo {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_FinderShapeOn1();
		%feature("autodoc", "1");
		void SetSurface(const Handle_Geom_Surface &aS);
		%feature("autodoc", "1");
		void SetShapeType(const TopAbs_ShapeEnum aST);
		%feature("autodoc", "1");
		void SetState(const GEOMAlgo_State aSF);
		%feature("autodoc", "1");
		void SetNbPntsMin(const Standard_Integer aNb);
		%feature("autodoc", "1");
		Standard_Integer NbPntsMin() const;
		%feature("autodoc", "1");
		void SetNbPntsMax(const Standard_Integer aNb);
		%feature("autodoc", "1");
		Standard_Integer NbPntsMax() const;
		%feature("autodoc", "1");
		const Handle_Geom_Surface & Surface() const;
		%feature("autodoc", "1");
		TopAbs_ShapeEnum ShapeType() const;
		%feature("autodoc", "1");
		GEOMAlgo_State State() const;
		%feature("autodoc", "1");
		virtual		void Perform();
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Shapes() const;
		%feature("autodoc", "1");
		const GEOMAlgo_IndexedDataMapOfShapeState & MSS() const;

};
%feature("shadow") GEOMAlgo_FinderShapeOn1::~GEOMAlgo_FinderShapeOn1 %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_FinderShapeOn1 {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_IndexedDataMapOfShapeBox;
class GEOMAlgo_IndexedDataMapOfShapeBox : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_IndexedDataMapOfShapeBox(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		GEOMAlgo_IndexedDataMapOfShapeBox & Assign(const GEOMAlgo_IndexedDataMapOfShapeBox &Other);
		%feature("autodoc", "1");
		GEOMAlgo_IndexedDataMapOfShapeBox & operator=(const GEOMAlgo_IndexedDataMapOfShapeBox &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer Add(const TopoDS_Shape K, const Bnd_Box &I);
		%feature("autodoc", "1");
		void Substitute(const Standard_Integer I, const TopoDS_Shape K, const Bnd_Box &T);
		%feature("autodoc", "1");
		void RemoveLast();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		const TopoDS_Shape  FindKey(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const Bnd_Box & FindFromIndex(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const Bnd_Box & operator()(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Bnd_Box & ChangeFromIndex(const Standard_Integer I);
		%feature("autodoc", "1");
		Bnd_Box & operator()(const Standard_Integer I);
		%feature("autodoc", "1");
		Standard_Integer FindIndex(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		const Bnd_Box & FindFromKey(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		Bnd_Box & ChangeFromKey(const TopoDS_Shape K);

};
%feature("shadow") GEOMAlgo_IndexedDataMapOfShapeBox::~GEOMAlgo_IndexedDataMapOfShapeBox %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_IndexedDataMapOfShapeBox {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_ShapeSolid;
class GEOMAlgo_ShapeSolid : public GEOMAlgo_Algo {
	public:
		%feature("autodoc", "1");
		void SetFiller(const BOPTools_DSFiller &aDSF);
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Shapes(const TopAbs_State aState) const;

};
%feature("shadow") GEOMAlgo_ShapeSolid::~GEOMAlgo_ShapeSolid %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_ShapeSolid {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_ShellSolid;
class GEOMAlgo_ShellSolid : public GEOMAlgo_ShapeSolid {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_ShellSolid();
		%feature("autodoc", "1");
		virtual		void Perform();

};
%feature("shadow") GEOMAlgo_ShellSolid::~GEOMAlgo_ShellSolid %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_ShellSolid {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_ListOfPnt;
class GEOMAlgo_ListOfPnt {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_ListOfPnt();
		%feature("autodoc", "1");
		void Assign(const GEOMAlgo_ListOfPnt &Other);
		%feature("autodoc", "1");
		void operator=(const GEOMAlgo_ListOfPnt &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const gp_Pnt I);
		%feature("autodoc", "1");
		void Prepend(const gp_Pnt I, GEOMAlgo_ListIteratorOfListOfPnt & theIt);
		%feature("autodoc", "1");
		void Prepend(GEOMAlgo_ListOfPnt & Other);
		%feature("autodoc", "1");
		void Append(const gp_Pnt I);
		%feature("autodoc", "1");
		void Append(const gp_Pnt I, GEOMAlgo_ListIteratorOfListOfPnt & theIt);
		%feature("autodoc", "1");
		void Append(GEOMAlgo_ListOfPnt & Other);
		%feature("autodoc", "1");
		gp_Pnt  First() const;
		%feature("autodoc", "1");
		gp_Pnt  Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(GEOMAlgo_ListIteratorOfListOfPnt & It);
		%feature("autodoc", "1");
		void InsertBefore(const gp_Pnt I, GEOMAlgo_ListIteratorOfListOfPnt & It);
		%feature("autodoc", "1");
		void InsertBefore(GEOMAlgo_ListOfPnt & Other, GEOMAlgo_ListIteratorOfListOfPnt & It);
		%feature("autodoc", "1");
		void InsertAfter(const gp_Pnt I, GEOMAlgo_ListIteratorOfListOfPnt & It);
		%feature("autodoc", "1");
		void InsertAfter(GEOMAlgo_ListOfPnt & Other, GEOMAlgo_ListIteratorOfListOfPnt & It);

};
%feature("shadow") GEOMAlgo_ListOfPnt::~GEOMAlgo_ListOfPnt %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_ListOfPnt {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeState;
class GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeState : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeState(const TopoDS_Shape K1, const Standard_Integer K2, const TopAbs_State &I, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
		%feature("autodoc", "1");
		TopoDS_Shape  Key1() const;
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
		TopAbs_State & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeState {
	Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeState GetHandle() {
	return *(Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeState*) &$self;
	}
};
%extend GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeState {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeState::~GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeState %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeState {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_DataMapIteratorOfDataMapOfShapeShapeSet;
class GEOMAlgo_DataMapIteratorOfDataMapOfShapeShapeSet : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_DataMapIteratorOfDataMapOfShapeShapeSet();
		%feature("autodoc", "1");
		GEOMAlgo_DataMapIteratorOfDataMapOfShapeShapeSet(const GEOMAlgo_DataMapOfShapeShapeSet &aMap);
		%feature("autodoc", "1");
		void Initialize(const GEOMAlgo_DataMapOfShapeShapeSet &aMap);
		%feature("autodoc", "1");
		const TopoDS_Shape  Key() const;
		%feature("autodoc", "1");
		const GEOMAlgo_ShapeSet & Value() const;

};
%feature("shadow") GEOMAlgo_DataMapIteratorOfDataMapOfShapeShapeSet::~GEOMAlgo_DataMapIteratorOfDataMapOfShapeShapeSet %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_DataMapIteratorOfDataMapOfShapeShapeSet {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_Gluer;
class GEOMAlgo_Gluer : public GEOMAlgo_ShapeAlgo {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_Gluer();
		%feature("autodoc", "1");
		void SetCheckGeometry(const Standard_Boolean aFlag);
		%feature("autodoc", "1");
		Standard_Boolean CheckGeometry() const;
		%feature("autodoc", "1");
		void SetKeepNonSolids(const Standard_Boolean aFlag);
		%feature("autodoc", "1");
		virtual		void Perform();
		%feature("autodoc", "1");
		Standard_Integer AloneShapes() const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Modified(const TopoDS_Shape S);
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Generated(const TopoDS_Shape S);
		%feature("autodoc", "1");
		Standard_Boolean IsDeleted(const TopoDS_Shape S);
		%feature("autodoc", "1");
		const TopTools_DataMapOfShapeListOfShape & Images() const;
		%feature("autodoc", "1");
		const TopTools_DataMapOfShapeShape & Origins() const;

};
%feature("shadow") GEOMAlgo_Gluer::~GEOMAlgo_Gluer %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_Gluer {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_Gluer1;
class GEOMAlgo_Gluer1 : public GEOMAlgo_Gluer {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_Gluer1();
		%feature("autodoc", "1");
		void SetFacesToUnglue(const GEOMAlgo_ListOfCoupleOfShapes &aLCS);
		%feature("autodoc", "1");
		const GEOMAlgo_ListOfCoupleOfShapes & FacesToUnglue() const;
		%feature("autodoc", "1");
		const GEOMAlgo_ListOfCoupleOfShapes & GluedFaces() const;
		%feature("autodoc", "1");
		const GEOMAlgo_ListOfCoupleOfShapes & RejectedFaces() const;
		%feature("autodoc", "1");
		void UnglueFaces();

};
%feature("shadow") GEOMAlgo_Gluer1::~GEOMAlgo_Gluer1 %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_Gluer1 {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_DataMapOfShapeShapeSet;
class GEOMAlgo_DataMapOfShapeShapeSet : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_DataMapOfShapeShapeSet(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		GEOMAlgo_DataMapOfShapeShapeSet & Assign(const GEOMAlgo_DataMapOfShapeShapeSet &Other);
		%feature("autodoc", "1");
		GEOMAlgo_DataMapOfShapeShapeSet & operator=(const GEOMAlgo_DataMapOfShapeShapeSet &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TopoDS_Shape K, const GEOMAlgo_ShapeSet &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TopoDS_Shape K);
		%feature("autodoc", "1");
		const GEOMAlgo_ShapeSet & Find(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		const GEOMAlgo_ShapeSet & operator()(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		GEOMAlgo_ShapeSet & ChangeFind(const TopoDS_Shape K);
		%feature("autodoc", "1");
		GEOMAlgo_ShapeSet & operator()(const TopoDS_Shape K);

};
%feature("shadow") GEOMAlgo_DataMapOfShapeShapeSet::~GEOMAlgo_DataMapOfShapeShapeSet %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_DataMapOfShapeShapeSet {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_DataMapOfOrientedShapeShape;
class GEOMAlgo_DataMapOfOrientedShapeShape : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_DataMapOfOrientedShapeShape(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		GEOMAlgo_DataMapOfOrientedShapeShape & Assign(const GEOMAlgo_DataMapOfOrientedShapeShape &Other);
		%feature("autodoc", "1");
		GEOMAlgo_DataMapOfOrientedShapeShape & operator=(const GEOMAlgo_DataMapOfOrientedShapeShape &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TopoDS_Shape K, const TopoDS_Shape I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TopoDS_Shape K);
		%feature("autodoc", "1");
		const TopoDS_Shape  Find(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		const TopoDS_Shape  operator()(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		TopoDS_Shape  ChangeFind(const TopoDS_Shape K);
		%feature("autodoc", "1");
		TopoDS_Shape  operator()(const TopoDS_Shape K);

};
%feature("shadow") GEOMAlgo_DataMapOfOrientedShapeShape::~GEOMAlgo_DataMapOfOrientedShapeShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_DataMapOfOrientedShapeShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_HAlgo;


%nodefaultdtor GEOMAlgo_HAlgo;
class GEOMAlgo_HAlgo : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		virtual		void Perform();
		%feature("autodoc", "1");
		virtual		void CheckData();
		%feature("autodoc", "1");
		virtual		void CheckResult();
		%feature("autodoc", "1");
		Standard_Integer ErrorStatus() const;
		%feature("autodoc", "1");
		Standard_Integer WarningStatus() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GEOMAlgo_HAlgo {
	Handle_GEOMAlgo_HAlgo GetHandle() {
	return *(Handle_GEOMAlgo_HAlgo*) &$self;
	}
};
%extend GEOMAlgo_HAlgo {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};

%nodefaultctor GEOMAlgo_Clsf;


%nodefaultdtor GEOMAlgo_Clsf;
class GEOMAlgo_Clsf : public GEOMAlgo_HAlgo {
	public:
		%feature("autodoc", "1");
		void SetPnt(const gp_Pnt aP);
		%feature("autodoc", "1");
		const gp_Pnt  Pnt() const;
		%feature("autodoc", "1");
		void SetTolerance(const Standard_Real aT);
		%feature("autodoc", "1");
		Standard_Real Tolerance() const;
		%feature("autodoc", "1");
		TopAbs_State State() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean CanBeON(const Handle_Geom_Curve &aCT) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean CanBeON(const Handle_Geom_Surface &aST) const;

};
%extend GEOMAlgo_Clsf {
	Handle_GEOMAlgo_Clsf GetHandle() {
	return *(Handle_GEOMAlgo_Clsf*) &$self;
	}
};
%extend GEOMAlgo_Clsf {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};

%nodefaultctor GEOMAlgo_ClsfBox;
class GEOMAlgo_ClsfBox : public GEOMAlgo_Clsf {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_ClsfBox();
		%feature("autodoc", "1");
		void SetBox(const TopoDS_Shape aS);
		%feature("autodoc", "1");
		const TopoDS_Shape  Box() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean CanBeON(const Handle_Geom_Curve &aC) const;

};
%extend GEOMAlgo_ClsfBox {
	Handle_GEOMAlgo_ClsfBox GetHandle() {
	return *(Handle_GEOMAlgo_ClsfBox*) &$self;
	}
};
%extend GEOMAlgo_ClsfBox {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") GEOMAlgo_ClsfBox::~GEOMAlgo_ClsfBox %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_ClsfBox {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_BuilderFace;
class GEOMAlgo_BuilderFace : public GEOMAlgo_BuilderArea {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_BuilderFace();
		%feature("autodoc", "1");
		void SetFace(const TopoDS_Face theFace);
		%feature("autodoc", "1");
		const TopoDS_Face  Face() const;
		%feature("autodoc", "1");
		virtual		void Perform();

};
%feature("shadow") GEOMAlgo_BuilderFace::~GEOMAlgo_BuilderFace %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_BuilderFace {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_DataMapOfPassKeyShapeShape;
class GEOMAlgo_DataMapOfPassKeyShapeShape : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_DataMapOfPassKeyShapeShape(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		GEOMAlgo_DataMapOfPassKeyShapeShape & Assign(const GEOMAlgo_DataMapOfPassKeyShapeShape &Other);
		%feature("autodoc", "1");
		GEOMAlgo_DataMapOfPassKeyShapeShape & operator=(const GEOMAlgo_DataMapOfPassKeyShapeShape &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const GEOMAlgo_PassKeyShape &K, const TopoDS_Shape I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const GEOMAlgo_PassKeyShape &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const GEOMAlgo_PassKeyShape &K);
		%feature("autodoc", "1");
		const TopoDS_Shape  Find(const GEOMAlgo_PassKeyShape &K) const;
		%feature("autodoc", "1");
		const TopoDS_Shape  operator()(const GEOMAlgo_PassKeyShape &K) const;
		%feature("autodoc", "1");
		TopoDS_Shape  ChangeFind(const GEOMAlgo_PassKeyShape &K);
		%feature("autodoc", "1");
		TopoDS_Shape  operator()(const GEOMAlgo_PassKeyShape &K);

};
%feature("shadow") GEOMAlgo_DataMapOfPassKeyShapeShape::~GEOMAlgo_DataMapOfPassKeyShapeShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_DataMapOfPassKeyShapeShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_WESScaler;
class GEOMAlgo_WESScaler : public GEOMAlgo_Algo {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_WESScaler();
		%feature("autodoc", "1");
		void SetScale(const Standard_Real aWES);
		%feature("autodoc", "1");
		Standard_Real Scale() const;
		%feature("autodoc", "1");
		void SetFace(const TopoDS_Face aF);
		%feature("autodoc", "1");
		const TopoDS_Face  Face() const;
		%feature("autodoc", "1");
		void SetEdges(const TopTools_ListOfShape &aLE);
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Edges() const;
		%feature("autodoc", "1");
		virtual		void Perform();
		%feature("autodoc", "1");
		const TopoDS_Face  FaceScaled() const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & EdgesScaled() const;
		%feature("autodoc", "1");
		const TopoDS_Shape  Image(const TopoDS_Shape aS) const;
		%feature("autodoc", "1");
		const TopoDS_Shape  Origin(const TopoDS_Shape aS) const;
		%feature("autodoc", "1");
		const GEOMAlgo_DataMapOfOrientedShapeShape & Images() const;
		%feature("autodoc", "1");
		const GEOMAlgo_DataMapOfOrientedShapeShape & Origins() const;

};
%feature("shadow") GEOMAlgo_WESScaler::~GEOMAlgo_WESScaler %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_WESScaler {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeShapeInfo;
class GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeShapeInfo : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeShapeInfo(const TopoDS_Shape K1, const Standard_Integer K2, const GEOMAlgo_ShapeInfo &I, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
		%feature("autodoc", "1");
		TopoDS_Shape  Key1() const;
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
		GEOMAlgo_ShapeInfo & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeShapeInfo {
	Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeShapeInfo GetHandle() {
	return *(Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeShapeInfo*) &$self;
	}
};
%extend GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeShapeInfo {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeShapeInfo::~GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeShapeInfo %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeShapeInfo {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_Splitter;
class GEOMAlgo_Splitter : public GEOMAlgo_Builder {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_Splitter();
		%feature("autodoc", "1");
		virtual		void Clear();
		%feature("autodoc", "1");
		virtual		void AddTool(const TopoDS_Shape theShape);
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Tools() const;
		%feature("autodoc", "1");
		void SetLimit(const TopAbs_ShapeEnum aLimit);
		%feature("autodoc", "1");
		TopAbs_ShapeEnum Limit() const;
		%feature("autodoc", "1");
		void SetLimitMode(const Standard_Integer aLimitMode);
		%feature("autodoc", "1");
		Standard_Integer LimitMode() const;
		%feature("autodoc", "1");
		void AddToolCompound(const TopoDS_Shape theShape);

};
%feature("shadow") GEOMAlgo_Splitter::~GEOMAlgo_Splitter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_Splitter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_ListOfCoupleOfShapes;
class GEOMAlgo_ListOfCoupleOfShapes {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_ListOfCoupleOfShapes();
		%feature("autodoc", "1");
		void Assign(const GEOMAlgo_ListOfCoupleOfShapes &Other);
		%feature("autodoc", "1");
		void operator=(const GEOMAlgo_ListOfCoupleOfShapes &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const GEOMAlgo_CoupleOfShapes &I);
		%feature("autodoc", "1");
		void Prepend(const GEOMAlgo_CoupleOfShapes &I, GEOMAlgo_ListIteratorOfListOfCoupleOfShapes & theIt);
		%feature("autodoc", "1");
		void Prepend(GEOMAlgo_ListOfCoupleOfShapes & Other);
		%feature("autodoc", "1");
		void Append(const GEOMAlgo_CoupleOfShapes &I);
		%feature("autodoc", "1");
		void Append(const GEOMAlgo_CoupleOfShapes &I, GEOMAlgo_ListIteratorOfListOfCoupleOfShapes & theIt);
		%feature("autodoc", "1");
		void Append(GEOMAlgo_ListOfCoupleOfShapes & Other);
		%feature("autodoc", "1");
		GEOMAlgo_CoupleOfShapes & First() const;
		%feature("autodoc", "1");
		GEOMAlgo_CoupleOfShapes & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(GEOMAlgo_ListIteratorOfListOfCoupleOfShapes & It);
		%feature("autodoc", "1");
		void InsertBefore(const GEOMAlgo_CoupleOfShapes &I, GEOMAlgo_ListIteratorOfListOfCoupleOfShapes & It);
		%feature("autodoc", "1");
		void InsertBefore(GEOMAlgo_ListOfCoupleOfShapes & Other, GEOMAlgo_ListIteratorOfListOfCoupleOfShapes & It);
		%feature("autodoc", "1");
		void InsertAfter(const GEOMAlgo_CoupleOfShapes &I, GEOMAlgo_ListIteratorOfListOfCoupleOfShapes & It);
		%feature("autodoc", "1");
		void InsertAfter(GEOMAlgo_ListOfCoupleOfShapes & Other, GEOMAlgo_ListIteratorOfListOfCoupleOfShapes & It);

};
%feature("shadow") GEOMAlgo_ListOfCoupleOfShapes::~GEOMAlgo_ListOfCoupleOfShapes %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_ListOfCoupleOfShapes {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_IndexedDataMapOfIntegerShape;
class GEOMAlgo_IndexedDataMapOfIntegerShape : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_IndexedDataMapOfIntegerShape(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		GEOMAlgo_IndexedDataMapOfIntegerShape & Assign(const GEOMAlgo_IndexedDataMapOfIntegerShape &Other);
		%feature("autodoc", "1");
		GEOMAlgo_IndexedDataMapOfIntegerShape & operator=(const GEOMAlgo_IndexedDataMapOfIntegerShape &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer Add(const Standard_Integer &K, const TopoDS_Shape I);
		%feature("autodoc", "1");
		void Substitute(const Standard_Integer I, const Standard_Integer &K, const TopoDS_Shape T);
		%feature("autodoc", "1");
		void RemoveLast();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		const Standard_Integer & FindKey(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const TopoDS_Shape  FindFromIndex(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const TopoDS_Shape  operator()(const Standard_Integer I) const;
		%feature("autodoc", "1");
		TopoDS_Shape  ChangeFromIndex(const Standard_Integer I);
		%feature("autodoc", "1");
		TopoDS_Shape  operator()(const Standard_Integer I);
		%feature("autodoc", "1");
		Standard_Integer FindIndex(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		const TopoDS_Shape  FindFromKey(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		TopoDS_Shape  ChangeFromKey(const Standard_Integer &K);

};
%feature("shadow") GEOMAlgo_IndexedDataMapOfIntegerShape::~GEOMAlgo_IndexedDataMapOfIntegerShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_IndexedDataMapOfIntegerShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_Tools3D;
class GEOMAlgo_Tools3D {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_Tools3D();
		%feature("autodoc", "1");
		static		Standard_Boolean IsSplitToReverse(const TopoDS_Shape theSplit, const TopoDS_Shape theShape, IntTools_Context & theContext);
		%feature("autodoc", "1");
		static		Standard_Boolean IsSplitToReverse(const TopoDS_Face theSplit, const TopoDS_Face theShape, IntTools_Context & theContext);
		%feature("autodoc", "1");
		static		Standard_Boolean IsSplitToReverse(const TopoDS_Edge theEdge, const TopoDS_Edge theSplit, IntTools_Context & theContext);
		%feature("autodoc", "1");
		static		Standard_Integer Sense(const TopoDS_Face theF1, const TopoDS_Face theF2);
		%feature("autodoc", "1");
		static		void CopyFace(const TopoDS_Face theF1, TopoDS_Face & theF2);
		%feature("autodoc", "1");
		static		void MakeContainer(const TopAbs_ShapeEnum theType, TopoDS_Shape & theShape);
		%feature("autodoc", "1");
		static		void MakeConnexityBlock(const TopTools_ListOfShape &theLS, const TopTools_IndexedMapOfShape &theMapAvoid, TopTools_ListOfShape & theLSCB);
		%feature("autodoc", "1");
		static		TopAbs_State ComputeStateByOnePoint(const TopoDS_Shape theShape, const TopoDS_Solid theSolid, const Standard_Real theTol, IntTools_Context & theContext);
		%feature("autodoc", "1");
		static		TopAbs_State ComputeState(const gp_Pnt thePoint, const TopoDS_Solid theSolid, const Standard_Real theTol, IntTools_Context & theContext);
		%feature("autodoc", "1");
		static		TopAbs_State ComputeState(const TopoDS_Vertex theVertex, const TopoDS_Solid theSolid, const Standard_Real theTol, IntTools_Context & theContext);
		%feature("autodoc", "1");
		static		TopAbs_State ComputeState(const TopoDS_Edge theEdge, const TopoDS_Solid theSolid, const Standard_Real theTol, IntTools_Context & theContext);
		%feature("autodoc", "1");
		static		TopAbs_State ComputeState(const TopoDS_Face theFace, const TopoDS_Solid theSolid, const Standard_Real theTol, const TopTools_IndexedMapOfShape &theBounds, IntTools_Context & theContext);
		%feature("autodoc", "1");
		static		Standard_Boolean IsInternalFace(const TopoDS_Face theFace, const TopoDS_Edge theEdge, const TopoDS_Face theFace1, const TopoDS_Face theFace2, IntTools_Context & theContext);
		%feature("autodoc", "1");
		static		Standard_Boolean IsInternalFace(const TopoDS_Face theFace, const TopoDS_Edge theEdge, const TopTools_ListOfShape &theLF, IntTools_Context & theContext);
		%feature("autodoc", "1");
		static		Standard_Boolean IsInternalFace(const TopoDS_Face theFace, const TopoDS_Solid theSolid, const TopTools_IndexedDataMapOfShapeListOfShape &theMEF, const Standard_Real theTol, IntTools_Context & theContext);
		%feature("autodoc", "1");
		static		void GetFaceOff(const TopoDS_Edge theEdge, const TopoDS_Face theFace, const NMTTools_ListOfCoupleOfShape &theLCEF, TopoDS_Face & theFaceOff);
		%feature("autodoc", "1");
		static		Standard_Boolean GetEdgeOnFace(const TopoDS_Edge theEdge, const TopoDS_Face theFace, TopoDS_Edge & theEdgeOnF);
		%feature("autodoc", "1");
		static		Standard_Boolean GetEdgeOff(const TopoDS_Edge theEdge, const TopoDS_Face theFace, TopoDS_Edge & theEdgeOff);

};
%feature("shadow") GEOMAlgo_Tools3D::~GEOMAlgo_Tools3D %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_Tools3D {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_VertexSolid;
class GEOMAlgo_VertexSolid : public GEOMAlgo_ShapeSolid {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_VertexSolid();
		%feature("autodoc", "1");
		virtual		void Perform();

};
%feature("shadow") GEOMAlgo_VertexSolid::~GEOMAlgo_VertexSolid %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_VertexSolid {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_GlueAnalyser;
class GEOMAlgo_GlueAnalyser : public GEOMAlgo_Gluer {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_GlueAnalyser();
		%feature("autodoc", "1");
		virtual		void Perform();
		%feature("autodoc", "1");
		Standard_Boolean HasSolidsToGlue() const;
		%feature("autodoc", "1");
		const GEOMAlgo_ListOfCoupleOfShapes & SolidsToGlue() const;
		%feature("autodoc", "1");
		Standard_Boolean HasSolidsAlone() const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & SolidsAlone() const;

};
%feature("shadow") GEOMAlgo_GlueAnalyser::~GEOMAlgo_GlueAnalyser %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_GlueAnalyser {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_StateCollector;
class GEOMAlgo_StateCollector {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_StateCollector();
		%feature("autodoc", "1");
		Standard_Boolean AppendState(const TopAbs_State aSt);
		%feature("autodoc", "1");
		TopAbs_State State() const;

};
%feature("shadow") GEOMAlgo_StateCollector::~GEOMAlgo_StateCollector %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_StateCollector {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape;
class GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape(const Standard_Integer &K1, const Standard_Integer K2, const TopoDS_Shape I, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetKey1() {
				return (Standard_Integer) $self->Key1();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetKey1(Standard_Integer value ) {
				$self->Key1()=value;
				}
		};
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
		TopoDS_Shape  Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape {
	Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape GetHandle() {
	return *(Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape*) &$self;
	}
};
%extend GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape::~GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_FinderShapeOnQuad;
class GEOMAlgo_FinderShapeOnQuad : public GEOMAlgo_FinderShapeOn1 {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_FinderShapeOnQuad(const gp_Pnt theTopLeftPoint, const gp_Pnt theTopRigthPoint, const gp_Pnt theBottomLeftPoint, const gp_Pnt theBottomRigthPoint);

};
%feature("shadow") GEOMAlgo_FinderShapeOnQuad::~GEOMAlgo_FinderShapeOnQuad %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_FinderShapeOnQuad {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_ShapeSet;
class GEOMAlgo_ShapeSet {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_ShapeSet();
		%feature("autodoc", "1");
		void Add(const TopTools_ListOfShape &theLS);
		%feature("autodoc", "1");
		void Add(const TopoDS_Shape theShape);
		%feature("autodoc", "1");
		void Add(const TopoDS_Shape theShape, const TopAbs_ShapeEnum theType);
		%feature("autodoc", "1");
		void Subtract(const GEOMAlgo_ShapeSet &theSet);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const GEOMAlgo_ShapeSet &theSet) const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & GetSet() const;

};
%feature("shadow") GEOMAlgo_ShapeSet::~GEOMAlgo_ShapeSet %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_ShapeSet {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_IndexedDataMapOfPassKeyListOfShape;
class GEOMAlgo_IndexedDataMapOfPassKeyListOfShape : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_IndexedDataMapOfPassKeyListOfShape(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		GEOMAlgo_IndexedDataMapOfPassKeyListOfShape & Assign(const GEOMAlgo_IndexedDataMapOfPassKeyListOfShape &Other);
		%feature("autodoc", "1");
		GEOMAlgo_IndexedDataMapOfPassKeyListOfShape & operator=(const GEOMAlgo_IndexedDataMapOfPassKeyListOfShape &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer Add(const GEOMAlgo_PassKey &K, const TopTools_ListOfShape &I);
		%feature("autodoc", "1");
		void Substitute(const Standard_Integer I, const GEOMAlgo_PassKey &K, const TopTools_ListOfShape &T);
		%feature("autodoc", "1");
		void RemoveLast();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const GEOMAlgo_PassKey &K) const;
		%feature("autodoc", "1");
		const GEOMAlgo_PassKey & FindKey(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & FindFromIndex(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & operator()(const Standard_Integer I) const;
		%feature("autodoc", "1");
		TopTools_ListOfShape & ChangeFromIndex(const Standard_Integer I);
		%feature("autodoc", "1");
		TopTools_ListOfShape & operator()(const Standard_Integer I);
		%feature("autodoc", "1");
		Standard_Integer FindIndex(const GEOMAlgo_PassKey &K) const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & FindFromKey(const GEOMAlgo_PassKey &K) const;
		%feature("autodoc", "1");
		TopTools_ListOfShape & ChangeFromKey(const GEOMAlgo_PassKey &K);

};
%feature("shadow") GEOMAlgo_IndexedDataMapOfPassKeyListOfShape::~GEOMAlgo_IndexedDataMapOfPassKeyListOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_IndexedDataMapOfPassKeyListOfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_DataMapIteratorOfDataMapOfRealListOfShape;
class GEOMAlgo_DataMapIteratorOfDataMapOfRealListOfShape : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_DataMapIteratorOfDataMapOfRealListOfShape();
		%feature("autodoc", "1");
		GEOMAlgo_DataMapIteratorOfDataMapOfRealListOfShape(const GEOMAlgo_DataMapOfRealListOfShape &aMap);
		%feature("autodoc", "1");
		void Initialize(const GEOMAlgo_DataMapOfRealListOfShape &aMap);
		%feature("autodoc", "1");
		const Standard_Real & Key() const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Value() const;

};
%feature("shadow") GEOMAlgo_DataMapIteratorOfDataMapOfRealListOfShape::~GEOMAlgo_DataMapIteratorOfDataMapOfRealListOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_DataMapIteratorOfDataMapOfRealListOfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_ShapeInfoFiller;
class GEOMAlgo_ShapeInfoFiller : public GEOMAlgo_Algo {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_ShapeInfoFiller();
		%feature("autodoc", "1");
		void SetShape(const TopoDS_Shape aS);
		%feature("autodoc", "1");
		const TopoDS_Shape  Shape() const;
		%feature("autodoc", "1");
		void SetTolerance(const Standard_Real aT);
		%feature("autodoc", "1");
		Standard_Real Tolerance() const;
		%feature("autodoc", "1");
		const GEOMAlgo_ShapeInfo & Info() const;
		%feature("autodoc", "1");
		const GEOMAlgo_ShapeInfo & Info(const TopoDS_Shape aS) const;
		%feature("autodoc", "1");
		virtual		void Perform();

};
%feature("shadow") GEOMAlgo_ShapeInfoFiller::~GEOMAlgo_ShapeInfoFiller %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_ShapeInfoFiller {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_DataMapIteratorOfDataMapOfPassKeyShapeShape;
class GEOMAlgo_DataMapIteratorOfDataMapOfPassKeyShapeShape : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_DataMapIteratorOfDataMapOfPassKeyShapeShape();
		%feature("autodoc", "1");
		GEOMAlgo_DataMapIteratorOfDataMapOfPassKeyShapeShape(const GEOMAlgo_DataMapOfPassKeyShapeShape &aMap);
		%feature("autodoc", "1");
		void Initialize(const GEOMAlgo_DataMapOfPassKeyShapeShape &aMap);
		%feature("autodoc", "1");
		const GEOMAlgo_PassKeyShape & Key() const;
		%feature("autodoc", "1");
		const TopoDS_Shape  Value() const;

};
%feature("shadow") GEOMAlgo_DataMapIteratorOfDataMapOfPassKeyShapeShape::~GEOMAlgo_DataMapIteratorOfDataMapOfPassKeyShapeShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_DataMapIteratorOfDataMapOfPassKeyShapeShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyShapeListOfShape;
class GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyShapeListOfShape : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyShapeListOfShape(const GEOMAlgo_PassKeyShape &K1, const Standard_Integer K2, const TopTools_ListOfShape &I, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
		%feature("autodoc", "1");
		GEOMAlgo_PassKeyShape & Key1() const;
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
		TopTools_ListOfShape & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyShapeListOfShape {
	Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyShapeListOfShape GetHandle() {
	return *(Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyShapeListOfShape*) &$self;
	}
};
%extend GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyShapeListOfShape {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyShapeListOfShape::~GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyShapeListOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyShapeListOfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_IndexedDataMapOfShapeShapeInfo;
class GEOMAlgo_IndexedDataMapOfShapeShapeInfo : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_IndexedDataMapOfShapeShapeInfo(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		GEOMAlgo_IndexedDataMapOfShapeShapeInfo & Assign(const GEOMAlgo_IndexedDataMapOfShapeShapeInfo &Other);
		%feature("autodoc", "1");
		GEOMAlgo_IndexedDataMapOfShapeShapeInfo & operator=(const GEOMAlgo_IndexedDataMapOfShapeShapeInfo &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer Add(const TopoDS_Shape K, const GEOMAlgo_ShapeInfo &I);
		%feature("autodoc", "1");
		void Substitute(const Standard_Integer I, const TopoDS_Shape K, const GEOMAlgo_ShapeInfo &T);
		%feature("autodoc", "1");
		void RemoveLast();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		const TopoDS_Shape  FindKey(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const GEOMAlgo_ShapeInfo & FindFromIndex(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const GEOMAlgo_ShapeInfo & operator()(const Standard_Integer I) const;
		%feature("autodoc", "1");
		GEOMAlgo_ShapeInfo & ChangeFromIndex(const Standard_Integer I);
		%feature("autodoc", "1");
		GEOMAlgo_ShapeInfo & operator()(const Standard_Integer I);
		%feature("autodoc", "1");
		Standard_Integer FindIndex(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		const GEOMAlgo_ShapeInfo & FindFromKey(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		GEOMAlgo_ShapeInfo & ChangeFromKey(const TopoDS_Shape K);

};
%feature("shadow") GEOMAlgo_IndexedDataMapOfShapeShapeInfo::~GEOMAlgo_IndexedDataMapOfShapeShapeInfo %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_IndexedDataMapOfShapeShapeInfo {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_DataMapIteratorOfDataMapOfPassKeyInteger;
class GEOMAlgo_DataMapIteratorOfDataMapOfPassKeyInteger : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_DataMapIteratorOfDataMapOfPassKeyInteger();
		%feature("autodoc", "1");
		GEOMAlgo_DataMapIteratorOfDataMapOfPassKeyInteger(const GEOMAlgo_DataMapOfPassKeyInteger &aMap);
		%feature("autodoc", "1");
		void Initialize(const GEOMAlgo_DataMapOfPassKeyInteger &aMap);
		%feature("autodoc", "1");
		const GEOMAlgo_PassKey & Key() const;
		%feature("autodoc", "1");
		const Standard_Integer & Value() const;

};
%feature("shadow") GEOMAlgo_DataMapIteratorOfDataMapOfPassKeyInteger::~GEOMAlgo_DataMapIteratorOfDataMapOfPassKeyInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_DataMapIteratorOfDataMapOfPassKeyInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_SolidSolid;
class GEOMAlgo_SolidSolid : public GEOMAlgo_ShellSolid {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_SolidSolid();
		%feature("autodoc", "1");
		virtual		void Perform();
		%feature("autodoc", "1");
		void SetShape2(const TopoDS_Shape aS);
		%feature("autodoc", "1");
		const TopoDS_Shape  Shape2() const;

};
%feature("shadow") GEOMAlgo_SolidSolid::~GEOMAlgo_SolidSolid %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_SolidSolid {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_WESCorrector;
class GEOMAlgo_WESCorrector : public GEOMAlgo_Algo {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_WESCorrector();
		%feature("autodoc", "1");
		void SetWES(const GEOMAlgo_WireEdgeSet &aWES);
		%feature("autodoc", "1");
		virtual		void Perform();
		%feature("autodoc", "1");
		GEOMAlgo_WireEdgeSet & WES();
		%feature("autodoc", "1");
		GEOMAlgo_WireEdgeSet & NewWES();

};
%feature("shadow") GEOMAlgo_WESCorrector::~GEOMAlgo_WESCorrector %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_WESCorrector {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_DataMapIteratorOfDataMapOfOrientedShapeShape;
class GEOMAlgo_DataMapIteratorOfDataMapOfOrientedShapeShape : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_DataMapIteratorOfDataMapOfOrientedShapeShape();
		%feature("autodoc", "1");
		GEOMAlgo_DataMapIteratorOfDataMapOfOrientedShapeShape(const GEOMAlgo_DataMapOfOrientedShapeShape &aMap);
		%feature("autodoc", "1");
		void Initialize(const GEOMAlgo_DataMapOfOrientedShapeShape &aMap);
		%feature("autodoc", "1");
		const TopoDS_Shape  Key() const;
		%feature("autodoc", "1");
		const TopoDS_Shape  Value() const;

};
%feature("shadow") GEOMAlgo_DataMapIteratorOfDataMapOfOrientedShapeShape::~GEOMAlgo_DataMapIteratorOfDataMapOfOrientedShapeShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_DataMapIteratorOfDataMapOfOrientedShapeShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_DataMapIteratorOfDataMapOfShapeReal;
class GEOMAlgo_DataMapIteratorOfDataMapOfShapeReal : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_DataMapIteratorOfDataMapOfShapeReal();
		%feature("autodoc", "1");
		GEOMAlgo_DataMapIteratorOfDataMapOfShapeReal(const GEOMAlgo_DataMapOfShapeReal &aMap);
		%feature("autodoc", "1");
		void Initialize(const GEOMAlgo_DataMapOfShapeReal &aMap);
		%feature("autodoc", "1");
		const TopoDS_Shape  Key() const;
		%feature("autodoc", "1");
		const Standard_Real & Value() const;

};
%feature("shadow") GEOMAlgo_DataMapIteratorOfDataMapOfShapeReal::~GEOMAlgo_DataMapIteratorOfDataMapOfShapeReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_DataMapIteratorOfDataMapOfShapeReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_FinderShapeOn2;
class GEOMAlgo_FinderShapeOn2 : public GEOMAlgo_ShapeAlgo {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_FinderShapeOn2();
		%feature("autodoc", "1");
		void SetClsf(const Handle_GEOMAlgo_Clsf &aClsf);
		%feature("autodoc", "1");
		const Handle_GEOMAlgo_Clsf & Clsf() const;
		%feature("autodoc", "1");
		void SetShapeType(const TopAbs_ShapeEnum aST);
		%feature("autodoc", "1");
		TopAbs_ShapeEnum ShapeType() const;
		%feature("autodoc", "1");
		void SetState(const GEOMAlgo_State aSF);
		%feature("autodoc", "1");
		GEOMAlgo_State State() const;
		%feature("autodoc", "1");
		void SetNbPntsMin(const Standard_Integer aNb);
		%feature("autodoc", "1");
		Standard_Integer NbPntsMin() const;
		%feature("autodoc", "1");
		void SetNbPntsMax(const Standard_Integer aNb);
		%feature("autodoc", "1");
		Standard_Integer NbPntsMax() const;
		%feature("autodoc", "1");
		virtual		void Perform();
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Shapes() const;
		%feature("autodoc", "1");
		const GEOMAlgo_IndexedDataMapOfShapeState & MSS() const;

};
%feature("shadow") GEOMAlgo_FinderShapeOn2::~GEOMAlgo_FinderShapeOn2 %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_FinderShapeOn2 {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_Tools;
class GEOMAlgo_Tools {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_Tools();
		%feature("autodoc", "1");
		static		Standard_Boolean IsCompositeShape(const TopoDS_Shape aS);
		%feature("autodoc", "1");
		static		Standard_Integer RefineSDShapes(GEOMAlgo_IndexedDataMapOfPassKeyShapeListOfShape & aMSD, const Standard_Real aTol, IntTools_Context & aCtx);
		%feature("autodoc", "1");
		static		Standard_Integer FindSDShapes(const TopTools_ListOfShape &aLE, const Standard_Real aTol, TopTools_IndexedDataMapOfShapeListOfShape & aMEE, IntTools_Context & aCtx);
		%feature("autodoc", "1");
		static		Standard_Integer FindSDShapes(const TopoDS_Shape aE1, const TopTools_ListOfShape &aLE, const Standard_Real aTol, TopTools_ListOfShape & aLESD, IntTools_Context & aCtx);
		%feature("autodoc", "1");
		static		Standard_Boolean ProjectPointOnShape(const gp_Pnt aP1, const TopoDS_Shape aS, gp_Pnt & aP2, IntTools_Context & aCtx);
		%feature("autodoc", "1");
		static		void PointOnShape(const TopoDS_Shape aS, gp_Pnt & aP3D);
		%feature("autodoc", "1");
		static		void PointOnEdge(const TopoDS_Edge aE, gp_Pnt & aP3D);
		%feature("autodoc", "1");
		static		void PointOnEdge(const TopoDS_Edge aE, const Standard_Real aT, gp_Pnt & aP3D);
		%feature("autodoc", "1");
		static		void PointOnFace(const TopoDS_Face aF, gp_Pnt & aP3D);
		%feature("autodoc", "1");
		static		void PointOnFace(const TopoDS_Face aF, const Standard_Real aU, const Standard_Real aV, gp_Pnt & aP3D);
		%feature("autodoc", "1");
		static		void RefinePCurveForEdgeOnFace(const TopoDS_Edge aE, const TopoDS_Face aF, const Standard_Real aU1, const Standard_Real aU2);
		%feature("autodoc", "1");
		static		Standard_Boolean IsUPeriodic(const Handle_Geom_Surface &aS);
		%feature("autodoc", "1");
		static		Standard_Boolean CorrectWires(const TopoDS_Shape aS);

};
%feature("shadow") GEOMAlgo_Tools::~GEOMAlgo_Tools %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_Tools {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_ClsfSurf;
class GEOMAlgo_ClsfSurf : public GEOMAlgo_Clsf {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_ClsfSurf();
		%feature("autodoc", "1");
		void SetSurface(const Handle_Geom_Surface &aS);
		%feature("autodoc", "1");
		const Handle_Geom_Surface & Surface() const;
		%feature("autodoc", "1");
		virtual		void Perform();
		%feature("autodoc", "1");
		virtual		void CheckData();
		%feature("autodoc", "1");
		virtual		Standard_Boolean CanBeON(const Handle_Geom_Curve &aC) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean CanBeON(const Handle_Geom_Surface &aST) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GEOMAlgo_ClsfSurf {
	Handle_GEOMAlgo_ClsfSurf GetHandle() {
	return *(Handle_GEOMAlgo_ClsfSurf*) &$self;
	}
};
%extend GEOMAlgo_ClsfSurf {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") GEOMAlgo_ClsfSurf::~GEOMAlgo_ClsfSurf %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_ClsfSurf {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_ClsfSolid;
class GEOMAlgo_ClsfSolid : public GEOMAlgo_Clsf {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_ClsfSolid();
		%feature("autodoc", "1");
		void SetShape(const TopoDS_Shape aS);
		%feature("autodoc", "1");
		const TopoDS_Shape  Shape() const;
		%feature("autodoc", "1");
		virtual		void Perform();
		%feature("autodoc", "1");
		virtual		void CheckData();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GEOMAlgo_ClsfSolid {
	Handle_GEOMAlgo_ClsfSolid GetHandle() {
	return *(Handle_GEOMAlgo_ClsfSolid*) &$self;
	}
};
%extend GEOMAlgo_ClsfSolid {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") GEOMAlgo_ClsfSolid::~GEOMAlgo_ClsfSolid %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_ClsfSolid {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_IndexedDataMapOfShapeState;
class GEOMAlgo_IndexedDataMapOfShapeState : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_IndexedDataMapOfShapeState(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		GEOMAlgo_IndexedDataMapOfShapeState & Assign(const GEOMAlgo_IndexedDataMapOfShapeState &Other);
		%feature("autodoc", "1");
		GEOMAlgo_IndexedDataMapOfShapeState & operator=(const GEOMAlgo_IndexedDataMapOfShapeState &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer Add(const TopoDS_Shape K, const TopAbs_State &I);
		%feature("autodoc", "1");
		void Substitute(const Standard_Integer I, const TopoDS_Shape K, const TopAbs_State &T);
		%feature("autodoc", "1");
		void RemoveLast();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		const TopoDS_Shape  FindKey(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const TopAbs_State & FindFromIndex(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const TopAbs_State & operator()(const Standard_Integer I) const;
		%feature("autodoc", "1");
		TopAbs_State & ChangeFromIndex(const Standard_Integer I);
		%feature("autodoc", "1");
		TopAbs_State & operator()(const Standard_Integer I);
		%feature("autodoc", "1");
		Standard_Integer FindIndex(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		const TopAbs_State & FindFromKey(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		TopAbs_State & ChangeFromKey(const TopoDS_Shape K);

};
%feature("shadow") GEOMAlgo_IndexedDataMapOfShapeState::~GEOMAlgo_IndexedDataMapOfShapeState %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_IndexedDataMapOfShapeState {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_PassKeyMapHasher;
class GEOMAlgo_PassKeyMapHasher {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_PassKeyMapHasher();
		%feature("autodoc", "1");
		static		Standard_Integer HashCode(const GEOMAlgo_PassKey &aPKey, const Standard_Integer Upper);
		%feature("autodoc", "1");
		static		Standard_Boolean IsEqual(const GEOMAlgo_PassKey &aPKey1, const GEOMAlgo_PassKey &aPKey2);

};
%feature("shadow") GEOMAlgo_PassKeyMapHasher::~GEOMAlgo_PassKeyMapHasher %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_PassKeyMapHasher {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_PassKeyShape;
class GEOMAlgo_PassKeyShape {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_PassKeyShape();
		%feature("autodoc", "1");
		GEOMAlgo_PassKeyShape(const GEOMAlgo_PassKeyShape &Other);
		%feature("autodoc", "1");
		GEOMAlgo_PassKeyShape & Assign(const GEOMAlgo_PassKeyShape &Other);
		%feature("autodoc", "1");
		GEOMAlgo_PassKeyShape & operator=(const GEOMAlgo_PassKeyShape &Other);
		%feature("autodoc", "1");
		void SetShapes(const TopoDS_Shape aS);
		%feature("autodoc", "1");
		void SetShapes(const TopoDS_Shape aS1, const TopoDS_Shape aS2);
		%feature("autodoc", "1");
		void SetShapes(const TopoDS_Shape aS1, const TopoDS_Shape aS2, const TopoDS_Shape aS3);
		%feature("autodoc", "1");
		void SetShapes(const TopoDS_Shape aS1, const TopoDS_Shape aS2, const TopoDS_Shape aS3, const TopoDS_Shape aS4);
		%feature("autodoc", "1");
		void SetShapes(const TopTools_ListOfShape &aLS);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer NbIds() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const GEOMAlgo_PassKeyShape &aOther) const;
		%feature("autodoc", "1");
		Standard_Integer HashCode(const Standard_Integer Upper) const;
		%feature("autodoc", "1");
		void Dump(const Standard_Integer aHex=0) const;

};
%extend GEOMAlgo_PassKeyShape {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") GEOMAlgo_PassKeyShape::~GEOMAlgo_PassKeyShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_PassKeyShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape;
class GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape(const Standard_Real &K, const TopTools_ListOfShape &I, const TCollection_MapNodePtr &n);
		%feature("autodoc","1");
		%extend {
				Standard_Real GetKey() {
				return (Standard_Real) $self->Key();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetKey(Standard_Real value ) {
				$self->Key()=value;
				}
		};
		%feature("autodoc", "1");
		TopTools_ListOfShape & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape {
	Handle_GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape GetHandle() {
	return *(Handle_GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape*) &$self;
	}
};
%extend GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape::~GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_DataMapOfShapeReal;
class GEOMAlgo_DataMapOfShapeReal : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_DataMapOfShapeReal(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		GEOMAlgo_DataMapOfShapeReal & Assign(const GEOMAlgo_DataMapOfShapeReal &Other);
		%feature("autodoc", "1");
		GEOMAlgo_DataMapOfShapeReal & operator=(const GEOMAlgo_DataMapOfShapeReal &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TopoDS_Shape K, const Standard_Real &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TopoDS_Shape K);
		%feature("autodoc", "1");
		const Standard_Real & Find(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		const Standard_Real & operator()(const TopoDS_Shape K) const;
		%feature("autodoc","1");
		%extend {
				Standard_Real GetChangeFind(const TopoDS_Shape K) {
				return (Standard_Real) $self->ChangeFind(K);
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetChangeFind(Standard_Real value ,const TopoDS_Shape K) {
				$self->ChangeFind(K)=value;
				}
		};
		%feature("autodoc", "1");
		Standard_Real & operator()(const TopoDS_Shape K);

};
%feature("shadow") GEOMAlgo_DataMapOfShapeReal::~GEOMAlgo_DataMapOfShapeReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_DataMapOfShapeReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_ListIteratorOfListOfPnt;
class GEOMAlgo_ListIteratorOfListOfPnt {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_ListIteratorOfListOfPnt();
		%feature("autodoc", "1");
		GEOMAlgo_ListIteratorOfListOfPnt(const GEOMAlgo_ListOfPnt &L);
		%feature("autodoc", "1");
		void Initialize(const GEOMAlgo_ListOfPnt &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		gp_Pnt  Value() const;

};
%feature("shadow") GEOMAlgo_ListIteratorOfListOfPnt::~GEOMAlgo_ListIteratorOfListOfPnt %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_ListIteratorOfListOfPnt {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_WireSolid;
class GEOMAlgo_WireSolid : public GEOMAlgo_ShapeSolid {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_WireSolid();
		%feature("autodoc", "1");
		virtual		void Perform();

};
%feature("shadow") GEOMAlgo_WireSolid::~GEOMAlgo_WireSolid %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_WireSolid {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger;
class GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger(const GEOMAlgo_PassKey &K, const Standard_Integer &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		GEOMAlgo_PassKey & Key() const;
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetValue() {
				return (Standard_Integer) $self->Value();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetValue(Standard_Integer value ) {
				$self->Value()=value;
				}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger {
	Handle_GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger GetHandle() {
	return *(Handle_GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger*) &$self;
	}
};
%extend GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger::~GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_BuilderTools;
class GEOMAlgo_BuilderTools {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_BuilderTools();
		%feature("autodoc", "1");
		static		Standard_Boolean IsHole(const TopoDS_Shape aW, const TopoDS_Shape aF);
		%feature("autodoc", "1");
		static		Standard_Boolean IsHole(const TopoDS_Shape aShell);

};
%feature("shadow") GEOMAlgo_BuilderTools::~GEOMAlgo_BuilderTools %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_BuilderTools {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_ListNodeOfListOfCoupleOfShapes;
class GEOMAlgo_ListNodeOfListOfCoupleOfShapes : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_ListNodeOfListOfCoupleOfShapes(const GEOMAlgo_CoupleOfShapes &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		GEOMAlgo_CoupleOfShapes & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GEOMAlgo_ListNodeOfListOfCoupleOfShapes {
	Handle_GEOMAlgo_ListNodeOfListOfCoupleOfShapes GetHandle() {
	return *(Handle_GEOMAlgo_ListNodeOfListOfCoupleOfShapes*) &$self;
	}
};
%extend GEOMAlgo_ListNodeOfListOfCoupleOfShapes {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") GEOMAlgo_ListNodeOfListOfCoupleOfShapes::~GEOMAlgo_ListNodeOfListOfCoupleOfShapes %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_ListNodeOfListOfCoupleOfShapes {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_IndexedDataMapOfPassKeyShapeListOfShape;
class GEOMAlgo_IndexedDataMapOfPassKeyShapeListOfShape : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_IndexedDataMapOfPassKeyShapeListOfShape(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		GEOMAlgo_IndexedDataMapOfPassKeyShapeListOfShape & Assign(const GEOMAlgo_IndexedDataMapOfPassKeyShapeListOfShape &Other);
		%feature("autodoc", "1");
		GEOMAlgo_IndexedDataMapOfPassKeyShapeListOfShape & operator=(const GEOMAlgo_IndexedDataMapOfPassKeyShapeListOfShape &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer Add(const GEOMAlgo_PassKeyShape &K, const TopTools_ListOfShape &I);
		%feature("autodoc", "1");
		void Substitute(const Standard_Integer I, const GEOMAlgo_PassKeyShape &K, const TopTools_ListOfShape &T);
		%feature("autodoc", "1");
		void RemoveLast();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const GEOMAlgo_PassKeyShape &K) const;
		%feature("autodoc", "1");
		const GEOMAlgo_PassKeyShape & FindKey(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & FindFromIndex(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & operator()(const Standard_Integer I) const;
		%feature("autodoc", "1");
		TopTools_ListOfShape & ChangeFromIndex(const Standard_Integer I);
		%feature("autodoc", "1");
		TopTools_ListOfShape & operator()(const Standard_Integer I);
		%feature("autodoc", "1");
		Standard_Integer FindIndex(const GEOMAlgo_PassKeyShape &K) const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & FindFromKey(const GEOMAlgo_PassKeyShape &K) const;
		%feature("autodoc", "1");
		TopTools_ListOfShape & ChangeFromKey(const GEOMAlgo_PassKeyShape &K);

};
%feature("shadow") GEOMAlgo_IndexedDataMapOfPassKeyShapeListOfShape::~GEOMAlgo_IndexedDataMapOfPassKeyShapeListOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_IndexedDataMapOfPassKeyShapeListOfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_DataMapNodeOfDataMapOfOrientedShapeShape;
class GEOMAlgo_DataMapNodeOfDataMapOfOrientedShapeShape : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_DataMapNodeOfDataMapOfOrientedShapeShape(const TopoDS_Shape K, const TopoDS_Shape I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Shape  Key() const;
		%feature("autodoc", "1");
		TopoDS_Shape  Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GEOMAlgo_DataMapNodeOfDataMapOfOrientedShapeShape {
	Handle_GEOMAlgo_DataMapNodeOfDataMapOfOrientedShapeShape GetHandle() {
	return *(Handle_GEOMAlgo_DataMapNodeOfDataMapOfOrientedShapeShape*) &$self;
	}
};
%extend GEOMAlgo_DataMapNodeOfDataMapOfOrientedShapeShape {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") GEOMAlgo_DataMapNodeOfDataMapOfOrientedShapeShape::~GEOMAlgo_DataMapNodeOfDataMapOfOrientedShapeShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_DataMapNodeOfDataMapOfOrientedShapeShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_WireEdgeSet;
class GEOMAlgo_WireEdgeSet {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_WireEdgeSet();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void SetFace(const TopoDS_Face aF);
		%feature("autodoc", "1");
		const TopoDS_Face  Face() const;
		%feature("autodoc", "1");
		void AddStartElement(const TopoDS_Shape sS);
		%feature("autodoc", "1");
		const TopTools_ListOfShape & StartElements() const;
		%feature("autodoc", "1");
		void AddShape(const TopoDS_Shape sS);
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Shapes() const;

};
%feature("shadow") GEOMAlgo_WireEdgeSet::~GEOMAlgo_WireEdgeSet %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_WireEdgeSet {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox;
class GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox(const TopoDS_Shape K1, const Standard_Integer K2, const Bnd_Box &I, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
		%feature("autodoc", "1");
		TopoDS_Shape  Key1() const;
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
		Bnd_Box & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox {
	Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox GetHandle() {
	return *(Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox*) &$self;
	}
};
%extend GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox::~GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_DataMapOfPassKeyInteger;
class GEOMAlgo_DataMapOfPassKeyInteger : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_DataMapOfPassKeyInteger(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		GEOMAlgo_DataMapOfPassKeyInteger & Assign(const GEOMAlgo_DataMapOfPassKeyInteger &Other);
		%feature("autodoc", "1");
		GEOMAlgo_DataMapOfPassKeyInteger & operator=(const GEOMAlgo_DataMapOfPassKeyInteger &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const GEOMAlgo_PassKey &K, const Standard_Integer &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const GEOMAlgo_PassKey &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const GEOMAlgo_PassKey &K);
		%feature("autodoc", "1");
		const Standard_Integer & Find(const GEOMAlgo_PassKey &K) const;
		%feature("autodoc", "1");
		const Standard_Integer & operator()(const GEOMAlgo_PassKey &K) const;
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetChangeFind(const GEOMAlgo_PassKey &K) {
				return (Standard_Integer) $self->ChangeFind(K);
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetChangeFind(Standard_Integer value ,const GEOMAlgo_PassKey &K) {
				$self->ChangeFind(K)=value;
				}
		};
		%feature("autodoc", "1");
		Standard_Integer & operator()(const GEOMAlgo_PassKey &K);

};
%feature("shadow") GEOMAlgo_DataMapOfPassKeyInteger::~GEOMAlgo_DataMapOfPassKeyInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_DataMapOfPassKeyInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_SurfaceTools;
class GEOMAlgo_SurfaceTools {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_SurfaceTools();
		%feature("autodoc", "1");
		static		Standard_Boolean IsAnalytic(const Handle_Geom_Surface &aS);
		%feature("autodoc", "1");
		static		Standard_Boolean IsCoaxial(const gp_Pnt aP1, const gp_Pnt aP2, const gp_Cylinder aCyl, const Standard_Real aTol);
		%feature("autodoc", "1");
		static		Standard_Boolean IsConformState(const TopAbs_State aST1, const GEOMAlgo_State aST2);
		%feature("autodoc", "1");
		static		Standard_Integer GetState(const gp_Pnt aP, const GeomAdaptor_Surface &aS, const Standard_Real aTol, TopAbs_State & aSt);
		%feature("autodoc", "1");
		static		Standard_Integer GetState(const gp_Pnt aP, const Handle_Geom_Surface &aS, const Standard_Real aTol, TopAbs_State & aSt);
		%feature("autodoc", "1");
		static		Standard_Real Distance(const gp_Pnt aP, const gp_Pln aPln);
		%feature("autodoc", "1");
		static		Standard_Real Distance(const gp_Pnt aP, const gp_Cylinder aCyl);
		%feature("autodoc", "1");
		static		Standard_Real Distance(const gp_Pnt aP, const gp_Sphere aSph);
		%feature("autodoc", "1");
		static		TopAbs_State ReverseState(const TopAbs_State aSt);

};
%feature("shadow") GEOMAlgo_SurfaceTools::~GEOMAlgo_SurfaceTools %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_SurfaceTools {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_CoupleOfShapes;
class GEOMAlgo_CoupleOfShapes {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_CoupleOfShapes();
		%feature("autodoc", "1");
		void SetShapes(const TopoDS_Shape aS1, const TopoDS_Shape aS2);
		%feature("autodoc", "1");
		void SetShape1(const TopoDS_Shape aS1);
		%feature("autodoc", "1");
		void SetShape2(const TopoDS_Shape aS2);
		%feature("autodoc", "1");
		void Shapes(TopoDS_Shape & aS1, TopoDS_Shape & aS2) const;
		%feature("autodoc", "1");
		const TopoDS_Shape  Shape1() const;
		%feature("autodoc", "1");
		const TopoDS_Shape  Shape2() const;

};
%feature("shadow") GEOMAlgo_CoupleOfShapes::~GEOMAlgo_CoupleOfShapes %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_CoupleOfShapes {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_DataMapOfRealListOfShape;
class GEOMAlgo_DataMapOfRealListOfShape : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_DataMapOfRealListOfShape(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		GEOMAlgo_DataMapOfRealListOfShape & Assign(const GEOMAlgo_DataMapOfRealListOfShape &Other);
		%feature("autodoc", "1");
		GEOMAlgo_DataMapOfRealListOfShape & operator=(const GEOMAlgo_DataMapOfRealListOfShape &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Standard_Real &K, const TopTools_ListOfShape &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Standard_Real &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Standard_Real &K);
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Find(const Standard_Real &K) const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & operator()(const Standard_Real &K) const;
		%feature("autodoc", "1");
		TopTools_ListOfShape & ChangeFind(const Standard_Real &K);
		%feature("autodoc", "1");
		TopTools_ListOfShape & operator()(const Standard_Real &K);

};
%feature("shadow") GEOMAlgo_DataMapOfRealListOfShape::~GEOMAlgo_DataMapOfRealListOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_DataMapOfRealListOfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_ListNodeOfListOfPnt;
class GEOMAlgo_ListNodeOfListOfPnt : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_ListNodeOfListOfPnt(const gp_Pnt I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		gp_Pnt  Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GEOMAlgo_ListNodeOfListOfPnt {
	Handle_GEOMAlgo_ListNodeOfListOfPnt GetHandle() {
	return *(Handle_GEOMAlgo_ListNodeOfListOfPnt*) &$self;
	}
};
%extend GEOMAlgo_ListNodeOfListOfPnt {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") GEOMAlgo_ListNodeOfListOfPnt::~GEOMAlgo_ListNodeOfListOfPnt %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_ListNodeOfListOfPnt {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_PassKey;
class GEOMAlgo_PassKey {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_PassKey();
		%feature("autodoc", "1");
		GEOMAlgo_PassKey(const GEOMAlgo_PassKey &Other);
		%feature("autodoc", "1");
		GEOMAlgo_PassKey & Assign(const GEOMAlgo_PassKey &Other);
		%feature("autodoc", "1");
		GEOMAlgo_PassKey & operator=(const GEOMAlgo_PassKey &Other);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void SetIds(const Standard_Integer aI1);
		%feature("autodoc", "1");
		void SetIds(const Standard_Integer aI1, const Standard_Integer aI2);
		%feature("autodoc", "1");
		void SetIds(const Standard_Integer aI1, const Standard_Integer aI2, const Standard_Integer aI3);
		%feature("autodoc", "1");
		void SetIds(const Standard_Integer aI1, const Standard_Integer aI2, const Standard_Integer aI3, const Standard_Integer aI4);
		%feature("autodoc", "1");
		void SetIds(const TColStd_ListOfInteger &aLS);
		%feature("autodoc", "1");
		Standard_Integer NbIds() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const GEOMAlgo_PassKey &aOther) const;
		%feature("autodoc", "1");
		Standard_Integer HashCode(const Standard_Integer Upper) const;
		%feature("autodoc", "1");
		Standard_Integer Id(const Standard_Integer aIndex) const;
		%feature("autodoc", "1");
		void Dump(const Standard_Integer aHex=0) const;

};
%extend GEOMAlgo_PassKey {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") GEOMAlgo_PassKey::~GEOMAlgo_PassKey %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_PassKey {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_DataMapNodeOfDataMapOfPassKeyShapeShape;
class GEOMAlgo_DataMapNodeOfDataMapOfPassKeyShapeShape : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_DataMapNodeOfDataMapOfPassKeyShapeShape(const GEOMAlgo_PassKeyShape &K, const TopoDS_Shape I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		GEOMAlgo_PassKeyShape & Key() const;
		%feature("autodoc", "1");
		TopoDS_Shape  Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GEOMAlgo_DataMapNodeOfDataMapOfPassKeyShapeShape {
	Handle_GEOMAlgo_DataMapNodeOfDataMapOfPassKeyShapeShape GetHandle() {
	return *(Handle_GEOMAlgo_DataMapNodeOfDataMapOfPassKeyShapeShape*) &$self;
	}
};
%extend GEOMAlgo_DataMapNodeOfDataMapOfPassKeyShapeShape {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") GEOMAlgo_DataMapNodeOfDataMapOfPassKeyShapeShape::~GEOMAlgo_DataMapNodeOfDataMapOfPassKeyShapeShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_DataMapNodeOfDataMapOfPassKeyShapeShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_ListIteratorOfListOfCoupleOfShapes;
class GEOMAlgo_ListIteratorOfListOfCoupleOfShapes {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_ListIteratorOfListOfCoupleOfShapes();
		%feature("autodoc", "1");
		GEOMAlgo_ListIteratorOfListOfCoupleOfShapes(const GEOMAlgo_ListOfCoupleOfShapes &L);
		%feature("autodoc", "1");
		void Initialize(const GEOMAlgo_ListOfCoupleOfShapes &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		GEOMAlgo_CoupleOfShapes & Value() const;

};
%feature("shadow") GEOMAlgo_ListIteratorOfListOfCoupleOfShapes::~GEOMAlgo_ListIteratorOfListOfCoupleOfShapes %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_ListIteratorOfListOfCoupleOfShapes {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_WireSplitter;
class GEOMAlgo_WireSplitter : public GEOMAlgo_Algo {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_WireSplitter();
		%feature("autodoc", "1");
		void SetFace(const TopoDS_Face aF);
		%feature("autodoc", "1");
		void SetEdges(const TopTools_ListOfShape &aLE);
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Edges() const;
		%feature("autodoc", "1");
		virtual		void Perform();
		%feature("autodoc", "1");
		Standard_Boolean IsNothingToDo() const;
		%feature("autodoc", "1");
		const TopoDS_Face  Face() const;
		%feature("autodoc", "1");
		const BOPTColStd_ListOfListOfShape & Shapes() const;

};
%feature("shadow") GEOMAlgo_WireSplitter::~GEOMAlgo_WireSplitter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_WireSplitter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyListOfShape;
class GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyListOfShape : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyListOfShape(const GEOMAlgo_PassKey &K1, const Standard_Integer K2, const TopTools_ListOfShape &I, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
		%feature("autodoc", "1");
		GEOMAlgo_PassKey & Key1() const;
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
		TopTools_ListOfShape & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &arg0) const;

};
%extend GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyListOfShape {
	Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyListOfShape GetHandle() {
	return *(Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyListOfShape*) &$self;
	}
};
%extend GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyListOfShape {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyListOfShape::~GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyListOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyListOfShape {
	void _kill_pointed() {
		delete $self;
	}
};
