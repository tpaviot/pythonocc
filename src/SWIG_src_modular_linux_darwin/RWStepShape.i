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
%module RWStepShape

%include RWStepShape_renames.i

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


%include RWStepShape_dependencies.i


%include RWStepShape_headers.i




%nodefaultctor RWStepShape_RWFacetedBrep;
class RWStepShape_RWFacetedBrep {
	public:
		%feature("autodoc", "1");
		RWStepShape_RWFacetedBrep();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_FacetedBrep &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_FacetedBrep &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_FacetedBrep &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepShape_RWFacetedBrep {
	~RWStepShape_RWFacetedBrep() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepShape_RWFacetedBrep\n");}
	}
};


%nodefaultctor RWStepShape_RWAngularSize;
class RWStepShape_RWAngularSize {
	public:
		%feature("autodoc", "1");
		RWStepShape_RWAngularSize();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_AngularSize &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_AngularSize &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_AngularSize &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepShape_RWAngularSize {
	~RWStepShape_RWAngularSize() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepShape_RWAngularSize\n");}
	}
};


%nodefaultctor RWStepShape_RWVertexPoint;
class RWStepShape_RWVertexPoint {
	public:
		%feature("autodoc", "1");
		RWStepShape_RWVertexPoint();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_VertexPoint &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_VertexPoint &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_VertexPoint &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepShape_RWVertexPoint {
	~RWStepShape_RWVertexPoint() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepShape_RWVertexPoint\n");}
	}
};


%nodefaultctor RWStepShape_RWPath;
class RWStepShape_RWPath {
	public:
		%feature("autodoc", "1");
		RWStepShape_RWPath();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_Path &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_Path &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_Path &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepShape_RWPath {
	~RWStepShape_RWPath() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepShape_RWPath\n");}
	}
};


%nodefaultctor RWStepShape_RWSubface;
class RWStepShape_RWSubface {
	public:
		%feature("autodoc", "1");
		RWStepShape_RWSubface();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_Subface &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_Subface &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_Subface &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepShape_RWSubface {
	~RWStepShape_RWSubface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepShape_RWSubface\n");}
	}
};


%nodefaultctor RWStepShape_RWDimensionalSizeWithPath;
class RWStepShape_RWDimensionalSizeWithPath {
	public:
		%feature("autodoc", "1");
		RWStepShape_RWDimensionalSizeWithPath();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_DimensionalSizeWithPath &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_DimensionalSizeWithPath &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_DimensionalSizeWithPath &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepShape_RWDimensionalSizeWithPath {
	~RWStepShape_RWDimensionalSizeWithPath() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepShape_RWDimensionalSizeWithPath\n");}
	}
};


%nodefaultctor RWStepShape_RWConnectedFaceSet;
class RWStepShape_RWConnectedFaceSet {
	public:
		%feature("autodoc", "1");
		RWStepShape_RWConnectedFaceSet();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_ConnectedFaceSet &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_ConnectedFaceSet &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_ConnectedFaceSet &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepShape_RWConnectedFaceSet {
	~RWStepShape_RWConnectedFaceSet() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepShape_RWConnectedFaceSet\n");}
	}
};


%nodefaultctor RWStepShape_RWBoxedHalfSpace;
class RWStepShape_RWBoxedHalfSpace {
	public:
		%feature("autodoc", "1");
		RWStepShape_RWBoxedHalfSpace();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_BoxedHalfSpace &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_BoxedHalfSpace &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_BoxedHalfSpace &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepShape_RWBoxedHalfSpace {
	~RWStepShape_RWBoxedHalfSpace() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepShape_RWBoxedHalfSpace\n");}
	}
};


%nodefaultctor RWStepShape_RWBooleanResult;
class RWStepShape_RWBooleanResult {
	public:
		%feature("autodoc", "1");
		RWStepShape_RWBooleanResult();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_BooleanResult &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_BooleanResult &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_BooleanResult &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepShape_RWBooleanResult {
	~RWStepShape_RWBooleanResult() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepShape_RWBooleanResult\n");}
	}
};


%nodefaultctor RWStepShape_RWFaceSurface;
class RWStepShape_RWFaceSurface {
	public:
		%feature("autodoc", "1");
		RWStepShape_RWFaceSurface();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_FaceSurface &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_FaceSurface &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_FaceSurface &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepShape_RWFaceSurface {
	~RWStepShape_RWFaceSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepShape_RWFaceSurface\n");}
	}
};


%nodefaultctor RWStepShape_RWDimensionalCharacteristicRepresentation;
class RWStepShape_RWDimensionalCharacteristicRepresentation {
	public:
		%feature("autodoc", "1");
		RWStepShape_RWDimensionalCharacteristicRepresentation();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_DimensionalCharacteristicRepresentation &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_DimensionalCharacteristicRepresentation &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_DimensionalCharacteristicRepresentation &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepShape_RWDimensionalCharacteristicRepresentation {
	~RWStepShape_RWDimensionalCharacteristicRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepShape_RWDimensionalCharacteristicRepresentation\n");}
	}
};


%nodefaultctor RWStepShape_RWPolyLoop;
class RWStepShape_RWPolyLoop {
	public:
		%feature("autodoc", "1");
		RWStepShape_RWPolyLoop();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_PolyLoop &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_PolyLoop &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_PolyLoop &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepShape_RWPolyLoop {
	~RWStepShape_RWPolyLoop() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepShape_RWPolyLoop\n");}
	}
};


