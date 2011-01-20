/*

Copyright 2008-2011 Thomas Paviot (tpaviot@gmail.com)

This file is part of pythonOCC.

pythonOCC is free software: you can redistribute it and/or modify
it under the terms of the GNU Lesser General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

pythonOCC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public License
along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.

$Revision$
$Date$
$Author$
$HeaderURL$

*/


%{
#ifdef WNT
#pragma warning(disable : 4716)
#endif
%}

%module RWStepFEA
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include RWStepFEA_renames.i


%include RWStepFEA_required_python_modules.i


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
%feature("shadow") RWStepFEA_RWFeaParametricPoint::~RWStepFEA_RWFeaParametricPoint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepFEA_RWFeaParametricPoint {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") RWStepFEA_RWCurve3dElementRepresentation::~RWStepFEA_RWCurve3dElementRepresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepFEA_RWCurve3dElementRepresentation {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") RWStepFEA_RWCurve3dElementProperty::~RWStepFEA_RWCurve3dElementProperty %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepFEA_RWCurve3dElementProperty {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") RWStepFEA_RWFeaAreaDensity::~RWStepFEA_RWFeaAreaDensity %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepFEA_RWFeaAreaDensity {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") RWStepFEA_RWCurveElementInterval::~RWStepFEA_RWCurveElementInterval %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepFEA_RWCurveElementInterval {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") RWStepFEA_RWNodeRepresentation::~RWStepFEA_RWNodeRepresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepFEA_RWNodeRepresentation {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") RWStepFEA_RWArbitraryVolume3dElementCoordinateSystem::~RWStepFEA_RWArbitraryVolume3dElementCoordinateSystem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepFEA_RWArbitraryVolume3dElementCoordinateSystem {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") RWStepFEA_RWElementRepresentation::~RWStepFEA_RWElementRepresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepFEA_RWElementRepresentation {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") RWStepFEA_RWFeaMoistureAbsorption::~RWStepFEA_RWFeaMoistureAbsorption %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepFEA_RWFeaMoistureAbsorption {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") RWStepFEA_RWCurveElementIntervalConstant::~RWStepFEA_RWCurveElementIntervalConstant %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepFEA_RWCurveElementIntervalConstant {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") RWStepFEA_RWNode::~RWStepFEA_RWNode %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepFEA_RWNode {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") RWStepFEA_RWFeaMassDensity::~RWStepFEA_RWFeaMassDensity %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepFEA_RWFeaMassDensity {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") RWStepFEA_RWFeaMaterialPropertyRepresentation::~RWStepFEA_RWFeaMaterialPropertyRepresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepFEA_RWFeaMaterialPropertyRepresentation {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") RWStepFEA_RWParametricCurve3dElementCoordinateSystem::~RWStepFEA_RWParametricCurve3dElementCoordinateSystem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepFEA_RWParametricCurve3dElementCoordinateSystem {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") RWStepFEA_RWFeaShellBendingStiffness::~RWStepFEA_RWFeaShellBendingStiffness %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepFEA_RWFeaShellBendingStiffness {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") RWStepFEA_RWNodeGroup::~RWStepFEA_RWNodeGroup %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepFEA_RWNodeGroup {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") RWStepFEA_RWParametricSurface3dElementCoordinateSystem::~RWStepFEA_RWParametricSurface3dElementCoordinateSystem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepFEA_RWParametricSurface3dElementCoordinateSystem {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") RWStepFEA_RWAlignedCurve3dElementCoordinateSystem::~RWStepFEA_RWAlignedCurve3dElementCoordinateSystem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepFEA_RWAlignedCurve3dElementCoordinateSystem {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") RWStepFEA_RWFeaSurfaceSectionGeometricRelationship::~RWStepFEA_RWFeaSurfaceSectionGeometricRelationship %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepFEA_RWFeaSurfaceSectionGeometricRelationship {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") RWStepFEA_RWDummyNode::~RWStepFEA_RWDummyNode %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepFEA_RWDummyNode {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") RWStepFEA_RWAlignedSurface3dElementCoordinateSystem::~RWStepFEA_RWAlignedSurface3dElementCoordinateSystem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepFEA_RWAlignedSurface3dElementCoordinateSystem {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") RWStepFEA_RWFeaSecantCoefficientOfLinearThermalExpansion::~RWStepFEA_RWFeaSecantCoefficientOfLinearThermalExpansion %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepFEA_RWFeaSecantCoefficientOfLinearThermalExpansion {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") RWStepFEA_RWFeaAxis2Placement3d::~RWStepFEA_RWFeaAxis2Placement3d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepFEA_RWFeaAxis2Placement3d {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") RWStepFEA_RWFeaTangentialCoefficientOfLinearThermalExpansion::~RWStepFEA_RWFeaTangentialCoefficientOfLinearThermalExpansion %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepFEA_RWFeaTangentialCoefficientOfLinearThermalExpansion {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") RWStepFEA_RWGeometricNode::~RWStepFEA_RWGeometricNode %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepFEA_RWGeometricNode {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") RWStepFEA_RWFeaShellMembraneStiffness::~RWStepFEA_RWFeaShellMembraneStiffness %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepFEA_RWFeaShellMembraneStiffness {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") RWStepFEA_RWFreedomsList::~RWStepFEA_RWFreedomsList %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepFEA_RWFreedomsList {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") RWStepFEA_RWFeaModelDefinition::~RWStepFEA_RWFeaModelDefinition %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepFEA_RWFeaModelDefinition {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") RWStepFEA_RWFeaShellShearStiffness::~RWStepFEA_RWFeaShellShearStiffness %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepFEA_RWFeaShellShearStiffness {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") RWStepFEA_RWNodeSet::~RWStepFEA_RWNodeSet %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepFEA_RWNodeSet {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") RWStepFEA_RWFreedomAndCoefficient::~RWStepFEA_RWFreedomAndCoefficient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepFEA_RWFreedomAndCoefficient {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") RWStepFEA_RWFeaShellMembraneBendingCouplingStiffness::~RWStepFEA_RWFeaShellMembraneBendingCouplingStiffness %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepFEA_RWFeaShellMembraneBendingCouplingStiffness {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") RWStepFEA_RWSurface3dElementRepresentation::~RWStepFEA_RWSurface3dElementRepresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepFEA_RWSurface3dElementRepresentation {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") RWStepFEA_RWElementGroup::~RWStepFEA_RWElementGroup %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepFEA_RWElementGroup {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") RWStepFEA_RWCurveElementEndOffset::~RWStepFEA_RWCurveElementEndOffset %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepFEA_RWCurveElementEndOffset {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") RWStepFEA_RWVolume3dElementRepresentation::~RWStepFEA_RWVolume3dElementRepresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepFEA_RWVolume3dElementRepresentation {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") RWStepFEA_RWFeaRepresentationItem::~RWStepFEA_RWFeaRepresentationItem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepFEA_RWFeaRepresentationItem {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") RWStepFEA_RWFeaModel::~RWStepFEA_RWFeaModel %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepFEA_RWFeaModel {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") RWStepFEA_RWNodeDefinition::~RWStepFEA_RWNodeDefinition %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepFEA_RWNodeDefinition {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") RWStepFEA_RWParametricCurve3dElementCoordinateDirection::~RWStepFEA_RWParametricCurve3dElementCoordinateDirection %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepFEA_RWParametricCurve3dElementCoordinateDirection {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") RWStepFEA_RWFeaLinearElasticity::~RWStepFEA_RWFeaLinearElasticity %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepFEA_RWFeaLinearElasticity {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") RWStepFEA_RWCurveElementLocation::~RWStepFEA_RWCurveElementLocation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepFEA_RWCurveElementLocation {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") RWStepFEA_RWElementGeometricRelationship::~RWStepFEA_RWElementGeometricRelationship %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepFEA_RWElementGeometricRelationship {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") RWStepFEA_RWFeaMaterialPropertyRepresentationItem::~RWStepFEA_RWFeaMaterialPropertyRepresentationItem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepFEA_RWFeaMaterialPropertyRepresentationItem {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") RWStepFEA_RWCurveElementEndRelease::~RWStepFEA_RWCurveElementEndRelease %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepFEA_RWCurveElementEndRelease {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") RWStepFEA_RWCurveElementIntervalLinearlyVarying::~RWStepFEA_RWCurveElementIntervalLinearlyVarying %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepFEA_RWCurveElementIntervalLinearlyVarying {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") RWStepFEA_RWNodeWithSolutionCoordinateSystem::~RWStepFEA_RWNodeWithSolutionCoordinateSystem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepFEA_RWNodeWithSolutionCoordinateSystem {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") RWStepFEA_RWNodeWithVector::~RWStepFEA_RWNodeWithVector %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepFEA_RWNodeWithVector {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") RWStepFEA_RWFeaCurveSectionGeometricRelationship::~RWStepFEA_RWFeaCurveSectionGeometricRelationship %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepFEA_RWFeaCurveSectionGeometricRelationship {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") RWStepFEA_RWFeaGroup::~RWStepFEA_RWFeaGroup %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepFEA_RWFeaGroup {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") RWStepFEA_RWFeaModel3d::~RWStepFEA_RWFeaModel3d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepFEA_RWFeaModel3d {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") RWStepFEA_RWConstantSurface3dElementCoordinateSystem::~RWStepFEA_RWConstantSurface3dElementCoordinateSystem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepFEA_RWConstantSurface3dElementCoordinateSystem {
	void _kill_pointed() {
		delete $self;
	}
};
