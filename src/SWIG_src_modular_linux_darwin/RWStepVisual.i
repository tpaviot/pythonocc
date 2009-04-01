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
%module RWStepVisual

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


%include RWStepVisual_dependencies.i


%include RWStepVisual_headers.i




%nodefaultctor RWStepVisual_RWPresentationLayerUsage;
class RWStepVisual_RWPresentationLayerUsage {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWPresentationLayerUsage();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_PresentationLayerUsage &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_PresentationLayerUsage &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_PresentationLayerUsage &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepVisual_RWPresentationLayerUsage {
	~RWStepVisual_RWPresentationLayerUsage() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepVisual_RWPresentationLayerUsage\n");}
	}
};

%nodefaultctor RWStepVisual_RWAreaInSet;
class RWStepVisual_RWAreaInSet {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWAreaInSet();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_AreaInSet &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_AreaInSet &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_AreaInSet &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepVisual_RWAreaInSet {
	~RWStepVisual_RWAreaInSet() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepVisual_RWAreaInSet\n");}
	}
};

%nodefaultctor RWStepVisual_RWPreDefinedItem;
class RWStepVisual_RWPreDefinedItem {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWPreDefinedItem();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_PreDefinedItem &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_PreDefinedItem &ent) const;

};
%extend RWStepVisual_RWPreDefinedItem {
	~RWStepVisual_RWPreDefinedItem() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepVisual_RWPreDefinedItem\n");}
	}
};

%nodefaultctor RWStepVisual_RWCompositeTextWithExtent;
class RWStepVisual_RWCompositeTextWithExtent {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWCompositeTextWithExtent();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_CompositeTextWithExtent &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_CompositeTextWithExtent &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_CompositeTextWithExtent &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepVisual_RWCompositeTextWithExtent {
	~RWStepVisual_RWCompositeTextWithExtent() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepVisual_RWCompositeTextWithExtent\n");}
	}
};

%nodefaultctor RWStepVisual_RWCurveStyleFontPattern;
class RWStepVisual_RWCurveStyleFontPattern {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWCurveStyleFontPattern();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_CurveStyleFontPattern &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_CurveStyleFontPattern &ent) const;

};
%extend RWStepVisual_RWCurveStyleFontPattern {
	~RWStepVisual_RWCurveStyleFontPattern() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepVisual_RWCurveStyleFontPattern\n");}
	}
};

%nodefaultctor RWStepVisual_RWBackgroundColour;
class RWStepVisual_RWBackgroundColour {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWBackgroundColour();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_BackgroundColour &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_BackgroundColour &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_BackgroundColour &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepVisual_RWBackgroundColour {
	~RWStepVisual_RWBackgroundColour() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepVisual_RWBackgroundColour\n");}
	}
};

%nodefaultctor RWStepVisual_RWContextDependentInvisibility;
class RWStepVisual_RWContextDependentInvisibility {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWContextDependentInvisibility();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_ContextDependentInvisibility &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_ContextDependentInvisibility &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_ContextDependentInvisibility &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepVisual_RWContextDependentInvisibility {
	~RWStepVisual_RWContextDependentInvisibility() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepVisual_RWContextDependentInvisibility\n");}
	}
};

%nodefaultctor RWStepVisual_RWFillAreaStyle;
class RWStepVisual_RWFillAreaStyle {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWFillAreaStyle();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_FillAreaStyle &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_FillAreaStyle &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_FillAreaStyle &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepVisual_RWFillAreaStyle {
	~RWStepVisual_RWFillAreaStyle() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepVisual_RWFillAreaStyle\n");}
	}
};

%nodefaultctor RWStepVisual_RWCameraModelD2;
class RWStepVisual_RWCameraModelD2 {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWCameraModelD2();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_CameraModelD2 &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_CameraModelD2 &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_CameraModelD2 &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepVisual_RWCameraModelD2 {
	~RWStepVisual_RWCameraModelD2() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepVisual_RWCameraModelD2\n");}
	}
};