%nodefaultctor RWStepShape_RWManifoldSolidBrep;
class RWStepShape_RWManifoldSolidBrep {
	public:
		%feature("autodoc", "1");
		RWStepShape_RWManifoldSolidBrep();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_ManifoldSolidBrep &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_ManifoldSolidBrep &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_ManifoldSolidBrep &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepShape_RWManifoldSolidBrep {
	~RWStepShape_RWManifoldSolidBrep() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepShape_RWManifoldSolidBrep\n");}
	}
};


%nodefaultctor RWStepShape_RWGeometricallyBoundedWireframeShapeRepresentation;
class RWStepShape_RWGeometricallyBoundedWireframeShapeRepresentation {
	public:
		%feature("autodoc", "1");
		RWStepShape_RWGeometricallyBoundedWireframeShapeRepresentation();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_GeometricallyBoundedWireframeShapeRepresentation &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_GeometricallyBoundedWireframeShapeRepresentation &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_GeometricallyBoundedWireframeShapeRepresentation &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepShape_RWGeometricallyBoundedWireframeShapeRepresentation {
	~RWStepShape_RWGeometricallyBoundedWireframeShapeRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepShape_RWGeometricallyBoundedWireframeShapeRepresentation\n");}
	}
};


%nodefaultctor RWStepShape_RWEdgeBasedWireframeShapeRepresentation;
class RWStepShape_RWEdgeBasedWireframeShapeRepresentation {
	public:
		%feature("autodoc", "1");
		RWStepShape_RWEdgeBasedWireframeShapeRepresentation();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_EdgeBasedWireframeShapeRepresentation &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_EdgeBasedWireframeShapeRepresentation &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_EdgeBasedWireframeShapeRepresentation &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepShape_RWEdgeBasedWireframeShapeRepresentation {
	~RWStepShape_RWEdgeBasedWireframeShapeRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepShape_RWEdgeBasedWireframeShapeRepresentation\n");}
	}
};


%nodefaultctor RWStepShape_RWLimitsAndFits;
class RWStepShape_RWLimitsAndFits {
	public:
		%feature("autodoc", "1");
		RWStepShape_RWLimitsAndFits();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_LimitsAndFits &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_LimitsAndFits &ent) const;

};
%extend RWStepShape_RWLimitsAndFits {
	~RWStepShape_RWLimitsAndFits() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepShape_RWLimitsAndFits\n");}
	}
};


%nodefaultctor RWStepShape_RWFaceOuterBound;
class RWStepShape_RWFaceOuterBound {
	public:
		%feature("autodoc", "1");
		RWStepShape_RWFaceOuterBound();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_FaceOuterBound &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_FaceOuterBound &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_FaceOuterBound &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepShape_RWFaceOuterBound {
	~RWStepShape_RWFaceOuterBound() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepShape_RWFaceOuterBound\n");}
	}
};


%nodefaultctor RWStepShape_RWAdvancedBrepShapeRepresentation;
class RWStepShape_RWAdvancedBrepShapeRepresentation {
	public:
		%feature("autodoc", "1");
		RWStepShape_RWAdvancedBrepShapeRepresentation();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_AdvancedBrepShapeRepresentation &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_AdvancedBrepShapeRepresentation &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_AdvancedBrepShapeRepresentation &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepShape_RWAdvancedBrepShapeRepresentation {
	~RWStepShape_RWAdvancedBrepShapeRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepShape_RWAdvancedBrepShapeRepresentation\n");}
	}
};


%nodefaultctor RWStepShape_RWGeometricSet;
class RWStepShape_RWGeometricSet {
	public:
		%feature("autodoc", "1");
		RWStepShape_RWGeometricSet();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_GeometricSet &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_GeometricSet &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_GeometricSet &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepShape_RWGeometricSet {
	~RWStepShape_RWGeometricSet() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepShape_RWGeometricSet\n");}
	}
};


%nodefaultctor RWStepShape_RWEdgeBasedWireframeModel;
class RWStepShape_RWEdgeBasedWireframeModel {
	public:
		%feature("autodoc", "1");
		RWStepShape_RWEdgeBasedWireframeModel();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_EdgeBasedWireframeModel &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_EdgeBasedWireframeModel &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_EdgeBasedWireframeModel &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepShape_RWEdgeBasedWireframeModel {
	~RWStepShape_RWEdgeBasedWireframeModel() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepShape_RWEdgeBasedWireframeModel\n");}
	}
};


%nodefaultctor RWStepShape_RWSolidReplica;
class RWStepShape_RWSolidReplica {
	public:
		%feature("autodoc", "1");
		RWStepShape_RWSolidReplica();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_SolidReplica &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_SolidReplica &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_SolidReplica &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepShape_RWSolidReplica {
	~RWStepShape_RWSolidReplica() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepShape_RWSolidReplica\n");}
	}
};


%nodefaultctor RWStepShape_RWExtrudedAreaSolid;
class RWStepShape_RWExtrudedAreaSolid {
	public:
		%feature("autodoc", "1");
		RWStepShape_RWExtrudedAreaSolid();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_ExtrudedAreaSolid &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_ExtrudedAreaSolid &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_ExtrudedAreaSolid &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepShape_RWExtrudedAreaSolid {
	~RWStepShape_RWExtrudedAreaSolid() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepShape_RWExtrudedAreaSolid\n");}
	}
};


