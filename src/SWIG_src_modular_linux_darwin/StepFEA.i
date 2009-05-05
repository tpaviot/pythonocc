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
%module StepFEA

%include StepFEA_renames.i

%include typemaps.i
%include cmalloc.i
%include cpointer.i
%include carrays.i
%include exception.i
%include std_list.i
%include std_string.i
%include <python/std_basic_string.i>

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


%include StepFEA_dependencies.i


%include StepFEA_headers.i


enum StepFEA_ElementVolume {
	StepFEA_Volume,
	};

enum StepFEA_EnumeratedDegreeOfFreedom {
	StepFEA_XTranslation,
	StepFEA_YTranslation,
	StepFEA_ZTranslation,
	StepFEA_XRotation,
	StepFEA_YRotation,
	StepFEA_ZRotation,
	StepFEA_Warp,
	};

enum StepFEA_CoordinateSystemType {
	StepFEA_Cartesian,
	StepFEA_Cylindrical,
	StepFEA_Spherical,
	};

enum StepFEA_CurveEdge {
	StepFEA_ElementEdge,
	};

enum StepFEA_UnspecifiedValue {
	StepFEA_Unspecified,
	};



%nodefaultctor Handle_StepFEA_NodeRepresentation;
class Handle_StepFEA_NodeRepresentation : public Handle_StepRepr_Representation {
	public:
		%feature("autodoc", "1");
		Handle_StepFEA_NodeRepresentation();
		%feature("autodoc", "1");
		Handle_StepFEA_NodeRepresentation(const Handle_StepFEA_NodeRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepFEA_NodeRepresentation(const StepFEA_NodeRepresentation *anItem);
		%feature("autodoc", "1");
		Handle_StepFEA_NodeRepresentation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepFEA_NodeRepresentation {
	StepFEA_NodeRepresentation* GetObject() {
	return (StepFEA_NodeRepresentation*)$self->Access();
	}
};
%extend Handle_StepFEA_NodeRepresentation {
	~Handle_StepFEA_NodeRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepFEA_NodeRepresentation\n");}
	}
};


%nodefaultctor Handle_StepFEA_DummyNode;
class Handle_StepFEA_DummyNode : public Handle_StepFEA_NodeRepresentation {
	public:
		%feature("autodoc", "1");
		Handle_StepFEA_DummyNode();
		%feature("autodoc", "1");
		Handle_StepFEA_DummyNode(const Handle_StepFEA_DummyNode &aHandle);
		%feature("autodoc", "1");
		Handle_StepFEA_DummyNode(const StepFEA_DummyNode *anItem);
		%feature("autodoc", "1");
		Handle_StepFEA_DummyNode const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepFEA_DummyNode {
	StepFEA_DummyNode* GetObject() {
	return (StepFEA_DummyNode*)$self->Access();
	}
};
%extend Handle_StepFEA_DummyNode {
	~Handle_StepFEA_DummyNode() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepFEA_DummyNode\n");}
	}
};


%nodefaultctor Handle_StepFEA_FeaGroup;
class Handle_StepFEA_FeaGroup : public Handle_StepBasic_Group {
	public:
		%feature("autodoc", "1");
		Handle_StepFEA_FeaGroup();
		%feature("autodoc", "1");
		Handle_StepFEA_FeaGroup(const Handle_StepFEA_FeaGroup &aHandle);
		%feature("autodoc", "1");
		Handle_StepFEA_FeaGroup(const StepFEA_FeaGroup *anItem);
		%feature("autodoc", "1");
		Handle_StepFEA_FeaGroup const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepFEA_FeaGroup {
	StepFEA_FeaGroup* GetObject() {
	return (StepFEA_FeaGroup*)$self->Access();
	}
};
%extend Handle_StepFEA_FeaGroup {
	~Handle_StepFEA_FeaGroup() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepFEA_FeaGroup\n");}
	}
};


%nodefaultctor Handle_StepFEA_NodeGroup;
class Handle_StepFEA_NodeGroup : public Handle_StepFEA_FeaGroup {
	public:
		%feature("autodoc", "1");
		Handle_StepFEA_NodeGroup();
		%feature("autodoc", "1");
		Handle_StepFEA_NodeGroup(const Handle_StepFEA_NodeGroup &aHandle);
		%feature("autodoc", "1");
		Handle_StepFEA_NodeGroup(const StepFEA_NodeGroup *anItem);
		%feature("autodoc", "1");
		Handle_StepFEA_NodeGroup const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepFEA_NodeGroup {
	StepFEA_NodeGroup* GetObject() {
	return (StepFEA_NodeGroup*)$self->Access();
	}
};
%extend Handle_StepFEA_NodeGroup {
	~Handle_StepFEA_NodeGroup() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepFEA_NodeGroup\n");}
	}
};


%nodefaultctor Handle_StepFEA_FeaMaterialPropertyRepresentationItem;
class Handle_StepFEA_FeaMaterialPropertyRepresentationItem : public Handle_StepRepr_RepresentationItem {
	public:
		%feature("autodoc", "1");
		Handle_StepFEA_FeaMaterialPropertyRepresentationItem();
		%feature("autodoc", "1");
		Handle_StepFEA_FeaMaterialPropertyRepresentationItem(const Handle_StepFEA_FeaMaterialPropertyRepresentationItem &aHandle);
		%feature("autodoc", "1");
		Handle_StepFEA_FeaMaterialPropertyRepresentationItem(const StepFEA_FeaMaterialPropertyRepresentationItem *anItem);
		%feature("autodoc", "1");
		Handle_StepFEA_FeaMaterialPropertyRepresentationItem const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepFEA_FeaMaterialPropertyRepresentationItem {
	StepFEA_FeaMaterialPropertyRepresentationItem* GetObject() {
	return (StepFEA_FeaMaterialPropertyRepresentationItem*)$self->Access();
	}
};
%extend Handle_StepFEA_FeaMaterialPropertyRepresentationItem {
	~Handle_StepFEA_FeaMaterialPropertyRepresentationItem() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepFEA_FeaMaterialPropertyRepresentationItem\n");}
	}
};


%nodefaultctor Handle_StepFEA_FeaShellMembraneBendingCouplingStiffness;
class Handle_StepFEA_FeaShellMembraneBendingCouplingStiffness : public Handle_StepFEA_FeaMaterialPropertyRepresentationItem {
	public:
		%feature("autodoc", "1");
		Handle_StepFEA_FeaShellMembraneBendingCouplingStiffness();
		%feature("autodoc", "1");
		Handle_StepFEA_FeaShellMembraneBendingCouplingStiffness(const Handle_StepFEA_FeaShellMembraneBendingCouplingStiffness &aHandle);
		%feature("autodoc", "1");
		Handle_StepFEA_FeaShellMembraneBendingCouplingStiffness(const StepFEA_FeaShellMembraneBendingCouplingStiffness *anItem);
		%feature("autodoc", "1");
		Handle_StepFEA_FeaShellMembraneBendingCouplingStiffness const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepFEA_FeaShellMembraneBendingCouplingStiffness {
	StepFEA_FeaShellMembraneBendingCouplingStiffness* GetObject() {
	return (StepFEA_FeaShellMembraneBendingCouplingStiffness*)$self->Access();
	}
};
%extend Handle_StepFEA_FeaShellMembraneBendingCouplingStiffness {
	~Handle_StepFEA_FeaShellMembraneBendingCouplingStiffness() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepFEA_FeaShellMembraneBendingCouplingStiffness\n");}
	}
};


%nodefaultctor Handle_StepFEA_FeaLinearElasticity;
class Handle_StepFEA_FeaLinearElasticity : public Handle_StepFEA_FeaMaterialPropertyRepresentationItem {
	public:
		%feature("autodoc", "1");
		Handle_StepFEA_FeaLinearElasticity();
		%feature("autodoc", "1");
		Handle_StepFEA_FeaLinearElasticity(const Handle_StepFEA_FeaLinearElasticity &aHandle);
		%feature("autodoc", "1");
		Handle_StepFEA_FeaLinearElasticity(const StepFEA_FeaLinearElasticity *anItem);
		%feature("autodoc", "1");
		Handle_StepFEA_FeaLinearElasticity const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepFEA_FeaLinearElasticity {
	StepFEA_FeaLinearElasticity* GetObject() {
	return (StepFEA_FeaLinearElasticity*)$self->Access();
	}
};
%extend Handle_StepFEA_FeaLinearElasticity {
	~Handle_StepFEA_FeaLinearElasticity() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepFEA_FeaLinearElasticity\n");}
	}
};


%nodefaultctor Handle_StepFEA_FeaShellShearStiffness;
class Handle_StepFEA_FeaShellShearStiffness : public Handle_StepFEA_FeaMaterialPropertyRepresentationItem {
	public:
		%feature("autodoc", "1");
		Handle_StepFEA_FeaShellShearStiffness();
		%feature("autodoc", "1");
		Handle_StepFEA_FeaShellShearStiffness(const Handle_StepFEA_FeaShellShearStiffness &aHandle);
		%feature("autodoc", "1");
		Handle_StepFEA_FeaShellShearStiffness(const StepFEA_FeaShellShearStiffness *anItem);
		%feature("autodoc", "1");
		Handle_StepFEA_FeaShellShearStiffness const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepFEA_FeaShellShearStiffness {
	StepFEA_FeaShellShearStiffness* GetObject() {
	return (StepFEA_FeaShellShearStiffness*)$self->Access();
	}
};
%extend Handle_StepFEA_FeaShellShearStiffness {
	~Handle_StepFEA_FeaShellShearStiffness() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepFEA_FeaShellShearStiffness\n");}
	}
};


%nodefaultctor Handle_StepFEA_FeaModel;
class Handle_StepFEA_FeaModel : public Handle_StepRepr_Representation {
	public:
		%feature("autodoc", "1");
		Handle_StepFEA_FeaModel();
		%feature("autodoc", "1");
		Handle_StepFEA_FeaModel(const Handle_StepFEA_FeaModel &aHandle);
		%feature("autodoc", "1");
		Handle_StepFEA_FeaModel(const StepFEA_FeaModel *anItem);
		%feature("autodoc", "1");
		Handle_StepFEA_FeaModel const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepFEA_FeaModel {
	StepFEA_FeaModel* GetObject() {
	return (StepFEA_FeaModel*)$self->Access();
	}
};
%extend Handle_StepFEA_FeaModel {
	~Handle_StepFEA_FeaModel() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepFEA_FeaModel\n");}
	}
};


%nodefaultctor Handle_StepFEA_FeaModel3d;
class Handle_StepFEA_FeaModel3d : public Handle_StepFEA_FeaModel {
	public:
		%feature("autodoc", "1");
		Handle_StepFEA_FeaModel3d();
		%feature("autodoc", "1");
		Handle_StepFEA_FeaModel3d(const Handle_StepFEA_FeaModel3d &aHandle);
		%feature("autodoc", "1");
		Handle_StepFEA_FeaModel3d(const StepFEA_FeaModel3d *anItem);
		%feature("autodoc", "1");
		Handle_StepFEA_FeaModel3d const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepFEA_FeaModel3d {
	StepFEA_FeaModel3d* GetObject() {
	return (StepFEA_FeaModel3d*)$self->Access();
	}
};
%extend Handle_StepFEA_FeaModel3d {
	~Handle_StepFEA_FeaModel3d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepFEA_FeaModel3d\n");}
	}
};


%nodefaultctor Handle_StepFEA_SequenceNodeOfSequenceOfElementRepresentation;
class Handle_StepFEA_SequenceNodeOfSequenceOfElementRepresentation : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_StepFEA_SequenceNodeOfSequenceOfElementRepresentation();
		%feature("autodoc", "1");
		Handle_StepFEA_SequenceNodeOfSequenceOfElementRepresentation(const Handle_StepFEA_SequenceNodeOfSequenceOfElementRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepFEA_SequenceNodeOfSequenceOfElementRepresentation(const StepFEA_SequenceNodeOfSequenceOfElementRepresentation *anItem);
		%feature("autodoc", "1");
		Handle_StepFEA_SequenceNodeOfSequenceOfElementRepresentation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepFEA_SequenceNodeOfSequenceOfElementRepresentation {
	StepFEA_SequenceNodeOfSequenceOfElementRepresentation* GetObject() {
	return (StepFEA_SequenceNodeOfSequenceOfElementRepresentation*)$self->Access();
	}
};
%extend Handle_StepFEA_SequenceNodeOfSequenceOfElementRepresentation {
	~Handle_StepFEA_SequenceNodeOfSequenceOfElementRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepFEA_SequenceNodeOfSequenceOfElementRepresentation\n");}
	}
};


%nodefaultctor Handle_StepFEA_HSequenceOfElementGeometricRelationship;
class Handle_StepFEA_HSequenceOfElementGeometricRelationship : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepFEA_HSequenceOfElementGeometricRelationship();
		%feature("autodoc", "1");
		Handle_StepFEA_HSequenceOfElementGeometricRelationship(const Handle_StepFEA_HSequenceOfElementGeometricRelationship &aHandle);
		%feature("autodoc", "1");
		Handle_StepFEA_HSequenceOfElementGeometricRelationship(const StepFEA_HSequenceOfElementGeometricRelationship *anItem);
		%feature("autodoc", "1");
		Handle_StepFEA_HSequenceOfElementGeometricRelationship const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepFEA_HSequenceOfElementGeometricRelationship {
	StepFEA_HSequenceOfElementGeometricRelationship* GetObject() {
	return (StepFEA_HSequenceOfElementGeometricRelationship*)$self->Access();
	}
};
%extend Handle_StepFEA_HSequenceOfElementGeometricRelationship {
	~Handle_StepFEA_HSequenceOfElementGeometricRelationship() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepFEA_HSequenceOfElementGeometricRelationship\n");}
	}
};


%nodefaultctor Handle_StepFEA_FeaSurfaceSectionGeometricRelationship;
class Handle_StepFEA_FeaSurfaceSectionGeometricRelationship : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepFEA_FeaSurfaceSectionGeometricRelationship();
		%feature("autodoc", "1");
		Handle_StepFEA_FeaSurfaceSectionGeometricRelationship(const Handle_StepFEA_FeaSurfaceSectionGeometricRelationship &aHandle);
		%feature("autodoc", "1");
		Handle_StepFEA_FeaSurfaceSectionGeometricRelationship(const StepFEA_FeaSurfaceSectionGeometricRelationship *anItem);
		%feature("autodoc", "1");
		Handle_StepFEA_FeaSurfaceSectionGeometricRelationship const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepFEA_FeaSurfaceSectionGeometricRelationship {
	StepFEA_FeaSurfaceSectionGeometricRelationship* GetObject() {
	return (StepFEA_FeaSurfaceSectionGeometricRelationship*)$self->Access();
	}
};
%extend Handle_StepFEA_FeaSurfaceSectionGeometricRelationship {
	~Handle_StepFEA_FeaSurfaceSectionGeometricRelationship() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepFEA_FeaSurfaceSectionGeometricRelationship\n");}
	}
};


%nodefaultctor Handle_StepFEA_FeaTangentialCoefficientOfLinearThermalExpansion;
class Handle_StepFEA_FeaTangentialCoefficientOfLinearThermalExpansion : public Handle_StepFEA_FeaMaterialPropertyRepresentationItem {
	public:
		%feature("autodoc", "1");
		Handle_StepFEA_FeaTangentialCoefficientOfLinearThermalExpansion();
		%feature("autodoc", "1");
		Handle_StepFEA_FeaTangentialCoefficientOfLinearThermalExpansion(const Handle_StepFEA_FeaTangentialCoefficientOfLinearThermalExpansion &aHandle);
		%feature("autodoc", "1");
		Handle_StepFEA_FeaTangentialCoefficientOfLinearThermalExpansion(const StepFEA_FeaTangentialCoefficientOfLinearThermalExpansion *anItem);
		%feature("autodoc", "1");
		Handle_StepFEA_FeaTangentialCoefficientOfLinearThermalExpansion const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepFEA_FeaTangentialCoefficientOfLinearThermalExpansion {
	StepFEA_FeaTangentialCoefficientOfLinearThermalExpansion* GetObject() {
	return (StepFEA_FeaTangentialCoefficientOfLinearThermalExpansion*)$self->Access();
	}
};
%extend Handle_StepFEA_FeaTangentialCoefficientOfLinearThermalExpansion {
	~Handle_StepFEA_FeaTangentialCoefficientOfLinearThermalExpansion() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepFEA_FeaTangentialCoefficientOfLinearThermalExpansion\n");}
	}
};


%nodefaultctor Handle_StepFEA_ElementRepresentation;
class Handle_StepFEA_ElementRepresentation : public Handle_StepRepr_Representation {
	public:
		%feature("autodoc", "1");
		Handle_StepFEA_ElementRepresentation();
		%feature("autodoc", "1");
		Handle_StepFEA_ElementRepresentation(const Handle_StepFEA_ElementRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepFEA_ElementRepresentation(const StepFEA_ElementRepresentation *anItem);
		%feature("autodoc", "1");
		Handle_StepFEA_ElementRepresentation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepFEA_ElementRepresentation {
	StepFEA_ElementRepresentation* GetObject() {
	return (StepFEA_ElementRepresentation*)$self->Access();
	}
};
%extend Handle_StepFEA_ElementRepresentation {
	~Handle_StepFEA_ElementRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepFEA_ElementRepresentation\n");}
	}
};


%nodefaultctor Handle_StepFEA_FeaRepresentationItem;
class Handle_StepFEA_FeaRepresentationItem : public Handle_StepRepr_RepresentationItem {
	public:
		%feature("autodoc", "1");
		Handle_StepFEA_FeaRepresentationItem();
		%feature("autodoc", "1");
		Handle_StepFEA_FeaRepresentationItem(const Handle_StepFEA_FeaRepresentationItem &aHandle);
		%feature("autodoc", "1");
		Handle_StepFEA_FeaRepresentationItem(const StepFEA_FeaRepresentationItem *anItem);
		%feature("autodoc", "1");
		Handle_StepFEA_FeaRepresentationItem const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepFEA_FeaRepresentationItem {
	StepFEA_FeaRepresentationItem* GetObject() {
	return (StepFEA_FeaRepresentationItem*)$self->Access();
	}
};
%extend Handle_StepFEA_FeaRepresentationItem {
	~Handle_StepFEA_FeaRepresentationItem() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepFEA_FeaRepresentationItem\n");}
	}
};


%nodefaultctor Handle_StepFEA_AlignedSurface3dElementCoordinateSystem;
class Handle_StepFEA_AlignedSurface3dElementCoordinateSystem : public Handle_StepFEA_FeaRepresentationItem {
	public:
		%feature("autodoc", "1");
		Handle_StepFEA_AlignedSurface3dElementCoordinateSystem();
		%feature("autodoc", "1");
		Handle_StepFEA_AlignedSurface3dElementCoordinateSystem(const Handle_StepFEA_AlignedSurface3dElementCoordinateSystem &aHandle);
		%feature("autodoc", "1");
		Handle_StepFEA_AlignedSurface3dElementCoordinateSystem(const StepFEA_AlignedSurface3dElementCoordinateSystem *anItem);
		%feature("autodoc", "1");
		Handle_StepFEA_AlignedSurface3dElementCoordinateSystem const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepFEA_AlignedSurface3dElementCoordinateSystem {
	StepFEA_AlignedSurface3dElementCoordinateSystem* GetObject() {
	return (StepFEA_AlignedSurface3dElementCoordinateSystem*)$self->Access();
	}
};
%extend Handle_StepFEA_AlignedSurface3dElementCoordinateSystem {
	~Handle_StepFEA_AlignedSurface3dElementCoordinateSystem() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepFEA_AlignedSurface3dElementCoordinateSystem\n");}
	}
};


%nodefaultctor Handle_StepFEA_FeaMoistureAbsorption;
class Handle_StepFEA_FeaMoistureAbsorption : public Handle_StepFEA_FeaMaterialPropertyRepresentationItem {
	public:
		%feature("autodoc", "1");
		Handle_StepFEA_FeaMoistureAbsorption();
		%feature("autodoc", "1");
		Handle_StepFEA_FeaMoistureAbsorption(const Handle_StepFEA_FeaMoistureAbsorption &aHandle);
		%feature("autodoc", "1");
		Handle_StepFEA_FeaMoistureAbsorption(const StepFEA_FeaMoistureAbsorption *anItem);
		%feature("autodoc", "1");
		Handle_StepFEA_FeaMoistureAbsorption const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepFEA_FeaMoistureAbsorption {
	StepFEA_FeaMoistureAbsorption* GetObject() {
	return (StepFEA_FeaMoistureAbsorption*)$self->Access();
	}
};
%extend Handle_StepFEA_FeaMoistureAbsorption {
	~Handle_StepFEA_FeaMoistureAbsorption() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepFEA_FeaMoistureAbsorption\n");}
	}
};


%nodefaultctor Handle_StepFEA_Node;
class Handle_StepFEA_Node : public Handle_StepFEA_NodeRepresentation {
	public:
		%feature("autodoc", "1");
		Handle_StepFEA_Node();
		%feature("autodoc", "1");
		Handle_StepFEA_Node(const Handle_StepFEA_Node &aHandle);
		%feature("autodoc", "1");
		Handle_StepFEA_Node(const StepFEA_Node *anItem);
		%feature("autodoc", "1");
		Handle_StepFEA_Node const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepFEA_Node {
	StepFEA_Node* GetObject() {
	return (StepFEA_Node*)$self->Access();
	}
};
%extend Handle_StepFEA_Node {
	~Handle_StepFEA_Node() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepFEA_Node\n");}
	}
};


%nodefaultctor Handle_StepFEA_NodeWithSolutionCoordinateSystem;
class Handle_StepFEA_NodeWithSolutionCoordinateSystem : public Handle_StepFEA_Node {
	public:
		%feature("autodoc", "1");
		Handle_StepFEA_NodeWithSolutionCoordinateSystem();
		%feature("autodoc", "1");
		Handle_StepFEA_NodeWithSolutionCoordinateSystem(const Handle_StepFEA_NodeWithSolutionCoordinateSystem &aHandle);
		%feature("autodoc", "1");
		Handle_StepFEA_NodeWithSolutionCoordinateSystem(const StepFEA_NodeWithSolutionCoordinateSystem *anItem);
		%feature("autodoc", "1");
		Handle_StepFEA_NodeWithSolutionCoordinateSystem const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepFEA_NodeWithSolutionCoordinateSystem {
	StepFEA_NodeWithSolutionCoordinateSystem* GetObject() {
	return (StepFEA_NodeWithSolutionCoordinateSystem*)$self->Access();
	}
};
%extend Handle_StepFEA_NodeWithSolutionCoordinateSystem {
	~Handle_StepFEA_NodeWithSolutionCoordinateSystem() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepFEA_NodeWithSolutionCoordinateSystem\n");}
	}
};


%nodefaultctor Handle_StepFEA_NodeDefinition;
class Handle_StepFEA_NodeDefinition : public Handle_StepRepr_ShapeAspect {
	public:
		%feature("autodoc", "1");
		Handle_StepFEA_NodeDefinition();
		%feature("autodoc", "1");
		Handle_StepFEA_NodeDefinition(const Handle_StepFEA_NodeDefinition &aHandle);
		%feature("autodoc", "1");
		Handle_StepFEA_NodeDefinition(const StepFEA_NodeDefinition *anItem);
		%feature("autodoc", "1");
		Handle_StepFEA_NodeDefinition const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepFEA_NodeDefinition {
	StepFEA_NodeDefinition* GetObject() {
	return (StepFEA_NodeDefinition*)$self->Access();
	}
};
%extend Handle_StepFEA_NodeDefinition {
	~Handle_StepFEA_NodeDefinition() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepFEA_NodeDefinition\n");}
	}
};


%nodefaultctor Handle_StepFEA_SequenceNodeOfSequenceOfElementGeometricRelationship;
class Handle_StepFEA_SequenceNodeOfSequenceOfElementGeometricRelationship : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_StepFEA_SequenceNodeOfSequenceOfElementGeometricRelationship();
		%feature("autodoc", "1");
		Handle_StepFEA_SequenceNodeOfSequenceOfElementGeometricRelationship(const Handle_StepFEA_SequenceNodeOfSequenceOfElementGeometricRelationship &aHandle);
		%feature("autodoc", "1");
		Handle_StepFEA_SequenceNodeOfSequenceOfElementGeometricRelationship(const StepFEA_SequenceNodeOfSequenceOfElementGeometricRelationship *anItem);
		%feature("autodoc", "1");
		Handle_StepFEA_SequenceNodeOfSequenceOfElementGeometricRelationship const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepFEA_SequenceNodeOfSequenceOfElementGeometricRelationship {
	StepFEA_SequenceNodeOfSequenceOfElementGeometricRelationship* GetObject() {
	return (StepFEA_SequenceNodeOfSequenceOfElementGeometricRelationship*)$self->Access();
	}
};
%extend Handle_StepFEA_SequenceNodeOfSequenceOfElementGeometricRelationship {
	~Handle_StepFEA_SequenceNodeOfSequenceOfElementGeometricRelationship() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepFEA_SequenceNodeOfSequenceOfElementGeometricRelationship\n");}
	}
};


