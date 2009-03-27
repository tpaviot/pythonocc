/*

Copyright 2008-2009 Thomas Paviot (thomas.paviot@free.fr)

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
%module Image

%include typemaps.i
%include cmalloc.i
%include cpointer.i
%include carrays.i
%include exception.i

#ifndef _Standard_TypeDef_HeaderFile
#define _Standard_TypeDef_HeaderFile
#define Standard_False (Standard_Boolean) 0
#define Standard_True  (Standard_Boolean) 1
#endif

/*
Exception handling
*/
%{#include <Standard_Failure.hxx>%}
%exception
{
    try
    {
        $action
    } 
    catch(Standard_Failure)
    {
        SWIG_exception(SWIG_RuntimeError,Standard_Failure::Caught()->DynamicType()->Name());
    }
}

/*
Standard_Real & function transformation
*/
%typemap(argout) Standard_Real &OutValue {
    PyObject *o, *o2, *o3;
    o = PyFloat_FromDouble(*$1);
    if ((!$result) || ($result == Py_None)) {
        $result = o;
    } else {
        if (!PyTuple_Check($result)) {
            PyObject *o2 = $result;
            $result = PyTuple_New(1);
            PyTuple_SetItem($result,0,o2);
        }
        o3 = PyTuple_New(1);
        PyTuple_SetItem(o3,0,o);
        o2 = $result;
        $result = PySequence_Concat(o2,o3);
        Py_DECREF(o2);
        Py_DECREF(o3);
    }
}

%typemap(in,numinputs=0) Standard_Real &OutValue(Standard_Real temp) {
    $1 = &temp;
}

/*
Standard_Integer & function transformation
*/
%typemap(argout) Standard_Integer &OutValue {
    PyObject *o, *o2, *o3;
    o = PyInt_FromLong(*$1);
    if ((!$result) || ($result == Py_None)) {
        $result = o;
    } else {
        if (!PyTuple_Check($result)) {
            PyObject *o2 = $result;
            $result = PyTuple_New(1);
            PyTuple_SetItem($result,0,o2);
        }
        o3 = PyTuple_New(1);
        PyTuple_SetItem(o3,0,o);
        o2 = $result;
        $result = PySequence_Concat(o2,o3);
        Py_DECREF(o2);
        Py_DECREF(o3);
    }
}

%typemap(in,numinputs=0) Standard_Integer &OutValue(Standard_Integer temp) {
    $1 = &temp;
}


%include Image_dependencies.i


%include Image_headers.i

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
		Handle_Image_Image const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Image_Image {
	Image_Image* GetObject() {
	return (Image_Image*)$self->Access();
	}
};
%extend Handle_Image_Image {
	~Handle_Image_Image() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_Image_Image\n");}
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
		Handle_Image_DIndexedImage const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Image_DIndexedImage {
	Image_DIndexedImage* GetObject() {
	return (Image_DIndexedImage*)$self->Access();
	}
};
%extend Handle_Image_DIndexedImage {
	~Handle_Image_DIndexedImage() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_Image_DIndexedImage\n");}
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
		Handle_Image_PseudoColorImage const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Image_PseudoColorImage {
	Image_PseudoColorImage* GetObject() {
	return (Image_PseudoColorImage*)$self->Access();
	}
};
%extend Handle_Image_PseudoColorImage {
	~Handle_Image_PseudoColorImage() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_Image_PseudoColorImage\n");}
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
		Handle_Image_DColorImage const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Image_DColorImage {
	Image_DColorImage* GetObject() {
	return (Image_DColorImage*)$self->Access();
	}
};
%extend Handle_Image_DColorImage {
	~Handle_Image_DColorImage() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_Image_DColorImage\n");}
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
		Handle_Image_ColorImage const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Image_ColorImage {
	Image_ColorImage* GetObject() {
	return (Image_ColorImage*)$self->Access();
	}
};
%extend Handle_Image_ColorImage {
	~Handle_Image_ColorImage() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_Image_ColorImage\n");}
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
		Handle_Image_DataMapNodeOfColorPixelDataMap const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Image_DataMapNodeOfColorPixelDataMap {
	Image_DataMapNodeOfColorPixelDataMap* GetObject() {
	return (Image_DataMapNodeOfColorPixelDataMap*)$self->Access();
	}
};
%extend Handle_Image_DataMapNodeOfColorPixelDataMap {
	~Handle_Image_DataMapNodeOfColorPixelDataMap() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_Image_DataMapNodeOfColorPixelDataMap\n");}
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
		Handle_Image_DataMapNodeOfLookupTable const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Image_DataMapNodeOfLookupTable {
	Image_DataMapNodeOfLookupTable* GetObject() {
	return (Image_DataMapNodeOfLookupTable*)$self->Access();
	}
};
%extend Handle_Image_DataMapNodeOfLookupTable {
	~Handle_Image_DataMapNodeOfLookupTable() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_Image_DataMapNodeOfLookupTable\n");}
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
	~Image_Image() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Image_Image\n");}
	}
};

%nodefaultctor Image_IndexPixelMapHasher;
class Image_IndexPixelMapHasher {
	public:
		%feature("autodoc", "1");
		Image_IndexPixelMapHasher();
		%feature("autodoc", "1");
		Standard_Integer HashCode(const Aspect_IndexPixel &K, const Standard_Integer Upper);
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const Aspect_IndexPixel &K1, const Aspect_IndexPixel &K2);

};
%extend Image_IndexPixelMapHasher {
	~Image_IndexPixelMapHasher() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Image_IndexPixelMapHasher\n");}
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
%extend Image_PixelInterpolation {
	~Image_PixelInterpolation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Image_PixelInterpolation\n");}
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
%extend Image_PlanarPixelInterpolation {
	~Image_PlanarPixelInterpolation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Image_PlanarPixelInterpolation\n");}
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
%extend Image_PixelRowOfDIndexedImage {
	~Image_PixelRowOfDIndexedImage() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Image_PixelRowOfDIndexedImage\n");}
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
%extend Image_DataMapIteratorOfLookupTable {
	~Image_DataMapIteratorOfLookupTable() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Image_DataMapIteratorOfLookupTable\n");}
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

};
%extend Image_LookupTable {
	~Image_LookupTable() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Image_LookupTable\n");}
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
		void Affine(const Image_PixelInterpolation &anInterpolation, const gp_GTrsf2d &Trsf);
		%feature("autodoc", "1");
		void Affine(const Image_PixelInterpolation &anInterpolation, const gp_Trsf &Trsf);
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
	~Image_DColorImage() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Image_DColorImage\n");}
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
	~Image_ColorImage() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Image_ColorImage\n");}
	}
};

%nodefaultctor Image_DataMapNodeOfColorPixelDataMap;
class Image_DataMapNodeOfColorPixelDataMap : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Image_DataMapNodeOfColorPixelDataMap(const Aspect_ColorPixel &K, const Standard_Integer &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Aspect_ColorPixel & Key() const;
		%feature("autodoc", "1");
		Standard_Integer & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Image_DataMapNodeOfColorPixelDataMap {
	Handle_Image_DataMapNodeOfColorPixelDataMap GetHandle() {
	return *(Handle_Image_DataMapNodeOfColorPixelDataMap*) &$self;
	}
};
%extend Image_DataMapNodeOfColorPixelDataMap {
	~Image_DataMapNodeOfColorPixelDataMap() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Image_DataMapNodeOfColorPixelDataMap\n");}
	}
};

%nodefaultctor Image;
class Image {
	public:
		%feature("autodoc", "1");
		Image();
		%feature("autodoc", "1");
		void Zoom(const Handle_Image_Image &aImage, const Image_PixelInterpolation &aInterpolation, const Standard_Real aCoefX, const Standard_Real aCoefY);
		%feature("autodoc", "1");
		void Zoom(const Handle_Image_Image &aImage, const Standard_Real aCoefX, const Standard_Real aCoefY);
		%feature("autodoc", "1");
		void Rotate(const Handle_Image_Image &aImage, const Image_PixelInterpolation &aInterpolation, const Quantity_PlaneAngle aAngle);
		%feature("autodoc", "1");
		void Rotate(const Handle_Image_Image &aImage, const Quantity_PlaneAngle aAngle);
		%feature("autodoc", "1");
		void Translate(const Handle_Image_Image &aImage, const Image_PixelInterpolation &aInterpolation, const Standard_Real DX, const Standard_Real DY);
		%feature("autodoc", "1");
		void Translate(const Handle_Image_Image &aImage, const Standard_Real DX, const Standard_Real DY);
		%feature("autodoc", "1");
		void Affine(const Handle_Image_Image &aImage, const Image_PixelInterpolation &aInterpolation, const gp_GTrsf2d &Trsf);
		%feature("autodoc", "1");
		void Affine(const Handle_Image_Image &aImage, const gp_GTrsf2d &Trsf);
		%feature("autodoc", "1");
		void Affine(const Handle_Image_Image &aImage, const Image_PixelInterpolation &aInterpolation, const gp_Trsf &Trsf);
		%feature("autodoc", "1");
		void Affine(const Handle_Image_Image &aImage, const gp_Trsf &Trsf);

};
%extend Image {
	~Image() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Image\n");}
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
%extend Image_AveragePixelInterpolation {
	~Image_AveragePixelInterpolation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Image_AveragePixelInterpolation\n");}
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
	~Image_DataMapNodeOfLookupTable() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Image_DataMapNodeOfLookupTable\n");}
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
		void Affine(const Image_PixelInterpolation &anInterpolation, const gp_GTrsf2d &Trsf);
		%feature("autodoc", "1");
		void Affine(const Image_PixelInterpolation &anInterpolation, const gp_Trsf &Trsf);
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
	~Image_DIndexedImage() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Image_DIndexedImage\n");}
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
%extend Image_BilinearPixelInterpolation {
	~Image_BilinearPixelInterpolation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Image_BilinearPixelInterpolation\n");}
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
%extend Image_Convertor {
	~Image_Convertor() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Image_Convertor\n");}
	}
};

%nodefaultctor Image_ColorPixelMapHasher;
class Image_ColorPixelMapHasher {
	public:
		%feature("autodoc", "1");
		Image_ColorPixelMapHasher();
		%feature("autodoc", "1");
		Standard_Integer HashCode(const Aspect_ColorPixel &K, const Standard_Integer Upper);
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const Aspect_ColorPixel &K1, const Aspect_ColorPixel &K2);

};
%extend Image_ColorPixelMapHasher {
	~Image_ColorPixelMapHasher() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Image_ColorPixelMapHasher\n");}
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
		%feature("autodoc", "1");
		Standard_Integer & ChangeFind(const Aspect_ColorPixel &K);
		%feature("autodoc", "1");
		Standard_Integer & operator()(const Aspect_ColorPixel &K);

};
%extend Image_ColorPixelDataMap {
	~Image_ColorPixelDataMap() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Image_ColorPixelDataMap\n");}
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
%extend Image_PixelRowOfDColorImage {
	~Image_PixelRowOfDColorImage() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Image_PixelRowOfDColorImage\n");}
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
%extend Image_BalancedPixelInterpolation {
	~Image_BalancedPixelInterpolation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Image_BalancedPixelInterpolation\n");}
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
%extend Image_DataMapIteratorOfColorPixelDataMap {
	~Image_DataMapIteratorOfColorPixelDataMap() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Image_DataMapIteratorOfColorPixelDataMap\n");}
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
	~Image_PseudoColorImage() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Image_PseudoColorImage\n");}
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
%extend Image_PixelFieldOfDColorImage {
	~Image_PixelFieldOfDColorImage() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Image_PixelFieldOfDColorImage\n");}
	}
};