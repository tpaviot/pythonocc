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
%module V2d

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


%include V2d_dependencies.i


%include V2d_headers.i

typedef V2d_Viewer * V2d_ViewerPointer;

enum V2d_TypeOfWindowResizingEffect {
	V2d_TOWRE_ENLARGE_SPACE,
	V2d_TOWRE_ENLARGE_OBJECTS,
	};



%nodefaultctor Handle_V2d_BackgroundGraphicObject;
class Handle_V2d_BackgroundGraphicObject : public Handle_Graphic2d_GraphicObject {
	public:
		%feature("autodoc", "1");
		Handle_V2d_BackgroundGraphicObject();
		%feature("autodoc", "1");
		Handle_V2d_BackgroundGraphicObject(const Handle_V2d_BackgroundGraphicObject &aHandle);
		%feature("autodoc", "1");
		Handle_V2d_BackgroundGraphicObject(const V2d_BackgroundGraphicObject *anItem);
		%feature("autodoc", "1");
		Handle_V2d_BackgroundGraphicObject const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_V2d_BackgroundGraphicObject {
	V2d_BackgroundGraphicObject* GetObject() {
	return (V2d_BackgroundGraphicObject*)$self->Access();
	}
};
%extend Handle_V2d_BackgroundGraphicObject {
	~Handle_V2d_BackgroundGraphicObject() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_V2d_BackgroundGraphicObject\n");}
	}
};

%nodefaultctor Handle_V2d_RectangularGraphicGrid;
class Handle_V2d_RectangularGraphicGrid : public Handle_Graphic2d_Primitive {
	public:
		%feature("autodoc", "1");
		Handle_V2d_RectangularGraphicGrid();
		%feature("autodoc", "1");
		Handle_V2d_RectangularGraphicGrid(const Handle_V2d_RectangularGraphicGrid &aHandle);
		%feature("autodoc", "1");
		Handle_V2d_RectangularGraphicGrid(const V2d_RectangularGraphicGrid *anItem);
		%feature("autodoc", "1");
		Handle_V2d_RectangularGraphicGrid const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_V2d_RectangularGraphicGrid {
	V2d_RectangularGraphicGrid* GetObject() {
	return (V2d_RectangularGraphicGrid*)$self->Access();
	}
};
%extend Handle_V2d_RectangularGraphicGrid {
	~Handle_V2d_RectangularGraphicGrid() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_V2d_RectangularGraphicGrid\n");}
	}
};

%nodefaultctor Handle_V2d_RectangularGrid;
class Handle_V2d_RectangularGrid : public Handle_Aspect_RectangularGrid {
	public:
		%feature("autodoc", "1");
		Handle_V2d_RectangularGrid();
		%feature("autodoc", "1");
		Handle_V2d_RectangularGrid(const Handle_V2d_RectangularGrid &aHandle);
		%feature("autodoc", "1");
		Handle_V2d_RectangularGrid(const V2d_RectangularGrid *anItem);
		%feature("autodoc", "1");
		Handle_V2d_RectangularGrid const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_V2d_RectangularGrid {
	V2d_RectangularGrid* GetObject() {
	return (V2d_RectangularGrid*)$self->Access();
	}
};
%extend Handle_V2d_RectangularGrid {
	~Handle_V2d_RectangularGrid() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_V2d_RectangularGrid\n");}
	}
};

%nodefaultctor Handle_V2d_CircularGraphicGrid;
class Handle_V2d_CircularGraphicGrid : public Handle_Graphic2d_Primitive {
	public:
		%feature("autodoc", "1");
		Handle_V2d_CircularGraphicGrid();
		%feature("autodoc", "1");
		Handle_V2d_CircularGraphicGrid(const Handle_V2d_CircularGraphicGrid &aHandle);
		%feature("autodoc", "1");
		Handle_V2d_CircularGraphicGrid(const V2d_CircularGraphicGrid *anItem);
		%feature("autodoc", "1");
		Handle_V2d_CircularGraphicGrid const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_V2d_CircularGraphicGrid {
	V2d_CircularGraphicGrid* GetObject() {
	return (V2d_CircularGraphicGrid*)$self->Access();
	}
};
%extend Handle_V2d_CircularGraphicGrid {
	~Handle_V2d_CircularGraphicGrid() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_V2d_CircularGraphicGrid\n");}
	}
};

