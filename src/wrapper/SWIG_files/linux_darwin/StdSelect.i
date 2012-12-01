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

%module StdSelect
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include StdSelect_renames.i


%include StdSelect_required_python_modules.i


%include StdSelect_dependencies.i


%include StdSelect_headers.i


enum StdSelect_TypeOfResult {
	StdSelect_TOR_SIMPLE,
	StdSelect_TOR_MULTIPLE,
	};

enum StdSelect_TypeOfEdge {
	StdSelect_AnyEdge,
	StdSelect_Line,
	StdSelect_Circle,
	};

enum StdSelect_TypeOfFace {
	StdSelect_AnyFace,
	StdSelect_Plane,
	StdSelect_Cylinder,
	StdSelect_Sphere,
	StdSelect_Torus,
	StdSelect_Revol,
	StdSelect_Cone,
	};

enum StdSelect_DisplayMode {
	StdSelect_DM_Wireframe,
	StdSelect_DM_Shading,
	StdSelect_DM_HLR,
	};

enum StdSelect_SensitivityMode {
	StdSelect_SM_WINDOW,
	StdSelect_SM_VIEW,
	};



%nodefaultctor Handle_StdSelect_Prs;
class Handle_StdSelect_Prs : public Handle_Prs3d_Presentation {
	public:
		%feature("autodoc", "1");
		Handle_StdSelect_Prs();
		%feature("autodoc", "1");
		Handle_StdSelect_Prs(const Handle_StdSelect_Prs &aHandle);
		%feature("autodoc", "1");
		Handle_StdSelect_Prs(const StdSelect_Prs *anItem);
		%feature("autodoc", "1");
		Handle_StdSelect_Prs & operator=(const Handle_StdSelect_Prs &aHandle);
		%feature("autodoc", "1");
		Handle_StdSelect_Prs & operator=(const StdSelect_Prs *anItem);
		%feature("autodoc", "1");
		static		Handle_StdSelect_Prs DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StdSelect_Prs {
	StdSelect_Prs* GetObject() {
	return (StdSelect_Prs*)$self->Access();
	}
};
%feature("shadow") Handle_StdSelect_Prs::~Handle_StdSelect_Prs %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StdSelect_Prs {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StdSelect_SensitiveText2d;
class Handle_StdSelect_SensitiveText2d : public Handle_Select2D_SensitiveEntity {
	public:
		%feature("autodoc", "1");
		Handle_StdSelect_SensitiveText2d();
		%feature("autodoc", "1");
		Handle_StdSelect_SensitiveText2d(const Handle_StdSelect_SensitiveText2d &aHandle);
		%feature("autodoc", "1");
		Handle_StdSelect_SensitiveText2d(const StdSelect_SensitiveText2d *anItem);
		%feature("autodoc", "1");
		Handle_StdSelect_SensitiveText2d & operator=(const Handle_StdSelect_SensitiveText2d &aHandle);
		%feature("autodoc", "1");
		Handle_StdSelect_SensitiveText2d & operator=(const StdSelect_SensitiveText2d *anItem);
		%feature("autodoc", "1");
		static		Handle_StdSelect_SensitiveText2d DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StdSelect_SensitiveText2d {
	StdSelect_SensitiveText2d* GetObject() {
	return (StdSelect_SensitiveText2d*)$self->Access();
	}
};
%feature("shadow") Handle_StdSelect_SensitiveText2d::~Handle_StdSelect_SensitiveText2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StdSelect_SensitiveText2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StdSelect_TextProjector2d;
class Handle_StdSelect_TextProjector2d : public Handle_Select2D_Projector {
	public:
		%feature("autodoc", "1");
		Handle_StdSelect_TextProjector2d();
		%feature("autodoc", "1");
		Handle_StdSelect_TextProjector2d(const Handle_StdSelect_TextProjector2d &aHandle);
		%feature("autodoc", "1");
		Handle_StdSelect_TextProjector2d(const StdSelect_TextProjector2d *anItem);
		%feature("autodoc", "1");
		Handle_StdSelect_TextProjector2d & operator=(const Handle_StdSelect_TextProjector2d &aHandle);
		%feature("autodoc", "1");
		Handle_StdSelect_TextProjector2d & operator=(const StdSelect_TextProjector2d *anItem);
		%feature("autodoc", "1");
		static		Handle_StdSelect_TextProjector2d DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StdSelect_TextProjector2d {
	StdSelect_TextProjector2d* GetObject() {
	return (StdSelect_TextProjector2d*)$self->Access();
	}
};
%feature("shadow") Handle_StdSelect_TextProjector2d::~Handle_StdSelect_TextProjector2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StdSelect_TextProjector2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StdSelect_EdgeFilter;
class Handle_StdSelect_EdgeFilter : public Handle_SelectMgr_Filter {
	public:
		%feature("autodoc", "1");
		Handle_StdSelect_EdgeFilter();
		%feature("autodoc", "1");
		Handle_StdSelect_EdgeFilter(const Handle_StdSelect_EdgeFilter &aHandle);
		%feature("autodoc", "1");
		Handle_StdSelect_EdgeFilter(const StdSelect_EdgeFilter *anItem);
		%feature("autodoc", "1");
		Handle_StdSelect_EdgeFilter & operator=(const Handle_StdSelect_EdgeFilter &aHandle);
		%feature("autodoc", "1");
		Handle_StdSelect_EdgeFilter & operator=(const StdSelect_EdgeFilter *anItem);
		%feature("autodoc", "1");
		static		Handle_StdSelect_EdgeFilter DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StdSelect_EdgeFilter {
	StdSelect_EdgeFilter* GetObject() {
	return (StdSelect_EdgeFilter*)$self->Access();
	}
};
%feature("shadow") Handle_StdSelect_EdgeFilter::~Handle_StdSelect_EdgeFilter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StdSelect_EdgeFilter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StdSelect_ViewerSelector2d;
class Handle_StdSelect_ViewerSelector2d : public Handle_SelectMgr_ViewerSelector {
	public:
		%feature("autodoc", "1");
		Handle_StdSelect_ViewerSelector2d();
		%feature("autodoc", "1");
		Handle_StdSelect_ViewerSelector2d(const Handle_StdSelect_ViewerSelector2d &aHandle);
		%feature("autodoc", "1");
		Handle_StdSelect_ViewerSelector2d(const StdSelect_ViewerSelector2d *anItem);
		%feature("autodoc", "1");
		Handle_StdSelect_ViewerSelector2d & operator=(const Handle_StdSelect_ViewerSelector2d &aHandle);
		%feature("autodoc", "1");
		Handle_StdSelect_ViewerSelector2d & operator=(const StdSelect_ViewerSelector2d *anItem);
		%feature("autodoc", "1");
		static		Handle_StdSelect_ViewerSelector2d DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StdSelect_ViewerSelector2d {
	StdSelect_ViewerSelector2d* GetObject() {
	return (StdSelect_ViewerSelector2d*)$self->Access();
	}
};
%feature("shadow") Handle_StdSelect_ViewerSelector2d::~Handle_StdSelect_ViewerSelector2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StdSelect_ViewerSelector2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StdSelect_ViewerSelector3d;
class Handle_StdSelect_ViewerSelector3d : public Handle_SelectMgr_ViewerSelector {
	public:
		%feature("autodoc", "1");
		Handle_StdSelect_ViewerSelector3d();
		%feature("autodoc", "1");
		Handle_StdSelect_ViewerSelector3d(const Handle_StdSelect_ViewerSelector3d &aHandle);
		%feature("autodoc", "1");
		Handle_StdSelect_ViewerSelector3d(const StdSelect_ViewerSelector3d *anItem);
		%feature("autodoc", "1");
		Handle_StdSelect_ViewerSelector3d & operator=(const Handle_StdSelect_ViewerSelector3d &aHandle);
		%feature("autodoc", "1");
		Handle_StdSelect_ViewerSelector3d & operator=(const StdSelect_ViewerSelector3d *anItem);
		%feature("autodoc", "1");
		static		Handle_StdSelect_ViewerSelector3d DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StdSelect_ViewerSelector3d {
	StdSelect_ViewerSelector3d* GetObject() {
	return (StdSelect_ViewerSelector3d*)$self->Access();
	}
};
%feature("shadow") Handle_StdSelect_ViewerSelector3d::~Handle_StdSelect_ViewerSelector3d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StdSelect_ViewerSelector3d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StdSelect_IndexedDataMapNodeOfIndexedDataMapOfOwnerPrs;
class Handle_StdSelect_IndexedDataMapNodeOfIndexedDataMapOfOwnerPrs : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_StdSelect_IndexedDataMapNodeOfIndexedDataMapOfOwnerPrs();
		%feature("autodoc", "1");
		Handle_StdSelect_IndexedDataMapNodeOfIndexedDataMapOfOwnerPrs(const Handle_StdSelect_IndexedDataMapNodeOfIndexedDataMapOfOwnerPrs &aHandle);
		%feature("autodoc", "1");
		Handle_StdSelect_IndexedDataMapNodeOfIndexedDataMapOfOwnerPrs(const StdSelect_IndexedDataMapNodeOfIndexedDataMapOfOwnerPrs *anItem);
		%feature("autodoc", "1");
		Handle_StdSelect_IndexedDataMapNodeOfIndexedDataMapOfOwnerPrs & operator=(const Handle_StdSelect_IndexedDataMapNodeOfIndexedDataMapOfOwnerPrs &aHandle);
		%feature("autodoc", "1");
		Handle_StdSelect_IndexedDataMapNodeOfIndexedDataMapOfOwnerPrs & operator=(const StdSelect_IndexedDataMapNodeOfIndexedDataMapOfOwnerPrs *anItem);
		%feature("autodoc", "1");
		static		Handle_StdSelect_IndexedDataMapNodeOfIndexedDataMapOfOwnerPrs DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StdSelect_IndexedDataMapNodeOfIndexedDataMapOfOwnerPrs {
	StdSelect_IndexedDataMapNodeOfIndexedDataMapOfOwnerPrs* GetObject() {
	return (StdSelect_IndexedDataMapNodeOfIndexedDataMapOfOwnerPrs*)$self->Access();
	}
};
%feature("shadow") Handle_StdSelect_IndexedDataMapNodeOfIndexedDataMapOfOwnerPrs::~Handle_StdSelect_IndexedDataMapNodeOfIndexedDataMapOfOwnerPrs %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StdSelect_IndexedDataMapNodeOfIndexedDataMapOfOwnerPrs {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StdSelect_Shape;
class Handle_StdSelect_Shape : public Handle_PrsMgr_PresentableObject {
	public:
		%feature("autodoc", "1");
		Handle_StdSelect_Shape();
		%feature("autodoc", "1");
		Handle_StdSelect_Shape(const Handle_StdSelect_Shape &aHandle);
		%feature("autodoc", "1");
		Handle_StdSelect_Shape(const StdSelect_Shape *anItem);
		%feature("autodoc", "1");
		Handle_StdSelect_Shape & operator=(const Handle_StdSelect_Shape &aHandle);
		%feature("autodoc", "1");
		Handle_StdSelect_Shape & operator=(const StdSelect_Shape *anItem);
		%feature("autodoc", "1");
		static		Handle_StdSelect_Shape DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StdSelect_Shape {
	StdSelect_Shape* GetObject() {
	return (StdSelect_Shape*)$self->Access();
	}
};
%feature("shadow") Handle_StdSelect_Shape::~Handle_StdSelect_Shape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StdSelect_Shape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StdSelect_ShapeTypeFilter;
class Handle_StdSelect_ShapeTypeFilter : public Handle_SelectMgr_Filter {
	public:
		%feature("autodoc", "1");
		Handle_StdSelect_ShapeTypeFilter();
		%feature("autodoc", "1");
		Handle_StdSelect_ShapeTypeFilter(const Handle_StdSelect_ShapeTypeFilter &aHandle);
		%feature("autodoc", "1");
		Handle_StdSelect_ShapeTypeFilter(const StdSelect_ShapeTypeFilter *anItem);
		%feature("autodoc", "1");
		Handle_StdSelect_ShapeTypeFilter & operator=(const Handle_StdSelect_ShapeTypeFilter &aHandle);
		%feature("autodoc", "1");
		Handle_StdSelect_ShapeTypeFilter & operator=(const StdSelect_ShapeTypeFilter *anItem);
		%feature("autodoc", "1");
		static		Handle_StdSelect_ShapeTypeFilter DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StdSelect_ShapeTypeFilter {
	StdSelect_ShapeTypeFilter* GetObject() {
	return (StdSelect_ShapeTypeFilter*)$self->Access();
	}
};
%feature("shadow") Handle_StdSelect_ShapeTypeFilter::~Handle_StdSelect_ShapeTypeFilter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StdSelect_ShapeTypeFilter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StdSelect_FaceFilter;
class Handle_StdSelect_FaceFilter : public Handle_SelectMgr_Filter {
	public:
		%feature("autodoc", "1");
		Handle_StdSelect_FaceFilter();
		%feature("autodoc", "1");
		Handle_StdSelect_FaceFilter(const Handle_StdSelect_FaceFilter &aHandle);
		%feature("autodoc", "1");
		Handle_StdSelect_FaceFilter(const StdSelect_FaceFilter *anItem);
		%feature("autodoc", "1");
		Handle_StdSelect_FaceFilter & operator=(const Handle_StdSelect_FaceFilter &aHandle);
		%feature("autodoc", "1");
		Handle_StdSelect_FaceFilter & operator=(const StdSelect_FaceFilter *anItem);
		%feature("autodoc", "1");
		static		Handle_StdSelect_FaceFilter DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StdSelect_FaceFilter {
	StdSelect_FaceFilter* GetObject() {
	return (StdSelect_FaceFilter*)$self->Access();
	}
};
%feature("shadow") Handle_StdSelect_FaceFilter::~Handle_StdSelect_FaceFilter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StdSelect_FaceFilter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StdSelect_BRepOwner;
class Handle_StdSelect_BRepOwner : public Handle_SelectMgr_EntityOwner {
	public:
		%feature("autodoc", "1");
		Handle_StdSelect_BRepOwner();
		%feature("autodoc", "1");
		Handle_StdSelect_BRepOwner(const Handle_StdSelect_BRepOwner &aHandle);
		%feature("autodoc", "1");
		Handle_StdSelect_BRepOwner(const StdSelect_BRepOwner *anItem);
		%feature("autodoc", "1");
		Handle_StdSelect_BRepOwner & operator=(const Handle_StdSelect_BRepOwner &aHandle);
		%feature("autodoc", "1");
		Handle_StdSelect_BRepOwner & operator=(const StdSelect_BRepOwner *anItem);
		%feature("autodoc", "1");
		static		Handle_StdSelect_BRepOwner DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StdSelect_BRepOwner {
	StdSelect_BRepOwner* GetObject() {
	return (StdSelect_BRepOwner*)$self->Access();
	}
};
%feature("shadow") Handle_StdSelect_BRepOwner::~Handle_StdSelect_BRepOwner %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StdSelect_BRepOwner {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StdSelect_BRepOwner;
class StdSelect_BRepOwner : public SelectMgr_EntityOwner {
	public:
		%feature("autodoc", "1");
		StdSelect_BRepOwner(const Standard_Integer aPriority);
		%feature("autodoc", "1");
		StdSelect_BRepOwner(const TopoDS_Shape aShape, const Standard_Integer aPriority=0, const Standard_Boolean ComesFromDecomposition=0);
		%feature("autodoc", "1");
		StdSelect_BRepOwner(const TopoDS_Shape aShape, const Handle_SelectMgr_SelectableObject &theOrigin, const Standard_Integer aPriority=0, const Standard_Boolean FromDecomposition=0);
		%feature("autodoc", "1");
		Standard_Boolean HasShape() const;
		%feature("autodoc", "1");
		Standard_Boolean ComesFromDecomposition() const;
		%feature("autodoc", "1");
		const TopoDS_Shape  Shape() const;
		%feature("autodoc", "1");
		Standard_Boolean HasHilightMode() const;
		%feature("autodoc", "1");
		void SetHilightMode(const Standard_Integer HiMod);
		%feature("autodoc", "1");
		void ResetHilightMode();
		%feature("autodoc", "1");
		Standard_Integer HilightMode() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsHilighted(const Handle_PrsMgr_PresentationManager &aPM, const Standard_Integer aMode=0) const;
		%feature("autodoc", "1");
		virtual		void Hilight();
		%feature("autodoc", "1");
		virtual		void Hilight(const Handle_PrsMgr_PresentationManager &aPM, const Standard_Integer aMode=0);
		%feature("autodoc", "1");
		virtual		void HilightWithColor(const Handle_PrsMgr_PresentationManager3d &aPM, const Quantity_NameOfColor aCol, const Standard_Integer aMode=0);
		%feature("autodoc", "1");
		virtual		void Unhilight(const Handle_PrsMgr_PresentationManager &aPM, const Standard_Integer aMode=0);
		%feature("autodoc", "1");
		virtual		void Clear(const Handle_PrsMgr_PresentationManager &aPM, const Standard_Integer aMode=0);
		%feature("autodoc", "1");
		virtual		void SetLocation(const TopLoc_Location &aLoc);
		%feature("autodoc", "1");
		virtual		void ResetLocation();
		%feature("autodoc", "1");
		virtual		void SetZLayer(const Handle_PrsMgr_PresentationManager &thePrsMgr, const Standard_Integer theLayerId);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StdSelect_BRepOwner {
	Handle_StdSelect_BRepOwner GetHandle() {
	return *(Handle_StdSelect_BRepOwner*) &$self;
	}
};
%extend StdSelect_BRepOwner {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") StdSelect_BRepOwner::~StdSelect_BRepOwner %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StdSelect_BRepOwner {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StdSelect_IndexedDataMapOfOwnerPrs;
class StdSelect_IndexedDataMapOfOwnerPrs : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		StdSelect_IndexedDataMapOfOwnerPrs(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		StdSelect_IndexedDataMapOfOwnerPrs & Assign(const StdSelect_IndexedDataMapOfOwnerPrs &Other);
		%feature("autodoc", "1");
		StdSelect_IndexedDataMapOfOwnerPrs & operator=(const StdSelect_IndexedDataMapOfOwnerPrs &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer Add(const Handle_SelectBasics_EntityOwner &K, const Handle_StdSelect_Prs &I);
		%feature("autodoc", "1");
		void Substitute(const Standard_Integer I, const Handle_SelectBasics_EntityOwner &K, const Handle_StdSelect_Prs &T);
		%feature("autodoc", "1");
		void RemoveLast();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Handle_SelectBasics_EntityOwner &K) const;
		%feature("autodoc", "1");
		const Handle_SelectBasics_EntityOwner & FindKey(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const Handle_StdSelect_Prs & FindFromIndex(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const Handle_StdSelect_Prs & operator()(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Handle_StdSelect_Prs & ChangeFromIndex(const Standard_Integer I);
		%feature("autodoc", "1");
		Handle_StdSelect_Prs & operator()(const Standard_Integer I);
		%feature("autodoc", "1");
		Standard_Integer FindIndex(const Handle_SelectBasics_EntityOwner &K) const;
		%feature("autodoc", "1");
		const Handle_StdSelect_Prs & FindFromKey(const Handle_SelectBasics_EntityOwner &K) const;
		%feature("autodoc", "1");
		Handle_StdSelect_Prs & ChangeFromKey(const Handle_SelectBasics_EntityOwner &K);
		%feature("autodoc", "1");
		Standard_Address FindFromKey1(const Handle_SelectBasics_EntityOwner &K) const;
		%feature("autodoc", "1");
		Standard_Address ChangeFromKey1(const Handle_SelectBasics_EntityOwner &K);

};
%feature("shadow") StdSelect_IndexedDataMapOfOwnerPrs::~StdSelect_IndexedDataMapOfOwnerPrs %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StdSelect_IndexedDataMapOfOwnerPrs {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StdSelect_BRepHilighter;
class StdSelect_BRepHilighter {
	public:
		%feature("autodoc", "1");
		StdSelect_BRepHilighter();
		%feature("autodoc", "1");
		StdSelect_BRepHilighter(const Handle_StdSelect_ViewerSelector3d &aSelector, const Handle_V3d_Viewer &aViewer, const Quantity_NameOfColor acolor=Quantity_NOC_INDIANRED3, const StdSelect_TypeOfResult aType=StdSelect_TOR_SIMPLE);
		%feature("autodoc", "1");
		void Set(const Handle_StdSelect_ViewerSelector3d &aSelector);
		%feature("autodoc", "1");
		void Set(const Handle_V3d_Viewer &aViewer);
		%feature("autodoc", "1");
		void Set(const Quantity_NameOfColor acolor);
		%feature("autodoc", "1");
		void Set(const StdSelect_TypeOfResult atype);
		%feature("autodoc", "1");
		void Process();
		%feature("autodoc", "1");
		void Process(const Handle_V3d_View &aView, const Standard_Boolean DoubleBuffer=0);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const Handle_Prs3d_Drawer & Drawer() const;

};
%feature("shadow") StdSelect_BRepHilighter::~StdSelect_BRepHilighter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StdSelect_BRepHilighter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StdSelect_FaceFilter;
class StdSelect_FaceFilter : public SelectMgr_Filter {
	public:
		%feature("autodoc", "1");
		StdSelect_FaceFilter(const StdSelect_TypeOfFace aTypeOfFace);
		%feature("autodoc", "1");
		void SetType(const StdSelect_TypeOfFace aNewType);
		%feature("autodoc", "1");
		StdSelect_TypeOfFace Type() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsOk(const Handle_SelectMgr_EntityOwner &anobj) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean ActsOn(const TopAbs_ShapeEnum aStandardMode) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StdSelect_FaceFilter {
	Handle_StdSelect_FaceFilter GetHandle() {
	return *(Handle_StdSelect_FaceFilter*) &$self;
	}
};
%extend StdSelect_FaceFilter {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") StdSelect_FaceFilter::~StdSelect_FaceFilter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StdSelect_FaceFilter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StdSelect_Prs;
class StdSelect_Prs : public Prs3d_Presentation {
	public:
		%feature("autodoc", "1");
		StdSelect_Prs(const Handle_Graphic3d_StructureManager &aStructureManager);
		%feature("autodoc", "1");
		const Handle_Graphic3d_StructureManager & Manager() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StdSelect_Prs {
	Handle_StdSelect_Prs GetHandle() {
	return *(Handle_StdSelect_Prs*) &$self;
	}
};
%extend StdSelect_Prs {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") StdSelect_Prs::~StdSelect_Prs %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StdSelect_Prs {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StdSelect_BRepSelectionTool;
class StdSelect_BRepSelectionTool {
	public:
		%feature("autodoc", "1");
		StdSelect_BRepSelectionTool();
		%feature("autodoc", "1");
		static		void Load(const Handle_SelectMgr_Selection &aSelection, const TopoDS_Shape aShape, const TopAbs_ShapeEnum aType, const Standard_Real theDeflection, const Standard_Real theDeviationAngle, const Standard_Boolean AutoTriangulation=1, const Standard_Integer aPriority=-0x000000001, const Standard_Integer NbPOnEdge=9, const Standard_Real MaximalParameter=500);
		%feature("autodoc", "1");
		static		void Load(const Handle_SelectMgr_Selection &aSelection, const Handle_SelectMgr_SelectableObject &Origin, const TopoDS_Shape aShape, const TopAbs_ShapeEnum aType, const Standard_Real theDeflection, const Standard_Real theDeviationAngle, const Standard_Boolean AutoTriangulation=1, const Standard_Integer aPriority=-0x000000001, const Standard_Integer NbPOnEdge=9, const Standard_Real MaximalParameter=500);
		%feature("autodoc", "1");
		static		Standard_Integer GetStandardPriority(const TopoDS_Shape aShap, const TopAbs_ShapeEnum aType);
		%feature("autodoc", "1");
		static		void ComputeSensitive(const TopoDS_Shape aShape, const Handle_StdSelect_BRepOwner &anOwner, const Handle_SelectMgr_Selection &aSelection, const Standard_Real theDeflection, const Standard_Real theDeviationAngle, const Standard_Integer NbPOnEdge, const Standard_Real MaximalParameter, const Standard_Boolean AutoTriangulation=1);
		%feature("autodoc", "1");
		static		Standard_Boolean GetSensitiveForFace(const TopoDS_Face aFace, const Handle_StdSelect_BRepOwner &anOwner, Select3D_ListOfSensitive & OutList, const Standard_Boolean AutoTriangulation=1, const Standard_Integer NbPOnEdge=9, const Standard_Real MaxiParam=500, const Standard_Boolean InteriorFlag=1);

};
%feature("shadow") StdSelect_BRepSelectionTool::~StdSelect_BRepSelectionTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StdSelect_BRepSelectionTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StdSelect_ShapeTypeFilter;
class StdSelect_ShapeTypeFilter : public SelectMgr_Filter {
	public:
		%feature("autodoc", "1");
		StdSelect_ShapeTypeFilter(const TopAbs_ShapeEnum aType);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsOk(const Handle_SelectMgr_EntityOwner &anobj) const;
		%feature("autodoc", "1");
		TopAbs_ShapeEnum Type() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean ActsOn(const TopAbs_ShapeEnum aStandardMode) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StdSelect_ShapeTypeFilter {
	Handle_StdSelect_ShapeTypeFilter GetHandle() {
	return *(Handle_StdSelect_ShapeTypeFilter*) &$self;
	}
};
%extend StdSelect_ShapeTypeFilter {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") StdSelect_ShapeTypeFilter::~StdSelect_ShapeTypeFilter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StdSelect_ShapeTypeFilter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StdSelect;
class StdSelect {
	public:
		%feature("autodoc", "1");
		StdSelect();
		%feature("autodoc", "1");
		static		Handle_Select3D_Projector GetProjector(const Handle_V3d_View &aView);
		%feature("autodoc", "1");
		static		void SetDrawerForBRepOwner(const Handle_SelectMgr_Selection &aSelection, const Handle_Prs3d_Drawer &aDrawer);

};
%feature("shadow") StdSelect::~StdSelect %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StdSelect {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StdSelect_TextProjector2d;
class StdSelect_TextProjector2d : public Select2D_Projector {
	public:
		%feature("autodoc", "1");
		StdSelect_TextProjector2d(const Handle_V2d_View &aView);
		%feature("autodoc", "1");
		void Set(const Handle_V2d_View &aView);
		%feature("autodoc", "1");
		void Set(const gp_Trsf2d atrsf);
		%feature("autodoc", "1");
		virtual		void Convert(const gp_Pnt2d aPointIn, gp_Pnt2d & aPointOut) const;
		%feature("autodoc", "1");
		virtual		void Convert(const TCollection_ExtendedString &aText, const Standard_Real XPos, const Standard_Real YPos, gp_Pnt2d & MinPoint, gp_Pnt2d & MaxPoint, const Standard_Integer afont=-0x000000001) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StdSelect_TextProjector2d {
	Handle_StdSelect_TextProjector2d GetHandle() {
	return *(Handle_StdSelect_TextProjector2d*) &$self;
	}
};
%extend StdSelect_TextProjector2d {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") StdSelect_TextProjector2d::~StdSelect_TextProjector2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StdSelect_TextProjector2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StdSelect_EdgeFilter;
class StdSelect_EdgeFilter : public SelectMgr_Filter {
	public:
		%feature("autodoc", "1");
		StdSelect_EdgeFilter(const StdSelect_TypeOfEdge Edge);
		%feature("autodoc", "1");
		void SetType(const StdSelect_TypeOfEdge aNewType);
		%feature("autodoc", "1");
		StdSelect_TypeOfEdge Type() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsOk(const Handle_SelectMgr_EntityOwner &anobj) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean ActsOn(const TopAbs_ShapeEnum aStandardMode) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StdSelect_EdgeFilter {
	Handle_StdSelect_EdgeFilter GetHandle() {
	return *(Handle_StdSelect_EdgeFilter*) &$self;
	}
};
%extend StdSelect_EdgeFilter {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") StdSelect_EdgeFilter::~StdSelect_EdgeFilter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StdSelect_EdgeFilter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StdSelect_SensitiveText2d;
class StdSelect_SensitiveText2d : public Select2D_SensitiveEntity {
	public:
		%feature("autodoc", "1");
		StdSelect_SensitiveText2d(const Handle_SelectBasics_EntityOwner &anOwnerId, const TCollection_ExtendedString &aString, const Standard_Real XPox, const Standard_Real YPos, const Standard_Real Angle=0, const Standard_Integer aFontIndex=-0x000000001);
		%feature("autodoc", "1");
		virtual		Standard_Boolean NeedsConversion() const;
		%feature("autodoc", "1");
		virtual		void Convert(const Handle_Select2D_Projector &aTextProj);
		%feature("autodoc", "1");
		virtual		void Areas(SelectBasics_ListOfBox2d & aresult);
		%feature("autodoc","Matches(Standard_Real X, Standard_Real Y, Standard_Real aTol) -> Standard_Real");

		virtual		Standard_Boolean Matches(const Standard_Real X, const Standard_Real Y, const Standard_Real aTol, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Matches(const Standard_Real XMin, const Standard_Real YMin, const Standard_Real XMax, const Standard_Real YMax, const Standard_Real aTol);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Matches(const TColgp_Array1OfPnt2d &Polyline, const Bnd_Box2d &aBox, const Standard_Real aTol);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StdSelect_SensitiveText2d {
	Handle_StdSelect_SensitiveText2d GetHandle() {
	return *(Handle_StdSelect_SensitiveText2d*) &$self;
	}
};
%extend StdSelect_SensitiveText2d {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") StdSelect_SensitiveText2d::~StdSelect_SensitiveText2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StdSelect_SensitiveText2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StdSelect_Shape;
class StdSelect_Shape : public PrsMgr_PresentableObject {
	public:
		%feature("autodoc", "1");
		StdSelect_Shape(const TopoDS_Shape Sh);
		%feature("autodoc", "1");
		virtual		void Compute(const Handle_PrsMgr_PresentationManager3d &aPresentationManager, const Handle_Prs3d_Presentation &aPresentation, const Standard_Integer aMode=0);
		%feature("autodoc", "1");
		virtual		void Compute(const Handle_Prs3d_Projector &aProjector, const Handle_Geom_Transformation &aTrsf, const Handle_Prs3d_Presentation &aPresentation);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StdSelect_Shape {
	Handle_StdSelect_Shape GetHandle() {
	return *(Handle_StdSelect_Shape*) &$self;
	}
};
%extend StdSelect_Shape {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") StdSelect_Shape::~StdSelect_Shape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StdSelect_Shape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StdSelect_IndexedDataMapNodeOfIndexedDataMapOfOwnerPrs;
class StdSelect_IndexedDataMapNodeOfIndexedDataMapOfOwnerPrs : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		StdSelect_IndexedDataMapNodeOfIndexedDataMapOfOwnerPrs(const Handle_SelectBasics_EntityOwner &K1, const Standard_Integer K2, const Handle_StdSelect_Prs &I, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
		%feature("autodoc", "1");
		Handle_SelectBasics_EntityOwner & Key1() const;
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
		Handle_StdSelect_Prs & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StdSelect_IndexedDataMapNodeOfIndexedDataMapOfOwnerPrs {
	Handle_StdSelect_IndexedDataMapNodeOfIndexedDataMapOfOwnerPrs GetHandle() {
	return *(Handle_StdSelect_IndexedDataMapNodeOfIndexedDataMapOfOwnerPrs*) &$self;
	}
};
%extend StdSelect_IndexedDataMapNodeOfIndexedDataMapOfOwnerPrs {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") StdSelect_IndexedDataMapNodeOfIndexedDataMapOfOwnerPrs::~StdSelect_IndexedDataMapNodeOfIndexedDataMapOfOwnerPrs %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StdSelect_IndexedDataMapNodeOfIndexedDataMapOfOwnerPrs {
	void _kill_pointed() {
		delete $self;
	}
};