%nodefaultctor Handle_StepFEA_Surface3dElementRepresentation;
class Handle_StepFEA_Surface3dElementRepresentation : public Handle_StepFEA_ElementRepresentation {
	public:
		%feature("autodoc", "1");
		Handle_StepFEA_Surface3dElementRepresentation();
		%feature("autodoc", "1");
		Handle_StepFEA_Surface3dElementRepresentation(const Handle_StepFEA_Surface3dElementRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepFEA_Surface3dElementRepresentation(const StepFEA_Surface3dElementRepresentation *anItem);
		%feature("autodoc", "1");
		Handle_StepFEA_Surface3dElementRepresentation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepFEA_Surface3dElementRepresentation {
	StepFEA_Surface3dElementRepresentation* GetObject() {
	return (StepFEA_Surface3dElementRepresentation*)$self->Access();
	}
};
%extend Handle_StepFEA_Surface3dElementRepresentation {
	~Handle_StepFEA_Surface3dElementRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepFEA_Surface3dElementRepresentation\n");}
	}
};


%nodefaultctor Handle_StepFEA_HArray1OfCurveElementEndOffset;
class Handle_StepFEA_HArray1OfCurveElementEndOffset : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepFEA_HArray1OfCurveElementEndOffset();
		%feature("autodoc", "1");
		Handle_StepFEA_HArray1OfCurveElementEndOffset(const Handle_StepFEA_HArray1OfCurveElementEndOffset &aHandle);
		%feature("autodoc", "1");
		Handle_StepFEA_HArray1OfCurveElementEndOffset(const StepFEA_HArray1OfCurveElementEndOffset *anItem);
		%feature("autodoc", "1");
		Handle_StepFEA_HArray1OfCurveElementEndOffset const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepFEA_HArray1OfCurveElementEndOffset {
	StepFEA_HArray1OfCurveElementEndOffset* GetObject() {
	return (StepFEA_HArray1OfCurveElementEndOffset*)$self->Access();
	}
};
%extend Handle_StepFEA_HArray1OfCurveElementEndOffset {
	~Handle_StepFEA_HArray1OfCurveElementEndOffset() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepFEA_HArray1OfCurveElementEndOffset\n");}
	}
};


%nodefaultctor Handle_StepFEA_FeaModelDefinition;
class Handle_StepFEA_FeaModelDefinition : public Handle_StepRepr_ShapeAspect {
	public:
		%feature("autodoc", "1");
		Handle_StepFEA_FeaModelDefinition();
		%feature("autodoc", "1");
		Handle_StepFEA_FeaModelDefinition(const Handle_StepFEA_FeaModelDefinition &aHandle);
		%feature("autodoc", "1");
		Handle_StepFEA_FeaModelDefinition(const StepFEA_FeaModelDefinition *anItem);
		%feature("autodoc", "1");
		Handle_StepFEA_FeaModelDefinition const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepFEA_FeaModelDefinition {
	StepFEA_FeaModelDefinition* GetObject() {
	return (StepFEA_FeaModelDefinition*)$self->Access();
	}
};
%extend Handle_StepFEA_FeaModelDefinition {
	~Handle_StepFEA_FeaModelDefinition() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepFEA_FeaModelDefinition\n");}
	}
};


%nodefaultctor Handle_StepFEA_FeaShellMembraneStiffness;
class Handle_StepFEA_FeaShellMembraneStiffness : public Handle_StepFEA_FeaMaterialPropertyRepresentationItem {
	public:
		%feature("autodoc", "1");
		Handle_StepFEA_FeaShellMembraneStiffness();
		%feature("autodoc", "1");
		Handle_StepFEA_FeaShellMembraneStiffness(const Handle_StepFEA_FeaShellMembraneStiffness &aHandle);
		%feature("autodoc", "1");
		Handle_StepFEA_FeaShellMembraneStiffness(const StepFEA_FeaShellMembraneStiffness *anItem);
		%feature("autodoc", "1");
		Handle_StepFEA_FeaShellMembraneStiffness const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepFEA_FeaShellMembraneStiffness {
	StepFEA_FeaShellMembraneStiffness* GetObject() {
	return (StepFEA_FeaShellMembraneStiffness*)$self->Access();
	}
};
%extend Handle_StepFEA_FeaShellMembraneStiffness {
	~Handle_StepFEA_FeaShellMembraneStiffness() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepFEA_FeaShellMembraneStiffness\n");}
	}
};


%nodefaultctor Handle_StepFEA_FeaMaterialPropertyRepresentation;
class Handle_StepFEA_FeaMaterialPropertyRepresentation : public Handle_StepRepr_MaterialPropertyRepresentation {
	public:
		%feature("autodoc", "1");
		Handle_StepFEA_FeaMaterialPropertyRepresentation();
		%feature("autodoc", "1");
		Handle_StepFEA_FeaMaterialPropertyRepresentation(const Handle_StepFEA_FeaMaterialPropertyRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepFEA_FeaMaterialPropertyRepresentation(const StepFEA_FeaMaterialPropertyRepresentation *anItem);
		%feature("autodoc", "1");
		Handle_StepFEA_FeaMaterialPropertyRepresentation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepFEA_FeaMaterialPropertyRepresentation {
	StepFEA_FeaMaterialPropertyRepresentation* GetObject() {
	return (StepFEA_FeaMaterialPropertyRepresentation*)$self->Access();
	}
};
%extend Handle_StepFEA_FeaMaterialPropertyRepresentation {
	~Handle_StepFEA_FeaMaterialPropertyRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepFEA_FeaMaterialPropertyRepresentation\n");}
	}
};


%nodefaultctor Handle_StepFEA_ConstantSurface3dElementCoordinateSystem;
class Handle_StepFEA_ConstantSurface3dElementCoordinateSystem : public Handle_StepFEA_FeaRepresentationItem {
	public:
		%feature("autodoc", "1");
		Handle_StepFEA_ConstantSurface3dElementCoordinateSystem();
		%feature("autodoc", "1");
		Handle_StepFEA_ConstantSurface3dElementCoordinateSystem(const Handle_StepFEA_ConstantSurface3dElementCoordinateSystem &aHandle);
		%feature("autodoc", "1");
		Handle_StepFEA_ConstantSurface3dElementCoordinateSystem(const StepFEA_ConstantSurface3dElementCoordinateSystem *anItem);
		%feature("autodoc", "1");
		Handle_StepFEA_ConstantSurface3dElementCoordinateSystem const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepFEA_ConstantSurface3dElementCoordinateSystem {
	StepFEA_ConstantSurface3dElementCoordinateSystem* GetObject() {
	return (StepFEA_ConstantSurface3dElementCoordinateSystem*)$self->Access();
	}
};
%extend Handle_StepFEA_ConstantSurface3dElementCoordinateSystem {
	~Handle_StepFEA_ConstantSurface3dElementCoordinateSystem() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepFEA_ConstantSurface3dElementCoordinateSystem\n");}
	}
};


%nodefaultctor Handle_StepFEA_FeaCurveSectionGeometricRelationship;
class Handle_StepFEA_FeaCurveSectionGeometricRelationship : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepFEA_FeaCurveSectionGeometricRelationship();
		%feature("autodoc", "1");
		Handle_StepFEA_FeaCurveSectionGeometricRelationship(const Handle_StepFEA_FeaCurveSectionGeometricRelationship &aHandle);
		%feature("autodoc", "1");
		Handle_StepFEA_FeaCurveSectionGeometricRelationship(const StepFEA_FeaCurveSectionGeometricRelationship *anItem);
		%feature("autodoc", "1");
		Handle_StepFEA_FeaCurveSectionGeometricRelationship const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepFEA_FeaCurveSectionGeometricRelationship {
	StepFEA_FeaCurveSectionGeometricRelationship* GetObject() {
	return (StepFEA_FeaCurveSectionGeometricRelationship*)$self->Access();
	}
};
%extend Handle_StepFEA_FeaCurveSectionGeometricRelationship {
	~Handle_StepFEA_FeaCurveSectionGeometricRelationship() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepFEA_FeaCurveSectionGeometricRelationship\n");}
	}
};


%nodefaultctor Handle_StepFEA_SequenceNodeOfSequenceOfCurve3dElementProperty;
class Handle_StepFEA_SequenceNodeOfSequenceOfCurve3dElementProperty : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_StepFEA_SequenceNodeOfSequenceOfCurve3dElementProperty();
		%feature("autodoc", "1");
		Handle_StepFEA_SequenceNodeOfSequenceOfCurve3dElementProperty(const Handle_StepFEA_SequenceNodeOfSequenceOfCurve3dElementProperty &aHandle);
		%feature("autodoc", "1");
		Handle_StepFEA_SequenceNodeOfSequenceOfCurve3dElementProperty(const StepFEA_SequenceNodeOfSequenceOfCurve3dElementProperty *anItem);
		%feature("autodoc", "1");
		Handle_StepFEA_SequenceNodeOfSequenceOfCurve3dElementProperty const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepFEA_SequenceNodeOfSequenceOfCurve3dElementProperty {
	StepFEA_SequenceNodeOfSequenceOfCurve3dElementProperty* GetObject() {
	return (StepFEA_SequenceNodeOfSequenceOfCurve3dElementProperty*)$self->Access();
	}
};
%extend Handle_StepFEA_SequenceNodeOfSequenceOfCurve3dElementProperty {
	~Handle_StepFEA_SequenceNodeOfSequenceOfCurve3dElementProperty() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepFEA_SequenceNodeOfSequenceOfCurve3dElementProperty\n");}
	}
};


%nodefaultctor Handle_StepFEA_Curve3dElementRepresentation;
class Handle_StepFEA_Curve3dElementRepresentation : public Handle_StepFEA_ElementRepresentation {
	public:
		%feature("autodoc", "1");
		Handle_StepFEA_Curve3dElementRepresentation();
		%feature("autodoc", "1");
		Handle_StepFEA_Curve3dElementRepresentation(const Handle_StepFEA_Curve3dElementRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepFEA_Curve3dElementRepresentation(const StepFEA_Curve3dElementRepresentation *anItem);
		%feature("autodoc", "1");
		Handle_StepFEA_Curve3dElementRepresentation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepFEA_Curve3dElementRepresentation {
	StepFEA_Curve3dElementRepresentation* GetObject() {
	return (StepFEA_Curve3dElementRepresentation*)$self->Access();
	}
};
%extend Handle_StepFEA_Curve3dElementRepresentation {
	~Handle_StepFEA_Curve3dElementRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepFEA_Curve3dElementRepresentation\n");}
	}
};


%nodefaultctor Handle_StepFEA_GeometricNode;
class Handle_StepFEA_GeometricNode : public Handle_StepFEA_NodeRepresentation {
	public:
		%feature("autodoc", "1");
		Handle_StepFEA_GeometricNode();
		%feature("autodoc", "1");
		Handle_StepFEA_GeometricNode(const Handle_StepFEA_GeometricNode &aHandle);
		%feature("autodoc", "1");
		Handle_StepFEA_GeometricNode(const StepFEA_GeometricNode *anItem);
		%feature("autodoc", "1");
		Handle_StepFEA_GeometricNode const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepFEA_GeometricNode {
	StepFEA_GeometricNode* GetObject() {
	return (StepFEA_GeometricNode*)$self->Access();
	}
};
%extend Handle_StepFEA_GeometricNode {
	~Handle_StepFEA_GeometricNode() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepFEA_GeometricNode\n");}
	}
};


%nodefaultctor Handle_StepFEA_HArray1OfElementRepresentation;
class Handle_StepFEA_HArray1OfElementRepresentation : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepFEA_HArray1OfElementRepresentation();
		%feature("autodoc", "1");
		Handle_StepFEA_HArray1OfElementRepresentation(const Handle_StepFEA_HArray1OfElementRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepFEA_HArray1OfElementRepresentation(const StepFEA_HArray1OfElementRepresentation *anItem);
		%feature("autodoc", "1");
		Handle_StepFEA_HArray1OfElementRepresentation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepFEA_HArray1OfElementRepresentation {
	StepFEA_HArray1OfElementRepresentation* GetObject() {
	return (StepFEA_HArray1OfElementRepresentation*)$self->Access();
	}
};
%extend Handle_StepFEA_HArray1OfElementRepresentation {
	~Handle_StepFEA_HArray1OfElementRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepFEA_HArray1OfElementRepresentation\n");}
	}
};


%nodefaultctor Handle_StepFEA_AlignedCurve3dElementCoordinateSystem;
class Handle_StepFEA_AlignedCurve3dElementCoordinateSystem : public Handle_StepFEA_FeaRepresentationItem {
	public:
		%feature("autodoc", "1");
		Handle_StepFEA_AlignedCurve3dElementCoordinateSystem();
		%feature("autodoc", "1");
		Handle_StepFEA_AlignedCurve3dElementCoordinateSystem(const Handle_StepFEA_AlignedCurve3dElementCoordinateSystem &aHandle);
		%feature("autodoc", "1");
		Handle_StepFEA_AlignedCurve3dElementCoordinateSystem(const StepFEA_AlignedCurve3dElementCoordinateSystem *anItem);
		%feature("autodoc", "1");
		Handle_StepFEA_AlignedCurve3dElementCoordinateSystem const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepFEA_AlignedCurve3dElementCoordinateSystem {
	StepFEA_AlignedCurve3dElementCoordinateSystem* GetObject() {
	return (StepFEA_AlignedCurve3dElementCoordinateSystem*)$self->Access();
	}
};
%extend Handle_StepFEA_AlignedCurve3dElementCoordinateSystem {
	~Handle_StepFEA_AlignedCurve3dElementCoordinateSystem() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepFEA_AlignedCurve3dElementCoordinateSystem\n");}
	}
};


%nodefaultctor Handle_StepFEA_NodeSet;
class Handle_StepFEA_NodeSet : public Handle_StepGeom_GeometricRepresentationItem {
	public:
		%feature("autodoc", "1");
		Handle_StepFEA_NodeSet();
		%feature("autodoc", "1");
		Handle_StepFEA_NodeSet(const Handle_StepFEA_NodeSet &aHandle);
		%feature("autodoc", "1");
		Handle_StepFEA_NodeSet(const StepFEA_NodeSet *anItem);
		%feature("autodoc", "1");
		Handle_StepFEA_NodeSet const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepFEA_NodeSet {
	StepFEA_NodeSet* GetObject() {
	return (StepFEA_NodeSet*)$self->Access();
	}
};
%extend Handle_StepFEA_NodeSet {
	~Handle_StepFEA_NodeSet() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepFEA_NodeSet\n");}
	}
};


%nodefaultctor Handle_StepFEA_ParametricCurve3dElementCoordinateSystem;
class Handle_StepFEA_ParametricCurve3dElementCoordinateSystem : public Handle_StepFEA_FeaRepresentationItem {
	public:
		%feature("autodoc", "1");
		Handle_StepFEA_ParametricCurve3dElementCoordinateSystem();
		%feature("autodoc", "1");
		Handle_StepFEA_ParametricCurve3dElementCoordinateSystem(const Handle_StepFEA_ParametricCurve3dElementCoordinateSystem &aHandle);
		%feature("autodoc", "1");
		Handle_StepFEA_ParametricCurve3dElementCoordinateSystem(const StepFEA_ParametricCurve3dElementCoordinateSystem *anItem);
		%feature("autodoc", "1");
		Handle_StepFEA_ParametricCurve3dElementCoordinateSystem const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepFEA_ParametricCurve3dElementCoordinateSystem {
	StepFEA_ParametricCurve3dElementCoordinateSystem* GetObject() {
	return (StepFEA_ParametricCurve3dElementCoordinateSystem*)$self->Access();
	}
};
%extend Handle_StepFEA_ParametricCurve3dElementCoordinateSystem {
	~Handle_StepFEA_ParametricCurve3dElementCoordinateSystem() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepFEA_ParametricCurve3dElementCoordinateSystem\n");}
	}
};


%nodefaultctor Handle_StepFEA_CurveElementInterval;
class Handle_StepFEA_CurveElementInterval : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepFEA_CurveElementInterval();
		%feature("autodoc", "1");
		Handle_StepFEA_CurveElementInterval(const Handle_StepFEA_CurveElementInterval &aHandle);
		%feature("autodoc", "1");
		Handle_StepFEA_CurveElementInterval(const StepFEA_CurveElementInterval *anItem);
		%feature("autodoc", "1");
		Handle_StepFEA_CurveElementInterval const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepFEA_CurveElementInterval {
	StepFEA_CurveElementInterval* GetObject() {
	return (StepFEA_CurveElementInterval*)$self->Access();
	}
};
%extend Handle_StepFEA_CurveElementInterval {
	~Handle_StepFEA_CurveElementInterval() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepFEA_CurveElementInterval\n");}
	}
};


%nodefaultctor Handle_StepFEA_CurveElementIntervalLinearlyVarying;
class Handle_StepFEA_CurveElementIntervalLinearlyVarying : public Handle_StepFEA_CurveElementInterval {
	public:
		%feature("autodoc", "1");
		Handle_StepFEA_CurveElementIntervalLinearlyVarying();
		%feature("autodoc", "1");
		Handle_StepFEA_CurveElementIntervalLinearlyVarying(const Handle_StepFEA_CurveElementIntervalLinearlyVarying &aHandle);
		%feature("autodoc", "1");
		Handle_StepFEA_CurveElementIntervalLinearlyVarying(const StepFEA_CurveElementIntervalLinearlyVarying *anItem);
		%feature("autodoc", "1");
		Handle_StepFEA_CurveElementIntervalLinearlyVarying const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepFEA_CurveElementIntervalLinearlyVarying {
	StepFEA_CurveElementIntervalLinearlyVarying* GetObject() {
	return (StepFEA_CurveElementIntervalLinearlyVarying*)$self->Access();
	}
};
%extend Handle_StepFEA_CurveElementIntervalLinearlyVarying {
	~Handle_StepFEA_CurveElementIntervalLinearlyVarying() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepFEA_CurveElementIntervalLinearlyVarying\n");}
	}
};


