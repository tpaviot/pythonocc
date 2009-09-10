/*

Copyright 2008-2009 Thomas Paviot (tpaviot@gmail.com)

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
%module RWStepFEA

%include RWStepFEA_renames.i
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include RWStepFEA_dependencies.i


%include RWStepFEA_headers.i




%nodefaultctor RWStepFEA_RWFeaParametricPoint;
class RWStepFEA_RWFeaParametricPoint {
	public:
		%feature("autodoc", "1");
		RWStepFEA_RWFeaParametricPoint();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_FeaParametricPoint &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_FeaParametricPoint &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_FeaParametricPoint &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepFEA_RWFeaParametricPoint {
	~RWStepFEA_RWFeaParametricPoint() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepFEA_RWFeaParametricPoint\n");}
	}
};


%nodefaultctor RWStepFEA_RWParametricSurface3dElementCoordinateSystem;
class RWStepFEA_RWParametricSurface3dElementCoordinateSystem {
	public:
		%feature("autodoc", "1");
		RWStepFEA_RWParametricSurface3dElementCoordinateSystem();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_ParametricSurface3dElementCoordinateSystem &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_ParametricSurface3dElementCoordinateSystem &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_ParametricSurface3dElementCoordinateSystem &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepFEA_RWParametricSurface3dElementCoordinateSystem {
	~RWStepFEA_RWParametricSurface3dElementCoordinateSystem() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepFEA_RWParametricSurface3dElementCoordinateSystem\n");}
	}
};


%nodefaultctor RWStepFEA_RWCurve3dElementRepresentation;
class RWStepFEA_RWCurve3dElementRepresentation {
	public:
		%feature("autodoc", "1");
		RWStepFEA_RWCurve3dElementRepresentation();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_Curve3dElementRepresentation &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_Curve3dElementRepresentation &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_Curve3dElementRepresentation &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepFEA_RWCurve3dElementRepresentation {
	~RWStepFEA_RWCurve3dElementRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepFEA_RWCurve3dElementRepresentation\n");}
	}
};


%nodefaultctor RWStepFEA_RWFeaGroup;
class RWStepFEA_RWFeaGroup {
	public:
		%feature("autodoc", "1");
		RWStepFEA_RWFeaGroup();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_FeaGroup &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_FeaGroup &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_FeaGroup &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepFEA_RWFeaGroup {
	~RWStepFEA_RWFeaGroup() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepFEA_RWFeaGroup\n");}
	}
};


%nodefaultctor RWStepFEA_RWCurve3dElementProperty;
class RWStepFEA_RWCurve3dElementProperty {
	public:
		%feature("autodoc", "1");
		RWStepFEA_RWCurve3dElementProperty();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_Curve3dElementProperty &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_Curve3dElementProperty &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_Curve3dElementProperty &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepFEA_RWCurve3dElementProperty {
	~RWStepFEA_RWCurve3dElementProperty() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepFEA_RWCurve3dElementProperty\n");}
	}
};


%nodefaultctor RWStepFEA_RWFeaAreaDensity;
class RWStepFEA_RWFeaAreaDensity {
	public:
		%feature("autodoc", "1");
		RWStepFEA_RWFeaAreaDensity();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_FeaAreaDensity &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_FeaAreaDensity &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_FeaAreaDensity &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepFEA_RWFeaAreaDensity {
	~RWStepFEA_RWFeaAreaDensity() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepFEA_RWFeaAreaDensity\n");}
	}
};


%nodefaultctor RWStepFEA_RWCurveElementInterval;
class RWStepFEA_RWCurveElementInterval {
	public:
		%feature("autodoc", "1");
		RWStepFEA_RWCurveElementInterval();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_CurveElementInterval &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_CurveElementInterval &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_CurveElementInterval &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepFEA_RWCurveElementInterval {
	~RWStepFEA_RWCurveElementInterval() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepFEA_RWCurveElementInterval\n");}
	}
};


%nodefaultctor RWStepFEA_RWArbitraryVolume3dElementCoordinateSystem;
class RWStepFEA_RWArbitraryVolume3dElementCoordinateSystem {
	public:
		%feature("autodoc", "1");
		RWStepFEA_RWArbitraryVolume3dElementCoordinateSystem();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_ArbitraryVolume3dElementCoordinateSystem &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_ArbitraryVolume3dElementCoordinateSystem &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_ArbitraryVolume3dElementCoordinateSystem &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepFEA_RWArbitraryVolume3dElementCoordinateSystem {
	~RWStepFEA_RWArbitraryVolume3dElementCoordinateSystem() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepFEA_RWArbitraryVolume3dElementCoordinateSystem\n");}
	}
};


%nodefaultctor RWStepFEA_RWFeaShellMembraneBendingCouplingStiffness;
class RWStepFEA_RWFeaShellMembraneBendingCouplingStiffness {
	public:
		%feature("autodoc", "1");
		RWStepFEA_RWFeaShellMembraneBendingCouplingStiffness();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_FeaShellMembraneBendingCouplingStiffness &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_FeaShellMembraneBendingCouplingStiffness &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_FeaShellMembraneBendingCouplingStiffness &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepFEA_RWFeaShellMembraneBendingCouplingStiffness {
	~RWStepFEA_RWFeaShellMembraneBendingCouplingStiffness() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepFEA_RWFeaShellMembraneBendingCouplingStiffness\n");}
	}
};


%nodefaultctor RWStepFEA_RWElementRepresentation;
class RWStepFEA_RWElementRepresentation {
	public:
		%feature("autodoc", "1");
		RWStepFEA_RWElementRepresentation();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_ElementRepresentation &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_ElementRepresentation &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_ElementRepresentation &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepFEA_RWElementRepresentation {
	~RWStepFEA_RWElementRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepFEA_RWElementRepresentation\n");}
	}
};


%nodefaultctor RWStepFEA_RWVolume3dElementRepresentation;
class RWStepFEA_RWVolume3dElementRepresentation {
	public:
		%feature("autodoc", "1");
		RWStepFEA_RWVolume3dElementRepresentation();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_Volume3dElementRepresentation &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_Volume3dElementRepresentation &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_Volume3dElementRepresentation &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepFEA_RWVolume3dElementRepresentation {
	~RWStepFEA_RWVolume3dElementRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepFEA_RWVolume3dElementRepresentation\n");}
	}
};


%nodefaultctor RWStepFEA_RWAlignedCurve3dElementCoordinateSystem;
class RWStepFEA_RWAlignedCurve3dElementCoordinateSystem {
	public:
		%feature("autodoc", "1");
		RWStepFEA_RWAlignedCurve3dElementCoordinateSystem();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_AlignedCurve3dElementCoordinateSystem &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_AlignedCurve3dElementCoordinateSystem &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_AlignedCurve3dElementCoordinateSystem &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepFEA_RWAlignedCurve3dElementCoordinateSystem {
	~RWStepFEA_RWAlignedCurve3dElementCoordinateSystem() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepFEA_RWAlignedCurve3dElementCoordinateSystem\n");}
	}
};


%nodefaultctor RWStepFEA_RWFeaMoistureAbsorption;
class RWStepFEA_RWFeaMoistureAbsorption {
	public:
		%feature("autodoc", "1");
		RWStepFEA_RWFeaMoistureAbsorption();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_FeaMoistureAbsorption &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_FeaMoistureAbsorption &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_FeaMoistureAbsorption &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepFEA_RWFeaMoistureAbsorption {
	~RWStepFEA_RWFeaMoistureAbsorption() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepFEA_RWFeaMoistureAbsorption\n");}
	}
};


%nodefaultctor RWStepFEA_RWCurveElementIntervalConstant;
class RWStepFEA_RWCurveElementIntervalConstant {
	public:
		%feature("autodoc", "1");
		RWStepFEA_RWCurveElementIntervalConstant();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_CurveElementIntervalConstant &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_CurveElementIntervalConstant &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_CurveElementIntervalConstant &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepFEA_RWCurveElementIntervalConstant {
	~RWStepFEA_RWCurveElementIntervalConstant() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepFEA_RWCurveElementIntervalConstant\n");}
	}
};


%nodefaultctor RWStepFEA_RWFeaMaterialPropertyRepresentation;
class RWStepFEA_RWFeaMaterialPropertyRepresentation {
	public:
		%feature("autodoc", "1");
		RWStepFEA_RWFeaMaterialPropertyRepresentation();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_FeaMaterialPropertyRepresentation &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_FeaMaterialPropertyRepresentation &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_FeaMaterialPropertyRepresentation &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepFEA_RWFeaMaterialPropertyRepresentation {
	~RWStepFEA_RWFeaMaterialPropertyRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepFEA_RWFeaMaterialPropertyRepresentation\n");}
	}
};


%nodefaultctor RWStepFEA_RWParametricCurve3dElementCoordinateSystem;
class RWStepFEA_RWParametricCurve3dElementCoordinateSystem {
	public:
		%feature("autodoc", "1");
		RWStepFEA_RWParametricCurve3dElementCoordinateSystem();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_ParametricCurve3dElementCoordinateSystem &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_ParametricCurve3dElementCoordinateSystem &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_ParametricCurve3dElementCoordinateSystem &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepFEA_RWParametricCurve3dElementCoordinateSystem {
	~RWStepFEA_RWParametricCurve3dElementCoordinateSystem() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepFEA_RWParametricCurve3dElementCoordinateSystem\n");}
	}
};


%nodefaultctor RWStepFEA_RWFeaShellBendingStiffness;
class RWStepFEA_RWFeaShellBendingStiffness {
	public:
		%feature("autodoc", "1");
		RWStepFEA_RWFeaShellBendingStiffness();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_FeaShellBendingStiffness &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_FeaShellBendingStiffness &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_FeaShellBendingStiffness &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepFEA_RWFeaShellBendingStiffness {
	~RWStepFEA_RWFeaShellBendingStiffness() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepFEA_RWFeaShellBendingStiffness\n");}
	}
};


%nodefaultctor RWStepFEA_RWNodeRepresentation;
class RWStepFEA_RWNodeRepresentation {
	public:
		%feature("autodoc", "1");
		RWStepFEA_RWNodeRepresentation();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_NodeRepresentation &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_NodeRepresentation &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_NodeRepresentation &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepFEA_RWNodeRepresentation {
	~RWStepFEA_RWNodeRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepFEA_RWNodeRepresentation\n");}
	}
};


%nodefaultctor RWStepFEA_RWParametricCurve3dElementCoordinateDirection;
class RWStepFEA_RWParametricCurve3dElementCoordinateDirection {
	public:
		%feature("autodoc", "1");
		RWStepFEA_RWParametricCurve3dElementCoordinateDirection();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_ParametricCurve3dElementCoordinateDirection &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_ParametricCurve3dElementCoordinateDirection &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_ParametricCurve3dElementCoordinateDirection &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepFEA_RWParametricCurve3dElementCoordinateDirection {
	~RWStepFEA_RWParametricCurve3dElementCoordinateDirection() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepFEA_RWParametricCurve3dElementCoordinateDirection\n");}
	}
};


%nodefaultctor RWStepFEA_RWAlignedSurface3dElementCoordinateSystem;
class RWStepFEA_RWAlignedSurface3dElementCoordinateSystem {
	public:
		%feature("autodoc", "1");
		RWStepFEA_RWAlignedSurface3dElementCoordinateSystem();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_AlignedSurface3dElementCoordinateSystem &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_AlignedSurface3dElementCoordinateSystem &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_AlignedSurface3dElementCoordinateSystem &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepFEA_RWAlignedSurface3dElementCoordinateSystem {
	~RWStepFEA_RWAlignedSurface3dElementCoordinateSystem() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepFEA_RWAlignedSurface3dElementCoordinateSystem\n");}
	}
};


%nodefaultctor RWStepFEA_RWFeaSecantCoefficientOfLinearThermalExpansion;
class RWStepFEA_RWFeaSecantCoefficientOfLinearThermalExpansion {
	public:
		%feature("autodoc", "1");
		RWStepFEA_RWFeaSecantCoefficientOfLinearThermalExpansion();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_FeaSecantCoefficientOfLinearThermalExpansion &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_FeaSecantCoefficientOfLinearThermalExpansion &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_FeaSecantCoefficientOfLinearThermalExpansion &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepFEA_RWFeaSecantCoefficientOfLinearThermalExpansion {
	~RWStepFEA_RWFeaSecantCoefficientOfLinearThermalExpansion() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepFEA_RWFeaSecantCoefficientOfLinearThermalExpansion\n");}
	}
};


%nodefaultctor RWStepFEA_RWFeaAxis2Placement3d;
class RWStepFEA_RWFeaAxis2Placement3d {
	public:
		%feature("autodoc", "1");
		RWStepFEA_RWFeaAxis2Placement3d();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_FeaAxis2Placement3d &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_FeaAxis2Placement3d &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_FeaAxis2Placement3d &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepFEA_RWFeaAxis2Placement3d {
	~RWStepFEA_RWFeaAxis2Placement3d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepFEA_RWFeaAxis2Placement3d\n");}
	}
};


%nodefaultctor RWStepFEA_RWConstantSurface3dElementCoordinateSystem;
class RWStepFEA_RWConstantSurface3dElementCoordinateSystem {
	public:
		%feature("autodoc", "1");
		RWStepFEA_RWConstantSurface3dElementCoordinateSystem();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_ConstantSurface3dElementCoordinateSystem &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_ConstantSurface3dElementCoordinateSystem &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_ConstantSurface3dElementCoordinateSystem &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepFEA_RWConstantSurface3dElementCoordinateSystem {
	~RWStepFEA_RWConstantSurface3dElementCoordinateSystem() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepFEA_RWConstantSurface3dElementCoordinateSystem\n");}
	}
};


%nodefaultctor RWStepFEA_RWFeaTangentialCoefficientOfLinearThermalExpansion;
class RWStepFEA_RWFeaTangentialCoefficientOfLinearThermalExpansion {
	public:
		%feature("autodoc", "1");
		RWStepFEA_RWFeaTangentialCoefficientOfLinearThermalExpansion();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_FeaTangentialCoefficientOfLinearThermalExpansion &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_FeaTangentialCoefficientOfLinearThermalExpansion &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_FeaTangentialCoefficientOfLinearThermalExpansion &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepFEA_RWFeaTangentialCoefficientOfLinearThermalExpansion {
	~RWStepFEA_RWFeaTangentialCoefficientOfLinearThermalExpansion() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepFEA_RWFeaTangentialCoefficientOfLinearThermalExpansion\n");}
	}
};


%nodefaultctor RWStepFEA_RWFeaShellMembraneStiffness;
class RWStepFEA_RWFeaShellMembraneStiffness {
	public:
		%feature("autodoc", "1");
		RWStepFEA_RWFeaShellMembraneStiffness();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_FeaShellMembraneStiffness &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_FeaShellMembraneStiffness &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_FeaShellMembraneStiffness &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepFEA_RWFeaShellMembraneStiffness {
	~RWStepFEA_RWFeaShellMembraneStiffness() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepFEA_RWFeaShellMembraneStiffness\n");}
	}
};


%nodefaultctor RWStepFEA_RWFeaShellShearStiffness;
class RWStepFEA_RWFeaShellShearStiffness {
	public:
		%feature("autodoc", "1");
		RWStepFEA_RWFeaShellShearStiffness();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_FeaShellShearStiffness &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_FeaShellShearStiffness &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_FeaShellShearStiffness &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepFEA_RWFeaShellShearStiffness {
	~RWStepFEA_RWFeaShellShearStiffness() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepFEA_RWFeaShellShearStiffness\n");}
	}
};


%nodefaultctor RWStepFEA_RWNodeSet;
class RWStepFEA_RWNodeSet {
	public:
		%feature("autodoc", "1");
		RWStepFEA_RWNodeSet();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_NodeSet &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_NodeSet &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_NodeSet &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepFEA_RWNodeSet {
	~RWStepFEA_RWNodeSet() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepFEA_RWNodeSet\n");}
	}
};


%nodefaultctor RWStepFEA_RWFreedomAndCoefficient;
class RWStepFEA_RWFreedomAndCoefficient {
	public:
		%feature("autodoc", "1");
		RWStepFEA_RWFreedomAndCoefficient();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_FreedomAndCoefficient &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_FreedomAndCoefficient &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_FreedomAndCoefficient &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepFEA_RWFreedomAndCoefficient {
	~RWStepFEA_RWFreedomAndCoefficient() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepFEA_RWFreedomAndCoefficient\n");}
	}
};


%nodefaultctor RWStepFEA_RWFeaLinearElasticity;
class RWStepFEA_RWFeaLinearElasticity {
	public:
		%feature("autodoc", "1");
		RWStepFEA_RWFeaLinearElasticity();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_FeaLinearElasticity &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_FeaLinearElasticity &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_FeaLinearElasticity &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepFEA_RWFeaLinearElasticity {
	~RWStepFEA_RWFeaLinearElasticity() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepFEA_RWFeaLinearElasticity\n");}
	}
};


%nodefaultctor RWStepFEA_RWSurface3dElementRepresentation;
class RWStepFEA_RWSurface3dElementRepresentation {
	public:
		%feature("autodoc", "1");
		RWStepFEA_RWSurface3dElementRepresentation();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_Surface3dElementRepresentation &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_Surface3dElementRepresentation &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_Surface3dElementRepresentation &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepFEA_RWSurface3dElementRepresentation {
	~RWStepFEA_RWSurface3dElementRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepFEA_RWSurface3dElementRepresentation\n");}
	}
};


%nodefaultctor RWStepFEA_RWElementGroup;
class RWStepFEA_RWElementGroup {
	public:
		%feature("autodoc", "1");
		RWStepFEA_RWElementGroup();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_ElementGroup &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_ElementGroup &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_ElementGroup &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepFEA_RWElementGroup {
	~RWStepFEA_RWElementGroup() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepFEA_RWElementGroup\n");}
	}
};


%nodefaultctor RWStepFEA_RWNodeWithVector;
class RWStepFEA_RWNodeWithVector {
	public:
		%feature("autodoc", "1");
		RWStepFEA_RWNodeWithVector();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_NodeWithVector &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_NodeWithVector &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_NodeWithVector &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepFEA_RWNodeWithVector {
	~RWStepFEA_RWNodeWithVector() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepFEA_RWNodeWithVector\n");}
	}
};


%nodefaultctor RWStepFEA_RWCurveElementEndOffset;
class RWStepFEA_RWCurveElementEndOffset {
	public:
		%feature("autodoc", "1");
		RWStepFEA_RWCurveElementEndOffset();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_CurveElementEndOffset &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_CurveElementEndOffset &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_CurveElementEndOffset &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepFEA_RWCurveElementEndOffset {
	~RWStepFEA_RWCurveElementEndOffset() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepFEA_RWCurveElementEndOffset\n");}
	}
};


%nodefaultctor RWStepFEA_RWFeaRepresentationItem;
class RWStepFEA_RWFeaRepresentationItem {
	public:
		%feature("autodoc", "1");
		RWStepFEA_RWFeaRepresentationItem();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_FeaRepresentationItem &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_FeaRepresentationItem &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_FeaRepresentationItem &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepFEA_RWFeaRepresentationItem {
	~RWStepFEA_RWFeaRepresentationItem() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepFEA_RWFeaRepresentationItem\n");}
	}
};


%nodefaultctor RWStepFEA_RWNodeDefinition;
class RWStepFEA_RWNodeDefinition {
	public:
		%feature("autodoc", "1");
		RWStepFEA_RWNodeDefinition();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_NodeDefinition &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_NodeDefinition &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_NodeDefinition &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepFEA_RWNodeDefinition {
	~RWStepFEA_RWNodeDefinition() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepFEA_RWNodeDefinition\n");}
	}
};


%nodefaultctor RWStepFEA_RWFeaModel3d;
class RWStepFEA_RWFeaModel3d {
	public:
		%feature("autodoc", "1");
		RWStepFEA_RWFeaModel3d();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_FeaModel3d &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_FeaModel3d &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_FeaModel3d &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepFEA_RWFeaModel3d {
	~RWStepFEA_RWFeaModel3d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepFEA_RWFeaModel3d\n");}
	}
};


%nodefaultctor RWStepFEA_RWGeometricNode;
class RWStepFEA_RWGeometricNode {
	public:
		%feature("autodoc", "1");
		RWStepFEA_RWGeometricNode();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_GeometricNode &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_GeometricNode &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_GeometricNode &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepFEA_RWGeometricNode {
	~RWStepFEA_RWGeometricNode() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepFEA_RWGeometricNode\n");}
	}
};


%nodefaultctor RWStepFEA_RWFeaMassDensity;
class RWStepFEA_RWFeaMassDensity {
	public:
		%feature("autodoc", "1");
		RWStepFEA_RWFeaMassDensity();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_FeaMassDensity &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_FeaMassDensity &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_FeaMassDensity &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepFEA_RWFeaMassDensity {
	~RWStepFEA_RWFeaMassDensity() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepFEA_RWFeaMassDensity\n");}
	}
};


%nodefaultctor RWStepFEA_RWElementGeometricRelationship;
class RWStepFEA_RWElementGeometricRelationship {
	public:
		%feature("autodoc", "1");
		RWStepFEA_RWElementGeometricRelationship();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_ElementGeometricRelationship &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_ElementGeometricRelationship &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_ElementGeometricRelationship &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepFEA_RWElementGeometricRelationship {
	~RWStepFEA_RWElementGeometricRelationship() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepFEA_RWElementGeometricRelationship\n");}
	}
};


%nodefaultctor RWStepFEA_RWFeaMaterialPropertyRepresentationItem;
class RWStepFEA_RWFeaMaterialPropertyRepresentationItem {
	public:
		%feature("autodoc", "1");
		RWStepFEA_RWFeaMaterialPropertyRepresentationItem();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_FeaMaterialPropertyRepresentationItem &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_FeaMaterialPropertyRepresentationItem &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_FeaMaterialPropertyRepresentationItem &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepFEA_RWFeaMaterialPropertyRepresentationItem {
	~RWStepFEA_RWFeaMaterialPropertyRepresentationItem() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepFEA_RWFeaMaterialPropertyRepresentationItem\n");}
	}
};


%nodefaultctor RWStepFEA_RWFeaModelDefinition;
class RWStepFEA_RWFeaModelDefinition {
	public:
		%feature("autodoc", "1");
		RWStepFEA_RWFeaModelDefinition();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_FeaModelDefinition &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_FeaModelDefinition &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_FeaModelDefinition &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepFEA_RWFeaModelDefinition {
	~RWStepFEA_RWFeaModelDefinition() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepFEA_RWFeaModelDefinition\n");}
	}
};


%nodefaultctor RWStepFEA_RWCurveElementEndRelease;
class RWStepFEA_RWCurveElementEndRelease {
	public:
		%feature("autodoc", "1");
		RWStepFEA_RWCurveElementEndRelease();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_CurveElementEndRelease &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_CurveElementEndRelease &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_CurveElementEndRelease &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepFEA_RWCurveElementEndRelease {
	~RWStepFEA_RWCurveElementEndRelease() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepFEA_RWCurveElementEndRelease\n");}
	}
};


%nodefaultctor RWStepFEA_RWCurveElementIntervalLinearlyVarying;
class RWStepFEA_RWCurveElementIntervalLinearlyVarying {
	public:
		%feature("autodoc", "1");
		RWStepFEA_RWCurveElementIntervalLinearlyVarying();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_CurveElementIntervalLinearlyVarying &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_CurveElementIntervalLinearlyVarying &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_CurveElementIntervalLinearlyVarying &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepFEA_RWCurveElementIntervalLinearlyVarying {
	~RWStepFEA_RWCurveElementIntervalLinearlyVarying() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepFEA_RWCurveElementIntervalLinearlyVarying\n");}
	}
};


%nodefaultctor RWStepFEA_RWNodeWithSolutionCoordinateSystem;
class RWStepFEA_RWNodeWithSolutionCoordinateSystem {
	public:
		%feature("autodoc", "1");
		RWStepFEA_RWNodeWithSolutionCoordinateSystem();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_NodeWithSolutionCoordinateSystem &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_NodeWithSolutionCoordinateSystem &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_NodeWithSolutionCoordinateSystem &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepFEA_RWNodeWithSolutionCoordinateSystem {
	~RWStepFEA_RWNodeWithSolutionCoordinateSystem() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepFEA_RWNodeWithSolutionCoordinateSystem\n");}
	}
};


%nodefaultctor RWStepFEA_RWFreedomsList;
class RWStepFEA_RWFreedomsList {
	public:
		%feature("autodoc", "1");
		RWStepFEA_RWFreedomsList();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_FreedomsList &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_FreedomsList &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_FreedomsList &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepFEA_RWFreedomsList {
	~RWStepFEA_RWFreedomsList() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepFEA_RWFreedomsList\n");}
	}
};


%nodefaultctor RWStepFEA_RWNodeGroup;
class RWStepFEA_RWNodeGroup {
	public:
		%feature("autodoc", "1");
		RWStepFEA_RWNodeGroup();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_NodeGroup &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_NodeGroup &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_NodeGroup &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepFEA_RWNodeGroup {
	~RWStepFEA_RWNodeGroup() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepFEA_RWNodeGroup\n");}
	}
};


%nodefaultctor RWStepFEA_RWFeaCurveSectionGeometricRelationship;
class RWStepFEA_RWFeaCurveSectionGeometricRelationship {
	public:
		%feature("autodoc", "1");
		RWStepFEA_RWFeaCurveSectionGeometricRelationship();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_FeaCurveSectionGeometricRelationship &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_FeaCurveSectionGeometricRelationship &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_FeaCurveSectionGeometricRelationship &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepFEA_RWFeaCurveSectionGeometricRelationship {
	~RWStepFEA_RWFeaCurveSectionGeometricRelationship() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepFEA_RWFeaCurveSectionGeometricRelationship\n");}
	}
};


%nodefaultctor RWStepFEA_RWFeaSurfaceSectionGeometricRelationship;
class RWStepFEA_RWFeaSurfaceSectionGeometricRelationship {
	public:
		%feature("autodoc", "1");
		RWStepFEA_RWFeaSurfaceSectionGeometricRelationship();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_FeaSurfaceSectionGeometricRelationship &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_FeaSurfaceSectionGeometricRelationship &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_FeaSurfaceSectionGeometricRelationship &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepFEA_RWFeaSurfaceSectionGeometricRelationship {
	~RWStepFEA_RWFeaSurfaceSectionGeometricRelationship() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepFEA_RWFeaSurfaceSectionGeometricRelationship\n");}
	}
};


%nodefaultctor RWStepFEA_RWDummyNode;
class RWStepFEA_RWDummyNode {
	public:
		%feature("autodoc", "1");
		RWStepFEA_RWDummyNode();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_DummyNode &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_DummyNode &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_DummyNode &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepFEA_RWDummyNode {
	~RWStepFEA_RWDummyNode() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepFEA_RWDummyNode\n");}
	}
};


%nodefaultctor RWStepFEA_RWFeaModel;
class RWStepFEA_RWFeaModel {
	public:
		%feature("autodoc", "1");
		RWStepFEA_RWFeaModel();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_FeaModel &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_FeaModel &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_FeaModel &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepFEA_RWFeaModel {
	~RWStepFEA_RWFeaModel() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepFEA_RWFeaModel\n");}
	}
};


%nodefaultctor RWStepFEA_RWNode;
class RWStepFEA_RWNode {
	public:
		%feature("autodoc", "1");
		RWStepFEA_RWNode();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_Node &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_Node &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_Node &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepFEA_RWNode {
	~RWStepFEA_RWNode() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepFEA_RWNode\n");}
	}
};


%nodefaultctor RWStepFEA_RWCurveElementLocation;
class RWStepFEA_RWCurveElementLocation {
	public:
		%feature("autodoc", "1");
		RWStepFEA_RWCurveElementLocation();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepFEA_CurveElementLocation &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepFEA_CurveElementLocation &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepFEA_CurveElementLocation &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepFEA_RWCurveElementLocation {
	~RWStepFEA_RWCurveElementLocation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepFEA_RWCurveElementLocation\n");}
	}
};