%nodefaultctor RWStepVisual_RWTextStyleWithBoxCharacteristics;
class RWStepVisual_RWTextStyleWithBoxCharacteristics {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWTextStyleWithBoxCharacteristics();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_TextStyleWithBoxCharacteristics &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_TextStyleWithBoxCharacteristics &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_TextStyleWithBoxCharacteristics &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepVisual_RWTextStyleWithBoxCharacteristics {
	~RWStepVisual_RWTextStyleWithBoxCharacteristics() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepVisual_RWTextStyleWithBoxCharacteristics\n");}
	}
};

%nodefaultctor RWStepVisual_RWDraughtingModel;
class RWStepVisual_RWDraughtingModel {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWDraughtingModel();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_DraughtingModel &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_DraughtingModel &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_DraughtingModel &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepVisual_RWDraughtingModel {
	~RWStepVisual_RWDraughtingModel() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepVisual_RWDraughtingModel\n");}
	}
};

%nodefaultctor RWStepVisual_RWPresentedItemRepresentation;
class RWStepVisual_RWPresentedItemRepresentation {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWPresentedItemRepresentation();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_PresentedItemRepresentation &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_PresentedItemRepresentation &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_PresentedItemRepresentation &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepVisual_RWPresentedItemRepresentation {
	~RWStepVisual_RWPresentedItemRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepVisual_RWPresentedItemRepresentation\n");}
	}
};

%nodefaultctor RWStepVisual_RWSurfaceStyleUsage;
class RWStepVisual_RWSurfaceStyleUsage {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWSurfaceStyleUsage();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_SurfaceStyleUsage &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_SurfaceStyleUsage &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_SurfaceStyleUsage &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepVisual_RWSurfaceStyleUsage {
	~RWStepVisual_RWSurfaceStyleUsage() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepVisual_RWSurfaceStyleUsage\n");}
	}
};

%nodefaultctor RWStepVisual_RWPreDefinedColour;
class RWStepVisual_RWPreDefinedColour {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWPreDefinedColour();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_PreDefinedColour &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_PreDefinedColour &ent) const;

};
%extend RWStepVisual_RWPreDefinedColour {
	~RWStepVisual_RWPreDefinedColour() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepVisual_RWPreDefinedColour\n");}
	}
};

%nodefaultctor RWStepVisual_RWColourSpecification;
class RWStepVisual_RWColourSpecification {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWColourSpecification();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_ColourSpecification &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_ColourSpecification &ent) const;

};
%extend RWStepVisual_RWColourSpecification {
	~RWStepVisual_RWColourSpecification() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepVisual_RWColourSpecification\n");}
	}
};

%nodefaultctor RWStepVisual_RWPreDefinedCurveFont;
class RWStepVisual_RWPreDefinedCurveFont {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWPreDefinedCurveFont();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_PreDefinedCurveFont &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_PreDefinedCurveFont &ent) const;

};
%extend RWStepVisual_RWPreDefinedCurveFont {
	~RWStepVisual_RWPreDefinedCurveFont() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepVisual_RWPreDefinedCurveFont\n");}
	}
};

%nodefaultctor RWStepVisual_RWSurfaceStyleControlGrid;
class RWStepVisual_RWSurfaceStyleControlGrid {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWSurfaceStyleControlGrid();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_SurfaceStyleControlGrid &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_SurfaceStyleControlGrid &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_SurfaceStyleControlGrid &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepVisual_RWSurfaceStyleControlGrid {
	~RWStepVisual_RWSurfaceStyleControlGrid() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepVisual_RWSurfaceStyleControlGrid\n");}
	}
};

%nodefaultctor RWStepVisual_RWMechanicalDesignGeometricPresentationArea;
class RWStepVisual_RWMechanicalDesignGeometricPresentationArea {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWMechanicalDesignGeometricPresentationArea();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_MechanicalDesignGeometricPresentationArea &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_MechanicalDesignGeometricPresentationArea &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_MechanicalDesignGeometricPresentationArea &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepVisual_RWMechanicalDesignGeometricPresentationArea {
	~RWStepVisual_RWMechanicalDesignGeometricPresentationArea() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepVisual_RWMechanicalDesignGeometricPresentationArea\n");}
	}
};