%nodefaultctor Handle_V2d_CircularGrid;
class Handle_V2d_CircularGrid : public Handle_Aspect_CircularGrid {
	public:
		%feature("autodoc", "1");
		Handle_V2d_CircularGrid();
		%feature("autodoc", "1");
		Handle_V2d_CircularGrid(const Handle_V2d_CircularGrid &aHandle);
		%feature("autodoc", "1");
		Handle_V2d_CircularGrid(const V2d_CircularGrid *anItem);
		%feature("autodoc", "1");
		Handle_V2d_CircularGrid const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_V2d_CircularGrid {
	V2d_CircularGrid* GetObject() {
	return (V2d_CircularGrid*)$self->Access();
	}
};
%extend Handle_V2d_CircularGrid {
	~Handle_V2d_CircularGrid() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_V2d_CircularGrid\n");}
	}
};

%nodefaultctor Handle_V2d_View;
class Handle_V2d_View : public Handle_Viewer_View {
	public:
		%feature("autodoc", "1");
		Handle_V2d_View();
		%feature("autodoc", "1");
		Handle_V2d_View(const Handle_V2d_View &aHandle);
		%feature("autodoc", "1");
		Handle_V2d_View(const V2d_View *anItem);
		%feature("autodoc", "1");
		Handle_V2d_View const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_V2d_View {
	V2d_View* GetObject() {
	return (V2d_View*)$self->Access();
	}
};
%extend Handle_V2d_View {
	~Handle_V2d_View() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_V2d_View\n");}
	}
};

%nodefaultctor Handle_V2d_Viewer;
class Handle_V2d_Viewer : public Handle_Viewer_Viewer {
	public:
		%feature("autodoc", "1");
		Handle_V2d_Viewer();
		%feature("autodoc", "1");
		Handle_V2d_Viewer(const Handle_V2d_Viewer &aHandle);
		%feature("autodoc", "1");
		Handle_V2d_Viewer(const V2d_Viewer *anItem);
		%feature("autodoc", "1");
		Handle_V2d_Viewer const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_V2d_Viewer {
	V2d_Viewer* GetObject() {
	return (V2d_Viewer*)$self->Access();
	}
};
%extend Handle_V2d_Viewer {
	~Handle_V2d_Viewer() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_V2d_Viewer\n");}
	}
};

%nodefaultctor V2d_RectangularGrid;
class V2d_RectangularGrid : public Aspect_RectangularGrid {
	public:
		%feature("autodoc", "1");
		V2d_RectangularGrid(const V2d_ViewerPointer &aViewer, const Standard_Integer aColorIndex1, const Standard_Integer aColorIndex2);
		%feature("autodoc", "1");
		void SetColorIndices(const Standard_Integer aColorIndex1, const Standard_Integer aColorIndex2);
		%feature("autodoc", "1");
		virtual		void Display();
		%feature("autodoc", "1");
		virtual		void Erase() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsDisplayed() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend V2d_RectangularGrid {
	Handle_V2d_RectangularGrid GetHandle() {
	return *(Handle_V2d_RectangularGrid*) &$self;
	}
};
%extend V2d_RectangularGrid {
	~V2d_RectangularGrid() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of V2d_RectangularGrid\n");}
	}
};

%nodefaultctor V2d;
class V2d {
	public:
		%feature("autodoc", "1");
		V2d();
		%feature("autodoc", "1");
		void Draw(const Handle_V2d_Viewer &aViewer);

};
%extend V2d {
	~V2d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of V2d\n");}
	}
};

