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
%module RWStepFEA

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


%include RWStepFEA_dependencies.i


%include RWStepFEA_headers.i




%nodefaultctor RWStepFEA_RWFeaParametricPoint;
class RWStepFEA_RWFeaParametricPoint {
	public:
		%feature("autodoc", "1");
		~RWStepFEA_RWFeaParametricPoint();
		%feature("autodoc", "1");
		RWStepFEA_RWFeaParametricPoint();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_FeaParametricPoint &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_FeaParametricPoint &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_FeaParametricPoint &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepFEA_RWCurve3dElementRepresentation;
class RWStepFEA_RWCurve3dElementRepresentation {
	public:
		%feature("autodoc", "1");
		~RWStepFEA_RWCurve3dElementRepresentation();
		%feature("autodoc", "1");
		RWStepFEA_RWCurve3dElementRepresentation();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_Curve3dElementRepresentation &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_Curve3dElementRepresentation &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_Curve3dElementRepresentation &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepFEA_RWCurve3dElementProperty;
class RWStepFEA_RWCurve3dElementProperty {
	public:
		%feature("autodoc", "1");
		~RWStepFEA_RWCurve3dElementProperty();
		%feature("autodoc", "1");
		RWStepFEA_RWCurve3dElementProperty();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_Curve3dElementProperty &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_Curve3dElementProperty &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_Curve3dElementProperty &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepFEA_RWFeaAreaDensity;
class RWStepFEA_RWFeaAreaDensity {
	public:
		%feature("autodoc", "1");
		~RWStepFEA_RWFeaAreaDensity();
		%feature("autodoc", "1");
		RWStepFEA_RWFeaAreaDensity();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_FeaAreaDensity &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_FeaAreaDensity &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_FeaAreaDensity &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepFEA_RWCurveElementInterval;
class RWStepFEA_RWCurveElementInterval {
	public:
		%feature("autodoc", "1");
		~RWStepFEA_RWCurveElementInterval();
		%feature("autodoc", "1");
		RWStepFEA_RWCurveElementInterval();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_CurveElementInterval &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_CurveElementInterval &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_CurveElementInterval &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepFEA_RWNodeRepresentation;
class RWStepFEA_RWNodeRepresentation {
	public:
		%feature("autodoc", "1");
		~RWStepFEA_RWNodeRepresentation();
		%feature("autodoc", "1");
		RWStepFEA_RWNodeRepresentation();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_NodeRepresentation &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_NodeRepresentation &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_NodeRepresentation &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepFEA_RWArbitraryVolume3dElementCoordinateSystem;
class RWStepFEA_RWArbitraryVolume3dElementCoordinateSystem {
	public:
		%feature("autodoc", "1");
		~RWStepFEA_RWArbitraryVolume3dElementCoordinateSystem();
		%feature("autodoc", "1");
		RWStepFEA_RWArbitraryVolume3dElementCoordinateSystem();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_ArbitraryVolume3dElementCoordinateSystem &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_ArbitraryVolume3dElementCoordinateSystem &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_ArbitraryVolume3dElementCoordinateSystem &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepFEA_RWElementRepresentation;
class RWStepFEA_RWElementRepresentation {
	public:
		%feature("autodoc", "1");
		~RWStepFEA_RWElementRepresentation();
		%feature("autodoc", "1");
		RWStepFEA_RWElementRepresentation();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_ElementRepresentation &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_ElementRepresentation &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_ElementRepresentation &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepFEA_RWFeaMoistureAbsorption;
class RWStepFEA_RWFeaMoistureAbsorption {
	public:
		%feature("autodoc", "1");
		~RWStepFEA_RWFeaMoistureAbsorption();
		%feature("autodoc", "1");
		RWStepFEA_RWFeaMoistureAbsorption();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_FeaMoistureAbsorption &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_FeaMoistureAbsorption &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_FeaMoistureAbsorption &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepFEA_RWCurveElementIntervalConstant;
class RWStepFEA_RWCurveElementIntervalConstant {
	public:
		%feature("autodoc", "1");
		~RWStepFEA_RWCurveElementIntervalConstant();
		%feature("autodoc", "1");
		RWStepFEA_RWCurveElementIntervalConstant();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_CurveElementIntervalConstant &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_CurveElementIntervalConstant &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_CurveElementIntervalConstant &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepFEA_RWNode;
class RWStepFEA_RWNode {
	public:
		%feature("autodoc", "1");
		~RWStepFEA_RWNode();
		%feature("autodoc", "1");
		RWStepFEA_RWNode();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_Node &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_Node &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_Node &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepFEA_RWFeaMassDensity;
class RWStepFEA_RWFeaMassDensity {
	public:
		%feature("autodoc", "1");
		~RWStepFEA_RWFeaMassDensity();
		%feature("autodoc", "1");
		RWStepFEA_RWFeaMassDensity();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_FeaMassDensity &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_FeaMassDensity &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_FeaMassDensity &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepFEA_RWFeaMaterialPropertyRepresentation;
class RWStepFEA_RWFeaMaterialPropertyRepresentation {
	public:
		%feature("autodoc", "1");
		~RWStepFEA_RWFeaMaterialPropertyRepresentation();
		%feature("autodoc", "1");
		RWStepFEA_RWFeaMaterialPropertyRepresentation();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_FeaMaterialPropertyRepresentation &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_FeaMaterialPropertyRepresentation &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_FeaMaterialPropertyRepresentation &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepFEA_RWParametricCurve3dElementCoordinateSystem;
class RWStepFEA_RWParametricCurve3dElementCoordinateSystem {
	public:
		%feature("autodoc", "1");
		~RWStepFEA_RWParametricCurve3dElementCoordinateSystem();
		%feature("autodoc", "1");
		RWStepFEA_RWParametricCurve3dElementCoordinateSystem();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_ParametricCurve3dElementCoordinateSystem &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_ParametricCurve3dElementCoordinateSystem &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_ParametricCurve3dElementCoordinateSystem &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepFEA_RWFeaShellBendingStiffness;
class RWStepFEA_RWFeaShellBendingStiffness {
	public:
		%feature("autodoc", "1");
		~RWStepFEA_RWFeaShellBendingStiffness();
		%feature("autodoc", "1");
		RWStepFEA_RWFeaShellBendingStiffness();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_FeaShellBendingStiffness &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_FeaShellBendingStiffness &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_FeaShellBendingStiffness &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepFEA_RWNodeGroup;
class RWStepFEA_RWNodeGroup {
	public:
		%feature("autodoc", "1");
		~RWStepFEA_RWNodeGroup();
		%feature("autodoc", "1");
		RWStepFEA_RWNodeGroup();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_NodeGroup &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_NodeGroup &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_NodeGroup &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepFEA_RWParametricSurface3dElementCoordinateSystem;
class RWStepFEA_RWParametricSurface3dElementCoordinateSystem {
	public:
		%feature("autodoc", "1");
		~RWStepFEA_RWParametricSurface3dElementCoordinateSystem();
		%feature("autodoc", "1");
		RWStepFEA_RWParametricSurface3dElementCoordinateSystem();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_ParametricSurface3dElementCoordinateSystem &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_ParametricSurface3dElementCoordinateSystem &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_ParametricSurface3dElementCoordinateSystem &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepFEA_RWAlignedCurve3dElementCoordinateSystem;
class RWStepFEA_RWAlignedCurve3dElementCoordinateSystem {
	public:
		%feature("autodoc", "1");
		~RWStepFEA_RWAlignedCurve3dElementCoordinateSystem();
		%feature("autodoc", "1");
		RWStepFEA_RWAlignedCurve3dElementCoordinateSystem();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_AlignedCurve3dElementCoordinateSystem &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_AlignedCurve3dElementCoordinateSystem &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_AlignedCurve3dElementCoordinateSystem &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepFEA_RWFeaSurfaceSectionGeometricRelationship;
class RWStepFEA_RWFeaSurfaceSectionGeometricRelationship {
	public:
		%feature("autodoc", "1");
		~RWStepFEA_RWFeaSurfaceSectionGeometricRelationship();
		%feature("autodoc", "1");
		RWStepFEA_RWFeaSurfaceSectionGeometricRelationship();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_FeaSurfaceSectionGeometricRelationship &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_FeaSurfaceSectionGeometricRelationship &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_FeaSurfaceSectionGeometricRelationship &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepFEA_RWDummyNode;
class RWStepFEA_RWDummyNode {
	public:
		%feature("autodoc", "1");
		~RWStepFEA_RWDummyNode();
		%feature("autodoc", "1");
		RWStepFEA_RWDummyNode();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_DummyNode &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_DummyNode &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_DummyNode &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepFEA_RWAlignedSurface3dElementCoordinateSystem;
class RWStepFEA_RWAlignedSurface3dElementCoordinateSystem {
	public:
		%feature("autodoc", "1");
		~RWStepFEA_RWAlignedSurface3dElementCoordinateSystem();
		%feature("autodoc", "1");
		RWStepFEA_RWAlignedSurface3dElementCoordinateSystem();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_AlignedSurface3dElementCoordinateSystem &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_AlignedSurface3dElementCoordinateSystem &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_AlignedSurface3dElementCoordinateSystem &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepFEA_RWFeaSecantCoefficientOfLinearThermalExpansion;
class RWStepFEA_RWFeaSecantCoefficientOfLinearThermalExpansion {
	public:
		%feature("autodoc", "1");
		~RWStepFEA_RWFeaSecantCoefficientOfLinearThermalExpansion();
		%feature("autodoc", "1");
		RWStepFEA_RWFeaSecantCoefficientOfLinearThermalExpansion();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_FeaSecantCoefficientOfLinearThermalExpansion &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_FeaSecantCoefficientOfLinearThermalExpansion &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_FeaSecantCoefficientOfLinearThermalExpansion &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepFEA_RWFeaAxis2Placement3d;
class RWStepFEA_RWFeaAxis2Placement3d {
	public:
		%feature("autodoc", "1");
		~RWStepFEA_RWFeaAxis2Placement3d();
		%feature("autodoc", "1");
		RWStepFEA_RWFeaAxis2Placement3d();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_FeaAxis2Placement3d &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_FeaAxis2Placement3d &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_FeaAxis2Placement3d &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepFEA_RWFeaTangentialCoefficientOfLinearThermalExpansion;
class RWStepFEA_RWFeaTangentialCoefficientOfLinearThermalExpansion {
	public:
		%feature("autodoc", "1");
		~RWStepFEA_RWFeaTangentialCoefficientOfLinearThermalExpansion();
		%feature("autodoc", "1");
		RWStepFEA_RWFeaTangentialCoefficientOfLinearThermalExpansion();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_FeaTangentialCoefficientOfLinearThermalExpansion &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_FeaTangentialCoefficientOfLinearThermalExpansion &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_FeaTangentialCoefficientOfLinearThermalExpansion &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepFEA_RWGeometricNode;
class RWStepFEA_RWGeometricNode {
	public:
		%feature("autodoc", "1");
		~RWStepFEA_RWGeometricNode();
		%feature("autodoc", "1");
		RWStepFEA_RWGeometricNode();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_GeometricNode &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_GeometricNode &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_GeometricNode &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepFEA_RWFeaShellMembraneStiffness;
class RWStepFEA_RWFeaShellMembraneStiffness {
	public:
		%feature("autodoc", "1");
		~RWStepFEA_RWFeaShellMembraneStiffness();
		%feature("autodoc", "1");
		RWStepFEA_RWFeaShellMembraneStiffness();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_FeaShellMembraneStiffness &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_FeaShellMembraneStiffness &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_FeaShellMembraneStiffness &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepFEA_RWFreedomsList;
class RWStepFEA_RWFreedomsList {
	public:
		%feature("autodoc", "1");
		~RWStepFEA_RWFreedomsList();
		%feature("autodoc", "1");
		RWStepFEA_RWFreedomsList();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_FreedomsList &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_FreedomsList &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_FreedomsList &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepFEA_RWFeaModelDefinition;
class RWStepFEA_RWFeaModelDefinition {
	public:
		%feature("autodoc", "1");
		~RWStepFEA_RWFeaModelDefinition();
		%feature("autodoc", "1");
		RWStepFEA_RWFeaModelDefinition();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_FeaModelDefinition &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_FeaModelDefinition &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_FeaModelDefinition &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepFEA_RWFeaShellShearStiffness;
class RWStepFEA_RWFeaShellShearStiffness {
	public:
		%feature("autodoc", "1");
		~RWStepFEA_RWFeaShellShearStiffness();
		%feature("autodoc", "1");
		RWStepFEA_RWFeaShellShearStiffness();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_FeaShellShearStiffness &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_FeaShellShearStiffness &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_FeaShellShearStiffness &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepFEA_RWNodeSet;
class RWStepFEA_RWNodeSet {
	public:
		%feature("autodoc", "1");
		~RWStepFEA_RWNodeSet();
		%feature("autodoc", "1");
		RWStepFEA_RWNodeSet();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_NodeSet &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_NodeSet &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_NodeSet &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepFEA_RWFreedomAndCoefficient;
class RWStepFEA_RWFreedomAndCoefficient {
	public:
		%feature("autodoc", "1");
		~RWStepFEA_RWFreedomAndCoefficient();
		%feature("autodoc", "1");
		RWStepFEA_RWFreedomAndCoefficient();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_FreedomAndCoefficient &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_FreedomAndCoefficient &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_FreedomAndCoefficient &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepFEA_RWFeaShellMembraneBendingCouplingStiffness;
class RWStepFEA_RWFeaShellMembraneBendingCouplingStiffness {
	public:
		%feature("autodoc", "1");
		~RWStepFEA_RWFeaShellMembraneBendingCouplingStiffness();
		%feature("autodoc", "1");
		RWStepFEA_RWFeaShellMembraneBendingCouplingStiffness();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_FeaShellMembraneBendingCouplingStiffness &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_FeaShellMembraneBendingCouplingStiffness &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_FeaShellMembraneBendingCouplingStiffness &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepFEA_RWSurface3dElementRepresentation;
class RWStepFEA_RWSurface3dElementRepresentation {
	public:
		%feature("autodoc", "1");
		~RWStepFEA_RWSurface3dElementRepresentation();
		%feature("autodoc", "1");
		RWStepFEA_RWSurface3dElementRepresentation();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_Surface3dElementRepresentation &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_Surface3dElementRepresentation &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_Surface3dElementRepresentation &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepFEA_RWElementGroup;
class RWStepFEA_RWElementGroup {
	public:
		%feature("autodoc", "1");
		~RWStepFEA_RWElementGroup();
		%feature("autodoc", "1");
		RWStepFEA_RWElementGroup();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_ElementGroup &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_ElementGroup &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_ElementGroup &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepFEA_RWCurveElementEndOffset;
class RWStepFEA_RWCurveElementEndOffset {
	public:
		%feature("autodoc", "1");
		~RWStepFEA_RWCurveElementEndOffset();
		%feature("autodoc", "1");
		RWStepFEA_RWCurveElementEndOffset();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_CurveElementEndOffset &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_CurveElementEndOffset &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_CurveElementEndOffset &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepFEA_RWVolume3dElementRepresentation;
class RWStepFEA_RWVolume3dElementRepresentation {
	public:
		%feature("autodoc", "1");
		~RWStepFEA_RWVolume3dElementRepresentation();
		%feature("autodoc", "1");
		RWStepFEA_RWVolume3dElementRepresentation();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_Volume3dElementRepresentation &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_Volume3dElementRepresentation &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_Volume3dElementRepresentation &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepFEA_RWFeaRepresentationItem;
class RWStepFEA_RWFeaRepresentationItem {
	public:
		%feature("autodoc", "1");
		~RWStepFEA_RWFeaRepresentationItem();
		%feature("autodoc", "1");
		RWStepFEA_RWFeaRepresentationItem();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_FeaRepresentationItem &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_FeaRepresentationItem &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_FeaRepresentationItem &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepFEA_RWFeaModel;
class RWStepFEA_RWFeaModel {
	public:
		%feature("autodoc", "1");
		~RWStepFEA_RWFeaModel();
		%feature("autodoc", "1");
		RWStepFEA_RWFeaModel();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_FeaModel &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_FeaModel &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_FeaModel &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepFEA_RWNodeDefinition;
class RWStepFEA_RWNodeDefinition {
	public:
		%feature("autodoc", "1");
		~RWStepFEA_RWNodeDefinition();
		%feature("autodoc", "1");
		RWStepFEA_RWNodeDefinition();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_NodeDefinition &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_NodeDefinition &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_NodeDefinition &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepFEA_RWParametricCurve3dElementCoordinateDirection;
class RWStepFEA_RWParametricCurve3dElementCoordinateDirection {
	public:
		%feature("autodoc", "1");
		~RWStepFEA_RWParametricCurve3dElementCoordinateDirection();
		%feature("autodoc", "1");
		RWStepFEA_RWParametricCurve3dElementCoordinateDirection();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_ParametricCurve3dElementCoordinateDirection &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_ParametricCurve3dElementCoordinateDirection &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_ParametricCurve3dElementCoordinateDirection &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepFEA_RWFeaLinearElasticity;
class RWStepFEA_RWFeaLinearElasticity {
	public:
		%feature("autodoc", "1");
		~RWStepFEA_RWFeaLinearElasticity();
		%feature("autodoc", "1");
		RWStepFEA_RWFeaLinearElasticity();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_FeaLinearElasticity &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_FeaLinearElasticity &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_FeaLinearElasticity &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepFEA_RWCurveElementLocation;
class RWStepFEA_RWCurveElementLocation {
	public:
		%feature("autodoc", "1");
		~RWStepFEA_RWCurveElementLocation();
		%feature("autodoc", "1");
		RWStepFEA_RWCurveElementLocation();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_CurveElementLocation &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_CurveElementLocation &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_CurveElementLocation &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepFEA_RWElementGeometricRelationship;
class RWStepFEA_RWElementGeometricRelationship {
	public:
		%feature("autodoc", "1");
		~RWStepFEA_RWElementGeometricRelationship();
		%feature("autodoc", "1");
		RWStepFEA_RWElementGeometricRelationship();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_ElementGeometricRelationship &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_ElementGeometricRelationship &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_ElementGeometricRelationship &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepFEA_RWFeaMaterialPropertyRepresentationItem;
class RWStepFEA_RWFeaMaterialPropertyRepresentationItem {
	public:
		%feature("autodoc", "1");
		~RWStepFEA_RWFeaMaterialPropertyRepresentationItem();
		%feature("autodoc", "1");
		RWStepFEA_RWFeaMaterialPropertyRepresentationItem();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_FeaMaterialPropertyRepresentationItem &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_FeaMaterialPropertyRepresentationItem &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_FeaMaterialPropertyRepresentationItem &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepFEA_RWCurveElementEndRelease;
class RWStepFEA_RWCurveElementEndRelease {
	public:
		%feature("autodoc", "1");
		~RWStepFEA_RWCurveElementEndRelease();
		%feature("autodoc", "1");
		RWStepFEA_RWCurveElementEndRelease();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_CurveElementEndRelease &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_CurveElementEndRelease &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_CurveElementEndRelease &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepFEA_RWCurveElementIntervalLinearlyVarying;
class RWStepFEA_RWCurveElementIntervalLinearlyVarying {
	public:
		%feature("autodoc", "1");
		~RWStepFEA_RWCurveElementIntervalLinearlyVarying();
		%feature("autodoc", "1");
		RWStepFEA_RWCurveElementIntervalLinearlyVarying();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_CurveElementIntervalLinearlyVarying &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_CurveElementIntervalLinearlyVarying &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_CurveElementIntervalLinearlyVarying &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepFEA_RWNodeWithSolutionCoordinateSystem;
class RWStepFEA_RWNodeWithSolutionCoordinateSystem {
	public:
		%feature("autodoc", "1");
		~RWStepFEA_RWNodeWithSolutionCoordinateSystem();
		%feature("autodoc", "1");
		RWStepFEA_RWNodeWithSolutionCoordinateSystem();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_NodeWithSolutionCoordinateSystem &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_NodeWithSolutionCoordinateSystem &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_NodeWithSolutionCoordinateSystem &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepFEA_RWNodeWithVector;
class RWStepFEA_RWNodeWithVector {
	public:
		%feature("autodoc", "1");
		~RWStepFEA_RWNodeWithVector();
		%feature("autodoc", "1");
		RWStepFEA_RWNodeWithVector();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_NodeWithVector &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_NodeWithVector &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_NodeWithVector &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepFEA_RWFeaCurveSectionGeometricRelationship;
class RWStepFEA_RWFeaCurveSectionGeometricRelationship {
	public:
		%feature("autodoc", "1");
		~RWStepFEA_RWFeaCurveSectionGeometricRelationship();
		%feature("autodoc", "1");
		RWStepFEA_RWFeaCurveSectionGeometricRelationship();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_FeaCurveSectionGeometricRelationship &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_FeaCurveSectionGeometricRelationship &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_FeaCurveSectionGeometricRelationship &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepFEA_RWFeaGroup;
class RWStepFEA_RWFeaGroup {
	public:
		%feature("autodoc", "1");
		~RWStepFEA_RWFeaGroup();
		%feature("autodoc", "1");
		RWStepFEA_RWFeaGroup();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_FeaGroup &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_FeaGroup &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_FeaGroup &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepFEA_RWFeaModel3d;
class RWStepFEA_RWFeaModel3d {
	public:
		%feature("autodoc", "1");
		~RWStepFEA_RWFeaModel3d();
		%feature("autodoc", "1");
		RWStepFEA_RWFeaModel3d();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_FeaModel3d &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_FeaModel3d &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_FeaModel3d &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepFEA_RWConstantSurface3dElementCoordinateSystem;
class RWStepFEA_RWConstantSurface3dElementCoordinateSystem {
	public:
		%feature("autodoc", "1");
		~RWStepFEA_RWConstantSurface3dElementCoordinateSystem();
		%feature("autodoc", "1");
		RWStepFEA_RWConstantSurface3dElementCoordinateSystem();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_ConstantSurface3dElementCoordinateSystem &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_ConstantSurface3dElementCoordinateSystem &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_ConstantSurface3dElementCoordinateSystem &ent, Interface_EntityIterator & iter) const;

};