%nodefaultctor RWStepVisual_RWPresentationView;
class RWStepVisual_RWPresentationView {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWPresentationView();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_PresentationView &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_PresentationView &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_PresentationView &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepVisual_RWPresentationView {
	~RWStepVisual_RWPresentationView() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepVisual_RWPresentationView\n");}
	}
};

%nodefaultctor RWStepVisual_RWPresentationSize;
class RWStepVisual_RWPresentationSize {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWPresentationSize();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_PresentationSize &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_PresentationSize &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_PresentationSize &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepVisual_RWPresentationSize {
	~RWStepVisual_RWPresentationSize() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepVisual_RWPresentationSize\n");}
	}
};

%nodefaultctor RWStepVisual_RWPresentationStyleByContext;
class RWStepVisual_RWPresentationStyleByContext {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWPresentationStyleByContext();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_PresentationStyleByContext &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_PresentationStyleByContext &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_PresentationStyleByContext &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepVisual_RWPresentationStyleByContext {
	~RWStepVisual_RWPresentationStyleByContext() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepVisual_RWPresentationStyleByContext\n");}
	}
};

%nodefaultctor RWStepVisual_RWSurfaceStyleFillArea;
class RWStepVisual_RWSurfaceStyleFillArea {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWSurfaceStyleFillArea();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_SurfaceStyleFillArea &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_SurfaceStyleFillArea &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_SurfaceStyleFillArea &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepVisual_RWSurfaceStyleFillArea {
	~RWStepVisual_RWSurfaceStyleFillArea() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepVisual_RWSurfaceStyleFillArea\n");}
	}
};

%nodefaultctor RWStepVisual_RWPresentationSet;
class RWStepVisual_RWPresentationSet {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWPresentationSet();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_PresentationSet &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_PresentationSet &ent) const;

};
%extend RWStepVisual_RWPresentationSet {
	~RWStepVisual_RWPresentationSet() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepVisual_RWPresentationSet\n");}
	}
};

%nodefaultctor RWStepVisual_RWSurfaceStyleSegmentationCurve;
class RWStepVisual_RWSurfaceStyleSegmentationCurve {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWSurfaceStyleSegmentationCurve();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_SurfaceStyleSegmentationCurve &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_SurfaceStyleSegmentationCurve &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_SurfaceStyleSegmentationCurve &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepVisual_RWSurfaceStyleSegmentationCurve {
	~RWStepVisual_RWSurfaceStyleSegmentationCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepVisual_RWSurfaceStyleSegmentationCurve\n");}
	}
};

%nodefaultctor RWStepVisual_RWCurveStyle;
class RWStepVisual_RWCurveStyle {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWCurveStyle();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_CurveStyle &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_CurveStyle &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_CurveStyle &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepVisual_RWCurveStyle {
	~RWStepVisual_RWCurveStyle() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepVisual_RWCurveStyle\n");}
	}
};

%nodefaultctor RWStepVisual_RWPresentationArea;
class RWStepVisual_RWPresentationArea {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWPresentationArea();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_PresentationArea &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_PresentationArea &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_PresentationArea &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepVisual_RWPresentationArea {
	~RWStepVisual_RWPresentationArea() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepVisual_RWPresentationArea\n");}
	}
};

%nodefaultctor RWStepVisual_RWOverRidingStyledItem;
class RWStepVisual_RWOverRidingStyledItem {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWOverRidingStyledItem();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_OverRidingStyledItem &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_OverRidingStyledItem &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_OverRidingStyledItem &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepVisual_RWOverRidingStyledItem {
	~RWStepVisual_RWOverRidingStyledItem() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepVisual_RWOverRidingStyledItem\n");}
	}
};

%nodefaultctor RWStepVisual_RWSurfaceSideStyle;
class RWStepVisual_RWSurfaceSideStyle {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWSurfaceSideStyle();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_SurfaceSideStyle &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_SurfaceSideStyle &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_SurfaceSideStyle &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepVisual_RWSurfaceSideStyle {
	~RWStepVisual_RWSurfaceSideStyle() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepVisual_RWSurfaceSideStyle\n");}
	}
};

%nodefaultctor RWStepVisual_RWCompositeText;
class RWStepVisual_RWCompositeText {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWCompositeText();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_CompositeText &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_CompositeText &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_CompositeText &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepVisual_RWCompositeText {
	~RWStepVisual_RWCompositeText() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepVisual_RWCompositeText\n");}
	}
};