%nodefaultctor RWStepShape_RWCompoundShapeRepresentation;
class RWStepShape_RWCompoundShapeRepresentation {
	public:
		%feature("autodoc", "1");
		RWStepShape_RWCompoundShapeRepresentation();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_CompoundShapeRepresentation &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_CompoundShapeRepresentation &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_CompoundShapeRepresentation &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepShape_RWCompoundShapeRepresentation {
	~RWStepShape_RWCompoundShapeRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepShape_RWCompoundShapeRepresentation\n");}
	}
};


%nodefaultctor RWStepShape_RWConnectedFaceShapeRepresentation;
class RWStepShape_RWConnectedFaceShapeRepresentation {
	public:
		%feature("autodoc", "1");
		RWStepShape_RWConnectedFaceShapeRepresentation();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_ConnectedFaceShapeRepresentation &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_ConnectedFaceShapeRepresentation &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_ConnectedFaceShapeRepresentation &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepShape_RWConnectedFaceShapeRepresentation {
	~RWStepShape_RWConnectedFaceShapeRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepShape_RWConnectedFaceShapeRepresentation\n");}
	}
};


%nodefaultctor RWStepShape_RWSubedge;
class RWStepShape_RWSubedge {
	public:
		%feature("autodoc", "1");
		RWStepShape_RWSubedge();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_Subedge &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_Subedge &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_Subedge &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepShape_RWSubedge {
	~RWStepShape_RWSubedge() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepShape_RWSubedge\n");}
	}
};


%nodefaultctor RWStepShape_RWMeasureQualification;
class RWStepShape_RWMeasureQualification {
	public:
		%feature("autodoc", "1");
		RWStepShape_RWMeasureQualification();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_MeasureQualification &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_MeasureQualification &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_MeasureQualification &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepShape_RWMeasureQualification {
	~RWStepShape_RWMeasureQualification() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepShape_RWMeasureQualification\n");}
	}
};


%nodefaultctor RWStepShape_RWBlock;
class RWStepShape_RWBlock {
	public:
		%feature("autodoc", "1");
		RWStepShape_RWBlock();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_Block &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_Block &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_Block &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepShape_RWBlock {
	~RWStepShape_RWBlock() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepShape_RWBlock\n");}
	}
};


%nodefaultctor RWStepShape_RWShellBasedSurfaceModel;
class RWStepShape_RWShellBasedSurfaceModel {
	public:
		%feature("autodoc", "1");
		RWStepShape_RWShellBasedSurfaceModel();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_ShellBasedSurfaceModel &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_ShellBasedSurfaceModel &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_ShellBasedSurfaceModel &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepShape_RWShellBasedSurfaceModel {
	~RWStepShape_RWShellBasedSurfaceModel() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepShape_RWShellBasedSurfaceModel\n");}
	}
};


%nodefaultctor RWStepShape_RWShapeDimensionRepresentation;
class RWStepShape_RWShapeDimensionRepresentation {
	public:
		%feature("autodoc", "1");
		RWStepShape_RWShapeDimensionRepresentation();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_ShapeDimensionRepresentation &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_ShapeDimensionRepresentation &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_ShapeDimensionRepresentation &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepShape_RWShapeDimensionRepresentation {
	~RWStepShape_RWShapeDimensionRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepShape_RWShapeDimensionRepresentation\n");}
	}
};


%nodefaultctor RWStepShape_RWToleranceValue;
class RWStepShape_RWToleranceValue {
	public:
		%feature("autodoc", "1");
		RWStepShape_RWToleranceValue();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_ToleranceValue &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_ToleranceValue &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_ToleranceValue &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepShape_RWToleranceValue {
	~RWStepShape_RWToleranceValue() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepShape_RWToleranceValue\n");}
	}
};


%nodefaultctor RWStepShape_RWOrientedFace;
class RWStepShape_RWOrientedFace {
	public:
		%feature("autodoc", "1");
		RWStepShape_RWOrientedFace();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_OrientedFace &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_OrientedFace &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_OrientedFace &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepShape_RWOrientedFace {
	~RWStepShape_RWOrientedFace() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepShape_RWOrientedFace\n");}
	}
};


%nodefaultctor RWStepShape_RWOrientedClosedShell;
class RWStepShape_RWOrientedClosedShell {
	public:
		%feature("autodoc", "1");
		RWStepShape_RWOrientedClosedShell();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_OrientedClosedShell &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_OrientedClosedShell &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_OrientedClosedShell &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepShape_RWOrientedClosedShell {
	~RWStepShape_RWOrientedClosedShell() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepShape_RWOrientedClosedShell\n");}
	}
};


%nodefaultctor RWStepShape_RWEdge;
class RWStepShape_RWEdge {
	public:
		%feature("autodoc", "1");
		RWStepShape_RWEdge();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_Edge &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_Edge &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_Edge &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepShape_RWEdge {
	~RWStepShape_RWEdge() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepShape_RWEdge\n");}
	}
};


%nodefaultctor RWStepShape_RWCsgSolid;
class RWStepShape_RWCsgSolid {
	public:
		%feature("autodoc", "1");
		RWStepShape_RWCsgSolid();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_CsgSolid &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_CsgSolid &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_CsgSolid &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepShape_RWCsgSolid {
	~RWStepShape_RWCsgSolid() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepShape_RWCsgSolid\n");}
	}
};


