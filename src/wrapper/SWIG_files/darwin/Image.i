/*

Copyright 2008-2014 Thomas Paviot (tpaviot@gmail.com)

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

*/


%{
#ifdef WNT
#pragma warning(disable : 4716)
#endif
%}

%module Image
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include Image_renames.i


%include Image_required_python_modules.i


%include Image_dependencies.i


%include Image_headers.i

typedef Handle_Image_PixMap Image_PixMap_Handle;
typedef Aspect_Pixel * Image_PixelAddress;

enum Image_TypeOfImage {
	Image_TOI_ColorImage,
	Image_TOI_PseudoColorImage,
	};

enum Image_FlipType {
	Image_FT_HORIZONTAL,
	Image_FT_VERTICAL,
	Image_FT_MAINDIAGONAL,
	Image_FT_ANTIDIAGONAL,
	Image_FT_CENTER,
	Image_FT_90,
	Image_FT_180,
	Image_FT_270,
	};

enum Image_DitheringMethod {
	Image_DM_NearestColor,
	Image_DM_ErrorDiffusion,
	};



%nodefaultctor Handle_Image_PixMap;
class Handle_Image_PixMap : public Handle_Standard_Transient {
	public:
		%feature("autodoc", "1");
		Handle_Image_PixMap();
		%feature("autodoc", "1");
		Handle_Image_PixMap(const Handle_Image_PixMap &aHandle);
		%feature("autodoc", "1");
		Handle_Image_PixMap(const Image_PixMap *anItem);
		%feature("autodoc", "1");
		Handle_Image_PixMap & operator=(const Handle_Image_PixMap &aHandle);
		%feature("autodoc", "1");
		Handle_Image_PixMap & operator=(const Image_PixMap *anItem);
		%feature("autodoc", "1");
		static		Handle_Image_PixMap DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Image_PixMap {
	Image_PixMap* GetObject() {
	return (Image_PixMap*)$self->Access();
	}
};
%feature("shadow") Handle_Image_PixMap::~Handle_Image_PixMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Image_PixMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Image_Image;
class Handle_Image_Image : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Image_Image();
		%feature("autodoc", "1");
		Handle_Image_Image(const Handle_Image_Image &aHandle);
		%feature("autodoc", "1");
		Handle_Image_Image(const Image_Image *anItem);
		%feature("autodoc", "1");
		Handle_Image_Image & operator=(const Handle_Image_Image &aHandle);
		%feature("autodoc", "1");
		Handle_Image_Image & operator=(const Image_Image *anItem);
		%feature("autodoc", "1");
		static		Handle_Image_Image DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Image_Image {
	Image_Image* GetObject() {
	return (Image_Image*)$self->Access();
	}
};
%feature("shadow") Handle_Image_Image::~Handle_Image_Image %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Image_Image {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Image_DColorImage;
class Handle_Image_DColorImage : public Handle_Image_Image {
	public:
		%feature("autodoc", "1");
		Handle_Image_DColorImage();
		%feature("autodoc", "1");
		Handle_Image_DColorImage(const Handle_Image_DColorImage &aHandle);
		%feature("autodoc", "1");
		Handle_Image_DColorImage(const Image_DColorImage *anItem);
		%feature("autodoc", "1");
		Handle_Image_DColorImage & operator=(const Handle_Image_DColorImage &aHandle);
		%feature("autodoc", "1");
		Handle_Image_DColorImage & operator=(const Image_DColorImage *anItem);
		%feature("autodoc", "1");
		static		Handle_Image_DColorImage DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Image_DColorImage {
	Image_DColorImage* GetObject() {
	return (Image_DColorImage*)$self->Access();
	}
};
%feature("shadow") Handle_Image_DColorImage::~Handle_Image_DColorImage %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Image_DColorImage {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Image_AlienPixMap;
class Handle_Image_AlienPixMap : public Handle_Image_PixMap {
	public:
		%feature("autodoc", "1");
		Handle_Image_AlienPixMap();
		%feature("autodoc", "1");
		Handle_Image_AlienPixMap(const Handle_Image_AlienPixMap &aHandle);
		%feature("autodoc", "1");
		Handle_Image_AlienPixMap(const Image_AlienPixMap *anItem);
		%feature("autodoc", "1");
		Handle_Image_AlienPixMap & operator=(const Handle_Image_AlienPixMap &aHandle);
		%feature("autodoc", "1");
		Handle_Image_AlienPixMap & operator=(const Image_AlienPixMap *anItem);
		%feature("autodoc", "1");
		static		Handle_Image_AlienPixMap DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Image_AlienPixMap {
	Image_AlienPixMap* GetObject() {
	return (Image_AlienPixMap*)$self->Access();
	}
};
%feature("shadow") Handle_Image_AlienPixMap::~Handle_Image_AlienPixMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Image_AlienPixMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Image_DIndexedImage;
class Handle_Image_DIndexedImage : public Handle_Image_Image {
	public:
		%feature("autodoc", "1");
		Handle_Image_DIndexedImage();
		%feature("autodoc", "1");
		Handle_Image_DIndexedImage(const Handle_Image_DIndexedImage &aHandle);
		%feature("autodoc", "1");
		Handle_Image_DIndexedImage(const Image_DIndexedImage *anItem);
		%feature("autodoc", "1");
		Handle_Image_DIndexedImage & operator=(const Handle_Image_DIndexedImage &aHandle);
		%feature("autodoc", "1");
		Handle_Image_DIndexedImage & operator=(const Image_DIndexedImage *anItem);
		%feature("autodoc", "1");
		static		Handle_Image_DIndexedImage DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Image_DIndexedImage {
	Image_DIndexedImage* GetObject() {
	return (Image_DIndexedImage*)$self->Access();
	}
};
%feature("shadow") Handle_Image_DIndexedImage::~Handle_Image_DIndexedImage %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Image_DIndexedImage {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Image_PseudoColorImage;
class Handle_Image_PseudoColorImage : public Handle_Image_DIndexedImage {
	public:
		%feature("autodoc", "1");
		Handle_Image_PseudoColorImage();
		%feature("autodoc", "1");
		Handle_Image_PseudoColorImage(const Handle_Image_PseudoColorImage &aHandle);
		%feature("autodoc", "1");
		Handle_Image_PseudoColorImage(const Image_PseudoColorImage *anItem);
		%feature("autodoc", "1");
		Handle_Image_PseudoColorImage & operator=(const Handle_Image_PseudoColorImage &aHandle);
		%feature("autodoc", "1");
		Handle_Image_PseudoColorImage & operator=(const Image_PseudoColorImage *anItem);
		%feature("autodoc", "1");
		static		Handle_Image_PseudoColorImage DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Image_PseudoColorImage {
	Image_PseudoColorImage* GetObject() {
	return (Image_PseudoColorImage*)$self->Access();
	}
};
%feature("shadow") Handle_Image_PseudoColorImage::~Handle_Image_PseudoColorImage %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Image_PseudoColorImage {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Image_DataMapNodeOfColorPixelDataMap;
class Handle_Image_DataMapNodeOfColorPixelDataMap : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_Image_DataMapNodeOfColorPixelDataMap();
		%feature("autodoc", "1");
		Handle_Image_DataMapNodeOfColorPixelDataMap(const Handle_Image_DataMapNodeOfColorPixelDataMap &aHandle);
		%feature("autodoc", "1");
		Handle_Image_DataMapNodeOfColorPixelDataMap(const Image_DataMapNodeOfColorPixelDataMap *anItem);
		%feature("autodoc", "1");
		Handle_Image_DataMapNodeOfColorPixelDataMap & operator=(const Handle_Image_DataMapNodeOfColorPixelDataMap &aHandle);
		%feature("autodoc", "1");
		Handle_Image_DataMapNodeOfColorPixelDataMap & operator=(const Image_DataMapNodeOfColorPixelDataMap *anItem);
		%feature("autodoc", "1");
		static		Handle_Image_DataMapNodeOfColorPixelDataMap DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Image_DataMapNodeOfColorPixelDataMap {
	Image_DataMapNodeOfColorPixelDataMap* GetObject() {
	return (Image_DataMapNodeOfColorPixelDataMap*)$self->Access();
	}
};
%feature("shadow") Handle_Image_DataMapNodeOfColorPixelDataMap::~Handle_Image_DataMapNodeOfColorPixelDataMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Image_DataMapNodeOfColorPixelDataMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Image_DataMapNodeOfLookupTable;
class Handle_Image_DataMapNodeOfLookupTable : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_Image_DataMapNodeOfLookupTable();
		%feature("autodoc", "1");
		Handle_Image_DataMapNodeOfLookupTable(const Handle_Image_DataMapNodeOfLookupTable &aHandle);
		%feature("autodoc", "1");
		Handle_Image_DataMapNodeOfLookupTable(const Image_DataMapNodeOfLookupTable *anItem);
		%feature("autodoc", "1");
		Handle_Image_DataMapNodeOfLookupTable & operator=(const Handle_Image_DataMapNodeOfLookupTable &aHandle);
		%feature("autodoc", "1");
		Handle_Image_DataMapNodeOfLookupTable & operator=(const Image_DataMapNodeOfLookupTable *anItem);
		%feature("autodoc", "1");
		static		Handle_Image_DataMapNodeOfLookupTable DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Image_DataMapNodeOfLookupTable {
	Image_DataMapNodeOfLookupTable* GetObject() {
	return (Image_DataMapNodeOfLookupTable*)$self->Access();
	}
};
%feature("shadow") Handle_Image_DataMapNodeOfLookupTable::~Handle_Image_DataMapNodeOfLookupTable %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Image_DataMapNodeOfLookupTable {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Image_ColorImage;
class Handle_Image_ColorImage : public Handle_Image_DColorImage {
	public:
		%feature("autodoc", "1");
		Handle_Image_ColorImage();
		%feature("autodoc", "1");
		Handle_Image_ColorImage(const Handle_Image_ColorImage &aHandle);
		%feature("autodoc", "1");
		Handle_Image_ColorImage(const Image_ColorImage *anItem);
		%feature("autodoc", "1");
		Handle_Image_ColorImage & operator=(const Handle_Image_ColorImage &aHandle);
		%feature("autodoc", "1");
		Handle_Image_ColorImage & operator=(const Image_ColorImage *anItem);
		%feature("autodoc", "1");
		static		Handle_Image_ColorImage DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Image_ColorImage {
	Image_ColorImage* GetObject() {
	return (Image_ColorImage*)$self->Access();
	}
};
%feature("shadow") Handle_Image_ColorImage::~Handle_Image_ColorImage %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Image_ColorImage {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Image_Diff;
class Handle_Image_Diff : public Handle_Standard_Transient {
	public:
		%feature("autodoc", "1");
		Handle_Image_Diff();
		%feature("autodoc", "1");
		Handle_Image_Diff(const Handle_Image_Diff &aHandle);
		%feature("autodoc", "1");
		Handle_Image_Diff(const Image_Diff *anItem);
		%feature("autodoc", "1");
		Handle_Image_Diff & operator=(const Handle_Image_Diff &aHandle);
		%feature("autodoc", "1");
		Handle_Image_Diff & operator=(const Image_Diff *anItem);
		%feature("autodoc", "1");
		static		Handle_Image_Diff DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Image_Diff {
	Image_Diff* GetObject() {
	return (Image_Diff*)$self->Access();
	}
};
%feature("shadow") Handle_Image_Diff::~Handle_Image_Diff %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Image_Diff {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Image_ColorPixelDataMap;
class Image_ColorPixelDataMap : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		Image_ColorPixelDataMap(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		Image_ColorPixelDataMap & Assign(const Image_ColorPixelDataMap &Other);
		%feature("autodoc", "1");
		Image_ColorPixelDataMap & operator=(const Image_ColorPixelDataMap &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Aspect_ColorPixel &K, const Standard_Integer &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Aspect_ColorPixel &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Aspect_ColorPixel &K);
		%feature("autodoc", "1");
		const Standard_Integer & Find(const Aspect_ColorPixel &K) const;
		%feature("autodoc", "1");
		const Standard_Integer & operator()(const Aspect_ColorPixel &K) const;
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetChangeFind(const Aspect_ColorPixel &K) {
				return (Standard_Integer) $self->ChangeFind(K);
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetChangeFind(Standard_Integer value ,const Aspect_ColorPixel &K) {
				$self->ChangeFind(K)=value;
				}
		};
		%feature("autodoc", "1");
		Standard_Integer & operator()(const Aspect_ColorPixel &K);
		%feature("autodoc", "1");
		Standard_Address Find1(const Aspect_ColorPixel &K) const;
		%feature("autodoc", "1");
		Standard_Address ChangeFind1(const Aspect_ColorPixel &K);

};
%feature("shadow") Image_ColorPixelDataMap::~Image_ColorPixelDataMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Image_ColorPixelDataMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Image_PixMap;
class Image_PixMap : public Standard_Transient {
	public:
		enum tagFormat {
			ImgUNKNOWN,
			ImgGray,
			ImgRGB,
			ImgBGR,
			ImgRGB32,
			ImgBGR32,
			ImgRGBA,
			ImgBGRA,
			ImgGrayF,
			ImgRGBF,
			ImgBGRF,
			ImgRGBAF,
			ImgBGRAF,
		};
		%feature("autodoc", "1");
		static		bool IsBigEndianHost();
		%feature("autodoc", "1");
		Image_PixMap::tagFormat Format() const;
		%feature("autodoc", "1");
		Standard_Size Width() const;
		%feature("autodoc", "1");
		Standard_Size Height() const;
		%feature("autodoc", "1");
		Standard_Size SizeX() const;
		%feature("autodoc", "1");
		Standard_Size SizeY() const;
		%feature("autodoc", "1");
		Standard_Real Ratio() const;
		%feature("autodoc", "1");
		bool IsEmpty() const;
		%feature("autodoc", "1");
		Image_PixMap();
		%feature("autodoc", "1");
		Quantity_Color PixelColor(const Standard_Integer theX, const Standard_Integer theY) const;
		%feature("autodoc","PixelColor(Standard_Integer theX, Standard_Integer theY) -> Standard_Real");

		Quantity_Color PixelColor(const Standard_Integer theX, const Standard_Integer theY, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		virtual		bool InitWrapper(Image_PixMap::tagFormat , Standard_Byte* theDataPtr, const Standard_Size theSizeX, const Standard_Size theSizeY, const Standard_Size theSizeRowBytes=0);
		%feature("autodoc", "1");
		virtual		bool InitTrash(Image_PixMap::tagFormat , const Standard_Size theSizeX, const Standard_Size theSizeY, const Standard_Size theSizeRowBytes=0);
		%feature("autodoc", "1");
		virtual		bool InitCopy(const Image_PixMap &theCopy);
		%feature("autodoc", "1");
		bool InitZero(Image_PixMap::tagFormat , const Standard_Size theSizeX, const Standard_Size theSizeY, const Standard_Size theSizeRowBytes=0, const Standard_Byte theValue=0);
		%feature("autodoc", "1");
		virtual		void Clear(Image_PixMap::tagFormat =Image_PixMap::ImgGray);
		%feature("autodoc", "1");
		bool IsTopDown() const;
		%feature("autodoc", "1");
		void SetTopDown(bool );
		%feature("autodoc", "1");
		Standard_Size TopDownInc() const;
		%feature("autodoc", "1");
		const Standard_Byte * Data() const;
		%feature("autodoc", "1");
		Standard_Byte * ChangeData();
		%feature("autodoc", "1");
		const Standard_Byte * Row(const Standard_Size theRow) const;
		%feature("autodoc", "1");
		Standard_Byte * ChangeRow(const Standard_Size theRow);
		%feature("autodoc", "1");
		Standard_Size SizePixelBytes() const;
		%feature("autodoc", "1");
		static		Standard_Size SizePixelBytes(const Image_PixMap::tagFormat thePixelFormat);
		%feature("autodoc", "1");
		Standard_Size SizeRowBytes() const;
		%feature("autodoc", "1");
		Standard_Size RowExtraBytes() const;
		%feature("autodoc", "1");
		Standard_Size MaxRowAligmentBytes() const;
		%feature("autodoc", "1");
		Standard_Size SizeBytes() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Image_PixMap {
	Handle_Image_PixMap GetHandle() {
	return *(Handle_Image_PixMap*) &$self;
	}
};
%extend Image_PixMap {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Image_PixMap::~Image_PixMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Image_PixMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Image_AlienPixMap;
class Image_AlienPixMap : public Image_PixMap {
	public:
		%feature("autodoc", "1");
		Image_AlienPixMap();
		%feature("autodoc", "1");
		bool Load(const TCollection_AsciiString &theFileName);
		%feature("autodoc", "1");
		bool Save(const TCollection_AsciiString &theFileName);
		%feature("autodoc", "1");
		bool AdjustGamma(const Standard_Real theGammaCorr);

};
%extend Image_AlienPixMap {
	Handle_Image_AlienPixMap GetHandle() {
	return *(Handle_Image_AlienPixMap*) &$self;
	}
};
%extend Image_AlienPixMap {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Image_AlienPixMap::~Image_AlienPixMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Image_AlienPixMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Image_PixelRowOfDIndexedImage;
class Image_PixelRowOfDIndexedImage {
	public:
		%feature("autodoc", "1");
		Image_PixelRowOfDIndexedImage(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		Image_PixelRowOfDIndexedImage(const Aspect_IndexPixel &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Aspect_IndexPixel &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const Image_PixelRowOfDIndexedImage & Assign(const Image_PixelRowOfDIndexedImage &Other);
		%feature("autodoc", "1");
		const Image_PixelRowOfDIndexedImage & operator=(const Image_PixelRowOfDIndexedImage &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Aspect_IndexPixel &Value);
		%feature("autodoc", "1");
		const Aspect_IndexPixel & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Aspect_IndexPixel & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Aspect_IndexPixel & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Aspect_IndexPixel & operator()(const Standard_Integer Index);

};
%feature("shadow") Image_PixelRowOfDIndexedImage::~Image_PixelRowOfDIndexedImage %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Image_PixelRowOfDIndexedImage {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Image_Image;
class Image_Image : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		virtual		void Destroy();
		%feature("autodoc", "1");
		virtual		Standard_Boolean isSamePixel(const Standard_Integer X, const Standard_Integer Y, const Handle_Image_Image &anotherImage, const Standard_Integer anotherX, const Standard_Integer anotherY) const;
		%feature("autodoc", "1");
		virtual		const Quantity_Color & PixelColor(const Standard_Integer X, const Standard_Integer Y) const;
		%feature("autodoc", "1");
		virtual		Handle_Quantity_HArray1OfColor RowColor(const Standard_Integer Y) const;
		%feature("autodoc", "1");
		virtual		void RowColor(const Standard_Integer Y, Quantity_Array1OfColor & aArray1) const;
		%feature("autodoc", "1");
		Handle_Standard_Type PixelType() const;
		%feature("autodoc", "1");
		Standard_Integer Size() const;
		%feature("autodoc", "1");
		virtual		void InternalDup(const Handle_Image_Image &anImage);
		%feature("autodoc", "1");
		virtual		void SetOrigin(const Standard_Integer x, const Standard_Integer y);
		%feature("autodoc", "1");
		virtual		Standard_Integer LowerX() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer UpperX() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer Width() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer LowerY() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer UpperY() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer Height() const;
		%feature("autodoc", "1");
		virtual		void Resize(const Standard_Real XOffset, const Standard_Real XScale, const Standard_Real YOffset, const Standard_Real YScale);
		%feature("autodoc", "1");
		virtual		Image_TypeOfImage Type() const;
		%feature("autodoc", "1");
		virtual		void Pixel(const Standard_Integer X, const Standard_Integer Y, Aspect_Pixel & aPixel) const;
		%feature("autodoc", "1");
		virtual		void SetPixel(const Standard_Integer X, const Standard_Integer Y, const Aspect_Pixel &aPixel);
		%feature("autodoc", "1");
		virtual		void Pixel(const Standard_Integer X, const Standard_Integer Y, Image_PixelAddress & aPixel) const;
		%feature("autodoc", "1");
		virtual		void SetPixel(const Standard_Integer X, const Standard_Integer Y, const Image_PixelAddress &aPixel);
		%feature("autodoc", "1");
		virtual		void Transpose(const Image_FlipType aType);
		%feature("autodoc", "1");
		virtual		void Clip(const Standard_Integer X, const Standard_Integer Y, const Standard_Integer Width, const Standard_Integer Height);
		%feature("autodoc", "1");
		virtual		void Shift(const Standard_Integer XShift, const Standard_Integer YShift);
		%feature("autodoc", "1");
		virtual		void Fill(const Handle_Image_Image &SrcImage);
		%feature("autodoc", "1");
		virtual		void Fill(const Handle_Image_Image &SrcImage, const Standard_Integer SrcX, const Standard_Integer SrcY, const Standard_Integer SrcWidth, const Standard_Integer SrcHeight, const Standard_Integer X, const Standard_Integer Y);
		%feature("autodoc", "1");
		virtual		void Clear();
		%feature("autodoc", "1");
		virtual		Handle_Image_Image Dup() const;
		%feature("autodoc", "1");
		virtual		void Dump() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Image_Image {
	Handle_Image_Image GetHandle() {
	return *(Handle_Image_Image*) &$self;
	}
};
%extend Image_Image {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Image_Image::~Image_Image %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Image_Image {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Image_IndexPixelMapHasher;
class Image_IndexPixelMapHasher {
	public:
		%feature("autodoc", "1");
		Image_IndexPixelMapHasher();
		%feature("autodoc", "1");
		static		Standard_Integer HashCode(const Aspect_IndexPixel &K, const Standard_Integer Upper);
		%feature("autodoc", "1");
		static		Standard_Boolean IsEqual(const Aspect_IndexPixel &K1, const Aspect_IndexPixel &K2);

};
%feature("shadow") Image_IndexPixelMapHasher::~Image_IndexPixelMapHasher %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Image_IndexPixelMapHasher {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Image_PixelInterpolation;
class Image_PixelInterpolation {
	public:
		%feature("autodoc", "1");
		Image_PixelInterpolation();
		%feature("autodoc", "1");
		virtual		Standard_Boolean Interpolate(const Handle_Image_Image &aImage, const Standard_Real X, const Standard_Real Y, const Standard_Integer LowerX, const Standard_Integer LowerY, const Standard_Integer UpperX, const Standard_Integer UpperY, Aspect_Pixel & RetPixel) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Interpolate(const Handle_Image_DColorImage &aImage, const Standard_Real FX, const Standard_Real FY, const Standard_Integer LowerX, const Standard_Integer LowerY, const Standard_Integer UpperX, const Standard_Integer UpperY, Aspect_ColorPixel & RetPixel) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Interpolate(const Handle_Image_DIndexedImage &aImage, const Standard_Real FX, const Standard_Real FY, const Standard_Integer LowerX, const Standard_Integer LowerY, const Standard_Integer UpperX, const Standard_Integer UpperY, Aspect_IndexPixel & RetPixel) const;

};
%feature("shadow") Image_PixelInterpolation::~Image_PixelInterpolation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Image_PixelInterpolation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Image_PlanarPixelInterpolation;
class Image_PlanarPixelInterpolation : public Image_PixelInterpolation {
	public:
		%feature("autodoc", "1");
		Image_PlanarPixelInterpolation();
		%feature("autodoc", "1");
		virtual		Standard_Boolean Interpolate(const Handle_Image_DColorImage &aImage, const Standard_Real X, const Standard_Real Y, const Standard_Integer LowerX, const Standard_Integer LowerY, const Standard_Integer UpperX, const Standard_Integer UpperY, Aspect_ColorPixel & RetPixel) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Interpolate(const Handle_Image_DIndexedImage &aImage, const Standard_Real X, const Standard_Real Y, const Standard_Integer LowerX, const Standard_Integer LowerY, const Standard_Integer UpperX, const Standard_Integer UpperY, Aspect_IndexPixel & RetPixel) const;

};
%feature("shadow") Image_PlanarPixelInterpolation::~Image_PlanarPixelInterpolation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Image_PlanarPixelInterpolation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Image_PixMapData<unsigned char>;
class Image_PixMapData<unsigned char> {
	public:
		%feature("autodoc", "1");
		unsigned char const * Data() const;
		%feature("autodoc", "1");
		char unsigned * ChangeData();
		%feature("autodoc", "1");
		unsigned char const * Row(const Standard_Size theRow) const;
		%feature("autodoc", "1");
		char unsigned * ChangeRow(const Standard_Size theRow);
		%feature("autodoc", "1");
		unsigned char const & Value(const Standard_Size theRow, const Standard_Size theCol) const;
		%feature("autodoc", "1");
		char unsigned & ChangeValue(const Standard_Size theRow, const Standard_Size theCol);
		%feature("autodoc", "1");
		Standard_Size MaxRowAligmentBytes() const;
		%feature("autodoc", "1");
		Standard_Size SizeBytes() const;
		%feature("autodoc", "1");
		Standard_Size SizeX() const;
		%feature("autodoc", "1");
		Standard_Size SizeY() const;

};
%feature("shadow") Image_PixMapData<unsigned char>::~Image_PixMapData<unsigned char> %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Image_PixMapData<unsigned char> {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Image_LookupTable;
class Image_LookupTable : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		Image_LookupTable(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		Image_LookupTable & Assign(const Image_LookupTable &Other);
		%feature("autodoc", "1");
		Image_LookupTable & operator=(const Image_LookupTable &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Aspect_IndexPixel &K, const Aspect_IndexPixel &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Aspect_IndexPixel &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Aspect_IndexPixel &K);
		%feature("autodoc", "1");
		const Aspect_IndexPixel & Find(const Aspect_IndexPixel &K) const;
		%feature("autodoc", "1");
		const Aspect_IndexPixel & operator()(const Aspect_IndexPixel &K) const;
		%feature("autodoc", "1");
		Aspect_IndexPixel & ChangeFind(const Aspect_IndexPixel &K);
		%feature("autodoc", "1");
		Aspect_IndexPixel & operator()(const Aspect_IndexPixel &K);
		%feature("autodoc", "1");
		Standard_Address Find1(const Aspect_IndexPixel &K) const;
		%feature("autodoc", "1");
		Standard_Address ChangeFind1(const Aspect_IndexPixel &K);

};
%feature("shadow") Image_LookupTable::~Image_LookupTable %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Image_LookupTable {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Image_DColorImage;
class Image_DColorImage : public Image_Image {
	public:
		%feature("autodoc", "1");
		virtual		void Destroy();
		%feature("autodoc", "1");
		void SetBackgroundPixel(const Aspect_ColorPixel &aPixel);
		%feature("autodoc", "1");
		const Aspect_ColorPixel & BackgroundPixel() const;
		%feature("autodoc", "1");
		const Aspect_ColorPixel & Pixel(const Standard_Integer X, const Standard_Integer Y) const;
		%feature("autodoc", "1");
		const Aspect_ColorPixel & operator()(const Standard_Integer X, const Standard_Integer Y) const;
		%feature("autodoc", "1");
		void SetPixel(const Standard_Integer X, const Standard_Integer Y, const Aspect_ColorPixel &aPixel);
		%feature("autodoc", "1");
		Aspect_ColorPixel & MutPixel(const Standard_Integer X, const Standard_Integer Y);
		%feature("autodoc", "1");
		Aspect_ColorPixel & operator()(const Standard_Integer X, const Standard_Integer Y);
		%feature("autodoc", "1");
		void SetRow(const Standard_Integer X, const Standard_Integer Y, const Image_PixelRowOfDColorImage &aRow);
		%feature("autodoc", "1");
		void Row(const Standard_Integer X, const Standard_Integer Y, Image_PixelRowOfDColorImage & aRow) const;
		%feature("autodoc", "1");
		void SwapRow(const Standard_Integer I, const Standard_Integer J);
		%feature("autodoc", "1");
		void SwapCol(const Standard_Integer I, const Standard_Integer J);
		%feature("autodoc", "1");
		void Zoom(const Image_PixelInterpolation &anInterpolation, const Standard_Real aCoefX, const Standard_Real aCoefY);
		%feature("autodoc", "1");
		void Rotate(const Image_PixelInterpolation &anInterpolation, const Quantity_PlaneAngle aAngle);
		%feature("autodoc", "1");
		void Translate(const Image_PixelInterpolation &anInterpolation, const Standard_Real DX, const Standard_Real DY);
		%feature("autodoc", "1");
		void Affine(const Image_PixelInterpolation &anInterpolation, const gp_GTrsf2d Trsf);
		%feature("autodoc", "1");
		void Affine(const Image_PixelInterpolation &anInterpolation, const gp_Trsf Trsf);
		%feature("autodoc", "1");
		virtual		void InternalDup(const Handle_Image_Image &anImage);
		%feature("autodoc", "1");
		virtual		void SetOrigin(const Standard_Integer x, const Standard_Integer y);
		%feature("autodoc", "1");
		virtual		Standard_Integer LowerX() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer UpperX() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer Width() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer LowerY() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer UpperY() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer Height() const;
		%feature("autodoc", "1");
		virtual		void Resize(const Standard_Real XOffset, const Standard_Real XScale, const Standard_Real YOffset, const Standard_Real YScale);
		%feature("autodoc", "1");
		virtual		Image_TypeOfImage Type() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean isSamePixel(const Standard_Integer X, const Standard_Integer Y, const Handle_Image_Image &anotherImage, const Standard_Integer anotherX, const Standard_Integer anotherY) const;
		%feature("autodoc", "1");
		virtual		void Pixel(const Standard_Integer X, const Standard_Integer Y, Aspect_Pixel & aPixel) const;
		%feature("autodoc", "1");
		virtual		void SetPixel(const Standard_Integer X, const Standard_Integer Y, const Aspect_Pixel &aPixel);
		%feature("autodoc", "1");
		virtual		void Pixel(const Standard_Integer X, const Standard_Integer Y, Image_PixelAddress & aPixel) const;
		%feature("autodoc", "1");
		virtual		void SetPixel(const Standard_Integer X, const Standard_Integer Y, const Image_PixelAddress &aPixel);
		%feature("autodoc", "1");
		virtual		void Transpose(const Image_FlipType aType);
		%feature("autodoc", "1");
		virtual		void Clip(const Standard_Integer X, const Standard_Integer Y, const Standard_Integer Width, const Standard_Integer Height);
		%feature("autodoc", "1");
		virtual		void Shift(const Standard_Integer XShifth, const Standard_Integer YShift);
		%feature("autodoc", "1");
		virtual		void Fill(const Handle_Image_Image &SrcImage);
		%feature("autodoc", "1");
		virtual		void Fill(const Handle_Image_Image &SrcImage, const Standard_Integer SrcX, const Standard_Integer SrcY, const Standard_Integer SrcWidth, const Standard_Integer SrcHeight, const Standard_Integer X, const Standard_Integer Y);
		%feature("autodoc", "1");
		void FillRect(const Aspect_ColorPixel &aPixel, const Standard_Integer X, const Standard_Integer Y, const Standard_Integer Width, const Standard_Integer Height);
		%feature("autodoc", "1");
		void DrawRect(const Aspect_ColorPixel &aPixel, const Standard_Integer X, const Standard_Integer Y, const Standard_Integer Width, const Standard_Integer Height);
		%feature("autodoc", "1");
		void DrawLine(const Aspect_ColorPixel &aPixel, const Standard_Integer X1, const Standard_Integer Y1, const Standard_Integer X2, const Standard_Integer Y2);
		%feature("autodoc", "1");
		virtual		void Clear();
		%feature("autodoc", "1");
		virtual		void Dump() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Image_DColorImage {
	Handle_Image_DColorImage GetHandle() {
	return *(Handle_Image_DColorImage*) &$self;
	}
};
%extend Image_DColorImage {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Image_DColorImage::~Image_DColorImage %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Image_DColorImage {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Image_ColorImage;
class Image_ColorImage : public Image_DColorImage {
	public:
		%feature("autodoc", "1");
		Image_ColorImage(const Standard_Integer x, const Standard_Integer y, const Standard_Integer dx, const Standard_Integer dy);
		%feature("autodoc", "1");
		Image_ColorImage(const Standard_Integer x, const Standard_Integer y, const Standard_Integer dx, const Standard_Integer dy, const Aspect_ColorPixel &BackPixel);
		%feature("autodoc", "1");
		Handle_Aspect_GenericColorMap ChooseColorMap(const Standard_Integer aSize) const;
		%feature("autodoc", "1");
		virtual		const Quantity_Color & PixelColor(const Standard_Integer X, const Standard_Integer Y) const;
		%feature("autodoc", "1");
		virtual		Handle_Image_Image Dup() const;

};
%extend Image_ColorImage {
	Handle_Image_ColorImage GetHandle() {
	return *(Handle_Image_ColorImage*) &$self;
	}
};
%extend Image_ColorImage {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Image_ColorImage::~Image_ColorImage %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Image_ColorImage {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Image_ColorRGBA;
class Image_ColorRGBA {
	public:
		%feature("autodoc", "1");
		Image_ColorRGBA();
		%feature("autodoc", "1");
		static		Standard_Integer Length();
		%feature("autodoc", "1");
		Standard_Byte r() const;
		%feature("autodoc", "1");
		Standard_Byte g() const;
		%feature("autodoc", "1");
		Standard_Byte b() const;
		%feature("autodoc", "1");
		Standard_Byte a() const;
		%feature("autodoc", "1");
		Standard_Byte & r();
		%feature("autodoc", "1");
		Standard_Byte & g();
		%feature("autodoc", "1");
		Standard_Byte & b();
		%feature("autodoc", "1");
		Standard_Byte & a();

};
%feature("shadow") Image_ColorRGBA::~Image_ColorRGBA %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Image_ColorRGBA {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Image;
class Image {
	public:
		%feature("autodoc", "1");
		Image();
		%feature("autodoc", "1");
		static		void Zoom(const Handle_Image_Image &aImage, const Image_PixelInterpolation &aInterpolation, const Standard_Real aCoefX, const Standard_Real aCoefY);
		%feature("autodoc", "1");
		static		void Zoom(const Handle_Image_Image &aImage, const Standard_Real aCoefX, const Standard_Real aCoefY);
		%feature("autodoc", "1");
		static		void Rotate(const Handle_Image_Image &aImage, const Image_PixelInterpolation &aInterpolation, const Quantity_PlaneAngle aAngle);
		%feature("autodoc", "1");
		static		void Rotate(const Handle_Image_Image &aImage, const Quantity_PlaneAngle aAngle);
		%feature("autodoc", "1");
		static		void Translate(const Handle_Image_Image &aImage, const Image_PixelInterpolation &aInterpolation, const Standard_Real DX, const Standard_Real DY);
		%feature("autodoc", "1");
		static		void Translate(const Handle_Image_Image &aImage, const Standard_Real DX, const Standard_Real DY);
		%feature("autodoc", "1");
		static		void Affine(const Handle_Image_Image &aImage, const Image_PixelInterpolation &aInterpolation, const gp_GTrsf2d Trsf);
		%feature("autodoc", "1");
		static		void Affine(const Handle_Image_Image &aImage, const gp_GTrsf2d Trsf);
		%feature("autodoc", "1");
		static		void Affine(const Handle_Image_Image &aImage, const Image_PixelInterpolation &aInterpolation, const gp_Trsf Trsf);
		%feature("autodoc", "1");
		static		void Affine(const Handle_Image_Image &aImage, const gp_Trsf Trsf);

};
%feature("shadow") Image::~Image %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Image {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Image_Diff;
class Image_Diff : public Standard_Transient {
	public:
		%feature("autodoc", "1");
		Image_Diff();
		%feature("autodoc", "1");
		Standard_Boolean Init(const Handle_Image_PixMap &theImageRef, const Handle_Image_PixMap &theImageNew, const Standard_Boolean theToBlackWhite=false);
		%feature("autodoc", "1");
		Standard_Boolean Init(const TCollection_AsciiString &theImgPathRef, const TCollection_AsciiString &theImgPathNew, const Standard_Boolean theToBlackWhite=false);
		%feature("autodoc", "1");
		void SetColorTolerance(const Standard_Real theTolerance);
		%feature("autodoc", "1");
		Standard_Real ColorTolerance() const;
		%feature("autodoc", "1");
		void SetBorderFilterOn(const Standard_Boolean theToIgnore);
		%feature("autodoc", "1");
		Standard_Boolean IsBorderFilterOn() const;
		%feature("autodoc", "1");
		Standard_Integer Compare();
		%feature("autodoc", "1");
		Standard_Boolean SaveDiffImage(Image_PixMap & theDiffImage) const;
		%feature("autodoc", "1");
		Standard_Boolean SaveDiffImage(const TCollection_AsciiString &theDiffPath) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Image_Diff {
	Handle_Image_Diff GetHandle() {
	return *(Handle_Image_Diff*) &$self;
	}
};
%extend Image_Diff {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Image_Diff::~Image_Diff %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Image_Diff {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Image_AveragePixelInterpolation;
class Image_AveragePixelInterpolation : public Image_PixelInterpolation {
	public:
		%feature("autodoc", "1");
		Image_AveragePixelInterpolation();
		%feature("autodoc", "1");
		virtual		Standard_Boolean Interpolate(const Handle_Image_Image &aImage, const Standard_Real FX, const Standard_Real FY, const Standard_Integer LowerX, const Standard_Integer LowerY, const Standard_Integer UpperX, const Standard_Integer UpperY, Aspect_Pixel & RetPixel) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Interpolate(const Handle_Image_DColorImage &aImage, const Standard_Real FX, const Standard_Real FY, const Standard_Integer LowerX, const Standard_Integer LowerY, const Standard_Integer UpperX, const Standard_Integer UpperY, Aspect_ColorPixel & RetPixel) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Interpolate(const Handle_Image_DIndexedImage &aImage, const Standard_Real FX, const Standard_Real FY, const Standard_Integer LowerX, const Standard_Integer LowerY, const Standard_Integer UpperX, const Standard_Integer UpperY, Aspect_IndexPixel & RetPixel) const;

};
%feature("shadow") Image_AveragePixelInterpolation::~Image_AveragePixelInterpolation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Image_AveragePixelInterpolation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Image_ColorBGR32;
class Image_ColorBGR32 {
	public:
		%feature("autodoc", "1");
		Image_ColorBGR32();
		%feature("autodoc", "1");
		static		Standard_Integer Length();
		%feature("autodoc", "1");
		Standard_Byte r() const;
		%feature("autodoc", "1");
		Standard_Byte g() const;
		%feature("autodoc", "1");
		Standard_Byte b() const;
		%feature("autodoc", "1");
		Standard_Byte a_() const;
		%feature("autodoc", "1");
		Standard_Byte & r();
		%feature("autodoc", "1");
		Standard_Byte & g();
		%feature("autodoc", "1");
		Standard_Byte & b();
		%feature("autodoc", "1");
		Standard_Byte & a_();

};
%feature("shadow") Image_ColorBGR32::~Image_ColorBGR32 %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Image_ColorBGR32 {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Image_ColorRGB32;
class Image_ColorRGB32 {
	public:
		%feature("autodoc", "1");
		Image_ColorRGB32();
		%feature("autodoc", "1");
		static		Standard_Integer Length();
		%feature("autodoc", "1");
		Standard_Byte r() const;
		%feature("autodoc", "1");
		Standard_Byte g() const;
		%feature("autodoc", "1");
		Standard_Byte b() const;
		%feature("autodoc", "1");
		Standard_Byte a_() const;
		%feature("autodoc", "1");
		Standard_Byte & r();
		%feature("autodoc", "1");
		Standard_Byte & g();
		%feature("autodoc", "1");
		Standard_Byte & b();
		%feature("autodoc", "1");
		Standard_Byte & a_();

};
%feature("shadow") Image_ColorRGB32::~Image_ColorRGB32 %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Image_ColorRGB32 {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Image_ColorBGRF;
class Image_ColorBGRF {
	public:
		%feature("autodoc", "1");
		Image_ColorBGRF();
		%feature("autodoc", "1");
		static		Standard_Integer Length();
		%feature("autodoc", "1");
		Standard_ShortReal r() const;
		%feature("autodoc", "1");
		Standard_ShortReal g() const;
		%feature("autodoc", "1");
		Standard_ShortReal b() const;
		%feature("autodoc", "1");
		Standard_ShortReal & r();
		%feature("autodoc", "1");
		Standard_ShortReal & g();
		%feature("autodoc", "1");
		Standard_ShortReal & b();

};
%feature("shadow") Image_ColorBGRF::~Image_ColorBGRF %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Image_ColorBGRF {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Image_ColorBGRAF;
class Image_ColorBGRAF {
	public:
		%feature("autodoc", "1");
		Image_ColorBGRAF();
		%feature("autodoc", "1");
		static		Standard_Integer Length();
		%feature("autodoc", "1");
		Standard_ShortReal r() const;
		%feature("autodoc", "1");
		Standard_ShortReal g() const;
		%feature("autodoc", "1");
		Standard_ShortReal b() const;
		%feature("autodoc", "1");
		Standard_ShortReal a() const;
		%feature("autodoc", "1");
		Standard_ShortReal & r();
		%feature("autodoc", "1");
		Standard_ShortReal & g();
		%feature("autodoc", "1");
		Standard_ShortReal & b();
		%feature("autodoc", "1");
		Standard_ShortReal & a();

};
%feature("shadow") Image_ColorBGRAF::~Image_ColorBGRAF %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Image_ColorBGRAF {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Image_ColorRGBAF;
class Image_ColorRGBAF {
	public:
		%feature("autodoc", "1");
		Image_ColorRGBAF();
		%feature("autodoc", "1");
		static		Standard_Integer Length();
		%feature("autodoc", "1");
		Standard_ShortReal r() const;
		%feature("autodoc", "1");
		Standard_ShortReal g() const;
		%feature("autodoc", "1");
		Standard_ShortReal b() const;
		%feature("autodoc", "1");
		Standard_ShortReal a() const;
		%feature("autodoc", "1");
		Standard_ShortReal & r();
		%feature("autodoc", "1");
		Standard_ShortReal & g();
		%feature("autodoc", "1");
		Standard_ShortReal & b();
		%feature("autodoc", "1");
		Standard_ShortReal & a();

};
%feature("shadow") Image_ColorRGBAF::~Image_ColorRGBAF %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Image_ColorRGBAF {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Image_ColorRGBF;
class Image_ColorRGBF {
	public:
		%feature("autodoc", "1");
		Image_ColorRGBF();
		%feature("autodoc", "1");
		static		Standard_Integer Length();
		%feature("autodoc", "1");
		Standard_ShortReal r() const;
		%feature("autodoc", "1");
		Standard_ShortReal g() const;
		%feature("autodoc", "1");
		Standard_ShortReal b() const;
		%feature("autodoc", "1");
		Standard_ShortReal & r();
		%feature("autodoc", "1");
		Standard_ShortReal & g();
		%feature("autodoc", "1");
		Standard_ShortReal & b();

};
%feature("shadow") Image_ColorRGBF::~Image_ColorRGBF %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Image_ColorRGBF {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Image_ColorBGR;
class Image_ColorBGR {
	public:
		%feature("autodoc", "1");
		Image_ColorBGR();
		%feature("autodoc", "1");
		static		Standard_Integer Length();
		%feature("autodoc", "1");
		Standard_Byte r() const;
		%feature("autodoc", "1");
		Standard_Byte g() const;
		%feature("autodoc", "1");
		Standard_Byte b() const;
		%feature("autodoc", "1");
		Standard_Byte & r();
		%feature("autodoc", "1");
		Standard_Byte & g();
		%feature("autodoc", "1");
		Standard_Byte & b();

};
%feature("shadow") Image_ColorBGR::~Image_ColorBGR %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Image_ColorBGR {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Image_DataMapNodeOfLookupTable;
class Image_DataMapNodeOfLookupTable : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Image_DataMapNodeOfLookupTable(const Aspect_IndexPixel &K, const Aspect_IndexPixel &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Aspect_IndexPixel & Key() const;
		%feature("autodoc", "1");
		Aspect_IndexPixel & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Image_DataMapNodeOfLookupTable {
	Handle_Image_DataMapNodeOfLookupTable GetHandle() {
	return *(Handle_Image_DataMapNodeOfLookupTable*) &$self;
	}
};
%extend Image_DataMapNodeOfLookupTable {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Image_DataMapNodeOfLookupTable::~Image_DataMapNodeOfLookupTable %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Image_DataMapNodeOfLookupTable {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Image_BilinearPixelInterpolation;
class Image_BilinearPixelInterpolation : public Image_PixelInterpolation {
	public:
		%feature("autodoc", "1");
		Image_BilinearPixelInterpolation();
		%feature("autodoc", "1");
		virtual		Standard_Boolean Interpolate(const Handle_Image_Image &aImage, const Standard_Real FX, const Standard_Real FY, const Standard_Integer LowerX, const Standard_Integer LowerY, const Standard_Integer UpperX, const Standard_Integer UpperY, Aspect_Pixel & RetPixel) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Interpolate(const Handle_Image_DColorImage &aImage, const Standard_Real FX, const Standard_Real FY, const Standard_Integer LowerX, const Standard_Integer LowerY, const Standard_Integer UpperX, const Standard_Integer UpperY, Aspect_ColorPixel & RetPixel) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Interpolate(const Handle_Image_DIndexedImage &aImage, const Standard_Real FX, const Standard_Real FY, const Standard_Integer LowerX, const Standard_Integer LowerY, const Standard_Integer UpperX, const Standard_Integer UpperY, Aspect_IndexPixel & RetPixel) const;

};
%feature("shadow") Image_BilinearPixelInterpolation::~Image_BilinearPixelInterpolation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Image_BilinearPixelInterpolation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Image_Convertor;
class Image_Convertor {
	public:
		%feature("autodoc", "1");
		Image_Convertor();
		%feature("autodoc", "1");
		void SetDitheringMethod(const Image_DitheringMethod aMethod);
		%feature("autodoc", "1");
		Handle_Image_PseudoColorImage Convert(const Handle_Image_ColorImage &aColorImage, const Handle_Aspect_ColorMap &aColorMap) const;
		%feature("autodoc", "1");
		Handle_Image_PseudoColorImage Convert(const Handle_Image_PseudoColorImage &aPseudoColorImage, const Handle_Aspect_ColorMap &aColorMap) const;
		%feature("autodoc", "1");
		Handle_Image_ColorImage Convert(const Handle_Image_PseudoColorImage &aPseudoColorImage) const;

};
%feature("shadow") Image_Convertor::~Image_Convertor %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Image_Convertor {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Image_ColorPixelMapHasher;
class Image_ColorPixelMapHasher {
	public:
		%feature("autodoc", "1");
		Image_ColorPixelMapHasher();
		%feature("autodoc", "1");
		static		Standard_Integer HashCode(const Aspect_ColorPixel &K, const Standard_Integer Upper);
		%feature("autodoc", "1");
		static		Standard_Boolean IsEqual(const Aspect_ColorPixel &K1, const Aspect_ColorPixel &K2);

};
%feature("shadow") Image_ColorPixelMapHasher::~Image_ColorPixelMapHasher %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Image_ColorPixelMapHasher {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Image_DataMapIteratorOfLookupTable;
class Image_DataMapIteratorOfLookupTable : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		Image_DataMapIteratorOfLookupTable();
		%feature("autodoc", "1");
		Image_DataMapIteratorOfLookupTable(const Image_LookupTable &aMap);
		%feature("autodoc", "1");
		void Initialize(const Image_LookupTable &aMap);
		%feature("autodoc", "1");
		const Aspect_IndexPixel & Key() const;
		%feature("autodoc", "1");
		const Aspect_IndexPixel & Value() const;

};
%feature("shadow") Image_DataMapIteratorOfLookupTable::~Image_DataMapIteratorOfLookupTable %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Image_DataMapIteratorOfLookupTable {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Image_PixelRowOfDColorImage;
class Image_PixelRowOfDColorImage {
	public:
		%feature("autodoc", "1");
		Image_PixelRowOfDColorImage(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		Image_PixelRowOfDColorImage(const Aspect_ColorPixel &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Aspect_ColorPixel &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const Image_PixelRowOfDColorImage & Assign(const Image_PixelRowOfDColorImage &Other);
		%feature("autodoc", "1");
		const Image_PixelRowOfDColorImage & operator=(const Image_PixelRowOfDColorImage &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Aspect_ColorPixel &Value);
		%feature("autodoc", "1");
		const Aspect_ColorPixel & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Aspect_ColorPixel & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Aspect_ColorPixel & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Aspect_ColorPixel & operator()(const Standard_Integer Index);

};
%feature("shadow") Image_PixelRowOfDColorImage::~Image_PixelRowOfDColorImage %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Image_PixelRowOfDColorImage {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Image_BalancedPixelInterpolation;
class Image_BalancedPixelInterpolation : public Image_PixelInterpolation {
	public:
		%feature("autodoc", "1");
		Image_BalancedPixelInterpolation();
		%feature("autodoc", "1");
		virtual		Standard_Boolean Interpolate(const Handle_Image_Image &aImage, const Standard_Real FX, const Standard_Real FY, const Standard_Integer LowerX, const Standard_Integer LowerY, const Standard_Integer UpperX, const Standard_Integer UpperY, Aspect_Pixel & RetPixel) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Interpolate(const Handle_Image_DColorImage &aImage, const Standard_Real FX, const Standard_Real FY, const Standard_Integer LowerX, const Standard_Integer LowerY, const Standard_Integer UpperX, const Standard_Integer UpperY, Aspect_ColorPixel & RetPixel) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Interpolate(const Handle_Image_DIndexedImage &aImage, const Standard_Real FX, const Standard_Real FY, const Standard_Integer LowerX, const Standard_Integer LowerY, const Standard_Integer UpperX, const Standard_Integer UpperY, Aspect_IndexPixel & RetPixel) const;

};
%feature("shadow") Image_BalancedPixelInterpolation::~Image_BalancedPixelInterpolation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Image_BalancedPixelInterpolation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Image_DIndexedImage;
class Image_DIndexedImage : public Image_Image {
	public:
		%feature("autodoc", "1");
		virtual		void Destroy();
		%feature("autodoc", "1");
		void SetBackgroundPixel(const Aspect_IndexPixel &aPixel);
		%feature("autodoc", "1");
		const Aspect_IndexPixel & BackgroundPixel() const;
		%feature("autodoc", "1");
		const Aspect_IndexPixel & Pixel(const Standard_Integer X, const Standard_Integer Y) const;
		%feature("autodoc", "1");
		const Aspect_IndexPixel & operator()(const Standard_Integer X, const Standard_Integer Y) const;
		%feature("autodoc", "1");
		void SetPixel(const Standard_Integer X, const Standard_Integer Y, const Aspect_IndexPixel &aPixel);
		%feature("autodoc", "1");
		Aspect_IndexPixel & MutPixel(const Standard_Integer X, const Standard_Integer Y);
		%feature("autodoc", "1");
		Aspect_IndexPixel & operator()(const Standard_Integer X, const Standard_Integer Y);
		%feature("autodoc", "1");
		void SetRow(const Standard_Integer X, const Standard_Integer Y, const Image_PixelRowOfDIndexedImage &aRow);
		%feature("autodoc", "1");
		void Row(const Standard_Integer X, const Standard_Integer Y, Image_PixelRowOfDIndexedImage & aRow) const;
		%feature("autodoc", "1");
		void SwapRow(const Standard_Integer I, const Standard_Integer J);
		%feature("autodoc", "1");
		void SwapCol(const Standard_Integer I, const Standard_Integer J);
		%feature("autodoc", "1");
		void Zoom(const Image_PixelInterpolation &anInterpolation, const Standard_Real aCoefX, const Standard_Real aCoefY);
		%feature("autodoc", "1");
		void Rotate(const Image_PixelInterpolation &anInterpolation, const Quantity_PlaneAngle aAngle);
		%feature("autodoc", "1");
		void Translate(const Image_PixelInterpolation &anInterpolation, const Standard_Real DX, const Standard_Real DY);
		%feature("autodoc", "1");
		void Affine(const Image_PixelInterpolation &anInterpolation, const gp_GTrsf2d Trsf);
		%feature("autodoc", "1");
		void Affine(const Image_PixelInterpolation &anInterpolation, const gp_Trsf Trsf);
		%feature("autodoc", "1");
		virtual		void InternalDup(const Handle_Image_Image &anImage);
		%feature("autodoc", "1");
		virtual		void SetOrigin(const Standard_Integer x, const Standard_Integer y);
		%feature("autodoc", "1");
		virtual		Standard_Integer LowerX() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer UpperX() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer Width() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer LowerY() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer UpperY() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer Height() const;
		%feature("autodoc", "1");
		virtual		void Resize(const Standard_Real XOffset, const Standard_Real XScale, const Standard_Real YOffset, const Standard_Real YScale);
		%feature("autodoc", "1");
		virtual		Image_TypeOfImage Type() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean isSamePixel(const Standard_Integer X, const Standard_Integer Y, const Handle_Image_Image &anotherImage, const Standard_Integer anotherX, const Standard_Integer anotherY) const;
		%feature("autodoc", "1");
		virtual		void Pixel(const Standard_Integer X, const Standard_Integer Y, Aspect_Pixel & aPixel) const;
		%feature("autodoc", "1");
		virtual		void SetPixel(const Standard_Integer X, const Standard_Integer Y, const Aspect_Pixel &aPixel);
		%feature("autodoc", "1");
		virtual		void Pixel(const Standard_Integer X, const Standard_Integer Y, Image_PixelAddress & aPixel) const;
		%feature("autodoc", "1");
		virtual		void SetPixel(const Standard_Integer X, const Standard_Integer Y, const Image_PixelAddress &aPixel);
		%feature("autodoc", "1");
		virtual		void Transpose(const Image_FlipType aType);
		%feature("autodoc", "1");
		virtual		void Clip(const Standard_Integer X, const Standard_Integer Y, const Standard_Integer Width, const Standard_Integer Height);
		%feature("autodoc", "1");
		virtual		void Shift(const Standard_Integer XShifth, const Standard_Integer YShift);
		%feature("autodoc", "1");
		virtual		void Fill(const Handle_Image_Image &SrcImage);
		%feature("autodoc", "1");
		virtual		void Fill(const Handle_Image_Image &SrcImage, const Standard_Integer SrcX, const Standard_Integer SrcY, const Standard_Integer SrcWidth, const Standard_Integer SrcHeight, const Standard_Integer X, const Standard_Integer Y);
		%feature("autodoc", "1");
		void FillRect(const Aspect_IndexPixel &aPixel, const Standard_Integer X, const Standard_Integer Y, const Standard_Integer Width, const Standard_Integer Height);
		%feature("autodoc", "1");
		void DrawRect(const Aspect_IndexPixel &aPixel, const Standard_Integer X, const Standard_Integer Y, const Standard_Integer Width, const Standard_Integer Height);
		%feature("autodoc", "1");
		void DrawLine(const Aspect_IndexPixel &aPixel, const Standard_Integer X1, const Standard_Integer Y1, const Standard_Integer X2, const Standard_Integer Y2);
		%feature("autodoc", "1");
		virtual		void Clear();
		%feature("autodoc", "1");
		virtual		void Dump() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Image_DIndexedImage {
	Handle_Image_DIndexedImage GetHandle() {
	return *(Handle_Image_DIndexedImage*) &$self;
	}
};
%extend Image_DIndexedImage {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Image_DIndexedImage::~Image_DIndexedImage %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Image_DIndexedImage {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Image_DataMapIteratorOfColorPixelDataMap;
class Image_DataMapIteratorOfColorPixelDataMap : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		Image_DataMapIteratorOfColorPixelDataMap();
		%feature("autodoc", "1");
		Image_DataMapIteratorOfColorPixelDataMap(const Image_ColorPixelDataMap &aMap);
		%feature("autodoc", "1");
		void Initialize(const Image_ColorPixelDataMap &aMap);
		%feature("autodoc", "1");
		const Aspect_ColorPixel & Key() const;
		%feature("autodoc", "1");
		const Standard_Integer & Value() const;

};
%feature("shadow") Image_DataMapIteratorOfColorPixelDataMap::~Image_DataMapIteratorOfColorPixelDataMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Image_DataMapIteratorOfColorPixelDataMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Image_PseudoColorImage;
class Image_PseudoColorImage : public Image_DIndexedImage {
	public:
		%feature("autodoc", "1");
		Image_PseudoColorImage(const Standard_Integer x, const Standard_Integer y, const Standard_Integer dx, const Standard_Integer dy, const Handle_Aspect_ColorMap &aColorMap);
		%feature("autodoc", "1");
		Image_PseudoColorImage(const Standard_Integer x, const Standard_Integer y, const Standard_Integer dx, const Standard_Integer dy, const Handle_Aspect_ColorMap &aColorMap, const Aspect_IndexPixel &BackPixel);
		%feature("autodoc", "1");
		virtual		Image_TypeOfImage Type() const;
		%feature("autodoc", "1");
		Handle_Aspect_ColorMap ColorMap() const;
		%feature("autodoc", "1");
		virtual		const Quantity_Color & PixelColor(const Standard_Integer X, const Standard_Integer Y) const;
		%feature("autodoc", "1");
		virtual		Handle_Quantity_HArray1OfColor RowColor(const Standard_Integer Y) const;
		%feature("autodoc", "1");
		virtual		void RowColor(const Standard_Integer Y, Quantity_Array1OfColor & aArray1) const;
		%feature("autodoc", "1");
		Handle_Image_PseudoColorImage Squeeze(const Aspect_IndexPixel &BasePixel) const;
		%feature("autodoc", "1");
		void SqueezedLookupTable(const Aspect_IndexPixel &BasePixel, Image_LookupTable & aLookup) const;
		%feature("autodoc", "1");
		void Lookup(const Image_LookupTable &aLookup);
		%feature("autodoc", "1");
		void Extrema(Aspect_IndexPixel & Min, Aspect_IndexPixel & Max) const;
		%feature("autodoc", "1");
		void Threshold(const Aspect_IndexPixel &Min, const Aspect_IndexPixel &Max, const Aspect_IndexPixel &Map);
		%feature("autodoc", "1");
		void Rescale(const Standard_Real Scale, const Standard_Real Offset);
		%feature("autodoc", "1");
		virtual		Handle_Image_Image Dup() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Image_PseudoColorImage {
	Handle_Image_PseudoColorImage GetHandle() {
	return *(Handle_Image_PseudoColorImage*) &$self;
	}
};
%extend Image_PseudoColorImage {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Image_PseudoColorImage::~Image_PseudoColorImage %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Image_PseudoColorImage {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Image_PixelFieldOfDColorImage;
class Image_PixelFieldOfDColorImage {
	public:
		%feature("autodoc", "1");
		Image_PixelFieldOfDColorImage(const Standard_Integer Width, const Standard_Integer Height);
		%feature("autodoc", "1");
		Image_PixelFieldOfDColorImage(const Standard_Integer Width, const Standard_Integer Height, const Aspect_ColorPixel &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Integer Width() const;
		%feature("autodoc", "1");
		Standard_Integer Height() const;
		%feature("autodoc", "1");
		Standard_Integer UpperX() const;
		%feature("autodoc", "1");
		Standard_Integer UpperY() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer X, const Standard_Integer Y, const Aspect_ColorPixel &Value);
		%feature("autodoc", "1");
		const Aspect_ColorPixel & Value(const Standard_Integer X, const Standard_Integer Y) const;
		%feature("autodoc", "1");
		const Aspect_ColorPixel & operator()(const Standard_Integer X, const Standard_Integer Y) const;
		%feature("autodoc", "1");
		Aspect_ColorPixel & ChangeValue(const Standard_Integer X, const Standard_Integer Y);
		%feature("autodoc", "1");
		Aspect_ColorPixel & operator()(const Standard_Integer X, const Standard_Integer Y);

};
%feature("shadow") Image_PixelFieldOfDColorImage::~Image_PixelFieldOfDColorImage %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Image_PixelFieldOfDColorImage {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Image_DataMapNodeOfColorPixelDataMap;
class Image_DataMapNodeOfColorPixelDataMap : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Image_DataMapNodeOfColorPixelDataMap(const Aspect_ColorPixel &K, const Standard_Integer &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Aspect_ColorPixel & Key() const;
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
%extend Image_DataMapNodeOfColorPixelDataMap {
	Handle_Image_DataMapNodeOfColorPixelDataMap GetHandle() {
	return *(Handle_Image_DataMapNodeOfColorPixelDataMap*) &$self;
	}
};
%extend Image_DataMapNodeOfColorPixelDataMap {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Image_DataMapNodeOfColorPixelDataMap::~Image_DataMapNodeOfColorPixelDataMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Image_DataMapNodeOfColorPixelDataMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Image_ColorBGRA;
class Image_ColorBGRA {
	public:
		%feature("autodoc", "1");
		Image_ColorBGRA();
		%feature("autodoc", "1");
		static		Standard_Integer Length();
		%feature("autodoc", "1");
		Standard_Byte r() const;
		%feature("autodoc", "1");
		Standard_Byte g() const;
		%feature("autodoc", "1");
		Standard_Byte b() const;
		%feature("autodoc", "1");
		Standard_Byte a() const;
		%feature("autodoc", "1");
		Standard_Byte & r();
		%feature("autodoc", "1");
		Standard_Byte & g();
		%feature("autodoc", "1");
		Standard_Byte & b();
		%feature("autodoc", "1");
		Standard_Byte & a();

};
%feature("shadow") Image_ColorBGRA::~Image_ColorBGRA %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Image_ColorBGRA {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Image_ColorRGB;
class Image_ColorRGB {
	public:
		%feature("autodoc", "1");
		Image_ColorRGB();
		%feature("autodoc", "1");
		static		Standard_Integer Length();
		%feature("autodoc", "1");
		Standard_Byte r() const;
		%feature("autodoc", "1");
		Standard_Byte g() const;
		%feature("autodoc", "1");
		Standard_Byte b() const;
		%feature("autodoc", "1");
		Standard_Byte & r();
		%feature("autodoc", "1");
		Standard_Byte & g();
		%feature("autodoc", "1");
		Standard_Byte & b();

};
%feature("shadow") Image_ColorRGB::~Image_ColorRGB %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Image_ColorRGB {
	void _kill_pointed() {
		delete $self;
	}
};