%nodefaultctor Handle_StepFEA_CurveElementEndRelease;
class Handle_StepFEA_CurveElementEndRelease : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepFEA_CurveElementEndRelease();
		%feature("autodoc", "1");
		Handle_StepFEA_CurveElementEndRelease(const Handle_StepFEA_CurveElementEndRelease &aHandle);
		%feature("autodoc", "1");
		Handle_StepFEA_CurveElementEndRelease(const StepFEA_CurveElementEndRelease *anItem);
		%feature("autodoc", "1");
		Handle_StepFEA_CurveElementEndRelease const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepFEA_CurveElementEndRelease {
	StepFEA_CurveElementEndRelease* GetObject() {
	return (StepFEA_CurveElementEndRelease*)$self->Access();
	}
};
%extend Handle_StepFEA_CurveElementEndRelease {
	~Handle_StepFEA_CurveElementEndRelease() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepFEA_CurveElementEndRelease\n");}
	}
};


%nodefaultctor Handle_StepFEA_FreedomAndCoefficient;
class Handle_StepFEA_FreedomAndCoefficient : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepFEA_FreedomAndCoefficient();
		%feature("autodoc", "1");
		Handle_StepFEA_FreedomAndCoefficient(const Handle_StepFEA_FreedomAndCoefficient &aHandle);
		%feature("autodoc", "1");
		Handle_StepFEA_FreedomAndCoefficient(const StepFEA_FreedomAndCoefficient *anItem);
		%feature("autodoc", "1");
		Handle_StepFEA_FreedomAndCoefficient const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepFEA_FreedomAndCoefficient {
	StepFEA_FreedomAndCoefficient* GetObject() {
	return (StepFEA_FreedomAndCoefficient*)$self->Access();
	}
};
%extend Handle_StepFEA_FreedomAndCoefficient {
	~Handle_StepFEA_FreedomAndCoefficient() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepFEA_FreedomAndCoefficient\n");}
	}
};


%nodefaultctor Handle_StepFEA_HArray1OfCurveElementInterval;
class Handle_StepFEA_HArray1OfCurveElementInterval : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepFEA_HArray1OfCurveElementInterval();
		%feature("autodoc", "1");
		Handle_StepFEA_HArray1OfCurveElementInterval(const Handle_StepFEA_HArray1OfCurveElementInterval &aHandle);
		%feature("autodoc", "1");
		Handle_StepFEA_HArray1OfCurveElementInterval(const StepFEA_HArray1OfCurveElementInterval *anItem);
		%feature("autodoc", "1");
		Handle_StepFEA_HArray1OfCurveElementInterval const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepFEA_HArray1OfCurveElementInterval {
	StepFEA_HArray1OfCurveElementInterval* GetObject() {
	return (StepFEA_HArray1OfCurveElementInterval*)$self->Access();
	}
};
%extend Handle_StepFEA_HArray1OfCurveElementInterval {
	~Handle_StepFEA_HArray1OfCurveElementInterval() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepFEA_HArray1OfCurveElementInterval\n");}
	}
};


%nodefaultctor Handle_StepFEA_FeaSecantCoefficientOfLinearThermalExpansion;
class Handle_StepFEA_FeaSecantCoefficientOfLinearThermalExpansion : public Handle_StepFEA_FeaMaterialPropertyRepresentationItem {
	public:
		%feature("autodoc", "1");
		Handle_StepFEA_FeaSecantCoefficientOfLinearThermalExpansion();
		%feature("autodoc", "1");
		Handle_StepFEA_FeaSecantCoefficientOfLinearThermalExpansion(const Handle_StepFEA_FeaSecantCoefficientOfLinearThermalExpansion &aHandle);
		%feature("autodoc", "1");
		Handle_StepFEA_FeaSecantCoefficientOfLinearThermalExpansion(const StepFEA_FeaSecantCoefficientOfLinearThermalExpansion *anItem);
		%feature("autodoc", "1");
		Handle_StepFEA_FeaSecantCoefficientOfLinearThermalExpansion const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepFEA_FeaSecantCoefficientOfLinearThermalExpansion {
	StepFEA_FeaSecantCoefficientOfLinearThermalExpansion* GetObject() {
	return (StepFEA_FeaSecantCoefficientOfLinearThermalExpansion*)$self->Access();
	}
};
%extend Handle_StepFEA_FeaSecantCoefficientOfLinearThermalExpansion {
	~Handle_StepFEA_FeaSecantCoefficientOfLinearThermalExpansion() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepFEA_FeaSecantCoefficientOfLinearThermalExpansion\n");}
	}
};


%nodefaultctor Handle_StepFEA_CurveElementIntervalConstant;
class Handle_StepFEA_CurveElementIntervalConstant : public Handle_StepFEA_CurveElementInterval {
	public:
		%feature("autodoc", "1");
		Handle_StepFEA_CurveElementIntervalConstant();
		%feature("autodoc", "1");
		Handle_StepFEA_CurveElementIntervalConstant(const Handle_StepFEA_CurveElementIntervalConstant &aHandle);
		%feature("autodoc", "1");
		Handle_StepFEA_CurveElementIntervalConstant(const StepFEA_CurveElementIntervalConstant *anItem);
		%feature("autodoc", "1");
		Handle_StepFEA_CurveElementIntervalConstant const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepFEA_CurveElementIntervalConstant {
	StepFEA_CurveElementIntervalConstant* GetObject() {
	return (StepFEA_CurveElementIntervalConstant*)$self->Access();
	}
};
%extend Handle_StepFEA_CurveElementIntervalConstant {
	~Handle_StepFEA_CurveElementIntervalConstant() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepFEA_CurveElementIntervalConstant\n");}
	}
};


%nodefaultctor Handle_StepFEA_ArbitraryVolume3dElementCoordinateSystem;
class Handle_StepFEA_ArbitraryVolume3dElementCoordinateSystem : public Handle_StepFEA_FeaRepresentationItem {
	public:
		%feature("autodoc", "1");
		Handle_StepFEA_ArbitraryVolume3dElementCoordinateSystem();
		%feature("autodoc", "1");
		Handle_StepFEA_ArbitraryVolume3dElementCoordinateSystem(const Handle_StepFEA_ArbitraryVolume3dElementCoordinateSystem &aHandle);
		%feature("autodoc", "1");
		Handle_StepFEA_ArbitraryVolume3dElementCoordinateSystem(const StepFEA_ArbitraryVolume3dElementCoordinateSystem *anItem);
		%feature("autodoc", "1");
		Handle_StepFEA_ArbitraryVolume3dElementCoordinateSystem const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepFEA_ArbitraryVolume3dElementCoordinateSystem {
	StepFEA_ArbitraryVolume3dElementCoordinateSystem* GetObject() {
	return (StepFEA_ArbitraryVolume3dElementCoordinateSystem*)$self->Access();
	}
};
%extend Handle_StepFEA_ArbitraryVolume3dElementCoordinateSystem {
	~Handle_StepFEA_ArbitraryVolume3dElementCoordinateSystem() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepFEA_ArbitraryVolume3dElementCoordinateSystem\n");}
	}
};


%nodefaultctor Handle_StepFEA_FeaMassDensity;
class Handle_StepFEA_FeaMassDensity : public Handle_StepFEA_FeaMaterialPropertyRepresentationItem {
	public:
		%feature("autodoc", "1");
		Handle_StepFEA_FeaMassDensity();
		%feature("autodoc", "1");
		Handle_StepFEA_FeaMassDensity(const Handle_StepFEA_FeaMassDensity &aHandle);
		%feature("autodoc", "1");
		Handle_StepFEA_FeaMassDensity(const StepFEA_FeaMassDensity *anItem);
		%feature("autodoc", "1");
		Handle_StepFEA_FeaMassDensity const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepFEA_FeaMassDensity {
	StepFEA_FeaMassDensity* GetObject() {
	return (StepFEA_FeaMassDensity*)$self->Access();
	}
};
%extend Handle_StepFEA_FeaMassDensity {
	~Handle_StepFEA_FeaMassDensity() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepFEA_FeaMassDensity\n");}
	}
};


%nodefaultctor Handle_StepFEA_FeaAreaDensity;
class Handle_StepFEA_FeaAreaDensity : public Handle_StepFEA_FeaMaterialPropertyRepresentationItem {
	public:
		%feature("autodoc", "1");
		Handle_StepFEA_FeaAreaDensity();
		%feature("autodoc", "1");
		Handle_StepFEA_FeaAreaDensity(const Handle_StepFEA_FeaAreaDensity &aHandle);
		%feature("autodoc", "1");
		Handle_StepFEA_FeaAreaDensity(const StepFEA_FeaAreaDensity *anItem);
		%feature("autodoc", "1");
		Handle_StepFEA_FeaAreaDensity const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepFEA_FeaAreaDensity {
	StepFEA_FeaAreaDensity* GetObject() {
	return (StepFEA_FeaAreaDensity*)$self->Access();
	}
};
%extend Handle_StepFEA_FeaAreaDensity {
	~Handle_StepFEA_FeaAreaDensity() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepFEA_FeaAreaDensity\n");}
	}
};


%nodefaultctor Handle_StepFEA_SymmetricTensor23dMember;
class Handle_StepFEA_SymmetricTensor23dMember : public Handle_StepData_SelectArrReal {
	public:
		%feature("autodoc", "1");
		Handle_StepFEA_SymmetricTensor23dMember();
		%feature("autodoc", "1");
		Handle_StepFEA_SymmetricTensor23dMember(const Handle_StepFEA_SymmetricTensor23dMember &aHandle);
		%feature("autodoc", "1");
		Handle_StepFEA_SymmetricTensor23dMember(const StepFEA_SymmetricTensor23dMember *anItem);
		%feature("autodoc", "1");
		Handle_StepFEA_SymmetricTensor23dMember const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepFEA_SymmetricTensor23dMember {
	StepFEA_SymmetricTensor23dMember* GetObject() {
	return (StepFEA_SymmetricTensor23dMember*)$self->Access();
	}
};
%extend Handle_StepFEA_SymmetricTensor23dMember {
	~Handle_StepFEA_SymmetricTensor23dMember() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepFEA_SymmetricTensor23dMember\n");}
	}
};


%nodefaultctor Handle_StepFEA_CurveElementEndOffset;
class Handle_StepFEA_CurveElementEndOffset : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepFEA_CurveElementEndOffset();
		%feature("autodoc", "1");
		Handle_StepFEA_CurveElementEndOffset(const Handle_StepFEA_CurveElementEndOffset &aHandle);
		%feature("autodoc", "1");
		Handle_StepFEA_CurveElementEndOffset(const StepFEA_CurveElementEndOffset *anItem);
		%feature("autodoc", "1");
		Handle_StepFEA_CurveElementEndOffset const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepFEA_CurveElementEndOffset {
	StepFEA_CurveElementEndOffset* GetObject() {
	return (StepFEA_CurveElementEndOffset*)$self->Access();
	}
};
%extend Handle_StepFEA_CurveElementEndOffset {
	~Handle_StepFEA_CurveElementEndOffset() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepFEA_CurveElementEndOffset\n");}
	}
};


%nodefaultctor Handle_StepFEA_HSequenceOfCurve3dElementProperty;
class Handle_StepFEA_HSequenceOfCurve3dElementProperty : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepFEA_HSequenceOfCurve3dElementProperty();
		%feature("autodoc", "1");
		Handle_StepFEA_HSequenceOfCurve3dElementProperty(const Handle_StepFEA_HSequenceOfCurve3dElementProperty &aHandle);
		%feature("autodoc", "1");
		Handle_StepFEA_HSequenceOfCurve3dElementProperty(const StepFEA_HSequenceOfCurve3dElementProperty *anItem);
		%feature("autodoc", "1");
		Handle_StepFEA_HSequenceOfCurve3dElementProperty const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepFEA_HSequenceOfCurve3dElementProperty {
	StepFEA_HSequenceOfCurve3dElementProperty* GetObject() {
	return (StepFEA_HSequenceOfCurve3dElementProperty*)$self->Access();
	}
};
%extend Handle_StepFEA_HSequenceOfCurve3dElementProperty {
	~Handle_StepFEA_HSequenceOfCurve3dElementProperty() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepFEA_HSequenceOfCurve3dElementProperty\n");}
	}
};


%nodefaultctor Handle_StepFEA_ElementGroup;
class Handle_StepFEA_ElementGroup : public Handle_StepFEA_FeaGroup {
	public:
		%feature("autodoc", "1");
		Handle_StepFEA_ElementGroup();
		%feature("autodoc", "1");
		Handle_StepFEA_ElementGroup(const Handle_StepFEA_ElementGroup &aHandle);
		%feature("autodoc", "1");
		Handle_StepFEA_ElementGroup(const StepFEA_ElementGroup *anItem);
		%feature("autodoc", "1");
		Handle_StepFEA_ElementGroup const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepFEA_ElementGroup {
	StepFEA_ElementGroup* GetObject() {
	return (StepFEA_ElementGroup*)$self->Access();
	}
};
%extend Handle_StepFEA_ElementGroup {
	~Handle_StepFEA_ElementGroup() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepFEA_ElementGroup\n");}
	}
};


%nodefaultctor Handle_StepFEA_ParametricSurface3dElementCoordinateSystem;
class Handle_StepFEA_ParametricSurface3dElementCoordinateSystem : public Handle_StepFEA_FeaRepresentationItem {
	public:
		%feature("autodoc", "1");
		Handle_StepFEA_ParametricSurface3dElementCoordinateSystem();
		%feature("autodoc", "1");
		Handle_StepFEA_ParametricSurface3dElementCoordinateSystem(const Handle_StepFEA_ParametricSurface3dElementCoordinateSystem &aHandle);
		%feature("autodoc", "1");
		Handle_StepFEA_ParametricSurface3dElementCoordinateSystem(const StepFEA_ParametricSurface3dElementCoordinateSystem *anItem);
		%feature("autodoc", "1");
		Handle_StepFEA_ParametricSurface3dElementCoordinateSystem const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepFEA_ParametricSurface3dElementCoordinateSystem {
	StepFEA_ParametricSurface3dElementCoordinateSystem* GetObject() {
	return (StepFEA_ParametricSurface3dElementCoordinateSystem*)$self->Access();
	}
};
%extend Handle_StepFEA_ParametricSurface3dElementCoordinateSystem {
	~Handle_StepFEA_ParametricSurface3dElementCoordinateSystem() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepFEA_ParametricSurface3dElementCoordinateSystem\n");}
	}
};


%nodefaultctor Handle_StepFEA_HSequenceOfElementRepresentation;
class Handle_StepFEA_HSequenceOfElementRepresentation : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepFEA_HSequenceOfElementRepresentation();
		%feature("autodoc", "1");
		Handle_StepFEA_HSequenceOfElementRepresentation(const Handle_StepFEA_HSequenceOfElementRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepFEA_HSequenceOfElementRepresentation(const StepFEA_HSequenceOfElementRepresentation *anItem);
		%feature("autodoc", "1");
		Handle_StepFEA_HSequenceOfElementRepresentation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepFEA_HSequenceOfElementRepresentation {
	StepFEA_HSequenceOfElementRepresentation* GetObject() {
	return (StepFEA_HSequenceOfElementRepresentation*)$self->Access();
	}
};
%extend Handle_StepFEA_HSequenceOfElementRepresentation {
	~Handle_StepFEA_HSequenceOfElementRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepFEA_HSequenceOfElementRepresentation\n");}
	}
};


%nodefaultctor Handle_StepFEA_HSequenceOfNodeRepresentation;
class Handle_StepFEA_HSequenceOfNodeRepresentation : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepFEA_HSequenceOfNodeRepresentation();
		%feature("autodoc", "1");
		Handle_StepFEA_HSequenceOfNodeRepresentation(const Handle_StepFEA_HSequenceOfNodeRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepFEA_HSequenceOfNodeRepresentation(const StepFEA_HSequenceOfNodeRepresentation *anItem);
		%feature("autodoc", "1");
		Handle_StepFEA_HSequenceOfNodeRepresentation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepFEA_HSequenceOfNodeRepresentation {
	StepFEA_HSequenceOfNodeRepresentation* GetObject() {
	return (StepFEA_HSequenceOfNodeRepresentation*)$self->Access();
	}
};
%extend Handle_StepFEA_HSequenceOfNodeRepresentation {
	~Handle_StepFEA_HSequenceOfNodeRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepFEA_HSequenceOfNodeRepresentation\n");}
	}
};


%nodefaultctor Handle_StepFEA_FeaShellBendingStiffness;
class Handle_StepFEA_FeaShellBendingStiffness : public Handle_StepFEA_FeaMaterialPropertyRepresentationItem {
	public:
		%feature("autodoc", "1");
		Handle_StepFEA_FeaShellBendingStiffness();
		%feature("autodoc", "1");
		Handle_StepFEA_FeaShellBendingStiffness(const Handle_StepFEA_FeaShellBendingStiffness &aHandle);
		%feature("autodoc", "1");
		Handle_StepFEA_FeaShellBendingStiffness(const StepFEA_FeaShellBendingStiffness *anItem);
		%feature("autodoc", "1");
		Handle_StepFEA_FeaShellBendingStiffness const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepFEA_FeaShellBendingStiffness {
	StepFEA_FeaShellBendingStiffness* GetObject() {
	return (StepFEA_FeaShellBendingStiffness*)$self->Access();
	}
};
%extend Handle_StepFEA_FeaShellBendingStiffness {
	~Handle_StepFEA_FeaShellBendingStiffness() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepFEA_FeaShellBendingStiffness\n");}
	}
};


%nodefaultctor Handle_StepFEA_HArray1OfDegreeOfFreedom;
class Handle_StepFEA_HArray1OfDegreeOfFreedom : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepFEA_HArray1OfDegreeOfFreedom();
		%feature("autodoc", "1");
		Handle_StepFEA_HArray1OfDegreeOfFreedom(const Handle_StepFEA_HArray1OfDegreeOfFreedom &aHandle);
		%feature("autodoc", "1");
		Handle_StepFEA_HArray1OfDegreeOfFreedom(const StepFEA_HArray1OfDegreeOfFreedom *anItem);
		%feature("autodoc", "1");
		Handle_StepFEA_HArray1OfDegreeOfFreedom const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepFEA_HArray1OfDegreeOfFreedom {
	StepFEA_HArray1OfDegreeOfFreedom* GetObject() {
	return (StepFEA_HArray1OfDegreeOfFreedom*)$self->Access();
	}
};
%extend Handle_StepFEA_HArray1OfDegreeOfFreedom {
	~Handle_StepFEA_HArray1OfDegreeOfFreedom() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepFEA_HArray1OfDegreeOfFreedom\n");}
	}
};


%nodefaultctor Handle_StepFEA_Curve3dElementProperty;
class Handle_StepFEA_Curve3dElementProperty : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepFEA_Curve3dElementProperty();
		%feature("autodoc", "1");
		Handle_StepFEA_Curve3dElementProperty(const Handle_StepFEA_Curve3dElementProperty &aHandle);
		%feature("autodoc", "1");
		Handle_StepFEA_Curve3dElementProperty(const StepFEA_Curve3dElementProperty *anItem);
		%feature("autodoc", "1");
		Handle_StepFEA_Curve3dElementProperty const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepFEA_Curve3dElementProperty {
	StepFEA_Curve3dElementProperty* GetObject() {
	return (StepFEA_Curve3dElementProperty*)$self->Access();
	}
};
%extend Handle_StepFEA_Curve3dElementProperty {
	~Handle_StepFEA_Curve3dElementProperty() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepFEA_Curve3dElementProperty\n");}
	}
};


%nodefaultctor Handle_StepFEA_FeaAxis2Placement3d;
class Handle_StepFEA_FeaAxis2Placement3d : public Handle_StepGeom_Axis2Placement3d {
	public:
		%feature("autodoc", "1");
		Handle_StepFEA_FeaAxis2Placement3d();
		%feature("autodoc", "1");
		Handle_StepFEA_FeaAxis2Placement3d(const Handle_StepFEA_FeaAxis2Placement3d &aHandle);
		%feature("autodoc", "1");
		Handle_StepFEA_FeaAxis2Placement3d(const StepFEA_FeaAxis2Placement3d *anItem);
		%feature("autodoc", "1");
		Handle_StepFEA_FeaAxis2Placement3d const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepFEA_FeaAxis2Placement3d {
	StepFEA_FeaAxis2Placement3d* GetObject() {
	return (StepFEA_FeaAxis2Placement3d*)$self->Access();
	}
};
%extend Handle_StepFEA_FeaAxis2Placement3d {
	~Handle_StepFEA_FeaAxis2Placement3d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepFEA_FeaAxis2Placement3d\n");}
	}
};


%nodefaultctor Handle_StepFEA_HArray1OfNodeRepresentation;
class Handle_StepFEA_HArray1OfNodeRepresentation : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepFEA_HArray1OfNodeRepresentation();
		%feature("autodoc", "1");
		Handle_StepFEA_HArray1OfNodeRepresentation(const Handle_StepFEA_HArray1OfNodeRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepFEA_HArray1OfNodeRepresentation(const StepFEA_HArray1OfNodeRepresentation *anItem);
		%feature("autodoc", "1");
		Handle_StepFEA_HArray1OfNodeRepresentation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepFEA_HArray1OfNodeRepresentation {
	StepFEA_HArray1OfNodeRepresentation* GetObject() {
	return (StepFEA_HArray1OfNodeRepresentation*)$self->Access();
	}
};
%extend Handle_StepFEA_HArray1OfNodeRepresentation {
	~Handle_StepFEA_HArray1OfNodeRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepFEA_HArray1OfNodeRepresentation\n");}
	}
};


%nodefaultctor Handle_StepFEA_FreedomsList;
class Handle_StepFEA_FreedomsList : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepFEA_FreedomsList();
		%feature("autodoc", "1");
		Handle_StepFEA_FreedomsList(const Handle_StepFEA_FreedomsList &aHandle);
		%feature("autodoc", "1");
		Handle_StepFEA_FreedomsList(const StepFEA_FreedomsList *anItem);
		%feature("autodoc", "1");
		Handle_StepFEA_FreedomsList const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepFEA_FreedomsList {
	StepFEA_FreedomsList* GetObject() {
	return (StepFEA_FreedomsList*)$self->Access();
	}
};
%extend Handle_StepFEA_FreedomsList {
	~Handle_StepFEA_FreedomsList() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepFEA_FreedomsList\n");}
	}
};