%nodefaultctor V2d_CircularGrid;
class V2d_CircularGrid : public Aspect_CircularGrid {
	public:
		%feature("autodoc", "1");
		V2d_CircularGrid(const V2d_ViewerPointer &aViewer, const Standard_Integer aColorIndex1, const Standard_Integer aColorIndex2);
		%feature("autodoc", "1");
		void SetColorIndices(const Standard_Integer aColorIndex1, const Standard_Integer aColorIndex2);
		%feature("autodoc", "1");
		virtual		void Display();
		%feature("autodoc", "1");
		virtual		void Erase() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsDisplayed() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend V2d_CircularGrid {
	Handle_V2d_CircularGrid GetHandle() {
	return *(Handle_V2d_CircularGrid*) &$self;
	}
};
%extend V2d_CircularGrid {
	~V2d_CircularGrid() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of V2d_CircularGrid\n");}
	}
};

%nodefaultctor V2d_RectangularGraphicGrid;
class V2d_RectangularGraphicGrid : public Graphic2d_Primitive {
	public:
		%feature("autodoc", "1");
		V2d_RectangularGraphicGrid(const Handle_Graphic2d_GraphicObject &aGraphicObject, const Standard_Real X, const Standard_Real Y, const Standard_Real alpha, const Standard_Real beta, const Standard_Real xo, const Standard_Real yo, const Standard_Integer aTenthColorIndex);
		%feature("autodoc", "1");
		void SetDrawMode(const Aspect_GridDrawMode aDrawMode);
		%feature("autodoc", "1");
		virtual		void Save(Aspect_FStream & aFStream) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend V2d_RectangularGraphicGrid {
	Handle_V2d_RectangularGraphicGrid GetHandle() {
	return *(Handle_V2d_RectangularGraphicGrid*) &$self;
	}
};
%extend V2d_RectangularGraphicGrid {
	~V2d_RectangularGraphicGrid() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of V2d_RectangularGraphicGrid\n");}
	}
};

%nodefaultctor V2d_CircularGraphicGrid;
class V2d_CircularGraphicGrid : public Graphic2d_Primitive {
	public:
		%feature("autodoc", "1");
		V2d_CircularGraphicGrid(const Handle_Graphic2d_GraphicObject &aGraphicObject, const Standard_Real X, const Standard_Real Y, const Standard_Real alpha, const Standard_Real step, const Standard_Integer aDivision, const Standard_Integer PointsColorIndex);
		%feature("autodoc", "1");
		void SetDrawMode(const Aspect_GridDrawMode aDrawMode);
		%feature("autodoc", "1");
		virtual		void Save(Aspect_FStream & aFStream) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend V2d_CircularGraphicGrid {
	Handle_V2d_CircularGraphicGrid GetHandle() {
	return *(Handle_V2d_CircularGraphicGrid*) &$self;
	}
};
%extend V2d_CircularGraphicGrid {
	~V2d_CircularGraphicGrid() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of V2d_CircularGraphicGrid\n");}
	}
};

%nodefaultctor V2d_BackgroundGraphicObject;
class V2d_BackgroundGraphicObject : public Graphic2d_GraphicObject {
	public:
		%feature("autodoc", "1");
		V2d_BackgroundGraphicObject(const Handle_Graphic2d_View &aView);
		%feature("autodoc", "1");
		virtual		Standard_Integer MaxPriority() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend V2d_BackgroundGraphicObject {
	Handle_V2d_BackgroundGraphicObject GetHandle() {
	return *(Handle_V2d_BackgroundGraphicObject*) &$self;
	}
};
%extend V2d_BackgroundGraphicObject {
	~V2d_BackgroundGraphicObject() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of V2d_BackgroundGraphicObject\n");}
	}
};

