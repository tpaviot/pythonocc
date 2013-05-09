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

%module NIS
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include NIS_renames.i


%include NIS_required_python_modules.i


%include NIS_dependencies.i


%include NIS_headers.i




%nodefaultctor Handle_NIS_Drawer;
class Handle_NIS_Drawer : public Handle_Standard_Transient {
	public:
		%feature("autodoc", "1");
		Handle_NIS_Drawer();
		%feature("autodoc", "1");
		Handle_NIS_Drawer(const Handle_NIS_Drawer &aHandle);
		%feature("autodoc", "1");
		Handle_NIS_Drawer(const NIS_Drawer *anItem);
		%feature("autodoc", "1");
		Handle_NIS_Drawer & operator=(const Handle_NIS_Drawer &aHandle);
		%feature("autodoc", "1");
		Handle_NIS_Drawer & operator=(const NIS_Drawer *anItem);
		%feature("autodoc", "1");
		static		Handle_NIS_Drawer DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_NIS_Drawer {
	NIS_Drawer* GetObject() {
	return (NIS_Drawer*)$self->Access();
	}
};
%feature("shadow") Handle_NIS_Drawer::~Handle_NIS_Drawer %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_NIS_Drawer {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_NIS_SurfaceDrawer;
class Handle_NIS_SurfaceDrawer : public Handle_NIS_Drawer {
	public:
		%feature("autodoc", "1");
		Handle_NIS_SurfaceDrawer();
		%feature("autodoc", "1");
		Handle_NIS_SurfaceDrawer(const Handle_NIS_SurfaceDrawer &aHandle);
		%feature("autodoc", "1");
		Handle_NIS_SurfaceDrawer(const NIS_SurfaceDrawer *anItem);
		%feature("autodoc", "1");
		Handle_NIS_SurfaceDrawer & operator=(const Handle_NIS_SurfaceDrawer &aHandle);
		%feature("autodoc", "1");
		Handle_NIS_SurfaceDrawer & operator=(const NIS_SurfaceDrawer *anItem);
		%feature("autodoc", "1");
		static		Handle_NIS_SurfaceDrawer DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_NIS_SurfaceDrawer {
	NIS_SurfaceDrawer* GetObject() {
	return (NIS_SurfaceDrawer*)$self->Access();
	}
};
%feature("shadow") Handle_NIS_SurfaceDrawer::~Handle_NIS_SurfaceDrawer %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_NIS_SurfaceDrawer {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_NIS_SelectFilter;
class Handle_NIS_SelectFilter : public Handle_Standard_Transient {
	public:
		%feature("autodoc", "1");
		Handle_NIS_SelectFilter();
		%feature("autodoc", "1");
		Handle_NIS_SelectFilter(const Handle_NIS_SelectFilter &aHandle);
		%feature("autodoc", "1");
		Handle_NIS_SelectFilter(const NIS_SelectFilter *anItem);
		%feature("autodoc", "1");
		Handle_NIS_SelectFilter & operator=(const Handle_NIS_SelectFilter &aHandle);
		%feature("autodoc", "1");
		Handle_NIS_SelectFilter & operator=(const NIS_SelectFilter *anItem);
		%feature("autodoc", "1");
		static		Handle_NIS_SelectFilter DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_NIS_SelectFilter {
	NIS_SelectFilter* GetObject() {
	return (NIS_SelectFilter*)$self->Access();
	}
};
%feature("shadow") Handle_NIS_SelectFilter::~Handle_NIS_SelectFilter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_NIS_SelectFilter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_NIS_TriangulatedDrawer;
class Handle_NIS_TriangulatedDrawer : public Handle_NIS_Drawer {
	public:
		%feature("autodoc", "1");
		Handle_NIS_TriangulatedDrawer();
		%feature("autodoc", "1");
		Handle_NIS_TriangulatedDrawer(const Handle_NIS_TriangulatedDrawer &aHandle);
		%feature("autodoc", "1");
		Handle_NIS_TriangulatedDrawer(const NIS_TriangulatedDrawer *anItem);
		%feature("autodoc", "1");
		Handle_NIS_TriangulatedDrawer & operator=(const Handle_NIS_TriangulatedDrawer &aHandle);
		%feature("autodoc", "1");
		Handle_NIS_TriangulatedDrawer & operator=(const NIS_TriangulatedDrawer *anItem);
		%feature("autodoc", "1");
		static		Handle_NIS_TriangulatedDrawer DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_NIS_TriangulatedDrawer {
	NIS_TriangulatedDrawer* GetObject() {
	return (NIS_TriangulatedDrawer*)$self->Access();
	}
};
%feature("shadow") Handle_NIS_TriangulatedDrawer::~Handle_NIS_TriangulatedDrawer %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_NIS_TriangulatedDrawer {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_NIS_InteractiveObject;
class Handle_NIS_InteractiveObject : public Handle_Standard_Transient {
	public:
		%feature("autodoc", "1");
		Handle_NIS_InteractiveObject();
		%feature("autodoc", "1");
		Handle_NIS_InteractiveObject(const Handle_NIS_InteractiveObject &aHandle);
		%feature("autodoc", "1");
		Handle_NIS_InteractiveObject(const NIS_InteractiveObject *anItem);
		%feature("autodoc", "1");
		Handle_NIS_InteractiveObject & operator=(const Handle_NIS_InteractiveObject &aHandle);
		%feature("autodoc", "1");
		Handle_NIS_InteractiveObject & operator=(const NIS_InteractiveObject *anItem);
		%feature("autodoc", "1");
		static		Handle_NIS_InteractiveObject DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_NIS_InteractiveObject {
	NIS_InteractiveObject* GetObject() {
	return (NIS_InteractiveObject*)$self->Access();
	}
};
%feature("shadow") Handle_NIS_InteractiveObject::~Handle_NIS_InteractiveObject %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_NIS_InteractiveObject {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_NIS_Triangulated;
class Handle_NIS_Triangulated : public Handle_NIS_InteractiveObject {
	public:
		%feature("autodoc", "1");
		Handle_NIS_Triangulated();
		%feature("autodoc", "1");
		Handle_NIS_Triangulated(const Handle_NIS_Triangulated &aHandle);
		%feature("autodoc", "1");
		Handle_NIS_Triangulated(const NIS_Triangulated *anItem);
		%feature("autodoc", "1");
		Handle_NIS_Triangulated & operator=(const Handle_NIS_Triangulated &aHandle);
		%feature("autodoc", "1");
		Handle_NIS_Triangulated & operator=(const NIS_Triangulated *anItem);
		%feature("autodoc", "1");
		static		Handle_NIS_Triangulated DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_NIS_Triangulated {
	NIS_Triangulated* GetObject() {
	return (NIS_Triangulated*)$self->Access();
	}
};
%feature("shadow") Handle_NIS_Triangulated::~Handle_NIS_Triangulated %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_NIS_Triangulated {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_NIS_Surface;
class Handle_NIS_Surface : public Handle_NIS_InteractiveObject {
	public:
		%feature("autodoc", "1");
		Handle_NIS_Surface();
		%feature("autodoc", "1");
		Handle_NIS_Surface(const Handle_NIS_Surface &aHandle);
		%feature("autodoc", "1");
		Handle_NIS_Surface(const NIS_Surface *anItem);
		%feature("autodoc", "1");
		Handle_NIS_Surface & operator=(const Handle_NIS_Surface &aHandle);
		%feature("autodoc", "1");
		Handle_NIS_Surface & operator=(const NIS_Surface *anItem);
		%feature("autodoc", "1");
		static		Handle_NIS_Surface DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_NIS_Surface {
	NIS_Surface* GetObject() {
	return (NIS_Surface*)$self->Access();
	}
};
%feature("shadow") Handle_NIS_Surface::~Handle_NIS_Surface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_NIS_Surface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_NIS_InteractiveContext;
class Handle_NIS_InteractiveContext : public Handle_Standard_Transient {
	public:
		%feature("autodoc", "1");
		Handle_NIS_InteractiveContext();
		%feature("autodoc", "1");
		Handle_NIS_InteractiveContext(const Handle_NIS_InteractiveContext &aHandle);
		%feature("autodoc", "1");
		Handle_NIS_InteractiveContext(const NIS_InteractiveContext *anItem);
		%feature("autodoc", "1");
		Handle_NIS_InteractiveContext & operator=(const Handle_NIS_InteractiveContext &aHandle);
		%feature("autodoc", "1");
		Handle_NIS_InteractiveContext & operator=(const NIS_InteractiveContext *anItem);
		%feature("autodoc", "1");
		static		Handle_NIS_InteractiveContext DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_NIS_InteractiveContext {
	NIS_InteractiveContext* GetObject() {
	return (NIS_InteractiveContext*)$self->Access();
	}
};
%feature("shadow") Handle_NIS_InteractiveContext::~Handle_NIS_InteractiveContext %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_NIS_InteractiveContext {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_NIS_Allocator;
class Handle_NIS_Allocator : public Handle_NCollection_IncAllocator {
	public:
		%feature("autodoc", "1");
		Handle_NIS_Allocator();
		%feature("autodoc", "1");
		Handle_NIS_Allocator(const Handle_NIS_Allocator &aHandle);
		%feature("autodoc", "1");
		Handle_NIS_Allocator(const NIS_Allocator *anItem);
		%feature("autodoc", "1");
		Handle_NIS_Allocator & operator=(const Handle_NIS_Allocator &aHandle);
		%feature("autodoc", "1");
		Handle_NIS_Allocator & operator=(const NIS_Allocator *anItem);
		%feature("autodoc", "1");
		static		Handle_NIS_Allocator DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_NIS_Allocator {
	NIS_Allocator* GetObject() {
	return (NIS_Allocator*)$self->Access();
	}
};
%feature("shadow") Handle_NIS_Allocator::~Handle_NIS_Allocator %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_NIS_Allocator {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_NIS_View;
class Handle_NIS_View : public Handle_V3d_OrthographicView {
	public:
		%feature("autodoc", "1");
		Handle_NIS_View();
		%feature("autodoc", "1");
		Handle_NIS_View(const Handle_NIS_View &aHandle);
		%feature("autodoc", "1");
		Handle_NIS_View(const NIS_View *anItem);
		%feature("autodoc", "1");
		Handle_NIS_View & operator=(const Handle_NIS_View &aHandle);
		%feature("autodoc", "1");
		Handle_NIS_View & operator=(const NIS_View *anItem);
		%feature("autodoc", "1");
		static		Handle_NIS_View DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_NIS_View {
	NIS_View* GetObject() {
	return (NIS_View*)$self->Access();
	}
};
%feature("shadow") Handle_NIS_View::~Handle_NIS_View %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_NIS_View {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NIS_View;
class NIS_View : public V3d_OrthographicView {
	public:
		%feature("autodoc", "1");
		NIS_View(const Handle_V3d_Viewer &theViewer, const Handle_Aspect_Window &theWindow=0);
		%feature("autodoc", "1");
		void SetWindow(const Handle_Aspect_Window &theWindow);
		%feature("autodoc", "1");
		void SetHilightOnTop(const Standard_Boolean theTop=1);
		%feature("autodoc", "1");
		void SetDynHilightSelected(const Standard_Boolean theHilight=1);
		%feature("autodoc", "1");
		Standard_Boolean FitAll3d(const Quantity_Coefficient theCoef=1.00000000000000002081668171172168513294309377670288085938e-2);
		%feature("autodoc", "1");
		Bnd_B3f GetBndBox() const;
		%feature("autodoc","GetBndBox() -> [Standard_Integer, Standard_Integer, Standard_Integer, Standard_Integer]");

		void GetBndBox(Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		void DynamicHilight(const Standard_Integer theX, const Standard_Integer theY);
		%feature("autodoc", "1");
		void DynamicUnhilight();
		%feature("autodoc", "1");
		void Select(const Standard_Integer theX, const Standard_Integer theY, const Standard_Boolean isForceMult=0, const Standard_Boolean theRedraw=1);
		%feature("autodoc", "1");
		void Select(const Standard_Integer theXmin, const Standard_Integer theYmin, const Standard_Integer theXmax, const Standard_Integer theYmax, const Standard_Boolean isForceMult=0, const Standard_Boolean isFullyIncluded=0, const Standard_Boolean theRedraw=1);
		%feature("autodoc", "1");
		void Select(const NCollection_List<gp_XY> &thePolygon, const Standard_Boolean isForceMult=0, const Standard_Boolean isFullyIncluded=0, const Standard_Boolean theRedraw=1);
		%feature("autodoc", "1");
		Handle_NIS_InteractiveObject Pick(const Standard_Integer theX, const Standard_Integer theY);
		%feature("autodoc", "1");
		Handle_NIS_InteractiveObject Pick(const gp_Ax1 theAxis, const Standard_Real theOver, const Standard_Boolean isOnlySel);
		%feature("autodoc", "1");
		NCollection_Vector<NIS_InteractiveObject*> GetDetected() const;
		%feature("autodoc", "1");
		TColStd_PackedMapOfInteger & GetExListId();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend NIS_View {
	Handle_NIS_View GetHandle() {
	return *(Handle_NIS_View*) &$self;
	}
};
%extend NIS_View {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") NIS_View::~NIS_View %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NIS_View {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NIS_DrawList;
class NIS_DrawList {
	public:
		%feature("autodoc", "1");
		NIS_DrawList();
		%feature("autodoc", "1");
		NIS_DrawList(const Handle_NIS_View &theView);
		%feature("autodoc", "1");
		Standard_Integer GetListID(const Standard_Integer theType) const;
		%feature("autodoc", "1");
		void ClearListID(const Standard_Integer theType);
		%feature("autodoc", "1");
		void ClearListID(const Handle_NIS_View &theView=0);
		%feature("autodoc", "1");
		virtual		void BeginPrepare(const Standard_Integer theType);
		%feature("autodoc", "1");
		virtual		void EndPrepare(const Standard_Integer theType);
		%feature("autodoc", "1");
		virtual		void Call(const Standard_Integer theType);
		%feature("autodoc", "1");
		Standard_Boolean IsUpdated(const Standard_Integer theType) const;
		%feature("autodoc", "1");
		void SetUpdated(const Standard_Integer theType);
		%feature("autodoc", "1");
		const NCollection_List<Handle_NIS_InteractiveObject> & DynHilightedList() const;
		%feature("autodoc", "1");
		const Handle_NIS_View & GetView() const;
		%feature("autodoc", "1");
		Standard_Boolean SetDynHilighted(const Standard_Boolean isHilight, const Handle_NIS_InteractiveObject &theObj);

};
%feature("shadow") NIS_DrawList::~NIS_DrawList %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NIS_DrawList {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NIS_Drawer;
class NIS_Drawer : public Standard_Transient {
	public:
		enum DrawType {
			Draw_Normal,
			Draw_Top,
			Draw_Transparent,
			Draw_Hilighted,
			Draw_DynHilighted,
		};
		%feature("autodoc", "1");
		NIS_InteractiveContext * GetContext() const;
		%feature("autodoc", "1");
		virtual		void Assign(const Handle_NIS_Drawer &theOther);
		%feature("autodoc", "1");
		virtual		const Bnd_B3f & GetBox(const NIS_View *pView=0l) const;
		%feature("autodoc", "1");
		void SetUpdated(const NIS_Drawer::DrawType theType) const;
		%feature("autodoc", "1");
		void SetUpdated(const NIS_Drawer::DrawType theType1, const NIS_Drawer::DrawType theType2) const;
		%feature("autodoc", "1");
		void SetUpdated(const NIS_Drawer::DrawType theType1, const NIS_Drawer::DrawType theType2, const NIS_Drawer::DrawType theType3) const;
		%feature("autodoc", "1");
		void SetUpdated(const NIS_Drawer::DrawType theType1, const NIS_Drawer::DrawType theType2, const NIS_Drawer::DrawType theType3, const NIS_Drawer::DrawType theType4) const;
		%feature("autodoc", "1");
		void SetDynamicHilighted(const Standard_Boolean isHilighted, const Handle_NIS_InteractiveObject &theObj, const Handle_NIS_View &theView=0l);
		%feature("autodoc", "1");
		virtual		Standard_Integer HashCode(const Standard_Integer theN) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsEqual(const Handle_NIS_Drawer &theOth) const;
		%feature("autodoc", "1");
		TColStd_MapIteratorOfPackedMapOfInteger ObjectIterator() const;
		%feature("autodoc", "1");
		NCollection_List<NIS_DrawList*> GetLists() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend NIS_Drawer {
	Handle_NIS_Drawer GetHandle() {
	return *(Handle_NIS_Drawer*) &$self;
	}
};
%extend NIS_Drawer {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") NIS_Drawer::~NIS_Drawer %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NIS_Drawer {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NIS_SurfaceDrawer;
class NIS_SurfaceDrawer : public NIS_Drawer {
	public:
		%feature("autodoc", "1");
		NIS_SurfaceDrawer(const Quantity_Color &theNormal, const Quantity_Color &theHilight=Quantity_NOC_GRAY65, const Quantity_Color &theDynHilight=Quantity_NOC_CYAN1);
		%feature("autodoc", "1");
		void SetColor(const Quantity_Color &theColor);
		%feature("autodoc", "1");
		void SetBackColor(const Quantity_Color &theColor);
		%feature("autodoc", "1");
		void SetTransformation(const gp_Trsf theTrsf);
		%feature("autodoc", "1");
		const gp_Trsf  GetTransformation() const;
		%feature("autodoc", "1");
		void SetPolygonOffset(const Standard_Real theOffset);
		%feature("autodoc", "1");
		Standard_Real GetPolygonOffset() const;
		%feature("autodoc", "1");
		virtual		void BeforeDraw(const NIS_Drawer::DrawType theType, const NIS_DrawList &theDrawList);
		%feature("autodoc", "1");
		virtual		void AfterDraw(const NIS_Drawer::DrawType theType, const NIS_DrawList &theDrawList);
		%feature("autodoc", "1");
		virtual		void Draw(const Handle_NIS_InteractiveObject &arg0, const NIS_Drawer::DrawType theType, const NIS_DrawList &theDrawList);

};
%extend NIS_SurfaceDrawer {
	Handle_NIS_SurfaceDrawer GetHandle() {
	return *(Handle_NIS_SurfaceDrawer*) &$self;
	}
};
%extend NIS_SurfaceDrawer {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") NIS_SurfaceDrawer::~NIS_SurfaceDrawer %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NIS_SurfaceDrawer {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NIS_InteractiveContext;
class NIS_InteractiveContext : public Standard_Transient {
	public:
		enum SelectionMode {
			Mode_NoSelection,
			Mode_Normal,
			Mode_Additive,
			Mode_Exclusive,
		};
		%feature("autodoc", "1");
		NIS_InteractiveContext();
		%feature("autodoc", "1");
		void AttachView(const Handle_NIS_View &theView);
		%feature("autodoc", "1");
		void DetachView(const Handle_NIS_View &theView);
		%feature("autodoc", "1");
		const Handle_NIS_InteractiveObject & GetObject(const Standard_Integer theID) const;
		%feature("autodoc", "1");
		Standard_Integer NbObjects();
		%feature("autodoc", "1");
		Standard_Integer NbDrawers();
		%feature("autodoc", "1");
		void Display(Handle_NIS_InteractiveObject & theObj, const Handle_NIS_Drawer &theDrawer=0, const Standard_Boolean isUpdateViews=1);
		%feature("autodoc", "1");
		void DisplayOnTop(Handle_NIS_InteractiveObject & theObj, const Handle_NIS_Drawer &theDrawer=0, const Standard_Boolean isUpdateViews=1);
		%feature("autodoc", "1");
		void Erase(const Handle_NIS_InteractiveObject &theObj, const Standard_Boolean isUpdateViews=1);
		%feature("autodoc", "1");
		void Remove(const Handle_NIS_InteractiveObject &theObj, const Standard_Boolean isUpdateViews=1);
		%feature("autodoc", "1");
		void DisplayAll();
		%feature("autodoc", "1");
		void EraseAll();
		%feature("autodoc", "1");
		void RemoveAll();
		%feature("autodoc", "1");
		void UpdateViews();
		%feature("autodoc", "1");
		void RebuildViews();
		%feature("autodoc", "1");
		void GetBox(Bnd_B3f & theBox, const NIS_View *theView) const;
		%feature("autodoc", "1");
		const Handle_NIS_SelectFilter & GetFilter() const;
		%feature("autodoc", "1");
		void SetFilter(const Handle_NIS_SelectFilter &theFilter);
		%feature("autodoc", "1");
		NIS_InteractiveContext::SelectionMode GetSelectionMode() const;
		%feature("autodoc", "1");
		void SetSelectionMode(const NIS_InteractiveContext::SelectionMode theMode);
		%feature("autodoc", "1");
		Standard_Boolean ProcessSelection(const Handle_NIS_InteractiveObject &O, const Standard_Boolean isMultiple=0);
		%feature("autodoc", "1");
		void ProcessSelection(const TColStd_PackedMapOfInteger &map, const Standard_Boolean isMultiple=0);
		%feature("autodoc", "1");
		Standard_Boolean SetSelected(const Handle_NIS_InteractiveObject &theObj, const Standard_Boolean isSelected=1);
		%feature("autodoc", "1");
		void SetSelected(const TColStd_PackedMapOfInteger &map, const Standard_Boolean isAdded=0);
		%feature("autodoc", "1");
		Standard_Boolean IsSelected(const Handle_NIS_InteractiveObject &theOb);
		%feature("autodoc", "1");
		void ClearSelected();
		%feature("autodoc", "1");
		const TColStd_PackedMapOfInteger & GetSelected();
		%feature("autodoc", "1");
		void SetSelectable(const TColStd_PackedMapOfInteger &IDs, const Standard_Boolean isSelectable);
		%feature("autodoc", "1");
		Standard_Boolean IsSelectable(const Standard_Integer objID) const;
		%feature("autodoc", "1");
		void SetShareDrawList(Standard_Boolean );
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend NIS_InteractiveContext {
	Handle_NIS_InteractiveContext GetHandle() {
	return *(Handle_NIS_InteractiveContext*) &$self;
	}
};
%extend NIS_InteractiveContext {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") NIS_InteractiveContext::~NIS_InteractiveContext %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NIS_InteractiveContext {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NIS_ObjectsIterator;
class NIS_ObjectsIterator {
	public:
		%feature("autodoc", "1");
		NIS_ObjectsIterator();
		%feature("autodoc", "1");
		NIS_ObjectsIterator(const Handle_NIS_InteractiveContext &theCtx);
		%feature("autodoc", "1");
		void Initialize(const Handle_NIS_InteractiveContext &theCtx);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		const Handle_NIS_InteractiveObject & Value() const;
		%feature("autodoc", "1");
		void Next();

};
%feature("shadow") NIS_ObjectsIterator::~NIS_ObjectsIterator %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NIS_ObjectsIterator {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NIS_TriangulatedDrawer;
class NIS_TriangulatedDrawer : public NIS_Drawer {
	public:
		%feature("autodoc", "1");
		NIS_TriangulatedDrawer(const Quantity_Color theNormal, const Quantity_Color theHilight=Quantity_NOC_GRAY80, const Quantity_Color theDynHilight=Quantity_NOC_CYAN1);
		%feature("autodoc", "1");
		virtual		void Assign(const Handle_NIS_Drawer &theOther);
		%feature("autodoc", "1");
		virtual		void BeforeDraw(const NIS_Drawer::DrawType theType, const NIS_DrawList &theDrawList);
		%feature("autodoc", "1");
		virtual		void AfterDraw(const NIS_Drawer::DrawType theType, const NIS_DrawList &theDrawList);
		%feature("autodoc", "1");
		virtual		void Draw(const Handle_NIS_InteractiveObject &arg0, const NIS_Drawer::DrawType theType, const NIS_DrawList &theDrawList);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsEqual(const Handle_NIS_Drawer &theOth) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend NIS_TriangulatedDrawer {
	Handle_NIS_TriangulatedDrawer GetHandle() {
	return *(Handle_NIS_TriangulatedDrawer*) &$self;
	}
};
%extend NIS_TriangulatedDrawer {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") NIS_TriangulatedDrawer::~NIS_TriangulatedDrawer %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NIS_TriangulatedDrawer {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NIS_InteractiveObject;
class NIS_InteractiveObject : public Standard_Transient {
	public:
		%feature("autodoc", "1");
		Standard_Integer ID() const;
		%feature("autodoc", "1");
		NIS_Drawer::DrawType DrawType() const;
		%feature("autodoc", "1");
		const Handle_NIS_Drawer & SetDrawer(const Handle_NIS_Drawer &theDrawer, const Standard_Boolean setUpdated=1);
		%feature("autodoc", "1");
		const Handle_NIS_Drawer & GetDrawer() const;
		%feature("autodoc", "1");
		virtual		NIS_Drawer * DefaultDrawer(NIS_Drawer* theDrv) const;
		%feature("autodoc", "1");
		const Bnd_B3f & GetBox();
		%feature("autodoc", "1");
		Standard_Boolean IsTransparent() const;
		%feature("autodoc", "1");
		Standard_Boolean IsHidden() const;
		%feature("autodoc", "1");
		Standard_Boolean IsDisplayed() const;
		%feature("autodoc", "1");
		Standard_Boolean IsDynHilighted() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsSelectable() const;
		%feature("autodoc", "1");
		virtual		void SetSelectable(const Standard_Boolean isSel=1) const;
		%feature("autodoc", "1");
		Standard_ShortReal Transparency() const;
		%feature("autodoc", "1");
		void SetTransparency(const Standard_Real theValue=5.9999999999999997779553950749686919152736663818359375e-1);
		%feature("autodoc", "1");
		void UnsetTransparency();
		%feature("autodoc", "1");
		virtual		void Clone(const Handle_NCollection_BaseAllocator &theAll, Handle_NIS_InteractiveObject & theDest) const;
		%feature("autodoc", "1");
		void CloneWithID(const Handle_NCollection_BaseAllocator &arg0, Handle_NIS_InteractiveObject & arg1);
		%feature("autodoc", "1");
		virtual		Standard_Real Intersect(const gp_Ax1 theAxis, const Standard_Real theOver) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Intersect(const Bnd_B3f &theBox, const gp_Trsf theTrf, const Standard_Boolean isFull) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Intersect(const NCollection_List<gp_XY> &thePolygon, const gp_Trsf theTrf, const Standard_Boolean isFull) const;
		%feature("autodoc", "1");
		void SetAttribute(void* theAttributePtr);
		%feature("autodoc", "1");
		void * GetAttribute() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend NIS_InteractiveObject {
	Handle_NIS_InteractiveObject GetHandle() {
	return *(Handle_NIS_InteractiveObject*) &$self;
	}
};
%extend NIS_InteractiveObject {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") NIS_InteractiveObject::~NIS_InteractiveObject %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NIS_InteractiveObject {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NIS_SelectFilter;
class NIS_SelectFilter : public Standard_Transient {
	public:
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsOk(const NIS_InteractiveObject *theObject) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean ActsOn(const Handle_Standard_Type &theType) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend NIS_SelectFilter {
	Handle_NIS_SelectFilter GetHandle() {
	return *(Handle_NIS_SelectFilter*) &$self;
	}
};
%extend NIS_SelectFilter {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") NIS_SelectFilter::~NIS_SelectFilter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NIS_SelectFilter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NIS_Surface;
class NIS_Surface : public NIS_InteractiveObject {
	public:
		enum DisplayMode {
			Shading,
			Wireframe,
		};
		%feature("autodoc", "1");
		NIS_Surface(const Handle_Poly_Triangulation &theTri, const Handle_NCollection_BaseAllocator &theAlloc=0l);
		%feature("autodoc", "1");
		NIS_Surface(const TopoDS_Shape theShape, const Standard_Real theDeflection, const Handle_NCollection_BaseAllocator &theAl=0l);
		%feature("autodoc", "1");
		void Init(const TopoDS_Shape theShape, const Standard_Real theDefl);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer NNodes() const;
		%feature("autodoc", "1");
		Standard_Integer NTriangles() const;
		%feature("autodoc", "1");
		Standard_Integer NEdges() const;
		%feature("autodoc", "1");
		const Standard_ShortReal * Node(const Standard_Integer theIndex) const;
		%feature("autodoc", "1");
		const Standard_Integer * Triangle(const Standard_Integer theIndex) const;
		%feature("autodoc", "1");
		const Standard_Integer * Edge(const Standard_Integer theIndex) const;
		%feature("autodoc", "1");
		const Standard_ShortReal * Normal(const Standard_Integer theIndex) const;
		%feature("autodoc", "1");
		virtual		NIS_Drawer * DefaultDrawer(NIS_Drawer* arg0) const;
		%feature("autodoc", "1");
		void SetColor(const Quantity_Color &theColor);
		%feature("autodoc", "1");
		void SetBackColor(const Quantity_Color &theColor);
		%feature("autodoc", "1");
		void SetPolygonOffset(const Standard_Real theValue);
		%feature("autodoc", "1");
		void SetDisplayMode(const NIS_Surface::DisplayMode theMode);
		%feature("autodoc", "1");
		NIS_Surface::DisplayMode GetDisplayMode() const;
		%feature("autodoc", "1");
		virtual		void Clone(const Handle_NCollection_BaseAllocator &theAll, Handle_NIS_InteractiveObject & theDest) const;
		%feature("autodoc", "1");
		virtual		Standard_Real Intersect(const gp_Ax1 theAxis, const Standard_Real theOver) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Intersect(const Bnd_B3f &theBox, const gp_Trsf theTrf, const Standard_Boolean isFull) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Intersect(const NCollection_List<gp_XY> &thePolygon, const gp_Trsf theTrf, const Standard_Boolean isFullIn) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend NIS_Surface {
	Handle_NIS_Surface GetHandle() {
	return *(Handle_NIS_Surface*) &$self;
	}
};
%extend NIS_Surface {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") NIS_Surface::~NIS_Surface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NIS_Surface {
	void _kill_pointed() {
		delete $self;
	}
};
%extend NIS_Surface {
	NIS_Surface () {}
};


%nodefaultctor NIS_Allocator;
class NIS_Allocator : public NCollection_IncAllocator {
	public:
		%feature("autodoc", "1");
		NIS_Allocator(const size_t theBlockSize=24600);
		%feature("autodoc", "1");
		Standard_Size NAllocated() const;
		%feature("autodoc", "1");
		Standard_Size NFreed() const;
		%feature("autodoc", "1");
		void ResetCounters();
		%feature("autodoc", "1");
		virtual		void * Allocate(const size_t size);
		%feature("autodoc", "1");
		virtual		void Free(void* anAddress);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend NIS_Allocator {
	Handle_NIS_Allocator GetHandle() {
	return *(Handle_NIS_Allocator*) &$self;
	}
};
%extend NIS_Allocator {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") NIS_Allocator::~NIS_Allocator %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NIS_Allocator {
	void _kill_pointed() {
		delete $self;
	}
};