%nodefaultctor Handle_StepFEA_SequenceNodeOfSequenceOfNodeRepresentation;
class Handle_StepFEA_SequenceNodeOfSequenceOfNodeRepresentation : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_StepFEA_SequenceNodeOfSequenceOfNodeRepresentation();
		%feature("autodoc", "1");
		Handle_StepFEA_SequenceNodeOfSequenceOfNodeRepresentation(const Handle_StepFEA_SequenceNodeOfSequenceOfNodeRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepFEA_SequenceNodeOfSequenceOfNodeRepresentation(const StepFEA_SequenceNodeOfSequenceOfNodeRepresentation *anItem);
		%feature("autodoc", "1");
		Handle_StepFEA_SequenceNodeOfSequenceOfNodeRepresentation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepFEA_SequenceNodeOfSequenceOfNodeRepresentation {
	StepFEA_SequenceNodeOfSequenceOfNodeRepresentation* GetObject() {
	return (StepFEA_SequenceNodeOfSequenceOfNodeRepresentation*)$self->Access();
	}
};
%extend Handle_StepFEA_SequenceNodeOfSequenceOfNodeRepresentation {
	~Handle_StepFEA_SequenceNodeOfSequenceOfNodeRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepFEA_SequenceNodeOfSequenceOfNodeRepresentation\n");}
	}
};


%nodefaultctor Handle_StepFEA_Volume3dElementRepresentation;
class Handle_StepFEA_Volume3dElementRepresentation : public Handle_StepFEA_ElementRepresentation {
	public:
		%feature("autodoc", "1");
		Handle_StepFEA_Volume3dElementRepresentation();
		%feature("autodoc", "1");
		Handle_StepFEA_Volume3dElementRepresentation(const Handle_StepFEA_Volume3dElementRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepFEA_Volume3dElementRepresentation(const StepFEA_Volume3dElementRepresentation *anItem);
		%feature("autodoc", "1");
		Handle_StepFEA_Volume3dElementRepresentation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepFEA_Volume3dElementRepresentation {
	StepFEA_Volume3dElementRepresentation* GetObject() {
	return (StepFEA_Volume3dElementRepresentation*)$self->Access();
	}
};
%extend Handle_StepFEA_Volume3dElementRepresentation {
	~Handle_StepFEA_Volume3dElementRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepFEA_Volume3dElementRepresentation\n");}
	}
};


%nodefaultctor Handle_StepFEA_ParametricCurve3dElementCoordinateDirection;
class Handle_StepFEA_ParametricCurve3dElementCoordinateDirection : public Handle_StepFEA_FeaRepresentationItem {
	public:
		%feature("autodoc", "1");
		Handle_StepFEA_ParametricCurve3dElementCoordinateDirection();
		%feature("autodoc", "1");
		Handle_StepFEA_ParametricCurve3dElementCoordinateDirection(const Handle_StepFEA_ParametricCurve3dElementCoordinateDirection &aHandle);
		%feature("autodoc", "1");
		Handle_StepFEA_ParametricCurve3dElementCoordinateDirection(const StepFEA_ParametricCurve3dElementCoordinateDirection *anItem);
		%feature("autodoc", "1");
		Handle_StepFEA_ParametricCurve3dElementCoordinateDirection const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepFEA_ParametricCurve3dElementCoordinateDirection {
	StepFEA_ParametricCurve3dElementCoordinateDirection* GetObject() {
	return (StepFEA_ParametricCurve3dElementCoordinateDirection*)$self->Access();
	}
};
%extend Handle_StepFEA_ParametricCurve3dElementCoordinateDirection {
	~Handle_StepFEA_ParametricCurve3dElementCoordinateDirection() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepFEA_ParametricCurve3dElementCoordinateDirection\n");}
	}
};


%nodefaultctor Handle_StepFEA_SymmetricTensor43dMember;
class Handle_StepFEA_SymmetricTensor43dMember : public Handle_StepData_SelectArrReal {
	public:
		%feature("autodoc", "1");
		Handle_StepFEA_SymmetricTensor43dMember();
		%feature("autodoc", "1");
		Handle_StepFEA_SymmetricTensor43dMember(const Handle_StepFEA_SymmetricTensor43dMember &aHandle);
		%feature("autodoc", "1");
		Handle_StepFEA_SymmetricTensor43dMember(const StepFEA_SymmetricTensor43dMember *anItem);
		%feature("autodoc", "1");
		Handle_StepFEA_SymmetricTensor43dMember const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepFEA_SymmetricTensor43dMember {
	StepFEA_SymmetricTensor43dMember* GetObject() {
	return (StepFEA_SymmetricTensor43dMember*)$self->Access();
	}
};
%extend Handle_StepFEA_SymmetricTensor43dMember {
	~Handle_StepFEA_SymmetricTensor43dMember() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepFEA_SymmetricTensor43dMember\n");}
	}
};


%nodefaultctor Handle_StepFEA_CurveElementLocation;
class Handle_StepFEA_CurveElementLocation : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepFEA_CurveElementLocation();
		%feature("autodoc", "1");
		Handle_StepFEA_CurveElementLocation(const Handle_StepFEA_CurveElementLocation &aHandle);
		%feature("autodoc", "1");
		Handle_StepFEA_CurveElementLocation(const StepFEA_CurveElementLocation *anItem);
		%feature("autodoc", "1");
		Handle_StepFEA_CurveElementLocation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepFEA_CurveElementLocation {
	StepFEA_CurveElementLocation* GetObject() {
	return (StepFEA_CurveElementLocation*)$self->Access();
	}
};
%extend Handle_StepFEA_CurveElementLocation {
	~Handle_StepFEA_CurveElementLocation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepFEA_CurveElementLocation\n");}
	}
};


%nodefaultctor Handle_StepFEA_NodeWithVector;
class Handle_StepFEA_NodeWithVector : public Handle_StepFEA_Node {
	public:
		%feature("autodoc", "1");
		Handle_StepFEA_NodeWithVector();
		%feature("autodoc", "1");
		Handle_StepFEA_NodeWithVector(const Handle_StepFEA_NodeWithVector &aHandle);
		%feature("autodoc", "1");
		Handle_StepFEA_NodeWithVector(const StepFEA_NodeWithVector *anItem);
		%feature("autodoc", "1");
		Handle_StepFEA_NodeWithVector const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepFEA_NodeWithVector {
	StepFEA_NodeWithVector* GetObject() {
	return (StepFEA_NodeWithVector*)$self->Access();
	}
};
%extend Handle_StepFEA_NodeWithVector {
	~Handle_StepFEA_NodeWithVector() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepFEA_NodeWithVector\n");}
	}
};


%nodefaultctor Handle_StepFEA_HArray1OfCurveElementEndRelease;
class Handle_StepFEA_HArray1OfCurveElementEndRelease : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepFEA_HArray1OfCurveElementEndRelease();
		%feature("autodoc", "1");
		Handle_StepFEA_HArray1OfCurveElementEndRelease(const Handle_StepFEA_HArray1OfCurveElementEndRelease &aHandle);
		%feature("autodoc", "1");
		Handle_StepFEA_HArray1OfCurveElementEndRelease(const StepFEA_HArray1OfCurveElementEndRelease *anItem);
		%feature("autodoc", "1");
		Handle_StepFEA_HArray1OfCurveElementEndRelease const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepFEA_HArray1OfCurveElementEndRelease {
	StepFEA_HArray1OfCurveElementEndRelease* GetObject() {
	return (StepFEA_HArray1OfCurveElementEndRelease*)$self->Access();
	}
};
%extend Handle_StepFEA_HArray1OfCurveElementEndRelease {
	~Handle_StepFEA_HArray1OfCurveElementEndRelease() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepFEA_HArray1OfCurveElementEndRelease\n");}
	}
};


%nodefaultctor Handle_StepFEA_ElementGeometricRelationship;
class Handle_StepFEA_ElementGeometricRelationship : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepFEA_ElementGeometricRelationship();
		%feature("autodoc", "1");
		Handle_StepFEA_ElementGeometricRelationship(const Handle_StepFEA_ElementGeometricRelationship &aHandle);
		%feature("autodoc", "1");
		Handle_StepFEA_ElementGeometricRelationship(const StepFEA_ElementGeometricRelationship *anItem);
		%feature("autodoc", "1");
		Handle_StepFEA_ElementGeometricRelationship const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepFEA_ElementGeometricRelationship {
	StepFEA_ElementGeometricRelationship* GetObject() {
	return (StepFEA_ElementGeometricRelationship*)$self->Access();
	}
};
%extend Handle_StepFEA_ElementGeometricRelationship {
	~Handle_StepFEA_ElementGeometricRelationship() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepFEA_ElementGeometricRelationship\n");}
	}
};


%nodefaultctor Handle_StepFEA_DegreeOfFreedomMember;
class Handle_StepFEA_DegreeOfFreedomMember : public Handle_StepData_SelectNamed {
	public:
		%feature("autodoc", "1");
		Handle_StepFEA_DegreeOfFreedomMember();
		%feature("autodoc", "1");
		Handle_StepFEA_DegreeOfFreedomMember(const Handle_StepFEA_DegreeOfFreedomMember &aHandle);
		%feature("autodoc", "1");
		Handle_StepFEA_DegreeOfFreedomMember(const StepFEA_DegreeOfFreedomMember *anItem);
		%feature("autodoc", "1");
		Handle_StepFEA_DegreeOfFreedomMember const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepFEA_DegreeOfFreedomMember {
	StepFEA_DegreeOfFreedomMember* GetObject() {
	return (StepFEA_DegreeOfFreedomMember*)$self->Access();
	}
};
%extend Handle_StepFEA_DegreeOfFreedomMember {
	~Handle_StepFEA_DegreeOfFreedomMember() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepFEA_DegreeOfFreedomMember\n");}
	}
};


%nodefaultctor Handle_StepFEA_FeaParametricPoint;
class Handle_StepFEA_FeaParametricPoint : public Handle_StepGeom_Point {
	public:
		%feature("autodoc", "1");
		Handle_StepFEA_FeaParametricPoint();
		%feature("autodoc", "1");
		Handle_StepFEA_FeaParametricPoint(const Handle_StepFEA_FeaParametricPoint &aHandle);
		%feature("autodoc", "1");
		Handle_StepFEA_FeaParametricPoint(const StepFEA_FeaParametricPoint *anItem);
		%feature("autodoc", "1");
		Handle_StepFEA_FeaParametricPoint const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepFEA_FeaParametricPoint {
	StepFEA_FeaParametricPoint* GetObject() {
	return (StepFEA_FeaParametricPoint*)$self->Access();
	}
};
%extend Handle_StepFEA_FeaParametricPoint {
	~Handle_StepFEA_FeaParametricPoint() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepFEA_FeaParametricPoint\n");}
	}
};


%nodefaultctor StepFEA_FeaMaterialPropertyRepresentationItem;
class StepFEA_FeaMaterialPropertyRepresentationItem : public StepRepr_RepresentationItem {
	public:
		%feature("autodoc", "1");
		StepFEA_FeaMaterialPropertyRepresentationItem();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepFEA_FeaMaterialPropertyRepresentationItem {
	Handle_StepFEA_FeaMaterialPropertyRepresentationItem GetHandle() {
	return *(Handle_StepFEA_FeaMaterialPropertyRepresentationItem*) &$self;
	}
};
%extend StepFEA_FeaMaterialPropertyRepresentationItem {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepFEA_FeaMaterialPropertyRepresentationItem {
	~StepFEA_FeaMaterialPropertyRepresentationItem() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepFEA_FeaMaterialPropertyRepresentationItem\n");}
	}
};


%nodefaultctor StepFEA_FeaShellMembraneBendingCouplingStiffness;
class StepFEA_FeaShellMembraneBendingCouplingStiffness : public StepFEA_FeaMaterialPropertyRepresentationItem {
	public:
		%feature("autodoc", "1");
		StepFEA_FeaShellMembraneBendingCouplingStiffness();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aRepresentationItem_Name, const StepFEA_SymmetricTensor42d &aFeaConstants);
		%feature("autodoc", "1");
		StepFEA_SymmetricTensor42d FeaConstants() const;
		%feature("autodoc", "1");
		void SetFeaConstants(const StepFEA_SymmetricTensor42d &FeaConstants);

};
%extend StepFEA_FeaShellMembraneBendingCouplingStiffness {
	Handle_StepFEA_FeaShellMembraneBendingCouplingStiffness GetHandle() {
	return *(Handle_StepFEA_FeaShellMembraneBendingCouplingStiffness*) &$self;
	}
};
%extend StepFEA_FeaShellMembraneBendingCouplingStiffness {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepFEA_FeaShellMembraneBendingCouplingStiffness {
	~StepFEA_FeaShellMembraneBendingCouplingStiffness() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepFEA_FeaShellMembraneBendingCouplingStiffness\n");}
	}
};


%nodefaultctor StepFEA_FeaModel;
class StepFEA_FeaModel : public StepRepr_Representation {
	public:
		%feature("autodoc", "1");
		StepFEA_FeaModel();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aRepresentation_Name, const Handle_StepRepr_HArray1OfRepresentationItem &aRepresentation_Items, const Handle_StepRepr_RepresentationContext &aRepresentation_ContextOfItems, const Handle_TCollection_HAsciiString &aCreatingSoftware, const Handle_TColStd_HArray1OfAsciiString &aIntendedAnalysisCode, const Handle_TCollection_HAsciiString &aDescription, const Handle_TCollection_HAsciiString &aAnalysisType);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString CreatingSoftware() const;
		%feature("autodoc", "1");
		void SetCreatingSoftware(const Handle_TCollection_HAsciiString &CreatingSoftware);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfAsciiString IntendedAnalysisCode() const;
		%feature("autodoc", "1");
		void SetIntendedAnalysisCode(const Handle_TColStd_HArray1OfAsciiString &IntendedAnalysisCode);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Description() const;
		%feature("autodoc", "1");
		void SetDescription(const Handle_TCollection_HAsciiString &Description);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString AnalysisType() const;
		%feature("autodoc", "1");
		void SetAnalysisType(const Handle_TCollection_HAsciiString &AnalysisType);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepFEA_FeaModel {
	Handle_StepFEA_FeaModel GetHandle() {
	return *(Handle_StepFEA_FeaModel*) &$self;
	}
};
%extend StepFEA_FeaModel {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepFEA_FeaModel {
	~StepFEA_FeaModel() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepFEA_FeaModel\n");}
	}
};