%nodefaultctor V2d_View;
class V2d_View : public Viewer_View {
	public:
		%feature("autodoc", "1");
		V2d_View(const Handle_Aspect_WindowDriver &aWindowDriver, const Handle_V2d_Viewer &aViewer, const Quantity_Length aXCenter=0, const Quantity_Length aYCenter=0, const Quantity_Length aSize=1000);
		%feature("autodoc", "1");
		void SetDefaultPosition(const Quantity_Length aXCenter=0, const Quantity_Length aYCenter=0, const Quantity_Length aSize=1000);
		%feature("autodoc", "1");
		void Fitall();
		%feature("autodoc", "1");
		virtual		void WindowFit(const Standard_Integer aX1, const Standard_Integer aY1, const Standard_Integer aX2, const Standard_Integer aY2);
		%feature("autodoc", "1");
		void Fit(const Quantity_Length aX1, const Quantity_Length aY1, const Quantity_Length aX2, const Quantity_Length aY2, const Standard_Boolean UseMinimum=1);
		%feature("autodoc", "1");
		void SetFitallRatio(const Quantity_Ratio aRatio);
		%feature("autodoc", "1");
		void Zoom(const Quantity_Factor Zoom);
		%feature("autodoc", "1");
		void Zoom(const Standard_Integer aX1, const Standard_Integer aY1, const Standard_Integer aX2, const Standard_Integer aY2, const Quantity_Ratio aCoefficient=5.00000000000000010408340855860842566471546888351e-3);
		%feature("autodoc", "1");
		void Zoom(const Standard_Integer aX, const Standard_Integer aY, const Quantity_Ratio aCoefficient=5.00000000000000010408340855860842566471546888351e-3);
		%feature("autodoc", "1");
		void Magnify(const Handle_V2d_View &anOriginView, const Standard_Integer X1, const Standard_Integer Y1, const Standard_Integer X2, const Standard_Integer Y2);
		%feature("autodoc", "1");
		void Translate(const Quantity_Length dx, const Quantity_Length dy);
		%feature("autodoc", "1");
		virtual		void Place(const Standard_Integer x, const Standard_Integer y, const Quantity_Factor aZoomFactor=1);
		%feature("autodoc", "1");
		void ScreenPlace(const Quantity_Length x, const Quantity_Length y, const Quantity_Factor aZoomFactor=1);
		%feature("autodoc", "1");
		void Pan(const Standard_Integer dx, const Standard_Integer dy);
		%feature("autodoc", "1");
		Quantity_Length Convert(const Standard_Integer V) const;
		%feature("autodoc", "1");
		void Convert(const Standard_Integer X, const Standard_Integer Y, Quantity_Length & ViewX, Quantity_Length & ViewY) const;
		%feature("autodoc", "1");
		void Convert(const Quantity_Length ViewX, const Quantity_Length ViewY, Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		Quantity_Length Convert(const Quantity_Length aDriverSize) const;
		%feature("autodoc", "1");
		void Reset();
		%feature("autodoc", "1");
		void Previous();
		%feature("autodoc", "1");
		void DisableStorePrevious();
		%feature("autodoc", "1");
		void EnableStorePrevious();
		%feature("autodoc", "1");
		virtual		void Update() const;
		%feature("autodoc", "1");
		void UpdateNew() const;
		%feature("autodoc", "1");
		void RestoreArea(const Standard_Integer Xc, const Standard_Integer Yc, const Standard_Integer Width, const Standard_Integer Height) const;
		%feature("autodoc", "1");
		void Restore() const;
		%feature("autodoc", "1");
		void Dump() const;
		%feature("autodoc", "1");
		void Dump(const char * aFileName) const;
		%feature("autodoc", "1");
		Handle_Graphic2d_DisplayList Pick(const Standard_Integer X, const Standard_Integer Y, const Standard_Integer aPrecision);
		%feature("autodoc", "1");
		Handle_Graphic2d_DisplayList PickByCircle(const Standard_Integer X, const Standard_Integer Y, const Standard_Integer Radius);
		%feature("autodoc", "1");
		Handle_Graphic2d_DisplayList Pick(const Standard_Integer Xmin, const Standard_Integer Ymin, const Standard_Integer Xmax, const Standard_Integer Ymax, const Graphic2d_PickMode aPickMode=Graphic2d_PM_INCLUDE);
		%feature("autodoc", "1");
		void Erase();
		%feature("autodoc", "1");
		void MustBeResized(const V2d_TypeOfWindowResizingEffect anEffect);
		%feature("autodoc", "1");
		void HasBeenMoved();
		%feature("autodoc", "1");
		void Plot(const Handle_PlotMgt_PlotterDriver &aPlotterDriver, const Quantity_Length aXCenter, const Quantity_Length aYCenter, const Quantity_Factor aScale=1.0e+0) const;
		%feature("autodoc", "1");
		void Plot(const Handle_PlotMgt_PlotterDriver &aPlotterDriver, const Quantity_Factor aScale=1.0e+0) const;
		%feature("autodoc", "1");
		void PlotScreen(const Handle_PlotMgt_PlotterDriver &aPlotterDriver) const;
		%feature("autodoc", "1");
		void ScreenCopy(const Handle_PlotMgt_PlotterDriver &aPlotterDriver, const Standard_Boolean fWhiteBackground=1, const Quantity_Factor aScale=1.0e+0);
		%feature("autodoc", "1");
		void PostScriptOutput(const char * aFile, const Quantity_Length aWidth, const Quantity_Length aHeight, const Quantity_Length aXCenter, const Quantity_Length aYCenter, const Quantity_Factor aScale, const Aspect_TypeOfColorSpace aTypeOfColorSpace) const;
		%feature("autodoc", "1");
		void ScreenPostScriptOutput(const char * aFile, const Quantity_Length aWidth, const Quantity_Length aHeight, const Aspect_TypeOfColorSpace aTypeOfColorSpace) const;
		%feature("autodoc", "1");
		void Hit(const Standard_Integer X, const Standard_Integer Y, Quantity_Length & gx, Quantity_Length & gy) const;
		%feature("autodoc", "1");
		void ShowHit(const Standard_Integer X, const Standard_Integer Y);
		%feature("autodoc", "1");
		void EraseHit();
		%feature("autodoc", "1");
		void SetDefaultHighlightColor(const Standard_Integer aColorIndex);
		%feature("autodoc", "1");
		void SetDeflection(const Quantity_Length aDeflection);
		%feature("autodoc", "1");
		Quantity_Length Deflection() const;
		%feature("autodoc", "1");
		Handle_Graphic2d_View View() const;
		%feature("autodoc", "1");
		Handle_V2d_Viewer Viewer() const;
		%feature("autodoc", "1");
		Handle_Aspect_WindowDriver Driver() const;
		%feature("autodoc", "1");
		Quantity_Factor Zoom() const;
		%feature("autodoc", "1");
		void Center(Quantity_Length & aX, Quantity_Length & aY) const;
		%feature("autodoc", "1");
		Quantity_Length Size() const;
		%feature("autodoc", "1");
		Quantity_NameOfColor Color() const;
		%feature("autodoc", "1");
		void Color(Quantity_Color & color) const;
		%feature("autodoc", "1");
		void Scroll(Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue);
		%feature("autodoc", "1");
		Standard_Integer DefaultHighlightColor() const;
		%feature("autodoc", "1");
		void Fit(const Standard_Integer aX1, const Standard_Integer aY1, const Standard_Integer aX2, const Standard_Integer aY2);
		%feature("autodoc", "1");
		void SetBackground(const Quantity_NameOfColor aNameColor);
		%feature("autodoc", "1");
		void SetBackground(const Quantity_Color &color);
		%feature("autodoc", "1");
		Standard_Boolean SetBackground(const char * aNameFile, const Aspect_FillMethod aMethod=Aspect_FM_CENTERED);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend V2d_View {
	Handle_V2d_View GetHandle() {
	return *(Handle_V2d_View*) &$self;
	}
};
%extend V2d_View {
	~V2d_View() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of V2d_View\n");}
	}
};

%nodefaultctor V2d_DefaultMap;
class V2d_DefaultMap {
	public:
		%feature("autodoc", "1");
		V2d_DefaultMap();
		%feature("autodoc", "1");
		Handle_Aspect_GenericColorMap ColorMap();
		%feature("autodoc", "1");
		Handle_Aspect_TypeMap TypeMap();
		%feature("autodoc", "1");
		Handle_Aspect_WidthMap WidthMap();
		%feature("autodoc", "1");
		Handle_Aspect_FontMap FontMap();
		%feature("autodoc", "1");
		Handle_Aspect_MarkMap MarkMap();

};
%extend V2d_DefaultMap {
	~V2d_DefaultMap() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of V2d_DefaultMap\n");}
	}
};