%nodefaultctor RWStepVisual_RWSurfaceStyleParameterLine;
class RWStepVisual_RWSurfaceStyleParameterLine {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWSurfaceStyleParameterLine();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_SurfaceStyleParameterLine &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_SurfaceStyleParameterLine &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_SurfaceStyleParameterLine &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepVisual_RWSurfaceStyleParameterLine {
	~RWStepVisual_RWSurfaceStyleParameterLine() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepVisual_RWSurfaceStyleParameterLine\n");}
	}
};

%nodefaultctor RWStepVisual_RWTextStyle;
class RWStepVisual_RWTextStyle {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWTextStyle();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_TextStyle &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_TextStyle &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_TextStyle &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepVisual_RWTextStyle {
	~RWStepVisual_RWTextStyle() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepVisual_RWTextStyle\n");}
	}
};

%nodefaultctor RWStepVisual_RWCameraUsage;
class RWStepVisual_RWCameraUsage {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWCameraUsage();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_CameraUsage &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_CameraUsage &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_CameraUsage &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepVisual_RWCameraUsage {
	~RWStepVisual_RWCameraUsage() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepVisual_RWCameraUsage\n");}
	}
};

%nodefaultctor RWStepVisual_RWExternallyDefinedCurveFont;
class RWStepVisual_RWExternallyDefinedCurveFont {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWExternallyDefinedCurveFont();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_ExternallyDefinedCurveFont &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_ExternallyDefinedCurveFont &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_ExternallyDefinedCurveFont &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepVisual_RWExternallyDefinedCurveFont {
	~RWStepVisual_RWExternallyDefinedCurveFont() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepVisual_RWExternallyDefinedCurveFont\n");}
	}
};

%nodefaultctor RWStepVisual_RWPresentationLayerAssignment;
class RWStepVisual_RWPresentationLayerAssignment {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWPresentationLayerAssignment();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_PresentationLayerAssignment &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_PresentationLayerAssignment &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_PresentationLayerAssignment &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepVisual_RWPresentationLayerAssignment {
	~RWStepVisual_RWPresentationLayerAssignment() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepVisual_RWPresentationLayerAssignment\n");}
	}
};

%nodefaultctor RWStepVisual_RWPlanarExtent;
class RWStepVisual_RWPlanarExtent {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWPlanarExtent();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_PlanarExtent &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_PlanarExtent &ent) const;

};
%extend RWStepVisual_RWPlanarExtent {
	~RWStepVisual_RWPlanarExtent() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepVisual_RWPlanarExtent\n");}
	}
};

%nodefaultctor RWStepVisual_RWInvisibility;
class RWStepVisual_RWInvisibility {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWInvisibility();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_Invisibility &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_Invisibility &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_Invisibility &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepVisual_RWInvisibility {
	~RWStepVisual_RWInvisibility() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepVisual_RWInvisibility\n");}
	}
};

%nodefaultctor RWStepVisual_RWStyledItem;
class RWStepVisual_RWStyledItem {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWStyledItem();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_StyledItem &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_StyledItem &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_StyledItem &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepVisual_RWStyledItem {
	~RWStepVisual_RWStyledItem() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepVisual_RWStyledItem\n");}
	}
};

%nodefaultctor RWStepVisual_RWPlanarBox;
class RWStepVisual_RWPlanarBox {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWPlanarBox();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_PlanarBox &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_PlanarBox &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_PlanarBox &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepVisual_RWPlanarBox {
	~RWStepVisual_RWPlanarBox() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepVisual_RWPlanarBox\n");}
	}
};

%nodefaultctor RWStepVisual_RWSurfaceStyleBoundary;
class RWStepVisual_RWSurfaceStyleBoundary {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWSurfaceStyleBoundary();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_SurfaceStyleBoundary &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_SurfaceStyleBoundary &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_SurfaceStyleBoundary &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepVisual_RWSurfaceStyleBoundary {
	~RWStepVisual_RWSurfaceStyleBoundary() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepVisual_RWSurfaceStyleBoundary\n");}
	}
};

