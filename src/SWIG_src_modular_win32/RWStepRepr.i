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
%module RWStepRepr

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
%typemap(in,numinputs=0) Standard_Real &OutValue(Standard_Real temp) {
    $1 = &temp;
}


%include RWStepRepr_dependencies.i


%include RWStepRepr_headers.i




%nodefaultctor RWStepRepr_RWConfigurationDesign;
class RWStepRepr_RWConfigurationDesign {
	public:
		%feature("autodoc", "1");
		RWStepRepr_RWConfigurationDesign();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepRepr_ConfigurationDesign &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepRepr_ConfigurationDesign &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepRepr_ConfigurationDesign &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepRepr_RWConfigurationDesign {
	~RWStepRepr_RWConfigurationDesign() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of RWStepRepr_RWConfigurationDesign\n");}
	}
};

%nodefaultctor RWStepRepr_RWStructuralResponsePropertyDefinitionRepresentation;
class RWStepRepr_RWStructuralResponsePropertyDefinitionRepresentation {
	public:
		%feature("autodoc", "1");
		RWStepRepr_RWStructuralResponsePropertyDefinitionRepresentation();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepRepr_StructuralResponsePropertyDefinitionRepresentation &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepRepr_StructuralResponsePropertyDefinitionRepresentation &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepRepr_StructuralResponsePropertyDefinitionRepresentation &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepRepr_RWStructuralResponsePropertyDefinitionRepresentation {
	~RWStepRepr_RWStructuralResponsePropertyDefinitionRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of RWStepRepr_RWStructuralResponsePropertyDefinitionRepresentation\n");}
	}
};

%nodefaultctor RWStepRepr_RWMaterialPropertyRepresentation;
class RWStepRepr_RWMaterialPropertyRepresentation {
	public:
		%feature("autodoc", "1");
		RWStepRepr_RWMaterialPropertyRepresentation();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepRepr_MaterialPropertyRepresentation &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepRepr_MaterialPropertyRepresentation &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepRepr_MaterialPropertyRepresentation &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepRepr_RWMaterialPropertyRepresentation {
	~RWStepRepr_RWMaterialPropertyRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of RWStepRepr_RWMaterialPropertyRepresentation\n");}
	}
};

%nodefaultctor RWStepRepr_RWShapeAspectRelationship;
class RWStepRepr_RWShapeAspectRelationship {
	public:
		%feature("autodoc", "1");
		RWStepRepr_RWShapeAspectRelationship();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepRepr_ShapeAspectRelationship &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepRepr_ShapeAspectRelationship &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepRepr_ShapeAspectRelationship &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepRepr_RWShapeAspectRelationship {
	~RWStepRepr_RWShapeAspectRelationship() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of RWStepRepr_RWShapeAspectRelationship\n");}
	}
};

%nodefaultctor RWStepRepr_RWAssemblyComponentUsage;
class RWStepRepr_RWAssemblyComponentUsage {
	public:
		%feature("autodoc", "1");
		RWStepRepr_RWAssemblyComponentUsage();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepRepr_AssemblyComponentUsage &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepRepr_AssemblyComponentUsage &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepRepr_AssemblyComponentUsage &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepRepr_RWAssemblyComponentUsage {
	~RWStepRepr_RWAssemblyComponentUsage() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of RWStepRepr_RWAssemblyComponentUsage\n");}
	}
};

%nodefaultctor RWStepRepr_RWQuantifiedAssemblyComponentUsage;
class RWStepRepr_RWQuantifiedAssemblyComponentUsage {
	public:
		%feature("autodoc", "1");
		RWStepRepr_RWQuantifiedAssemblyComponentUsage();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepRepr_QuantifiedAssemblyComponentUsage &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepRepr_QuantifiedAssemblyComponentUsage &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepRepr_QuantifiedAssemblyComponentUsage &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepRepr_RWQuantifiedAssemblyComponentUsage {
	~RWStepRepr_RWQuantifiedAssemblyComponentUsage() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of RWStepRepr_RWQuantifiedAssemblyComponentUsage\n");}
	}
};