%nodefaultctor StepFEA_Array1OfCurveElementEndOffset;
class StepFEA_Array1OfCurveElementEndOffset {
	public:
		%feature("autodoc", "1");
		StepFEA_Array1OfCurveElementEndOffset(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepFEA_Array1OfCurveElementEndOffset(const Handle_StepFEA_CurveElementEndOffset &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Handle_StepFEA_CurveElementEndOffset &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepFEA_Array1OfCurveElementEndOffset & Assign(const StepFEA_Array1OfCurveElementEndOffset &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StepFEA_CurveElementEndOffset &Value);
		%feature("autodoc", "1");
		const Handle_StepFEA_CurveElementEndOffset & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_StepFEA_CurveElementEndOffset & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_StepFEA_CurveElementEndOffset & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_StepFEA_CurveElementEndOffset & operator()(const Standard_Integer Index);

};
%extend StepFEA_Array1OfCurveElementEndOffset {
	~StepFEA_Array1OfCurveElementEndOffset() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepFEA_Array1OfCurveElementEndOffset\n");}
	}
};


%nodefaultctor StepFEA_FeaMassDensity;
class StepFEA_FeaMassDensity : public StepFEA_FeaMaterialPropertyRepresentationItem {
	public:
		%feature("autodoc", "1");
		StepFEA_FeaMassDensity();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aRepresentationItem_Name, const Standard_Real aFeaConstant);
		%feature("autodoc", "1");
		Standard_Real FeaConstant() const;
		%feature("autodoc", "1");
		void SetFeaConstant(const Standard_Real FeaConstant);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepFEA_FeaMassDensity {
	Handle_StepFEA_FeaMassDensity GetHandle() {
	return *(Handle_StepFEA_FeaMassDensity*) &$self;
	}
};
%extend StepFEA_FeaMassDensity {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepFEA_FeaMassDensity {
	~StepFEA_FeaMassDensity() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepFEA_FeaMassDensity\n");}
	}
};


%nodefaultctor StepFEA_ElementRepresentation;
class StepFEA_ElementRepresentation : public StepRepr_Representation {
	public:
		%feature("autodoc", "1");
		StepFEA_ElementRepresentation();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aRepresentation_Name, const Handle_StepRepr_HArray1OfRepresentationItem &aRepresentation_Items, const Handle_StepRepr_RepresentationContext &aRepresentation_ContextOfItems, const Handle_StepFEA_HArray1OfNodeRepresentation &aNodeList);
		%feature("autodoc", "1");
		Handle_StepFEA_HArray1OfNodeRepresentation NodeList() const;
		%feature("autodoc", "1");
		void SetNodeList(const Handle_StepFEA_HArray1OfNodeRepresentation &NodeList);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepFEA_ElementRepresentation {
	Handle_StepFEA_ElementRepresentation GetHandle() {
	return *(Handle_StepFEA_ElementRepresentation*) &$self;
	}
};
%extend StepFEA_ElementRepresentation {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepFEA_ElementRepresentation {
	~StepFEA_ElementRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepFEA_ElementRepresentation\n");}
	}
};


%nodefaultctor StepFEA_FeaSurfaceSectionGeometricRelationship;
class StepFEA_FeaSurfaceSectionGeometricRelationship : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepFEA_FeaSurfaceSectionGeometricRelationship();
		%feature("autodoc", "1");
		void Init(const Handle_StepElement_SurfaceSection &aSectionRef, const Handle_StepElement_AnalysisItemWithinRepresentation &aItem);
		%feature("autodoc", "1");
		Handle_StepElement_SurfaceSection SectionRef() const;
		%feature("autodoc", "1");
		void SetSectionRef(const Handle_StepElement_SurfaceSection &SectionRef);
		%feature("autodoc", "1");
		Handle_StepElement_AnalysisItemWithinRepresentation Item() const;
		%feature("autodoc", "1");
		void SetItem(const Handle_StepElement_AnalysisItemWithinRepresentation &Item);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepFEA_FeaSurfaceSectionGeometricRelationship {
	Handle_StepFEA_FeaSurfaceSectionGeometricRelationship GetHandle() {
	return *(Handle_StepFEA_FeaSurfaceSectionGeometricRelationship*) &$self;
	}
};
%extend StepFEA_FeaSurfaceSectionGeometricRelationship {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepFEA_FeaSurfaceSectionGeometricRelationship {
	~StepFEA_FeaSurfaceSectionGeometricRelationship() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepFEA_FeaSurfaceSectionGeometricRelationship\n");}
	}
};


%nodefaultctor StepFEA_HSequenceOfElementRepresentation;
class StepFEA_HSequenceOfElementRepresentation : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepFEA_HSequenceOfElementRepresentation();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const Handle_StepFEA_ElementRepresentation &anItem);
		%feature("autodoc", "1");
		void Append(const Handle_StepFEA_HSequenceOfElementRepresentation &aSequence);
		%feature("autodoc", "1");
		void Prepend(const Handle_StepFEA_ElementRepresentation &anItem);
		%feature("autodoc", "1");
		void Prepend(const Handle_StepFEA_HSequenceOfElementRepresentation &aSequence);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_StepFEA_ElementRepresentation &anItem);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_StepFEA_HSequenceOfElementRepresentation &aSequence);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_StepFEA_ElementRepresentation &anItem);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_StepFEA_HSequenceOfElementRepresentation &aSequence);
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer anIndex, const Standard_Integer anOtherIndex);
		%feature("autodoc", "1");
		Handle_StepFEA_HSequenceOfElementRepresentation Split(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer anIndex, const Handle_StepFEA_ElementRepresentation &anItem);
		%feature("autodoc", "1");
		const Handle_StepFEA_ElementRepresentation & Value(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		Handle_StepFEA_ElementRepresentation & ChangeValue(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer fromIndex, const Standard_Integer toIndex);
		%feature("autodoc", "1");
		const StepFEA_SequenceOfElementRepresentation & Sequence() const;
		%feature("autodoc", "1");
		StepFEA_SequenceOfElementRepresentation & ChangeSequence();
		%feature("autodoc", "1");
		Handle_StepFEA_HSequenceOfElementRepresentation ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepFEA_HSequenceOfElementRepresentation {
	Handle_StepFEA_HSequenceOfElementRepresentation GetHandle() {
	return *(Handle_StepFEA_HSequenceOfElementRepresentation*) &$self;
	}
};
%extend StepFEA_HSequenceOfElementRepresentation {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepFEA_HSequenceOfElementRepresentation {
	~StepFEA_HSequenceOfElementRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepFEA_HSequenceOfElementRepresentation\n");}
	}
};


%nodefaultctor StepFEA_SymmetricTensor42d;
class StepFEA_SymmetricTensor42d : public StepData_SelectType {
	public:
		%feature("autodoc", "1");
		StepFEA_SymmetricTensor42d();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseNum(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal AnisotropicSymmetricTensor42d() const;

};
%extend StepFEA_SymmetricTensor42d {
	~StepFEA_SymmetricTensor42d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepFEA_SymmetricTensor42d\n");}
	}
};


%nodefaultctor StepFEA_Array1OfElementRepresentation;
class StepFEA_Array1OfElementRepresentation {
	public:
		%feature("autodoc", "1");
		StepFEA_Array1OfElementRepresentation(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepFEA_Array1OfElementRepresentation(const Handle_StepFEA_ElementRepresentation &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Handle_StepFEA_ElementRepresentation &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepFEA_Array1OfElementRepresentation & Assign(const StepFEA_Array1OfElementRepresentation &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StepFEA_ElementRepresentation &Value);
		%feature("autodoc", "1");
		const Handle_StepFEA_ElementRepresentation & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_StepFEA_ElementRepresentation & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_StepFEA_ElementRepresentation & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_StepFEA_ElementRepresentation & operator()(const Standard_Integer Index);

};
%extend StepFEA_Array1OfElementRepresentation {
	~StepFEA_Array1OfElementRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepFEA_Array1OfElementRepresentation\n");}
	}
};


%nodefaultctor StepFEA_HArray1OfCurveElementEndRelease;
class StepFEA_HArray1OfCurveElementEndRelease : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepFEA_HArray1OfCurveElementEndRelease(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepFEA_HArray1OfCurveElementEndRelease(const Standard_Integer Low, const Standard_Integer Up, const Handle_StepFEA_CurveElementEndRelease &V);
		%feature("autodoc", "1");
		void Init(const Handle_StepFEA_CurveElementEndRelease &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StepFEA_CurveElementEndRelease &Value);
		%feature("autodoc", "1");
		const Handle_StepFEA_CurveElementEndRelease & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_StepFEA_CurveElementEndRelease & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const StepFEA_Array1OfCurveElementEndRelease & Array1() const;
		%feature("autodoc", "1");
		StepFEA_Array1OfCurveElementEndRelease & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepFEA_HArray1OfCurveElementEndRelease {
	Handle_StepFEA_HArray1OfCurveElementEndRelease GetHandle() {
	return *(Handle_StepFEA_HArray1OfCurveElementEndRelease*) &$self;
	}
};
%extend StepFEA_HArray1OfCurveElementEndRelease {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepFEA_HArray1OfCurveElementEndRelease {
	~StepFEA_HArray1OfCurveElementEndRelease() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepFEA_HArray1OfCurveElementEndRelease\n");}
	}
};


%nodefaultctor StepFEA_FeaRepresentationItem;
class StepFEA_FeaRepresentationItem : public StepRepr_RepresentationItem {
	public:
		%feature("autodoc", "1");
		StepFEA_FeaRepresentationItem();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepFEA_FeaRepresentationItem {
	Handle_StepFEA_FeaRepresentationItem GetHandle() {
	return *(Handle_StepFEA_FeaRepresentationItem*) &$self;
	}
};
%extend StepFEA_FeaRepresentationItem {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepFEA_FeaRepresentationItem {
	~StepFEA_FeaRepresentationItem() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepFEA_FeaRepresentationItem\n");}
	}
};


%nodefaultctor StepFEA_ParametricCurve3dElementCoordinateDirection;
class StepFEA_ParametricCurve3dElementCoordinateDirection : public StepFEA_FeaRepresentationItem {
	public:
		%feature("autodoc", "1");
		StepFEA_ParametricCurve3dElementCoordinateDirection();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aRepresentationItem_Name, const Handle_StepGeom_Direction &aOrientation);
		%feature("autodoc", "1");
		Handle_StepGeom_Direction Orientation() const;
		%feature("autodoc", "1");
		void SetOrientation(const Handle_StepGeom_Direction &Orientation);

};
%extend StepFEA_ParametricCurve3dElementCoordinateDirection {
	Handle_StepFEA_ParametricCurve3dElementCoordinateDirection GetHandle() {
	return *(Handle_StepFEA_ParametricCurve3dElementCoordinateDirection*) &$self;
	}
};
%extend StepFEA_ParametricCurve3dElementCoordinateDirection {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepFEA_ParametricCurve3dElementCoordinateDirection {
	~StepFEA_ParametricCurve3dElementCoordinateDirection() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepFEA_ParametricCurve3dElementCoordinateDirection\n");}
	}
};


%nodefaultctor StepFEA_FeaSecantCoefficientOfLinearThermalExpansion;
class StepFEA_FeaSecantCoefficientOfLinearThermalExpansion : public StepFEA_FeaMaterialPropertyRepresentationItem {
	public:
		%feature("autodoc", "1");
		StepFEA_FeaSecantCoefficientOfLinearThermalExpansion();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aRepresentationItem_Name, const StepFEA_SymmetricTensor23d &aFeaConstants, const Standard_Real aReferenceTemperature);
		%feature("autodoc", "1");
		StepFEA_SymmetricTensor23d FeaConstants() const;
		%feature("autodoc", "1");
		void SetFeaConstants(const StepFEA_SymmetricTensor23d &FeaConstants);
		%feature("autodoc", "1");
		Standard_Real ReferenceTemperature() const;
		%feature("autodoc", "1");
		void SetReferenceTemperature(const Standard_Real ReferenceTemperature);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepFEA_FeaSecantCoefficientOfLinearThermalExpansion {
	Handle_StepFEA_FeaSecantCoefficientOfLinearThermalExpansion GetHandle() {
	return *(Handle_StepFEA_FeaSecantCoefficientOfLinearThermalExpansion*) &$self;
	}
};
%extend StepFEA_FeaSecantCoefficientOfLinearThermalExpansion {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepFEA_FeaSecantCoefficientOfLinearThermalExpansion {
	~StepFEA_FeaSecantCoefficientOfLinearThermalExpansion() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepFEA_FeaSecantCoefficientOfLinearThermalExpansion\n");}
	}
};


%nodefaultctor StepFEA_CurveElementLocation;
class StepFEA_CurveElementLocation : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepFEA_CurveElementLocation();
		%feature("autodoc", "1");
		void Init(const Handle_StepFEA_FeaParametricPoint &aCoordinate);
		%feature("autodoc", "1");
		Handle_StepFEA_FeaParametricPoint Coordinate() const;
		%feature("autodoc", "1");
		void SetCoordinate(const Handle_StepFEA_FeaParametricPoint &Coordinate);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepFEA_CurveElementLocation {
	Handle_StepFEA_CurveElementLocation GetHandle() {
	return *(Handle_StepFEA_CurveElementLocation*) &$self;
	}
};
%extend StepFEA_CurveElementLocation {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepFEA_CurveElementLocation {
	~StepFEA_CurveElementLocation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepFEA_CurveElementLocation\n");}
	}
};


%nodefaultctor StepFEA_HArray1OfDegreeOfFreedom;
class StepFEA_HArray1OfDegreeOfFreedom : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepFEA_HArray1OfDegreeOfFreedom(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepFEA_HArray1OfDegreeOfFreedom(const Standard_Integer Low, const Standard_Integer Up, const StepFEA_DegreeOfFreedom &V);
		%feature("autodoc", "1");
		void Init(const StepFEA_DegreeOfFreedom &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepFEA_DegreeOfFreedom &Value);
		%feature("autodoc", "1");
		const StepFEA_DegreeOfFreedom & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepFEA_DegreeOfFreedom & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const StepFEA_Array1OfDegreeOfFreedom & Array1() const;
		%feature("autodoc", "1");
		StepFEA_Array1OfDegreeOfFreedom & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepFEA_HArray1OfDegreeOfFreedom {
	Handle_StepFEA_HArray1OfDegreeOfFreedom GetHandle() {
	return *(Handle_StepFEA_HArray1OfDegreeOfFreedom*) &$self;
	}
};
%extend StepFEA_HArray1OfDegreeOfFreedom {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepFEA_HArray1OfDegreeOfFreedom {
	~StepFEA_HArray1OfDegreeOfFreedom() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepFEA_HArray1OfDegreeOfFreedom\n");}
	}
};


%nodefaultctor StepFEA_HArray1OfElementRepresentation;
class StepFEA_HArray1OfElementRepresentation : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepFEA_HArray1OfElementRepresentation(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepFEA_HArray1OfElementRepresentation(const Standard_Integer Low, const Standard_Integer Up, const Handle_StepFEA_ElementRepresentation &V);
		%feature("autodoc", "1");
		void Init(const Handle_StepFEA_ElementRepresentation &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StepFEA_ElementRepresentation &Value);
		%feature("autodoc", "1");
		const Handle_StepFEA_ElementRepresentation & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_StepFEA_ElementRepresentation & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const StepFEA_Array1OfElementRepresentation & Array1() const;
		%feature("autodoc", "1");
		StepFEA_Array1OfElementRepresentation & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepFEA_HArray1OfElementRepresentation {
	Handle_StepFEA_HArray1OfElementRepresentation GetHandle() {
	return *(Handle_StepFEA_HArray1OfElementRepresentation*) &$self;
	}
};
%extend StepFEA_HArray1OfElementRepresentation {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepFEA_HArray1OfElementRepresentation {
	~StepFEA_HArray1OfElementRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepFEA_HArray1OfElementRepresentation\n");}
	}
};


%nodefaultctor StepFEA_DegreeOfFreedomMember;
class StepFEA_DegreeOfFreedomMember : public StepData_SelectNamed {
	public:
		%feature("autodoc", "1");
		StepFEA_DegreeOfFreedomMember();
		%feature("autodoc", "1");
		virtual		Standard_Boolean HasName() const;
		%feature("autodoc", "1");
		virtual		Standard_CString Name() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean SetName(const char * name);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Matches(const char * name) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepFEA_DegreeOfFreedomMember {
	Handle_StepFEA_DegreeOfFreedomMember GetHandle() {
	return *(Handle_StepFEA_DegreeOfFreedomMember*) &$self;
	}
};
%extend StepFEA_DegreeOfFreedomMember {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepFEA_DegreeOfFreedomMember {
	~StepFEA_DegreeOfFreedomMember() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepFEA_DegreeOfFreedomMember\n");}
	}
};


%nodefaultctor StepFEA_SequenceNodeOfSequenceOfElementGeometricRelationship;
class StepFEA_SequenceNodeOfSequenceOfElementGeometricRelationship : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		StepFEA_SequenceNodeOfSequenceOfElementGeometricRelationship(const Handle_StepFEA_ElementGeometricRelationship &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_StepFEA_ElementGeometricRelationship & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepFEA_SequenceNodeOfSequenceOfElementGeometricRelationship {
	Handle_StepFEA_SequenceNodeOfSequenceOfElementGeometricRelationship GetHandle() {
	return *(Handle_StepFEA_SequenceNodeOfSequenceOfElementGeometricRelationship*) &$self;
	}
};
%extend StepFEA_SequenceNodeOfSequenceOfElementGeometricRelationship {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepFEA_SequenceNodeOfSequenceOfElementGeometricRelationship {
	~StepFEA_SequenceNodeOfSequenceOfElementGeometricRelationship() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepFEA_SequenceNodeOfSequenceOfElementGeometricRelationship\n");}
	}
};


%nodefaultctor StepFEA_NodeRepresentation;
class StepFEA_NodeRepresentation : public StepRepr_Representation {
	public:
		%feature("autodoc", "1");
		StepFEA_NodeRepresentation();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aRepresentation_Name, const Handle_StepRepr_HArray1OfRepresentationItem &aRepresentation_Items, const Handle_StepRepr_RepresentationContext &aRepresentation_ContextOfItems, const Handle_StepFEA_FeaModel &aModelRef);
		%feature("autodoc", "1");
		Handle_StepFEA_FeaModel ModelRef() const;
		%feature("autodoc", "1");
		void SetModelRef(const Handle_StepFEA_FeaModel &ModelRef);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepFEA_NodeRepresentation {
	Handle_StepFEA_NodeRepresentation GetHandle() {
	return *(Handle_StepFEA_NodeRepresentation*) &$self;
	}
};
%extend StepFEA_NodeRepresentation {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepFEA_NodeRepresentation {
	~StepFEA_NodeRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepFEA_NodeRepresentation\n");}
	}
};


%nodefaultctor StepFEA_Node;
class StepFEA_Node : public StepFEA_NodeRepresentation {
	public:
		%feature("autodoc", "1");
		StepFEA_Node();

};
%extend StepFEA_Node {
	Handle_StepFEA_Node GetHandle() {
	return *(Handle_StepFEA_Node*) &$self;
	}
};
%extend StepFEA_Node {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepFEA_Node {
	~StepFEA_Node() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepFEA_Node\n");}
	}
};


%nodefaultctor StepFEA_SequenceOfNodeRepresentation;
class StepFEA_SequenceOfNodeRepresentation : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		StepFEA_SequenceOfNodeRepresentation();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const StepFEA_SequenceOfNodeRepresentation & Assign(const StepFEA_SequenceOfNodeRepresentation &Other);
		%feature("autodoc", "1");
		void Append(const Handle_StepFEA_NodeRepresentation &T);
		%feature("autodoc", "1");
		void Append(StepFEA_SequenceOfNodeRepresentation & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_StepFEA_NodeRepresentation &T);
		%feature("autodoc", "1");
		void Prepend(StepFEA_SequenceOfNodeRepresentation & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_StepFEA_NodeRepresentation &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, StepFEA_SequenceOfNodeRepresentation & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_StepFEA_NodeRepresentation &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, StepFEA_SequenceOfNodeRepresentation & S);
		%feature("autodoc", "1");
		const Handle_StepFEA_NodeRepresentation & First() const;
		%feature("autodoc", "1");
		const Handle_StepFEA_NodeRepresentation & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, StepFEA_SequenceOfNodeRepresentation & S);
		%feature("autodoc", "1");
		const Handle_StepFEA_NodeRepresentation & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_StepFEA_NodeRepresentation & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StepFEA_NodeRepresentation &I);
		%feature("autodoc", "1");
		Handle_StepFEA_NodeRepresentation & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_StepFEA_NodeRepresentation & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%extend StepFEA_SequenceOfNodeRepresentation {
	~StepFEA_SequenceOfNodeRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepFEA_SequenceOfNodeRepresentation\n");}
	}
};


%nodefaultctor StepFEA_HArray1OfCurveElementInterval;
class StepFEA_HArray1OfCurveElementInterval : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepFEA_HArray1OfCurveElementInterval(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepFEA_HArray1OfCurveElementInterval(const Standard_Integer Low, const Standard_Integer Up, const Handle_StepFEA_CurveElementInterval &V);
		%feature("autodoc", "1");
		void Init(const Handle_StepFEA_CurveElementInterval &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StepFEA_CurveElementInterval &Value);
		%feature("autodoc", "1");
		const Handle_StepFEA_CurveElementInterval & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_StepFEA_CurveElementInterval & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const StepFEA_Array1OfCurveElementInterval & Array1() const;
		%feature("autodoc", "1");
		StepFEA_Array1OfCurveElementInterval & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepFEA_HArray1OfCurveElementInterval {
	Handle_StepFEA_HArray1OfCurveElementInterval GetHandle() {
	return *(Handle_StepFEA_HArray1OfCurveElementInterval*) &$self;
	}
};
%extend StepFEA_HArray1OfCurveElementInterval {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepFEA_HArray1OfCurveElementInterval {
	~StepFEA_HArray1OfCurveElementInterval() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepFEA_HArray1OfCurveElementInterval\n");}
	}
};


%nodefaultctor StepFEA_AlignedSurface3dElementCoordinateSystem;
class StepFEA_AlignedSurface3dElementCoordinateSystem : public StepFEA_FeaRepresentationItem {
	public:
		%feature("autodoc", "1");
		StepFEA_AlignedSurface3dElementCoordinateSystem();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aRepresentationItem_Name, const Handle_StepFEA_FeaAxis2Placement3d &aCoordinateSystem);
		%feature("autodoc", "1");
		Handle_StepFEA_FeaAxis2Placement3d CoordinateSystem() const;
		%feature("autodoc", "1");
		void SetCoordinateSystem(const Handle_StepFEA_FeaAxis2Placement3d &CoordinateSystem);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepFEA_AlignedSurface3dElementCoordinateSystem {
	Handle_StepFEA_AlignedSurface3dElementCoordinateSystem GetHandle() {
	return *(Handle_StepFEA_AlignedSurface3dElementCoordinateSystem*) &$self;
	}
};
%extend StepFEA_AlignedSurface3dElementCoordinateSystem {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepFEA_AlignedSurface3dElementCoordinateSystem {
	~StepFEA_AlignedSurface3dElementCoordinateSystem() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepFEA_AlignedSurface3dElementCoordinateSystem\n");}
	}
};


%nodefaultctor StepFEA_SymmetricTensor23d;
class StepFEA_SymmetricTensor23d : public StepData_SelectType {
	public:
		%feature("autodoc", "1");
		StepFEA_SymmetricTensor23d();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseNum(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseMem(const Handle_StepData_SelectMember &ent) const;
		%feature("autodoc", "1");
		virtual		Handle_StepData_SelectMember NewMember() const;
		%feature("autodoc", "1");
		void SetIsotropicSymmetricTensor23d(const Standard_Real aVal);
		%feature("autodoc", "1");
		Standard_Real IsotropicSymmetricTensor23d() const;
		%feature("autodoc", "1");
		void SetOrthotropicSymmetricTensor23d(const Handle_TColStd_HArray1OfReal &aVal);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal OrthotropicSymmetricTensor23d() const;
		%feature("autodoc", "1");
		void SetAnisotropicSymmetricTensor23d(const Handle_TColStd_HArray1OfReal &aVal);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal AnisotropicSymmetricTensor23d() const;

};
%extend StepFEA_SymmetricTensor23d {
	~StepFEA_SymmetricTensor23d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepFEA_SymmetricTensor23d\n");}
	}
};


%nodefaultctor StepFEA_ElementGeometricRelationship;
class StepFEA_ElementGeometricRelationship : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepFEA_ElementGeometricRelationship();
		%feature("autodoc", "1");
		void Init(const StepFEA_ElementOrElementGroup &aElementRef, const Handle_StepElement_AnalysisItemWithinRepresentation &aItem, const StepElement_ElementAspect &aAspect);
		%feature("autodoc", "1");
		StepFEA_ElementOrElementGroup ElementRef() const;
		%feature("autodoc", "1");
		void SetElementRef(const StepFEA_ElementOrElementGroup &ElementRef);
		%feature("autodoc", "1");
		Handle_StepElement_AnalysisItemWithinRepresentation Item() const;
		%feature("autodoc", "1");
		void SetItem(const Handle_StepElement_AnalysisItemWithinRepresentation &Item);
		%feature("autodoc", "1");
		StepElement_ElementAspect Aspect() const;
		%feature("autodoc", "1");
		void SetAspect(const StepElement_ElementAspect &Aspect);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepFEA_ElementGeometricRelationship {
	Handle_StepFEA_ElementGeometricRelationship GetHandle() {
	return *(Handle_StepFEA_ElementGeometricRelationship*) &$self;
	}
};
%extend StepFEA_ElementGeometricRelationship {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepFEA_ElementGeometricRelationship {
	~StepFEA_ElementGeometricRelationship() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepFEA_ElementGeometricRelationship\n");}
	}
};


%nodefaultctor StepFEA_ParametricCurve3dElementCoordinateSystem;
class StepFEA_ParametricCurve3dElementCoordinateSystem : public StepFEA_FeaRepresentationItem {
	public:
		%feature("autodoc", "1");
		StepFEA_ParametricCurve3dElementCoordinateSystem();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aRepresentationItem_Name, const Handle_StepFEA_ParametricCurve3dElementCoordinateDirection &aDirection);
		%feature("autodoc", "1");
		Handle_StepFEA_ParametricCurve3dElementCoordinateDirection Direction() const;
		%feature("autodoc", "1");
		void SetDirection(const Handle_StepFEA_ParametricCurve3dElementCoordinateDirection &Direction);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepFEA_ParametricCurve3dElementCoordinateSystem {
	Handle_StepFEA_ParametricCurve3dElementCoordinateSystem GetHandle() {
	return *(Handle_StepFEA_ParametricCurve3dElementCoordinateSystem*) &$self;
	}
};
%extend StepFEA_ParametricCurve3dElementCoordinateSystem {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepFEA_ParametricCurve3dElementCoordinateSystem {
	~StepFEA_ParametricCurve3dElementCoordinateSystem() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepFEA_ParametricCurve3dElementCoordinateSystem\n");}
	}
};


%nodefaultctor StepFEA_FeaLinearElasticity;
class StepFEA_FeaLinearElasticity : public StepFEA_FeaMaterialPropertyRepresentationItem {
	public:
		%feature("autodoc", "1");
		StepFEA_FeaLinearElasticity();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aRepresentationItem_Name, const StepFEA_SymmetricTensor43d &aFeaConstants);
		%feature("autodoc", "1");
		StepFEA_SymmetricTensor43d FeaConstants() const;
		%feature("autodoc", "1");
		void SetFeaConstants(const StepFEA_SymmetricTensor43d &FeaConstants);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepFEA_FeaLinearElasticity {
	Handle_StepFEA_FeaLinearElasticity GetHandle() {
	return *(Handle_StepFEA_FeaLinearElasticity*) &$self;
	}
};
%extend StepFEA_FeaLinearElasticity {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepFEA_FeaLinearElasticity {
	~StepFEA_FeaLinearElasticity() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepFEA_FeaLinearElasticity\n");}
	}
};


%nodefaultctor StepFEA_CurveElementInterval;
class StepFEA_CurveElementInterval : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepFEA_CurveElementInterval();
		%feature("autodoc", "1");
		void Init(const Handle_StepFEA_CurveElementLocation &aFinishPosition, const Handle_StepBasic_EulerAngles &aEuAngles);
		%feature("autodoc", "1");
		Handle_StepFEA_CurveElementLocation FinishPosition() const;
		%feature("autodoc", "1");
		void SetFinishPosition(const Handle_StepFEA_CurveElementLocation &FinishPosition);
		%feature("autodoc", "1");
		Handle_StepBasic_EulerAngles EuAngles() const;
		%feature("autodoc", "1");
		void SetEuAngles(const Handle_StepBasic_EulerAngles &EuAngles);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepFEA_CurveElementInterval {
	Handle_StepFEA_CurveElementInterval GetHandle() {
	return *(Handle_StepFEA_CurveElementInterval*) &$self;
	}
};
%extend StepFEA_CurveElementInterval {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepFEA_CurveElementInterval {
	~StepFEA_CurveElementInterval() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepFEA_CurveElementInterval\n");}
	}
};


%nodefaultctor StepFEA_NodeDefinition;
class StepFEA_NodeDefinition : public StepRepr_ShapeAspect {
	public:
		%feature("autodoc", "1");
		StepFEA_NodeDefinition();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepFEA_NodeDefinition {
	Handle_StepFEA_NodeDefinition GetHandle() {
	return *(Handle_StepFEA_NodeDefinition*) &$self;
	}
};
%extend StepFEA_NodeDefinition {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepFEA_NodeDefinition {
	~StepFEA_NodeDefinition() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepFEA_NodeDefinition\n");}
	}
};


%nodefaultctor StepFEA_FeaMoistureAbsorption;
class StepFEA_FeaMoistureAbsorption : public StepFEA_FeaMaterialPropertyRepresentationItem {
	public:
		%feature("autodoc", "1");
		StepFEA_FeaMoistureAbsorption();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aRepresentationItem_Name, const StepFEA_SymmetricTensor23d &aFeaConstants);
		%feature("autodoc", "1");
		StepFEA_SymmetricTensor23d FeaConstants() const;
		%feature("autodoc", "1");
		void SetFeaConstants(const StepFEA_SymmetricTensor23d &FeaConstants);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepFEA_FeaMoistureAbsorption {
	Handle_StepFEA_FeaMoistureAbsorption GetHandle() {
	return *(Handle_StepFEA_FeaMoistureAbsorption*) &$self;
	}
};
%extend StepFEA_FeaMoistureAbsorption {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepFEA_FeaMoistureAbsorption {
	~StepFEA_FeaMoistureAbsorption() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepFEA_FeaMoistureAbsorption\n");}
	}
};


%nodefaultctor StepFEA_Curve3dElementRepresentation;
class StepFEA_Curve3dElementRepresentation : public StepFEA_ElementRepresentation {
	public:
		%feature("autodoc", "1");
		StepFEA_Curve3dElementRepresentation();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aRepresentation_Name, const Handle_StepRepr_HArray1OfRepresentationItem &aRepresentation_Items, const Handle_StepRepr_RepresentationContext &aRepresentation_ContextOfItems, const Handle_StepFEA_HArray1OfNodeRepresentation &aElementRepresentation_NodeList, const Handle_StepFEA_FeaModel3d &aModelRef, const Handle_StepElement_Curve3dElementDescriptor &aElementDescriptor, const Handle_StepFEA_Curve3dElementProperty &aProperty, const Handle_StepElement_ElementMaterial &aMaterial);
		%feature("autodoc", "1");
		Handle_StepFEA_FeaModel3d ModelRef() const;
		%feature("autodoc", "1");
		void SetModelRef(const Handle_StepFEA_FeaModel3d &ModelRef);
		%feature("autodoc", "1");
		Handle_StepElement_Curve3dElementDescriptor ElementDescriptor() const;
		%feature("autodoc", "1");
		void SetElementDescriptor(const Handle_StepElement_Curve3dElementDescriptor &ElementDescriptor);
		%feature("autodoc", "1");
		Handle_StepFEA_Curve3dElementProperty Property() const;
		%feature("autodoc", "1");
		void SetProperty(const Handle_StepFEA_Curve3dElementProperty &Property);
		%feature("autodoc", "1");
		Handle_StepElement_ElementMaterial Material() const;
		%feature("autodoc", "1");
		void SetMaterial(const Handle_StepElement_ElementMaterial &Material);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepFEA_Curve3dElementRepresentation {
	Handle_StepFEA_Curve3dElementRepresentation GetHandle() {
	return *(Handle_StepFEA_Curve3dElementRepresentation*) &$self;
	}
};
%extend StepFEA_Curve3dElementRepresentation {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepFEA_Curve3dElementRepresentation {
	~StepFEA_Curve3dElementRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepFEA_Curve3dElementRepresentation\n");}
	}
};


%nodefaultctor StepFEA_HArray1OfNodeRepresentation;
class StepFEA_HArray1OfNodeRepresentation : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepFEA_HArray1OfNodeRepresentation(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepFEA_HArray1OfNodeRepresentation(const Standard_Integer Low, const Standard_Integer Up, const Handle_StepFEA_NodeRepresentation &V);
		%feature("autodoc", "1");
		void Init(const Handle_StepFEA_NodeRepresentation &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StepFEA_NodeRepresentation &Value);
		%feature("autodoc", "1");
		const Handle_StepFEA_NodeRepresentation & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_StepFEA_NodeRepresentation & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const StepFEA_Array1OfNodeRepresentation & Array1() const;
		%feature("autodoc", "1");
		StepFEA_Array1OfNodeRepresentation & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepFEA_HArray1OfNodeRepresentation {
	Handle_StepFEA_HArray1OfNodeRepresentation GetHandle() {
	return *(Handle_StepFEA_HArray1OfNodeRepresentation*) &$self;
	}
};
%extend StepFEA_HArray1OfNodeRepresentation {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepFEA_HArray1OfNodeRepresentation {
	~StepFEA_HArray1OfNodeRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepFEA_HArray1OfNodeRepresentation\n");}
	}
};


%nodefaultctor StepFEA_Array1OfCurveElementEndRelease;
class StepFEA_Array1OfCurveElementEndRelease {
	public:
		%feature("autodoc", "1");
		StepFEA_Array1OfCurveElementEndRelease(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepFEA_Array1OfCurveElementEndRelease(const Handle_StepFEA_CurveElementEndRelease &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Handle_StepFEA_CurveElementEndRelease &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepFEA_Array1OfCurveElementEndRelease & Assign(const StepFEA_Array1OfCurveElementEndRelease &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StepFEA_CurveElementEndRelease &Value);
		%feature("autodoc", "1");
		const Handle_StepFEA_CurveElementEndRelease & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_StepFEA_CurveElementEndRelease & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_StepFEA_CurveElementEndRelease & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_StepFEA_CurveElementEndRelease & operator()(const Standard_Integer Index);

};
%extend StepFEA_Array1OfCurveElementEndRelease {
	~StepFEA_Array1OfCurveElementEndRelease() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepFEA_Array1OfCurveElementEndRelease\n");}
	}
};


%nodefaultctor StepFEA_FeaGroup;
class StepFEA_FeaGroup : public StepBasic_Group {
	public:
		%feature("autodoc", "1");
		StepFEA_FeaGroup();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aGroup_Name, const Handle_TCollection_HAsciiString &aGroup_Description, const Handle_StepFEA_FeaModel &aModelRef);
		%feature("autodoc", "1");
		Handle_StepFEA_FeaModel ModelRef() const;
		%feature("autodoc", "1");
		void SetModelRef(const Handle_StepFEA_FeaModel &ModelRef);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepFEA_FeaGroup {
	Handle_StepFEA_FeaGroup GetHandle() {
	return *(Handle_StepFEA_FeaGroup*) &$self;
	}
};
%extend StepFEA_FeaGroup {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepFEA_FeaGroup {
	~StepFEA_FeaGroup() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepFEA_FeaGroup\n");}
	}
};


%nodefaultctor StepFEA_NodeWithSolutionCoordinateSystem;
class StepFEA_NodeWithSolutionCoordinateSystem : public StepFEA_Node {
	public:
		%feature("autodoc", "1");
		StepFEA_NodeWithSolutionCoordinateSystem();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepFEA_NodeWithSolutionCoordinateSystem {
	Handle_StepFEA_NodeWithSolutionCoordinateSystem GetHandle() {
	return *(Handle_StepFEA_NodeWithSolutionCoordinateSystem*) &$self;
	}
};
%extend StepFEA_NodeWithSolutionCoordinateSystem {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepFEA_NodeWithSolutionCoordinateSystem {
	~StepFEA_NodeWithSolutionCoordinateSystem() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepFEA_NodeWithSolutionCoordinateSystem\n");}
	}
};


%nodefaultctor StepFEA_Array1OfDegreeOfFreedom;
class StepFEA_Array1OfDegreeOfFreedom {
	public:
		%feature("autodoc", "1");
		StepFEA_Array1OfDegreeOfFreedom(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepFEA_Array1OfDegreeOfFreedom(const StepFEA_DegreeOfFreedom &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const StepFEA_DegreeOfFreedom &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepFEA_Array1OfDegreeOfFreedom & Assign(const StepFEA_Array1OfDegreeOfFreedom &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepFEA_DegreeOfFreedom &Value);
		%feature("autodoc", "1");
		const StepFEA_DegreeOfFreedom & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const StepFEA_DegreeOfFreedom & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepFEA_DegreeOfFreedom & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		StepFEA_DegreeOfFreedom & operator()(const Standard_Integer Index);

};
%extend StepFEA_Array1OfDegreeOfFreedom {
	~StepFEA_Array1OfDegreeOfFreedom() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepFEA_Array1OfDegreeOfFreedom\n");}
	}
};


%nodefaultctor StepFEA_ElementOrElementGroup;
class StepFEA_ElementOrElementGroup : public StepData_SelectType {
	public:
		%feature("autodoc", "1");
		StepFEA_ElementOrElementGroup();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseNum(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Handle_StepFEA_ElementRepresentation ElementRepresentation() const;
		%feature("autodoc", "1");
		Handle_StepFEA_ElementGroup ElementGroup() const;

};
%extend StepFEA_ElementOrElementGroup {
	~StepFEA_ElementOrElementGroup() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepFEA_ElementOrElementGroup\n");}
	}
};


%nodefaultctor StepFEA_Curve3dElementProperty;
class StepFEA_Curve3dElementProperty : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepFEA_Curve3dElementProperty();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aPropertyId, const Handle_TCollection_HAsciiString &aDescription, const Handle_StepFEA_HArray1OfCurveElementInterval &aIntervalDefinitions, const Handle_StepFEA_HArray1OfCurveElementEndOffset &aEndOffsets, const Handle_StepFEA_HArray1OfCurveElementEndRelease &aEndReleases);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString PropertyId() const;
		%feature("autodoc", "1");
		void SetPropertyId(const Handle_TCollection_HAsciiString &PropertyId);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Description() const;
		%feature("autodoc", "1");
		void SetDescription(const Handle_TCollection_HAsciiString &Description);
		%feature("autodoc", "1");
		Handle_StepFEA_HArray1OfCurveElementInterval IntervalDefinitions() const;
		%feature("autodoc", "1");
		void SetIntervalDefinitions(const Handle_StepFEA_HArray1OfCurveElementInterval &IntervalDefinitions);
		%feature("autodoc", "1");
		Handle_StepFEA_HArray1OfCurveElementEndOffset EndOffsets() const;
		%feature("autodoc", "1");
		void SetEndOffsets(const Handle_StepFEA_HArray1OfCurveElementEndOffset &EndOffsets);
		%feature("autodoc", "1");
		Handle_StepFEA_HArray1OfCurveElementEndRelease EndReleases() const;
		%feature("autodoc", "1");
		void SetEndReleases(const Handle_StepFEA_HArray1OfCurveElementEndRelease &EndReleases);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepFEA_Curve3dElementProperty {
	Handle_StepFEA_Curve3dElementProperty GetHandle() {
	return *(Handle_StepFEA_Curve3dElementProperty*) &$self;
	}
};
%extend StepFEA_Curve3dElementProperty {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepFEA_Curve3dElementProperty {
	~StepFEA_Curve3dElementProperty() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepFEA_Curve3dElementProperty\n");}
	}
};


%nodefaultctor StepFEA_FeaShellMembraneStiffness;
class StepFEA_FeaShellMembraneStiffness : public StepFEA_FeaMaterialPropertyRepresentationItem {
	public:
		%feature("autodoc", "1");
		StepFEA_FeaShellMembraneStiffness();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aRepresentationItem_Name, const StepFEA_SymmetricTensor42d &aFeaConstants);
		%feature("autodoc", "1");
		StepFEA_SymmetricTensor42d FeaConstants() const;
		%feature("autodoc", "1");
		void SetFeaConstants(const StepFEA_SymmetricTensor42d &FeaConstants);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepFEA_FeaShellMembraneStiffness {
	Handle_StepFEA_FeaShellMembraneStiffness GetHandle() {
	return *(Handle_StepFEA_FeaShellMembraneStiffness*) &$self;
	}
};
%extend StepFEA_FeaShellMembraneStiffness {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepFEA_FeaShellMembraneStiffness {
	~StepFEA_FeaShellMembraneStiffness() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepFEA_FeaShellMembraneStiffness\n");}
	}
};


%nodefaultctor StepFEA_FeaModelDefinition;
class StepFEA_FeaModelDefinition : public StepRepr_ShapeAspect {
	public:
		%feature("autodoc", "1");
		StepFEA_FeaModelDefinition();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepFEA_FeaModelDefinition {
	Handle_StepFEA_FeaModelDefinition GetHandle() {
	return *(Handle_StepFEA_FeaModelDefinition*) &$self;
	}
};
%extend StepFEA_FeaModelDefinition {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepFEA_FeaModelDefinition {
	~StepFEA_FeaModelDefinition() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepFEA_FeaModelDefinition\n");}
	}
};


%nodefaultctor StepFEA_FeaParametricPoint;
class StepFEA_FeaParametricPoint : public StepGeom_Point {
	public:
		%feature("autodoc", "1");
		StepFEA_FeaParametricPoint();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aRepresentationItem_Name, const Handle_TColStd_HArray1OfReal &aCoordinates);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal Coordinates() const;
		%feature("autodoc", "1");
		void SetCoordinates(const Handle_TColStd_HArray1OfReal &Coordinates);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepFEA_FeaParametricPoint {
	Handle_StepFEA_FeaParametricPoint GetHandle() {
	return *(Handle_StepFEA_FeaParametricPoint*) &$self;
	}
};
%extend StepFEA_FeaParametricPoint {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepFEA_FeaParametricPoint {
	~StepFEA_FeaParametricPoint() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepFEA_FeaParametricPoint\n");}
	}
};


%nodefaultctor StepFEA_DummyNode;
class StepFEA_DummyNode : public StepFEA_NodeRepresentation {
	public:
		%feature("autodoc", "1");
		StepFEA_DummyNode();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepFEA_DummyNode {
	Handle_StepFEA_DummyNode GetHandle() {
	return *(Handle_StepFEA_DummyNode*) &$self;
	}
};
%extend StepFEA_DummyNode {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepFEA_DummyNode {
	~StepFEA_DummyNode() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepFEA_DummyNode\n");}
	}
};


%nodefaultctor StepFEA_Array1OfCurveElementInterval;
class StepFEA_Array1OfCurveElementInterval {
	public:
		%feature("autodoc", "1");
		StepFEA_Array1OfCurveElementInterval(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepFEA_Array1OfCurveElementInterval(const Handle_StepFEA_CurveElementInterval &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Handle_StepFEA_CurveElementInterval &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepFEA_Array1OfCurveElementInterval & Assign(const StepFEA_Array1OfCurveElementInterval &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StepFEA_CurveElementInterval &Value);
		%feature("autodoc", "1");
		const Handle_StepFEA_CurveElementInterval & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_StepFEA_CurveElementInterval & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_StepFEA_CurveElementInterval & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_StepFEA_CurveElementInterval & operator()(const Standard_Integer Index);

};
%extend StepFEA_Array1OfCurveElementInterval {
	~StepFEA_Array1OfCurveElementInterval() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepFEA_Array1OfCurveElementInterval\n");}
	}
};


%nodefaultctor StepFEA_CurveElementEndCoordinateSystem;
class StepFEA_CurveElementEndCoordinateSystem : public StepData_SelectType {
	public:
		%feature("autodoc", "1");
		StepFEA_CurveElementEndCoordinateSystem();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseNum(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Handle_StepFEA_FeaAxis2Placement3d FeaAxis2Placement3d() const;
		%feature("autodoc", "1");
		Handle_StepFEA_AlignedCurve3dElementCoordinateSystem AlignedCurve3dElementCoordinateSystem() const;
		%feature("autodoc", "1");
		Handle_StepFEA_ParametricCurve3dElementCoordinateSystem ParametricCurve3dElementCoordinateSystem() const;

};
%extend StepFEA_CurveElementEndCoordinateSystem {
	~StepFEA_CurveElementEndCoordinateSystem() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepFEA_CurveElementEndCoordinateSystem\n");}
	}
};


%nodefaultctor StepFEA_NodeSet;
class StepFEA_NodeSet : public StepGeom_GeometricRepresentationItem {
	public:
		%feature("autodoc", "1");
		StepFEA_NodeSet();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aRepresentationItem_Name, const Handle_StepFEA_HArray1OfNodeRepresentation &aNodes);
		%feature("autodoc", "1");
		Handle_StepFEA_HArray1OfNodeRepresentation Nodes() const;
		%feature("autodoc", "1");
		void SetNodes(const Handle_StepFEA_HArray1OfNodeRepresentation &Nodes);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepFEA_NodeSet {
	Handle_StepFEA_NodeSet GetHandle() {
	return *(Handle_StepFEA_NodeSet*) &$self;
	}
};
%extend StepFEA_NodeSet {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepFEA_NodeSet {
	~StepFEA_NodeSet() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepFEA_NodeSet\n");}
	}
};


%nodefaultctor StepFEA_FeaMaterialPropertyRepresentation;
class StepFEA_FeaMaterialPropertyRepresentation : public StepRepr_MaterialPropertyRepresentation {
	public:
		%feature("autodoc", "1");
		StepFEA_FeaMaterialPropertyRepresentation();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepFEA_FeaMaterialPropertyRepresentation {
	Handle_StepFEA_FeaMaterialPropertyRepresentation GetHandle() {
	return *(Handle_StepFEA_FeaMaterialPropertyRepresentation*) &$self;
	}
};
%extend StepFEA_FeaMaterialPropertyRepresentation {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepFEA_FeaMaterialPropertyRepresentation {
	~StepFEA_FeaMaterialPropertyRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepFEA_FeaMaterialPropertyRepresentation\n");}
	}
};


%nodefaultctor StepFEA_HArray1OfCurveElementEndOffset;
class StepFEA_HArray1OfCurveElementEndOffset : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepFEA_HArray1OfCurveElementEndOffset(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepFEA_HArray1OfCurveElementEndOffset(const Standard_Integer Low, const Standard_Integer Up, const Handle_StepFEA_CurveElementEndOffset &V);
		%feature("autodoc", "1");
		void Init(const Handle_StepFEA_CurveElementEndOffset &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StepFEA_CurveElementEndOffset &Value);
		%feature("autodoc", "1");
		const Handle_StepFEA_CurveElementEndOffset & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_StepFEA_CurveElementEndOffset & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const StepFEA_Array1OfCurveElementEndOffset & Array1() const;
		%feature("autodoc", "1");
		StepFEA_Array1OfCurveElementEndOffset & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepFEA_HArray1OfCurveElementEndOffset {
	Handle_StepFEA_HArray1OfCurveElementEndOffset GetHandle() {
	return *(Handle_StepFEA_HArray1OfCurveElementEndOffset*) &$self;
	}
};
%extend StepFEA_HArray1OfCurveElementEndOffset {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepFEA_HArray1OfCurveElementEndOffset {
	~StepFEA_HArray1OfCurveElementEndOffset() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepFEA_HArray1OfCurveElementEndOffset\n");}
	}
};


%nodefaultctor StepFEA_CurveElementEndRelease;
class StepFEA_CurveElementEndRelease : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepFEA_CurveElementEndRelease();
		%feature("autodoc", "1");
		void Init(const StepFEA_CurveElementEndCoordinateSystem &aCoordinateSystem, const Handle_StepElement_HArray1OfCurveElementEndReleasePacket &aReleases);
		%feature("autodoc", "1");
		StepFEA_CurveElementEndCoordinateSystem CoordinateSystem() const;
		%feature("autodoc", "1");
		void SetCoordinateSystem(const StepFEA_CurveElementEndCoordinateSystem &CoordinateSystem);
		%feature("autodoc", "1");
		Handle_StepElement_HArray1OfCurveElementEndReleasePacket Releases() const;
		%feature("autodoc", "1");
		void SetReleases(const Handle_StepElement_HArray1OfCurveElementEndReleasePacket &Releases);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepFEA_CurveElementEndRelease {
	Handle_StepFEA_CurveElementEndRelease GetHandle() {
	return *(Handle_StepFEA_CurveElementEndRelease*) &$self;
	}
};
%extend StepFEA_CurveElementEndRelease {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepFEA_CurveElementEndRelease {
	~StepFEA_CurveElementEndRelease() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepFEA_CurveElementEndRelease\n");}
	}
};


%nodefaultctor StepFEA_CurveElementIntervalConstant;
class StepFEA_CurveElementIntervalConstant : public StepFEA_CurveElementInterval {
	public:
		%feature("autodoc", "1");
		StepFEA_CurveElementIntervalConstant();
		%feature("autodoc", "1");
		void Init(const Handle_StepFEA_CurveElementLocation &aCurveElementInterval_FinishPosition, const Handle_StepBasic_EulerAngles &aCurveElementInterval_EuAngles, const Handle_StepElement_CurveElementSectionDefinition &aSection);
		%feature("autodoc", "1");
		Handle_StepElement_CurveElementSectionDefinition Section() const;
		%feature("autodoc", "1");
		void SetSection(const Handle_StepElement_CurveElementSectionDefinition &Section);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepFEA_CurveElementIntervalConstant {
	Handle_StepFEA_CurveElementIntervalConstant GetHandle() {
	return *(Handle_StepFEA_CurveElementIntervalConstant*) &$self;
	}
};
%extend StepFEA_CurveElementIntervalConstant {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepFEA_CurveElementIntervalConstant {
	~StepFEA_CurveElementIntervalConstant() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepFEA_CurveElementIntervalConstant\n");}
	}
};


%nodefaultctor StepFEA_NodeWithVector;
class StepFEA_NodeWithVector : public StepFEA_Node {
	public:
		%feature("autodoc", "1");
		StepFEA_NodeWithVector();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepFEA_NodeWithVector {
	Handle_StepFEA_NodeWithVector GetHandle() {
	return *(Handle_StepFEA_NodeWithVector*) &$self;
	}
};
%extend StepFEA_NodeWithVector {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepFEA_NodeWithVector {
	~StepFEA_NodeWithVector() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepFEA_NodeWithVector\n");}
	}
};


%nodefaultctor StepFEA_SequenceOfElementGeometricRelationship;
class StepFEA_SequenceOfElementGeometricRelationship : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		StepFEA_SequenceOfElementGeometricRelationship();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const StepFEA_SequenceOfElementGeometricRelationship & Assign(const StepFEA_SequenceOfElementGeometricRelationship &Other);
		%feature("autodoc", "1");
		void Append(const Handle_StepFEA_ElementGeometricRelationship &T);
		%feature("autodoc", "1");
		void Append(StepFEA_SequenceOfElementGeometricRelationship & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_StepFEA_ElementGeometricRelationship &T);
		%feature("autodoc", "1");
		void Prepend(StepFEA_SequenceOfElementGeometricRelationship & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_StepFEA_ElementGeometricRelationship &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, StepFEA_SequenceOfElementGeometricRelationship & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_StepFEA_ElementGeometricRelationship &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, StepFEA_SequenceOfElementGeometricRelationship & S);
		%feature("autodoc", "1");
		const Handle_StepFEA_ElementGeometricRelationship & First() const;
		%feature("autodoc", "1");
		const Handle_StepFEA_ElementGeometricRelationship & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, StepFEA_SequenceOfElementGeometricRelationship & S);
		%feature("autodoc", "1");
		const Handle_StepFEA_ElementGeometricRelationship & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_StepFEA_ElementGeometricRelationship & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StepFEA_ElementGeometricRelationship &I);
		%feature("autodoc", "1");
		Handle_StepFEA_ElementGeometricRelationship & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_StepFEA_ElementGeometricRelationship & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%extend StepFEA_SequenceOfElementGeometricRelationship {
	~StepFEA_SequenceOfElementGeometricRelationship() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepFEA_SequenceOfElementGeometricRelationship\n");}
	}
};


%nodefaultctor StepFEA_Surface3dElementRepresentation;
class StepFEA_Surface3dElementRepresentation : public StepFEA_ElementRepresentation {
	public:
		%feature("autodoc", "1");
		StepFEA_Surface3dElementRepresentation();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aRepresentation_Name, const Handle_StepRepr_HArray1OfRepresentationItem &aRepresentation_Items, const Handle_StepRepr_RepresentationContext &aRepresentation_ContextOfItems, const Handle_StepFEA_HArray1OfNodeRepresentation &aElementRepresentation_NodeList, const Handle_StepFEA_FeaModel3d &aModelRef, const Handle_StepElement_Surface3dElementDescriptor &aElementDescriptor, const Handle_StepElement_SurfaceElementProperty &aProperty, const Handle_StepElement_ElementMaterial &aMaterial);
		%feature("autodoc", "1");
		Handle_StepFEA_FeaModel3d ModelRef() const;
		%feature("autodoc", "1");
		void SetModelRef(const Handle_StepFEA_FeaModel3d &ModelRef);
		%feature("autodoc", "1");
		Handle_StepElement_Surface3dElementDescriptor ElementDescriptor() const;
		%feature("autodoc", "1");
		void SetElementDescriptor(const Handle_StepElement_Surface3dElementDescriptor &ElementDescriptor);
		%feature("autodoc", "1");
		Handle_StepElement_SurfaceElementProperty Property() const;
		%feature("autodoc", "1");
		void SetProperty(const Handle_StepElement_SurfaceElementProperty &Property);
		%feature("autodoc", "1");
		Handle_StepElement_ElementMaterial Material() const;
		%feature("autodoc", "1");
		void SetMaterial(const Handle_StepElement_ElementMaterial &Material);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepFEA_Surface3dElementRepresentation {
	Handle_StepFEA_Surface3dElementRepresentation GetHandle() {
	return *(Handle_StepFEA_Surface3dElementRepresentation*) &$self;
	}
};
%extend StepFEA_Surface3dElementRepresentation {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepFEA_Surface3dElementRepresentation {
	~StepFEA_Surface3dElementRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepFEA_Surface3dElementRepresentation\n");}
	}
};


%nodefaultctor StepFEA_ElementGroup;
class StepFEA_ElementGroup : public StepFEA_FeaGroup {
	public:
		%feature("autodoc", "1");
		StepFEA_ElementGroup();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aGroup_Name, const Handle_TCollection_HAsciiString &aGroup_Description, const Handle_StepFEA_FeaModel &aFeaGroup_ModelRef, const Handle_StepFEA_HArray1OfElementRepresentation &aElements);
		%feature("autodoc", "1");
		Handle_StepFEA_HArray1OfElementRepresentation Elements() const;
		%feature("autodoc", "1");
		void SetElements(const Handle_StepFEA_HArray1OfElementRepresentation &Elements);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepFEA_ElementGroup {
	Handle_StepFEA_ElementGroup GetHandle() {
	return *(Handle_StepFEA_ElementGroup*) &$self;
	}
};
%extend StepFEA_ElementGroup {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepFEA_ElementGroup {
	~StepFEA_ElementGroup() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepFEA_ElementGroup\n");}
	}
};


%nodefaultctor StepFEA_Volume3dElementRepresentation;
class StepFEA_Volume3dElementRepresentation : public StepFEA_ElementRepresentation {
	public:
		%feature("autodoc", "1");
		StepFEA_Volume3dElementRepresentation();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aRepresentation_Name, const Handle_StepRepr_HArray1OfRepresentationItem &aRepresentation_Items, const Handle_StepRepr_RepresentationContext &aRepresentation_ContextOfItems, const Handle_StepFEA_HArray1OfNodeRepresentation &aElementRepresentation_NodeList, const Handle_StepFEA_FeaModel3d &aModelRef, const Handle_StepElement_Volume3dElementDescriptor &aElementDescriptor, const Handle_StepElement_ElementMaterial &aMaterial);
		%feature("autodoc", "1");
		Handle_StepFEA_FeaModel3d ModelRef() const;
		%feature("autodoc", "1");
		void SetModelRef(const Handle_StepFEA_FeaModel3d &ModelRef);
		%feature("autodoc", "1");
		Handle_StepElement_Volume3dElementDescriptor ElementDescriptor() const;
		%feature("autodoc", "1");
		void SetElementDescriptor(const Handle_StepElement_Volume3dElementDescriptor &ElementDescriptor);
		%feature("autodoc", "1");
		Handle_StepElement_ElementMaterial Material() const;
		%feature("autodoc", "1");
		void SetMaterial(const Handle_StepElement_ElementMaterial &Material);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepFEA_Volume3dElementRepresentation {
	Handle_StepFEA_Volume3dElementRepresentation GetHandle() {
	return *(Handle_StepFEA_Volume3dElementRepresentation*) &$self;
	}
};
%extend StepFEA_Volume3dElementRepresentation {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepFEA_Volume3dElementRepresentation {
	~StepFEA_Volume3dElementRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepFEA_Volume3dElementRepresentation\n");}
	}
};


%nodefaultctor StepFEA_FreedomAndCoefficient;
class StepFEA_FreedomAndCoefficient : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepFEA_FreedomAndCoefficient();
		%feature("autodoc", "1");
		void Init(const StepFEA_DegreeOfFreedom &aFreedom, const StepElement_MeasureOrUnspecifiedValue &aA);
		%feature("autodoc", "1");
		StepFEA_DegreeOfFreedom Freedom() const;
		%feature("autodoc", "1");
		void SetFreedom(const StepFEA_DegreeOfFreedom &Freedom);
		%feature("autodoc", "1");
		StepElement_MeasureOrUnspecifiedValue A() const;
		%feature("autodoc", "1");
		void SetA(const StepElement_MeasureOrUnspecifiedValue &A);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepFEA_FreedomAndCoefficient {
	Handle_StepFEA_FreedomAndCoefficient GetHandle() {
	return *(Handle_StepFEA_FreedomAndCoefficient*) &$self;
	}
};
%extend StepFEA_FreedomAndCoefficient {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepFEA_FreedomAndCoefficient {
	~StepFEA_FreedomAndCoefficient() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepFEA_FreedomAndCoefficient\n");}
	}
};


%nodefaultctor StepFEA_ParametricSurface3dElementCoordinateSystem;
class StepFEA_ParametricSurface3dElementCoordinateSystem : public StepFEA_FeaRepresentationItem {
	public:
		%feature("autodoc", "1");
		StepFEA_ParametricSurface3dElementCoordinateSystem();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aRepresentationItem_Name, const Standard_Integer aAxis, const Standard_Real aAngle);
		%feature("autodoc", "1");
		Standard_Integer Axis() const;
		%feature("autodoc", "1");
		void SetAxis(const Standard_Integer Axis);
		%feature("autodoc", "1");
		Standard_Real Angle() const;
		%feature("autodoc", "1");
		void SetAngle(const Standard_Real Angle);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepFEA_ParametricSurface3dElementCoordinateSystem {
	Handle_StepFEA_ParametricSurface3dElementCoordinateSystem GetHandle() {
	return *(Handle_StepFEA_ParametricSurface3dElementCoordinateSystem*) &$self;
	}
};
%extend StepFEA_ParametricSurface3dElementCoordinateSystem {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepFEA_ParametricSurface3dElementCoordinateSystem {
	~StepFEA_ParametricSurface3dElementCoordinateSystem() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepFEA_ParametricSurface3dElementCoordinateSystem\n");}
	}
};


%nodefaultctor StepFEA_HSequenceOfNodeRepresentation;
class StepFEA_HSequenceOfNodeRepresentation : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepFEA_HSequenceOfNodeRepresentation();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const Handle_StepFEA_NodeRepresentation &anItem);
		%feature("autodoc", "1");
		void Append(const Handle_StepFEA_HSequenceOfNodeRepresentation &aSequence);
		%feature("autodoc", "1");
		void Prepend(const Handle_StepFEA_NodeRepresentation &anItem);
		%feature("autodoc", "1");
		void Prepend(const Handle_StepFEA_HSequenceOfNodeRepresentation &aSequence);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_StepFEA_NodeRepresentation &anItem);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_StepFEA_HSequenceOfNodeRepresentation &aSequence);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_StepFEA_NodeRepresentation &anItem);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_StepFEA_HSequenceOfNodeRepresentation &aSequence);
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer anIndex, const Standard_Integer anOtherIndex);
		%feature("autodoc", "1");
		Handle_StepFEA_HSequenceOfNodeRepresentation Split(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer anIndex, const Handle_StepFEA_NodeRepresentation &anItem);
		%feature("autodoc", "1");
		const Handle_StepFEA_NodeRepresentation & Value(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		Handle_StepFEA_NodeRepresentation & ChangeValue(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer fromIndex, const Standard_Integer toIndex);
		%feature("autodoc", "1");
		const StepFEA_SequenceOfNodeRepresentation & Sequence() const;
		%feature("autodoc", "1");
		StepFEA_SequenceOfNodeRepresentation & ChangeSequence();
		%feature("autodoc", "1");
		Handle_StepFEA_HSequenceOfNodeRepresentation ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepFEA_HSequenceOfNodeRepresentation {
	Handle_StepFEA_HSequenceOfNodeRepresentation GetHandle() {
	return *(Handle_StepFEA_HSequenceOfNodeRepresentation*) &$self;
	}
};
%extend StepFEA_HSequenceOfNodeRepresentation {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepFEA_HSequenceOfNodeRepresentation {
	~StepFEA_HSequenceOfNodeRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepFEA_HSequenceOfNodeRepresentation\n");}
	}
};


%nodefaultctor StepFEA_HSequenceOfCurve3dElementProperty;
class StepFEA_HSequenceOfCurve3dElementProperty : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepFEA_HSequenceOfCurve3dElementProperty();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const Handle_StepFEA_Curve3dElementProperty &anItem);
		%feature("autodoc", "1");
		void Append(const Handle_StepFEA_HSequenceOfCurve3dElementProperty &aSequence);
		%feature("autodoc", "1");
		void Prepend(const Handle_StepFEA_Curve3dElementProperty &anItem);
		%feature("autodoc", "1");
		void Prepend(const Handle_StepFEA_HSequenceOfCurve3dElementProperty &aSequence);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_StepFEA_Curve3dElementProperty &anItem);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_StepFEA_HSequenceOfCurve3dElementProperty &aSequence);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_StepFEA_Curve3dElementProperty &anItem);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_StepFEA_HSequenceOfCurve3dElementProperty &aSequence);
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer anIndex, const Standard_Integer anOtherIndex);
		%feature("autodoc", "1");
		Handle_StepFEA_HSequenceOfCurve3dElementProperty Split(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer anIndex, const Handle_StepFEA_Curve3dElementProperty &anItem);
		%feature("autodoc", "1");
		const Handle_StepFEA_Curve3dElementProperty & Value(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		Handle_StepFEA_Curve3dElementProperty & ChangeValue(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer fromIndex, const Standard_Integer toIndex);
		%feature("autodoc", "1");
		const StepFEA_SequenceOfCurve3dElementProperty & Sequence() const;
		%feature("autodoc", "1");
		StepFEA_SequenceOfCurve3dElementProperty & ChangeSequence();
		%feature("autodoc", "1");
		Handle_StepFEA_HSequenceOfCurve3dElementProperty ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepFEA_HSequenceOfCurve3dElementProperty {
	Handle_StepFEA_HSequenceOfCurve3dElementProperty GetHandle() {
	return *(Handle_StepFEA_HSequenceOfCurve3dElementProperty*) &$self;
	}
};
%extend StepFEA_HSequenceOfCurve3dElementProperty {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepFEA_HSequenceOfCurve3dElementProperty {
	~StepFEA_HSequenceOfCurve3dElementProperty() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepFEA_HSequenceOfCurve3dElementProperty\n");}
	}
};


%nodefaultctor StepFEA_CurveElementEndOffset;
class StepFEA_CurveElementEndOffset : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepFEA_CurveElementEndOffset();
		%feature("autodoc", "1");
		void Init(const StepFEA_CurveElementEndCoordinateSystem &aCoordinateSystem, const Handle_TColStd_HArray1OfReal &aOffsetVector);
		%feature("autodoc", "1");
		StepFEA_CurveElementEndCoordinateSystem CoordinateSystem() const;
		%feature("autodoc", "1");
		void SetCoordinateSystem(const StepFEA_CurveElementEndCoordinateSystem &CoordinateSystem);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal OffsetVector() const;
		%feature("autodoc", "1");
		void SetOffsetVector(const Handle_TColStd_HArray1OfReal &OffsetVector);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepFEA_CurveElementEndOffset {
	Handle_StepFEA_CurveElementEndOffset GetHandle() {
	return *(Handle_StepFEA_CurveElementEndOffset*) &$self;
	}
};
%extend StepFEA_CurveElementEndOffset {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepFEA_CurveElementEndOffset {
	~StepFEA_CurveElementEndOffset() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepFEA_CurveElementEndOffset\n");}
	}
};


%nodefaultctor StepFEA_FeaAxis2Placement3d;
class StepFEA_FeaAxis2Placement3d : public StepGeom_Axis2Placement3d {
	public:
		%feature("autodoc", "1");
		StepFEA_FeaAxis2Placement3d();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aRepresentationItem_Name, const Handle_StepGeom_CartesianPoint &aPlacement_Location, const Standard_Boolean hasAxis2Placement3d_Axis, const Handle_StepGeom_Direction &aAxis2Placement3d_Axis, const Standard_Boolean hasAxis2Placement3d_RefDirection, const Handle_StepGeom_Direction &aAxis2Placement3d_RefDirection, const StepFEA_CoordinateSystemType aSystemType, const Handle_TCollection_HAsciiString &aDescription);
		%feature("autodoc", "1");
		StepFEA_CoordinateSystemType SystemType() const;
		%feature("autodoc", "1");
		void SetSystemType(const StepFEA_CoordinateSystemType SystemType);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Description() const;
		%feature("autodoc", "1");
		void SetDescription(const Handle_TCollection_HAsciiString &Description);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepFEA_FeaAxis2Placement3d {
	Handle_StepFEA_FeaAxis2Placement3d GetHandle() {
	return *(Handle_StepFEA_FeaAxis2Placement3d*) &$self;
	}
};
%extend StepFEA_FeaAxis2Placement3d {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepFEA_FeaAxis2Placement3d {
	~StepFEA_FeaAxis2Placement3d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepFEA_FeaAxis2Placement3d\n");}
	}
};


%nodefaultctor StepFEA_GeometricNode;
class StepFEA_GeometricNode : public StepFEA_NodeRepresentation {
	public:
		%feature("autodoc", "1");
		StepFEA_GeometricNode();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepFEA_GeometricNode {
	Handle_StepFEA_GeometricNode GetHandle() {
	return *(Handle_StepFEA_GeometricNode*) &$self;
	}
};
%extend StepFEA_GeometricNode {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepFEA_GeometricNode {
	~StepFEA_GeometricNode() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepFEA_GeometricNode\n");}
	}
};


%nodefaultctor StepFEA_NodeGroup;
class StepFEA_NodeGroup : public StepFEA_FeaGroup {
	public:
		%feature("autodoc", "1");
		StepFEA_NodeGroup();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aGroup_Name, const Handle_TCollection_HAsciiString &aGroup_Description, const Handle_StepFEA_FeaModel &aFeaGroup_ModelRef, const Handle_StepFEA_HArray1OfNodeRepresentation &aNodes);
		%feature("autodoc", "1");
		Handle_StepFEA_HArray1OfNodeRepresentation Nodes() const;
		%feature("autodoc", "1");
		void SetNodes(const Handle_StepFEA_HArray1OfNodeRepresentation &Nodes);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepFEA_NodeGroup {
	Handle_StepFEA_NodeGroup GetHandle() {
	return *(Handle_StepFEA_NodeGroup*) &$self;
	}
};
%extend StepFEA_NodeGroup {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepFEA_NodeGroup {
	~StepFEA_NodeGroup() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepFEA_NodeGroup\n");}
	}
};


%nodefaultctor StepFEA_FeaTangentialCoefficientOfLinearThermalExpansion;
class StepFEA_FeaTangentialCoefficientOfLinearThermalExpansion : public StepFEA_FeaMaterialPropertyRepresentationItem {
	public:
		%feature("autodoc", "1");
		StepFEA_FeaTangentialCoefficientOfLinearThermalExpansion();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aRepresentationItem_Name, const StepFEA_SymmetricTensor23d &aFeaConstants);
		%feature("autodoc", "1");
		StepFEA_SymmetricTensor23d FeaConstants() const;
		%feature("autodoc", "1");
		void SetFeaConstants(const StepFEA_SymmetricTensor23d &FeaConstants);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepFEA_FeaTangentialCoefficientOfLinearThermalExpansion {
	Handle_StepFEA_FeaTangentialCoefficientOfLinearThermalExpansion GetHandle() {
	return *(Handle_StepFEA_FeaTangentialCoefficientOfLinearThermalExpansion*) &$self;
	}
};
%extend StepFEA_FeaTangentialCoefficientOfLinearThermalExpansion {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepFEA_FeaTangentialCoefficientOfLinearThermalExpansion {
	~StepFEA_FeaTangentialCoefficientOfLinearThermalExpansion() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepFEA_FeaTangentialCoefficientOfLinearThermalExpansion\n");}
	}
};


%nodefaultctor StepFEA_CurveElementIntervalLinearlyVarying;
class StepFEA_CurveElementIntervalLinearlyVarying : public StepFEA_CurveElementInterval {
	public:
		%feature("autodoc", "1");
		StepFEA_CurveElementIntervalLinearlyVarying();
		%feature("autodoc", "1");
		void Init(const Handle_StepFEA_CurveElementLocation &aCurveElementInterval_FinishPosition, const Handle_StepBasic_EulerAngles &aCurveElementInterval_EuAngles, const Handle_StepElement_HArray1OfCurveElementSectionDefinition &aSections);
		%feature("autodoc", "1");
		Handle_StepElement_HArray1OfCurveElementSectionDefinition Sections() const;
		%feature("autodoc", "1");
		void SetSections(const Handle_StepElement_HArray1OfCurveElementSectionDefinition &Sections);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepFEA_CurveElementIntervalLinearlyVarying {
	Handle_StepFEA_CurveElementIntervalLinearlyVarying GetHandle() {
	return *(Handle_StepFEA_CurveElementIntervalLinearlyVarying*) &$self;
	}
};
%extend StepFEA_CurveElementIntervalLinearlyVarying {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepFEA_CurveElementIntervalLinearlyVarying {
	~StepFEA_CurveElementIntervalLinearlyVarying() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepFEA_CurveElementIntervalLinearlyVarying\n");}
	}
};


%nodefaultctor StepFEA_FeaShellShearStiffness;
class StepFEA_FeaShellShearStiffness : public StepFEA_FeaMaterialPropertyRepresentationItem {
	public:
		%feature("autodoc", "1");
		StepFEA_FeaShellShearStiffness();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aRepresentationItem_Name, const StepFEA_SymmetricTensor22d &aFeaConstants);
		%feature("autodoc", "1");
		StepFEA_SymmetricTensor22d FeaConstants() const;
		%feature("autodoc", "1");
		void SetFeaConstants(const StepFEA_SymmetricTensor22d &FeaConstants);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepFEA_FeaShellShearStiffness {
	Handle_StepFEA_FeaShellShearStiffness GetHandle() {
	return *(Handle_StepFEA_FeaShellShearStiffness*) &$self;
	}
};
%extend StepFEA_FeaShellShearStiffness {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepFEA_FeaShellShearStiffness {
	~StepFEA_FeaShellShearStiffness() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepFEA_FeaShellShearStiffness\n");}
	}
};


%nodefaultctor StepFEA_SymmetricTensor23dMember;
class StepFEA_SymmetricTensor23dMember : public StepData_SelectArrReal {
	public:
		%feature("autodoc", "1");
		StepFEA_SymmetricTensor23dMember();
		%feature("autodoc", "1");
		virtual		Standard_Boolean HasName() const;
		%feature("autodoc", "1");
		virtual		Standard_CString Name() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean SetName(const char * name);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Matches(const char * name) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepFEA_SymmetricTensor23dMember {
	Handle_StepFEA_SymmetricTensor23dMember GetHandle() {
	return *(Handle_StepFEA_SymmetricTensor23dMember*) &$self;
	}
};
%extend StepFEA_SymmetricTensor23dMember {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepFEA_SymmetricTensor23dMember {
	~StepFEA_SymmetricTensor23dMember() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepFEA_SymmetricTensor23dMember\n");}
	}
};


%nodefaultctor StepFEA_HSequenceOfElementGeometricRelationship;
class StepFEA_HSequenceOfElementGeometricRelationship : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepFEA_HSequenceOfElementGeometricRelationship();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const Handle_StepFEA_ElementGeometricRelationship &anItem);
		%feature("autodoc", "1");
		void Append(const Handle_StepFEA_HSequenceOfElementGeometricRelationship &aSequence);
		%feature("autodoc", "1");
		void Prepend(const Handle_StepFEA_ElementGeometricRelationship &anItem);
		%feature("autodoc", "1");
		void Prepend(const Handle_StepFEA_HSequenceOfElementGeometricRelationship &aSequence);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_StepFEA_ElementGeometricRelationship &anItem);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_StepFEA_HSequenceOfElementGeometricRelationship &aSequence);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_StepFEA_ElementGeometricRelationship &anItem);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_StepFEA_HSequenceOfElementGeometricRelationship &aSequence);
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer anIndex, const Standard_Integer anOtherIndex);
		%feature("autodoc", "1");
		Handle_StepFEA_HSequenceOfElementGeometricRelationship Split(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer anIndex, const Handle_StepFEA_ElementGeometricRelationship &anItem);
		%feature("autodoc", "1");
		const Handle_StepFEA_ElementGeometricRelationship & Value(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		Handle_StepFEA_ElementGeometricRelationship & ChangeValue(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer fromIndex, const Standard_Integer toIndex);
		%feature("autodoc", "1");
		const StepFEA_SequenceOfElementGeometricRelationship & Sequence() const;
		%feature("autodoc", "1");
		StepFEA_SequenceOfElementGeometricRelationship & ChangeSequence();
		%feature("autodoc", "1");
		Handle_StepFEA_HSequenceOfElementGeometricRelationship ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepFEA_HSequenceOfElementGeometricRelationship {
	Handle_StepFEA_HSequenceOfElementGeometricRelationship GetHandle() {
	return *(Handle_StepFEA_HSequenceOfElementGeometricRelationship*) &$self;
	}
};
%extend StepFEA_HSequenceOfElementGeometricRelationship {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepFEA_HSequenceOfElementGeometricRelationship {
	~StepFEA_HSequenceOfElementGeometricRelationship() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepFEA_HSequenceOfElementGeometricRelationship\n");}
	}
};


%nodefaultctor StepFEA_SymmetricTensor22d;
class StepFEA_SymmetricTensor22d : public StepData_SelectType {
	public:
		%feature("autodoc", "1");
		StepFEA_SymmetricTensor22d();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseNum(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal AnisotropicSymmetricTensor22d() const;

};
%extend StepFEA_SymmetricTensor22d {
	~StepFEA_SymmetricTensor22d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepFEA_SymmetricTensor22d\n");}
	}
};


%nodefaultctor StepFEA_FreedomsList;
class StepFEA_FreedomsList : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepFEA_FreedomsList();
		%feature("autodoc", "1");
		void Init(const Handle_StepFEA_HArray1OfDegreeOfFreedom &aFreedoms);
		%feature("autodoc", "1");
		Handle_StepFEA_HArray1OfDegreeOfFreedom Freedoms() const;
		%feature("autodoc", "1");
		void SetFreedoms(const Handle_StepFEA_HArray1OfDegreeOfFreedom &Freedoms);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepFEA_FreedomsList {
	Handle_StepFEA_FreedomsList GetHandle() {
	return *(Handle_StepFEA_FreedomsList*) &$self;
	}
};
%extend StepFEA_FreedomsList {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepFEA_FreedomsList {
	~StepFEA_FreedomsList() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepFEA_FreedomsList\n");}
	}
};


%nodefaultctor StepFEA_FeaModel3d;
class StepFEA_FeaModel3d : public StepFEA_FeaModel {
	public:
		%feature("autodoc", "1");
		StepFEA_FeaModel3d();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepFEA_FeaModel3d {
	Handle_StepFEA_FeaModel3d GetHandle() {
	return *(Handle_StepFEA_FeaModel3d*) &$self;
	}
};
%extend StepFEA_FeaModel3d {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepFEA_FeaModel3d {
	~StepFEA_FeaModel3d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepFEA_FeaModel3d\n");}
	}
};


%nodefaultctor StepFEA_FeaAreaDensity;
class StepFEA_FeaAreaDensity : public StepFEA_FeaMaterialPropertyRepresentationItem {
	public:
		%feature("autodoc", "1");
		StepFEA_FeaAreaDensity();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aRepresentationItem_Name, const Standard_Real aFeaConstant);
		%feature("autodoc", "1");
		Standard_Real FeaConstant() const;
		%feature("autodoc", "1");
		void SetFeaConstant(const Standard_Real FeaConstant);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepFEA_FeaAreaDensity {
	Handle_StepFEA_FeaAreaDensity GetHandle() {
	return *(Handle_StepFEA_FeaAreaDensity*) &$self;
	}
};
%extend StepFEA_FeaAreaDensity {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepFEA_FeaAreaDensity {
	~StepFEA_FeaAreaDensity() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepFEA_FeaAreaDensity\n");}
	}
};


%nodefaultctor StepFEA_SequenceNodeOfSequenceOfElementRepresentation;
class StepFEA_SequenceNodeOfSequenceOfElementRepresentation : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		StepFEA_SequenceNodeOfSequenceOfElementRepresentation(const Handle_StepFEA_ElementRepresentation &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_StepFEA_ElementRepresentation & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepFEA_SequenceNodeOfSequenceOfElementRepresentation {
	Handle_StepFEA_SequenceNodeOfSequenceOfElementRepresentation GetHandle() {
	return *(Handle_StepFEA_SequenceNodeOfSequenceOfElementRepresentation*) &$self;
	}
};
%extend StepFEA_SequenceNodeOfSequenceOfElementRepresentation {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepFEA_SequenceNodeOfSequenceOfElementRepresentation {
	~StepFEA_SequenceNodeOfSequenceOfElementRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepFEA_SequenceNodeOfSequenceOfElementRepresentation\n");}
	}
};


%nodefaultctor StepFEA_SymmetricTensor43dMember;
class StepFEA_SymmetricTensor43dMember : public StepData_SelectArrReal {
	public:
		%feature("autodoc", "1");
		StepFEA_SymmetricTensor43dMember();
		%feature("autodoc", "1");
		virtual		Standard_Boolean HasName() const;
		%feature("autodoc", "1");
		virtual		Standard_CString Name() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean SetName(const char * name);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Matches(const char * name) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepFEA_SymmetricTensor43dMember {
	Handle_StepFEA_SymmetricTensor43dMember GetHandle() {
	return *(Handle_StepFEA_SymmetricTensor43dMember*) &$self;
	}
};
%extend StepFEA_SymmetricTensor43dMember {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepFEA_SymmetricTensor43dMember {
	~StepFEA_SymmetricTensor43dMember() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepFEA_SymmetricTensor43dMember\n");}
	}
};


%nodefaultctor StepFEA_Array1OfNodeRepresentation;
class StepFEA_Array1OfNodeRepresentation {
	public:
		%feature("autodoc", "1");
		StepFEA_Array1OfNodeRepresentation(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepFEA_Array1OfNodeRepresentation(const Handle_StepFEA_NodeRepresentation &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Handle_StepFEA_NodeRepresentation &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepFEA_Array1OfNodeRepresentation & Assign(const StepFEA_Array1OfNodeRepresentation &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StepFEA_NodeRepresentation &Value);
		%feature("autodoc", "1");
		const Handle_StepFEA_NodeRepresentation & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_StepFEA_NodeRepresentation & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_StepFEA_NodeRepresentation & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_StepFEA_NodeRepresentation & operator()(const Standard_Integer Index);

};
%extend StepFEA_Array1OfNodeRepresentation {
	~StepFEA_Array1OfNodeRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepFEA_Array1OfNodeRepresentation\n");}
	}
};


%nodefaultctor StepFEA_SequenceNodeOfSequenceOfCurve3dElementProperty;
class StepFEA_SequenceNodeOfSequenceOfCurve3dElementProperty : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		StepFEA_SequenceNodeOfSequenceOfCurve3dElementProperty(const Handle_StepFEA_Curve3dElementProperty &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_StepFEA_Curve3dElementProperty & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepFEA_SequenceNodeOfSequenceOfCurve3dElementProperty {
	Handle_StepFEA_SequenceNodeOfSequenceOfCurve3dElementProperty GetHandle() {
	return *(Handle_StepFEA_SequenceNodeOfSequenceOfCurve3dElementProperty*) &$self;
	}
};
%extend StepFEA_SequenceNodeOfSequenceOfCurve3dElementProperty {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepFEA_SequenceNodeOfSequenceOfCurve3dElementProperty {
	~StepFEA_SequenceNodeOfSequenceOfCurve3dElementProperty() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepFEA_SequenceNodeOfSequenceOfCurve3dElementProperty\n");}
	}
};


%nodefaultctor StepFEA_SequenceNodeOfSequenceOfNodeRepresentation;
class StepFEA_SequenceNodeOfSequenceOfNodeRepresentation : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		StepFEA_SequenceNodeOfSequenceOfNodeRepresentation(const Handle_StepFEA_NodeRepresentation &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_StepFEA_NodeRepresentation & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepFEA_SequenceNodeOfSequenceOfNodeRepresentation {
	Handle_StepFEA_SequenceNodeOfSequenceOfNodeRepresentation GetHandle() {
	return *(Handle_StepFEA_SequenceNodeOfSequenceOfNodeRepresentation*) &$self;
	}
};
%extend StepFEA_SequenceNodeOfSequenceOfNodeRepresentation {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepFEA_SequenceNodeOfSequenceOfNodeRepresentation {
	~StepFEA_SequenceNodeOfSequenceOfNodeRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepFEA_SequenceNodeOfSequenceOfNodeRepresentation\n");}
	}
};


%nodefaultctor StepFEA_FeaShellBendingStiffness;
class StepFEA_FeaShellBendingStiffness : public StepFEA_FeaMaterialPropertyRepresentationItem {
	public:
		%feature("autodoc", "1");
		StepFEA_FeaShellBendingStiffness();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aRepresentationItem_Name, const StepFEA_SymmetricTensor42d &aFeaConstants);
		%feature("autodoc", "1");
		StepFEA_SymmetricTensor42d FeaConstants() const;
		%feature("autodoc", "1");
		void SetFeaConstants(const StepFEA_SymmetricTensor42d &FeaConstants);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepFEA_FeaShellBendingStiffness {
	Handle_StepFEA_FeaShellBendingStiffness GetHandle() {
	return *(Handle_StepFEA_FeaShellBendingStiffness*) &$self;
	}
};
%extend StepFEA_FeaShellBendingStiffness {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepFEA_FeaShellBendingStiffness {
	~StepFEA_FeaShellBendingStiffness() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepFEA_FeaShellBendingStiffness\n");}
	}
};


%nodefaultctor StepFEA_SequenceOfCurve3dElementProperty;
class StepFEA_SequenceOfCurve3dElementProperty : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		StepFEA_SequenceOfCurve3dElementProperty();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const StepFEA_SequenceOfCurve3dElementProperty & Assign(const StepFEA_SequenceOfCurve3dElementProperty &Other);
		%feature("autodoc", "1");
		void Append(const Handle_StepFEA_Curve3dElementProperty &T);
		%feature("autodoc", "1");
		void Append(StepFEA_SequenceOfCurve3dElementProperty & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_StepFEA_Curve3dElementProperty &T);
		%feature("autodoc", "1");
		void Prepend(StepFEA_SequenceOfCurve3dElementProperty & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_StepFEA_Curve3dElementProperty &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, StepFEA_SequenceOfCurve3dElementProperty & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_StepFEA_Curve3dElementProperty &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, StepFEA_SequenceOfCurve3dElementProperty & S);
		%feature("autodoc", "1");
		const Handle_StepFEA_Curve3dElementProperty & First() const;
		%feature("autodoc", "1");
		const Handle_StepFEA_Curve3dElementProperty & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, StepFEA_SequenceOfCurve3dElementProperty & S);
		%feature("autodoc", "1");
		const Handle_StepFEA_Curve3dElementProperty & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_StepFEA_Curve3dElementProperty & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StepFEA_Curve3dElementProperty &I);
		%feature("autodoc", "1");
		Handle_StepFEA_Curve3dElementProperty & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_StepFEA_Curve3dElementProperty & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%extend StepFEA_SequenceOfCurve3dElementProperty {
	~StepFEA_SequenceOfCurve3dElementProperty() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepFEA_SequenceOfCurve3dElementProperty\n");}
	}
};


%nodefaultctor StepFEA_DegreeOfFreedom;
class StepFEA_DegreeOfFreedom : public StepData_SelectType {
	public:
		%feature("autodoc", "1");
		StepFEA_DegreeOfFreedom();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseNum(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseMem(const Handle_StepData_SelectMember &ent) const;
		%feature("autodoc", "1");
		virtual		Handle_StepData_SelectMember NewMember() const;
		%feature("autodoc", "1");
		void SetEnumeratedDegreeOfFreedom(const StepFEA_EnumeratedDegreeOfFreedom aVal);
		%feature("autodoc", "1");
		StepFEA_EnumeratedDegreeOfFreedom EnumeratedDegreeOfFreedom() const;
		%feature("autodoc", "1");
		void SetApplicationDefinedDegreeOfFreedom(const Handle_TCollection_HAsciiString &aVal);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString ApplicationDefinedDegreeOfFreedom() const;

};
%extend StepFEA_DegreeOfFreedom {
	~StepFEA_DegreeOfFreedom() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepFEA_DegreeOfFreedom\n");}
	}
};


%nodefaultctor StepFEA_FeaCurveSectionGeometricRelationship;
class StepFEA_FeaCurveSectionGeometricRelationship : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepFEA_FeaCurveSectionGeometricRelationship();
		%feature("autodoc", "1");
		void Init(const Handle_StepElement_CurveElementSectionDefinition &aSectionRef, const Handle_StepElement_AnalysisItemWithinRepresentation &aItem);
		%feature("autodoc", "1");
		Handle_StepElement_CurveElementSectionDefinition SectionRef() const;
		%feature("autodoc", "1");
		void SetSectionRef(const Handle_StepElement_CurveElementSectionDefinition &SectionRef);
		%feature("autodoc", "1");
		Handle_StepElement_AnalysisItemWithinRepresentation Item() const;
		%feature("autodoc", "1");
		void SetItem(const Handle_StepElement_AnalysisItemWithinRepresentation &Item);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepFEA_FeaCurveSectionGeometricRelationship {
	Handle_StepFEA_FeaCurveSectionGeometricRelationship GetHandle() {
	return *(Handle_StepFEA_FeaCurveSectionGeometricRelationship*) &$self;
	}
};
%extend StepFEA_FeaCurveSectionGeometricRelationship {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepFEA_FeaCurveSectionGeometricRelationship {
	~StepFEA_FeaCurveSectionGeometricRelationship() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepFEA_FeaCurveSectionGeometricRelationship\n");}
	}
};


%nodefaultctor StepFEA_SequenceOfElementRepresentation;
class StepFEA_SequenceOfElementRepresentation : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		StepFEA_SequenceOfElementRepresentation();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const StepFEA_SequenceOfElementRepresentation & Assign(const StepFEA_SequenceOfElementRepresentation &Other);
		%feature("autodoc", "1");
		void Append(const Handle_StepFEA_ElementRepresentation &T);
		%feature("autodoc", "1");
		void Append(StepFEA_SequenceOfElementRepresentation & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_StepFEA_ElementRepresentation &T);
		%feature("autodoc", "1");
		void Prepend(StepFEA_SequenceOfElementRepresentation & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_StepFEA_ElementRepresentation &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, StepFEA_SequenceOfElementRepresentation & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_StepFEA_ElementRepresentation &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, StepFEA_SequenceOfElementRepresentation & S);
		%feature("autodoc", "1");
		const Handle_StepFEA_ElementRepresentation & First() const;
		%feature("autodoc", "1");
		const Handle_StepFEA_ElementRepresentation & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, StepFEA_SequenceOfElementRepresentation & S);
		%feature("autodoc", "1");
		const Handle_StepFEA_ElementRepresentation & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_StepFEA_ElementRepresentation & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StepFEA_ElementRepresentation &I);
		%feature("autodoc", "1");
		Handle_StepFEA_ElementRepresentation & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_StepFEA_ElementRepresentation & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%extend StepFEA_SequenceOfElementRepresentation {
	~StepFEA_SequenceOfElementRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepFEA_SequenceOfElementRepresentation\n");}
	}
};


%nodefaultctor StepFEA_AlignedCurve3dElementCoordinateSystem;
class StepFEA_AlignedCurve3dElementCoordinateSystem : public StepFEA_FeaRepresentationItem {
	public:
		%feature("autodoc", "1");
		StepFEA_AlignedCurve3dElementCoordinateSystem();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aRepresentationItem_Name, const Handle_StepFEA_FeaAxis2Placement3d &aCoordinateSystem);
		%feature("autodoc", "1");
		Handle_StepFEA_FeaAxis2Placement3d CoordinateSystem() const;
		%feature("autodoc", "1");
		void SetCoordinateSystem(const Handle_StepFEA_FeaAxis2Placement3d &CoordinateSystem);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepFEA_AlignedCurve3dElementCoordinateSystem {
	Handle_StepFEA_AlignedCurve3dElementCoordinateSystem GetHandle() {
	return *(Handle_StepFEA_AlignedCurve3dElementCoordinateSystem*) &$self;
	}
};
%extend StepFEA_AlignedCurve3dElementCoordinateSystem {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepFEA_AlignedCurve3dElementCoordinateSystem {
	~StepFEA_AlignedCurve3dElementCoordinateSystem() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepFEA_AlignedCurve3dElementCoordinateSystem\n");}
	}
};


%nodefaultctor StepFEA_ArbitraryVolume3dElementCoordinateSystem;
class StepFEA_ArbitraryVolume3dElementCoordinateSystem : public StepFEA_FeaRepresentationItem {
	public:
		%feature("autodoc", "1");
		StepFEA_ArbitraryVolume3dElementCoordinateSystem();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aRepresentationItem_Name, const Handle_StepFEA_FeaAxis2Placement3d &aCoordinateSystem);
		%feature("autodoc", "1");
		Handle_StepFEA_FeaAxis2Placement3d CoordinateSystem() const;
		%feature("autodoc", "1");
		void SetCoordinateSystem(const Handle_StepFEA_FeaAxis2Placement3d &CoordinateSystem);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepFEA_ArbitraryVolume3dElementCoordinateSystem {
	Handle_StepFEA_ArbitraryVolume3dElementCoordinateSystem GetHandle() {
	return *(Handle_StepFEA_ArbitraryVolume3dElementCoordinateSystem*) &$self;
	}
};
%extend StepFEA_ArbitraryVolume3dElementCoordinateSystem {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepFEA_ArbitraryVolume3dElementCoordinateSystem {
	~StepFEA_ArbitraryVolume3dElementCoordinateSystem() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepFEA_ArbitraryVolume3dElementCoordinateSystem\n");}
	}
};


%nodefaultctor StepFEA_ConstantSurface3dElementCoordinateSystem;
class StepFEA_ConstantSurface3dElementCoordinateSystem : public StepFEA_FeaRepresentationItem {
	public:
		%feature("autodoc", "1");
		StepFEA_ConstantSurface3dElementCoordinateSystem();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aRepresentationItem_Name, const Standard_Integer aAxis, const Standard_Real aAngle);
		%feature("autodoc", "1");
		Standard_Integer Axis() const;
		%feature("autodoc", "1");
		void SetAxis(const Standard_Integer Axis);
		%feature("autodoc", "1");
		Standard_Real Angle() const;
		%feature("autodoc", "1");
		void SetAngle(const Standard_Real Angle);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepFEA_ConstantSurface3dElementCoordinateSystem {
	Handle_StepFEA_ConstantSurface3dElementCoordinateSystem GetHandle() {
	return *(Handle_StepFEA_ConstantSurface3dElementCoordinateSystem*) &$self;
	}
};
%extend StepFEA_ConstantSurface3dElementCoordinateSystem {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepFEA_ConstantSurface3dElementCoordinateSystem {
	~StepFEA_ConstantSurface3dElementCoordinateSystem() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepFEA_ConstantSurface3dElementCoordinateSystem\n");}
	}
};