%nodefaultctor V2d_Viewer;
class V2d_Viewer : public Viewer_Viewer {
	public:
		%feature("autodoc", "1");
		V2d_Viewer(const Handle_Aspect_GraphicDevice &aGraphicDevice, const Standard_ExtString aName, const char * aDomain="");
		%feature("autodoc", "1");
		V2d_Viewer(const Handle_Aspect_GraphicDevice &aGraphicDevice, const Handle_Graphic2d_View &aView, const Standard_ExtString aName, const char * aDomain="");
		%feature("autodoc", "1");
		void AddView(const Handle_V2d_View &aView);
		%feature("autodoc", "1");
		void RemoveView(const Handle_V2d_View &aView);
		%feature("autodoc", "1");
		virtual		void Update();
		%feature("autodoc", "1");
		void UpdateNew();
		%feature("autodoc", "1");
		void SetColorMap(const Handle_Aspect_ColorMap &aColorMap);
		%feature("autodoc", "1");
		void SetTypeMap(const Handle_Aspect_TypeMap &aTypeMap);
		%feature("autodoc", "1");
		void SetWidthMap(const Handle_Aspect_WidthMap &aWidthMap);
		%feature("autodoc", "1");
		void SetFontMap(const Handle_Aspect_FontMap &aFontMap, const Standard_Boolean useMFT=1);
		%feature("autodoc", "1");
		void SetMarkMap(const Handle_Aspect_MarkMap &aMarkMap);
		%feature("autodoc", "1");
		Handle_Aspect_ColorMap ColorMap() const;
		%feature("autodoc", "1");
		Handle_Aspect_TypeMap TypeMap() const;
		%feature("autodoc", "1");
		Handle_Aspect_WidthMap WidthMap() const;
		%feature("autodoc", "1");
		Handle_Aspect_FontMap FontMap() const;
		%feature("autodoc", "1");
		Handle_Aspect_MarkMap MarkMap() const;
		%feature("autodoc", "1");
		Standard_Boolean UseMFT() const;
		%feature("autodoc", "1");
		Handle_Graphic2d_View View() const;
		%feature("autodoc", "1");
		Standard_Integer InitializeColor(const Quantity_NameOfColor aColor);
		%feature("autodoc", "1");
		void InitActiveViews();
		%feature("autodoc", "1");
		Standard_Boolean MoreActiveViews() const;
		%feature("autodoc", "1");
		void NextActiveViews();
		%feature("autodoc", "1");
		Handle_V2d_View ActiveView() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Aspect_GridType GridType() const;
		%feature("autodoc", "1");
		void Hit(const Quantity_Length X, const Quantity_Length Y, Quantity_Length & gx, Quantity_Length & gy) const;
		%feature("autodoc", "1");
		void ActivateGrid(const Aspect_GridType aGridType, const Aspect_GridDrawMode aGridDrawMode);
		%feature("autodoc", "1");
		void DeactivateGrid();
		%feature("autodoc", "1");
		Standard_Boolean IsActive() const;
		%feature("autodoc", "1");
		void RectangularGridValues(Quantity_Length & XOrigin, Quantity_Length & YOrigin, Quantity_Length & XStep, Quantity_Length & YStep, Quantity_PlaneAngle & RotationAngle) const;
		%feature("autodoc", "1");
		void SetRectangularGridValues(const Quantity_Length XOrigin, const Quantity_Length YOrigin, const Quantity_Length XStep, const Quantity_Length YStep, const Quantity_PlaneAngle RotationAngle);
		%feature("autodoc", "1");
		void CircularGridValues(Quantity_Length & XOrigin, Quantity_Length & YOrigin, Quantity_Length & RadiusStep, Standard_Integer &OutValue, Quantity_PlaneAngle & RotationAngle) const;
		%feature("autodoc", "1");
		void SetCircularGridValues(const Quantity_Length XOrigin, const Quantity_Length YOrigin, const Quantity_Length RadiusStep, const Standard_Integer DivisionNumber, const Quantity_PlaneAngle RotationAngle);
		%feature("autodoc", "1");
		void SetGridColor(const Quantity_Color &color1, const Quantity_Color &color2);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend V2d_Viewer {
	Handle_V2d_Viewer GetHandle() {
	return *(Handle_V2d_Viewer*) &$self;
	}
};
%extend V2d_Viewer {
	~V2d_Viewer() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of V2d_Viewer\n");}
	}
};