%nodefaultctor RWStepRepr_RWCompoundRepresentationItem;
class RWStepRepr_RWCompoundRepresentationItem {
	public:
		%feature("autodoc", "1");
		RWStepRepr_RWCompoundRepresentationItem();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepRepr_CompoundRepresentationItem &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepRepr_CompoundRepresentationItem &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepRepr_CompoundRepresentationItem &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepRepr_RWCompoundRepresentationItem {
	~RWStepRepr_RWCompoundRepresentationItem() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of RWStepRepr_RWCompoundRepresentationItem\n");}
	}
};

%nodefaultctor RWStepRepr_RWDerivedShapeAspect;
class RWStepRepr_RWDerivedShapeAspect {
	public:
		%feature("autodoc", "1");
		RWStepRepr_RWDerivedShapeAspect();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepRepr_DerivedShapeAspect &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepRepr_DerivedShapeAspect &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepRepr_DerivedShapeAspect &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepRepr_RWDerivedShapeAspect {
	~RWStepRepr_RWDerivedShapeAspect() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of RWStepRepr_RWDerivedShapeAspect\n");}
	}
};

%nodefaultctor RWStepRepr_RWCompositeShapeAspect;
class RWStepRepr_RWCompositeShapeAspect {
	public:
		%feature("autodoc", "1");
		RWStepRepr_RWCompositeShapeAspect();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepRepr_CompositeShapeAspect &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepRepr_CompositeShapeAspect &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepRepr_CompositeShapeAspect &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepRepr_RWCompositeShapeAspect {
	~RWStepRepr_RWCompositeShapeAspect() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of RWStepRepr_RWCompositeShapeAspect\n");}
	}
};

%nodefaultctor RWStepRepr_RWExtension;
class RWStepRepr_RWExtension {
	public:
		%feature("autodoc", "1");
		RWStepRepr_RWExtension();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepRepr_Extension &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepRepr_Extension &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepRepr_Extension &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepRepr_RWExtension {
	~RWStepRepr_RWExtension() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of RWStepRepr_RWExtension\n");}
	}
};

%nodefaultctor RWStepRepr_RWRepresentationRelationship;
class RWStepRepr_RWRepresentationRelationship {
	public:
		%feature("autodoc", "1");
		RWStepRepr_RWRepresentationRelationship();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepRepr_RepresentationRelationship &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepRepr_RepresentationRelationship &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepRepr_RepresentationRelationship &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepRepr_RWRepresentationRelationship {
	~RWStepRepr_RWRepresentationRelationship() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of RWStepRepr_RWRepresentationRelationship\n");}
	}
};

%nodefaultctor RWStepRepr_RWConfigurationItem;
class RWStepRepr_RWConfigurationItem {
	public:
		%feature("autodoc", "1");
		RWStepRepr_RWConfigurationItem();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepRepr_ConfigurationItem &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepRepr_ConfigurationItem &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepRepr_ConfigurationItem &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepRepr_RWConfigurationItem {
	~RWStepRepr_RWConfigurationItem() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of RWStepRepr_RWConfigurationItem\n");}
	}
};

%nodefaultctor RWStepRepr_RWFunctionallyDefinedTransformation;
class RWStepRepr_RWFunctionallyDefinedTransformation {
	public:
		%feature("autodoc", "1");
		RWStepRepr_RWFunctionallyDefinedTransformation();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepRepr_FunctionallyDefinedTransformation &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepRepr_FunctionallyDefinedTransformation &ent) const;

};
%extend RWStepRepr_RWFunctionallyDefinedTransformation {
	~RWStepRepr_RWFunctionallyDefinedTransformation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of RWStepRepr_RWFunctionallyDefinedTransformation\n");}
	}
};

%nodefaultctor RWStepRepr_RWGlobalUnitAssignedContext;
class RWStepRepr_RWGlobalUnitAssignedContext {
	public:
		%feature("autodoc", "1");
		RWStepRepr_RWGlobalUnitAssignedContext();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepRepr_GlobalUnitAssignedContext &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepRepr_GlobalUnitAssignedContext &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepRepr_GlobalUnitAssignedContext &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepRepr_RWGlobalUnitAssignedContext {
	~RWStepRepr_RWGlobalUnitAssignedContext() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of RWStepRepr_RWGlobalUnitAssignedContext\n");}
	}
};