%nodefaultctor RWStepShape_RWFacetedBrepAndBrepWithVoids;
class RWStepShape_RWFacetedBrepAndBrepWithVoids {
	public:
		%feature("autodoc", "1");
		RWStepShape_RWFacetedBrepAndBrepWithVoids();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_FacetedBrepAndBrepWithVoids &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_FacetedBrepAndBrepWithVoids &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_FacetedBrepAndBrepWithVoids &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepShape_RWFacetedBrepAndBrepWithVoids {
	~RWStepShape_RWFacetedBrepAndBrepWithVoids() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepShape_RWFacetedBrepAndBrepWithVoids\n");}
	}
};


%nodefaultctor RWStepShape_RWClosedShell;
class RWStepShape_RWClosedShell {
	public:
		%feature("autodoc", "1");
		RWStepShape_RWClosedShell();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_ClosedShell &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_ClosedShell &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_ClosedShell &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepShape_RWClosedShell {
	~RWStepShape_RWClosedShell() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepShape_RWClosedShell\n");}
	}
};


%nodefaultctor RWStepShape_RWManifoldSurfaceShapeRepresentation;
class RWStepShape_RWManifoldSurfaceShapeRepresentation {
	public:
		%feature("autodoc", "1");
		RWStepShape_RWManifoldSurfaceShapeRepresentation();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_ManifoldSurfaceShapeRepresentation &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_ManifoldSurfaceShapeRepresentation &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_ManifoldSurfaceShapeRepresentation &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepShape_RWManifoldSurfaceShapeRepresentation {
	~RWStepShape_RWManifoldSurfaceShapeRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepShape_RWManifoldSurfaceShapeRepresentation\n");}
	}
};


%nodefaultctor RWStepShape_RWPlusMinusTolerance;
class RWStepShape_RWPlusMinusTolerance {
	public:
		%feature("autodoc", "1");
		RWStepShape_RWPlusMinusTolerance();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_PlusMinusTolerance &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_PlusMinusTolerance &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_PlusMinusTolerance &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepShape_RWPlusMinusTolerance {
	~RWStepShape_RWPlusMinusTolerance() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepShape_RWPlusMinusTolerance\n");}
	}
};


%nodefaultctor RWStepShape_RWVertexLoop;
class RWStepShape_RWVertexLoop {
	public:
		%feature("autodoc", "1");
		RWStepShape_RWVertexLoop();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_VertexLoop &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_VertexLoop &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_VertexLoop &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepShape_RWVertexLoop {
	~RWStepShape_RWVertexLoop() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepShape_RWVertexLoop\n");}
	}
};


%nodefaultctor RWStepShape_RWSweptAreaSolid;
class RWStepShape_RWSweptAreaSolid {
	public:
		%feature("autodoc", "1");
		RWStepShape_RWSweptAreaSolid();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_SweptAreaSolid &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_SweptAreaSolid &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_SweptAreaSolid &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepShape_RWSweptAreaSolid {
	~RWStepShape_RWSweptAreaSolid() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepShape_RWSweptAreaSolid\n");}
	}
};


%nodefaultctor RWStepShape_RWOrientedOpenShell;
class RWStepShape_RWOrientedOpenShell {
	public:
		%feature("autodoc", "1");
		RWStepShape_RWOrientedOpenShell();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_OrientedOpenShell &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_OrientedOpenShell &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_OrientedOpenShell &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepShape_RWOrientedOpenShell {
	~RWStepShape_RWOrientedOpenShell() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepShape_RWOrientedOpenShell\n");}
	}
};


%nodefaultctor RWStepShape_RWMeasureRepresentationItemAndQualifiedRepresentationItem;
class RWStepShape_RWMeasureRepresentationItemAndQualifiedRepresentationItem {
	public:
		%feature("autodoc", "1");
		RWStepShape_RWMeasureRepresentationItemAndQualifiedRepresentationItem();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepShape_RWMeasureRepresentationItemAndQualifiedRepresentationItem {
	~RWStepShape_RWMeasureRepresentationItemAndQualifiedRepresentationItem() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepShape_RWMeasureRepresentationItemAndQualifiedRepresentationItem\n");}
	}
};


%nodefaultctor RWStepShape_RWFaceBasedSurfaceModel;
class RWStepShape_RWFaceBasedSurfaceModel {
	public:
		%feature("autodoc", "1");
		RWStepShape_RWFaceBasedSurfaceModel();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_FaceBasedSurfaceModel &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_FaceBasedSurfaceModel &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_FaceBasedSurfaceModel &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepShape_RWFaceBasedSurfaceModel {
	~RWStepShape_RWFaceBasedSurfaceModel() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepShape_RWFaceBasedSurfaceModel\n");}
	}
};


%nodefaultctor RWStepShape_RWQualifiedRepresentationItem;
class RWStepShape_RWQualifiedRepresentationItem {
	public:
		%feature("autodoc", "1");
		RWStepShape_RWQualifiedRepresentationItem();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_QualifiedRepresentationItem &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_QualifiedRepresentationItem &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_QualifiedRepresentationItem &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepShape_RWQualifiedRepresentationItem {
	~RWStepShape_RWQualifiedRepresentationItem() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepShape_RWQualifiedRepresentationItem\n");}
	}
};


%nodefaultctor RWStepShape_RWOrientedEdge;
class RWStepShape_RWOrientedEdge {
	public:
		%feature("autodoc", "1");
		RWStepShape_RWOrientedEdge();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_OrientedEdge &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_OrientedEdge &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_OrientedEdge &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepShape_RWOrientedEdge {
	~RWStepShape_RWOrientedEdge() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepShape_RWOrientedEdge\n");}
	}
};


