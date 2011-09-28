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

%module Xw
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include Xw_renames.i


%include Xw_required_python_modules.i


%include Xw_dependencies.i


%include Xw_headers.i


enum Xw_WindowQuality {
	Xw_WQ_3DQUALITY,
	Xw_WQ_PICTUREQUALITY,
	Xw_WQ_DRAWINGQUALITY,
	Xw_WQ_SAMEQUALITY,
	Xw_WQ_TRANSPARENT,
	Xw_WQ_OVERLAY,
	};

enum Xw_TypeOfVisual {
	Xw_TOV_STATICGRAY,
	Xw_TOV_GRAYSCALE,
	Xw_TOV_STATICCOLOR,
	Xw_TOV_PSEUDOCOLOR,
	Xw_TOV_TRUECOLOR,
	Xw_TOV_DIRECTCOLOR,
	Xw_TOV_DEFAULT,
	Xw_TOV_PREFERRED_PSEUDOCOLOR,
	Xw_TOV_PREFERRED_TRUECOLOR,
	Xw_TOV_PREFERRED_OVERLAY,
	Xw_TOV_OVERLAY,
	};

enum Xw_TypeOfMapping {
	Xw_TOM_HARDRAMP,
	Xw_TOM_SIMPLERAMP,
	Xw_TOM_BESTRAMP,
	Xw_TOM_COLORCUBE,
	Xw_TOM_READONLY,
	};