%nodefaultctor RWStepRepr_RWSpecifiedHigherUsageOccurrence;
class RWStepRepr_RWSpecifiedHigherUsageOccurrence {
	public:
		%feature("autodoc", "1");
		RWStepRepr_RWSpecifiedHigherUsageOccurrence();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepRepr_SpecifiedHigherUsageOccurrence &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepRepr_SpecifiedHigherUsageOccurrence &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepRepr_SpecifiedHigherUsageOccurrence &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepRepr_RWSpecifiedHigherUsageOccurrence {
	~RWStepRepr_RWSpecifiedHigherUsageOccurrence() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of RWStepRepr_RWSpecifiedHigherUsageOccurrence\n");}
	}
};

%nodefaultctor RWStepRepr_RWConfigurationEffectivity;
class RWStepRepr_RWConfigurationEffectivity {
	public:
		%feature("autodoc", "1");
		RWStepRepr_RWConfigurationEffectivity();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepRepr_ConfigurationEffectivity &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepRepr_ConfigurationEffectivity &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepRepr_ConfigurationEffectivity &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepRepr_RWConfigurationEffectivity {
	~RWStepRepr_RWConfigurationEffectivity() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of RWStepRepr_RWConfigurationEffectivity\n");}
	}
};

%nodefaultctor RWStepRepr_RWMakeFromUsageOption;
class RWStepRepr_RWMakeFromUsageOption {
	public:
		%feature("autodoc", "1");
		RWStepRepr_RWMakeFromUsageOption();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepRepr_MakeFromUsageOption &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepRepr_MakeFromUsageOption &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepRepr_MakeFromUsageOption &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepRepr_RWMakeFromUsageOption {
	~RWStepRepr_RWMakeFromUsageOption() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of RWStepRepr_RWMakeFromUsageOption\n");}
	}
};

%nodefaultctor RWStepRepr_RWReprItemAndLengthMeasureWithUnit;
class RWStepRepr_RWReprItemAndLengthMeasureWithUnit {
	public:
		%feature("autodoc", "1");
		RWStepRepr_RWReprItemAndLengthMeasureWithUnit();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepRepr_ReprItemAndLengthMeasureWithUnit &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepRepr_ReprItemAndLengthMeasureWithUnit &ent) const;

};
%extend RWStepRepr_RWReprItemAndLengthMeasureWithUnit {
	~RWStepRepr_RWReprItemAndLengthMeasureWithUnit() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of RWStepRepr_RWReprItemAndLengthMeasureWithUnit\n");}
	}
};

%nodefaultctor RWStepRepr_RWMeasureRepresentationItem;
class RWStepRepr_RWMeasureRepresentationItem {
	public:
		%feature("autodoc", "1");
		RWStepRepr_RWMeasureRepresentationItem();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepRepr_MeasureRepresentationItem &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepRepr_MeasureRepresentationItem &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepRepr_MeasureRepresentationItem &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepRepr_RWMeasureRepresentationItem {
	~RWStepRepr_RWMeasureRepresentationItem() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of RWStepRepr_RWMeasureRepresentationItem\n");}
	}
};

%nodefaultctor RWStepRepr_RWStructuralResponseProperty;
class RWStepRepr_RWStructuralResponseProperty {
	public:
		%feature("autodoc", "1");
		RWStepRepr_RWStructuralResponseProperty();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepRepr_StructuralResponseProperty &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepRepr_StructuralResponseProperty &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepRepr_StructuralResponseProperty &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepRepr_RWStructuralResponseProperty {
	~RWStepRepr_RWStructuralResponseProperty() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of RWStepRepr_RWStructuralResponseProperty\n");}
	}
};

%nodefaultctor RWStepRepr_RWMappedItem;
class RWStepRepr_RWMappedItem {
	public:
		%feature("autodoc", "1");
		RWStepRepr_RWMappedItem();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepRepr_MappedItem &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepRepr_MappedItem &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepRepr_MappedItem &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepRepr_RWMappedItem {
	~RWStepRepr_RWMappedItem() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of RWStepRepr_RWMappedItem\n");}
	}
};