%nodefaultctor RWStepShape_RWConnectedEdgeSet;
class RWStepShape_RWConnectedEdgeSet {
	public:
		%feature("autodoc", "1");
		RWStepShape_RWConnectedEdgeSet();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_ConnectedEdgeSet &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_ConnectedEdgeSet &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_ConnectedEdgeSet &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepShape_RWConnectedEdgeSet {
	~RWStepShape_RWConnectedEdgeSet() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepShape_RWConnectedEdgeSet\n");}
	}
};


%nodefaultctor RWStepShape_RWOpenShell;
class RWStepShape_RWOpenShell {
	public:
		%feature("autodoc", "1");
		RWStepShape_RWOpenShell();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_OpenShell &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_OpenShell &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_OpenShell &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepShape_RWOpenShell {
	~RWStepShape_RWOpenShell() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepShape_RWOpenShell\n");}
	}
};


%nodefaultctor RWStepShape_RWVertex;
class RWStepShape_RWVertex {
	public:
		%feature("autodoc", "1");
		RWStepShape_RWVertex();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_Vertex &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_Vertex &ent) const;

};
%extend RWStepShape_RWVertex {
	~RWStepShape_RWVertex() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepShape_RWVertex\n");}
	}
};


%nodefaultctor RWStepShape_RWSphere;
class RWStepShape_RWSphere {
	public:
		%feature("autodoc", "1");
		RWStepShape_RWSphere();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_Sphere &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_Sphere &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_Sphere &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepShape_RWSphere {
	~RWStepShape_RWSphere() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepShape_RWSphere\n");}
	}
};


%nodefaultctor RWStepShape_RWExtrudedFaceSolid;
class RWStepShape_RWExtrudedFaceSolid {
	public:
		%feature("autodoc", "1");
		RWStepShape_RWExtrudedFaceSolid();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_ExtrudedFaceSolid &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_ExtrudedFaceSolid &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_ExtrudedFaceSolid &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepShape_RWExtrudedFaceSolid {
	~RWStepShape_RWExtrudedFaceSolid() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepShape_RWExtrudedFaceSolid\n");}
	}
};


%nodefaultctor RWStepShape_RWCsgShapeRepresentation;
class RWStepShape_RWCsgShapeRepresentation {
	public:
		%feature("autodoc", "1");
		RWStepShape_RWCsgShapeRepresentation();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_CsgShapeRepresentation &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_CsgShapeRepresentation &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_CsgShapeRepresentation &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepShape_RWCsgShapeRepresentation {
	~RWStepShape_RWCsgShapeRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepShape_RWCsgShapeRepresentation\n");}
	}
};


%nodefaultctor RWStepShape_RWAngularLocation;
class RWStepShape_RWAngularLocation {
	public:
		%feature("autodoc", "1");
		RWStepShape_RWAngularLocation();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_AngularLocation &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_AngularLocation &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_AngularLocation &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepShape_RWAngularLocation {
	~RWStepShape_RWAngularLocation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepShape_RWAngularLocation\n");}
	}
};


%nodefaultctor RWStepShape_RWOrientedPath;
class RWStepShape_RWOrientedPath {
	public:
		%feature("autodoc", "1");
		RWStepShape_RWOrientedPath();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_OrientedPath &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_OrientedPath &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_OrientedPath &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepShape_RWOrientedPath {
	~RWStepShape_RWOrientedPath() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepShape_RWOrientedPath\n");}
	}
};


%nodefaultctor RWStepShape_RWLoopAndPath;
class RWStepShape_RWLoopAndPath {
	public:
		%feature("autodoc", "1");
		RWStepShape_RWLoopAndPath();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_LoopAndPath &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_LoopAndPath &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_LoopAndPath &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepShape_RWLoopAndPath {
	~RWStepShape_RWLoopAndPath() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepShape_RWLoopAndPath\n");}
	}
};


%nodefaultctor RWStepShape_RWRevolvedFaceSolid;
class RWStepShape_RWRevolvedFaceSolid {
	public:
		%feature("autodoc", "1");
		RWStepShape_RWRevolvedFaceSolid();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_RevolvedFaceSolid &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_RevolvedFaceSolid &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_RevolvedFaceSolid &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepShape_RWRevolvedFaceSolid {
	~RWStepShape_RWRevolvedFaceSolid() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepShape_RWRevolvedFaceSolid\n");}
	}
};


%nodefaultctor RWStepShape_RWShapeDefinitionRepresentation;
class RWStepShape_RWShapeDefinitionRepresentation {
	public:
		%feature("autodoc", "1");
		RWStepShape_RWShapeDefinitionRepresentation();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_ShapeDefinitionRepresentation &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_ShapeDefinitionRepresentation &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_ShapeDefinitionRepresentation &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepShape_RWShapeDefinitionRepresentation {
	~RWStepShape_RWShapeDefinitionRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepShape_RWShapeDefinitionRepresentation\n");}
	}
};


%nodefaultctor RWStepShape_RWDimensionalLocation;
class RWStepShape_RWDimensionalLocation {
	public:
		%feature("autodoc", "1");
		RWStepShape_RWDimensionalLocation();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_DimensionalLocation &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_DimensionalLocation &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_DimensionalLocation &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepShape_RWDimensionalLocation {
	~RWStepShape_RWDimensionalLocation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepShape_RWDimensionalLocation\n");}
	}
};


