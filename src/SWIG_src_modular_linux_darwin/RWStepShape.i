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


%include RWStepShape_dependencies.i


%include RWStepShape_headers.i




%nodefaultctor RWStepShape_RWFacetedBrep;
class RWStepShape_RWFacetedBrep {
	public:
		%feature("autodoc", "1");
		~RWStepShape_RWFacetedBrep();
		%feature("autodoc", "1");
		RWStepShape_RWFacetedBrep();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_FacetedBrep &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_FacetedBrep &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_FacetedBrep &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepShape_RWVertexPoint;
class RWStepShape_RWVertexPoint {
	public:
		%feature("autodoc", "1");
		~RWStepShape_RWVertexPoint();
		%feature("autodoc", "1");
		RWStepShape_RWVertexPoint();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_VertexPoint &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_VertexPoint &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_VertexPoint &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepShape_RWPath;
class RWStepShape_RWPath {
	public:
		%feature("autodoc", "1");
		~RWStepShape_RWPath();
		%feature("autodoc", "1");
		RWStepShape_RWPath();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_Path &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_Path &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_Path &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepShape_RWSubface;
class RWStepShape_RWSubface {
	public:
		%feature("autodoc", "1");
		~RWStepShape_RWSubface();
		%feature("autodoc", "1");
		RWStepShape_RWSubface();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_Subface &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_Subface &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_Subface &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepShape_RWDimensionalSizeWithPath;
class RWStepShape_RWDimensionalSizeWithPath {
	public:
		%feature("autodoc", "1");
		~RWStepShape_RWDimensionalSizeWithPath();
		%feature("autodoc", "1");
		RWStepShape_RWDimensionalSizeWithPath();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_DimensionalSizeWithPath &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_DimensionalSizeWithPath &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_DimensionalSizeWithPath &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepShape_RWConnectedFaceSet;
class RWStepShape_RWConnectedFaceSet {
	public:
		%feature("autodoc", "1");
		~RWStepShape_RWConnectedFaceSet();
		%feature("autodoc", "1");
		RWStepShape_RWConnectedFaceSet();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_ConnectedFaceSet &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_ConnectedFaceSet &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_ConnectedFaceSet &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepShape_RWBoxedHalfSpace;
class RWStepShape_RWBoxedHalfSpace {
	public:
		%feature("autodoc", "1");
		~RWStepShape_RWBoxedHalfSpace();
		%feature("autodoc", "1");
		RWStepShape_RWBoxedHalfSpace();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_BoxedHalfSpace &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_BoxedHalfSpace &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_BoxedHalfSpace &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepShape_RWBooleanResult;
class RWStepShape_RWBooleanResult {
	public:
		%feature("autodoc", "1");
		~RWStepShape_RWBooleanResult();
		%feature("autodoc", "1");
		RWStepShape_RWBooleanResult();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_BooleanResult &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_BooleanResult &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_BooleanResult &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepShape_RWFaceSurface;
class RWStepShape_RWFaceSurface {
	public:
		%feature("autodoc", "1");
		~RWStepShape_RWFaceSurface();
		%feature("autodoc", "1");
		RWStepShape_RWFaceSurface();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_FaceSurface &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_FaceSurface &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_FaceSurface &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepShape_RWDimensionalCharacteristicRepresentation;
class RWStepShape_RWDimensionalCharacteristicRepresentation {
	public:
		%feature("autodoc", "1");
		~RWStepShape_RWDimensionalCharacteristicRepresentation();
		%feature("autodoc", "1");
		RWStepShape_RWDimensionalCharacteristicRepresentation();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_DimensionalCharacteristicRepresentation &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_DimensionalCharacteristicRepresentation &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_DimensionalCharacteristicRepresentation &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepShape_RWPolyLoop;
class RWStepShape_RWPolyLoop {
	public:
		%feature("autodoc", "1");
		~RWStepShape_RWPolyLoop();
		%feature("autodoc", "1");
		RWStepShape_RWPolyLoop();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_PolyLoop &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_PolyLoop &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_PolyLoop &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepShape_RWOrientedClosedShell;
class RWStepShape_RWOrientedClosedShell {
	public:
		%feature("autodoc", "1");
		~RWStepShape_RWOrientedClosedShell();
		%feature("autodoc", "1");
		RWStepShape_RWOrientedClosedShell();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_OrientedClosedShell &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_OrientedClosedShell &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_OrientedClosedShell &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepShape_RWManifoldSolidBrep;
class RWStepShape_RWManifoldSolidBrep {
	public:
		%feature("autodoc", "1");
		~RWStepShape_RWManifoldSolidBrep();
		%feature("autodoc", "1");
		RWStepShape_RWManifoldSolidBrep();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_ManifoldSolidBrep &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_ManifoldSolidBrep &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_ManifoldSolidBrep &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepShape_RWGeometricallyBoundedWireframeShapeRepresentation;
class RWStepShape_RWGeometricallyBoundedWireframeShapeRepresentation {
	public:
		%feature("autodoc", "1");
		~RWStepShape_RWGeometricallyBoundedWireframeShapeRepresentation();
		%feature("autodoc", "1");
		RWStepShape_RWGeometricallyBoundedWireframeShapeRepresentation();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_GeometricallyBoundedWireframeShapeRepresentation &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_GeometricallyBoundedWireframeShapeRepresentation &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_GeometricallyBoundedWireframeShapeRepresentation &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepShape_RWEdgeBasedWireframeShapeRepresentation;
class RWStepShape_RWEdgeBasedWireframeShapeRepresentation {
	public:
		%feature("autodoc", "1");
		~RWStepShape_RWEdgeBasedWireframeShapeRepresentation();
		%feature("autodoc", "1");
		RWStepShape_RWEdgeBasedWireframeShapeRepresentation();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_EdgeBasedWireframeShapeRepresentation &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_EdgeBasedWireframeShapeRepresentation &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_EdgeBasedWireframeShapeRepresentation &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepShape_RWPrecisionQualifier;
class RWStepShape_RWPrecisionQualifier {
	public:
		%feature("autodoc", "1");
		~RWStepShape_RWPrecisionQualifier();
		%feature("autodoc", "1");
		RWStepShape_RWPrecisionQualifier();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_PrecisionQualifier &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_PrecisionQualifier &ent) const;

};

%nodefaultctor RWStepShape_RWFaceOuterBound;
class RWStepShape_RWFaceOuterBound {
	public:
		%feature("autodoc", "1");
		~RWStepShape_RWFaceOuterBound();
		%feature("autodoc", "1");
		RWStepShape_RWFaceOuterBound();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_FaceOuterBound &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_FaceOuterBound &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_FaceOuterBound &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepShape_RWAdvancedBrepShapeRepresentation;
class RWStepShape_RWAdvancedBrepShapeRepresentation {
	public:
		%feature("autodoc", "1");
		~RWStepShape_RWAdvancedBrepShapeRepresentation();
		%feature("autodoc", "1");
		RWStepShape_RWAdvancedBrepShapeRepresentation();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_AdvancedBrepShapeRepresentation &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_AdvancedBrepShapeRepresentation &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_AdvancedBrepShapeRepresentation &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepShape_RWManifoldSurfaceShapeRepresentation;
class RWStepShape_RWManifoldSurfaceShapeRepresentation {
	public:
		%feature("autodoc", "1");
		~RWStepShape_RWManifoldSurfaceShapeRepresentation();
		%feature("autodoc", "1");
		RWStepShape_RWManifoldSurfaceShapeRepresentation();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_ManifoldSurfaceShapeRepresentation &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_ManifoldSurfaceShapeRepresentation &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_ManifoldSurfaceShapeRepresentation &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepShape_RWGeometricSet;
class RWStepShape_RWGeometricSet {
	public:
		%feature("autodoc", "1");
		~RWStepShape_RWGeometricSet();
		%feature("autodoc", "1");
		RWStepShape_RWGeometricSet();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_GeometricSet &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_GeometricSet &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_GeometricSet &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepShape_RWEdgeBasedWireframeModel;
class RWStepShape_RWEdgeBasedWireframeModel {
	public:
		%feature("autodoc", "1");
		~RWStepShape_RWEdgeBasedWireframeModel();
		%feature("autodoc", "1");
		RWStepShape_RWEdgeBasedWireframeModel();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_EdgeBasedWireframeModel &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_EdgeBasedWireframeModel &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_EdgeBasedWireframeModel &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepShape_RWSolidReplica;
class RWStepShape_RWSolidReplica {
	public:
		%feature("autodoc", "1");
		~RWStepShape_RWSolidReplica();
		%feature("autodoc", "1");
		RWStepShape_RWSolidReplica();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_SolidReplica &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_SolidReplica &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_SolidReplica &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepShape_RWExtrudedAreaSolid;
class RWStepShape_RWExtrudedAreaSolid {
	public:
		%feature("autodoc", "1");
		~RWStepShape_RWExtrudedAreaSolid();
		%feature("autodoc", "1");
		RWStepShape_RWExtrudedAreaSolid();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_ExtrudedAreaSolid &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_ExtrudedAreaSolid &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_ExtrudedAreaSolid &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepShape_RWCompoundShapeRepresentation;
class RWStepShape_RWCompoundShapeRepresentation {
	public:
		%feature("autodoc", "1");
		~RWStepShape_RWCompoundShapeRepresentation();
		%feature("autodoc", "1");
		RWStepShape_RWCompoundShapeRepresentation();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_CompoundShapeRepresentation &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_CompoundShapeRepresentation &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_CompoundShapeRepresentation &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepShape_RWConnectedFaceShapeRepresentation;
class RWStepShape_RWConnectedFaceShapeRepresentation {
	public:
		%feature("autodoc", "1");
		~RWStepShape_RWConnectedFaceShapeRepresentation();
		%feature("autodoc", "1");
		RWStepShape_RWConnectedFaceShapeRepresentation();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_ConnectedFaceShapeRepresentation &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_ConnectedFaceShapeRepresentation &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_ConnectedFaceShapeRepresentation &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepShape_RWSubedge;
class RWStepShape_RWSubedge {
	public:
		%feature("autodoc", "1");
		~RWStepShape_RWSubedge();
		%feature("autodoc", "1");
		RWStepShape_RWSubedge();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_Subedge &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_Subedge &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_Subedge &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepShape_RWShapeRepresentation;
class RWStepShape_RWShapeRepresentation {
	public:
		%feature("autodoc", "1");
		~RWStepShape_RWShapeRepresentation();
		%feature("autodoc", "1");
		RWStepShape_RWShapeRepresentation();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_ShapeRepresentation &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_ShapeRepresentation &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_ShapeRepresentation &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepShape_RWMeasureQualification;
class RWStepShape_RWMeasureQualification {
	public:
		%feature("autodoc", "1");
		~RWStepShape_RWMeasureQualification();
		%feature("autodoc", "1");
		RWStepShape_RWMeasureQualification();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_MeasureQualification &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_MeasureQualification &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_MeasureQualification &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepShape_RWBlock;
class RWStepShape_RWBlock {
	public:
		%feature("autodoc", "1");
		~RWStepShape_RWBlock();
		%feature("autodoc", "1");
		RWStepShape_RWBlock();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_Block &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_Block &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_Block &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepShape_RWFacetedBrepShapeRepresentation;
class RWStepShape_RWFacetedBrepShapeRepresentation {
	public:
		%feature("autodoc", "1");
		~RWStepShape_RWFacetedBrepShapeRepresentation();
		%feature("autodoc", "1");
		RWStepShape_RWFacetedBrepShapeRepresentation();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_FacetedBrepShapeRepresentation &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_FacetedBrepShapeRepresentation &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_FacetedBrepShapeRepresentation &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepShape_RWShellBasedSurfaceModel;
class RWStepShape_RWShellBasedSurfaceModel {
	public:
		%feature("autodoc", "1");
		~RWStepShape_RWShellBasedSurfaceModel();
		%feature("autodoc", "1");
		RWStepShape_RWShellBasedSurfaceModel();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_ShellBasedSurfaceModel &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_ShellBasedSurfaceModel &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_ShellBasedSurfaceModel &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepShape_RWShapeDimensionRepresentation;
class RWStepShape_RWShapeDimensionRepresentation {
	public:
		%feature("autodoc", "1");
		~RWStepShape_RWShapeDimensionRepresentation();
		%feature("autodoc", "1");
		RWStepShape_RWShapeDimensionRepresentation();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_ShapeDimensionRepresentation &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_ShapeDimensionRepresentation &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_ShapeDimensionRepresentation &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepShape_RWToleranceValue;
class RWStepShape_RWToleranceValue {
	public:
		%feature("autodoc", "1");
		~RWStepShape_RWToleranceValue();
		%feature("autodoc", "1");
		RWStepShape_RWToleranceValue();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_ToleranceValue &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_ToleranceValue &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_ToleranceValue &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepShape_RWOrientedFace;
class RWStepShape_RWOrientedFace {
	public:
		%feature("autodoc", "1");
		~RWStepShape_RWOrientedFace();
		%feature("autodoc", "1");
		RWStepShape_RWOrientedFace();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_OrientedFace &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_OrientedFace &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_OrientedFace &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepShape_RWEdge;
class RWStepShape_RWEdge {
	public:
		%feature("autodoc", "1");
		~RWStepShape_RWEdge();
		%feature("autodoc", "1");
		RWStepShape_RWEdge();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_Edge &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_Edge &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_Edge &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepShape_RWFace;
class RWStepShape_RWFace {
	public:
		%feature("autodoc", "1");
		~RWStepShape_RWFace();
		%feature("autodoc", "1");
		RWStepShape_RWFace();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_Face &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_Face &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_Face &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepShape_RWCsgSolid;
class RWStepShape_RWCsgSolid {
	public:
		%feature("autodoc", "1");
		~RWStepShape_RWCsgSolid();
		%feature("autodoc", "1");
		RWStepShape_RWCsgSolid();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_CsgSolid &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_CsgSolid &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_CsgSolid &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepShape_RWFacetedBrepAndBrepWithVoids;
class RWStepShape_RWFacetedBrepAndBrepWithVoids {
	public:
		%feature("autodoc", "1");
		~RWStepShape_RWFacetedBrepAndBrepWithVoids();
		%feature("autodoc", "1");
		RWStepShape_RWFacetedBrepAndBrepWithVoids();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_FacetedBrepAndBrepWithVoids &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_FacetedBrepAndBrepWithVoids &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_FacetedBrepAndBrepWithVoids &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepShape_RWClosedShell;
class RWStepShape_RWClosedShell {
	public:
		%feature("autodoc", "1");
		~RWStepShape_RWClosedShell();
		%feature("autodoc", "1");
		RWStepShape_RWClosedShell();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_ClosedShell &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_ClosedShell &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_ClosedShell &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepShape_RWPlusMinusTolerance;
class RWStepShape_RWPlusMinusTolerance {
	public:
		%feature("autodoc", "1");
		~RWStepShape_RWPlusMinusTolerance();
		%feature("autodoc", "1");
		RWStepShape_RWPlusMinusTolerance();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_PlusMinusTolerance &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_PlusMinusTolerance &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_PlusMinusTolerance &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepShape_RWVertexLoop;
class RWStepShape_RWVertexLoop {
	public:
		%feature("autodoc", "1");
		~RWStepShape_RWVertexLoop();
		%feature("autodoc", "1");
		RWStepShape_RWVertexLoop();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_VertexLoop &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_VertexLoop &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_VertexLoop &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepShape_RWSweptAreaSolid;
class RWStepShape_RWSweptAreaSolid {
	public:
		%feature("autodoc", "1");
		~RWStepShape_RWSweptAreaSolid();
		%feature("autodoc", "1");
		RWStepShape_RWSweptAreaSolid();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_SweptAreaSolid &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_SweptAreaSolid &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_SweptAreaSolid &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepShape_RWOrientedOpenShell;
class RWStepShape_RWOrientedOpenShell {
	public:
		%feature("autodoc", "1");
		~RWStepShape_RWOrientedOpenShell();
		%feature("autodoc", "1");
		RWStepShape_RWOrientedOpenShell();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_OrientedOpenShell &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_OrientedOpenShell &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_OrientedOpenShell &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepShape_RWMeasureRepresentationItemAndQualifiedRepresentationItem;
class RWStepShape_RWMeasureRepresentationItemAndQualifiedRepresentationItem {
	public:
		%feature("autodoc", "1");
		~RWStepShape_RWMeasureRepresentationItemAndQualifiedRepresentationItem();
		%feature("autodoc", "1");
		RWStepShape_RWMeasureRepresentationItemAndQualifiedRepresentationItem();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepShape_RWFaceBasedSurfaceModel;
class RWStepShape_RWFaceBasedSurfaceModel {
	public:
		%feature("autodoc", "1");
		~RWStepShape_RWFaceBasedSurfaceModel();
		%feature("autodoc", "1");
		RWStepShape_RWFaceBasedSurfaceModel();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_FaceBasedSurfaceModel &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_FaceBasedSurfaceModel &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_FaceBasedSurfaceModel &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepShape_RWQualifiedRepresentationItem;
class RWStepShape_RWQualifiedRepresentationItem {
	public:
		%feature("autodoc", "1");
		~RWStepShape_RWQualifiedRepresentationItem();
		%feature("autodoc", "1");
		RWStepShape_RWQualifiedRepresentationItem();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_QualifiedRepresentationItem &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_QualifiedRepresentationItem &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_QualifiedRepresentationItem &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepShape_RWOrientedEdge;
class RWStepShape_RWOrientedEdge {
	public:
		%feature("autodoc", "1");
		~RWStepShape_RWOrientedEdge();
		%feature("autodoc", "1");
		RWStepShape_RWOrientedEdge();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_OrientedEdge &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_OrientedEdge &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_OrientedEdge &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepShape_RWConnectedEdgeSet;
class RWStepShape_RWConnectedEdgeSet {
	public:
		%feature("autodoc", "1");
		~RWStepShape_RWConnectedEdgeSet();
		%feature("autodoc", "1");
		RWStepShape_RWConnectedEdgeSet();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_ConnectedEdgeSet &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_ConnectedEdgeSet &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_ConnectedEdgeSet &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepShape_RWOpenShell;
class RWStepShape_RWOpenShell {
	public:
		%feature("autodoc", "1");
		~RWStepShape_RWOpenShell();
		%feature("autodoc", "1");
		RWStepShape_RWOpenShell();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_OpenShell &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_OpenShell &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_OpenShell &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepShape_RWAngularSize;
class RWStepShape_RWAngularSize {
	public:
		%feature("autodoc", "1");
		~RWStepShape_RWAngularSize();
		%feature("autodoc", "1");
		RWStepShape_RWAngularSize();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_AngularSize &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_AngularSize &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_AngularSize &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepShape_RWVertex;
class RWStepShape_RWVertex {
	public:
		%feature("autodoc", "1");
		~RWStepShape_RWVertex();
		%feature("autodoc", "1");
		RWStepShape_RWVertex();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_Vertex &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_Vertex &ent) const;

};

%nodefaultctor RWStepShape_RWSphere;
class RWStepShape_RWSphere {
	public:
		%feature("autodoc", "1");
		~RWStepShape_RWSphere();
		%feature("autodoc", "1");
		RWStepShape_RWSphere();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_Sphere &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_Sphere &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_Sphere &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepShape_RWExtrudedFaceSolid;
class RWStepShape_RWExtrudedFaceSolid {
	public:
		%feature("autodoc", "1");
		~RWStepShape_RWExtrudedFaceSolid();
		%feature("autodoc", "1");
		RWStepShape_RWExtrudedFaceSolid();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_ExtrudedFaceSolid &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_ExtrudedFaceSolid &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_ExtrudedFaceSolid &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepShape_RWCsgShapeRepresentation;
class RWStepShape_RWCsgShapeRepresentation {
	public:
		%feature("autodoc", "1");
		~RWStepShape_RWCsgShapeRepresentation();
		%feature("autodoc", "1");
		RWStepShape_RWCsgShapeRepresentation();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_CsgShapeRepresentation &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_CsgShapeRepresentation &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_CsgShapeRepresentation &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepShape_RWOrientedPath;
class RWStepShape_RWOrientedPath {
	public:
		%feature("autodoc", "1");
		~RWStepShape_RWOrientedPath();
		%feature("autodoc", "1");
		RWStepShape_RWOrientedPath();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_OrientedPath &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_OrientedPath &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_OrientedPath &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepShape_RWLoopAndPath;
class RWStepShape_RWLoopAndPath {
	public:
		%feature("autodoc", "1");
		~RWStepShape_RWLoopAndPath();
		%feature("autodoc", "1");
		RWStepShape_RWLoopAndPath();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_LoopAndPath &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_LoopAndPath &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_LoopAndPath &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepShape_RWRevolvedFaceSolid;
class RWStepShape_RWRevolvedFaceSolid {
	public:
		%feature("autodoc", "1");
		~RWStepShape_RWRevolvedFaceSolid();
		%feature("autodoc", "1");
		RWStepShape_RWRevolvedFaceSolid();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_RevolvedFaceSolid &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_RevolvedFaceSolid &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_RevolvedFaceSolid &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepShape_RWShapeDefinitionRepresentation;
class RWStepShape_RWShapeDefinitionRepresentation {
	public:
		%feature("autodoc", "1");
		~RWStepShape_RWShapeDefinitionRepresentation();
		%feature("autodoc", "1");
		RWStepShape_RWShapeDefinitionRepresentation();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_ShapeDefinitionRepresentation &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_ShapeDefinitionRepresentation &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_ShapeDefinitionRepresentation &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepShape_RWDimensionalLocation;
class RWStepShape_RWDimensionalLocation {
	public:
		%feature("autodoc", "1");
		~RWStepShape_RWDimensionalLocation();
		%feature("autodoc", "1");
		RWStepShape_RWDimensionalLocation();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_DimensionalLocation &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_DimensionalLocation &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_DimensionalLocation &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepShape_RWHalfSpaceSolid;
class RWStepShape_RWHalfSpaceSolid {
	public:
		%feature("autodoc", "1");
		~RWStepShape_RWHalfSpaceSolid();
		%feature("autodoc", "1");
		RWStepShape_RWHalfSpaceSolid();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_HalfSpaceSolid &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_HalfSpaceSolid &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_HalfSpaceSolid &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepShape_RWTopologicalRepresentationItem;
class RWStepShape_RWTopologicalRepresentationItem {
	public:
		%feature("autodoc", "1");
		~RWStepShape_RWTopologicalRepresentationItem();
		%feature("autodoc", "1");
		RWStepShape_RWTopologicalRepresentationItem();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_TopologicalRepresentationItem &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_TopologicalRepresentationItem &ent) const;

};

%nodefaultctor RWStepShape_RWNonManifoldSurfaceShapeRepresentation;
class RWStepShape_RWNonManifoldSurfaceShapeRepresentation {
	public:
		%feature("autodoc", "1");
		~RWStepShape_RWNonManifoldSurfaceShapeRepresentation();
		%feature("autodoc", "1");
		RWStepShape_RWNonManifoldSurfaceShapeRepresentation();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_NonManifoldSurfaceShapeRepresentation &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_NonManifoldSurfaceShapeRepresentation &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_NonManifoldSurfaceShapeRepresentation &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepShape_RWConnectedFaceSubSet;
class RWStepShape_RWConnectedFaceSubSet {
	public:
		%feature("autodoc", "1");
		~RWStepShape_RWConnectedFaceSubSet();
		%feature("autodoc", "1");
		RWStepShape_RWConnectedFaceSubSet();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_ConnectedFaceSubSet &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_ConnectedFaceSubSet &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_ConnectedFaceSubSet &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepShape_RWSolidModel;
class RWStepShape_RWSolidModel {
	public:
		%feature("autodoc", "1");
		~RWStepShape_RWSolidModel();
		%feature("autodoc", "1");
		RWStepShape_RWSolidModel();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_SolidModel &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_SolidModel &ent) const;

};

%nodefaultctor RWStepShape_RWGeometricallyBoundedSurfaceShapeRepresentation;
class RWStepShape_RWGeometricallyBoundedSurfaceShapeRepresentation {
	public:
		%feature("autodoc", "1");
		~RWStepShape_RWGeometricallyBoundedSurfaceShapeRepresentation();
		%feature("autodoc", "1");
		RWStepShape_RWGeometricallyBoundedSurfaceShapeRepresentation();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_GeometricallyBoundedSurfaceShapeRepresentation &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_GeometricallyBoundedSurfaceShapeRepresentation &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_GeometricallyBoundedSurfaceShapeRepresentation &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepShape_RWEdgeLoop;
class RWStepShape_RWEdgeLoop {
	public:
		%feature("autodoc", "1");
		~RWStepShape_RWEdgeLoop();
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

%nodefaultctor RWStepShape_RWTypeQualifier;
class RWStepShape_RWTypeQualifier {
	public:
		%feature("autodoc", "1");
		~RWStepShape_RWTypeQualifier();
		%feature("autodoc", "1");
		RWStepShape_RWTypeQualifier();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_TypeQualifier &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_TypeQualifier &ent) const;

};

%nodefaultctor RWStepShape_RWRightAngularWedge;
class RWStepShape_RWRightAngularWedge {
	public:
		%feature("autodoc", "1");
		~RWStepShape_RWRightAngularWedge();
		%feature("autodoc", "1");
		RWStepShape_RWRightAngularWedge();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_RightAngularWedge &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_RightAngularWedge &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_RightAngularWedge &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepShape_RWTorus;
class RWStepShape_RWTorus {
	public:
		%feature("autodoc", "1");
		~RWStepShape_RWTorus();
		%feature("autodoc", "1");
		RWStepShape_RWTorus();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_Torus &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_Torus &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_Torus &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepShape_RWLoop;
class RWStepShape_RWLoop {
	public:
		%feature("autodoc", "1");
		~RWStepShape_RWLoop();
		%feature("autodoc", "1");
		RWStepShape_RWLoop();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_Loop &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_Loop &ent) const;

};

%nodefaultctor RWStepShape_RWSweptFaceSolid;
class RWStepShape_RWSweptFaceSolid {
	public:
		%feature("autodoc", "1");
		~RWStepShape_RWSweptFaceSolid();
		%feature("autodoc", "1");
		RWStepShape_RWSweptFaceSolid();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_SweptFaceSolid &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_SweptFaceSolid &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_SweptFaceSolid &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepShape_RWLimitsAndFits;
class RWStepShape_RWLimitsAndFits {
	public:
		%feature("autodoc", "1");
		~RWStepShape_RWLimitsAndFits();
		%feature("autodoc", "1");
		RWStepShape_RWLimitsAndFits();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_LimitsAndFits &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_LimitsAndFits &ent) const;

};

%nodefaultctor RWStepShape_RWAngularLocation;
class RWStepShape_RWAngularLocation {
	public:
		%feature("autodoc", "1");
		~RWStepShape_RWAngularLocation();
		%feature("autodoc", "1");
		RWStepShape_RWAngularLocation();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_AngularLocation &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_AngularLocation &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_AngularLocation &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepShape_RWGeometricCurveSet;
class RWStepShape_RWGeometricCurveSet {
	public:
		%feature("autodoc", "1");
		~RWStepShape_RWGeometricCurveSet();
		%feature("autodoc", "1");
		RWStepShape_RWGeometricCurveSet();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_GeometricCurveSet &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_GeometricCurveSet &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_GeometricCurveSet &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepShape_RWDimensionalLocationWithPath;
class RWStepShape_RWDimensionalLocationWithPath {
	public:
		%feature("autodoc", "1");
		~RWStepShape_RWDimensionalLocationWithPath();
		%feature("autodoc", "1");
		RWStepShape_RWDimensionalLocationWithPath();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_DimensionalLocationWithPath &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_DimensionalLocationWithPath &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_DimensionalLocationWithPath &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepShape_RWEdgeCurve;
class RWStepShape_RWEdgeCurve {
	public:
		%feature("autodoc", "1");
		~RWStepShape_RWEdgeCurve();
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

%nodefaultctor RWStepShape_RWTransitionalShapeRepresentation;
class RWStepShape_RWTransitionalShapeRepresentation {
	public:
		%feature("autodoc", "1");
		~RWStepShape_RWTransitionalShapeRepresentation();
		%feature("autodoc", "1");
		RWStepShape_RWTransitionalShapeRepresentation();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_TransitionalShapeRepresentation &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_TransitionalShapeRepresentation &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_TransitionalShapeRepresentation &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepShape_RWBoxDomain;
class RWStepShape_RWBoxDomain {
	public:
		%feature("autodoc", "1");
		~RWStepShape_RWBoxDomain();
		%feature("autodoc", "1");
		RWStepShape_RWBoxDomain();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_BoxDomain &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_BoxDomain &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_BoxDomain &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepShape_RWRightCircularCone;
class RWStepShape_RWRightCircularCone {
	public:
		%feature("autodoc", "1");
		~RWStepShape_RWRightCircularCone();
		%feature("autodoc", "1");
		RWStepShape_RWRightCircularCone();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_RightCircularCone &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_RightCircularCone &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_RightCircularCone &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepShape_RWRevolvedAreaSolid;
class RWStepShape_RWRevolvedAreaSolid {
	public:
		%feature("autodoc", "1");
		~RWStepShape_RWRevolvedAreaSolid();
		%feature("autodoc", "1");
		RWStepShape_RWRevolvedAreaSolid();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_RevolvedAreaSolid &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_RevolvedAreaSolid &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_RevolvedAreaSolid &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepShape_RWDimensionalSize;
class RWStepShape_RWDimensionalSize {
	public:
		%feature("autodoc", "1");
		~RWStepShape_RWDimensionalSize();
		%feature("autodoc", "1");
		RWStepShape_RWDimensionalSize();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_DimensionalSize &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_DimensionalSize &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_DimensionalSize &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepShape_RWFaceBound;
class RWStepShape_RWFaceBound {
	public:
		%feature("autodoc", "1");
		~RWStepShape_RWFaceBound();
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

%nodefaultctor RWStepShape_RWContextDependentShapeRepresentation;
class RWStepShape_RWContextDependentShapeRepresentation {
	public:
		%feature("autodoc", "1");
		~RWStepShape_RWContextDependentShapeRepresentation();
		%feature("autodoc", "1");
		RWStepShape_RWContextDependentShapeRepresentation();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_ContextDependentShapeRepresentation &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_ContextDependentShapeRepresentation &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_ContextDependentShapeRepresentation &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepShape_RWDefinitionalRepresentationAndShapeRepresentation;
class RWStepShape_RWDefinitionalRepresentationAndShapeRepresentation {
	public:
		%feature("autodoc", "1");
		~RWStepShape_RWDefinitionalRepresentationAndShapeRepresentation();
		%feature("autodoc", "1");
		RWStepShape_RWDefinitionalRepresentationAndShapeRepresentation();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_DefinitionalRepresentationAndShapeRepresentation &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_DefinitionalRepresentationAndShapeRepresentation &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_DefinitionalRepresentationAndShapeRepresentation &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepShape_RWAdvancedFace;
class RWStepShape_RWAdvancedFace {
	public:
		%feature("autodoc", "1");
		~RWStepShape_RWAdvancedFace();
		%feature("autodoc", "1");
		RWStepShape_RWAdvancedFace();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_AdvancedFace &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_AdvancedFace &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_AdvancedFace &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepShape_RWSeamEdge;
class RWStepShape_RWSeamEdge {
	public:
		%feature("autodoc", "1");
		~RWStepShape_RWSeamEdge();
		%feature("autodoc", "1");
		RWStepShape_RWSeamEdge();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_SeamEdge &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_SeamEdge &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_SeamEdge &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepShape_RWBrepWithVoids;
class RWStepShape_RWBrepWithVoids {
	public:
		%feature("autodoc", "1");
		~RWStepShape_RWBrepWithVoids();
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

%nodefaultctor RWStepShape_RWShapeRepresentationWithParameters;
class RWStepShape_RWShapeRepresentationWithParameters {
	public:
		%feature("autodoc", "1");
		~RWStepShape_RWShapeRepresentationWithParameters();
		%feature("autodoc", "1");
		RWStepShape_RWShapeRepresentationWithParameters();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_ShapeRepresentationWithParameters &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_ShapeRepresentationWithParameters &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_ShapeRepresentationWithParameters &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepShape_RWRightCircularCylinder;
class RWStepShape_RWRightCircularCylinder {
	public:
		%feature("autodoc", "1");
		~RWStepShape_RWRightCircularCylinder();
		%feature("autodoc", "1");
		RWStepShape_RWRightCircularCylinder();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_RightCircularCylinder &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_RightCircularCylinder &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_RightCircularCylinder &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepShape_RWPointRepresentation;
class RWStepShape_RWPointRepresentation {
	public:
		%feature("autodoc", "1");
		~RWStepShape_RWPointRepresentation();
		%feature("autodoc", "1");
		RWStepShape_RWPointRepresentation();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepShape_PointRepresentation &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepShape_PointRepresentation &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepShape_PointRepresentation &ent, Interface_EntityIterator & iter) const;

};