%nodefaultctor RWStepRepr_RWParametricRepresentationContext;
class RWStepRepr_RWParametricRepresentationContext {
	public:
		%feature("autodoc", "1");
		RWStepRepr_RWParametricRepresentationContext();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepRepr_ParametricRepresentationContext &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepRepr_ParametricRepresentationContext &ent) const;

};
%extend RWStepRepr_RWParametricRepresentationContext {
	~RWStepRepr_RWParametricRepresentationContext() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of RWStepRepr_RWParametricRepresentationContext\n");}
	}
};

%nodefaultctor RWStepRepr_RWRepresentation;
class RWStepRepr_RWRepresentation {
	public:
		%feature("autodoc", "1");
		RWStepRepr_RWRepresentation();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepRepr_Representation &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepRepr_Representation &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepRepr_Representation &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepRepr_RWRepresentation {
	~RWStepRepr_RWRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of RWStepRepr_RWRepresentation\n");}
	}
};

%nodefaultctor RWStepRepr_RWMaterialDesignation;
class RWStepRepr_RWMaterialDesignation {
	public:
		%feature("autodoc", "1");
		RWStepRepr_RWMaterialDesignation();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepRepr_MaterialDesignation &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepRepr_MaterialDesignation &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepRepr_MaterialDesignation &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepRepr_RWMaterialDesignation {
	~RWStepRepr_RWMaterialDesignation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of RWStepRepr_RWMaterialDesignation\n");}
	}
};

%nodefaultctor RWStepRepr_RWProductDefinitionShape;
class RWStepRepr_RWProductDefinitionShape {
	public:
		%feature("autodoc", "1");
		RWStepRepr_RWProductDefinitionShape();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepRepr_ProductDefinitionShape &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepRepr_ProductDefinitionShape &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepRepr_ProductDefinitionShape &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepRepr_RWProductDefinitionShape {
	~RWStepRepr_RWProductDefinitionShape() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of RWStepRepr_RWProductDefinitionShape\n");}
	}
};

%nodefaultctor RWStepRepr_RWDataEnvironment;
class RWStepRepr_RWDataEnvironment {
	public:
		%feature("autodoc", "1");
		RWStepRepr_RWDataEnvironment();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepRepr_DataEnvironment &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepRepr_DataEnvironment &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepRepr_DataEnvironment &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepRepr_RWDataEnvironment {
	~RWStepRepr_RWDataEnvironment() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of RWStepRepr_RWDataEnvironment\n");}
	}
};

%nodefaultctor RWStepRepr_RWAssemblyComponentUsageSubstitute;
class RWStepRepr_RWAssemblyComponentUsageSubstitute {
	public:
		%feature("autodoc", "1");
		RWStepRepr_RWAssemblyComponentUsageSubstitute();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepRepr_AssemblyComponentUsageSubstitute &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepRepr_AssemblyComponentUsageSubstitute &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepRepr_AssemblyComponentUsageSubstitute &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepRepr_RWAssemblyComponentUsageSubstitute {
	~RWStepRepr_RWAssemblyComponentUsageSubstitute() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of RWStepRepr_RWAssemblyComponentUsageSubstitute\n");}
	}
};

%nodefaultctor RWStepRepr_RWPropertyDefinition;
class RWStepRepr_RWPropertyDefinition {
	public:
		%feature("autodoc", "1");
		RWStepRepr_RWPropertyDefinition();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepRepr_PropertyDefinition &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepRepr_PropertyDefinition &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepRepr_PropertyDefinition &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepRepr_RWPropertyDefinition {
	~RWStepRepr_RWPropertyDefinition() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of RWStepRepr_RWPropertyDefinition\n");}
	}
};

%nodefaultctor RWStepRepr_RWRepresentationMap;
class RWStepRepr_RWRepresentationMap {
	public:
		%feature("autodoc", "1");
		RWStepRepr_RWRepresentationMap();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepRepr_RepresentationMap &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepRepr_RepresentationMap &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepRepr_RepresentationMap &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepRepr_RWRepresentationMap {
	~RWStepRepr_RWRepresentationMap() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of RWStepRepr_RWRepresentationMap\n");}
	}
};