%nodefaultctor Handle_Xw_HListOfMFTFonts;
class Handle_Xw_HListOfMFTFonts : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Xw_HListOfMFTFonts();
		%feature("autodoc", "1");
		Handle_Xw_HListOfMFTFonts(const Handle_Xw_HListOfMFTFonts &aHandle);
		%feature("autodoc", "1");
		Handle_Xw_HListOfMFTFonts(const Xw_HListOfMFTFonts *anItem);
		%feature("autodoc", "1");
		Handle_Xw_HListOfMFTFonts & operator=(const Handle_Xw_HListOfMFTFonts &aHandle);
		%feature("autodoc", "1");
		Handle_Xw_HListOfMFTFonts & operator=(const Xw_HListOfMFTFonts *anItem);
		%feature("autodoc", "1");
		static		Handle_Xw_HListOfMFTFonts DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Xw_HListOfMFTFonts {
	Xw_HListOfMFTFonts* GetObject() {
	return (Xw_HListOfMFTFonts*)$self->Access();
	}
};
%feature("shadow") Handle_Xw_HListOfMFTFonts::~Handle_Xw_HListOfMFTFonts %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Xw_HListOfMFTFonts {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Xw_ColorMap;
class Handle_Xw_ColorMap : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Xw_ColorMap();
		%feature("autodoc", "1");
		Handle_Xw_ColorMap(const Handle_Xw_ColorMap &aHandle);
		%feature("autodoc", "1");
		Handle_Xw_ColorMap(const Xw_ColorMap *anItem);
		%feature("autodoc", "1");
		Handle_Xw_ColorMap & operator=(const Handle_Xw_ColorMap &aHandle);
		%feature("autodoc", "1");
		Handle_Xw_ColorMap & operator=(const Xw_ColorMap *anItem);
		%feature("autodoc", "1");
		static		Handle_Xw_ColorMap DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Xw_ColorMap {
	Xw_ColorMap* GetObject() {
	return (Xw_ColorMap*)$self->Access();
	}
};
%feature("shadow") Handle_Xw_ColorMap::~Handle_Xw_ColorMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Xw_ColorMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Xw_TextManager;
class Handle_Xw_TextManager : public Handle_MFT_TextManager {
	public:
		%feature("autodoc", "1");
		Handle_Xw_TextManager();
		%feature("autodoc", "1");
		Handle_Xw_TextManager(const Handle_Xw_TextManager &aHandle);
		%feature("autodoc", "1");
		Handle_Xw_TextManager(const Xw_TextManager *anItem);
		%feature("autodoc", "1");
		Handle_Xw_TextManager & operator=(const Handle_Xw_TextManager &aHandle);
		%feature("autodoc", "1");
		Handle_Xw_TextManager & operator=(const Xw_TextManager *anItem);
		%feature("autodoc", "1");
		static		Handle_Xw_TextManager DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Xw_TextManager {
	Xw_TextManager* GetObject() {
	return (Xw_TextManager*)$self->Access();
	}
};
%feature("shadow") Handle_Xw_TextManager::~Handle_Xw_TextManager %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Xw_TextManager {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Xw_Driver;
class Handle_Xw_Driver : public Handle_Aspect_WindowDriver {
	public:
		%feature("autodoc", "1");
		Handle_Xw_Driver();
		%feature("autodoc", "1");
		Handle_Xw_Driver(const Handle_Xw_Driver &aHandle);
		%feature("autodoc", "1");
		Handle_Xw_Driver(const Xw_Driver *anItem);
		%feature("autodoc", "1");
		Handle_Xw_Driver & operator=(const Handle_Xw_Driver &aHandle);
		%feature("autodoc", "1");
		Handle_Xw_Driver & operator=(const Xw_Driver *anItem);
		%feature("autodoc", "1");
		static		Handle_Xw_Driver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Xw_Driver {
	Xw_Driver* GetObject() {
	return (Xw_Driver*)$self->Access();
	}
};
%feature("shadow") Handle_Xw_Driver::~Handle_Xw_Driver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Xw_Driver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Xw_WidthMap;
class Handle_Xw_WidthMap : public Handle_Standard_Transient {
	public:
		%feature("autodoc", "1");
		Handle_Xw_WidthMap();
		%feature("autodoc", "1");
		Handle_Xw_WidthMap(const Handle_Xw_WidthMap &aHandle);
		%feature("autodoc", "1");
		Handle_Xw_WidthMap(const Xw_WidthMap *anItem);
		%feature("autodoc", "1");
		Handle_Xw_WidthMap & operator=(const Handle_Xw_WidthMap &aHandle);
		%feature("autodoc", "1");
		Handle_Xw_WidthMap & operator=(const Xw_WidthMap *anItem);
		%feature("autodoc", "1");
		static		Handle_Xw_WidthMap DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Xw_WidthMap {
	Xw_WidthMap* GetObject() {
	return (Xw_WidthMap*)$self->Access();
	}
};
%feature("shadow") Handle_Xw_WidthMap::~Handle_Xw_WidthMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Xw_WidthMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Xw_GraphicDevice;
class Handle_Xw_GraphicDevice : public Handle_Aspect_GraphicDevice {
	public:
		%feature("autodoc", "1");
		Handle_Xw_GraphicDevice();
		%feature("autodoc", "1");
		Handle_Xw_GraphicDevice(const Handle_Xw_GraphicDevice &aHandle);
		%feature("autodoc", "1");
		Handle_Xw_GraphicDevice(const Xw_GraphicDevice *anItem);
		%feature("autodoc", "1");
		Handle_Xw_GraphicDevice & operator=(const Handle_Xw_GraphicDevice &aHandle);
		%feature("autodoc", "1");
		Handle_Xw_GraphicDevice & operator=(const Xw_GraphicDevice *anItem);
		%feature("autodoc", "1");
		static		Handle_Xw_GraphicDevice DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Xw_GraphicDevice {
	Xw_GraphicDevice* GetObject() {
	return (Xw_GraphicDevice*)$self->Access();
	}
};
%feature("shadow") Handle_Xw_GraphicDevice::~Handle_Xw_GraphicDevice %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Xw_GraphicDevice {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Xw_FontMap;
class Handle_Xw_FontMap : public Handle_Standard_Transient {
	public:
		%feature("autodoc", "1");
		Handle_Xw_FontMap();
		%feature("autodoc", "1");
		Handle_Xw_FontMap(const Handle_Xw_FontMap &aHandle);
		%feature("autodoc", "1");
		Handle_Xw_FontMap(const Xw_FontMap *anItem);
		%feature("autodoc", "1");
		Handle_Xw_FontMap & operator=(const Handle_Xw_FontMap &aHandle);
		%feature("autodoc", "1");
		Handle_Xw_FontMap & operator=(const Xw_FontMap *anItem);
		%feature("autodoc", "1");
		static		Handle_Xw_FontMap DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Xw_FontMap {
	Xw_FontMap* GetObject() {
	return (Xw_FontMap*)$self->Access();
	}
};
%feature("shadow") Handle_Xw_FontMap::~Handle_Xw_FontMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Xw_FontMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Xw_MarkMap;
class Handle_Xw_MarkMap : public Handle_Standard_Transient {
	public:
		%feature("autodoc", "1");
		Handle_Xw_MarkMap();
		%feature("autodoc", "1");
		Handle_Xw_MarkMap(const Handle_Xw_MarkMap &aHandle);
		%feature("autodoc", "1");
		Handle_Xw_MarkMap(const Xw_MarkMap *anItem);
		%feature("autodoc", "1");
		Handle_Xw_MarkMap & operator=(const Handle_Xw_MarkMap &aHandle);
		%feature("autodoc", "1");
		Handle_Xw_MarkMap & operator=(const Xw_MarkMap *anItem);
		%feature("autodoc", "1");
		static		Handle_Xw_MarkMap DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Xw_MarkMap {
	Xw_MarkMap* GetObject() {
	return (Xw_MarkMap*)$self->Access();
	}
};
%feature("shadow") Handle_Xw_MarkMap::~Handle_Xw_MarkMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Xw_MarkMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Xw_Window;
class Handle_Xw_Window : public Handle_Aspect_Window {
	public:
		%feature("autodoc", "1");
		Handle_Xw_Window();
		%feature("autodoc", "1");
		Handle_Xw_Window(const Handle_Xw_Window &aHandle);
		%feature("autodoc", "1");
		Handle_Xw_Window(const Xw_Window *anItem);
		%feature("autodoc", "1");
		Handle_Xw_Window & operator=(const Handle_Xw_Window &aHandle);
		%feature("autodoc", "1");
		Handle_Xw_Window & operator=(const Xw_Window *anItem);
		%feature("autodoc", "1");
		static		Handle_Xw_Window DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Xw_Window {
	Xw_Window* GetObject() {
	return (Xw_Window*)$self->Access();
	}
};
%feature("shadow") Handle_Xw_Window::~Handle_Xw_Window %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Xw_Window {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Xw_IconBox;
class Handle_Xw_IconBox : public Handle_Xw_Window {
	public:
		%feature("autodoc", "1");
		Handle_Xw_IconBox();
		%feature("autodoc", "1");
		Handle_Xw_IconBox(const Handle_Xw_IconBox &aHandle);
		%feature("autodoc", "1");
		Handle_Xw_IconBox(const Xw_IconBox *anItem);
		%feature("autodoc", "1");
		Handle_Xw_IconBox & operator=(const Handle_Xw_IconBox &aHandle);
		%feature("autodoc", "1");
		Handle_Xw_IconBox & operator=(const Xw_IconBox *anItem);
		%feature("autodoc", "1");
		static		Handle_Xw_IconBox DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Xw_IconBox {
	Xw_IconBox* GetObject() {
	return (Xw_IconBox*)$self->Access();
	}
};
%feature("shadow") Handle_Xw_IconBox::~Handle_Xw_IconBox %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Xw_IconBox {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Xw_TypeMap;
class Handle_Xw_TypeMap : public Handle_Standard_Transient {
	public:
		%feature("autodoc", "1");
		Handle_Xw_TypeMap();
		%feature("autodoc", "1");
		Handle_Xw_TypeMap(const Handle_Xw_TypeMap &aHandle);
		%feature("autodoc", "1");
		Handle_Xw_TypeMap(const Xw_TypeMap *anItem);
		%feature("autodoc", "1");
		Handle_Xw_TypeMap & operator=(const Handle_Xw_TypeMap &aHandle);
		%feature("autodoc", "1");
		Handle_Xw_TypeMap & operator=(const Xw_TypeMap *anItem);
		%feature("autodoc", "1");
		static		Handle_Xw_TypeMap DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Xw_TypeMap {
	Xw_TypeMap* GetObject() {
	return (Xw_TypeMap*)$self->Access();
	}
};
%feature("shadow") Handle_Xw_TypeMap::~Handle_Xw_TypeMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Xw_TypeMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Xw_PixMap;
class Handle_Xw_PixMap : public Handle_Aspect_PixMap {
	public:
		%feature("autodoc", "1");
		Handle_Xw_PixMap();
		%feature("autodoc", "1");
		Handle_Xw_PixMap(const Handle_Xw_PixMap &aHandle);
		%feature("autodoc", "1");
		Handle_Xw_PixMap(const Xw_PixMap *anItem);
		%feature("autodoc", "1");
		Handle_Xw_PixMap & operator=(const Handle_Xw_PixMap &aHandle);
		%feature("autodoc", "1");
		Handle_Xw_PixMap & operator=(const Xw_PixMap *anItem);
		%feature("autodoc", "1");
		static		Handle_Xw_PixMap DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Xw_PixMap {
	Xw_PixMap* GetObject() {
	return (Xw_PixMap*)$self->Access();
	}
};
%feature("shadow") Handle_Xw_PixMap::~Handle_Xw_PixMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Xw_PixMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Xw_GraphicDevice;
class Xw_GraphicDevice : public Aspect_GraphicDevice {
	public:
		%feature("autodoc", "1");
		Xw_GraphicDevice(const char * Connection, const Xw_TypeOfMapping Mapping=Xw_TOM_COLORCUBE, const Standard_Integer Ncolors=0, const Standard_Boolean UseDefault=1);
		%feature("autodoc", "1");
		virtual		void Destroy();
		%feature("autodoc", "1");
		Handle_Xw_ColorMap ColorMap2D() const;
		%feature("autodoc", "1");
		Xw_TypeOfVisual VisualClass2D() const;
		%feature("autodoc", "1");
		Xw_TypeOfVisual OverlayVisualClass2D() const;
		%feature("autodoc", "1");
		Handle_Xw_ColorMap ColorMap3D() const;
		%feature("autodoc", "1");
		Xw_TypeOfVisual VisualClass3D() const;
		%feature("autodoc", "1");
		Xw_TypeOfVisual OverlayVisualClass3D() const;
		%feature("autodoc", "1");
		Handle_Xw_TypeMap TypeMap() const;
		%feature("autodoc", "1");
		Handle_Xw_WidthMap WidthMap() const;
		%feature("autodoc", "1");
		Handle_Xw_FontMap FontMap() const;
		%feature("autodoc", "1");
		Handle_Xw_MarkMap MarkMap() const;
		%feature("autodoc", "1");
		char * Display() const;
		%feature("autodoc", "1");
		Standard_Address XDisplay() const;
		%feature("autodoc","DisplaySize() -> [Standard_Integer, Standard_Integer]");

		void DisplaySize(Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc","DisplaySize() -> [Standard_Real, Standard_Real]");

		void DisplaySize(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Integer PlaneLayer(const Standard_Integer aVisualID) const;
		%feature("autodoc", "1");
		virtual		Handle_Aspect_GraphicDriver GraphicDriver() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Xw_GraphicDevice {
	Handle_Xw_GraphicDevice GetHandle() {
	return *(Handle_Xw_GraphicDevice*) &$self;
	}
};
%extend Xw_GraphicDevice {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") Xw_GraphicDevice::~Xw_GraphicDevice %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Xw_GraphicDevice {
	void _kill_pointed() {
		delete $self;
	}
};
%extend Xw_GraphicDevice {
	Xw_GraphicDevice () {}
};


%nodefaultctor Xw_HListOfMFTFonts;
class Xw_HListOfMFTFonts : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Xw_HListOfMFTFonts(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		Xw_HListOfMFTFonts(const Standard_Integer Low, const Standard_Integer Up, const Handle_MFT_FontManager &V);
		%feature("autodoc", "1");
		void Init(const Handle_MFT_FontManager &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_MFT_FontManager &Value);
		%feature("autodoc", "1");
		const Handle_MFT_FontManager & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_MFT_FontManager & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const Xw_ListOfMFTFonts & Array1() const;
		%feature("autodoc", "1");
		Xw_ListOfMFTFonts & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Xw_HListOfMFTFonts {
	Handle_Xw_HListOfMFTFonts GetHandle() {
	return *(Handle_Xw_HListOfMFTFonts*) &$self;
	}
};
%extend Xw_HListOfMFTFonts {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") Xw_HListOfMFTFonts::~Xw_HListOfMFTFonts %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Xw_HListOfMFTFonts {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Xw_Driver;
class Xw_Driver : public Aspect_WindowDriver {
	public:
		%feature("autodoc", "1");
		Xw_Driver(const Handle_Xw_Window &aWindow);
		%feature("autodoc", "1");
		virtual		void BeginDraw(const Standard_Boolean DoubleBuffer=1, const Standard_Integer aRetainBuffer=0);
		%feature("autodoc", "1");
		virtual		void EndDraw(const Standard_Boolean Synchronize=0);
		%feature("autodoc", "1");
		virtual		Aspect_TypeOfResize ResizeSpace();
		%feature("autodoc", "1");
		virtual		void SetDrawMode(const Aspect_TypeOfDrawMode aMode);
		%feature("autodoc", "1");
		virtual		void SetLineAttrib(const Standard_Integer ColorIndex, const Standard_Integer TypeIndex, const Standard_Integer WidthIndex);
		%feature("autodoc", "1");
		virtual		void SetTextAttrib(const Standard_Integer ColorIndex, const Standard_Integer FontIndex);
		%feature("autodoc", "1");
		virtual		void SetTextAttrib(const Standard_Integer ColorIndex, const Standard_Integer FontIndex, const Quantity_PlaneAngle aSlant, const Quantity_Factor aHScale, const Quantity_Factor aWScale, const Standard_Boolean isUnderlined=0);
		%feature("autodoc", "1");
		virtual		void SetPolyAttrib(const Standard_Integer ColorIndex, const Standard_Integer TileIndex, const Standard_Boolean DrawEdgeFlag=0);
		%feature("autodoc", "1");
		virtual		void SetMarkerAttrib(const Standard_Integer ColorIndex, const Standard_Integer EdgeWidthIndex, const Standard_Boolean FillMarker=0);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsKnownImage(const Handle_Standard_Transient &anImage);
		%feature("autodoc","SizeOfImageFile(Standard_CString anImageFile) -> [Standard_Integer, Standard_Integer]");

		virtual		Standard_Boolean SizeOfImageFile(const char * anImageFile, Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		virtual		void ClearImage(const Handle_Standard_Transient &anImageId);
		%feature("autodoc", "1");
		virtual		void ClearImageFile(const char * anImageFile);
		%feature("autodoc", "1");
		virtual		void DrawImage(const Handle_Standard_Transient &anImageId, const Standard_ShortReal aX, const Standard_ShortReal aY);
		%feature("autodoc", "1");
		virtual		void DrawImageFile(const char * anImageFile, const Standard_ShortReal aX, const Standard_ShortReal aY, const Quantity_Factor aScale=1.0e+0);
		%feature("autodoc", "1");
		virtual		void FillAndDrawImage(const Handle_Standard_Transient &anImageId, const Standard_ShortReal aX, const Standard_ShortReal aY, const Standard_Integer Width, const Standard_Integer Height, const Standard_Address anArrayOfPixels);
		%feature("autodoc", "1");
		virtual		void FillAndDrawImage(const Handle_Standard_Transient &anImageId, const Standard_ShortReal aX, const Standard_ShortReal aY, const Standard_Integer anIndexOfLine, const Standard_Integer Width, const Standard_Integer Height, const Standard_Address anArrayOfPixels);
		%feature("autodoc", "1");
		virtual		void DrawPolyline(const TShort_Array1OfShortReal &ListX, const TShort_Array1OfShortReal &ListY);
		%feature("autodoc", "1");
		virtual		void DrawPolygon(const TShort_Array1OfShortReal &ListX, const TShort_Array1OfShortReal &ListY);
		%feature("autodoc", "1");
		virtual		void DrawSegment(const Standard_ShortReal X1, const Standard_ShortReal Y1, const Standard_ShortReal X2, const Standard_ShortReal Y2);
		%feature("autodoc", "1");
		virtual		void DrawText(const TCollection_ExtendedString &Text, const Standard_ShortReal Xpos, const Standard_ShortReal Ypos, const Standard_ShortReal anAngle=0.0, const Aspect_TypeOfText aType=Aspect_TOT_SOLID);
		%feature("autodoc", "1");
		virtual		void DrawText(const char * Text, const Standard_ShortReal Xpos, const Standard_ShortReal Ypos, const Standard_ShortReal anAngle=0.0, const Aspect_TypeOfText aType=Aspect_TOT_SOLID);
		%feature("autodoc", "1");
		virtual		void DrawPolyText(const TCollection_ExtendedString &aText, const Standard_ShortReal Xpos, const Standard_ShortReal Ypos, const Quantity_Ratio aMarge=1.00000000000000005551115123125782702118158340454e-1, const Standard_ShortReal anAngle=0.0, const Aspect_TypeOfText aType=Aspect_TOT_SOLID);
		%feature("autodoc", "1");
		virtual		void DrawPolyText(const char * aText, const Standard_ShortReal Xpos, const Standard_ShortReal Ypos, const Quantity_Ratio aMarge=1.00000000000000005551115123125782702118158340454e-1, const Standard_ShortReal anAngle=0.0, const Aspect_TypeOfText aType=Aspect_TOT_SOLID);
		%feature("autodoc", "1");
		virtual		void DrawPoint(const Standard_ShortReal X, const Standard_ShortReal Y);
		%feature("autodoc", "1");
		virtual		void DrawMarker(const Standard_Integer aMarker, const Standard_ShortReal Xpos, const Standard_ShortReal Ypos, const Standard_ShortReal Width, const Standard_ShortReal Height, const Standard_ShortReal Angle=0.0);
		%feature("autodoc", "1");
		virtual		Standard_Boolean DrawArc(const Standard_ShortReal X, const Standard_ShortReal Y, const Standard_ShortReal aXradius, const Standard_ShortReal aYradius, const Standard_ShortReal aStartAngle=0.0, const Standard_ShortReal anOpenAngle=6.28318499999999957594809529837220907211303710938e+0);
		%feature("autodoc", "1");
		virtual		Standard_Boolean DrawPolyArc(const Standard_ShortReal X, const Standard_ShortReal Y, const Standard_ShortReal anXradius, const Standard_ShortReal anYradius, const Standard_ShortReal aStartAngle=0.0, const Standard_ShortReal anOpenAngle=6.28318499999999957594809529837220907211303710938e+0);
		%feature("autodoc", "1");
		virtual		void BeginPolyline(const Standard_Integer aNumber);
		%feature("autodoc", "1");
		virtual		void BeginPolygon(const Standard_Integer aNumber);
		%feature("autodoc", "1");
		virtual		void BeginSegments();
		%feature("autodoc", "1");
		virtual		void BeginArcs();
		%feature("autodoc", "1");
		virtual		void BeginPolyArcs();
		%feature("autodoc", "1");
		virtual		void BeginMarkers();
		%feature("autodoc", "1");
		virtual		void BeginPoints();
		%feature("autodoc", "1");
		virtual		void ClosePrimitive();
		%feature("autodoc", "1");
		virtual		Standard_Boolean OpenBuffer(const Standard_Integer aRetainBuffer, const Standard_ShortReal aPivotX=0.0, const Standard_ShortReal aPivotY=0.0, const Standard_Integer aWidthIndex=0, const Standard_Integer aColorIndex=0, const Standard_Integer aFontIndex=0, const Aspect_TypeOfDrawMode aDrawMode=Aspect_TODM_REPLACE);
		%feature("autodoc", "1");
		virtual		void CloseBuffer(const Standard_Integer aRetainBuffer) const;
		%feature("autodoc", "1");
		virtual		void ClearBuffer(const Standard_Integer aRetainBuffer) const;
		%feature("autodoc", "1");
		virtual		void DrawBuffer(const Standard_Integer aRetainBuffer) const;
		%feature("autodoc", "1");
		virtual		void EraseBuffer(const Standard_Integer aRetainBuffer) const;
		%feature("autodoc", "1");
		virtual		void MoveBuffer(const Standard_Integer aRetainBuffer, const Standard_ShortReal aPivotX=0.0, const Standard_ShortReal aPivotY=0.0) const;
		%feature("autodoc", "1");
		virtual		void ScaleBuffer(const Standard_Integer aRetainBuffer, const Quantity_Factor aScaleX=1.0e+0, const Quantity_Factor aScaleY=1.0e+0) const;
		%feature("autodoc", "1");
		virtual		void RotateBuffer(const Standard_Integer aRetainBuffer, const Quantity_PlaneAngle anAngle=0.0) const;
		%feature("autodoc","WorkSpace() -> [Standard_Real, Standard_Real]");

		virtual		void WorkSpace(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		virtual		void TextSize(const TCollection_ExtendedString &aText, Standard_ShortReal & aWidth, Standard_ShortReal & aHeight, const Standard_Integer aFontIndex=-0x000000001) const;
		%feature("autodoc", "1");
		virtual		void TextSize(const TCollection_ExtendedString &aText, Standard_ShortReal & aWidth, Standard_ShortReal & aHeight, Standard_ShortReal & anXoffset, Standard_ShortReal & anYoffset, const Standard_Integer aFontIndex=-0x000000001) const;
		%feature("autodoc", "1");
		virtual		void TextSize(const char * aText, Standard_ShortReal & aWidth, Standard_ShortReal & aHeight, Standard_ShortReal & anXoffset, Standard_ShortReal & anYoffset, const Standard_Integer aFontIndex=-0x000000001) const;
		%feature("autodoc", "1");
		virtual		char * FontSize(Quantity_PlaneAngle & aSlant, Standard_ShortReal & aSize, Standard_ShortReal & aBheight, const Standard_Integer aFontIndex=-0x000000001) const;
		%feature("autodoc", "1");
		virtual		Quantity_Length Convert(const Standard_Integer PV) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer Convert(const Quantity_Length DV) const;
		%feature("autodoc","Convert(Standard_Integer PX, Standard_Integer PY) -> [Standard_Real, Standard_Real]");

		virtual		void Convert(const Standard_Integer PX, const Standard_Integer PY, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc","Convert(Quantity_Length DX, Quantity_Length DY) -> [Standard_Integer, Standard_Integer]");

		virtual		void Convert(const Quantity_Length DX, const Quantity_Length DY, Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean BufferIsOpen(const Standard_Integer aRetainBuffer) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean BufferIsEmpty(const Standard_Integer aRetainBuffer) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean BufferIsDrawn(const Standard_Integer aRetainBuffer) const;
		%feature("autodoc", "1");
		virtual		void AngleOfBuffer(const Standard_Integer aRetainBuffer, Quantity_PlaneAngle & anAngle) const;
		%feature("autodoc", "1");
		virtual		void ScaleOfBuffer(const Standard_Integer aRetainBuffer, Quantity_Factor & aScaleX, Quantity_Factor & aScaleY) const;
		%feature("autodoc", "1");
		virtual		void PositionOfBuffer(const Standard_Integer aRetainBuffer, Standard_ShortReal & aPivotX, Standard_ShortReal & aPivotY) const;
		%feature("autodoc","ColorBoundIndexs() -> [Standard_Integer, Standard_Integer]");

		virtual		void ColorBoundIndexs(Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer LocalColorIndex(const Standard_Integer anIndex) const;
		%feature("autodoc","FontBoundIndexs() -> [Standard_Integer, Standard_Integer]");

		virtual		void FontBoundIndexs(Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer LocalFontIndex(const Standard_Integer anIndex) const;
		%feature("autodoc","TypeBoundIndexs() -> [Standard_Integer, Standard_Integer]");

		virtual		void TypeBoundIndexs(Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer LocalTypeIndex(const Standard_Integer anIndex) const;
		%feature("autodoc","WidthBoundIndexs() -> [Standard_Integer, Standard_Integer]");

		virtual		void WidthBoundIndexs(Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer LocalWidthIndex(const Standard_Integer anIndex) const;
		%feature("autodoc","MarkBoundIndexs() -> [Standard_Integer, Standard_Integer]");

		virtual		void MarkBoundIndexs(Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer LocalMarkIndex(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Xw_Driver {
	Handle_Xw_Driver GetHandle() {
	return *(Handle_Xw_Driver*) &$self;
	}
};
%extend Xw_Driver {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") Xw_Driver::~Xw_Driver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Xw_Driver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Xw_WidthMap;
class Xw_WidthMap : public Standard_Transient {
	public:
		%feature("autodoc", "1");
		Xw_WidthMap(const char * Connexion);
		%feature("autodoc", "1");
		virtual		void SetEntry(const Aspect_WidthMapEntry &Entry);
		%feature("autodoc", "1");
		virtual		void SetEntries(const Handle_Aspect_WidthMap &Widthmap);
		%feature("autodoc", "1");
		virtual		void Destroy();
		%feature("autodoc", "1");
		Standard_Integer FreeWidths() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Xw_WidthMap {
	Handle_Xw_WidthMap GetHandle() {
	return *(Handle_Xw_WidthMap*) &$self;
	}
};
%extend Xw_WidthMap {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") Xw_WidthMap::~Xw_WidthMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Xw_WidthMap {
	void _kill_pointed() {
		delete $self;
	}
};
%extend Xw_WidthMap {
	Xw_WidthMap () {}
};


%nodefaultctor Xw_ColorMap;
class Xw_ColorMap : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Xw_ColorMap(const char * Connexion, const Xw_TypeOfVisual Visual=Xw_TOV_PREFERRED_PSEUDOCOLOR, const Xw_TypeOfMapping Mapping=Xw_TOM_COLORCUBE, const Standard_Integer Ncolors=0, const Standard_Boolean UseDefault=1);
		%feature("autodoc", "1");
		virtual		void SetEntry(const Standard_Integer Index, const Standard_Real Red, const Standard_Real Green, const Standard_Real Blue);
		%feature("autodoc", "1");
		virtual		void SetEntry(const Aspect_ColorMapEntry &Entry);
		%feature("autodoc", "1");
		virtual		void SetEntries(const Handle_Aspect_ColorMap &Colormap);
		%feature("autodoc", "1");
		virtual		void SetHighlightColor(const Quantity_Color &aColor);
		%feature("autodoc", "1");
		virtual		void Destroy();
		%feature("autodoc", "1");
		virtual		Quantity_Color HighlightColor() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer PixelOfColor(const Quantity_Color &aColor) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer AllocatesPixelOfColor() const;
		%feature("autodoc", "1");
		void FreePixelOfColor(const Standard_Integer aPixel) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean SetColorOfPixel(const Standard_Integer aPixel, const Quantity_Color &aColor) const;
		%feature("autodoc","Entry(Standard_Integer Index) -> [Standard_Real, Standard_Real, Standard_Real]");

		virtual		Standard_Integer Entry(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer HighlightPixel() const;
		%feature("autodoc", "1");
		Standard_Integer MaxColors() const;
		%feature("autodoc", "1");
		Standard_Integer MaxOverlayColors() const;
		%feature("autodoc", "1");
		Aspect_Handle XColorMap() const;
		%feature("autodoc","XColorCube() -> [Standard_Integer, Standard_Integer, Standard_Integer, Standard_Integer, Standard_Integer, Standard_Integer, Standard_Integer, Standard_Integer]");

		Standard_Boolean XColorCube(Aspect_Handle & ColormapID, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc","XGrayRamp() -> [Standard_Integer, Standard_Integer, Standard_Integer, Standard_Integer]");

		Standard_Boolean XGrayRamp(Aspect_Handle & ColormapID, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		Aspect_Handle XOverlayColorMap() const;
		%feature("autodoc", "1");
		Standard_Address XVisual() const;
		%feature("autodoc", "1");
		Standard_Address XOverlayVisual() const;
		%feature("autodoc", "1");
		Xw_TypeOfVisual VisualClass() const;
		%feature("autodoc", "1");
		Xw_TypeOfVisual OverlayVisualClass() const;
		%feature("autodoc", "1");
		Standard_Integer VisualID() const;
		%feature("autodoc", "1");
		Standard_Integer OverlayVisualID() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Xw_ColorMap {
	Handle_Xw_ColorMap GetHandle() {
	return *(Handle_Xw_ColorMap*) &$self;
	}
};
%extend Xw_ColorMap {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") Xw_ColorMap::~Xw_ColorMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Xw_ColorMap {
	void _kill_pointed() {
		delete $self;
	}
};
%extend Xw_ColorMap {
	Xw_ColorMap () {}
};


%nodefaultctor Xw_TextManager;
class Xw_TextManager : public MFT_TextManager {
	public:
		%feature("autodoc", "1");
		Xw_TextManager(const Standard_Address aDrawable, const Standard_Address aWidthMap);
		%feature("autodoc", "1");
		virtual		void BeginString(const Quantity_Length X, const Quantity_Length Y, const Quantity_PlaneAngle anOrientation, const Quantity_Length aWidth, const Quantity_Length aHeight, const Quantity_PlaneAngle aSlant, const Standard_Integer aPaintType);
		%feature("autodoc", "1");
		virtual		Standard_Boolean BeginChar(const Standard_Integer aCharCode, const Quantity_Length X, const Quantity_Length Y);
		%feature("autodoc", "1");
		virtual		Standard_Boolean SetCharBoundingBox(const Quantity_Length X1, const Quantity_Length Y1, const Quantity_Length X2, const Quantity_Length Y2, const Quantity_Length X3, const Quantity_Length Y3, const Quantity_Length X4, const Quantity_Length Y4);
		%feature("autodoc", "1");
		virtual		Standard_Boolean SetCharEncoding(const char * anEncoding);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Moveto(const Quantity_Length X, const Quantity_Length Y);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Lineto(const Quantity_Length X, const Quantity_Length Y);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Curveto(const Quantity_Length X1, const Quantity_Length Y1, const Quantity_Length X2, const Quantity_Length Y2, const Quantity_Length X3, const Quantity_Length Y3, const Quantity_Length X4, const Quantity_Length Y4);
		%feature("autodoc", "1");
		virtual		void ClosePath();
		%feature("autodoc", "1");
		virtual		Standard_Boolean EndChar(const Quantity_Length X, const Quantity_Length Y);
		%feature("autodoc", "1");
		virtual		void EndString();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Xw_TextManager {
	Handle_Xw_TextManager GetHandle() {
	return *(Handle_Xw_TextManager*) &$self;
	}
};
%extend Xw_TextManager {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") Xw_TextManager::~Xw_TextManager %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Xw_TextManager {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Xw_Window;
class Xw_Window : public Aspect_Window {
	public:
		%feature("autodoc", "1");
		Xw_Window(const Handle_Xw_GraphicDevice &Device);
		%feature("autodoc", "1");
		Xw_Window(const Handle_Xw_GraphicDevice &Device, const Standard_Integer aPart1, const Standard_Integer aPart2, const Xw_WindowQuality aQuality=Xw_WQ_SAMEQUALITY, const Quantity_NameOfColor BackColor=Quantity_NOC_MATRAGRAY);
		%feature("autodoc", "1");
		Xw_Window(const Handle_Xw_GraphicDevice &Device, const Aspect_Handle aWindow, const Xw_WindowQuality aQuality=Xw_WQ_SAMEQUALITY, const Quantity_NameOfColor BackColor=Quantity_NOC_MATRAGRAY);
		%feature("autodoc", "1");
		Xw_Window(const Handle_Xw_GraphicDevice &Device, const char * Title, const Quantity_Parameter Xc=5.0e-1, const Quantity_Parameter Yc=5.0e-1, const Quantity_Parameter Width=5.0e-1, const Quantity_Parameter Height=5.0e-1, const Xw_WindowQuality Quality=Xw_WQ_DRAWINGQUALITY, const Quantity_NameOfColor BackColor=Quantity_NOC_MATRAGRAY, const Aspect_Handle Parent=0);
		%feature("autodoc", "1");
		Xw_Window(const Handle_Xw_GraphicDevice &theDevice, const char * theTitle, const Standard_Integer thePxLeft, const Standard_Integer thePxTop, const Standard_Integer thePxWidth, const Standard_Integer thePxHeight, const Xw_WindowQuality theQuality=Xw_WQ_DRAWINGQUALITY, const Quantity_NameOfColor theBackColor=Quantity_NOC_MATRAGRAY, const Aspect_Handle theParent=0);
		%feature("autodoc", "1");
		virtual		void SetBackground(const Aspect_Background &Background);
		%feature("autodoc", "1");
		virtual		void SetBackground(const Quantity_NameOfColor BackColor);
		%feature("autodoc", "1");
		virtual		void SetBackground(const Quantity_Color &color);
		%feature("autodoc", "1");
		virtual		void SetBackground(const Aspect_Handle aPixmap);
		%feature("autodoc", "1");
		virtual		Standard_Boolean SetBackground(const char * aName, const Aspect_FillMethod aMethod=Aspect_FM_CENTERED);
		%feature("autodoc", "1");
		virtual		void SetBackground(const Aspect_GradientBackground &Background);
		%feature("autodoc", "1");
		void SetBackground(const Quantity_Color &aCol1, const Quantity_Color &aCol2, const Aspect_GradientFillMethod aMethod=Aspect_GFM_HOR);
		%feature("autodoc", "1");
		virtual		void SetDoubleBuffer(const Standard_Boolean DBmode);
		%feature("autodoc", "1");
		virtual		void Flush() const;
		%feature("autodoc", "1");
		virtual		void Map() const;
		%feature("autodoc", "1");
		virtual		void Unmap() const;
		%feature("autodoc", "1");
		virtual		Aspect_TypeOfResize DoResize() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean DoMapping() const;
		%feature("autodoc", "1");
		virtual		void Destroy();
		%feature("autodoc", "1");
		virtual		void Clear() const;
		%feature("autodoc", "1");
		virtual		void ClearArea(const Standard_Integer Xc, const Standard_Integer Yc, const Standard_Integer Width, const Standard_Integer Height) const;
		%feature("autodoc", "1");
		virtual		void Restore() const;
		%feature("autodoc", "1");
		virtual		void RestoreArea(const Standard_Integer Xc, const Standard_Integer Yc, const Standard_Integer Width, const Standard_Integer Height) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Dump(const char * aFilename, const Standard_Real aGammaValue=1.0e+0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean DumpArea(const char * aFilename, const Standard_Integer Xc, const Standard_Integer Yc, const Standard_Integer Width, const Standard_Integer Height, const Standard_Real aGammaValue=1.0e+0) const;
		%feature("autodoc", "1");
		virtual		Handle_Aspect_PixMap ToPixMap() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Load(const char * aFilename) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean LoadArea(const char * aFilename, const Standard_Integer Xc, const Standard_Integer Yc, const Standard_Integer Width, const Standard_Integer Height) const;
		%feature("autodoc", "1");
		virtual		void SetCursor(const Standard_Integer anId, const Quantity_NameOfColor aColor=Quantity_NOC_YELLOW) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean BackingStore() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean DoubleBuffer() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsMapped() const;
		%feature("autodoc", "1");
		virtual		Quantity_Ratio Ratio() const;
		%feature("autodoc","Position() -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real]");

		virtual		void Position(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc","Position() -> [Standard_Integer, Standard_Integer, Standard_Integer, Standard_Integer]");

		virtual		void Position(Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc","Size() -> [Standard_Real, Standard_Real]");

		virtual		void Size(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc","Size() -> [Standard_Integer, Standard_Integer]");

		virtual		void Size(Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc","MMSize() -> [Standard_Real, Standard_Real]");

		virtual		void MMSize(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		virtual		Quantity_Parameter Convert(const Standard_Integer PV) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer Convert(const Quantity_Parameter DV) const;
		%feature("autodoc","Convert(Standard_Integer PX, Standard_Integer PY) -> [Standard_Real, Standard_Real]");

		virtual		void Convert(const Standard_Integer PX, const Standard_Integer PY, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc","Convert(Quantity_Parameter DX, Quantity_Parameter DY) -> [Standard_Integer, Standard_Integer]");

		virtual		void Convert(const Quantity_Parameter DX, const Quantity_Parameter DY, Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		Aspect_Handle XWindow() const;
		%feature("autodoc","XWindow() -> [Standard_Integer, Standard_Integer]");

		void XWindow(Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		Aspect_Handle XParentWindow() const;
		%feature("autodoc","XParentWindow() -> [Standard_Integer, Standard_Integer]");

		void XParentWindow(Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		Aspect_Handle XPixmap() const;
		%feature("autodoc","PointerPosition() -> [Standard_Integer, Standard_Integer]");

		virtual		Standard_Boolean PointerPosition(Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		Handle_Xw_ColorMap ColorMap() const;
		%feature("autodoc", "1");
		Handle_Xw_TypeMap TypeMap() const;
		%feature("autodoc", "1");
		Handle_Xw_WidthMap WidthMap() const;
		%feature("autodoc", "1");
		Handle_Xw_FontMap FontMap() const;
		%feature("autodoc", "1");
		Handle_Xw_MarkMap MarkMap() const;
		%feature("autodoc", "1");
		Aspect_Handle XColorMap() const;
		%feature("autodoc", "1");
		Standard_Address XVisual() const;
		%feature("autodoc", "1");
		Xw_TypeOfVisual VisualClass() const;
		%feature("autodoc", "1");
		Standard_Integer VisualDepth() const;
		%feature("autodoc", "1");
		Standard_Integer VisualID() const;
		%feature("autodoc", "1");
		Xw_WindowQuality Quality() const;
		%feature("autodoc","PixelOfColor(Quantity_NameOfColor aColor) -> Standard_Integer");

		Standard_Boolean PixelOfColor(const Quantity_NameOfColor aColor, Standard_Integer &OutValue) const;
		%feature("autodoc","PixelOfColor(const aColor) -> Standard_Integer");

		Standard_Boolean PixelOfColor(const Quantity_Color &aColor, Standard_Integer &OutValue) const;
		%feature("autodoc","BackgroundPixel() -> Standard_Integer");

		Standard_Boolean BackgroundPixel(Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Xw_Window {
	Handle_Xw_Window GetHandle() {
	return *(Handle_Xw_Window*) &$self;
	}
};
%extend Xw_Window {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") Xw_Window::~Xw_Window %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Xw_Window {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Xw_IconBox;
class Xw_IconBox : public Xw_Window {
	public:
		%feature("autodoc", "1");
		Xw_IconBox(const Handle_Xw_GraphicDevice &Device, const char * Name, const Standard_Real Xc=5.0e-1, const Standard_Real Yc=5.0e-1, const Quantity_NameOfColor BackColor=Quantity_NOC_MATRAGRAY, const Xw_WindowQuality aQuality=Xw_WQ_SAMEQUALITY);
		%feature("autodoc", "1");
		Standard_Integer LoadIcons(const char * Name);
		%feature("autodoc", "1");
		void Show() const;
		%feature("autodoc", "1");
		Standard_Integer UnloadIcons(const char * Name);
		%feature("autodoc", "1");
		void AddIcon(const Handle_Xw_Window &W, const char * Name, const Standard_Integer aWidth=0, const Standard_Integer aHeight=0);
		%feature("autodoc", "1");
		Standard_Integer SaveIcons() const;
		%feature("autodoc", "1");
		Standard_Integer IconNumber() const;
		%feature("autodoc", "1");
		char * IconName(const Standard_Integer Index) const;
		%feature("autodoc","IconSize(Standard_CString Name) -> [Standard_Integer, Standard_Integer]");

		Standard_Boolean IconSize(const char * Name, Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		Aspect_Handle IconPixmap(const char * Name) const;
		%feature("autodoc", "1");
		Aspect_Handle IconPixmap(const char * Name, const Standard_Integer Width, const Standard_Integer Height) const;

};
%extend Xw_IconBox {
	Handle_Xw_IconBox GetHandle() {
	return *(Handle_Xw_IconBox*) &$self;
	}
};
%extend Xw_IconBox {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") Xw_IconBox::~Xw_IconBox %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Xw_IconBox {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Xw_PixMap;
class Xw_PixMap : public Aspect_PixMap {
	public:
		%feature("autodoc", "1");
		Xw_PixMap(const Handle_Aspect_Window &aWindow, const Standard_Integer aWidth, const Standard_Integer anHeight, const Standard_Integer aDepth=0);
		%feature("autodoc", "1");
		virtual		void Destroy();
		%feature("autodoc", "1");
		virtual		Standard_Boolean Dump(const char * aFilename, const Standard_Real aGammaValue=1.0e+0) const;
		%feature("autodoc", "1");
		virtual		Quantity_Color PixelColor(const Standard_Integer theX, const Standard_Integer theY) const;
		%feature("autodoc", "1");
		virtual		Aspect_Handle PixmapID() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Xw_PixMap {
	Handle_Xw_PixMap GetHandle() {
	return *(Handle_Xw_PixMap*) &$self;
	}
};
%extend Xw_PixMap {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") Xw_PixMap::~Xw_PixMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Xw_PixMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Xw_FontMap;
class Xw_FontMap : public Standard_Transient {
	public:
		%feature("autodoc", "1");
		Xw_FontMap(const char * Connexion);
		%feature("autodoc", "1");
		virtual		void SetEntry(const Aspect_FontMapEntry &Entry);
		%feature("autodoc", "1");
		virtual		void SetEntries(const Handle_Aspect_FontMap &Fontmap);
		%feature("autodoc", "1");
		virtual		void Destroy();
		%feature("autodoc", "1");
		Standard_Integer FreeFonts() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Xw_FontMap {
	Handle_Xw_FontMap GetHandle() {
	return *(Handle_Xw_FontMap*) &$self;
	}
};
%extend Xw_FontMap {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") Xw_FontMap::~Xw_FontMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Xw_FontMap {
	void _kill_pointed() {
		delete $self;
	}
};
%extend Xw_FontMap {
	Xw_FontMap () {}
};


%nodefaultctor Xw_ListOfMFTFonts;
class Xw_ListOfMFTFonts {
	public:
		%feature("autodoc", "1");
		Xw_ListOfMFTFonts(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		Xw_ListOfMFTFonts(const Handle_MFT_FontManager &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Handle_MFT_FontManager &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const Xw_ListOfMFTFonts & Assign(const Xw_ListOfMFTFonts &Other);
		%feature("autodoc", "1");
		const Xw_ListOfMFTFonts & operator=(const Xw_ListOfMFTFonts &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_MFT_FontManager &Value);
		%feature("autodoc", "1");
		const Handle_MFT_FontManager & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_MFT_FontManager & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_MFT_FontManager & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_MFT_FontManager & operator()(const Standard_Integer Index);

};
%feature("shadow") Xw_ListOfMFTFonts::~Xw_ListOfMFTFonts %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Xw_ListOfMFTFonts {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Xw_TypeMap;
class Xw_TypeMap : public Standard_Transient {
	public:
		%feature("autodoc", "1");
		Xw_TypeMap(const char * Connexion);
		%feature("autodoc", "1");
		virtual		void SetEntry(const Aspect_TypeMapEntry &Entry);
		%feature("autodoc", "1");
		virtual		void SetEntries(const Handle_Aspect_TypeMap &Typemap);
		%feature("autodoc", "1");
		virtual		void Destroy();
		%feature("autodoc", "1");
		Standard_Integer FreeTypes() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Xw_TypeMap {
	Handle_Xw_TypeMap GetHandle() {
	return *(Handle_Xw_TypeMap*) &$self;
	}
};
%extend Xw_TypeMap {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") Xw_TypeMap::~Xw_TypeMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Xw_TypeMap {
	void _kill_pointed() {
		delete $self;
	}
};
%extend Xw_TypeMap {
	Xw_TypeMap () {}
};


%nodefaultctor Xw_MarkMap;
class Xw_MarkMap : public Standard_Transient {
	public:
		%feature("autodoc", "1");
		Xw_MarkMap(const char * Connexion);
		%feature("autodoc", "1");
		virtual		void SetEntry(const Aspect_MarkMapEntry &anEntry);
		%feature("autodoc", "1");
		virtual		void SetEntries(const Handle_Aspect_MarkMap &aMarkmap);
		%feature("autodoc", "1");
		virtual		void Destroy();
		%feature("autodoc", "1");
		Standard_Integer FreeMarkers() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Xw_MarkMap {
	Handle_Xw_MarkMap GetHandle() {
	return *(Handle_Xw_MarkMap*) &$self;
	}
};
%extend Xw_MarkMap {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") Xw_MarkMap::~Xw_MarkMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Xw_MarkMap {
	void _kill_pointed() {
		delete $self;
	}
};
%extend Xw_MarkMap {
	Xw_MarkMap () {}
};


%nodefaultctor Xw;
class Xw {
	public:
		%feature("autodoc", "1");
		Xw();
		%feature("autodoc", "1");
		static		void SetTrace(const Standard_Integer TraceLevel, const Standard_Integer ErrorLevel);

};
%feature("shadow") Xw::~Xw %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Xw {
	void _kill_pointed() {
		delete $self;
	}
};
