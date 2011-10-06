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

%module XCAFPrs
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include XCAFPrs_renames.i


%include XCAFPrs_required_python_modules.i


%include XCAFPrs_dependencies.i


%include XCAFPrs_headers.i




%nodefaultctor Handle_XCAFPrs_AISObject;
class Handle_XCAFPrs_AISObject : public Handle_AIS_Shape {
	public:
		%feature("autodoc", "1");
		Handle_XCAFPrs_AISObject();
		%feature("autodoc", "1");
		Handle_XCAFPrs_AISObject(const Handle_XCAFPrs_AISObject &aHandle);
		%feature("autodoc", "1");
		Handle_XCAFPrs_AISObject(const XCAFPrs_AISObject *anItem);
		%feature("autodoc", "1");
		Handle_XCAFPrs_AISObject & operator=(const Handle_XCAFPrs_AISObject &aHandle);
		%feature("autodoc", "1");
		Handle_XCAFPrs_AISObject & operator=(const XCAFPrs_AISObject *anItem);
		%feature("autodoc", "1");
		static		Handle_XCAFPrs_AISObject DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XCAFPrs_AISObject {
	XCAFPrs_AISObject* GetObject() {
	return (XCAFPrs_AISObject*)$self->Access();
	}
};
%feature("shadow") Handle_XCAFPrs_AISObject::~Handle_XCAFPrs_AISObject %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_XCAFPrs_AISObject {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_XCAFPrs_DataMapNodeOfDataMapOfShapeStyle;
class Handle_XCAFPrs_DataMapNodeOfDataMapOfShapeStyle : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_XCAFPrs_DataMapNodeOfDataMapOfShapeStyle();
		%feature("autodoc", "1");
		Handle_XCAFPrs_DataMapNodeOfDataMapOfShapeStyle(const Handle_XCAFPrs_DataMapNodeOfDataMapOfShapeStyle &aHandle);
		%feature("autodoc", "1");
		Handle_XCAFPrs_DataMapNodeOfDataMapOfShapeStyle(const XCAFPrs_DataMapNodeOfDataMapOfShapeStyle *anItem);
		%feature("autodoc", "1");
		Handle_XCAFPrs_DataMapNodeOfDataMapOfShapeStyle & operator=(const Handle_XCAFPrs_DataMapNodeOfDataMapOfShapeStyle &aHandle);
		%feature("autodoc", "1");
		Handle_XCAFPrs_DataMapNodeOfDataMapOfShapeStyle & operator=(const XCAFPrs_DataMapNodeOfDataMapOfShapeStyle *anItem);
		%feature("autodoc", "1");
		static		Handle_XCAFPrs_DataMapNodeOfDataMapOfShapeStyle DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XCAFPrs_DataMapNodeOfDataMapOfShapeStyle {
	XCAFPrs_DataMapNodeOfDataMapOfShapeStyle* GetObject() {
	return (XCAFPrs_DataMapNodeOfDataMapOfShapeStyle*)$self->Access();
	}
};
%feature("shadow") Handle_XCAFPrs_DataMapNodeOfDataMapOfShapeStyle::~Handle_XCAFPrs_DataMapNodeOfDataMapOfShapeStyle %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_XCAFPrs_DataMapNodeOfDataMapOfShapeStyle {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_XCAFPrs_DataMapNodeOfDataMapOfStyleTransient;
class Handle_XCAFPrs_DataMapNodeOfDataMapOfStyleTransient : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_XCAFPrs_DataMapNodeOfDataMapOfStyleTransient();
		%feature("autodoc", "1");
		Handle_XCAFPrs_DataMapNodeOfDataMapOfStyleTransient(const Handle_XCAFPrs_DataMapNodeOfDataMapOfStyleTransient &aHandle);
		%feature("autodoc", "1");
		Handle_XCAFPrs_DataMapNodeOfDataMapOfStyleTransient(const XCAFPrs_DataMapNodeOfDataMapOfStyleTransient *anItem);
		%feature("autodoc", "1");
		Handle_XCAFPrs_DataMapNodeOfDataMapOfStyleTransient & operator=(const Handle_XCAFPrs_DataMapNodeOfDataMapOfStyleTransient &aHandle);
		%feature("autodoc", "1");
		Handle_XCAFPrs_DataMapNodeOfDataMapOfStyleTransient & operator=(const XCAFPrs_DataMapNodeOfDataMapOfStyleTransient *anItem);
		%feature("autodoc", "1");
		static		Handle_XCAFPrs_DataMapNodeOfDataMapOfStyleTransient DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XCAFPrs_DataMapNodeOfDataMapOfStyleTransient {
	XCAFPrs_DataMapNodeOfDataMapOfStyleTransient* GetObject() {
	return (XCAFPrs_DataMapNodeOfDataMapOfStyleTransient*)$self->Access();
	}
};
%feature("shadow") Handle_XCAFPrs_DataMapNodeOfDataMapOfStyleTransient::~Handle_XCAFPrs_DataMapNodeOfDataMapOfStyleTransient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_XCAFPrs_DataMapNodeOfDataMapOfStyleTransient {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_XCAFPrs_Driver;
class Handle_XCAFPrs_Driver : public Handle_TPrsStd_Driver {
	public:
		%feature("autodoc", "1");
		Handle_XCAFPrs_Driver();
		%feature("autodoc", "1");
		Handle_XCAFPrs_Driver(const Handle_XCAFPrs_Driver &aHandle);
		%feature("autodoc", "1");
		Handle_XCAFPrs_Driver(const XCAFPrs_Driver *anItem);
		%feature("autodoc", "1");
		Handle_XCAFPrs_Driver & operator=(const Handle_XCAFPrs_Driver &aHandle);
		%feature("autodoc", "1");
		Handle_XCAFPrs_Driver & operator=(const XCAFPrs_Driver *anItem);
		%feature("autodoc", "1");
		static		Handle_XCAFPrs_Driver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XCAFPrs_Driver {
	XCAFPrs_Driver* GetObject() {
	return (XCAFPrs_Driver*)$self->Access();
	}
};
%feature("shadow") Handle_XCAFPrs_Driver::~Handle_XCAFPrs_Driver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_XCAFPrs_Driver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_XCAFPrs_DataMapNodeOfDataMapOfStyleShape;
class Handle_XCAFPrs_DataMapNodeOfDataMapOfStyleShape : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_XCAFPrs_DataMapNodeOfDataMapOfStyleShape();
		%feature("autodoc", "1");
		Handle_XCAFPrs_DataMapNodeOfDataMapOfStyleShape(const Handle_XCAFPrs_DataMapNodeOfDataMapOfStyleShape &aHandle);
		%feature("autodoc", "1");
		Handle_XCAFPrs_DataMapNodeOfDataMapOfStyleShape(const XCAFPrs_DataMapNodeOfDataMapOfStyleShape *anItem);
		%feature("autodoc", "1");
		Handle_XCAFPrs_DataMapNodeOfDataMapOfStyleShape & operator=(const Handle_XCAFPrs_DataMapNodeOfDataMapOfStyleShape &aHandle);
		%feature("autodoc", "1");
		Handle_XCAFPrs_DataMapNodeOfDataMapOfStyleShape & operator=(const XCAFPrs_DataMapNodeOfDataMapOfStyleShape *anItem);
		%feature("autodoc", "1");
		static		Handle_XCAFPrs_DataMapNodeOfDataMapOfStyleShape DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XCAFPrs_DataMapNodeOfDataMapOfStyleShape {
	XCAFPrs_DataMapNodeOfDataMapOfStyleShape* GetObject() {
	return (XCAFPrs_DataMapNodeOfDataMapOfStyleShape*)$self->Access();
	}
};
%feature("shadow") Handle_XCAFPrs_DataMapNodeOfDataMapOfStyleShape::~Handle_XCAFPrs_DataMapNodeOfDataMapOfStyleShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_XCAFPrs_DataMapNodeOfDataMapOfStyleShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XCAFPrs_DataMapOfStyleShape;
class XCAFPrs_DataMapOfStyleShape : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		XCAFPrs_DataMapOfStyleShape(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		XCAFPrs_DataMapOfStyleShape & Assign(const XCAFPrs_DataMapOfStyleShape &Other);
		%feature("autodoc", "1");
		XCAFPrs_DataMapOfStyleShape & operator=(const XCAFPrs_DataMapOfStyleShape &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const XCAFPrs_Style &K, const TopoDS_Shape I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const XCAFPrs_Style &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const XCAFPrs_Style &K);
		%feature("autodoc", "1");
		const TopoDS_Shape  Find(const XCAFPrs_Style &K) const;
		%feature("autodoc", "1");
		const TopoDS_Shape  operator()(const XCAFPrs_Style &K) const;
		%feature("autodoc", "1");
		TopoDS_Shape  ChangeFind(const XCAFPrs_Style &K);
		%feature("autodoc", "1");
		TopoDS_Shape  operator()(const XCAFPrs_Style &K);

};
%feature("shadow") XCAFPrs_DataMapOfStyleShape::~XCAFPrs_DataMapOfStyleShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XCAFPrs_DataMapOfStyleShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XCAFPrs_Driver;
class XCAFPrs_Driver : public TPrsStd_Driver {
	public:
		%feature("autodoc", "1");
		XCAFPrs_Driver();
		%feature("autodoc", "1");
		virtual		Standard_Boolean Update(const TDF_Label &L, Handle_AIS_InteractiveObject & ais);
		%feature("autodoc", "1");
		static		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XCAFPrs_Driver {
	Handle_XCAFPrs_Driver GetHandle() {
	return *(Handle_XCAFPrs_Driver*) &$self;
	}
};
%extend XCAFPrs_Driver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") XCAFPrs_Driver::~XCAFPrs_Driver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XCAFPrs_Driver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XCAFPrs_AISObject;
class XCAFPrs_AISObject : public AIS_Shape {
	public:
		%feature("autodoc", "1");
		XCAFPrs_AISObject(const TDF_Label &lab);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XCAFPrs_AISObject {
	Handle_XCAFPrs_AISObject GetHandle() {
	return *(Handle_XCAFPrs_AISObject*) &$self;
	}
};
%extend XCAFPrs_AISObject {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") XCAFPrs_AISObject::~XCAFPrs_AISObject %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XCAFPrs_AISObject {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XCAFPrs;
class XCAFPrs {
	public:
		%feature("autodoc", "1");
		XCAFPrs();
		%feature("autodoc", "1");
		static		void CollectStyleSettings(const TDF_Label &L, const TopLoc_Location &loc, XCAFPrs_DataMapOfShapeStyle & settings);
		%feature("autodoc", "1");
		static		Standard_Boolean DispatchStyles(const TopoDS_Shape shape, const XCAFPrs_DataMapOfShapeStyle &settings, XCAFPrs_DataMapOfStyleShape & items, const XCAFPrs_Style &DefStyle, const Standard_Boolean force=1, const TopAbs_ShapeEnum context=TopAbs_SHAPE);
		%feature("autodoc", "1");
		static		void SetViewNameMode(const Standard_Boolean viewNameMode);
		%feature("autodoc", "1");
		static		Standard_Boolean GetViewNameMode();

};
%feature("shadow") XCAFPrs::~XCAFPrs %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XCAFPrs {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XCAFPrs_DataMapOfShapeStyle;
class XCAFPrs_DataMapOfShapeStyle : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		XCAFPrs_DataMapOfShapeStyle(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		XCAFPrs_DataMapOfShapeStyle & Assign(const XCAFPrs_DataMapOfShapeStyle &Other);
		%feature("autodoc", "1");
		XCAFPrs_DataMapOfShapeStyle & operator=(const XCAFPrs_DataMapOfShapeStyle &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TopoDS_Shape K, const XCAFPrs_Style &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TopoDS_Shape K);
		%feature("autodoc", "1");
		const XCAFPrs_Style & Find(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		const XCAFPrs_Style & operator()(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		XCAFPrs_Style & ChangeFind(const TopoDS_Shape K);
		%feature("autodoc", "1");
		XCAFPrs_Style & operator()(const TopoDS_Shape K);

};
%feature("shadow") XCAFPrs_DataMapOfShapeStyle::~XCAFPrs_DataMapOfShapeStyle %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XCAFPrs_DataMapOfShapeStyle {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XCAFPrs_DataMapIteratorOfDataMapOfStyleTransient;
class XCAFPrs_DataMapIteratorOfDataMapOfStyleTransient : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		XCAFPrs_DataMapIteratorOfDataMapOfStyleTransient();
		%feature("autodoc", "1");
		XCAFPrs_DataMapIteratorOfDataMapOfStyleTransient(const XCAFPrs_DataMapOfStyleTransient &aMap);
		%feature("autodoc", "1");
		void Initialize(const XCAFPrs_DataMapOfStyleTransient &aMap);
		%feature("autodoc", "1");
		const XCAFPrs_Style & Key() const;
		%feature("autodoc", "1");
		const Handle_Standard_Transient & Value() const;

};
%feature("shadow") XCAFPrs_DataMapIteratorOfDataMapOfStyleTransient::~XCAFPrs_DataMapIteratorOfDataMapOfStyleTransient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XCAFPrs_DataMapIteratorOfDataMapOfStyleTransient {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XCAFPrs_DataMapNodeOfDataMapOfStyleTransient;
class XCAFPrs_DataMapNodeOfDataMapOfStyleTransient : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		XCAFPrs_DataMapNodeOfDataMapOfStyleTransient(const XCAFPrs_Style &K, const Handle_Standard_Transient &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		XCAFPrs_Style & Key() const;
		%feature("autodoc", "1");
		Handle_Standard_Transient & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XCAFPrs_DataMapNodeOfDataMapOfStyleTransient {
	Handle_XCAFPrs_DataMapNodeOfDataMapOfStyleTransient GetHandle() {
	return *(Handle_XCAFPrs_DataMapNodeOfDataMapOfStyleTransient*) &$self;
	}
};
%extend XCAFPrs_DataMapNodeOfDataMapOfStyleTransient {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") XCAFPrs_DataMapNodeOfDataMapOfStyleTransient::~XCAFPrs_DataMapNodeOfDataMapOfStyleTransient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XCAFPrs_DataMapNodeOfDataMapOfStyleTransient {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XCAFPrs_DataMapOfStyleTransient;
class XCAFPrs_DataMapOfStyleTransient : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		XCAFPrs_DataMapOfStyleTransient(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		XCAFPrs_DataMapOfStyleTransient & Assign(const XCAFPrs_DataMapOfStyleTransient &Other);
		%feature("autodoc", "1");
		XCAFPrs_DataMapOfStyleTransient & operator=(const XCAFPrs_DataMapOfStyleTransient &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const XCAFPrs_Style &K, const Handle_Standard_Transient &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const XCAFPrs_Style &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const XCAFPrs_Style &K);
		%feature("autodoc", "1");
		const Handle_Standard_Transient & Find(const XCAFPrs_Style &K) const;
		%feature("autodoc", "1");
		const Handle_Standard_Transient & operator()(const XCAFPrs_Style &K) const;
		%feature("autodoc", "1");
		Handle_Standard_Transient & ChangeFind(const XCAFPrs_Style &K);
		%feature("autodoc", "1");
		Handle_Standard_Transient & operator()(const XCAFPrs_Style &K);

};
%feature("shadow") XCAFPrs_DataMapOfStyleTransient::~XCAFPrs_DataMapOfStyleTransient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XCAFPrs_DataMapOfStyleTransient {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XCAFPrs_DataMapNodeOfDataMapOfStyleShape;
class XCAFPrs_DataMapNodeOfDataMapOfStyleShape : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		XCAFPrs_DataMapNodeOfDataMapOfStyleShape(const XCAFPrs_Style &K, const TopoDS_Shape I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		XCAFPrs_Style & Key() const;
		%feature("autodoc", "1");
		TopoDS_Shape  Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XCAFPrs_DataMapNodeOfDataMapOfStyleShape {
	Handle_XCAFPrs_DataMapNodeOfDataMapOfStyleShape GetHandle() {
	return *(Handle_XCAFPrs_DataMapNodeOfDataMapOfStyleShape*) &$self;
	}
};
%extend XCAFPrs_DataMapNodeOfDataMapOfStyleShape {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") XCAFPrs_DataMapNodeOfDataMapOfStyleShape::~XCAFPrs_DataMapNodeOfDataMapOfStyleShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XCAFPrs_DataMapNodeOfDataMapOfStyleShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XCAFPrs_Style;
class XCAFPrs_Style {
	public:
		%feature("autodoc", "1");
		XCAFPrs_Style();
		%feature("autodoc", "1");
		Standard_Boolean IsSetColorSurf() const;
		%feature("autodoc", "1");
		Quantity_Color GetColorSurf() const;
		%feature("autodoc", "1");
		void SetColorSurf(const Quantity_Color &col);
		%feature("autodoc", "1");
		void UnSetColorSurf();
		%feature("autodoc", "1");
		Standard_Boolean IsSetColorCurv() const;
		%feature("autodoc", "1");
		Quantity_Color GetColorCurv() const;
		%feature("autodoc", "1");
		void SetColorCurv(const Quantity_Color &col);
		%feature("autodoc", "1");
		void UnSetColorCurv();
		%feature("autodoc", "1");
		void SetVisibility(const Standard_Boolean visibility);
		%feature("autodoc", "1");
		Standard_Boolean IsVisible() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const XCAFPrs_Style &other) const;
		%feature("autodoc", "1");
		Standard_Boolean operator==(const XCAFPrs_Style &other) const;
		%feature("autodoc", "1");
		static		Standard_Integer HashCode(const XCAFPrs_Style &S, const Standard_Integer Upper);
		%feature("autodoc", "1");
		static		Standard_Boolean IsEqual(const XCAFPrs_Style &S1, const XCAFPrs_Style &S2);

};
%feature("shadow") XCAFPrs_Style::~XCAFPrs_Style %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XCAFPrs_Style {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XCAFPrs_DataMapIteratorOfDataMapOfShapeStyle;
class XCAFPrs_DataMapIteratorOfDataMapOfShapeStyle : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		XCAFPrs_DataMapIteratorOfDataMapOfShapeStyle();
		%feature("autodoc", "1");
		XCAFPrs_DataMapIteratorOfDataMapOfShapeStyle(const XCAFPrs_DataMapOfShapeStyle &aMap);
		%feature("autodoc", "1");
		void Initialize(const XCAFPrs_DataMapOfShapeStyle &aMap);
		%feature("autodoc", "1");
		const TopoDS_Shape  Key() const;
		%feature("autodoc", "1");
		const XCAFPrs_Style & Value() const;

};
%feature("shadow") XCAFPrs_DataMapIteratorOfDataMapOfShapeStyle::~XCAFPrs_DataMapIteratorOfDataMapOfShapeStyle %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XCAFPrs_DataMapIteratorOfDataMapOfShapeStyle {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XCAFPrs_DataMapIteratorOfDataMapOfStyleShape;
class XCAFPrs_DataMapIteratorOfDataMapOfStyleShape : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		XCAFPrs_DataMapIteratorOfDataMapOfStyleShape();
		%feature("autodoc", "1");
		XCAFPrs_DataMapIteratorOfDataMapOfStyleShape(const XCAFPrs_DataMapOfStyleShape &aMap);
		%feature("autodoc", "1");
		void Initialize(const XCAFPrs_DataMapOfStyleShape &aMap);
		%feature("autodoc", "1");
		const XCAFPrs_Style & Key() const;
		%feature("autodoc", "1");
		const TopoDS_Shape  Value() const;

};
%feature("shadow") XCAFPrs_DataMapIteratorOfDataMapOfStyleShape::~XCAFPrs_DataMapIteratorOfDataMapOfStyleShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XCAFPrs_DataMapIteratorOfDataMapOfStyleShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XCAFPrs_DataMapNodeOfDataMapOfShapeStyle;
class XCAFPrs_DataMapNodeOfDataMapOfShapeStyle : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		XCAFPrs_DataMapNodeOfDataMapOfShapeStyle(const TopoDS_Shape K, const XCAFPrs_Style &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Shape  Key() const;
		%feature("autodoc", "1");
		XCAFPrs_Style & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XCAFPrs_DataMapNodeOfDataMapOfShapeStyle {
	Handle_XCAFPrs_DataMapNodeOfDataMapOfShapeStyle GetHandle() {
	return *(Handle_XCAFPrs_DataMapNodeOfDataMapOfShapeStyle*) &$self;
	}
};
%extend XCAFPrs_DataMapNodeOfDataMapOfShapeStyle {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") XCAFPrs_DataMapNodeOfDataMapOfShapeStyle::~XCAFPrs_DataMapNodeOfDataMapOfShapeStyle %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XCAFPrs_DataMapNodeOfDataMapOfShapeStyle {
	void _kill_pointed() {
		delete $self;
	}
};