%nodefaultctor RWStepRepr_RWMaterialProperty;
class RWStepRepr_RWMaterialProperty {
	public:
		%feature("autodoc", "1");
		RWStepRepr_RWMaterialProperty();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepRepr_MaterialProperty &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepRepr_MaterialProperty &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepRepr_MaterialProperty &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepRepr_RWMaterialProperty {
	~RWStepRepr_RWMaterialProperty() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of RWStepRepr_RWMaterialProperty\n");}
	}
};

%nodefaultctor RWStepRepr_RWShapeAspectDerivingRelationship;
class RWStepRepr_RWShapeAspectDerivingRelationship {
	public:
		%feature("autodoc", "1");
		RWStepRepr_RWShapeAspectDerivingRelationship();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepRepr_ShapeAspectDerivingRelationship &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepRepr_ShapeAspectDerivingRelationship &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepRepr_ShapeAspectDerivingRelationship &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepRepr_RWShapeAspectDerivingRelationship {
	~RWStepRepr_RWShapeAspectDerivingRelationship() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of RWStepRepr_RWShapeAspectDerivingRelationship\n");}
	}
};

%nodefaultctor RWStepRepr_RWDescriptiveRepresentationItem;
class RWStepRepr_RWDescriptiveRepresentationItem {
	public:
		%feature("autodoc", "1");
		RWStepRepr_RWDescriptiveRepresentationItem();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepRepr_DescriptiveRepresentationItem &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepRepr_DescriptiveRepresentationItem &ent) const;

};
%extend RWStepRepr_RWDescriptiveRepresentationItem {
	~RWStepRepr_RWDescriptiveRepresentationItem() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of RWStepRepr_RWDescriptiveRepresentationItem\n");}
	}
};

%nodefaultctor RWStepRepr_RWShapeAspectTransition;
class RWStepRepr_RWShapeAspectTransition {
	public:
		%feature("autodoc", "1");
		RWStepRepr_RWShapeAspectTransition();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepRepr_ShapeAspectTransition &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepRepr_ShapeAspectTransition &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepRepr_ShapeAspectTransition &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepRepr_RWShapeAspectTransition {
	~RWStepRepr_RWShapeAspectTransition() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of RWStepRepr_RWShapeAspectTransition\n");}
	}
};

%nodefaultctor RWStepRepr_RWDefinitionalRepresentation;
class RWStepRepr_RWDefinitionalRepresentation {
	public:
		%feature("autodoc", "1");
		RWStepRepr_RWDefinitionalRepresentation();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepRepr_DefinitionalRepresentation &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepRepr_DefinitionalRepresentation &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepRepr_DefinitionalRepresentation &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepRepr_RWDefinitionalRepresentation {
	~RWStepRepr_RWDefinitionalRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of RWStepRepr_RWDefinitionalRepresentation\n");}
	}
};

%nodefaultctor RWStepRepr_RWRepresentationContext;
class RWStepRepr_RWRepresentationContext {
	public:
		%feature("autodoc", "1");
		RWStepRepr_RWRepresentationContext();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepRepr_RepresentationContext &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepRepr_RepresentationContext &ent) const;

};
%extend RWStepRepr_RWRepresentationContext {
	~RWStepRepr_RWRepresentationContext() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of RWStepRepr_RWRepresentationContext\n");}
	}
};

%nodefaultctor RWStepRepr_RWRepresentationRelationshipWithTransformation;
class RWStepRepr_RWRepresentationRelationshipWithTransformation {
	public:
		%feature("autodoc", "1");
		RWStepRepr_RWRepresentationRelationshipWithTransformation();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepRepr_RepresentationRelationshipWithTransformation &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepRepr_RepresentationRelationshipWithTransformation &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepRepr_RepresentationRelationshipWithTransformation &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepRepr_RWRepresentationRelationshipWithTransformation {
	~RWStepRepr_RWRepresentationRelationshipWithTransformation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of RWStepRepr_RWRepresentationRelationshipWithTransformation\n");}
	}
};

%nodefaultctor RWStepRepr_RWGlobalUncertaintyAssignedContext;
class RWStepRepr_RWGlobalUncertaintyAssignedContext {
	public:
		%feature("autodoc", "1");
		RWStepRepr_RWGlobalUncertaintyAssignedContext();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepRepr_GlobalUncertaintyAssignedContext &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepRepr_GlobalUncertaintyAssignedContext &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepRepr_GlobalUncertaintyAssignedContext &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepRepr_RWGlobalUncertaintyAssignedContext {
	~RWStepRepr_RWGlobalUncertaintyAssignedContext() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of RWStepRepr_RWGlobalUncertaintyAssignedContext\n");}
	}
};

