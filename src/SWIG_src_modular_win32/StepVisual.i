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
%module StepVisual

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


%include StepVisual_dependencies.i


%include StepVisual_headers.i


enum StepVisual_MarkerType {
	StepVisual_mtDot,
	StepVisual_mtX,
	StepVisual_mtPlus,
	StepVisual_mtAsterisk,
	StepVisual_mtRing,
	StepVisual_mtSquare,
	StepVisual_mtTriangle,
	};

enum StepVisual_TextPath {
	StepVisual_tpUp,
	StepVisual_tpRight,
	StepVisual_tpDown,
	StepVisual_tpLeft,
	};

enum StepVisual_SurfaceSide {
	StepVisual_ssNegative,
	StepVisual_ssPositive,
	StepVisual_ssBoth,
	};

enum StepVisual_CentralOrParallel {
	StepVisual_copCentral,
	StepVisual_copParallel,
	};



%nodefaultctor Handle_StepVisual_PresentationRepresentation;
class Handle_StepVisual_PresentationRepresentation : public Handle_StepRepr_Representation {
	public:
		%feature("autodoc", "1");
		~Handle_StepVisual_PresentationRepresentation();
		%feature("autodoc", "1");
		Handle_StepVisual_PresentationRepresentation();
		%feature("autodoc", "1");
		Handle_StepVisual_PresentationRepresentation(const Handle_StepVisual_PresentationRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepVisual_PresentationRepresentation(const StepVisual_PresentationRepresentation *anItem);
		%feature("autodoc", "1");
		Handle_StepVisual_PresentationRepresentation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepVisual_PresentationRepresentation {
	StepVisual_PresentationRepresentation* GetObject() {
	return (StepVisual_PresentationRepresentation*)$self->Access();
	}
};

%nodefaultctor Handle_StepVisual_MechanicalDesignGeometricPresentationRepresentation;
class Handle_StepVisual_MechanicalDesignGeometricPresentationRepresentation : public Handle_StepVisual_PresentationRepresentation {
	public:
		%feature("autodoc", "1");
		~Handle_StepVisual_MechanicalDesignGeometricPresentationRepresentation();
		%feature("autodoc", "1");
		Handle_StepVisual_MechanicalDesignGeometricPresentationRepresentation();
		%feature("autodoc", "1");
		Handle_StepVisual_MechanicalDesignGeometricPresentationRepresentation(const Handle_StepVisual_MechanicalDesignGeometricPresentationRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepVisual_MechanicalDesignGeometricPresentationRepresentation(const StepVisual_MechanicalDesignGeometricPresentationRepresentation *anItem);
		%feature("autodoc", "1");
		Handle_StepVisual_MechanicalDesignGeometricPresentationRepresentation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepVisual_MechanicalDesignGeometricPresentationRepresentation {
	StepVisual_MechanicalDesignGeometricPresentationRepresentation* GetObject() {
	return (StepVisual_MechanicalDesignGeometricPresentationRepresentation*)$self->Access();
	}
};

%nodefaultctor Handle_StepVisual_CompositeText;
class Handle_StepVisual_CompositeText : public Handle_StepGeom_GeometricRepresentationItem {
	public:
		%feature("autodoc", "1");
		~Handle_StepVisual_CompositeText();
		%feature("autodoc", "1");
		Handle_StepVisual_CompositeText();
		%feature("autodoc", "1");
		Handle_StepVisual_CompositeText(const Handle_StepVisual_CompositeText &aHandle);
		%feature("autodoc", "1");
		Handle_StepVisual_CompositeText(const StepVisual_CompositeText *anItem);
		%feature("autodoc", "1");
		Handle_StepVisual_CompositeText const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepVisual_CompositeText {
	StepVisual_CompositeText* GetObject() {
	return (StepVisual_CompositeText*)$self->Access();
	}
};

%nodefaultctor Handle_StepVisual_Invisibility;
class Handle_StepVisual_Invisibility : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_StepVisual_Invisibility();
		%feature("autodoc", "1");
		Handle_StepVisual_Invisibility();
		%feature("autodoc", "1");
		Handle_StepVisual_Invisibility(const Handle_StepVisual_Invisibility &aHandle);
		%feature("autodoc", "1");
		Handle_StepVisual_Invisibility(const StepVisual_Invisibility *anItem);
		%feature("autodoc", "1");
		Handle_StepVisual_Invisibility const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepVisual_Invisibility {
	StepVisual_Invisibility* GetObject() {
	return (StepVisual_Invisibility*)$self->Access();
	}
};

%nodefaultctor Handle_StepVisual_CameraModel;
class Handle_StepVisual_CameraModel : public Handle_StepGeom_GeometricRepresentationItem {
	public:
		%feature("autodoc", "1");
		~Handle_StepVisual_CameraModel();
		%feature("autodoc", "1");
		Handle_StepVisual_CameraModel();
		%feature("autodoc", "1");
		Handle_StepVisual_CameraModel(const Handle_StepVisual_CameraModel &aHandle);
		%feature("autodoc", "1");
		Handle_StepVisual_CameraModel(const StepVisual_CameraModel *anItem);
		%feature("autodoc", "1");
		Handle_StepVisual_CameraModel const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepVisual_CameraModel {
	StepVisual_CameraModel* GetObject() {
	return (StepVisual_CameraModel*)$self->Access();
	}
};

%nodefaultctor Handle_StepVisual_SurfaceStyleSegmentationCurve;
class Handle_StepVisual_SurfaceStyleSegmentationCurve : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_StepVisual_SurfaceStyleSegmentationCurve();
		%feature("autodoc", "1");
		Handle_StepVisual_SurfaceStyleSegmentationCurve();
		%feature("autodoc", "1");
		Handle_StepVisual_SurfaceStyleSegmentationCurve(const Handle_StepVisual_SurfaceStyleSegmentationCurve &aHandle);
		%feature("autodoc", "1");
		Handle_StepVisual_SurfaceStyleSegmentationCurve(const StepVisual_SurfaceStyleSegmentationCurve *anItem);
		%feature("autodoc", "1");
		Handle_StepVisual_SurfaceStyleSegmentationCurve const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepVisual_SurfaceStyleSegmentationCurve {
	StepVisual_SurfaceStyleSegmentationCurve* GetObject() {
	return (StepVisual_SurfaceStyleSegmentationCurve*)$self->Access();
	}
};

%nodefaultctor Handle_StepVisual_Colour;
class Handle_StepVisual_Colour : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_StepVisual_Colour();
		%feature("autodoc", "1");
		Handle_StepVisual_Colour();
		%feature("autodoc", "1");
		Handle_StepVisual_Colour(const Handle_StepVisual_Colour &aHandle);
		%feature("autodoc", "1");
		Handle_StepVisual_Colour(const StepVisual_Colour *anItem);
		%feature("autodoc", "1");
		Handle_StepVisual_Colour const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepVisual_Colour {
	StepVisual_Colour* GetObject() {
	return (StepVisual_Colour*)$self->Access();
	}
};

%nodefaultctor Handle_StepVisual_PreDefinedColour;
class Handle_StepVisual_PreDefinedColour : public Handle_StepVisual_Colour {
	public:
		%feature("autodoc", "1");
		~Handle_StepVisual_PreDefinedColour();
		%feature("autodoc", "1");
		Handle_StepVisual_PreDefinedColour();
		%feature("autodoc", "1");
		Handle_StepVisual_PreDefinedColour(const Handle_StepVisual_PreDefinedColour &aHandle);
		%feature("autodoc", "1");
		Handle_StepVisual_PreDefinedColour(const StepVisual_PreDefinedColour *anItem);
		%feature("autodoc", "1");
		Handle_StepVisual_PreDefinedColour const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepVisual_PreDefinedColour {
	StepVisual_PreDefinedColour* GetObject() {
	return (StepVisual_PreDefinedColour*)$self->Access();
	}
};

%nodefaultctor Handle_StepVisual_CameraUsage;
class Handle_StepVisual_CameraUsage : public Handle_StepRepr_RepresentationMap {
	public:
		%feature("autodoc", "1");
		~Handle_StepVisual_CameraUsage();
		%feature("autodoc", "1");
		Handle_StepVisual_CameraUsage();
		%feature("autodoc", "1");
		Handle_StepVisual_CameraUsage(const Handle_StepVisual_CameraUsage &aHandle);
		%feature("autodoc", "1");
		Handle_StepVisual_CameraUsage(const StepVisual_CameraUsage *anItem);
		%feature("autodoc", "1");
		Handle_StepVisual_CameraUsage const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepVisual_CameraUsage {
	StepVisual_CameraUsage* GetObject() {
	return (StepVisual_CameraUsage*)$self->Access();
	}
};

%nodefaultctor Handle_StepVisual_AnnotationText;
class Handle_StepVisual_AnnotationText : public Handle_StepRepr_MappedItem {
	public:
		%feature("autodoc", "1");
		~Handle_StepVisual_AnnotationText();
		%feature("autodoc", "1");
		Handle_StepVisual_AnnotationText();
		%feature("autodoc", "1");
		Handle_StepVisual_AnnotationText(const Handle_StepVisual_AnnotationText &aHandle);
		%feature("autodoc", "1");
		Handle_StepVisual_AnnotationText(const StepVisual_AnnotationText *anItem);
		%feature("autodoc", "1");
		Handle_StepVisual_AnnotationText const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepVisual_AnnotationText {
	StepVisual_AnnotationText* GetObject() {
	return (StepVisual_AnnotationText*)$self->Access();
	}
};

%nodefaultctor Handle_StepVisual_ContextDependentInvisibility;
class Handle_StepVisual_ContextDependentInvisibility : public Handle_StepVisual_Invisibility {
	public:
		%feature("autodoc", "1");
		~Handle_StepVisual_ContextDependentInvisibility();
		%feature("autodoc", "1");
		Handle_StepVisual_ContextDependentInvisibility();
		%feature("autodoc", "1");
		Handle_StepVisual_ContextDependentInvisibility(const Handle_StepVisual_ContextDependentInvisibility &aHandle);
		%feature("autodoc", "1");
		Handle_StepVisual_ContextDependentInvisibility(const StepVisual_ContextDependentInvisibility *anItem);
		%feature("autodoc", "1");
		Handle_StepVisual_ContextDependentInvisibility const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepVisual_ContextDependentInvisibility {
	StepVisual_ContextDependentInvisibility* GetObject() {
	return (StepVisual_ContextDependentInvisibility*)$self->Access();
	}
};

%nodefaultctor Handle_StepVisual_ExternallyDefinedCurveFont;
class Handle_StepVisual_ExternallyDefinedCurveFont : public Handle_StepBasic_ExternallyDefinedItem {
	public:
		%feature("autodoc", "1");
		~Handle_StepVisual_ExternallyDefinedCurveFont();
		%feature("autodoc", "1");
		Handle_StepVisual_ExternallyDefinedCurveFont();
		%feature("autodoc", "1");
		Handle_StepVisual_ExternallyDefinedCurveFont(const Handle_StepVisual_ExternallyDefinedCurveFont &aHandle);
		%feature("autodoc", "1");
		Handle_StepVisual_ExternallyDefinedCurveFont(const StepVisual_ExternallyDefinedCurveFont *anItem);
		%feature("autodoc", "1");
		Handle_StepVisual_ExternallyDefinedCurveFont const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepVisual_ExternallyDefinedCurveFont {
	StepVisual_ExternallyDefinedCurveFont* GetObject() {
	return (StepVisual_ExternallyDefinedCurveFont*)$self->Access();
	}
};

%nodefaultctor Handle_StepVisual_MarkerMember;
class Handle_StepVisual_MarkerMember : public Handle_StepData_SelectInt {
	public:
		%feature("autodoc", "1");
		~Handle_StepVisual_MarkerMember();
		%feature("autodoc", "1");
		Handle_StepVisual_MarkerMember();
		%feature("autodoc", "1");
		Handle_StepVisual_MarkerMember(const Handle_StepVisual_MarkerMember &aHandle);
		%feature("autodoc", "1");
		Handle_StepVisual_MarkerMember(const StepVisual_MarkerMember *anItem);
		%feature("autodoc", "1");
		Handle_StepVisual_MarkerMember const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepVisual_MarkerMember {
	StepVisual_MarkerMember* GetObject() {
	return (StepVisual_MarkerMember*)$self->Access();
	}
};

%nodefaultctor Handle_StepVisual_PresentationView;
class Handle_StepVisual_PresentationView : public Handle_StepVisual_PresentationRepresentation {
	public:
		%feature("autodoc", "1");
		~Handle_StepVisual_PresentationView();
		%feature("autodoc", "1");
		Handle_StepVisual_PresentationView();
		%feature("autodoc", "1");
		Handle_StepVisual_PresentationView(const Handle_StepVisual_PresentationView &aHandle);
		%feature("autodoc", "1");
		Handle_StepVisual_PresentationView(const StepVisual_PresentationView *anItem);
		%feature("autodoc", "1");
		Handle_StepVisual_PresentationView const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepVisual_PresentationView {
	StepVisual_PresentationView* GetObject() {
	return (StepVisual_PresentationView*)$self->Access();
	}
};

%nodefaultctor Handle_StepVisual_StyledItem;
class Handle_StepVisual_StyledItem : public Handle_StepRepr_RepresentationItem {
	public:
		%feature("autodoc", "1");
		~Handle_StepVisual_StyledItem();
		%feature("autodoc", "1");
		Handle_StepVisual_StyledItem();
		%feature("autodoc", "1");
		Handle_StepVisual_StyledItem(const Handle_StepVisual_StyledItem &aHandle);
		%feature("autodoc", "1");
		Handle_StepVisual_StyledItem(const StepVisual_StyledItem *anItem);
		%feature("autodoc", "1");
		Handle_StepVisual_StyledItem const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepVisual_StyledItem {
	StepVisual_StyledItem* GetObject() {
	return (StepVisual_StyledItem*)$self->Access();
	}
};

%nodefaultctor Handle_StepVisual_OverRidingStyledItem;
class Handle_StepVisual_OverRidingStyledItem : public Handle_StepVisual_StyledItem {
	public:
		%feature("autodoc", "1");
		~Handle_StepVisual_OverRidingStyledItem();
		%feature("autodoc", "1");
		Handle_StepVisual_OverRidingStyledItem();
		%feature("autodoc", "1");
		Handle_StepVisual_OverRidingStyledItem(const Handle_StepVisual_OverRidingStyledItem &aHandle);
		%feature("autodoc", "1");
		Handle_StepVisual_OverRidingStyledItem(const StepVisual_OverRidingStyledItem *anItem);
		%feature("autodoc", "1");
		Handle_StepVisual_OverRidingStyledItem const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepVisual_OverRidingStyledItem {
	StepVisual_OverRidingStyledItem* GetObject() {
	return (StepVisual_OverRidingStyledItem*)$self->Access();
	}
};

%nodefaultctor Handle_StepVisual_ContextDependentOverRidingStyledItem;
class Handle_StepVisual_ContextDependentOverRidingStyledItem : public Handle_StepVisual_OverRidingStyledItem {
	public:
		%feature("autodoc", "1");
		~Handle_StepVisual_ContextDependentOverRidingStyledItem();
		%feature("autodoc", "1");
		Handle_StepVisual_ContextDependentOverRidingStyledItem();
		%feature("autodoc", "1");
		Handle_StepVisual_ContextDependentOverRidingStyledItem(const Handle_StepVisual_ContextDependentOverRidingStyledItem &aHandle);
		%feature("autodoc", "1");
		Handle_StepVisual_ContextDependentOverRidingStyledItem(const StepVisual_ContextDependentOverRidingStyledItem *anItem);
		%feature("autodoc", "1");
		Handle_StepVisual_ContextDependentOverRidingStyledItem const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepVisual_ContextDependentOverRidingStyledItem {
	StepVisual_ContextDependentOverRidingStyledItem* GetObject() {
	return (StepVisual_ContextDependentOverRidingStyledItem*)$self->Access();
	}
};

%nodefaultctor Handle_StepVisual_PresentationSize;
class Handle_StepVisual_PresentationSize : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_StepVisual_PresentationSize();
		%feature("autodoc", "1");
		Handle_StepVisual_PresentationSize();
		%feature("autodoc", "1");
		Handle_StepVisual_PresentationSize(const Handle_StepVisual_PresentationSize &aHandle);
		%feature("autodoc", "1");
		Handle_StepVisual_PresentationSize(const StepVisual_PresentationSize *anItem);
		%feature("autodoc", "1");
		Handle_StepVisual_PresentationSize const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepVisual_PresentationSize {
	StepVisual_PresentationSize* GetObject() {
	return (StepVisual_PresentationSize*)$self->Access();
	}
};

%nodefaultctor Handle_StepVisual_DraughtingPreDefinedColour;
class Handle_StepVisual_DraughtingPreDefinedColour : public Handle_StepVisual_PreDefinedColour {
	public:
		%feature("autodoc", "1");
		~Handle_StepVisual_DraughtingPreDefinedColour();
		%feature("autodoc", "1");
		Handle_StepVisual_DraughtingPreDefinedColour();
		%feature("autodoc", "1");
		Handle_StepVisual_DraughtingPreDefinedColour(const Handle_StepVisual_DraughtingPreDefinedColour &aHandle);
		%feature("autodoc", "1");
		Handle_StepVisual_DraughtingPreDefinedColour(const StepVisual_DraughtingPreDefinedColour *anItem);
		%feature("autodoc", "1");
		Handle_StepVisual_DraughtingPreDefinedColour const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepVisual_DraughtingPreDefinedColour {
	StepVisual_DraughtingPreDefinedColour* GetObject() {
	return (StepVisual_DraughtingPreDefinedColour*)$self->Access();
	}
};

%nodefaultctor Handle_StepVisual_HArray1OfTextOrCharacter;
class Handle_StepVisual_HArray1OfTextOrCharacter : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_StepVisual_HArray1OfTextOrCharacter();
		%feature("autodoc", "1");
		Handle_StepVisual_HArray1OfTextOrCharacter();
		%feature("autodoc", "1");
		Handle_StepVisual_HArray1OfTextOrCharacter(const Handle_StepVisual_HArray1OfTextOrCharacter &aHandle);
		%feature("autodoc", "1");
		Handle_StepVisual_HArray1OfTextOrCharacter(const StepVisual_HArray1OfTextOrCharacter *anItem);
		%feature("autodoc", "1");
		Handle_StepVisual_HArray1OfTextOrCharacter const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepVisual_HArray1OfTextOrCharacter {
	StepVisual_HArray1OfTextOrCharacter* GetObject() {
	return (StepVisual_HArray1OfTextOrCharacter*)$self->Access();
	}
};

%nodefaultctor Handle_StepVisual_CameraModelD2;
class Handle_StepVisual_CameraModelD2 : public Handle_StepVisual_CameraModel {
	public:
		%feature("autodoc", "1");
		~Handle_StepVisual_CameraModelD2();
		%feature("autodoc", "1");
		Handle_StepVisual_CameraModelD2();
		%feature("autodoc", "1");
		Handle_StepVisual_CameraModelD2(const Handle_StepVisual_CameraModelD2 &aHandle);
		%feature("autodoc", "1");
		Handle_StepVisual_CameraModelD2(const StepVisual_CameraModelD2 *anItem);
		%feature("autodoc", "1");
		Handle_StepVisual_CameraModelD2 const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepVisual_CameraModelD2 {
	StepVisual_CameraModelD2* GetObject() {
	return (StepVisual_CameraModelD2*)$self->Access();
	}
};

%nodefaultctor Handle_StepVisual_CameraModelD3;
class Handle_StepVisual_CameraModelD3 : public Handle_StepVisual_CameraModel {
	public:
		%feature("autodoc", "1");
		~Handle_StepVisual_CameraModelD3();
		%feature("autodoc", "1");
		Handle_StepVisual_CameraModelD3();
		%feature("autodoc", "1");
		Handle_StepVisual_CameraModelD3(const Handle_StepVisual_CameraModelD3 &aHandle);
		%feature("autodoc", "1");
		Handle_StepVisual_CameraModelD3(const StepVisual_CameraModelD3 *anItem);
		%feature("autodoc", "1");
		Handle_StepVisual_CameraModelD3 const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepVisual_CameraModelD3 {
	StepVisual_CameraModelD3* GetObject() {
	return (StepVisual_CameraModelD3*)$self->Access();
	}
};

%nodefaultctor Handle_StepVisual_CameraImage;
class Handle_StepVisual_CameraImage : public Handle_StepRepr_MappedItem {
	public:
		%feature("autodoc", "1");
		~Handle_StepVisual_CameraImage();
		%feature("autodoc", "1");
		Handle_StepVisual_CameraImage();
		%feature("autodoc", "1");
		Handle_StepVisual_CameraImage(const Handle_StepVisual_CameraImage &aHandle);
		%feature("autodoc", "1");
		Handle_StepVisual_CameraImage(const StepVisual_CameraImage *anItem);
		%feature("autodoc", "1");
		Handle_StepVisual_CameraImage const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepVisual_CameraImage {
	StepVisual_CameraImage* GetObject() {
	return (StepVisual_CameraImage*)$self->Access();
	}
};

%nodefaultctor Handle_StepVisual_SurfaceStyleParameterLine;
class Handle_StepVisual_SurfaceStyleParameterLine : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_StepVisual_SurfaceStyleParameterLine();
		%feature("autodoc", "1");
		Handle_StepVisual_SurfaceStyleParameterLine();
		%feature("autodoc", "1");
		Handle_StepVisual_SurfaceStyleParameterLine(const Handle_StepVisual_SurfaceStyleParameterLine &aHandle);
		%feature("autodoc", "1");
		Handle_StepVisual_SurfaceStyleParameterLine(const StepVisual_SurfaceStyleParameterLine *anItem);
		%feature("autodoc", "1");
		Handle_StepVisual_SurfaceStyleParameterLine const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepVisual_SurfaceStyleParameterLine {
	StepVisual_SurfaceStyleParameterLine* GetObject() {
	return (StepVisual_SurfaceStyleParameterLine*)$self->Access();
	}
};

%nodefaultctor Handle_StepVisual_AnnotationOccurrence;
class Handle_StepVisual_AnnotationOccurrence : public Handle_StepVisual_StyledItem {
	public:
		%feature("autodoc", "1");
		~Handle_StepVisual_AnnotationOccurrence();
		%feature("autodoc", "1");
		Handle_StepVisual_AnnotationOccurrence();
		%feature("autodoc", "1");
		Handle_StepVisual_AnnotationOccurrence(const Handle_StepVisual_AnnotationOccurrence &aHandle);
		%feature("autodoc", "1");
		Handle_StepVisual_AnnotationOccurrence(const StepVisual_AnnotationOccurrence *anItem);
		%feature("autodoc", "1");
		Handle_StepVisual_AnnotationOccurrence const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepVisual_AnnotationOccurrence {
	StepVisual_AnnotationOccurrence* GetObject() {
	return (StepVisual_AnnotationOccurrence*)$self->Access();
	}
};

%nodefaultctor Handle_StepVisual_CameraImage2dWithScale;
class Handle_StepVisual_CameraImage2dWithScale : public Handle_StepVisual_CameraImage {
	public:
		%feature("autodoc", "1");
		~Handle_StepVisual_CameraImage2dWithScale();
		%feature("autodoc", "1");
		Handle_StepVisual_CameraImage2dWithScale();
		%feature("autodoc", "1");
		Handle_StepVisual_CameraImage2dWithScale(const Handle_StepVisual_CameraImage2dWithScale &aHandle);
		%feature("autodoc", "1");
		Handle_StepVisual_CameraImage2dWithScale(const StepVisual_CameraImage2dWithScale *anItem);
		%feature("autodoc", "1");
		Handle_StepVisual_CameraImage2dWithScale const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepVisual_CameraImage2dWithScale {
	StepVisual_CameraImage2dWithScale* GetObject() {
	return (StepVisual_CameraImage2dWithScale*)$self->Access();
	}
};

%nodefaultctor Handle_StepVisual_HArray1OfPresentationStyleAssignment;
class Handle_StepVisual_HArray1OfPresentationStyleAssignment : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_StepVisual_HArray1OfPresentationStyleAssignment();
		%feature("autodoc", "1");
		Handle_StepVisual_HArray1OfPresentationStyleAssignment();
		%feature("autodoc", "1");
		Handle_StepVisual_HArray1OfPresentationStyleAssignment(const Handle_StepVisual_HArray1OfPresentationStyleAssignment &aHandle);
		%feature("autodoc", "1");
		Handle_StepVisual_HArray1OfPresentationStyleAssignment(const StepVisual_HArray1OfPresentationStyleAssignment *anItem);
		%feature("autodoc", "1");
		Handle_StepVisual_HArray1OfPresentationStyleAssignment const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepVisual_HArray1OfPresentationStyleAssignment {
	StepVisual_HArray1OfPresentationStyleAssignment* GetObject() {
	return (StepVisual_HArray1OfPresentationStyleAssignment*)$self->Access();
	}
};

%nodefaultctor Handle_StepVisual_PresentationLayerAssignment;
class Handle_StepVisual_PresentationLayerAssignment : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_StepVisual_PresentationLayerAssignment();
		%feature("autodoc", "1");
		Handle_StepVisual_PresentationLayerAssignment();
		%feature("autodoc", "1");
		Handle_StepVisual_PresentationLayerAssignment(const Handle_StepVisual_PresentationLayerAssignment &aHandle);
		%feature("autodoc", "1");
		Handle_StepVisual_PresentationLayerAssignment(const StepVisual_PresentationLayerAssignment *anItem);
		%feature("autodoc", "1");
		Handle_StepVisual_PresentationLayerAssignment const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepVisual_PresentationLayerAssignment {
	StepVisual_PresentationLayerAssignment* GetObject() {
	return (StepVisual_PresentationLayerAssignment*)$self->Access();
	}
};

%nodefaultctor Handle_StepVisual_PresentationArea;
class Handle_StepVisual_PresentationArea : public Handle_StepVisual_PresentationRepresentation {
	public:
		%feature("autodoc", "1");
		~Handle_StepVisual_PresentationArea();
		%feature("autodoc", "1");
		Handle_StepVisual_PresentationArea();
		%feature("autodoc", "1");
		Handle_StepVisual_PresentationArea(const Handle_StepVisual_PresentationArea &aHandle);
		%feature("autodoc", "1");
		Handle_StepVisual_PresentationArea(const StepVisual_PresentationArea *anItem);
		%feature("autodoc", "1");
		Handle_StepVisual_PresentationArea const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepVisual_PresentationArea {
	StepVisual_PresentationArea* GetObject() {
	return (StepVisual_PresentationArea*)$self->Access();
	}
};

%nodefaultctor Handle_StepVisual_MechanicalDesignGeometricPresentationArea;
class Handle_StepVisual_MechanicalDesignGeometricPresentationArea : public Handle_StepVisual_PresentationArea {
	public:
		%feature("autodoc", "1");
		~Handle_StepVisual_MechanicalDesignGeometricPresentationArea();
		%feature("autodoc", "1");
		Handle_StepVisual_MechanicalDesignGeometricPresentationArea();
		%feature("autodoc", "1");
		Handle_StepVisual_MechanicalDesignGeometricPresentationArea(const Handle_StepVisual_MechanicalDesignGeometricPresentationArea &aHandle);
		%feature("autodoc", "1");
		Handle_StepVisual_MechanicalDesignGeometricPresentationArea(const StepVisual_MechanicalDesignGeometricPresentationArea *anItem);
		%feature("autodoc", "1");
		Handle_StepVisual_MechanicalDesignGeometricPresentationArea const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepVisual_MechanicalDesignGeometricPresentationArea {
	StepVisual_MechanicalDesignGeometricPresentationArea* GetObject() {
	return (StepVisual_MechanicalDesignGeometricPresentationArea*)$self->Access();
	}
};

%nodefaultctor Handle_StepVisual_PresentationStyleAssignment;
class Handle_StepVisual_PresentationStyleAssignment : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_StepVisual_PresentationStyleAssignment();
		%feature("autodoc", "1");
		Handle_StepVisual_PresentationStyleAssignment();
		%feature("autodoc", "1");
		Handle_StepVisual_PresentationStyleAssignment(const Handle_StepVisual_PresentationStyleAssignment &aHandle);
		%feature("autodoc", "1");
		Handle_StepVisual_PresentationStyleAssignment(const StepVisual_PresentationStyleAssignment *anItem);
		%feature("autodoc", "1");
		Handle_StepVisual_PresentationStyleAssignment const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepVisual_PresentationStyleAssignment {
	StepVisual_PresentationStyleAssignment* GetObject() {
	return (StepVisual_PresentationStyleAssignment*)$self->Access();
	}
};

%nodefaultctor Handle_StepVisual_PresentationStyleByContext;
class Handle_StepVisual_PresentationStyleByContext : public Handle_StepVisual_PresentationStyleAssignment {
	public:
		%feature("autodoc", "1");
		~Handle_StepVisual_PresentationStyleByContext();
		%feature("autodoc", "1");
		Handle_StepVisual_PresentationStyleByContext();
		%feature("autodoc", "1");
		Handle_StepVisual_PresentationStyleByContext(const Handle_StepVisual_PresentationStyleByContext &aHandle);
		%feature("autodoc", "1");
		Handle_StepVisual_PresentationStyleByContext(const StepVisual_PresentationStyleByContext *anItem);
		%feature("autodoc", "1");
		Handle_StepVisual_PresentationStyleByContext const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepVisual_PresentationStyleByContext {
	StepVisual_PresentationStyleByContext* GetObject() {
	return (StepVisual_PresentationStyleByContext*)$self->Access();
	}
};

%nodefaultctor Handle_StepVisual_ViewVolume;
class Handle_StepVisual_ViewVolume : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_StepVisual_ViewVolume();
		%feature("autodoc", "1");
		Handle_StepVisual_ViewVolume();
		%feature("autodoc", "1");
		Handle_StepVisual_ViewVolume(const Handle_StepVisual_ViewVolume &aHandle);
		%feature("autodoc", "1");
		Handle_StepVisual_ViewVolume(const StepVisual_ViewVolume *anItem);
		%feature("autodoc", "1");
		Handle_StepVisual_ViewVolume const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepVisual_ViewVolume {
	StepVisual_ViewVolume* GetObject() {
	return (StepVisual_ViewVolume*)$self->Access();
	}
};

%nodefaultctor Handle_StepVisual_TextStyle;
class Handle_StepVisual_TextStyle : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_StepVisual_TextStyle();
		%feature("autodoc", "1");
		Handle_StepVisual_TextStyle();
		%feature("autodoc", "1");
		Handle_StepVisual_TextStyle(const Handle_StepVisual_TextStyle &aHandle);
		%feature("autodoc", "1");
		Handle_StepVisual_TextStyle(const StepVisual_TextStyle *anItem);
		%feature("autodoc", "1");
		Handle_StepVisual_TextStyle const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepVisual_TextStyle {
	StepVisual_TextStyle* GetObject() {
	return (StepVisual_TextStyle*)$self->Access();
	}
};

%nodefaultctor Handle_StepVisual_TextStyleWithBoxCharacteristics;
class Handle_StepVisual_TextStyleWithBoxCharacteristics : public Handle_StepVisual_TextStyle {
	public:
		%feature("autodoc", "1");
		~Handle_StepVisual_TextStyleWithBoxCharacteristics();
		%feature("autodoc", "1");
		Handle_StepVisual_TextStyleWithBoxCharacteristics();
		%feature("autodoc", "1");
		Handle_StepVisual_TextStyleWithBoxCharacteristics(const Handle_StepVisual_TextStyleWithBoxCharacteristics &aHandle);
		%feature("autodoc", "1");
		Handle_StepVisual_TextStyleWithBoxCharacteristics(const StepVisual_TextStyleWithBoxCharacteristics *anItem);
		%feature("autodoc", "1");
		Handle_StepVisual_TextStyleWithBoxCharacteristics const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepVisual_TextStyleWithBoxCharacteristics {
	StepVisual_TextStyleWithBoxCharacteristics* GetObject() {
	return (StepVisual_TextStyleWithBoxCharacteristics*)$self->Access();
	}
};

%nodefaultctor Handle_StepVisual_SurfaceSideStyle;
class Handle_StepVisual_SurfaceSideStyle : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_StepVisual_SurfaceSideStyle();
		%feature("autodoc", "1");
		Handle_StepVisual_SurfaceSideStyle();
		%feature("autodoc", "1");
		Handle_StepVisual_SurfaceSideStyle(const Handle_StepVisual_SurfaceSideStyle &aHandle);
		%feature("autodoc", "1");
		Handle_StepVisual_SurfaceSideStyle(const StepVisual_SurfaceSideStyle *anItem);
		%feature("autodoc", "1");
		Handle_StepVisual_SurfaceSideStyle const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepVisual_SurfaceSideStyle {
	StepVisual_SurfaceSideStyle* GetObject() {
	return (StepVisual_SurfaceSideStyle*)$self->Access();
	}
};

%nodefaultctor Handle_StepVisual_PointStyle;
class Handle_StepVisual_PointStyle : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_StepVisual_PointStyle();
		%feature("autodoc", "1");
		Handle_StepVisual_PointStyle();
		%feature("autodoc", "1");
		Handle_StepVisual_PointStyle(const Handle_StepVisual_PointStyle &aHandle);
		%feature("autodoc", "1");
		Handle_StepVisual_PointStyle(const StepVisual_PointStyle *anItem);
		%feature("autodoc", "1");
		Handle_StepVisual_PointStyle const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepVisual_PointStyle {
	StepVisual_PointStyle* GetObject() {
	return (StepVisual_PointStyle*)$self->Access();
	}
};

%nodefaultctor Handle_StepVisual_HArray1OfDirectionCountSelect;
class Handle_StepVisual_HArray1OfDirectionCountSelect : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_StepVisual_HArray1OfDirectionCountSelect();
		%feature("autodoc", "1");
		Handle_StepVisual_HArray1OfDirectionCountSelect();
		%feature("autodoc", "1");
		Handle_StepVisual_HArray1OfDirectionCountSelect(const Handle_StepVisual_HArray1OfDirectionCountSelect &aHandle);
		%feature("autodoc", "1");
		Handle_StepVisual_HArray1OfDirectionCountSelect(const StepVisual_HArray1OfDirectionCountSelect *anItem);
		%feature("autodoc", "1");
		Handle_StepVisual_HArray1OfDirectionCountSelect const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepVisual_HArray1OfDirectionCountSelect {
	StepVisual_HArray1OfDirectionCountSelect* GetObject() {
	return (StepVisual_HArray1OfDirectionCountSelect*)$self->Access();
	}
};

%nodefaultctor Handle_StepVisual_FillAreaStyle;
class Handle_StepVisual_FillAreaStyle : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_StepVisual_FillAreaStyle();
		%feature("autodoc", "1");
		Handle_StepVisual_FillAreaStyle();
		%feature("autodoc", "1");
		Handle_StepVisual_FillAreaStyle(const Handle_StepVisual_FillAreaStyle &aHandle);
		%feature("autodoc", "1");
		Handle_StepVisual_FillAreaStyle(const StepVisual_FillAreaStyle *anItem);
		%feature("autodoc", "1");
		Handle_StepVisual_FillAreaStyle const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepVisual_FillAreaStyle {
	StepVisual_FillAreaStyle* GetObject() {
	return (StepVisual_FillAreaStyle*)$self->Access();
	}
};

%nodefaultctor Handle_StepVisual_ColourSpecification;
class Handle_StepVisual_ColourSpecification : public Handle_StepVisual_Colour {
	public:
		%feature("autodoc", "1");
		~Handle_StepVisual_ColourSpecification();
		%feature("autodoc", "1");
		Handle_StepVisual_ColourSpecification();
		%feature("autodoc", "1");
		Handle_StepVisual_ColourSpecification(const Handle_StepVisual_ColourSpecification &aHandle);
		%feature("autodoc", "1");
		Handle_StepVisual_ColourSpecification(const StepVisual_ColourSpecification *anItem);
		%feature("autodoc", "1");
		Handle_StepVisual_ColourSpecification const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepVisual_ColourSpecification {
	StepVisual_ColourSpecification* GetObject() {
	return (StepVisual_ColourSpecification*)$self->Access();
	}
};

%nodefaultctor Handle_StepVisual_ColourRgb;
class Handle_StepVisual_ColourRgb : public Handle_StepVisual_ColourSpecification {
	public:
		%feature("autodoc", "1");
		~Handle_StepVisual_ColourRgb();
		%feature("autodoc", "1");
		Handle_StepVisual_ColourRgb();
		%feature("autodoc", "1");
		Handle_StepVisual_ColourRgb(const Handle_StepVisual_ColourRgb &aHandle);
		%feature("autodoc", "1");
		Handle_StepVisual_ColourRgb(const StepVisual_ColourRgb *anItem);
		%feature("autodoc", "1");
		Handle_StepVisual_ColourRgb const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepVisual_ColourRgb {
	StepVisual_ColourRgb* GetObject() {
	return (StepVisual_ColourRgb*)$self->Access();
	}
};

%nodefaultctor Handle_StepVisual_PresentationSet;
class Handle_StepVisual_PresentationSet : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_StepVisual_PresentationSet();
		%feature("autodoc", "1");
		Handle_StepVisual_PresentationSet();
		%feature("autodoc", "1");
		Handle_StepVisual_PresentationSet(const Handle_StepVisual_PresentationSet &aHandle);
		%feature("autodoc", "1");
		Handle_StepVisual_PresentationSet(const StepVisual_PresentationSet *anItem);
		%feature("autodoc", "1");
		Handle_StepVisual_PresentationSet const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepVisual_PresentationSet {
	StepVisual_PresentationSet* GetObject() {
	return (StepVisual_PresentationSet*)$self->Access();
	}
};

%nodefaultctor Handle_StepVisual_CurveStyle;
class Handle_StepVisual_CurveStyle : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_StepVisual_CurveStyle();
		%feature("autodoc", "1");
		Handle_StepVisual_CurveStyle();
		%feature("autodoc", "1");
		Handle_StepVisual_CurveStyle(const Handle_StepVisual_CurveStyle &aHandle);
		%feature("autodoc", "1");
		Handle_StepVisual_CurveStyle(const StepVisual_CurveStyle *anItem);
		%feature("autodoc", "1");
		Handle_StepVisual_CurveStyle const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepVisual_CurveStyle {
	StepVisual_CurveStyle* GetObject() {
	return (StepVisual_CurveStyle*)$self->Access();
	}
};

%nodefaultctor Handle_StepVisual_ExternallyDefinedTextFont;
class Handle_StepVisual_ExternallyDefinedTextFont : public Handle_StepBasic_ExternallyDefinedItem {
	public:
		%feature("autodoc", "1");
		~Handle_StepVisual_ExternallyDefinedTextFont();
		%feature("autodoc", "1");
		Handle_StepVisual_ExternallyDefinedTextFont();
		%feature("autodoc", "1");
		Handle_StepVisual_ExternallyDefinedTextFont(const Handle_StepVisual_ExternallyDefinedTextFont &aHandle);
		%feature("autodoc", "1");
		Handle_StepVisual_ExternallyDefinedTextFont(const StepVisual_ExternallyDefinedTextFont *anItem);
		%feature("autodoc", "1");
		Handle_StepVisual_ExternallyDefinedTextFont const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepVisual_ExternallyDefinedTextFont {
	StepVisual_ExternallyDefinedTextFont* GetObject() {
	return (StepVisual_ExternallyDefinedTextFont*)$self->Access();
	}
};

%nodefaultctor Handle_StepVisual_TemplateInstance;
class Handle_StepVisual_TemplateInstance : public Handle_StepRepr_MappedItem {
	public:
		%feature("autodoc", "1");
		~Handle_StepVisual_TemplateInstance();
		%feature("autodoc", "1");
		Handle_StepVisual_TemplateInstance();
		%feature("autodoc", "1");
		Handle_StepVisual_TemplateInstance(const Handle_StepVisual_TemplateInstance &aHandle);
		%feature("autodoc", "1");
		Handle_StepVisual_TemplateInstance(const StepVisual_TemplateInstance *anItem);
		%feature("autodoc", "1");
		Handle_StepVisual_TemplateInstance const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepVisual_TemplateInstance {
	StepVisual_TemplateInstance* GetObject() {
	return (StepVisual_TemplateInstance*)$self->Access();
	}
};

%nodefaultctor Handle_StepVisual_HArray1OfFillStyleSelect;
class Handle_StepVisual_HArray1OfFillStyleSelect : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_StepVisual_HArray1OfFillStyleSelect();
		%feature("autodoc", "1");
		Handle_StepVisual_HArray1OfFillStyleSelect();
		%feature("autodoc", "1");
		Handle_StepVisual_HArray1OfFillStyleSelect(const Handle_StepVisual_HArray1OfFillStyleSelect &aHandle);
		%feature("autodoc", "1");
		Handle_StepVisual_HArray1OfFillStyleSelect(const StepVisual_HArray1OfFillStyleSelect *anItem);
		%feature("autodoc", "1");
		Handle_StepVisual_HArray1OfFillStyleSelect const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepVisual_HArray1OfFillStyleSelect {
	StepVisual_HArray1OfFillStyleSelect* GetObject() {
	return (StepVisual_HArray1OfFillStyleSelect*)$self->Access();
	}
};

%nodefaultctor Handle_StepVisual_FillAreaStyleColour;
class Handle_StepVisual_FillAreaStyleColour : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_StepVisual_FillAreaStyleColour();
		%feature("autodoc", "1");
		Handle_StepVisual_FillAreaStyleColour();
		%feature("autodoc", "1");
		Handle_StepVisual_FillAreaStyleColour(const Handle_StepVisual_FillAreaStyleColour &aHandle);
		%feature("autodoc", "1");
		Handle_StepVisual_FillAreaStyleColour(const StepVisual_FillAreaStyleColour *anItem);
		%feature("autodoc", "1");
		Handle_StepVisual_FillAreaStyleColour const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepVisual_FillAreaStyleColour {
	StepVisual_FillAreaStyleColour* GetObject() {
	return (StepVisual_FillAreaStyleColour*)$self->Access();
	}
};

%nodefaultctor Handle_StepVisual_HArray1OfSurfaceStyleElementSelect;
class Handle_StepVisual_HArray1OfSurfaceStyleElementSelect : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_StepVisual_HArray1OfSurfaceStyleElementSelect();
		%feature("autodoc", "1");
		Handle_StepVisual_HArray1OfSurfaceStyleElementSelect();
		%feature("autodoc", "1");
		Handle_StepVisual_HArray1OfSurfaceStyleElementSelect(const Handle_StepVisual_HArray1OfSurfaceStyleElementSelect &aHandle);
		%feature("autodoc", "1");
		Handle_StepVisual_HArray1OfSurfaceStyleElementSelect(const StepVisual_HArray1OfSurfaceStyleElementSelect *anItem);
		%feature("autodoc", "1");
		Handle_StepVisual_HArray1OfSurfaceStyleElementSelect const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepVisual_HArray1OfSurfaceStyleElementSelect {
	StepVisual_HArray1OfSurfaceStyleElementSelect* GetObject() {
	return (StepVisual_HArray1OfSurfaceStyleElementSelect*)$self->Access();
	}
};

%nodefaultctor Handle_StepVisual_SurfaceStyleFillArea;
class Handle_StepVisual_SurfaceStyleFillArea : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_StepVisual_SurfaceStyleFillArea();
		%feature("autodoc", "1");
		Handle_StepVisual_SurfaceStyleFillArea();
		%feature("autodoc", "1");
		Handle_StepVisual_SurfaceStyleFillArea(const Handle_StepVisual_SurfaceStyleFillArea &aHandle);
		%feature("autodoc", "1");
		Handle_StepVisual_SurfaceStyleFillArea(const StepVisual_SurfaceStyleFillArea *anItem);
		%feature("autodoc", "1");
		Handle_StepVisual_SurfaceStyleFillArea const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepVisual_SurfaceStyleFillArea {
	StepVisual_SurfaceStyleFillArea* GetObject() {
	return (StepVisual_SurfaceStyleFillArea*)$self->Access();
	}
};

%nodefaultctor Handle_StepVisual_PresentedItem;
class Handle_StepVisual_PresentedItem : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_StepVisual_PresentedItem();
		%feature("autodoc", "1");
		Handle_StepVisual_PresentedItem();
		%feature("autodoc", "1");
		Handle_StepVisual_PresentedItem(const Handle_StepVisual_PresentedItem &aHandle);
		%feature("autodoc", "1");
		Handle_StepVisual_PresentedItem(const StepVisual_PresentedItem *anItem);
		%feature("autodoc", "1");
		Handle_StepVisual_PresentedItem const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepVisual_PresentedItem {
	StepVisual_PresentedItem* GetObject() {
	return (StepVisual_PresentedItem*)$self->Access();
	}
};

%nodefaultctor Handle_StepVisual_Template;
class Handle_StepVisual_Template : public Handle_StepRepr_Representation {
	public:
		%feature("autodoc", "1");
		~Handle_StepVisual_Template();
		%feature("autodoc", "1");
		Handle_StepVisual_Template();
		%feature("autodoc", "1");
		Handle_StepVisual_Template(const Handle_StepVisual_Template &aHandle);
		%feature("autodoc", "1");
		Handle_StepVisual_Template(const StepVisual_Template *anItem);
		%feature("autodoc", "1");
		Handle_StepVisual_Template const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepVisual_Template {
	StepVisual_Template* GetObject() {
	return (StepVisual_Template*)$self->Access();
	}
};

%nodefaultctor Handle_StepVisual_AreaInSet;
class Handle_StepVisual_AreaInSet : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_StepVisual_AreaInSet();
		%feature("autodoc", "1");
		Handle_StepVisual_AreaInSet();
		%feature("autodoc", "1");
		Handle_StepVisual_AreaInSet(const Handle_StepVisual_AreaInSet &aHandle);
		%feature("autodoc", "1");
		Handle_StepVisual_AreaInSet(const StepVisual_AreaInSet *anItem);
		%feature("autodoc", "1");
		Handle_StepVisual_AreaInSet const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepVisual_AreaInSet {
	StepVisual_AreaInSet* GetObject() {
	return (StepVisual_AreaInSet*)$self->Access();
	}
};

%nodefaultctor Handle_StepVisual_TextStyleForDefinedFont;
class Handle_StepVisual_TextStyleForDefinedFont : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_StepVisual_TextStyleForDefinedFont();
		%feature("autodoc", "1");
		Handle_StepVisual_TextStyleForDefinedFont();
		%feature("autodoc", "1");
		Handle_StepVisual_TextStyleForDefinedFont(const Handle_StepVisual_TextStyleForDefinedFont &aHandle);
		%feature("autodoc", "1");
		Handle_StepVisual_TextStyleForDefinedFont(const StepVisual_TextStyleForDefinedFont *anItem);
		%feature("autodoc", "1");
		Handle_StepVisual_TextStyleForDefinedFont const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepVisual_TextStyleForDefinedFont {
	StepVisual_TextStyleForDefinedFont* GetObject() {
	return (StepVisual_TextStyleForDefinedFont*)$self->Access();
	}
};

%nodefaultctor Handle_StepVisual_PreDefinedItem;
class Handle_StepVisual_PreDefinedItem : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_StepVisual_PreDefinedItem();
		%feature("autodoc", "1");
		Handle_StepVisual_PreDefinedItem();
		%feature("autodoc", "1");
		Handle_StepVisual_PreDefinedItem(const Handle_StepVisual_PreDefinedItem &aHandle);
		%feature("autodoc", "1");
		Handle_StepVisual_PreDefinedItem(const StepVisual_PreDefinedItem *anItem);
		%feature("autodoc", "1");
		Handle_StepVisual_PreDefinedItem const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepVisual_PreDefinedItem {
	StepVisual_PreDefinedItem* GetObject() {
	return (StepVisual_PreDefinedItem*)$self->Access();
	}
};

%nodefaultctor Handle_StepVisual_PreDefinedCurveFont;
class Handle_StepVisual_PreDefinedCurveFont : public Handle_StepVisual_PreDefinedItem {
	public:
		%feature("autodoc", "1");
		~Handle_StepVisual_PreDefinedCurveFont();
		%feature("autodoc", "1");
		Handle_StepVisual_PreDefinedCurveFont();
		%feature("autodoc", "1");
		Handle_StepVisual_PreDefinedCurveFont(const Handle_StepVisual_PreDefinedCurveFont &aHandle);
		%feature("autodoc", "1");
		Handle_StepVisual_PreDefinedCurveFont(const StepVisual_PreDefinedCurveFont *anItem);
		%feature("autodoc", "1");
		Handle_StepVisual_PreDefinedCurveFont const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepVisual_PreDefinedCurveFont {
	StepVisual_PreDefinedCurveFont* GetObject() {
	return (StepVisual_PreDefinedCurveFont*)$self->Access();
	}
};

%nodefaultctor Handle_StepVisual_HArray1OfBoxCharacteristicSelect;
class Handle_StepVisual_HArray1OfBoxCharacteristicSelect : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_StepVisual_HArray1OfBoxCharacteristicSelect();
		%feature("autodoc", "1");
		Handle_StepVisual_HArray1OfBoxCharacteristicSelect();
		%feature("autodoc", "1");
		Handle_StepVisual_HArray1OfBoxCharacteristicSelect(const Handle_StepVisual_HArray1OfBoxCharacteristicSelect &aHandle);
		%feature("autodoc", "1");
		Handle_StepVisual_HArray1OfBoxCharacteristicSelect(const StepVisual_HArray1OfBoxCharacteristicSelect *anItem);
		%feature("autodoc", "1");
		Handle_StepVisual_HArray1OfBoxCharacteristicSelect const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepVisual_HArray1OfBoxCharacteristicSelect {
	StepVisual_HArray1OfBoxCharacteristicSelect* GetObject() {
	return (StepVisual_HArray1OfBoxCharacteristicSelect*)$self->Access();
	}
};

%nodefaultctor Handle_StepVisual_PreDefinedTextFont;
class Handle_StepVisual_PreDefinedTextFont : public Handle_StepVisual_PreDefinedItem {
	public:
		%feature("autodoc", "1");
		~Handle_StepVisual_PreDefinedTextFont();
		%feature("autodoc", "1");
		Handle_StepVisual_PreDefinedTextFont();
		%feature("autodoc", "1");
		Handle_StepVisual_PreDefinedTextFont(const Handle_StepVisual_PreDefinedTextFont &aHandle);
		%feature("autodoc", "1");
		Handle_StepVisual_PreDefinedTextFont(const StepVisual_PreDefinedTextFont *anItem);
		%feature("autodoc", "1");
		Handle_StepVisual_PreDefinedTextFont const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepVisual_PreDefinedTextFont {
	StepVisual_PreDefinedTextFont* GetObject() {
	return (StepVisual_PreDefinedTextFont*)$self->Access();
	}
};

%nodefaultctor Handle_StepVisual_CurveStyleFontPattern;
class Handle_StepVisual_CurveStyleFontPattern : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_StepVisual_CurveStyleFontPattern();
		%feature("autodoc", "1");
		Handle_StepVisual_CurveStyleFontPattern();
		%feature("autodoc", "1");
		Handle_StepVisual_CurveStyleFontPattern(const Handle_StepVisual_CurveStyleFontPattern &aHandle);
		%feature("autodoc", "1");
		Handle_StepVisual_CurveStyleFontPattern(const StepVisual_CurveStyleFontPattern *anItem);
		%feature("autodoc", "1");
		Handle_StepVisual_CurveStyleFontPattern const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepVisual_CurveStyleFontPattern {
	StepVisual_CurveStyleFontPattern* GetObject() {
	return (StepVisual_CurveStyleFontPattern*)$self->Access();
	}
};

%nodefaultctor Handle_StepVisual_SurfaceStyleUsage;
class Handle_StepVisual_SurfaceStyleUsage : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_StepVisual_SurfaceStyleUsage();
		%feature("autodoc", "1");
		Handle_StepVisual_SurfaceStyleUsage();
		%feature("autodoc", "1");
		Handle_StepVisual_SurfaceStyleUsage(const Handle_StepVisual_SurfaceStyleUsage &aHandle);
		%feature("autodoc", "1");
		Handle_StepVisual_SurfaceStyleUsage(const StepVisual_SurfaceStyleUsage *anItem);
		%feature("autodoc", "1");
		Handle_StepVisual_SurfaceStyleUsage const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepVisual_SurfaceStyleUsage {
	StepVisual_SurfaceStyleUsage* GetObject() {
	return (StepVisual_SurfaceStyleUsage*)$self->Access();
	}
};

%nodefaultctor Handle_StepVisual_PlanarExtent;
class Handle_StepVisual_PlanarExtent : public Handle_StepGeom_GeometricRepresentationItem {
	public:
		%feature("autodoc", "1");
		~Handle_StepVisual_PlanarExtent();
		%feature("autodoc", "1");
		Handle_StepVisual_PlanarExtent();
		%feature("autodoc", "1");
		Handle_StepVisual_PlanarExtent(const Handle_StepVisual_PlanarExtent &aHandle);
		%feature("autodoc", "1");
		Handle_StepVisual_PlanarExtent(const StepVisual_PlanarExtent *anItem);
		%feature("autodoc", "1");
		Handle_StepVisual_PlanarExtent const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepVisual_PlanarExtent {
	StepVisual_PlanarExtent* GetObject() {
	return (StepVisual_PlanarExtent*)$self->Access();
	}
};

%nodefaultctor Handle_StepVisual_PlanarBox;
class Handle_StepVisual_PlanarBox : public Handle_StepVisual_PlanarExtent {
	public:
		%feature("autodoc", "1");
		~Handle_StepVisual_PlanarBox();
		%feature("autodoc", "1");
		Handle_StepVisual_PlanarBox();
		%feature("autodoc", "1");
		Handle_StepVisual_PlanarBox(const Handle_StepVisual_PlanarBox &aHandle);
		%feature("autodoc", "1");
		Handle_StepVisual_PlanarBox(const StepVisual_PlanarBox *anItem);
		%feature("autodoc", "1");
		Handle_StepVisual_PlanarBox const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepVisual_PlanarBox {
	StepVisual_PlanarBox* GetObject() {
	return (StepVisual_PlanarBox*)$self->Access();
	}
};

%nodefaultctor Handle_StepVisual_DraughtingAnnotationOccurrence;
class Handle_StepVisual_DraughtingAnnotationOccurrence : public Handle_StepVisual_AnnotationOccurrence {
	public:
		%feature("autodoc", "1");
		~Handle_StepVisual_DraughtingAnnotationOccurrence();
		%feature("autodoc", "1");
		Handle_StepVisual_DraughtingAnnotationOccurrence();
		%feature("autodoc", "1");
		Handle_StepVisual_DraughtingAnnotationOccurrence(const Handle_StepVisual_DraughtingAnnotationOccurrence &aHandle);
		%feature("autodoc", "1");
		Handle_StepVisual_DraughtingAnnotationOccurrence(const StepVisual_DraughtingAnnotationOccurrence *anItem);
		%feature("autodoc", "1");
		Handle_StepVisual_DraughtingAnnotationOccurrence const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepVisual_DraughtingAnnotationOccurrence {
	StepVisual_DraughtingAnnotationOccurrence* GetObject() {
	return (StepVisual_DraughtingAnnotationOccurrence*)$self->Access();
	}
};

%nodefaultctor Handle_StepVisual_HArray1OfCurveStyleFontPattern;
class Handle_StepVisual_HArray1OfCurveStyleFontPattern : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_StepVisual_HArray1OfCurveStyleFontPattern();
		%feature("autodoc", "1");
		Handle_StepVisual_HArray1OfCurveStyleFontPattern();
		%feature("autodoc", "1");
		Handle_StepVisual_HArray1OfCurveStyleFontPattern(const Handle_StepVisual_HArray1OfCurveStyleFontPattern &aHandle);
		%feature("autodoc", "1");
		Handle_StepVisual_HArray1OfCurveStyleFontPattern(const StepVisual_HArray1OfCurveStyleFontPattern *anItem);
		%feature("autodoc", "1");
		Handle_StepVisual_HArray1OfCurveStyleFontPattern const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepVisual_HArray1OfCurveStyleFontPattern {
	StepVisual_HArray1OfCurveStyleFontPattern* GetObject() {
	return (StepVisual_HArray1OfCurveStyleFontPattern*)$self->Access();
	}
};

%nodefaultctor Handle_StepVisual_HArray1OfPresentationStyleSelect;
class Handle_StepVisual_HArray1OfPresentationStyleSelect : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_StepVisual_HArray1OfPresentationStyleSelect();
		%feature("autodoc", "1");
		Handle_StepVisual_HArray1OfPresentationStyleSelect();
		%feature("autodoc", "1");
		Handle_StepVisual_HArray1OfPresentationStyleSelect(const Handle_StepVisual_HArray1OfPresentationStyleSelect &aHandle);
		%feature("autodoc", "1");
		Handle_StepVisual_HArray1OfPresentationStyleSelect(const StepVisual_HArray1OfPresentationStyleSelect *anItem);
		%feature("autodoc", "1");
		Handle_StepVisual_HArray1OfPresentationStyleSelect const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepVisual_HArray1OfPresentationStyleSelect {
	StepVisual_HArray1OfPresentationStyleSelect* GetObject() {
	return (StepVisual_HArray1OfPresentationStyleSelect*)$self->Access();
	}
};

%nodefaultctor Handle_StepVisual_AnnotationTextOccurrence;
class Handle_StepVisual_AnnotationTextOccurrence : public Handle_StepVisual_AnnotationOccurrence {
	public:
		%feature("autodoc", "1");
		~Handle_StepVisual_AnnotationTextOccurrence();
		%feature("autodoc", "1");
		Handle_StepVisual_AnnotationTextOccurrence();
		%feature("autodoc", "1");
		Handle_StepVisual_AnnotationTextOccurrence(const Handle_StepVisual_AnnotationTextOccurrence &aHandle);
		%feature("autodoc", "1");
		Handle_StepVisual_AnnotationTextOccurrence(const StepVisual_AnnotationTextOccurrence *anItem);
		%feature("autodoc", "1");
		Handle_StepVisual_AnnotationTextOccurrence const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepVisual_AnnotationTextOccurrence {
	StepVisual_AnnotationTextOccurrence* GetObject() {
	return (StepVisual_AnnotationTextOccurrence*)$self->Access();
	}
};

%nodefaultctor Handle_StepVisual_DraughtingPreDefinedCurveFont;
class Handle_StepVisual_DraughtingPreDefinedCurveFont : public Handle_StepVisual_PreDefinedCurveFont {
	public:
		%feature("autodoc", "1");
		~Handle_StepVisual_DraughtingPreDefinedCurveFont();
		%feature("autodoc", "1");
		Handle_StepVisual_DraughtingPreDefinedCurveFont();
		%feature("autodoc", "1");
		Handle_StepVisual_DraughtingPreDefinedCurveFont(const Handle_StepVisual_DraughtingPreDefinedCurveFont &aHandle);
		%feature("autodoc", "1");
		Handle_StepVisual_DraughtingPreDefinedCurveFont(const StepVisual_DraughtingPreDefinedCurveFont *anItem);
		%feature("autodoc", "1");
		Handle_StepVisual_DraughtingPreDefinedCurveFont const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepVisual_DraughtingPreDefinedCurveFont {
	StepVisual_DraughtingPreDefinedCurveFont* GetObject() {
	return (StepVisual_DraughtingPreDefinedCurveFont*)$self->Access();
	}
};

%nodefaultctor Handle_StepVisual_TextLiteral;
class Handle_StepVisual_TextLiteral : public Handle_StepGeom_GeometricRepresentationItem {
	public:
		%feature("autodoc", "1");
		~Handle_StepVisual_TextLiteral();
		%feature("autodoc", "1");
		Handle_StepVisual_TextLiteral();
		%feature("autodoc", "1");
		Handle_StepVisual_TextLiteral(const Handle_StepVisual_TextLiteral &aHandle);
		%feature("autodoc", "1");
		Handle_StepVisual_TextLiteral(const StepVisual_TextLiteral *anItem);
		%feature("autodoc", "1");
		Handle_StepVisual_TextLiteral const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepVisual_TextLiteral {
	StepVisual_TextLiteral* GetObject() {
	return (StepVisual_TextLiteral*)$self->Access();
	}
};

%nodefaultctor Handle_StepVisual_CompositeTextWithExtent;
class Handle_StepVisual_CompositeTextWithExtent : public Handle_StepVisual_CompositeText {
	public:
		%feature("autodoc", "1");
		~Handle_StepVisual_CompositeTextWithExtent();
		%feature("autodoc", "1");
		Handle_StepVisual_CompositeTextWithExtent();
		%feature("autodoc", "1");
		Handle_StepVisual_CompositeTextWithExtent(const Handle_StepVisual_CompositeTextWithExtent &aHandle);
		%feature("autodoc", "1");
		Handle_StepVisual_CompositeTextWithExtent(const StepVisual_CompositeTextWithExtent *anItem);
		%feature("autodoc", "1");
		Handle_StepVisual_CompositeTextWithExtent const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepVisual_CompositeTextWithExtent {
	StepVisual_CompositeTextWithExtent* GetObject() {
	return (StepVisual_CompositeTextWithExtent*)$self->Access();
	}
};

%nodefaultctor Handle_StepVisual_DraughtingModel;
class Handle_StepVisual_DraughtingModel : public Handle_StepRepr_Representation {
	public:
		%feature("autodoc", "1");
		~Handle_StepVisual_DraughtingModel();
		%feature("autodoc", "1");
		Handle_StepVisual_DraughtingModel();
		%feature("autodoc", "1");
		Handle_StepVisual_DraughtingModel(const Handle_StepVisual_DraughtingModel &aHandle);
		%feature("autodoc", "1");
		Handle_StepVisual_DraughtingModel(const StepVisual_DraughtingModel *anItem);
		%feature("autodoc", "1");
		Handle_StepVisual_DraughtingModel const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepVisual_DraughtingModel {
	StepVisual_DraughtingModel* GetObject() {
	return (StepVisual_DraughtingModel*)$self->Access();
	}
};

%nodefaultctor Handle_StepVisual_SurfaceStyleBoundary;
class Handle_StepVisual_SurfaceStyleBoundary : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_StepVisual_SurfaceStyleBoundary();
		%feature("autodoc", "1");
		Handle_StepVisual_SurfaceStyleBoundary();
		%feature("autodoc", "1");
		Handle_StepVisual_SurfaceStyleBoundary(const Handle_StepVisual_SurfaceStyleBoundary &aHandle);
		%feature("autodoc", "1");
		Handle_StepVisual_SurfaceStyleBoundary(const StepVisual_SurfaceStyleBoundary *anItem);
		%feature("autodoc", "1");
		Handle_StepVisual_SurfaceStyleBoundary const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepVisual_SurfaceStyleBoundary {
	StepVisual_SurfaceStyleBoundary* GetObject() {
	return (StepVisual_SurfaceStyleBoundary*)$self->Access();
	}
};

%nodefaultctor Handle_StepVisual_HArray1OfLayeredItem;
class Handle_StepVisual_HArray1OfLayeredItem : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_StepVisual_HArray1OfLayeredItem();
		%feature("autodoc", "1");
		Handle_StepVisual_HArray1OfLayeredItem();
		%feature("autodoc", "1");
		Handle_StepVisual_HArray1OfLayeredItem(const Handle_StepVisual_HArray1OfLayeredItem &aHandle);
		%feature("autodoc", "1");
		Handle_StepVisual_HArray1OfLayeredItem(const StepVisual_HArray1OfLayeredItem *anItem);
		%feature("autodoc", "1");
		Handle_StepVisual_HArray1OfLayeredItem const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepVisual_HArray1OfLayeredItem {
	StepVisual_HArray1OfLayeredItem* GetObject() {
	return (StepVisual_HArray1OfLayeredItem*)$self->Access();
	}
};

%nodefaultctor Handle_StepVisual_PresentationLayerUsage;
class Handle_StepVisual_PresentationLayerUsage : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_StepVisual_PresentationLayerUsage();
		%feature("autodoc", "1");
		Handle_StepVisual_PresentationLayerUsage();
		%feature("autodoc", "1");
		Handle_StepVisual_PresentationLayerUsage(const Handle_StepVisual_PresentationLayerUsage &aHandle);
		%feature("autodoc", "1");
		Handle_StepVisual_PresentationLayerUsage(const StepVisual_PresentationLayerUsage *anItem);
		%feature("autodoc", "1");
		Handle_StepVisual_PresentationLayerUsage const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepVisual_PresentationLayerUsage {
	StepVisual_PresentationLayerUsage* GetObject() {
	return (StepVisual_PresentationLayerUsage*)$self->Access();
	}
};

%nodefaultctor Handle_StepVisual_HArray1OfStyleContextSelect;
class Handle_StepVisual_HArray1OfStyleContextSelect : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_StepVisual_HArray1OfStyleContextSelect();
		%feature("autodoc", "1");
		Handle_StepVisual_HArray1OfStyleContextSelect();
		%feature("autodoc", "1");
		Handle_StepVisual_HArray1OfStyleContextSelect(const Handle_StepVisual_HArray1OfStyleContextSelect &aHandle);
		%feature("autodoc", "1");
		Handle_StepVisual_HArray1OfStyleContextSelect(const StepVisual_HArray1OfStyleContextSelect *anItem);
		%feature("autodoc", "1");
		Handle_StepVisual_HArray1OfStyleContextSelect const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepVisual_HArray1OfStyleContextSelect {
	StepVisual_HArray1OfStyleContextSelect* GetObject() {
	return (StepVisual_HArray1OfStyleContextSelect*)$self->Access();
	}
};

%nodefaultctor Handle_StepVisual_PresentedItemRepresentation;
class Handle_StepVisual_PresentedItemRepresentation : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_StepVisual_PresentedItemRepresentation();
		%feature("autodoc", "1");
		Handle_StepVisual_PresentedItemRepresentation();
		%feature("autodoc", "1");
		Handle_StepVisual_PresentedItemRepresentation(const Handle_StepVisual_PresentedItemRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepVisual_PresentedItemRepresentation(const StepVisual_PresentedItemRepresentation *anItem);
		%feature("autodoc", "1");
		Handle_StepVisual_PresentedItemRepresentation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepVisual_PresentedItemRepresentation {
	StepVisual_PresentedItemRepresentation* GetObject() {
	return (StepVisual_PresentedItemRepresentation*)$self->Access();
	}
};

%nodefaultctor Handle_StepVisual_HArray1OfInvisibleItem;
class Handle_StepVisual_HArray1OfInvisibleItem : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_StepVisual_HArray1OfInvisibleItem();
		%feature("autodoc", "1");
		Handle_StepVisual_HArray1OfInvisibleItem();
		%feature("autodoc", "1");
		Handle_StepVisual_HArray1OfInvisibleItem(const Handle_StepVisual_HArray1OfInvisibleItem &aHandle);
		%feature("autodoc", "1");
		Handle_StepVisual_HArray1OfInvisibleItem(const StepVisual_HArray1OfInvisibleItem *anItem);
		%feature("autodoc", "1");
		Handle_StepVisual_HArray1OfInvisibleItem const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepVisual_HArray1OfInvisibleItem {
	StepVisual_HArray1OfInvisibleItem* GetObject() {
	return (StepVisual_HArray1OfInvisibleItem*)$self->Access();
	}
};

%nodefaultctor Handle_StepVisual_SurfaceStyleSilhouette;
class Handle_StepVisual_SurfaceStyleSilhouette : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_StepVisual_SurfaceStyleSilhouette();
		%feature("autodoc", "1");
		Handle_StepVisual_SurfaceStyleSilhouette();
		%feature("autodoc", "1");
		Handle_StepVisual_SurfaceStyleSilhouette(const Handle_StepVisual_SurfaceStyleSilhouette &aHandle);
		%feature("autodoc", "1");
		Handle_StepVisual_SurfaceStyleSilhouette(const StepVisual_SurfaceStyleSilhouette *anItem);
		%feature("autodoc", "1");
		Handle_StepVisual_SurfaceStyleSilhouette const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepVisual_SurfaceStyleSilhouette {
	StepVisual_SurfaceStyleSilhouette* GetObject() {
	return (StepVisual_SurfaceStyleSilhouette*)$self->Access();
	}
};

%nodefaultctor Handle_StepVisual_BackgroundColour;
class Handle_StepVisual_BackgroundColour : public Handle_StepVisual_Colour {
	public:
		%feature("autodoc", "1");
		~Handle_StepVisual_BackgroundColour();
		%feature("autodoc", "1");
		Handle_StepVisual_BackgroundColour();
		%feature("autodoc", "1");
		Handle_StepVisual_BackgroundColour(const Handle_StepVisual_BackgroundColour &aHandle);
		%feature("autodoc", "1");
		Handle_StepVisual_BackgroundColour(const StepVisual_BackgroundColour *anItem);
		%feature("autodoc", "1");
		Handle_StepVisual_BackgroundColour const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepVisual_BackgroundColour {
	StepVisual_BackgroundColour* GetObject() {
	return (StepVisual_BackgroundColour*)$self->Access();
	}
};

%nodefaultctor Handle_StepVisual_CameraImage3dWithScale;
class Handle_StepVisual_CameraImage3dWithScale : public Handle_StepVisual_CameraImage {
	public:
		%feature("autodoc", "1");
		~Handle_StepVisual_CameraImage3dWithScale();
		%feature("autodoc", "1");
		Handle_StepVisual_CameraImage3dWithScale();
		%feature("autodoc", "1");
		Handle_StepVisual_CameraImage3dWithScale(const Handle_StepVisual_CameraImage3dWithScale &aHandle);
		%feature("autodoc", "1");
		Handle_StepVisual_CameraImage3dWithScale(const StepVisual_CameraImage3dWithScale *anItem);
		%feature("autodoc", "1");
		Handle_StepVisual_CameraImage3dWithScale const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepVisual_CameraImage3dWithScale {
	StepVisual_CameraImage3dWithScale* GetObject() {
	return (StepVisual_CameraImage3dWithScale*)$self->Access();
	}
};

%nodefaultctor Handle_StepVisual_CurveStyleFont;
class Handle_StepVisual_CurveStyleFont : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_StepVisual_CurveStyleFont();
		%feature("autodoc", "1");
		Handle_StepVisual_CurveStyleFont();
		%feature("autodoc", "1");
		Handle_StepVisual_CurveStyleFont(const Handle_StepVisual_CurveStyleFont &aHandle);
		%feature("autodoc", "1");
		Handle_StepVisual_CurveStyleFont(const StepVisual_CurveStyleFont *anItem);
		%feature("autodoc", "1");
		Handle_StepVisual_CurveStyleFont const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepVisual_CurveStyleFont {
	StepVisual_CurveStyleFont* GetObject() {
	return (StepVisual_CurveStyleFont*)$self->Access();
	}
};

%nodefaultctor Handle_StepVisual_SurfaceStyleControlGrid;
class Handle_StepVisual_SurfaceStyleControlGrid : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_StepVisual_SurfaceStyleControlGrid();
		%feature("autodoc", "1");
		Handle_StepVisual_SurfaceStyleControlGrid();
		%feature("autodoc", "1");
		Handle_StepVisual_SurfaceStyleControlGrid(const Handle_StepVisual_SurfaceStyleControlGrid &aHandle);
		%feature("autodoc", "1");
		Handle_StepVisual_SurfaceStyleControlGrid(const StepVisual_SurfaceStyleControlGrid *anItem);
		%feature("autodoc", "1");
		Handle_StepVisual_SurfaceStyleControlGrid const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepVisual_SurfaceStyleControlGrid {
	StepVisual_SurfaceStyleControlGrid* GetObject() {
	return (StepVisual_SurfaceStyleControlGrid*)$self->Access();
	}
};

%nodefaultctor StepVisual_CurveStyleFontPattern;
class StepVisual_CurveStyleFontPattern : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepVisual_CurveStyleFontPattern();
		%feature("autodoc", "1");
		virtual		void Init(const Standard_Real aVisibleSegmentLength, const Standard_Real aInvisibleSegmentLength);
		%feature("autodoc", "1");
		void SetVisibleSegmentLength(const Standard_Real aVisibleSegmentLength);
		%feature("autodoc", "1");
		Standard_Real VisibleSegmentLength() const;
		%feature("autodoc", "1");
		void SetInvisibleSegmentLength(const Standard_Real aInvisibleSegmentLength);
		%feature("autodoc", "1");
		Standard_Real InvisibleSegmentLength() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepVisual_CurveStyleFontPattern();

};
%extend StepVisual_CurveStyleFontPattern {
	Handle_StepVisual_CurveStyleFontPattern GetHandle() {
	return *(Handle_StepVisual_CurveStyleFontPattern*) &$self;
	}
};

%nodefaultctor StepVisual_Invisibility;
class StepVisual_Invisibility : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepVisual_Invisibility();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_StepVisual_HArray1OfInvisibleItem &aInvisibleItems);
		%feature("autodoc", "1");
		void SetInvisibleItems(const Handle_StepVisual_HArray1OfInvisibleItem &aInvisibleItems);
		%feature("autodoc", "1");
		Handle_StepVisual_HArray1OfInvisibleItem InvisibleItems() const;
		%feature("autodoc", "1");
		StepVisual_InvisibleItem InvisibleItemsValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer NbInvisibleItems() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepVisual_Invisibility();

};
%extend StepVisual_Invisibility {
	Handle_StepVisual_Invisibility GetHandle() {
	return *(Handle_StepVisual_Invisibility*) &$self;
	}
};

%nodefaultctor StepVisual_ContextDependentInvisibility;
class StepVisual_ContextDependentInvisibility : public StepVisual_Invisibility {
	public:
		%feature("autodoc", "1");
		StepVisual_ContextDependentInvisibility();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_StepVisual_HArray1OfInvisibleItem &aInvisibleItems, const StepVisual_InvisibilityContext &aPresentationContext);
		%feature("autodoc", "1");
		void SetPresentationContext(const StepVisual_InvisibilityContext &aPresentationContext);
		%feature("autodoc", "1");
		StepVisual_InvisibilityContext PresentationContext() const;
		%feature("autodoc", "1");
		virtual		~StepVisual_ContextDependentInvisibility();

};
%extend StepVisual_ContextDependentInvisibility {
	Handle_StepVisual_ContextDependentInvisibility GetHandle() {
	return *(Handle_StepVisual_ContextDependentInvisibility*) &$self;
	}
};

%nodefaultctor StepVisual_SurfaceStyleElementSelect;
class StepVisual_SurfaceStyleElementSelect : public StepData_SelectType {
	public:
		%feature("autodoc", "1");
		StepVisual_SurfaceStyleElementSelect();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseNum(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Handle_StepVisual_SurfaceStyleFillArea SurfaceStyleFillArea() const;
		%feature("autodoc", "1");
		Handle_StepVisual_SurfaceStyleBoundary SurfaceStyleBoundary() const;
		%feature("autodoc", "1");
		Handle_StepVisual_SurfaceStyleParameterLine SurfaceStyleParameterLine() const;
		%feature("autodoc", "1");
		virtual		~StepVisual_SurfaceStyleElementSelect();

};

%nodefaultctor StepVisual_CameraUsage;
class StepVisual_CameraUsage : public StepRepr_RepresentationMap {
	public:
		%feature("autodoc", "1");
		StepVisual_CameraUsage();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepVisual_CameraUsage();

};
%extend StepVisual_CameraUsage {
	Handle_StepVisual_CameraUsage GetHandle() {
	return *(Handle_StepVisual_CameraUsage*) &$self;
	}
};

%nodefaultctor StepVisual_HArray1OfDirectionCountSelect;
class StepVisual_HArray1OfDirectionCountSelect : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepVisual_HArray1OfDirectionCountSelect(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepVisual_HArray1OfDirectionCountSelect(const Standard_Integer Low, const Standard_Integer Up, const StepVisual_DirectionCountSelect &V);
		%feature("autodoc", "1");
		void Init(const StepVisual_DirectionCountSelect &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepVisual_DirectionCountSelect &Value);
		%feature("autodoc", "1");
		const StepVisual_DirectionCountSelect & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepVisual_DirectionCountSelect & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const StepVisual_Array1OfDirectionCountSelect & Array1() const;
		%feature("autodoc", "1");
		StepVisual_Array1OfDirectionCountSelect & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepVisual_HArray1OfDirectionCountSelect();

};
%extend StepVisual_HArray1OfDirectionCountSelect {
	Handle_StepVisual_HArray1OfDirectionCountSelect GetHandle() {
	return *(Handle_StepVisual_HArray1OfDirectionCountSelect*) &$self;
	}
};

%nodefaultctor StepVisual_Array1OfCurveStyleFontPattern;
class StepVisual_Array1OfCurveStyleFontPattern {
	public:
		%feature("autodoc", "1");
		StepVisual_Array1OfCurveStyleFontPattern(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepVisual_Array1OfCurveStyleFontPattern(const Handle_StepVisual_CurveStyleFontPattern &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Handle_StepVisual_CurveStyleFontPattern &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		~StepVisual_Array1OfCurveStyleFontPattern();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepVisual_Array1OfCurveStyleFontPattern & Assign(const StepVisual_Array1OfCurveStyleFontPattern &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StepVisual_CurveStyleFontPattern &Value);
		%feature("autodoc", "1");
		const Handle_StepVisual_CurveStyleFontPattern & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_StepVisual_CurveStyleFontPattern & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_StepVisual_CurveStyleFontPattern & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_StepVisual_CurveStyleFontPattern & operator()(const Standard_Integer Index);

};

%nodefaultctor StepVisual_Array1OfStyleContextSelect;
class StepVisual_Array1OfStyleContextSelect {
	public:
		%feature("autodoc", "1");
		StepVisual_Array1OfStyleContextSelect(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepVisual_Array1OfStyleContextSelect(const StepVisual_StyleContextSelect &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const StepVisual_StyleContextSelect &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		~StepVisual_Array1OfStyleContextSelect();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepVisual_Array1OfStyleContextSelect & Assign(const StepVisual_Array1OfStyleContextSelect &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepVisual_StyleContextSelect &Value);
		%feature("autodoc", "1");
		const StepVisual_StyleContextSelect & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const StepVisual_StyleContextSelect & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepVisual_StyleContextSelect & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		StepVisual_StyleContextSelect & operator()(const Standard_Integer Index);

};

%nodefaultctor StepVisual_HArray1OfCurveStyleFontPattern;
class StepVisual_HArray1OfCurveStyleFontPattern : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepVisual_HArray1OfCurveStyleFontPattern(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepVisual_HArray1OfCurveStyleFontPattern(const Standard_Integer Low, const Standard_Integer Up, const Handle_StepVisual_CurveStyleFontPattern &V);
		%feature("autodoc", "1");
		void Init(const Handle_StepVisual_CurveStyleFontPattern &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StepVisual_CurveStyleFontPattern &Value);
		%feature("autodoc", "1");
		const Handle_StepVisual_CurveStyleFontPattern & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_StepVisual_CurveStyleFontPattern & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const StepVisual_Array1OfCurveStyleFontPattern & Array1() const;
		%feature("autodoc", "1");
		StepVisual_Array1OfCurveStyleFontPattern & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepVisual_HArray1OfCurveStyleFontPattern();

};
%extend StepVisual_HArray1OfCurveStyleFontPattern {
	Handle_StepVisual_HArray1OfCurveStyleFontPattern GetHandle() {
	return *(Handle_StepVisual_HArray1OfCurveStyleFontPattern*) &$self;
	}
};

%nodefaultctor StepVisual_PresentedItemRepresentation;
class StepVisual_PresentedItemRepresentation : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepVisual_PresentedItemRepresentation();
		%feature("autodoc", "1");
		void Init(const StepVisual_PresentationRepresentationSelect &aPresentation, const Handle_StepVisual_PresentedItem &aItem);
		%feature("autodoc", "1");
		void SetPresentation(const StepVisual_PresentationRepresentationSelect &aPresentation);
		%feature("autodoc", "1");
		StepVisual_PresentationRepresentationSelect Presentation() const;
		%feature("autodoc", "1");
		void SetItem(const Handle_StepVisual_PresentedItem &aItem);
		%feature("autodoc", "1");
		Handle_StepVisual_PresentedItem Item() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepVisual_PresentedItemRepresentation();

};
%extend StepVisual_PresentedItemRepresentation {
	Handle_StepVisual_PresentedItemRepresentation GetHandle() {
	return *(Handle_StepVisual_PresentedItemRepresentation*) &$self;
	}
};

%nodefaultctor StepVisual_PresentationRepresentationSelect;
class StepVisual_PresentationRepresentationSelect : public StepData_SelectType {
	public:
		%feature("autodoc", "1");
		StepVisual_PresentationRepresentationSelect();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseNum(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Handle_StepVisual_PresentationRepresentation PresentationRepresentation() const;
		%feature("autodoc", "1");
		Handle_StepVisual_PresentationSet PresentationSet() const;
		%feature("autodoc", "1");
		virtual		~StepVisual_PresentationRepresentationSelect();

};

%nodefaultctor StepVisual_HArray1OfStyleContextSelect;
class StepVisual_HArray1OfStyleContextSelect : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepVisual_HArray1OfStyleContextSelect(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepVisual_HArray1OfStyleContextSelect(const Standard_Integer Low, const Standard_Integer Up, const StepVisual_StyleContextSelect &V);
		%feature("autodoc", "1");
		void Init(const StepVisual_StyleContextSelect &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepVisual_StyleContextSelect &Value);
		%feature("autodoc", "1");
		const StepVisual_StyleContextSelect & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepVisual_StyleContextSelect & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const StepVisual_Array1OfStyleContextSelect & Array1() const;
		%feature("autodoc", "1");
		StepVisual_Array1OfStyleContextSelect & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepVisual_HArray1OfStyleContextSelect();

};
%extend StepVisual_HArray1OfStyleContextSelect {
	Handle_StepVisual_HArray1OfStyleContextSelect GetHandle() {
	return *(Handle_StepVisual_HArray1OfStyleContextSelect*) &$self;
	}
};

%nodefaultctor StepVisual_BoxCharacteristicSelect;
class StepVisual_BoxCharacteristicSelect {
	public:
		%feature("autodoc", "1");
		~StepVisual_BoxCharacteristicSelect();
		%feature("autodoc", "1");
		StepVisual_BoxCharacteristicSelect();
		%feature("autodoc", "1");
		Standard_Integer TypeOfContent() const;
		%feature("autodoc", "1");
		void SetTypeOfContent(const Standard_Integer aType);
		%feature("autodoc", "1");
		Standard_Real RealValue() const;
		%feature("autodoc", "1");
		void SetRealValue(const Standard_Real aValue);

};

%nodefaultctor StepVisual_HArray1OfPresentationStyleSelect;
class StepVisual_HArray1OfPresentationStyleSelect : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepVisual_HArray1OfPresentationStyleSelect(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepVisual_HArray1OfPresentationStyleSelect(const Standard_Integer Low, const Standard_Integer Up, const StepVisual_PresentationStyleSelect &V);
		%feature("autodoc", "1");
		void Init(const StepVisual_PresentationStyleSelect &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepVisual_PresentationStyleSelect &Value);
		%feature("autodoc", "1");
		const StepVisual_PresentationStyleSelect & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepVisual_PresentationStyleSelect & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const StepVisual_Array1OfPresentationStyleSelect & Array1() const;
		%feature("autodoc", "1");
		StepVisual_Array1OfPresentationStyleSelect & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepVisual_HArray1OfPresentationStyleSelect();

};
%extend StepVisual_HArray1OfPresentationStyleSelect {
	Handle_StepVisual_HArray1OfPresentationStyleSelect GetHandle() {
	return *(Handle_StepVisual_HArray1OfPresentationStyleSelect*) &$self;
	}
};

%nodefaultctor StepVisual_PresentationStyleAssignment;
class StepVisual_PresentationStyleAssignment : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepVisual_PresentationStyleAssignment();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_StepVisual_HArray1OfPresentationStyleSelect &aStyles);
		%feature("autodoc", "1");
		void SetStyles(const Handle_StepVisual_HArray1OfPresentationStyleSelect &aStyles);
		%feature("autodoc", "1");
		Handle_StepVisual_HArray1OfPresentationStyleSelect Styles() const;
		%feature("autodoc", "1");
		StepVisual_PresentationStyleSelect StylesValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer NbStyles() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepVisual_PresentationStyleAssignment();

};
%extend StepVisual_PresentationStyleAssignment {
	Handle_StepVisual_PresentationStyleAssignment GetHandle() {
	return *(Handle_StepVisual_PresentationStyleAssignment*) &$self;
	}
};

%nodefaultctor StepVisual_PresentationStyleByContext;
class StepVisual_PresentationStyleByContext : public StepVisual_PresentationStyleAssignment {
	public:
		%feature("autodoc", "1");
		StepVisual_PresentationStyleByContext();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_StepVisual_HArray1OfPresentationStyleSelect &aStyles, const StepVisual_StyleContextSelect &aStyleContext);
		%feature("autodoc", "1");
		void SetStyleContext(const StepVisual_StyleContextSelect &aStyleContext);
		%feature("autodoc", "1");
		StepVisual_StyleContextSelect StyleContext() const;
		%feature("autodoc", "1");
		virtual		~StepVisual_PresentationStyleByContext();

};
%extend StepVisual_PresentationStyleByContext {
	Handle_StepVisual_PresentationStyleByContext GetHandle() {
	return *(Handle_StepVisual_PresentationStyleByContext*) &$self;
	}
};

%nodefaultctor StepVisual_CurveStyle;
class StepVisual_CurveStyle : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepVisual_CurveStyle();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const StepVisual_CurveStyleFontSelect &aCurveFont, const StepBasic_SizeSelect &aCurveWidth, const Handle_StepVisual_Colour &aCurveColour);
		%feature("autodoc", "1");
		void SetName(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Name() const;
		%feature("autodoc", "1");
		void SetCurveFont(const StepVisual_CurveStyleFontSelect &aCurveFont);
		%feature("autodoc", "1");
		StepVisual_CurveStyleFontSelect CurveFont() const;
		%feature("autodoc", "1");
		void SetCurveWidth(const StepBasic_SizeSelect &aCurveWidth);
		%feature("autodoc", "1");
		StepBasic_SizeSelect CurveWidth() const;
		%feature("autodoc", "1");
		void SetCurveColour(const Handle_StepVisual_Colour &aCurveColour);
		%feature("autodoc", "1");
		Handle_StepVisual_Colour CurveColour() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepVisual_CurveStyle();

};
%extend StepVisual_CurveStyle {
	Handle_StepVisual_CurveStyle GetHandle() {
	return *(Handle_StepVisual_CurveStyle*) &$self;
	}
};

%nodefaultctor StepVisual_SurfaceStyleSilhouette;
class StepVisual_SurfaceStyleSilhouette : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepVisual_SurfaceStyleSilhouette();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_StepVisual_CurveStyle &aStyleOfSilhouette);
		%feature("autodoc", "1");
		void SetStyleOfSilhouette(const Handle_StepVisual_CurveStyle &aStyleOfSilhouette);
		%feature("autodoc", "1");
		Handle_StepVisual_CurveStyle StyleOfSilhouette() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepVisual_SurfaceStyleSilhouette();

};
%extend StepVisual_SurfaceStyleSilhouette {
	Handle_StepVisual_SurfaceStyleSilhouette GetHandle() {
	return *(Handle_StepVisual_SurfaceStyleSilhouette*) &$self;
	}
};

%nodefaultctor StepVisual_Colour;
class StepVisual_Colour : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepVisual_Colour();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepVisual_Colour();

};
%extend StepVisual_Colour {
	Handle_StepVisual_Colour GetHandle() {
	return *(Handle_StepVisual_Colour*) &$self;
	}
};

%nodefaultctor StepVisual_BackgroundColour;
class StepVisual_BackgroundColour : public StepVisual_Colour {
	public:
		%feature("autodoc", "1");
		StepVisual_BackgroundColour();
		%feature("autodoc", "1");
		virtual		void Init(const StepVisual_AreaOrView &aPresentation);
		%feature("autodoc", "1");
		void SetPresentation(const StepVisual_AreaOrView &aPresentation);
		%feature("autodoc", "1");
		StepVisual_AreaOrView Presentation() const;
		%feature("autodoc", "1");
		virtual		~StepVisual_BackgroundColour();

};
%extend StepVisual_BackgroundColour {
	Handle_StepVisual_BackgroundColour GetHandle() {
	return *(Handle_StepVisual_BackgroundColour*) &$self;
	}
};

%nodefaultctor StepVisual_PreDefinedItem;
class StepVisual_PreDefinedItem : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepVisual_PreDefinedItem();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		void SetName(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Name() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepVisual_PreDefinedItem();

};
%extend StepVisual_PreDefinedItem {
	Handle_StepVisual_PreDefinedItem GetHandle() {
	return *(Handle_StepVisual_PreDefinedItem*) &$self;
	}
};

%nodefaultctor StepVisual_PreDefinedCurveFont;
class StepVisual_PreDefinedCurveFont : public StepVisual_PreDefinedItem {
	public:
		%feature("autodoc", "1");
		StepVisual_PreDefinedCurveFont();
		%feature("autodoc", "1");
		virtual		~StepVisual_PreDefinedCurveFont();

};
%extend StepVisual_PreDefinedCurveFont {
	Handle_StepVisual_PreDefinedCurveFont GetHandle() {
	return *(Handle_StepVisual_PreDefinedCurveFont*) &$self;
	}
};

%nodefaultctor StepVisual_DraughtingPreDefinedCurveFont;
class StepVisual_DraughtingPreDefinedCurveFont : public StepVisual_PreDefinedCurveFont {
	public:
		%feature("autodoc", "1");
		StepVisual_DraughtingPreDefinedCurveFont();
		%feature("autodoc", "1");
		virtual		~StepVisual_DraughtingPreDefinedCurveFont();

};
%extend StepVisual_DraughtingPreDefinedCurveFont {
	Handle_StepVisual_DraughtingPreDefinedCurveFont GetHandle() {
	return *(Handle_StepVisual_DraughtingPreDefinedCurveFont*) &$self;
	}
};

%nodefaultctor StepVisual_ViewVolume;
class StepVisual_ViewVolume : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepVisual_ViewVolume();
		%feature("autodoc", "1");
		virtual		void Init(const StepVisual_CentralOrParallel aProjectionType, const Handle_StepGeom_CartesianPoint &aProjectionPoint, const Standard_Real aViewPlaneDistance, const Standard_Real aFrontPlaneDistance, const Standard_Boolean aFrontPlaneClipping, const Standard_Real aBackPlaneDistance, const Standard_Boolean aBackPlaneClipping, const Standard_Boolean aViewVolumeSidesClipping, const Handle_StepVisual_PlanarBox &aViewWindow);
		%feature("autodoc", "1");
		void SetProjectionType(const StepVisual_CentralOrParallel aProjectionType);
		%feature("autodoc", "1");
		StepVisual_CentralOrParallel ProjectionType() const;
		%feature("autodoc", "1");
		void SetProjectionPoint(const Handle_StepGeom_CartesianPoint &aProjectionPoint);
		%feature("autodoc", "1");
		Handle_StepGeom_CartesianPoint ProjectionPoint() const;
		%feature("autodoc", "1");
		void SetViewPlaneDistance(const Standard_Real aViewPlaneDistance);
		%feature("autodoc", "1");
		Standard_Real ViewPlaneDistance() const;
		%feature("autodoc", "1");
		void SetFrontPlaneDistance(const Standard_Real aFrontPlaneDistance);
		%feature("autodoc", "1");
		Standard_Real FrontPlaneDistance() const;
		%feature("autodoc", "1");
		void SetFrontPlaneClipping(const Standard_Boolean aFrontPlaneClipping);
		%feature("autodoc", "1");
		Standard_Boolean FrontPlaneClipping() const;
		%feature("autodoc", "1");
		void SetBackPlaneDistance(const Standard_Real aBackPlaneDistance);
		%feature("autodoc", "1");
		Standard_Real BackPlaneDistance() const;
		%feature("autodoc", "1");
		void SetBackPlaneClipping(const Standard_Boolean aBackPlaneClipping);
		%feature("autodoc", "1");
		Standard_Boolean BackPlaneClipping() const;
		%feature("autodoc", "1");
		void SetViewVolumeSidesClipping(const Standard_Boolean aViewVolumeSidesClipping);
		%feature("autodoc", "1");
		Standard_Boolean ViewVolumeSidesClipping() const;
		%feature("autodoc", "1");
		void SetViewWindow(const Handle_StepVisual_PlanarBox &aViewWindow);
		%feature("autodoc", "1");
		Handle_StepVisual_PlanarBox ViewWindow() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepVisual_ViewVolume();

};
%extend StepVisual_ViewVolume {
	Handle_StepVisual_ViewVolume GetHandle() {
	return *(Handle_StepVisual_ViewVolume*) &$self;
	}
};

%nodefaultctor StepVisual_PreDefinedColour;
class StepVisual_PreDefinedColour : public StepVisual_Colour {
	public:
		%feature("autodoc", "1");
		StepVisual_PreDefinedColour();
		%feature("autodoc", "1");
		void SetPreDefinedItem(const Handle_StepVisual_PreDefinedItem &item);
		%feature("autodoc", "1");
		const Handle_StepVisual_PreDefinedItem & GetPreDefinedItem() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepVisual_PreDefinedColour();

};
%extend StepVisual_PreDefinedColour {
	Handle_StepVisual_PreDefinedColour GetHandle() {
	return *(Handle_StepVisual_PreDefinedColour*) &$self;
	}
};

%nodefaultctor StepVisual_StyledItem;
class StepVisual_StyledItem : public StepRepr_RepresentationItem {
	public:
		%feature("autodoc", "1");
		StepVisual_StyledItem();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepVisual_HArray1OfPresentationStyleAssignment &aStyles, const Handle_StepRepr_RepresentationItem &aItem);
		%feature("autodoc", "1");
		void SetStyles(const Handle_StepVisual_HArray1OfPresentationStyleAssignment &aStyles);
		%feature("autodoc", "1");
		Handle_StepVisual_HArray1OfPresentationStyleAssignment Styles() const;
		%feature("autodoc", "1");
		Handle_StepVisual_PresentationStyleAssignment StylesValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer NbStyles() const;
		%feature("autodoc", "1");
		void SetItem(const Handle_StepRepr_RepresentationItem &aItem);
		%feature("autodoc", "1");
		Handle_StepRepr_RepresentationItem Item() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepVisual_StyledItem();

};
%extend StepVisual_StyledItem {
	Handle_StepVisual_StyledItem GetHandle() {
	return *(Handle_StepVisual_StyledItem*) &$self;
	}
};

%nodefaultctor StepVisual_PlanarExtent;
class StepVisual_PlanarExtent : public StepGeom_GeometricRepresentationItem {
	public:
		%feature("autodoc", "1");
		StepVisual_PlanarExtent();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Standard_Real aSizeInX, const Standard_Real aSizeInY);
		%feature("autodoc", "1");
		void SetSizeInX(const Standard_Real aSizeInX);
		%feature("autodoc", "1");
		Standard_Real SizeInX() const;
		%feature("autodoc", "1");
		void SetSizeInY(const Standard_Real aSizeInY);
		%feature("autodoc", "1");
		Standard_Real SizeInY() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepVisual_PlanarExtent();

};
%extend StepVisual_PlanarExtent {
	Handle_StepVisual_PlanarExtent GetHandle() {
	return *(Handle_StepVisual_PlanarExtent*) &$self;
	}
};

%nodefaultctor StepVisual_PlanarBox;
class StepVisual_PlanarBox : public StepVisual_PlanarExtent {
	public:
		%feature("autodoc", "1");
		StepVisual_PlanarBox();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Standard_Real aSizeInX, const Standard_Real aSizeInY, const StepGeom_Axis2Placement &aPlacement);
		%feature("autodoc", "1");
		void SetPlacement(const StepGeom_Axis2Placement &aPlacement);
		%feature("autodoc", "1");
		StepGeom_Axis2Placement Placement() const;
		%feature("autodoc", "1");
		virtual		~StepVisual_PlanarBox();

};
%extend StepVisual_PlanarBox {
	Handle_StepVisual_PlanarBox GetHandle() {
	return *(Handle_StepVisual_PlanarBox*) &$self;
	}
};

%nodefaultctor StepVisual_OverRidingStyledItem;
class StepVisual_OverRidingStyledItem : public StepVisual_StyledItem {
	public:
		%feature("autodoc", "1");
		StepVisual_OverRidingStyledItem();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepVisual_HArray1OfPresentationStyleAssignment &aStyles, const Handle_StepRepr_RepresentationItem &aItem);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepVisual_HArray1OfPresentationStyleAssignment &aStyles, const Handle_StepRepr_RepresentationItem &aItem, const Handle_StepVisual_StyledItem &aOverRiddenStyle);
		%feature("autodoc", "1");
		void SetOverRiddenStyle(const Handle_StepVisual_StyledItem &aOverRiddenStyle);
		%feature("autodoc", "1");
		Handle_StepVisual_StyledItem OverRiddenStyle() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepVisual_OverRidingStyledItem();

};
%extend StepVisual_OverRidingStyledItem {
	Handle_StepVisual_OverRidingStyledItem GetHandle() {
	return *(Handle_StepVisual_OverRidingStyledItem*) &$self;
	}
};

%nodefaultctor StepVisual_ContextDependentOverRidingStyledItem;
class StepVisual_ContextDependentOverRidingStyledItem : public StepVisual_OverRidingStyledItem {
	public:
		%feature("autodoc", "1");
		StepVisual_ContextDependentOverRidingStyledItem();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepVisual_HArray1OfPresentationStyleAssignment &aStyles, const Handle_StepRepr_RepresentationItem &aItem, const Handle_StepVisual_StyledItem &aOverRiddenStyle, const Handle_StepVisual_HArray1OfStyleContextSelect &aStyleContext);
		%feature("autodoc", "1");
		void SetStyleContext(const Handle_StepVisual_HArray1OfStyleContextSelect &aStyleContext);
		%feature("autodoc", "1");
		Handle_StepVisual_HArray1OfStyleContextSelect StyleContext() const;
		%feature("autodoc", "1");
		StepVisual_StyleContextSelect StyleContextValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer NbStyleContext() const;
		%feature("autodoc", "1");
		virtual		~StepVisual_ContextDependentOverRidingStyledItem();

};
%extend StepVisual_ContextDependentOverRidingStyledItem {
	Handle_StepVisual_ContextDependentOverRidingStyledItem GetHandle() {
	return *(Handle_StepVisual_ContextDependentOverRidingStyledItem*) &$self;
	}
};

%nodefaultctor StepVisual_PresentationRepresentation;
class StepVisual_PresentationRepresentation : public StepRepr_Representation {
	public:
		%feature("autodoc", "1");
		StepVisual_PresentationRepresentation();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepVisual_PresentationRepresentation();

};
%extend StepVisual_PresentationRepresentation {
	Handle_StepVisual_PresentationRepresentation GetHandle() {
	return *(Handle_StepVisual_PresentationRepresentation*) &$self;
	}
};

%nodefaultctor StepVisual_PresentationArea;
class StepVisual_PresentationArea : public StepVisual_PresentationRepresentation {
	public:
		%feature("autodoc", "1");
		StepVisual_PresentationArea();
		%feature("autodoc", "1");
		virtual		~StepVisual_PresentationArea();

};
%extend StepVisual_PresentationArea {
	Handle_StepVisual_PresentationArea GetHandle() {
	return *(Handle_StepVisual_PresentationArea*) &$self;
	}
};

%nodefaultctor StepVisual_MechanicalDesignGeometricPresentationArea;
class StepVisual_MechanicalDesignGeometricPresentationArea : public StepVisual_PresentationArea {
	public:
		%feature("autodoc", "1");
		StepVisual_MechanicalDesignGeometricPresentationArea();
		%feature("autodoc", "1");
		virtual		~StepVisual_MechanicalDesignGeometricPresentationArea();

};
%extend StepVisual_MechanicalDesignGeometricPresentationArea {
	Handle_StepVisual_MechanicalDesignGeometricPresentationArea GetHandle() {
	return *(Handle_StepVisual_MechanicalDesignGeometricPresentationArea*) &$self;
	}
};

%nodefaultctor StepVisual_PresentationSizeAssignmentSelect;
class StepVisual_PresentationSizeAssignmentSelect : public StepData_SelectType {
	public:
		%feature("autodoc", "1");
		StepVisual_PresentationSizeAssignmentSelect();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseNum(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Handle_StepVisual_PresentationView PresentationView() const;
		%feature("autodoc", "1");
		Handle_StepVisual_PresentationArea PresentationArea() const;
		%feature("autodoc", "1");
		Handle_StepVisual_AreaInSet AreaInSet() const;
		%feature("autodoc", "1");
		virtual		~StepVisual_PresentationSizeAssignmentSelect();

};

%nodefaultctor StepVisual_PointStyle;
class StepVisual_PointStyle : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepVisual_PointStyle();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const StepVisual_MarkerSelect &aMarker, const StepBasic_SizeSelect &aMarkerSize, const Handle_StepVisual_Colour &aMarkerColour);
		%feature("autodoc", "1");
		void SetName(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Name() const;
		%feature("autodoc", "1");
		void SetMarker(const StepVisual_MarkerSelect &aMarker);
		%feature("autodoc", "1");
		StepVisual_MarkerSelect Marker() const;
		%feature("autodoc", "1");
		void SetMarkerSize(const StepBasic_SizeSelect &aMarkerSize);
		%feature("autodoc", "1");
		StepBasic_SizeSelect MarkerSize() const;
		%feature("autodoc", "1");
		void SetMarkerColour(const Handle_StepVisual_Colour &aMarkerColour);
		%feature("autodoc", "1");
		Handle_StepVisual_Colour MarkerColour() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepVisual_PointStyle();

};
%extend StepVisual_PointStyle {
	Handle_StepVisual_PointStyle GetHandle() {
	return *(Handle_StepVisual_PointStyle*) &$self;
	}
};

%nodefaultctor StepVisual_MarkerMember;
class StepVisual_MarkerMember : public StepData_SelectInt {
	public:
		%feature("autodoc", "1");
		StepVisual_MarkerMember();
		%feature("autodoc", "1");
		virtual		Standard_Boolean HasName() const;
		%feature("autodoc", "1");
		virtual		Standard_CString Name() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean SetName(const char * name);
		%feature("autodoc", "1");
		virtual		Standard_CString EnumText() const;
		%feature("autodoc", "1");
		virtual		void SetEnumText(const Standard_Integer val, const char * text);
		%feature("autodoc", "1");
		void SetValue(const StepVisual_MarkerType val);
		%feature("autodoc", "1");
		StepVisual_MarkerType Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepVisual_MarkerMember();

};
%extend StepVisual_MarkerMember {
	Handle_StepVisual_MarkerMember GetHandle() {
	return *(Handle_StepVisual_MarkerMember*) &$self;
	}
};

%nodefaultctor StepVisual_TextStyle;
class StepVisual_TextStyle : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepVisual_TextStyle();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepVisual_TextStyleForDefinedFont &aCharacterAppearance);
		%feature("autodoc", "1");
		void SetName(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Name() const;
		%feature("autodoc", "1");
		void SetCharacterAppearance(const Handle_StepVisual_TextStyleForDefinedFont &aCharacterAppearance);
		%feature("autodoc", "1");
		Handle_StepVisual_TextStyleForDefinedFont CharacterAppearance() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepVisual_TextStyle();

};
%extend StepVisual_TextStyle {
	Handle_StepVisual_TextStyle GetHandle() {
	return *(Handle_StepVisual_TextStyle*) &$self;
	}
};

%nodefaultctor StepVisual_TextStyleWithBoxCharacteristics;
class StepVisual_TextStyleWithBoxCharacteristics : public StepVisual_TextStyle {
	public:
		%feature("autodoc", "1");
		StepVisual_TextStyleWithBoxCharacteristics();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepVisual_TextStyleForDefinedFont &aCharacterAppearance, const Handle_StepVisual_HArray1OfBoxCharacteristicSelect &aCharacteristics);
		%feature("autodoc", "1");
		void SetCharacteristics(const Handle_StepVisual_HArray1OfBoxCharacteristicSelect &aCharacteristics);
		%feature("autodoc", "1");
		Handle_StepVisual_HArray1OfBoxCharacteristicSelect Characteristics() const;
		%feature("autodoc", "1");
		StepVisual_BoxCharacteristicSelect CharacteristicsValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer NbCharacteristics() const;
		%feature("autodoc", "1");
		virtual		~StepVisual_TextStyleWithBoxCharacteristics();

};
%extend StepVisual_TextStyleWithBoxCharacteristics {
	Handle_StepVisual_TextStyleWithBoxCharacteristics GetHandle() {
	return *(Handle_StepVisual_TextStyleWithBoxCharacteristics*) &$self;
	}
};

%nodefaultctor StepVisual_MarkerSelect;
class StepVisual_MarkerSelect : public StepData_SelectType {
	public:
		%feature("autodoc", "1");
		StepVisual_MarkerSelect();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseNum(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		virtual		Handle_StepData_SelectMember NewMember() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseMem(const Handle_StepData_SelectMember &sm) const;
		%feature("autodoc", "1");
		Handle_StepVisual_MarkerMember MarkerMember() const;
		%feature("autodoc", "1");
		virtual		~StepVisual_MarkerSelect();

};

%nodefaultctor StepVisual_SurfaceStyleParameterLine;
class StepVisual_SurfaceStyleParameterLine : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepVisual_SurfaceStyleParameterLine();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_StepVisual_CurveStyle &aStyleOfParameterLines, const Handle_StepVisual_HArray1OfDirectionCountSelect &aDirectionCounts);
		%feature("autodoc", "1");
		void SetStyleOfParameterLines(const Handle_StepVisual_CurveStyle &aStyleOfParameterLines);
		%feature("autodoc", "1");
		Handle_StepVisual_CurveStyle StyleOfParameterLines() const;
		%feature("autodoc", "1");
		void SetDirectionCounts(const Handle_StepVisual_HArray1OfDirectionCountSelect &aDirectionCounts);
		%feature("autodoc", "1");
		Handle_StepVisual_HArray1OfDirectionCountSelect DirectionCounts() const;
		%feature("autodoc", "1");
		StepVisual_DirectionCountSelect DirectionCountsValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer NbDirectionCounts() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepVisual_SurfaceStyleParameterLine();

};
%extend StepVisual_SurfaceStyleParameterLine {
	Handle_StepVisual_SurfaceStyleParameterLine GetHandle() {
	return *(Handle_StepVisual_SurfaceStyleParameterLine*) &$self;
	}
};

%nodefaultctor StepVisual_CameraImage;
class StepVisual_CameraImage : public StepRepr_MappedItem {
	public:
		%feature("autodoc", "1");
		StepVisual_CameraImage();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepVisual_CameraImage();

};
%extend StepVisual_CameraImage {
	Handle_StepVisual_CameraImage GetHandle() {
	return *(Handle_StepVisual_CameraImage*) &$self;
	}
};

%nodefaultctor StepVisual_CameraImage3dWithScale;
class StepVisual_CameraImage3dWithScale : public StepVisual_CameraImage {
	public:
		%feature("autodoc", "1");
		StepVisual_CameraImage3dWithScale();
		%feature("autodoc", "1");
		virtual		~StepVisual_CameraImage3dWithScale();

};
%extend StepVisual_CameraImage3dWithScale {
	Handle_StepVisual_CameraImage3dWithScale GetHandle() {
	return *(Handle_StepVisual_CameraImage3dWithScale*) &$self;
	}
};

%nodefaultctor StepVisual_CompositeText;
class StepVisual_CompositeText : public StepGeom_GeometricRepresentationItem {
	public:
		%feature("autodoc", "1");
		StepVisual_CompositeText();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepVisual_HArray1OfTextOrCharacter &aCollectedText);
		%feature("autodoc", "1");
		void SetCollectedText(const Handle_StepVisual_HArray1OfTextOrCharacter &aCollectedText);
		%feature("autodoc", "1");
		Handle_StepVisual_HArray1OfTextOrCharacter CollectedText() const;
		%feature("autodoc", "1");
		StepVisual_TextOrCharacter CollectedTextValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer NbCollectedText() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepVisual_CompositeText();

};
%extend StepVisual_CompositeText {
	Handle_StepVisual_CompositeText GetHandle() {
	return *(Handle_StepVisual_CompositeText*) &$self;
	}
};

%nodefaultctor StepVisual_PresentationStyleSelect;
class StepVisual_PresentationStyleSelect : public StepData_SelectType {
	public:
		%feature("autodoc", "1");
		StepVisual_PresentationStyleSelect();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseNum(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Handle_StepVisual_PointStyle PointStyle() const;
		%feature("autodoc", "1");
		Handle_StepVisual_CurveStyle CurveStyle() const;
		%feature("autodoc", "1");
		Handle_StepVisual_SurfaceStyleUsage SurfaceStyleUsage() const;
		%feature("autodoc", "1");
		virtual		~StepVisual_PresentationStyleSelect();

};

%nodefaultctor StepVisual_ExternallyDefinedCurveFont;
class StepVisual_ExternallyDefinedCurveFont : public StepBasic_ExternallyDefinedItem {
	public:
		%feature("autodoc", "1");
		StepVisual_ExternallyDefinedCurveFont();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepVisual_ExternallyDefinedCurveFont();

};
%extend StepVisual_ExternallyDefinedCurveFont {
	Handle_StepVisual_ExternallyDefinedCurveFont GetHandle() {
	return *(Handle_StepVisual_ExternallyDefinedCurveFont*) &$self;
	}
};

%nodefaultctor StepVisual_HArray1OfLayeredItem;
class StepVisual_HArray1OfLayeredItem : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepVisual_HArray1OfLayeredItem(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepVisual_HArray1OfLayeredItem(const Standard_Integer Low, const Standard_Integer Up, const StepVisual_LayeredItem &V);
		%feature("autodoc", "1");
		void Init(const StepVisual_LayeredItem &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepVisual_LayeredItem &Value);
		%feature("autodoc", "1");
		const StepVisual_LayeredItem & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepVisual_LayeredItem & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const StepVisual_Array1OfLayeredItem & Array1() const;
		%feature("autodoc", "1");
		StepVisual_Array1OfLayeredItem & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepVisual_HArray1OfLayeredItem();

};
%extend StepVisual_HArray1OfLayeredItem {
	Handle_StepVisual_HArray1OfLayeredItem GetHandle() {
	return *(Handle_StepVisual_HArray1OfLayeredItem*) &$self;
	}
};

%nodefaultctor StepVisual_ColourSpecification;
class StepVisual_ColourSpecification : public StepVisual_Colour {
	public:
		%feature("autodoc", "1");
		StepVisual_ColourSpecification();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		void SetName(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Name() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepVisual_ColourSpecification();

};
%extend StepVisual_ColourSpecification {
	Handle_StepVisual_ColourSpecification GetHandle() {
	return *(Handle_StepVisual_ColourSpecification*) &$self;
	}
};

%nodefaultctor StepVisual_ColourRgb;
class StepVisual_ColourRgb : public StepVisual_ColourSpecification {
	public:
		%feature("autodoc", "1");
		StepVisual_ColourRgb();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Standard_Real aRed, const Standard_Real aGreen, const Standard_Real aBlue);
		%feature("autodoc", "1");
		void SetRed(const Standard_Real aRed);
		%feature("autodoc", "1");
		Standard_Real Red() const;
		%feature("autodoc", "1");
		void SetGreen(const Standard_Real aGreen);
		%feature("autodoc", "1");
		Standard_Real Green() const;
		%feature("autodoc", "1");
		void SetBlue(const Standard_Real aBlue);
		%feature("autodoc", "1");
		Standard_Real Blue() const;
		%feature("autodoc", "1");
		virtual		~StepVisual_ColourRgb();

};
%extend StepVisual_ColourRgb {
	Handle_StepVisual_ColourRgb GetHandle() {
	return *(Handle_StepVisual_ColourRgb*) &$self;
	}
};

%nodefaultctor StepVisual_Array1OfTextOrCharacter;
class StepVisual_Array1OfTextOrCharacter {
	public:
		%feature("autodoc", "1");
		StepVisual_Array1OfTextOrCharacter(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepVisual_Array1OfTextOrCharacter(const StepVisual_TextOrCharacter &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const StepVisual_TextOrCharacter &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		~StepVisual_Array1OfTextOrCharacter();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepVisual_Array1OfTextOrCharacter & Assign(const StepVisual_Array1OfTextOrCharacter &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepVisual_TextOrCharacter &Value);
		%feature("autodoc", "1");
		const StepVisual_TextOrCharacter & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const StepVisual_TextOrCharacter & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepVisual_TextOrCharacter & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		StepVisual_TextOrCharacter & operator()(const Standard_Integer Index);

};

%nodefaultctor StepVisual_PresentationLayerAssignment;
class StepVisual_PresentationLayerAssignment : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepVisual_PresentationLayerAssignment();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_TCollection_HAsciiString &aDescription, const Handle_StepVisual_HArray1OfLayeredItem &aAssignedItems);
		%feature("autodoc", "1");
		void SetName(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Name() const;
		%feature("autodoc", "1");
		void SetDescription(const Handle_TCollection_HAsciiString &aDescription);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Description() const;
		%feature("autodoc", "1");
		void SetAssignedItems(const Handle_StepVisual_HArray1OfLayeredItem &aAssignedItems);
		%feature("autodoc", "1");
		Handle_StepVisual_HArray1OfLayeredItem AssignedItems() const;
		%feature("autodoc", "1");
		StepVisual_LayeredItem AssignedItemsValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer NbAssignedItems() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepVisual_PresentationLayerAssignment();

};
%extend StepVisual_PresentationLayerAssignment {
	Handle_StepVisual_PresentationLayerAssignment GetHandle() {
	return *(Handle_StepVisual_PresentationLayerAssignment*) &$self;
	}
};

%nodefaultctor StepVisual_FillAreaStyleColour;
class StepVisual_FillAreaStyleColour : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepVisual_FillAreaStyleColour();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepVisual_Colour &aFillColour);
		%feature("autodoc", "1");
		void SetName(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Name() const;
		%feature("autodoc", "1");
		void SetFillColour(const Handle_StepVisual_Colour &aFillColour);
		%feature("autodoc", "1");
		Handle_StepVisual_Colour FillColour() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepVisual_FillAreaStyleColour();

};
%extend StepVisual_FillAreaStyleColour {
	Handle_StepVisual_FillAreaStyleColour GetHandle() {
	return *(Handle_StepVisual_FillAreaStyleColour*) &$self;
	}
};

%nodefaultctor StepVisual_InvisibleItem;
class StepVisual_InvisibleItem : public StepData_SelectType {
	public:
		%feature("autodoc", "1");
		StepVisual_InvisibleItem();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseNum(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Handle_StepVisual_StyledItem StyledItem() const;
		%feature("autodoc", "1");
		Handle_StepVisual_PresentationLayerAssignment PresentationLayerAssignment() const;
		%feature("autodoc", "1");
		Handle_StepVisual_PresentationRepresentation PresentationRepresentation() const;
		%feature("autodoc", "1");
		virtual		~StepVisual_InvisibleItem();

};

%nodefaultctor StepVisual_PresentationView;
class StepVisual_PresentationView : public StepVisual_PresentationRepresentation {
	public:
		%feature("autodoc", "1");
		StepVisual_PresentationView();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepVisual_PresentationView();

};
%extend StepVisual_PresentationView {
	Handle_StepVisual_PresentationView GetHandle() {
	return *(Handle_StepVisual_PresentationView*) &$self;
	}
};

%nodefaultctor StepVisual_PresentationLayerUsage;
class StepVisual_PresentationLayerUsage : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepVisual_PresentationLayerUsage();
		%feature("autodoc", "1");
		void Init(const Handle_StepVisual_PresentationLayerAssignment &aAssignment, const Handle_StepVisual_PresentationRepresentation &aPresentation);
		%feature("autodoc", "1");
		void SetAssignment(const Handle_StepVisual_PresentationLayerAssignment &aAssignment);
		%feature("autodoc", "1");
		Handle_StepVisual_PresentationLayerAssignment Assignment() const;
		%feature("autodoc", "1");
		void SetPresentation(const Handle_StepVisual_PresentationRepresentation &aPresentation);
		%feature("autodoc", "1");
		Handle_StepVisual_PresentationRepresentation Presentation() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepVisual_PresentationLayerUsage();

};
%extend StepVisual_PresentationLayerUsage {
	Handle_StepVisual_PresentationLayerUsage GetHandle() {
	return *(Handle_StepVisual_PresentationLayerUsage*) &$self;
	}
};

%nodefaultctor StepVisual_TextLiteral;
class StepVisual_TextLiteral : public StepGeom_GeometricRepresentationItem {
	public:
		%feature("autodoc", "1");
		StepVisual_TextLiteral();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_TCollection_HAsciiString &aLiteral, const StepGeom_Axis2Placement &aPlacement, const Handle_TCollection_HAsciiString &aAlignment, const StepVisual_TextPath aPath, const StepVisual_FontSelect &aFont);
		%feature("autodoc", "1");
		void SetLiteral(const Handle_TCollection_HAsciiString &aLiteral);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Literal() const;
		%feature("autodoc", "1");
		void SetPlacement(const StepGeom_Axis2Placement &aPlacement);
		%feature("autodoc", "1");
		StepGeom_Axis2Placement Placement() const;
		%feature("autodoc", "1");
		void SetAlignment(const Handle_TCollection_HAsciiString &aAlignment);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Alignment() const;
		%feature("autodoc", "1");
		void SetPath(const StepVisual_TextPath aPath);
		%feature("autodoc", "1");
		StepVisual_TextPath Path() const;
		%feature("autodoc", "1");
		void SetFont(const StepVisual_FontSelect &aFont);
		%feature("autodoc", "1");
		StepVisual_FontSelect Font() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepVisual_TextLiteral();

};
%extend StepVisual_TextLiteral {
	Handle_StepVisual_TextLiteral GetHandle() {
	return *(Handle_StepVisual_TextLiteral*) &$self;
	}
};

%nodefaultctor StepVisual_PresentationSize;
class StepVisual_PresentationSize : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepVisual_PresentationSize();
		%feature("autodoc", "1");
		virtual		void Init(const StepVisual_PresentationSizeAssignmentSelect &aUnit, const Handle_StepVisual_PlanarBox &aSize);
		%feature("autodoc", "1");
		void SetUnit(const StepVisual_PresentationSizeAssignmentSelect &aUnit);
		%feature("autodoc", "1");
		StepVisual_PresentationSizeAssignmentSelect Unit() const;
		%feature("autodoc", "1");
		void SetSize(const Handle_StepVisual_PlanarBox &aSize);
		%feature("autodoc", "1");
		Handle_StepVisual_PlanarBox Size() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepVisual_PresentationSize();

};
%extend StepVisual_PresentationSize {
	Handle_StepVisual_PresentationSize GetHandle() {
	return *(Handle_StepVisual_PresentationSize*) &$self;
	}
};

%nodefaultctor StepVisual_Array1OfFillStyleSelect;
class StepVisual_Array1OfFillStyleSelect {
	public:
		%feature("autodoc", "1");
		StepVisual_Array1OfFillStyleSelect(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepVisual_Array1OfFillStyleSelect(const StepVisual_FillStyleSelect &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const StepVisual_FillStyleSelect &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		~StepVisual_Array1OfFillStyleSelect();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepVisual_Array1OfFillStyleSelect & Assign(const StepVisual_Array1OfFillStyleSelect &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepVisual_FillStyleSelect &Value);
		%feature("autodoc", "1");
		const StepVisual_FillStyleSelect & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const StepVisual_FillStyleSelect & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepVisual_FillStyleSelect & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		StepVisual_FillStyleSelect & operator()(const Standard_Integer Index);

};

%nodefaultctor StepVisual_TextStyleForDefinedFont;
class StepVisual_TextStyleForDefinedFont : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepVisual_TextStyleForDefinedFont();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_StepVisual_Colour &aTextColour);
		%feature("autodoc", "1");
		void SetTextColour(const Handle_StepVisual_Colour &aTextColour);
		%feature("autodoc", "1");
		Handle_StepVisual_Colour TextColour() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepVisual_TextStyleForDefinedFont();

};
%extend StepVisual_TextStyleForDefinedFont {
	Handle_StepVisual_TextStyleForDefinedFont GetHandle() {
	return *(Handle_StepVisual_TextStyleForDefinedFont*) &$self;
	}
};

%nodefaultctor StepVisual_CameraModel;
class StepVisual_CameraModel : public StepGeom_GeometricRepresentationItem {
	public:
		%feature("autodoc", "1");
		StepVisual_CameraModel();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepVisual_CameraModel();

};
%extend StepVisual_CameraModel {
	Handle_StepVisual_CameraModel GetHandle() {
	return *(Handle_StepVisual_CameraModel*) &$self;
	}
};

%nodefaultctor StepVisual_CameraModelD2;
class StepVisual_CameraModelD2 : public StepVisual_CameraModel {
	public:
		%feature("autodoc", "1");
		StepVisual_CameraModelD2();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepVisual_PlanarBox &aViewWindow, const Standard_Boolean aViewWindowClipping);
		%feature("autodoc", "1");
		void SetViewWindow(const Handle_StepVisual_PlanarBox &aViewWindow);
		%feature("autodoc", "1");
		Handle_StepVisual_PlanarBox ViewWindow() const;
		%feature("autodoc", "1");
		void SetViewWindowClipping(const Standard_Boolean aViewWindowClipping);
		%feature("autodoc", "1");
		Standard_Boolean ViewWindowClipping() const;
		%feature("autodoc", "1");
		virtual		~StepVisual_CameraModelD2();

};
%extend StepVisual_CameraModelD2 {
	Handle_StepVisual_CameraModelD2 GetHandle() {
	return *(Handle_StepVisual_CameraModelD2*) &$self;
	}
};

%nodefaultctor StepVisual_CurveStyleFont;
class StepVisual_CurveStyleFont : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepVisual_CurveStyleFont();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepVisual_HArray1OfCurveStyleFontPattern &aPatternList);
		%feature("autodoc", "1");
		void SetName(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Name() const;
		%feature("autodoc", "1");
		void SetPatternList(const Handle_StepVisual_HArray1OfCurveStyleFontPattern &aPatternList);
		%feature("autodoc", "1");
		Handle_StepVisual_HArray1OfCurveStyleFontPattern PatternList() const;
		%feature("autodoc", "1");
		Handle_StepVisual_CurveStyleFontPattern PatternListValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer NbPatternList() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepVisual_CurveStyleFont();

};
%extend StepVisual_CurveStyleFont {
	Handle_StepVisual_CurveStyleFont GetHandle() {
	return *(Handle_StepVisual_CurveStyleFont*) &$self;
	}
};

%nodefaultctor StepVisual_SurfaceStyleFillArea;
class StepVisual_SurfaceStyleFillArea : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepVisual_SurfaceStyleFillArea();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_StepVisual_FillAreaStyle &aFillArea);
		%feature("autodoc", "1");
		void SetFillArea(const Handle_StepVisual_FillAreaStyle &aFillArea);
		%feature("autodoc", "1");
		Handle_StepVisual_FillAreaStyle FillArea() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepVisual_SurfaceStyleFillArea();

};
%extend StepVisual_SurfaceStyleFillArea {
	Handle_StepVisual_SurfaceStyleFillArea GetHandle() {
	return *(Handle_StepVisual_SurfaceStyleFillArea*) &$self;
	}
};

%nodefaultctor StepVisual_PresentationSet;
class StepVisual_PresentationSet : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepVisual_PresentationSet();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepVisual_PresentationSet();

};
%extend StepVisual_PresentationSet {
	Handle_StepVisual_PresentationSet GetHandle() {
	return *(Handle_StepVisual_PresentationSet*) &$self;
	}
};

%nodefaultctor StepVisual_ExternallyDefinedTextFont;
class StepVisual_ExternallyDefinedTextFont : public StepBasic_ExternallyDefinedItem {
	public:
		%feature("autodoc", "1");
		StepVisual_ExternallyDefinedTextFont();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepVisual_ExternallyDefinedTextFont();

};
%extend StepVisual_ExternallyDefinedTextFont {
	Handle_StepVisual_ExternallyDefinedTextFont GetHandle() {
	return *(Handle_StepVisual_ExternallyDefinedTextFont*) &$self;
	}
};

%nodefaultctor StepVisual_SurfaceSideStyle;
class StepVisual_SurfaceSideStyle : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepVisual_SurfaceSideStyle();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepVisual_HArray1OfSurfaceStyleElementSelect &aStyles);
		%feature("autodoc", "1");
		void SetName(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Name() const;
		%feature("autodoc", "1");
		void SetStyles(const Handle_StepVisual_HArray1OfSurfaceStyleElementSelect &aStyles);
		%feature("autodoc", "1");
		Handle_StepVisual_HArray1OfSurfaceStyleElementSelect Styles() const;
		%feature("autodoc", "1");
		StepVisual_SurfaceStyleElementSelect StylesValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer NbStyles() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepVisual_SurfaceSideStyle();

};
%extend StepVisual_SurfaceSideStyle {
	Handle_StepVisual_SurfaceSideStyle GetHandle() {
	return *(Handle_StepVisual_SurfaceSideStyle*) &$self;
	}
};

%nodefaultctor StepVisual_SurfaceStyleUsage;
class StepVisual_SurfaceStyleUsage : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepVisual_SurfaceStyleUsage();
		%feature("autodoc", "1");
		virtual		void Init(const StepVisual_SurfaceSide aSide, const Handle_StepVisual_SurfaceSideStyle &aStyle);
		%feature("autodoc", "1");
		void SetSide(const StepVisual_SurfaceSide aSide);
		%feature("autodoc", "1");
		StepVisual_SurfaceSide Side() const;
		%feature("autodoc", "1");
		void SetStyle(const Handle_StepVisual_SurfaceSideStyle &aStyle);
		%feature("autodoc", "1");
		Handle_StepVisual_SurfaceSideStyle Style() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepVisual_SurfaceStyleUsage();

};
%extend StepVisual_SurfaceStyleUsage {
	Handle_StepVisual_SurfaceStyleUsage GetHandle() {
	return *(Handle_StepVisual_SurfaceStyleUsage*) &$self;
	}
};

%nodefaultctor StepVisual_AnnotationText;
class StepVisual_AnnotationText : public StepRepr_MappedItem {
	public:
		%feature("autodoc", "1");
		StepVisual_AnnotationText();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepVisual_AnnotationText();

};
%extend StepVisual_AnnotationText {
	Handle_StepVisual_AnnotationText GetHandle() {
	return *(Handle_StepVisual_AnnotationText*) &$self;
	}
};

%nodefaultctor StepVisual_HArray1OfSurfaceStyleElementSelect;
class StepVisual_HArray1OfSurfaceStyleElementSelect : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepVisual_HArray1OfSurfaceStyleElementSelect(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepVisual_HArray1OfSurfaceStyleElementSelect(const Standard_Integer Low, const Standard_Integer Up, const StepVisual_SurfaceStyleElementSelect &V);
		%feature("autodoc", "1");
		void Init(const StepVisual_SurfaceStyleElementSelect &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepVisual_SurfaceStyleElementSelect &Value);
		%feature("autodoc", "1");
		const StepVisual_SurfaceStyleElementSelect & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepVisual_SurfaceStyleElementSelect & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const StepVisual_Array1OfSurfaceStyleElementSelect & Array1() const;
		%feature("autodoc", "1");
		StepVisual_Array1OfSurfaceStyleElementSelect & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepVisual_HArray1OfSurfaceStyleElementSelect();

};
%extend StepVisual_HArray1OfSurfaceStyleElementSelect {
	Handle_StepVisual_HArray1OfSurfaceStyleElementSelect GetHandle() {
	return *(Handle_StepVisual_HArray1OfSurfaceStyleElementSelect*) &$self;
	}
};

%nodefaultctor StepVisual_Array1OfBoxCharacteristicSelect;
class StepVisual_Array1OfBoxCharacteristicSelect {
	public:
		%feature("autodoc", "1");
		StepVisual_Array1OfBoxCharacteristicSelect(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepVisual_Array1OfBoxCharacteristicSelect(const StepVisual_BoxCharacteristicSelect &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const StepVisual_BoxCharacteristicSelect &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		~StepVisual_Array1OfBoxCharacteristicSelect();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepVisual_Array1OfBoxCharacteristicSelect & Assign(const StepVisual_Array1OfBoxCharacteristicSelect &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepVisual_BoxCharacteristicSelect &Value);
		%feature("autodoc", "1");
		const StepVisual_BoxCharacteristicSelect & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const StepVisual_BoxCharacteristicSelect & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepVisual_BoxCharacteristicSelect & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		StepVisual_BoxCharacteristicSelect & operator()(const Standard_Integer Index);

};

%nodefaultctor StepVisual_StyleContextSelect;
class StepVisual_StyleContextSelect : public StepData_SelectType {
	public:
		%feature("autodoc", "1");
		StepVisual_StyleContextSelect();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseNum(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Handle_StepRepr_Representation Representation() const;
		%feature("autodoc", "1");
		Handle_StepRepr_RepresentationItem RepresentationItem() const;
		%feature("autodoc", "1");
		Handle_StepVisual_PresentationSet PresentationSet() const;
		%feature("autodoc", "1");
		virtual		~StepVisual_StyleContextSelect();

};

%nodefaultctor StepVisual_AreaInSet;
class StepVisual_AreaInSet : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepVisual_AreaInSet();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_StepVisual_PresentationArea &aArea, const Handle_StepVisual_PresentationSet &aInSet);
		%feature("autodoc", "1");
		void SetArea(const Handle_StepVisual_PresentationArea &aArea);
		%feature("autodoc", "1");
		Handle_StepVisual_PresentationArea Area() const;
		%feature("autodoc", "1");
		void SetInSet(const Handle_StepVisual_PresentationSet &aInSet);
		%feature("autodoc", "1");
		Handle_StepVisual_PresentationSet InSet() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepVisual_AreaInSet();

};
%extend StepVisual_AreaInSet {
	Handle_StepVisual_AreaInSet GetHandle() {
	return *(Handle_StepVisual_AreaInSet*) &$self;
	}
};

%nodefaultctor StepVisual_CameraImage2dWithScale;
class StepVisual_CameraImage2dWithScale : public StepVisual_CameraImage {
	public:
		%feature("autodoc", "1");
		StepVisual_CameraImage2dWithScale();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepVisual_CameraImage2dWithScale();

};
%extend StepVisual_CameraImage2dWithScale {
	Handle_StepVisual_CameraImage2dWithScale GetHandle() {
	return *(Handle_StepVisual_CameraImage2dWithScale*) &$self;
	}
};

%nodefaultctor StepVisual_CurveStyleFontSelect;
class StepVisual_CurveStyleFontSelect : public StepData_SelectType {
	public:
		%feature("autodoc", "1");
		StepVisual_CurveStyleFontSelect();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseNum(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Handle_StepVisual_CurveStyleFont CurveStyleFont() const;
		%feature("autodoc", "1");
		Handle_StepVisual_PreDefinedCurveFont PreDefinedCurveFont() const;
		%feature("autodoc", "1");
		Handle_StepVisual_ExternallyDefinedCurveFont ExternallyDefinedCurveFont() const;
		%feature("autodoc", "1");
		virtual		~StepVisual_CurveStyleFontSelect();

};

%nodefaultctor StepVisual_Template;
class StepVisual_Template : public StepRepr_Representation {
	public:
		%feature("autodoc", "1");
		StepVisual_Template();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepVisual_Template();

};
%extend StepVisual_Template {
	Handle_StepVisual_Template GetHandle() {
	return *(Handle_StepVisual_Template*) &$self;
	}
};

%nodefaultctor StepVisual_Array1OfPresentationStyleAssignment;
class StepVisual_Array1OfPresentationStyleAssignment {
	public:
		%feature("autodoc", "1");
		StepVisual_Array1OfPresentationStyleAssignment(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepVisual_Array1OfPresentationStyleAssignment(const Handle_StepVisual_PresentationStyleAssignment &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Handle_StepVisual_PresentationStyleAssignment &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		~StepVisual_Array1OfPresentationStyleAssignment();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepVisual_Array1OfPresentationStyleAssignment & Assign(const StepVisual_Array1OfPresentationStyleAssignment &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StepVisual_PresentationStyleAssignment &Value);
		%feature("autodoc", "1");
		const Handle_StepVisual_PresentationStyleAssignment & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_StepVisual_PresentationStyleAssignment & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_StepVisual_PresentationStyleAssignment & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_StepVisual_PresentationStyleAssignment & operator()(const Standard_Integer Index);

};

%nodefaultctor StepVisual_LayeredItem;
class StepVisual_LayeredItem : public StepData_SelectType {
	public:
		%feature("autodoc", "1");
		StepVisual_LayeredItem();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseNum(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Handle_StepVisual_PresentationRepresentation PresentationRepresentation() const;
		%feature("autodoc", "1");
		Handle_StepRepr_RepresentationItem RepresentationItem() const;
		%feature("autodoc", "1");
		virtual		~StepVisual_LayeredItem();

};

%nodefaultctor StepVisual_FillAreaStyle;
class StepVisual_FillAreaStyle : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepVisual_FillAreaStyle();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepVisual_HArray1OfFillStyleSelect &aFillStyles);
		%feature("autodoc", "1");
		void SetName(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Name() const;
		%feature("autodoc", "1");
		void SetFillStyles(const Handle_StepVisual_HArray1OfFillStyleSelect &aFillStyles);
		%feature("autodoc", "1");
		Handle_StepVisual_HArray1OfFillStyleSelect FillStyles() const;
		%feature("autodoc", "1");
		StepVisual_FillStyleSelect FillStylesValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer NbFillStyles() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepVisual_FillAreaStyle();

};
%extend StepVisual_FillAreaStyle {
	Handle_StepVisual_FillAreaStyle GetHandle() {
	return *(Handle_StepVisual_FillAreaStyle*) &$self;
	}
};

%nodefaultctor StepVisual_AnnotationOccurrence;
class StepVisual_AnnotationOccurrence : public StepVisual_StyledItem {
	public:
		%feature("autodoc", "1");
		StepVisual_AnnotationOccurrence();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepVisual_AnnotationOccurrence();

};
%extend StepVisual_AnnotationOccurrence {
	Handle_StepVisual_AnnotationOccurrence GetHandle() {
	return *(Handle_StepVisual_AnnotationOccurrence*) &$self;
	}
};

%nodefaultctor StepVisual_CompositeTextWithExtent;
class StepVisual_CompositeTextWithExtent : public StepVisual_CompositeText {
	public:
		%feature("autodoc", "1");
		StepVisual_CompositeTextWithExtent();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepVisual_HArray1OfTextOrCharacter &aCollectedText);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepVisual_HArray1OfTextOrCharacter &aCollectedText, const Handle_StepVisual_PlanarExtent &aExtent);
		%feature("autodoc", "1");
		void SetExtent(const Handle_StepVisual_PlanarExtent &aExtent);
		%feature("autodoc", "1");
		Handle_StepVisual_PlanarExtent Extent() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepVisual_CompositeTextWithExtent();

};
%extend StepVisual_CompositeTextWithExtent {
	Handle_StepVisual_CompositeTextWithExtent GetHandle() {
	return *(Handle_StepVisual_CompositeTextWithExtent*) &$self;
	}
};

%nodefaultctor StepVisual_SurfaceStyleBoundary;
class StepVisual_SurfaceStyleBoundary : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepVisual_SurfaceStyleBoundary();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_StepVisual_CurveStyle &aStyleOfBoundary);
		%feature("autodoc", "1");
		void SetStyleOfBoundary(const Handle_StepVisual_CurveStyle &aStyleOfBoundary);
		%feature("autodoc", "1");
		Handle_StepVisual_CurveStyle StyleOfBoundary() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepVisual_SurfaceStyleBoundary();

};
%extend StepVisual_SurfaceStyleBoundary {
	Handle_StepVisual_SurfaceStyleBoundary GetHandle() {
	return *(Handle_StepVisual_SurfaceStyleBoundary*) &$self;
	}
};

%nodefaultctor StepVisual_Array1OfLayeredItem;
class StepVisual_Array1OfLayeredItem {
	public:
		%feature("autodoc", "1");
		StepVisual_Array1OfLayeredItem(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepVisual_Array1OfLayeredItem(const StepVisual_LayeredItem &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const StepVisual_LayeredItem &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		~StepVisual_Array1OfLayeredItem();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepVisual_Array1OfLayeredItem & Assign(const StepVisual_Array1OfLayeredItem &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepVisual_LayeredItem &Value);
		%feature("autodoc", "1");
		const StepVisual_LayeredItem & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const StepVisual_LayeredItem & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepVisual_LayeredItem & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		StepVisual_LayeredItem & operator()(const Standard_Integer Index);

};

%nodefaultctor StepVisual_MechanicalDesignGeometricPresentationRepresentation;
class StepVisual_MechanicalDesignGeometricPresentationRepresentation : public StepVisual_PresentationRepresentation {
	public:
		%feature("autodoc", "1");
		StepVisual_MechanicalDesignGeometricPresentationRepresentation();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepVisual_MechanicalDesignGeometricPresentationRepresentation();

};
%extend StepVisual_MechanicalDesignGeometricPresentationRepresentation {
	Handle_StepVisual_MechanicalDesignGeometricPresentationRepresentation GetHandle() {
	return *(Handle_StepVisual_MechanicalDesignGeometricPresentationRepresentation*) &$self;
	}
};

%nodefaultctor StepVisual_DraughtingPreDefinedColour;
class StepVisual_DraughtingPreDefinedColour : public StepVisual_PreDefinedColour {
	public:
		%feature("autodoc", "1");
		StepVisual_DraughtingPreDefinedColour();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepVisual_DraughtingPreDefinedColour();

};
%extend StepVisual_DraughtingPreDefinedColour {
	Handle_StepVisual_DraughtingPreDefinedColour GetHandle() {
	return *(Handle_StepVisual_DraughtingPreDefinedColour*) &$self;
	}
};

%nodefaultctor StepVisual_DirectionCountSelect;
class StepVisual_DirectionCountSelect {
	public:
		%feature("autodoc", "1");
		~StepVisual_DirectionCountSelect();
		%feature("autodoc", "1");
		StepVisual_DirectionCountSelect();
		%feature("autodoc", "1");
		void SetTypeOfContent(const Standard_Integer aTypeOfContent);
		%feature("autodoc", "1");
		Standard_Integer TypeOfContent() const;
		%feature("autodoc", "1");
		Standard_Integer UDirectionCount() const;
		%feature("autodoc", "1");
		void SetUDirectionCount(const Standard_Integer aUDirectionCount);
		%feature("autodoc", "1");
		Standard_Integer VDirectionCount() const;
		%feature("autodoc", "1");
		void SetVDirectionCount(const Standard_Integer aUDirectionCount);

};

%nodefaultctor StepVisual_TemplateInstance;
class StepVisual_TemplateInstance : public StepRepr_MappedItem {
	public:
		%feature("autodoc", "1");
		StepVisual_TemplateInstance();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepVisual_TemplateInstance();

};
%extend StepVisual_TemplateInstance {
	Handle_StepVisual_TemplateInstance GetHandle() {
	return *(Handle_StepVisual_TemplateInstance*) &$self;
	}
};

%nodefaultctor StepVisual_HArray1OfTextOrCharacter;
class StepVisual_HArray1OfTextOrCharacter : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepVisual_HArray1OfTextOrCharacter(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepVisual_HArray1OfTextOrCharacter(const Standard_Integer Low, const Standard_Integer Up, const StepVisual_TextOrCharacter &V);
		%feature("autodoc", "1");
		void Init(const StepVisual_TextOrCharacter &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepVisual_TextOrCharacter &Value);
		%feature("autodoc", "1");
		const StepVisual_TextOrCharacter & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepVisual_TextOrCharacter & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const StepVisual_Array1OfTextOrCharacter & Array1() const;
		%feature("autodoc", "1");
		StepVisual_Array1OfTextOrCharacter & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepVisual_HArray1OfTextOrCharacter();

};
%extend StepVisual_HArray1OfTextOrCharacter {
	Handle_StepVisual_HArray1OfTextOrCharacter GetHandle() {
	return *(Handle_StepVisual_HArray1OfTextOrCharacter*) &$self;
	}
};

%nodefaultctor StepVisual_SurfaceStyleSegmentationCurve;
class StepVisual_SurfaceStyleSegmentationCurve : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepVisual_SurfaceStyleSegmentationCurve();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_StepVisual_CurveStyle &aStyleOfSegmentationCurve);
		%feature("autodoc", "1");
		void SetStyleOfSegmentationCurve(const Handle_StepVisual_CurveStyle &aStyleOfSegmentationCurve);
		%feature("autodoc", "1");
		Handle_StepVisual_CurveStyle StyleOfSegmentationCurve() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepVisual_SurfaceStyleSegmentationCurve();

};
%extend StepVisual_SurfaceStyleSegmentationCurve {
	Handle_StepVisual_SurfaceStyleSegmentationCurve GetHandle() {
	return *(Handle_StepVisual_SurfaceStyleSegmentationCurve*) &$self;
	}
};

%nodefaultctor StepVisual_FontSelect;
class StepVisual_FontSelect : public StepData_SelectType {
	public:
		%feature("autodoc", "1");
		StepVisual_FontSelect();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseNum(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Handle_StepVisual_PreDefinedTextFont PreDefinedTextFont() const;
		%feature("autodoc", "1");
		Handle_StepVisual_ExternallyDefinedTextFont ExternallyDefinedTextFont() const;
		%feature("autodoc", "1");
		virtual		~StepVisual_FontSelect();

};

%nodefaultctor StepVisual_Array1OfPresentationStyleSelect;
class StepVisual_Array1OfPresentationStyleSelect {
	public:
		%feature("autodoc", "1");
		StepVisual_Array1OfPresentationStyleSelect(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepVisual_Array1OfPresentationStyleSelect(const StepVisual_PresentationStyleSelect &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const StepVisual_PresentationStyleSelect &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		~StepVisual_Array1OfPresentationStyleSelect();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepVisual_Array1OfPresentationStyleSelect & Assign(const StepVisual_Array1OfPresentationStyleSelect &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepVisual_PresentationStyleSelect &Value);
		%feature("autodoc", "1");
		const StepVisual_PresentationStyleSelect & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const StepVisual_PresentationStyleSelect & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepVisual_PresentationStyleSelect & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		StepVisual_PresentationStyleSelect & operator()(const Standard_Integer Index);

};

%nodefaultctor StepVisual_HArray1OfInvisibleItem;
class StepVisual_HArray1OfInvisibleItem : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepVisual_HArray1OfInvisibleItem(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepVisual_HArray1OfInvisibleItem(const Standard_Integer Low, const Standard_Integer Up, const StepVisual_InvisibleItem &V);
		%feature("autodoc", "1");
		void Init(const StepVisual_InvisibleItem &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepVisual_InvisibleItem &Value);
		%feature("autodoc", "1");
		const StepVisual_InvisibleItem & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepVisual_InvisibleItem & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const StepVisual_Array1OfInvisibleItem & Array1() const;
		%feature("autodoc", "1");
		StepVisual_Array1OfInvisibleItem & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepVisual_HArray1OfInvisibleItem();

};
%extend StepVisual_HArray1OfInvisibleItem {
	Handle_StepVisual_HArray1OfInvisibleItem GetHandle() {
	return *(Handle_StepVisual_HArray1OfInvisibleItem*) &$self;
	}
};

%nodefaultctor StepVisual_PresentedItem;
class StepVisual_PresentedItem : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepVisual_PresentedItem();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepVisual_PresentedItem();

};
%extend StepVisual_PresentedItem {
	Handle_StepVisual_PresentedItem GetHandle() {
	return *(Handle_StepVisual_PresentedItem*) &$self;
	}
};

%nodefaultctor StepVisual_Array1OfDirectionCountSelect;
class StepVisual_Array1OfDirectionCountSelect {
	public:
		%feature("autodoc", "1");
		StepVisual_Array1OfDirectionCountSelect(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepVisual_Array1OfDirectionCountSelect(const StepVisual_DirectionCountSelect &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const StepVisual_DirectionCountSelect &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		~StepVisual_Array1OfDirectionCountSelect();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepVisual_Array1OfDirectionCountSelect & Assign(const StepVisual_Array1OfDirectionCountSelect &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepVisual_DirectionCountSelect &Value);
		%feature("autodoc", "1");
		const StepVisual_DirectionCountSelect & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const StepVisual_DirectionCountSelect & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepVisual_DirectionCountSelect & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		StepVisual_DirectionCountSelect & operator()(const Standard_Integer Index);

};

%nodefaultctor StepVisual_Array1OfInvisibleItem;
class StepVisual_Array1OfInvisibleItem {
	public:
		%feature("autodoc", "1");
		StepVisual_Array1OfInvisibleItem(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepVisual_Array1OfInvisibleItem(const StepVisual_InvisibleItem &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const StepVisual_InvisibleItem &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		~StepVisual_Array1OfInvisibleItem();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepVisual_Array1OfInvisibleItem & Assign(const StepVisual_Array1OfInvisibleItem &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepVisual_InvisibleItem &Value);
		%feature("autodoc", "1");
		const StepVisual_InvisibleItem & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const StepVisual_InvisibleItem & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepVisual_InvisibleItem & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		StepVisual_InvisibleItem & operator()(const Standard_Integer Index);

};

%nodefaultctor StepVisual_AnnotationTextOccurrence;
class StepVisual_AnnotationTextOccurrence : public StepVisual_AnnotationOccurrence {
	public:
		%feature("autodoc", "1");
		StepVisual_AnnotationTextOccurrence();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepVisual_AnnotationTextOccurrence();

};
%extend StepVisual_AnnotationTextOccurrence {
	Handle_StepVisual_AnnotationTextOccurrence GetHandle() {
	return *(Handle_StepVisual_AnnotationTextOccurrence*) &$self;
	}
};

%nodefaultctor StepVisual_PreDefinedTextFont;
class StepVisual_PreDefinedTextFont : public StepVisual_PreDefinedItem {
	public:
		%feature("autodoc", "1");
		StepVisual_PreDefinedTextFont();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepVisual_PreDefinedTextFont();

};
%extend StepVisual_PreDefinedTextFont {
	Handle_StepVisual_PreDefinedTextFont GetHandle() {
	return *(Handle_StepVisual_PreDefinedTextFont*) &$self;
	}
};

%nodefaultctor StepVisual_CameraModelD3;
class StepVisual_CameraModelD3 : public StepVisual_CameraModel {
	public:
		%feature("autodoc", "1");
		StepVisual_CameraModelD3();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepGeom_Axis2Placement3d &aViewReferenceSystem, const Handle_StepVisual_ViewVolume &aPerspectiveOfVolume);
		%feature("autodoc", "1");
		void SetViewReferenceSystem(const Handle_StepGeom_Axis2Placement3d &aViewReferenceSystem);
		%feature("autodoc", "1");
		Handle_StepGeom_Axis2Placement3d ViewReferenceSystem() const;
		%feature("autodoc", "1");
		void SetPerspectiveOfVolume(const Handle_StepVisual_ViewVolume &aPerspectiveOfVolume);
		%feature("autodoc", "1");
		Handle_StepVisual_ViewVolume PerspectiveOfVolume() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepVisual_CameraModelD3();

};
%extend StepVisual_CameraModelD3 {
	Handle_StepVisual_CameraModelD3 GetHandle() {
	return *(Handle_StepVisual_CameraModelD3*) &$self;
	}
};

%nodefaultctor StepVisual_Array1OfSurfaceStyleElementSelect;
class StepVisual_Array1OfSurfaceStyleElementSelect {
	public:
		%feature("autodoc", "1");
		StepVisual_Array1OfSurfaceStyleElementSelect(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepVisual_Array1OfSurfaceStyleElementSelect(const StepVisual_SurfaceStyleElementSelect &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const StepVisual_SurfaceStyleElementSelect &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		~StepVisual_Array1OfSurfaceStyleElementSelect();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepVisual_Array1OfSurfaceStyleElementSelect & Assign(const StepVisual_Array1OfSurfaceStyleElementSelect &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepVisual_SurfaceStyleElementSelect &Value);
		%feature("autodoc", "1");
		const StepVisual_SurfaceStyleElementSelect & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const StepVisual_SurfaceStyleElementSelect & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepVisual_SurfaceStyleElementSelect & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		StepVisual_SurfaceStyleElementSelect & operator()(const Standard_Integer Index);

};

%nodefaultctor StepVisual_SurfaceStyleControlGrid;
class StepVisual_SurfaceStyleControlGrid : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepVisual_SurfaceStyleControlGrid();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_StepVisual_CurveStyle &aStyleOfControlGrid);
		%feature("autodoc", "1");
		void SetStyleOfControlGrid(const Handle_StepVisual_CurveStyle &aStyleOfControlGrid);
		%feature("autodoc", "1");
		Handle_StepVisual_CurveStyle StyleOfControlGrid() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepVisual_SurfaceStyleControlGrid();

};
%extend StepVisual_SurfaceStyleControlGrid {
	Handle_StepVisual_SurfaceStyleControlGrid GetHandle() {
	return *(Handle_StepVisual_SurfaceStyleControlGrid*) &$self;
	}
};

%nodefaultctor StepVisual_HArray1OfFillStyleSelect;
class StepVisual_HArray1OfFillStyleSelect : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepVisual_HArray1OfFillStyleSelect(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepVisual_HArray1OfFillStyleSelect(const Standard_Integer Low, const Standard_Integer Up, const StepVisual_FillStyleSelect &V);
		%feature("autodoc", "1");
		void Init(const StepVisual_FillStyleSelect &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepVisual_FillStyleSelect &Value);
		%feature("autodoc", "1");
		const StepVisual_FillStyleSelect & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepVisual_FillStyleSelect & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const StepVisual_Array1OfFillStyleSelect & Array1() const;
		%feature("autodoc", "1");
		StepVisual_Array1OfFillStyleSelect & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepVisual_HArray1OfFillStyleSelect();

};
%extend StepVisual_HArray1OfFillStyleSelect {
	Handle_StepVisual_HArray1OfFillStyleSelect GetHandle() {
	return *(Handle_StepVisual_HArray1OfFillStyleSelect*) &$self;
	}
};

%nodefaultctor StepVisual_HArray1OfPresentationStyleAssignment;
class StepVisual_HArray1OfPresentationStyleAssignment : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepVisual_HArray1OfPresentationStyleAssignment(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepVisual_HArray1OfPresentationStyleAssignment(const Standard_Integer Low, const Standard_Integer Up, const Handle_StepVisual_PresentationStyleAssignment &V);
		%feature("autodoc", "1");
		void Init(const Handle_StepVisual_PresentationStyleAssignment &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StepVisual_PresentationStyleAssignment &Value);
		%feature("autodoc", "1");
		const Handle_StepVisual_PresentationStyleAssignment & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_StepVisual_PresentationStyleAssignment & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const StepVisual_Array1OfPresentationStyleAssignment & Array1() const;
		%feature("autodoc", "1");
		StepVisual_Array1OfPresentationStyleAssignment & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepVisual_HArray1OfPresentationStyleAssignment();

};
%extend StepVisual_HArray1OfPresentationStyleAssignment {
	Handle_StepVisual_HArray1OfPresentationStyleAssignment GetHandle() {
	return *(Handle_StepVisual_HArray1OfPresentationStyleAssignment*) &$self;
	}
};

%nodefaultctor StepVisual_FillStyleSelect;
class StepVisual_FillStyleSelect : public StepData_SelectType {
	public:
		%feature("autodoc", "1");
		StepVisual_FillStyleSelect();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseNum(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Handle_StepVisual_FillAreaStyleColour FillAreaStyleColour() const;
		%feature("autodoc", "1");
		virtual		~StepVisual_FillStyleSelect();

};

%nodefaultctor StepVisual_DraughtingModel;
class StepVisual_DraughtingModel : public StepRepr_Representation {
	public:
		%feature("autodoc", "1");
		StepVisual_DraughtingModel();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepVisual_DraughtingModel();

};
%extend StepVisual_DraughtingModel {
	Handle_StepVisual_DraughtingModel GetHandle() {
	return *(Handle_StepVisual_DraughtingModel*) &$self;
	}
};

%nodefaultctor StepVisual_AreaOrView;
class StepVisual_AreaOrView : public StepData_SelectType {
	public:
		%feature("autodoc", "1");
		StepVisual_AreaOrView();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseNum(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Handle_StepVisual_PresentationArea PresentationArea() const;
		%feature("autodoc", "1");
		Handle_StepVisual_PresentationView PresentationView() const;
		%feature("autodoc", "1");
		virtual		~StepVisual_AreaOrView();

};

%nodefaultctor StepVisual_DraughtingAnnotationOccurrence;
class StepVisual_DraughtingAnnotationOccurrence : public StepVisual_AnnotationOccurrence {
	public:
		%feature("autodoc", "1");
		StepVisual_DraughtingAnnotationOccurrence();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepVisual_DraughtingAnnotationOccurrence();

};
%extend StepVisual_DraughtingAnnotationOccurrence {
	Handle_StepVisual_DraughtingAnnotationOccurrence GetHandle() {
	return *(Handle_StepVisual_DraughtingAnnotationOccurrence*) &$self;
	}
};

%nodefaultctor StepVisual_InvisibilityContext;
class StepVisual_InvisibilityContext : public StepData_SelectType {
	public:
		%feature("autodoc", "1");
		StepVisual_InvisibilityContext();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseNum(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Handle_StepVisual_PresentationRepresentation PresentationRepresentation() const;
		%feature("autodoc", "1");
		Handle_StepVisual_PresentationSet PresentationSet() const;
		%feature("autodoc", "1");
		virtual		~StepVisual_InvisibilityContext();

};

%nodefaultctor StepVisual_TextOrCharacter;
class StepVisual_TextOrCharacter : public StepData_SelectType {
	public:
		%feature("autodoc", "1");
		StepVisual_TextOrCharacter();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseNum(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Handle_StepVisual_AnnotationText AnnotationText() const;
		%feature("autodoc", "1");
		Handle_StepVisual_CompositeText CompositeText() const;
		%feature("autodoc", "1");
		Handle_StepVisual_TextLiteral TextLiteral() const;
		%feature("autodoc", "1");
		virtual		~StepVisual_TextOrCharacter();

};

%nodefaultctor StepVisual_HArray1OfBoxCharacteristicSelect;
class StepVisual_HArray1OfBoxCharacteristicSelect : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepVisual_HArray1OfBoxCharacteristicSelect(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepVisual_HArray1OfBoxCharacteristicSelect(const Standard_Integer Low, const Standard_Integer Up, const StepVisual_BoxCharacteristicSelect &V);
		%feature("autodoc", "1");
		void Init(const StepVisual_BoxCharacteristicSelect &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepVisual_BoxCharacteristicSelect &Value);
		%feature("autodoc", "1");
		const StepVisual_BoxCharacteristicSelect & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepVisual_BoxCharacteristicSelect & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const StepVisual_Array1OfBoxCharacteristicSelect & Array1() const;
		%feature("autodoc", "1");
		StepVisual_Array1OfBoxCharacteristicSelect & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepVisual_HArray1OfBoxCharacteristicSelect();

};
%extend StepVisual_HArray1OfBoxCharacteristicSelect {
	Handle_StepVisual_HArray1OfBoxCharacteristicSelect GetHandle() {
	return *(Handle_StepVisual_HArray1OfBoxCharacteristicSelect*) &$self;
	}
};