%nodefaultctor RWStepVisual_RWContextDependentOverRidingStyledItem;
class RWStepVisual_RWContextDependentOverRidingStyledItem {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWContextDependentOverRidingStyledItem();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_ContextDependentOverRidingStyledItem &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_ContextDependentOverRidingStyledItem &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_ContextDependentOverRidingStyledItem &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepVisual_RWContextDependentOverRidingStyledItem {
	~RWStepVisual_RWContextDependentOverRidingStyledItem() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepVisual_RWContextDependentOverRidingStyledItem\n");}
	}
};

%nodefaultctor RWStepVisual_RWCameraImage;
class RWStepVisual_RWCameraImage {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWCameraImage();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_CameraImage &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_CameraImage &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_CameraImage &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepVisual_RWCameraImage {
	~RWStepVisual_RWCameraImage() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepVisual_RWCameraImage\n");}
	}
};

%nodefaultctor RWStepVisual_RWFillAreaStyleColour;
class RWStepVisual_RWFillAreaStyleColour {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWFillAreaStyleColour();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_FillAreaStyleColour &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_FillAreaStyleColour &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_FillAreaStyleColour &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepVisual_RWFillAreaStyleColour {
	~RWStepVisual_RWFillAreaStyleColour() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepVisual_RWFillAreaStyleColour\n");}
	}
};

%nodefaultctor RWStepVisual_RWTemplateInstance;
class RWStepVisual_RWTemplateInstance {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWTemplateInstance();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_TemplateInstance &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_TemplateInstance &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_TemplateInstance &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepVisual_RWTemplateInstance {
	~RWStepVisual_RWTemplateInstance() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepVisual_RWTemplateInstance\n");}
	}
};

%nodefaultctor RWStepVisual_RWTextLiteral;
class RWStepVisual_RWTextLiteral {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWTextLiteral();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_TextLiteral &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_TextLiteral &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_TextLiteral &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepVisual_RWTextLiteral {
	~RWStepVisual_RWTextLiteral() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepVisual_RWTextLiteral\n");}
	}
};

%nodefaultctor RWStepVisual_RWTemplate;
class RWStepVisual_RWTemplate {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWTemplate();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_Template &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_Template &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_Template &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepVisual_RWTemplate {
	~RWStepVisual_RWTemplate() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepVisual_RWTemplate\n");}
	}
};

%nodefaultctor RWStepVisual_RWViewVolume;
class RWStepVisual_RWViewVolume {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWViewVolume();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_ViewVolume &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_ViewVolume &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_ViewVolume &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepVisual_RWViewVolume {
	~RWStepVisual_RWViewVolume() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepVisual_RWViewVolume\n");}
	}
};

%nodefaultctor RWStepVisual_RWDraughtingPreDefinedCurveFont;
class RWStepVisual_RWDraughtingPreDefinedCurveFont {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWDraughtingPreDefinedCurveFont();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_DraughtingPreDefinedCurveFont &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_DraughtingPreDefinedCurveFont &ent) const;

};
%extend RWStepVisual_RWDraughtingPreDefinedCurveFont {
	~RWStepVisual_RWDraughtingPreDefinedCurveFont() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepVisual_RWDraughtingPreDefinedCurveFont\n");}
	}
};

%nodefaultctor RWStepVisual_RWPointStyle;
class RWStepVisual_RWPointStyle {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWPointStyle();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_PointStyle &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_PointStyle &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_PointStyle &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepVisual_RWPointStyle {
	~RWStepVisual_RWPointStyle() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepVisual_RWPointStyle\n");}
	}
};

%nodefaultctor RWStepVisual_RWColourRgb;
class RWStepVisual_RWColourRgb {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWColourRgb();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_ColourRgb &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_ColourRgb &ent) const;

};
%extend RWStepVisual_RWColourRgb {
	~RWStepVisual_RWColourRgb() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepVisual_RWColourRgb\n");}
	}
};

%nodefaultctor RWStepVisual_RWCameraModel;
class RWStepVisual_RWCameraModel {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWCameraModel();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_CameraModel &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_CameraModel &ent) const;

};
%extend RWStepVisual_RWCameraModel {
	~RWStepVisual_RWCameraModel() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepVisual_RWCameraModel\n");}
	}
};