%nodefaultctor RWStepRepr_RWShapeAspect;
class RWStepRepr_RWShapeAspect {
	public:
		%feature("autodoc", "1");
		RWStepRepr_RWShapeAspect();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepRepr_ShapeAspect &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepRepr_ShapeAspect &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepRepr_ShapeAspect &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepRepr_RWShapeAspect {
	~RWStepRepr_RWShapeAspect() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of RWStepRepr_RWShapeAspect\n");}
	}
};

%nodefaultctor RWStepRepr_RWPropertyDefinitionRelationship;
class RWStepRepr_RWPropertyDefinitionRelationship {
	public:
		%feature("autodoc", "1");
		RWStepRepr_RWPropertyDefinitionRelationship();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepRepr_PropertyDefinitionRelationship &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepRepr_PropertyDefinitionRelationship &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepRepr_PropertyDefinitionRelationship &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepRepr_RWPropertyDefinitionRelationship {
	~RWStepRepr_RWPropertyDefinitionRelationship() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of RWStepRepr_RWPropertyDefinitionRelationship\n");}
	}
};

%nodefaultctor RWStepRepr_RWPropertyDefinitionRepresentation;
class RWStepRepr_RWPropertyDefinitionRepresentation {
	public:
		%feature("autodoc", "1");
		RWStepRepr_RWPropertyDefinitionRepresentation();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepRepr_PropertyDefinitionRepresentation &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepRepr_PropertyDefinitionRepresentation &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepRepr_PropertyDefinitionRepresentation &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepRepr_RWPropertyDefinitionRepresentation {
	~RWStepRepr_RWPropertyDefinitionRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of RWStepRepr_RWPropertyDefinitionRepresentation\n");}
	}
};

%nodefaultctor RWStepRepr_RWShapeRepresentationRelationshipWithTransformation;
class RWStepRepr_RWShapeRepresentationRelationshipWithTransformation {
	public:
		%feature("autodoc", "1");
		RWStepRepr_RWShapeRepresentationRelationshipWithTransformation();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepRepr_ShapeRepresentationRelationshipWithTransformation &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepRepr_ShapeRepresentationRelationshipWithTransformation &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepRepr_ShapeRepresentationRelationshipWithTransformation &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepRepr_RWShapeRepresentationRelationshipWithTransformation {
	~RWStepRepr_RWShapeRepresentationRelationshipWithTransformation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of RWStepRepr_RWShapeRepresentationRelationshipWithTransformation\n");}
	}
};

%nodefaultctor RWStepRepr_RWRepresentationItem;
class RWStepRepr_RWRepresentationItem {
	public:
		%feature("autodoc", "1");
		RWStepRepr_RWRepresentationItem();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepRepr_RepresentationItem &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepRepr_RepresentationItem &ent) const;

};
%extend RWStepRepr_RWRepresentationItem {
	~RWStepRepr_RWRepresentationItem() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of RWStepRepr_RWRepresentationItem\n");}
	}
};

%nodefaultctor RWStepRepr_RWProductConcept;
class RWStepRepr_RWProductConcept {
	public:
		%feature("autodoc", "1");
		RWStepRepr_RWProductConcept();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepRepr_ProductConcept &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepRepr_ProductConcept &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepRepr_ProductConcept &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepRepr_RWProductConcept {
	~RWStepRepr_RWProductConcept() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of RWStepRepr_RWProductConcept\n");}
	}
};

%nodefaultctor RWStepRepr_RWItemDefinedTransformation;
class RWStepRepr_RWItemDefinedTransformation {
	public:
		%feature("autodoc", "1");
		RWStepRepr_RWItemDefinedTransformation();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepRepr_ItemDefinedTransformation &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepRepr_ItemDefinedTransformation &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepRepr_ItemDefinedTransformation &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepRepr_RWItemDefinedTransformation {
	~RWStepRepr_RWItemDefinedTransformation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of RWStepRepr_RWItemDefinedTransformation\n");}
	}
};