%nodefaultctor RWStepShape_RWHalfSpaceSolid;
class RWStepShape_RWHalfSpaceSolid {
	public:
		%feature("autodoc", "1");
		RWStepShape_RWHalfSpaceSolid();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_HalfSpaceSolid &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_HalfSpaceSolid &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_HalfSpaceSolid &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepShape_RWHalfSpaceSolid {
	~RWStepShape_RWHalfSpaceSolid() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepShape_RWHalfSpaceSolid\n");}
	}
};


%nodefaultctor RWStepShape_RWTopologicalRepresentationItem;
class RWStepShape_RWTopologicalRepresentationItem {
	public:
		%feature("autodoc", "1");
		RWStepShape_RWTopologicalRepresentationItem();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_TopologicalRepresentationItem &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_TopologicalRepresentationItem &ent) const;

};
%extend RWStepShape_RWTopologicalRepresentationItem {
	~RWStepShape_RWTopologicalRepresentationItem() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepShape_RWTopologicalRepresentationItem\n");}
	}
};


%nodefaultctor RWStepShape_RWDimensionalSize;
class RWStepShape_RWDimensionalSize {
	public:
		%feature("autodoc", "1");
		RWStepShape_RWDimensionalSize();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_DimensionalSize &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_DimensionalSize &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_DimensionalSize &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepShape_RWDimensionalSize {
	~RWStepShape_RWDimensionalSize() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepShape_RWDimensionalSize\n");}
	}
};


%nodefaultctor RWStepShape_RWFace;
class RWStepShape_RWFace {
	public:
		%feature("autodoc", "1");
		RWStepShape_RWFace();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_Face &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_Face &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_Face &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepShape_RWFace {
	~RWStepShape_RWFace() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepShape_RWFace\n");}
	}
};


%nodefaultctor RWStepShape_RWNonManifoldSurfaceShapeRepresentation;
class RWStepShape_RWNonManifoldSurfaceShapeRepresentation {
	public:
		%feature("autodoc", "1");
		RWStepShape_RWNonManifoldSurfaceShapeRepresentation();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_NonManifoldSurfaceShapeRepresentation &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_NonManifoldSurfaceShapeRepresentation &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_NonManifoldSurfaceShapeRepresentation &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepShape_RWNonManifoldSurfaceShapeRepresentation {
	~RWStepShape_RWNonManifoldSurfaceShapeRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepShape_RWNonManifoldSurfaceShapeRepresentation\n");}
	}
};


%nodefaultctor RWStepShape_RWConnectedFaceSubSet;
class RWStepShape_RWConnectedFaceSubSet {
	public:
		%feature("autodoc", "1");
		RWStepShape_RWConnectedFaceSubSet();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_ConnectedFaceSubSet &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_ConnectedFaceSubSet &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_ConnectedFaceSubSet &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepShape_RWConnectedFaceSubSet {
	~RWStepShape_RWConnectedFaceSubSet() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepShape_RWConnectedFaceSubSet\n");}
	}
};


%nodefaultctor RWStepShape_RWSolidModel;
class RWStepShape_RWSolidModel {
	public:
		%feature("autodoc", "1");
		RWStepShape_RWSolidModel();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_SolidModel &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_SolidModel &ent) const;

};
%extend RWStepShape_RWSolidModel {
	~RWStepShape_RWSolidModel() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepShape_RWSolidModel\n");}
	}
};


%nodefaultctor RWStepShape_RWGeometricallyBoundedSurfaceShapeRepresentation;
class RWStepShape_RWGeometricallyBoundedSurfaceShapeRepresentation {
	public:
		%feature("autodoc", "1");
		RWStepShape_RWGeometricallyBoundedSurfaceShapeRepresentation();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_GeometricallyBoundedSurfaceShapeRepresentation &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_GeometricallyBoundedSurfaceShapeRepresentation &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_GeometricallyBoundedSurfaceShapeRepresentation &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepShape_RWGeometricallyBoundedSurfaceShapeRepresentation {
	~RWStepShape_RWGeometricallyBoundedSurfaceShapeRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepShape_RWGeometricallyBoundedSurfaceShapeRepresentation\n");}
	}
};


%nodefaultctor RWStepShape_RWEdgeLoop;
class RWStepShape_RWEdgeLoop {
	public:
		%feature("autodoc", "1");
		RWStepShape_RWEdgeLoop();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_EdgeLoop &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_EdgeLoop &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_EdgeLoop &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		void Check(const Handle_StepShape_EdgeLoop &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;

};
%extend RWStepShape_RWEdgeLoop {
	~RWStepShape_RWEdgeLoop() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepShape_RWEdgeLoop\n");}
	}
};


%nodefaultctor RWStepShape_RWTypeQualifier;
class RWStepShape_RWTypeQualifier {
	public:
		%feature("autodoc", "1");
		RWStepShape_RWTypeQualifier();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_TypeQualifier &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_TypeQualifier &ent) const;

};
%extend RWStepShape_RWTypeQualifier {
	~RWStepShape_RWTypeQualifier() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepShape_RWTypeQualifier\n");}
	}
};


%nodefaultctor RWStepShape_RWRightAngularWedge;
class RWStepShape_RWRightAngularWedge {
	public:
		%feature("autodoc", "1");
		RWStepShape_RWRightAngularWedge();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_RightAngularWedge &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_RightAngularWedge &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_RightAngularWedge &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepShape_RWRightAngularWedge {
	~RWStepShape_RWRightAngularWedge() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepShape_RWRightAngularWedge\n");}
	}
};