%nodefaultctor RWStepVisual_RWTextStyleForDefinedFont;
class RWStepVisual_RWTextStyleForDefinedFont {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWTextStyleForDefinedFont();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_TextStyleForDefinedFont &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_TextStyleForDefinedFont &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_TextStyleForDefinedFont &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepVisual_RWTextStyleForDefinedFont {
	~RWStepVisual_RWTextStyleForDefinedFont() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepVisual_RWTextStyleForDefinedFont\n");}
	}
};

%nodefaultctor RWStepVisual_RWColour;
class RWStepVisual_RWColour {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWColour();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_Colour &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_Colour &ent) const;

};
%extend RWStepVisual_RWColour {
	~RWStepVisual_RWColour() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepVisual_RWColour\n");}
	}
};

%nodefaultctor RWStepVisual_RWPresentationRepresentation;
class RWStepVisual_RWPresentationRepresentation {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWPresentationRepresentation();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_PresentationRepresentation &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_PresentationRepresentation &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_PresentationRepresentation &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepVisual_RWPresentationRepresentation {
	~RWStepVisual_RWPresentationRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepVisual_RWPresentationRepresentation\n");}
	}
};

%nodefaultctor RWStepVisual_RWCurveStyleFont;
class RWStepVisual_RWCurveStyleFont {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWCurveStyleFont();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_CurveStyleFont &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_CurveStyleFont &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_CurveStyleFont &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepVisual_RWCurveStyleFont {
	~RWStepVisual_RWCurveStyleFont() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepVisual_RWCurveStyleFont\n");}
	}
};

%nodefaultctor RWStepVisual_RWMechanicalDesignGeometricPresentationRepresentation;
class RWStepVisual_RWMechanicalDesignGeometricPresentationRepresentation {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWMechanicalDesignGeometricPresentationRepresentation();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_MechanicalDesignGeometricPresentationRepresentation &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_MechanicalDesignGeometricPresentationRepresentation &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_MechanicalDesignGeometricPresentationRepresentation &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepVisual_RWMechanicalDesignGeometricPresentationRepresentation {
	~RWStepVisual_RWMechanicalDesignGeometricPresentationRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepVisual_RWMechanicalDesignGeometricPresentationRepresentation\n");}
	}
};

%nodefaultctor RWStepVisual_RWSurfaceStyleSilhouette;
class RWStepVisual_RWSurfaceStyleSilhouette {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWSurfaceStyleSilhouette();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_SurfaceStyleSilhouette &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_SurfaceStyleSilhouette &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_SurfaceStyleSilhouette &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepVisual_RWSurfaceStyleSilhouette {
	~RWStepVisual_RWSurfaceStyleSilhouette() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepVisual_RWSurfaceStyleSilhouette\n");}
	}
};

%nodefaultctor RWStepVisual_RWPresentationStyleAssignment;
class RWStepVisual_RWPresentationStyleAssignment {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWPresentationStyleAssignment();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_PresentationStyleAssignment &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_PresentationStyleAssignment &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_PresentationStyleAssignment &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepVisual_RWPresentationStyleAssignment {
	~RWStepVisual_RWPresentationStyleAssignment() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepVisual_RWPresentationStyleAssignment\n");}
	}
};

%nodefaultctor RWStepVisual_RWCameraModelD3;
class RWStepVisual_RWCameraModelD3 {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWCameraModelD3();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_CameraModelD3 &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_CameraModelD3 &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_CameraModelD3 &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepVisual_RWCameraModelD3 {
	~RWStepVisual_RWCameraModelD3() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepVisual_RWCameraModelD3\n");}
	}
};

%nodefaultctor RWStepVisual_RWDraughtingPreDefinedColour;
class RWStepVisual_RWDraughtingPreDefinedColour {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWDraughtingPreDefinedColour();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_DraughtingPreDefinedColour &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_DraughtingPreDefinedColour &ent) const;

};
%extend RWStepVisual_RWDraughtingPreDefinedColour {
	~RWStepVisual_RWDraughtingPreDefinedColour() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepVisual_RWDraughtingPreDefinedColour\n");}
	}
};