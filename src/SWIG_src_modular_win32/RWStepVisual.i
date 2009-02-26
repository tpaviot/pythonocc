/*
##Copyright 2008-2009 Thomas Paviot
##
##thomas.paviot@free.fr
##
##pythonOCC is a computer program whose purpose is to provide a complete set
##of python bindings for OpenCascade library.
##
##This software is governed by the CeCILL license under French law and
##abiding by the rules of distribution of free software.  You can  use, 
##modify and/ or redistribute the software under the terms of the CeCILL
##license as circulated by CEA, CNRS and INRIA at the following URL
##"http://www.cecill.info". 
##
##As a counterpart to the access to the source code and  rights to copy,
##modify and redistribute granted by the license, users are provided only
##with a limited warranty  and the software's author,  the holder of the
##economic rights,  and the successive licensors  have only  limited
##liability. 
##
##In this respect, the user's attention is drawn to the risks associated
##with loading,  using,  modifying and/or developing or reproducing the
##software by the user in light of its specific status of free software,
##that may mean  that it is complicated to manipulate,  and  that  also
##therefore means  that it is reserved for developers  and  experienced
##professionals having in-depth computer knowledge. Users are therefore
##encouraged to load and test the software's suitability as regards their
##requirements in conditions enabling the security of their systems and/or 
##data to be ensured and,  more generally, to use and operate it in the 
##same conditions as regards security. 
##
##The fact that you are presently reading this means that you have had
##knowledge of the CeCILL license and that you accept its terms.
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


%include RWStepVisual_dependencies.i


%include RWStepVisual_headers.i




%nodefaultctor RWStepVisual_RWAreaInSet;
class RWStepVisual_RWAreaInSet {
	public:
		%feature("autodoc", "1");
		~RWStepVisual_RWAreaInSet();
		%feature("autodoc", "1");
		RWStepVisual_RWAreaInSet();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_AreaInSet &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_AreaInSet &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_AreaInSet &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepVisual_RWCompositeTextWithExtent;
class RWStepVisual_RWCompositeTextWithExtent {
	public:
		%feature("autodoc", "1");
		~RWStepVisual_RWCompositeTextWithExtent();
		%feature("autodoc", "1");
		RWStepVisual_RWCompositeTextWithExtent();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_CompositeTextWithExtent &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_CompositeTextWithExtent &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_CompositeTextWithExtent &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepVisual_RWCurveStyleFontPattern;
class RWStepVisual_RWCurveStyleFontPattern {
	public:
		%feature("autodoc", "1");
		~RWStepVisual_RWCurveStyleFontPattern();
		%feature("autodoc", "1");
		RWStepVisual_RWCurveStyleFontPattern();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_CurveStyleFontPattern &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_CurveStyleFontPattern &ent) const;

};

%nodefaultctor RWStepVisual_RWBackgroundColour;
class RWStepVisual_RWBackgroundColour {
	public:
		%feature("autodoc", "1");
		~RWStepVisual_RWBackgroundColour();
		%feature("autodoc", "1");
		RWStepVisual_RWBackgroundColour();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_BackgroundColour &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_BackgroundColour &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_BackgroundColour &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepVisual_RWFillAreaStyle;
class RWStepVisual_RWFillAreaStyle {
	public:
		%feature("autodoc", "1");
		~RWStepVisual_RWFillAreaStyle();
		%feature("autodoc", "1");
		RWStepVisual_RWFillAreaStyle();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_FillAreaStyle &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_FillAreaStyle &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_FillAreaStyle &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepVisual_RWTemplate;
class RWStepVisual_RWTemplate {
	public:
		%feature("autodoc", "1");
		~RWStepVisual_RWTemplate();
		%feature("autodoc", "1");
		RWStepVisual_RWTemplate();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_Template &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_Template &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_Template &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepVisual_RWSurfaceStyleSilhouette;
class RWStepVisual_RWSurfaceStyleSilhouette {
	public:
		%feature("autodoc", "1");
		~RWStepVisual_RWSurfaceStyleSilhouette();
		%feature("autodoc", "1");
		RWStepVisual_RWSurfaceStyleSilhouette();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_SurfaceStyleSilhouette &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_SurfaceStyleSilhouette &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_SurfaceStyleSilhouette &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepVisual_RWTextStyleWithBoxCharacteristics;
class RWStepVisual_RWTextStyleWithBoxCharacteristics {
	public:
		%feature("autodoc", "1");
		~RWStepVisual_RWTextStyleWithBoxCharacteristics();
		%feature("autodoc", "1");
		RWStepVisual_RWTextStyleWithBoxCharacteristics();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_TextStyleWithBoxCharacteristics &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_TextStyleWithBoxCharacteristics &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_TextStyleWithBoxCharacteristics &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepVisual_RWSurfaceStyleSegmentationCurve;
class RWStepVisual_RWSurfaceStyleSegmentationCurve {
	public:
		%feature("autodoc", "1");
		~RWStepVisual_RWSurfaceStyleSegmentationCurve();
		%feature("autodoc", "1");
		RWStepVisual_RWSurfaceStyleSegmentationCurve();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_SurfaceStyleSegmentationCurve &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_SurfaceStyleSegmentationCurve &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_SurfaceStyleSegmentationCurve &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepVisual_RWMechanicalDesignGeometricPresentationRepresentation;
class RWStepVisual_RWMechanicalDesignGeometricPresentationRepresentation {
	public:
		%feature("autodoc", "1");
		~RWStepVisual_RWMechanicalDesignGeometricPresentationRepresentation();
		%feature("autodoc", "1");
		RWStepVisual_RWMechanicalDesignGeometricPresentationRepresentation();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_MechanicalDesignGeometricPresentationRepresentation &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_MechanicalDesignGeometricPresentationRepresentation &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_MechanicalDesignGeometricPresentationRepresentation &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepVisual_RWPresentedItemRepresentation;
class RWStepVisual_RWPresentedItemRepresentation {
	public:
		%feature("autodoc", "1");
		~RWStepVisual_RWPresentedItemRepresentation();
		%feature("autodoc", "1");
		RWStepVisual_RWPresentedItemRepresentation();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_PresentedItemRepresentation &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_PresentedItemRepresentation &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_PresentedItemRepresentation &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepVisual_RWSurfaceStyleUsage;
class RWStepVisual_RWSurfaceStyleUsage {
	public:
		%feature("autodoc", "1");
		~RWStepVisual_RWSurfaceStyleUsage();
		%feature("autodoc", "1");
		RWStepVisual_RWSurfaceStyleUsage();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_SurfaceStyleUsage &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_SurfaceStyleUsage &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_SurfaceStyleUsage &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepVisual_RWPreDefinedColour;
class RWStepVisual_RWPreDefinedColour {
	public:
		%feature("autodoc", "1");
		~RWStepVisual_RWPreDefinedColour();
		%feature("autodoc", "1");
		RWStepVisual_RWPreDefinedColour();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_PreDefinedColour &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_PreDefinedColour &ent) const;

};

%nodefaultctor RWStepVisual_RWContextDependentInvisibility;
class RWStepVisual_RWContextDependentInvisibility {
	public:
		%feature("autodoc", "1");
		~RWStepVisual_RWContextDependentInvisibility();
		%feature("autodoc", "1");
		RWStepVisual_RWContextDependentInvisibility();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_ContextDependentInvisibility &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_ContextDependentInvisibility &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_ContextDependentInvisibility &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepVisual_RWPreDefinedCurveFont;
class RWStepVisual_RWPreDefinedCurveFont {
	public:
		%feature("autodoc", "1");
		~RWStepVisual_RWPreDefinedCurveFont();
		%feature("autodoc", "1");
		RWStepVisual_RWPreDefinedCurveFont();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_PreDefinedCurveFont &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_PreDefinedCurveFont &ent) const;

};

%nodefaultctor RWStepVisual_RWMechanicalDesignGeometricPresentationArea;
class RWStepVisual_RWMechanicalDesignGeometricPresentationArea {
	public:
		%feature("autodoc", "1");
		~RWStepVisual_RWMechanicalDesignGeometricPresentationArea();
		%feature("autodoc", "1");
		RWStepVisual_RWMechanicalDesignGeometricPresentationArea();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_MechanicalDesignGeometricPresentationArea &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_MechanicalDesignGeometricPresentationArea &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_MechanicalDesignGeometricPresentationArea &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepVisual_RWPresentationArea;
class RWStepVisual_RWPresentationArea {
	public:
		%feature("autodoc", "1");
		~RWStepVisual_RWPresentationArea();
		%feature("autodoc", "1");
		RWStepVisual_RWPresentationArea();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_PresentationArea &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_PresentationArea &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_PresentationArea &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepVisual_RWPresentationView;
class RWStepVisual_RWPresentationView {
	public:
		%feature("autodoc", "1");
		~RWStepVisual_RWPresentationView();
		%feature("autodoc", "1");
		RWStepVisual_RWPresentationView();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_PresentationView &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_PresentationView &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_PresentationView &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepVisual_RWPresentationSize;
class RWStepVisual_RWPresentationSize {
	public:
		%feature("autodoc", "1");
		~RWStepVisual_RWPresentationSize();
		%feature("autodoc", "1");
		RWStepVisual_RWPresentationSize();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_PresentationSize &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_PresentationSize &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_PresentationSize &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepVisual_RWPresentationStyleByContext;
class RWStepVisual_RWPresentationStyleByContext {
	public:
		%feature("autodoc", "1");
		~RWStepVisual_RWPresentationStyleByContext();
		%feature("autodoc", "1");
		RWStepVisual_RWPresentationStyleByContext();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_PresentationStyleByContext &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_PresentationStyleByContext &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_PresentationStyleByContext &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepVisual_RWColourRgb;
class RWStepVisual_RWColourRgb {
	public:
		%feature("autodoc", "1");
		~RWStepVisual_RWColourRgb();
		%feature("autodoc", "1");
		RWStepVisual_RWColourRgb();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_ColourRgb &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_ColourRgb &ent) const;

};

%nodefaultctor RWStepVisual_RWPresentationSet;
class RWStepVisual_RWPresentationSet {
	public:
		%feature("autodoc", "1");
		~RWStepVisual_RWPresentationSet();
		%feature("autodoc", "1");
		RWStepVisual_RWPresentationSet();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_PresentationSet &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_PresentationSet &ent) const;

};

%nodefaultctor RWStepVisual_RWOverRidingStyledItem;
class RWStepVisual_RWOverRidingStyledItem {
	public:
		%feature("autodoc", "1");
		~RWStepVisual_RWOverRidingStyledItem();
		%feature("autodoc", "1");
		RWStepVisual_RWOverRidingStyledItem();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_OverRidingStyledItem &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_OverRidingStyledItem &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_OverRidingStyledItem &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepVisual_RWSurfaceSideStyle;
class RWStepVisual_RWSurfaceSideStyle {
	public:
		%feature("autodoc", "1");
		~RWStepVisual_RWSurfaceSideStyle();
		%feature("autodoc", "1");
		RWStepVisual_RWSurfaceSideStyle();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_SurfaceSideStyle &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_SurfaceSideStyle &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_SurfaceSideStyle &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepVisual_RWTextStyle;
class RWStepVisual_RWTextStyle {
	public:
		%feature("autodoc", "1");
		~RWStepVisual_RWTextStyle();
		%feature("autodoc", "1");
		RWStepVisual_RWTextStyle();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_TextStyle &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_TextStyle &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_TextStyle &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepVisual_RWCameraImage;
class RWStepVisual_RWCameraImage {
	public:
		%feature("autodoc", "1");
		~RWStepVisual_RWCameraImage();
		%feature("autodoc", "1");
		RWStepVisual_RWCameraImage();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_CameraImage &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_CameraImage &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_CameraImage &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepVisual_RWPresentationLayerAssignment;
class RWStepVisual_RWPresentationLayerAssignment {
	public:
		%feature("autodoc", "1");
		~RWStepVisual_RWPresentationLayerAssignment();
		%feature("autodoc", "1");
		RWStepVisual_RWPresentationLayerAssignment();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_PresentationLayerAssignment &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_PresentationLayerAssignment &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_PresentationLayerAssignment &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepVisual_RWTextLiteral;
class RWStepVisual_RWTextLiteral {
	public:
		%feature("autodoc", "1");
		~RWStepVisual_RWTextLiteral();
		%feature("autodoc", "1");
		RWStepVisual_RWTextLiteral();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_TextLiteral &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_TextLiteral &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_TextLiteral &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepVisual_RWPlanarExtent;
class RWStepVisual_RWPlanarExtent {
	public:
		%feature("autodoc", "1");
		~RWStepVisual_RWPlanarExtent();
		%feature("autodoc", "1");
		RWStepVisual_RWPlanarExtent();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_PlanarExtent &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_PlanarExtent &ent) const;

};

%nodefaultctor RWStepVisual_RWSurfaceStyleControlGrid;
class RWStepVisual_RWSurfaceStyleControlGrid {
	public:
		%feature("autodoc", "1");
		~RWStepVisual_RWSurfaceStyleControlGrid();
		%feature("autodoc", "1");
		RWStepVisual_RWSurfaceStyleControlGrid();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_SurfaceStyleControlGrid &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_SurfaceStyleControlGrid &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_SurfaceStyleControlGrid &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepVisual_RWInvisibility;
class RWStepVisual_RWInvisibility {
	public:
		%feature("autodoc", "1");
		~RWStepVisual_RWInvisibility();
		%feature("autodoc", "1");
		RWStepVisual_RWInvisibility();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_Invisibility &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_Invisibility &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_Invisibility &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepVisual_RWSurfaceStyleBoundary;
class RWStepVisual_RWSurfaceStyleBoundary {
	public:
		%feature("autodoc", "1");
		~RWStepVisual_RWSurfaceStyleBoundary();
		%feature("autodoc", "1");
		RWStepVisual_RWSurfaceStyleBoundary();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_SurfaceStyleBoundary &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_SurfaceStyleBoundary &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_SurfaceStyleBoundary &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepVisual_RWPreDefinedItem;
class RWStepVisual_RWPreDefinedItem {
	public:
		%feature("autodoc", "1");
		~RWStepVisual_RWPreDefinedItem();
		%feature("autodoc", "1");
		RWStepVisual_RWPreDefinedItem();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_PreDefinedItem &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_PreDefinedItem &ent) const;

};

%nodefaultctor RWStepVisual_RWColourSpecification;
class RWStepVisual_RWColourSpecification {
	public:
		%feature("autodoc", "1");
		~RWStepVisual_RWColourSpecification();
		%feature("autodoc", "1");
		RWStepVisual_RWColourSpecification();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_ColourSpecification &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_ColourSpecification &ent) const;

};

%nodefaultctor RWStepVisual_RWFillAreaStyleColour;
class RWStepVisual_RWFillAreaStyleColour {
	public:
		%feature("autodoc", "1");
		~RWStepVisual_RWFillAreaStyleColour();
		%feature("autodoc", "1");
		RWStepVisual_RWFillAreaStyleColour();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_FillAreaStyleColour &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_FillAreaStyleColour &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_FillAreaStyleColour &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepVisual_RWTemplateInstance;
class RWStepVisual_RWTemplateInstance {
	public:
		%feature("autodoc", "1");
		~RWStepVisual_RWTemplateInstance();
		%feature("autodoc", "1");
		RWStepVisual_RWTemplateInstance();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_TemplateInstance &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_TemplateInstance &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_TemplateInstance &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepVisual_RWSurfaceStyleFillArea;
class RWStepVisual_RWSurfaceStyleFillArea {
	public:
		%feature("autodoc", "1");
		~RWStepVisual_RWSurfaceStyleFillArea();
		%feature("autodoc", "1");
		RWStepVisual_RWSurfaceStyleFillArea();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_SurfaceStyleFillArea &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_SurfaceStyleFillArea &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_SurfaceStyleFillArea &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepVisual_RWViewVolume;
class RWStepVisual_RWViewVolume {
	public:
		%feature("autodoc", "1");
		~RWStepVisual_RWViewVolume();
		%feature("autodoc", "1");
		RWStepVisual_RWViewVolume();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_ViewVolume &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_ViewVolume &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_ViewVolume &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepVisual_RWStyledItem;
class RWStepVisual_RWStyledItem {
	public:
		%feature("autodoc", "1");
		~RWStepVisual_RWStyledItem();
		%feature("autodoc", "1");
		RWStepVisual_RWStyledItem();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_StyledItem &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_StyledItem &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_StyledItem &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepVisual_RWCurveStyle;
class RWStepVisual_RWCurveStyle {
	public:
		%feature("autodoc", "1");
		~RWStepVisual_RWCurveStyle();
		%feature("autodoc", "1");
		RWStepVisual_RWCurveStyle();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_CurveStyle &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_CurveStyle &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_CurveStyle &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepVisual_RWContextDependentOverRidingStyledItem;
class RWStepVisual_RWContextDependentOverRidingStyledItem {
	public:
		%feature("autodoc", "1");
		~RWStepVisual_RWContextDependentOverRidingStyledItem();
		%feature("autodoc", "1");
		RWStepVisual_RWContextDependentOverRidingStyledItem();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_ContextDependentOverRidingStyledItem &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_ContextDependentOverRidingStyledItem &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_ContextDependentOverRidingStyledItem &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepVisual_RWPointStyle;
class RWStepVisual_RWPointStyle {
	public:
		%feature("autodoc", "1");
		~RWStepVisual_RWPointStyle();
		%feature("autodoc", "1");
		RWStepVisual_RWPointStyle();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_PointStyle &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_PointStyle &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_PointStyle &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepVisual_RWCompositeText;
class RWStepVisual_RWCompositeText {
	public:
		%feature("autodoc", "1");
		~RWStepVisual_RWCompositeText();
		%feature("autodoc", "1");
		RWStepVisual_RWCompositeText();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_CompositeText &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_CompositeText &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_CompositeText &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepVisual_RWDraughtingModel;
class RWStepVisual_RWDraughtingModel {
	public:
		%feature("autodoc", "1");
		~RWStepVisual_RWDraughtingModel();
		%feature("autodoc", "1");
		RWStepVisual_RWDraughtingModel();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_DraughtingModel &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_DraughtingModel &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_DraughtingModel &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepVisual_RWCameraModel;
class RWStepVisual_RWCameraModel {
	public:
		%feature("autodoc", "1");
		~RWStepVisual_RWCameraModel();
		%feature("autodoc", "1");
		RWStepVisual_RWCameraModel();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_CameraModel &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_CameraModel &ent) const;

};

%nodefaultctor RWStepVisual_RWCameraUsage;
class RWStepVisual_RWCameraUsage {
	public:
		%feature("autodoc", "1");
		~RWStepVisual_RWCameraUsage();
		%feature("autodoc", "1");
		RWStepVisual_RWCameraUsage();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_CameraUsage &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_CameraUsage &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_CameraUsage &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepVisual_RWTextStyleForDefinedFont;
class RWStepVisual_RWTextStyleForDefinedFont {
	public:
		%feature("autodoc", "1");
		~RWStepVisual_RWTextStyleForDefinedFont();
		%feature("autodoc", "1");
		RWStepVisual_RWTextStyleForDefinedFont();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_TextStyleForDefinedFont &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_TextStyleForDefinedFont &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_TextStyleForDefinedFont &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepVisual_RWColour;
class RWStepVisual_RWColour {
	public:
		%feature("autodoc", "1");
		~RWStepVisual_RWColour();
		%feature("autodoc", "1");
		RWStepVisual_RWColour();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_Colour &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_Colour &ent) const;

};

%nodefaultctor RWStepVisual_RWPresentationRepresentation;
class RWStepVisual_RWPresentationRepresentation {
	public:
		%feature("autodoc", "1");
		~RWStepVisual_RWPresentationRepresentation();
		%feature("autodoc", "1");
		RWStepVisual_RWPresentationRepresentation();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_PresentationRepresentation &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_PresentationRepresentation &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_PresentationRepresentation &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepVisual_RWCurveStyleFont;
class RWStepVisual_RWCurveStyleFont {
	public:
		%feature("autodoc", "1");
		~RWStepVisual_RWCurveStyleFont();
		%feature("autodoc", "1");
		RWStepVisual_RWCurveStyleFont();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_CurveStyleFont &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_CurveStyleFont &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_CurveStyleFont &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepVisual_RWPresentationLayerUsage;
class RWStepVisual_RWPresentationLayerUsage {
	public:
		%feature("autodoc", "1");
		~RWStepVisual_RWPresentationLayerUsage();
		%feature("autodoc", "1");
		RWStepVisual_RWPresentationLayerUsage();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_PresentationLayerUsage &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_PresentationLayerUsage &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_PresentationLayerUsage &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepVisual_RWExternallyDefinedCurveFont;
class RWStepVisual_RWExternallyDefinedCurveFont {
	public:
		%feature("autodoc", "1");
		~RWStepVisual_RWExternallyDefinedCurveFont();
		%feature("autodoc", "1");
		RWStepVisual_RWExternallyDefinedCurveFont();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_ExternallyDefinedCurveFont &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_ExternallyDefinedCurveFont &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_ExternallyDefinedCurveFont &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepVisual_RWDraughtingPreDefinedCurveFont;
class RWStepVisual_RWDraughtingPreDefinedCurveFont {
	public:
		%feature("autodoc", "1");
		~RWStepVisual_RWDraughtingPreDefinedCurveFont();
		%feature("autodoc", "1");
		RWStepVisual_RWDraughtingPreDefinedCurveFont();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_DraughtingPreDefinedCurveFont &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_DraughtingPreDefinedCurveFont &ent) const;

};

%nodefaultctor RWStepVisual_RWPresentationStyleAssignment;
class RWStepVisual_RWPresentationStyleAssignment {
	public:
		%feature("autodoc", "1");
		~RWStepVisual_RWPresentationStyleAssignment();
		%feature("autodoc", "1");
		RWStepVisual_RWPresentationStyleAssignment();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_PresentationStyleAssignment &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_PresentationStyleAssignment &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_PresentationStyleAssignment &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepVisual_RWPlanarBox;
class RWStepVisual_RWPlanarBox {
	public:
		%feature("autodoc", "1");
		~RWStepVisual_RWPlanarBox();
		%feature("autodoc", "1");
		RWStepVisual_RWPlanarBox();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_PlanarBox &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_PlanarBox &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_PlanarBox &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepVisual_RWCameraModelD2;
class RWStepVisual_RWCameraModelD2 {
	public:
		%feature("autodoc", "1");
		~RWStepVisual_RWCameraModelD2();
		%feature("autodoc", "1");
		RWStepVisual_RWCameraModelD2();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_CameraModelD2 &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_CameraModelD2 &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_CameraModelD2 &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepVisual_RWCameraModelD3;
class RWStepVisual_RWCameraModelD3 {
	public:
		%feature("autodoc", "1");
		~RWStepVisual_RWCameraModelD3();
		%feature("autodoc", "1");
		RWStepVisual_RWCameraModelD3();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_CameraModelD3 &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_CameraModelD3 &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_CameraModelD3 &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepVisual_RWDraughtingPreDefinedColour;
class RWStepVisual_RWDraughtingPreDefinedColour {
	public:
		%feature("autodoc", "1");
		~RWStepVisual_RWDraughtingPreDefinedColour();
		%feature("autodoc", "1");
		RWStepVisual_RWDraughtingPreDefinedColour();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_DraughtingPreDefinedColour &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_DraughtingPreDefinedColour &ent) const;

};

%nodefaultctor RWStepVisual_RWSurfaceStyleParameterLine;
class RWStepVisual_RWSurfaceStyleParameterLine {
	public:
		%feature("autodoc", "1");
		~RWStepVisual_RWSurfaceStyleParameterLine();
		%feature("autodoc", "1");
		RWStepVisual_RWSurfaceStyleParameterLine();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_SurfaceStyleParameterLine &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_SurfaceStyleParameterLine &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_SurfaceStyleParameterLine &ent, Interface_EntityIterator & iter) const;

};