%nodefaultctor RWStepShape_RWShapeRepresentation;
class RWStepShape_RWShapeRepresentation {
	public:
		%feature("autodoc", "1");
		RWStepShape_RWShapeRepresentation();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_ShapeRepresentation &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_ShapeRepresentation &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_ShapeRepresentation &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepShape_RWShapeRepresentation {
	~RWStepShape_RWShapeRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepShape_RWShapeRepresentation\n");}
	}
};


%nodefaultctor RWStepShape_RWLoop;
class RWStepShape_RWLoop {
	public:
		%feature("autodoc", "1");
		RWStepShape_RWLoop();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_Loop &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_Loop &ent) const;

};
%extend RWStepShape_RWLoop {
	~RWStepShape_RWLoop() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepShape_RWLoop\n");}
	}
};


%nodefaultctor RWStepShape_RWSweptFaceSolid;
class RWStepShape_RWSweptFaceSolid {
	public:
		%feature("autodoc", "1");
		RWStepShape_RWSweptFaceSolid();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_SweptFaceSolid &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_SweptFaceSolid &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_SweptFaceSolid &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepShape_RWSweptFaceSolid {
	~RWStepShape_RWSweptFaceSolid() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepShape_RWSweptFaceSolid\n");}
	}
};


%nodefaultctor RWStepShape_RWTorus;
class RWStepShape_RWTorus {
	public:
		%feature("autodoc", "1");
		RWStepShape_RWTorus();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_Torus &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_Torus &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_Torus &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepShape_RWTorus {
	~RWStepShape_RWTorus() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepShape_RWTorus\n");}
	}
};


%nodefaultctor RWStepShape_RWGeometricCurveSet;
class RWStepShape_RWGeometricCurveSet {
	public:
		%feature("autodoc", "1");
		RWStepShape_RWGeometricCurveSet();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_GeometricCurveSet &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_GeometricCurveSet &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_GeometricCurveSet &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepShape_RWGeometricCurveSet {
	~RWStepShape_RWGeometricCurveSet() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepShape_RWGeometricCurveSet\n");}
	}
};


%nodefaultctor RWStepShape_RWDimensionalLocationWithPath;
class RWStepShape_RWDimensionalLocationWithPath {
	public:
		%feature("autodoc", "1");
		RWStepShape_RWDimensionalLocationWithPath();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_DimensionalLocationWithPath &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_DimensionalLocationWithPath &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_DimensionalLocationWithPath &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepShape_RWDimensionalLocationWithPath {
	~RWStepShape_RWDimensionalLocationWithPath() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepShape_RWDimensionalLocationWithPath\n");}
	}
};


%nodefaultctor RWStepShape_RWEdgeCurve;
class RWStepShape_RWEdgeCurve {
	public:
		%feature("autodoc", "1");
		RWStepShape_RWEdgeCurve();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_EdgeCurve &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_EdgeCurve &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_EdgeCurve &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		void Check(const Handle_StepShape_EdgeCurve &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;

};
%extend RWStepShape_RWEdgeCurve {
	~RWStepShape_RWEdgeCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepShape_RWEdgeCurve\n");}
	}
};


%nodefaultctor RWStepShape_RWTransitionalShapeRepresentation;
class RWStepShape_RWTransitionalShapeRepresentation {
	public:
		%feature("autodoc", "1");
		RWStepShape_RWTransitionalShapeRepresentation();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_TransitionalShapeRepresentation &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_TransitionalShapeRepresentation &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_TransitionalShapeRepresentation &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepShape_RWTransitionalShapeRepresentation {
	~RWStepShape_RWTransitionalShapeRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepShape_RWTransitionalShapeRepresentation\n");}
	}
};


%nodefaultctor RWStepShape_RWFacetedBrepShapeRepresentation;
class RWStepShape_RWFacetedBrepShapeRepresentation {
	public:
		%feature("autodoc", "1");
		RWStepShape_RWFacetedBrepShapeRepresentation();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_FacetedBrepShapeRepresentation &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_FacetedBrepShapeRepresentation &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_FacetedBrepShapeRepresentation &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepShape_RWFacetedBrepShapeRepresentation {
	~RWStepShape_RWFacetedBrepShapeRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepShape_RWFacetedBrepShapeRepresentation\n");}
	}
};


%nodefaultctor RWStepShape_RWBoxDomain;
class RWStepShape_RWBoxDomain {
	public:
		%feature("autodoc", "1");
		RWStepShape_RWBoxDomain();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_BoxDomain &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_BoxDomain &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_BoxDomain &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepShape_RWBoxDomain {
	~RWStepShape_RWBoxDomain() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepShape_RWBoxDomain\n");}
	}
};


%nodefaultctor RWStepShape_RWRightCircularCone;
class RWStepShape_RWRightCircularCone {
	public:
		%feature("autodoc", "1");
		RWStepShape_RWRightCircularCone();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_RightCircularCone &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_RightCircularCone &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_RightCircularCone &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepShape_RWRightCircularCone {
	~RWStepShape_RWRightCircularCone() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepShape_RWRightCircularCone\n");}
	}
};


%nodefaultctor RWStepShape_RWDefinitionalRepresentationAndShapeRepresentation;
class RWStepShape_RWDefinitionalRepresentationAndShapeRepresentation {
	public:
		%feature("autodoc", "1");
		RWStepShape_RWDefinitionalRepresentationAndShapeRepresentation();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_DefinitionalRepresentationAndShapeRepresentation &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_DefinitionalRepresentationAndShapeRepresentation &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_DefinitionalRepresentationAndShapeRepresentation &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepShape_RWDefinitionalRepresentationAndShapeRepresentation {
	~RWStepShape_RWDefinitionalRepresentationAndShapeRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepShape_RWDefinitionalRepresentationAndShapeRepresentation\n");}
	}
};


%nodefaultctor RWStepShape_RWRevolvedAreaSolid;
class RWStepShape_RWRevolvedAreaSolid {
	public:
		%feature("autodoc", "1");
		RWStepShape_RWRevolvedAreaSolid();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_RevolvedAreaSolid &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_RevolvedAreaSolid &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_RevolvedAreaSolid &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepShape_RWRevolvedAreaSolid {
	~RWStepShape_RWRevolvedAreaSolid() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepShape_RWRevolvedAreaSolid\n");}
	}
};


%nodefaultctor RWStepShape_RWFaceBound;
class RWStepShape_RWFaceBound {
	public:
		%feature("autodoc", "1");
		RWStepShape_RWFaceBound();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_FaceBound &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_FaceBound &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_FaceBound &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		void Check(const Handle_StepShape_FaceBound &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;

};
%extend RWStepShape_RWFaceBound {
	~RWStepShape_RWFaceBound() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepShape_RWFaceBound\n");}
	}
};


%nodefaultctor RWStepShape_RWContextDependentShapeRepresentation;
class RWStepShape_RWContextDependentShapeRepresentation {
	public:
		%feature("autodoc", "1");
		RWStepShape_RWContextDependentShapeRepresentation();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_ContextDependentShapeRepresentation &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_ContextDependentShapeRepresentation &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_ContextDependentShapeRepresentation &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepShape_RWContextDependentShapeRepresentation {
	~RWStepShape_RWContextDependentShapeRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepShape_RWContextDependentShapeRepresentation\n");}
	}
};


%nodefaultctor RWStepShape_RWAdvancedFace;
class RWStepShape_RWAdvancedFace {
	public:
		%feature("autodoc", "1");
		RWStepShape_RWAdvancedFace();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_AdvancedFace &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_AdvancedFace &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_AdvancedFace &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepShape_RWAdvancedFace {
	~RWStepShape_RWAdvancedFace() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepShape_RWAdvancedFace\n");}
	}
};


%nodefaultctor RWStepShape_RWSeamEdge;
class RWStepShape_RWSeamEdge {
	public:
		%feature("autodoc", "1");
		RWStepShape_RWSeamEdge();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_SeamEdge &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_SeamEdge &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_SeamEdge &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepShape_RWSeamEdge {
	~RWStepShape_RWSeamEdge() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepShape_RWSeamEdge\n");}
	}
};


%nodefaultctor RWStepShape_RWPrecisionQualifier;
class RWStepShape_RWPrecisionQualifier {
	public:
		%feature("autodoc", "1");
		RWStepShape_RWPrecisionQualifier();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_PrecisionQualifier &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_PrecisionQualifier &ent) const;

};
%extend RWStepShape_RWPrecisionQualifier {
	~RWStepShape_RWPrecisionQualifier() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepShape_RWPrecisionQualifier\n");}
	}
};


%nodefaultctor RWStepShape_RWBrepWithVoids;
class RWStepShape_RWBrepWithVoids {
	public:
		%feature("autodoc", "1");
		RWStepShape_RWBrepWithVoids();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_BrepWithVoids &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_BrepWithVoids &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_BrepWithVoids &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		void Check(const Handle_StepShape_BrepWithVoids &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;

};
%extend RWStepShape_RWBrepWithVoids {
	~RWStepShape_RWBrepWithVoids() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepShape_RWBrepWithVoids\n");}
	}
};


%nodefaultctor RWStepShape_RWShapeRepresentationWithParameters;
class RWStepShape_RWShapeRepresentationWithParameters {
	public:
		%feature("autodoc", "1");
		RWStepShape_RWShapeRepresentationWithParameters();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_ShapeRepresentationWithParameters &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_ShapeRepresentationWithParameters &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_ShapeRepresentationWithParameters &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepShape_RWShapeRepresentationWithParameters {
	~RWStepShape_RWShapeRepresentationWithParameters() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepShape_RWShapeRepresentationWithParameters\n");}
	}
};


%nodefaultctor RWStepShape_RWRightCircularCylinder;
class RWStepShape_RWRightCircularCylinder {
	public:
		%feature("autodoc", "1");
		RWStepShape_RWRightCircularCylinder();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_RightCircularCylinder &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_RightCircularCylinder &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_RightCircularCylinder &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepShape_RWRightCircularCylinder {
	~RWStepShape_RWRightCircularCylinder() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepShape_RWRightCircularCylinder\n");}
	}
};


%nodefaultctor RWStepShape_RWPointRepresentation;
class RWStepShape_RWPointRepresentation {
	public:
		%feature("autodoc", "1");
		RWStepShape_RWPointRepresentation();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_PointRepresentation &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_PointRepresentation &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_PointRepresentation &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepShape_RWPointRepresentation {
	~RWStepShape_RWPointRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepShape_RWPointRepresentation\n");}
	}
};
