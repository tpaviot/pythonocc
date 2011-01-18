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
%module RWStepDimTol
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%pythoncode {
import GarbageCollector
};

%include RWStepDimTol_dependencies.i


%include RWStepDimTol_headers.i




%nodefaultctor RWStepDimTol_RWDatumFeature;
class RWStepDimTol_RWDatumFeature {
	public:
		%feature("autodoc", "1");
		RWStepDimTol_RWDatumFeature();
		%feature("autodoc", "1");
		void ReadStep(const StepData_StepReaderData *data, const Standard_Integer num, Handle_Interface_Check & ach, const StepDimTol_DatumFeature *ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const StepDimTol_DatumFeature *ent) const;
		%feature("autodoc", "1");
		void Share(const StepDimTol_DatumFeature *ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepDimTol_RWDatumFeature::~RWStepDimTol_RWDatumFeature %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepDimTol_RWDatumFeature {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepDimTol_RWDatumReference;
class RWStepDimTol_RWDatumReference {
	public:
		%feature("autodoc", "1");
		RWStepDimTol_RWDatumReference();
		%feature("autodoc", "1");
		void ReadStep(const StepData_StepReaderData *data, const Standard_Integer num, Handle_Interface_Check & ach, const StepDimTol_DatumReference *ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const StepDimTol_DatumReference *ent) const;
		%feature("autodoc", "1");
		void Share(const StepDimTol_DatumReference *ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepDimTol_RWDatumReference::~RWStepDimTol_RWDatumReference %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepDimTol_RWDatumReference {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepDimTol_RWParallelismTolerance;
class RWStepDimTol_RWParallelismTolerance {
	public:
		%feature("autodoc", "1");
		RWStepDimTol_RWParallelismTolerance();
		%feature("autodoc", "1");
		void ReadStep(const StepData_StepReaderData *data, const Standard_Integer num, Handle_Interface_Check & ach, const StepDimTol_ParallelismTolerance *ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const StepDimTol_ParallelismTolerance *ent) const;
		%feature("autodoc", "1");
		void Share(const StepDimTol_ParallelismTolerance *ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepDimTol_RWParallelismTolerance::~RWStepDimTol_RWParallelismTolerance %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepDimTol_RWParallelismTolerance {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepDimTol_RWRoundnessTolerance;
class RWStepDimTol_RWRoundnessTolerance {
	public:
		%feature("autodoc", "1");
		RWStepDimTol_RWRoundnessTolerance();
		%feature("autodoc", "1");
		void ReadStep(const StepData_StepReaderData *data, const Standard_Integer num, Handle_Interface_Check & ach, const StepDimTol_RoundnessTolerance *ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const StepDimTol_RoundnessTolerance *ent) const;
		%feature("autodoc", "1");
		void Share(const StepDimTol_RoundnessTolerance *ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepDimTol_RWRoundnessTolerance::~RWStepDimTol_RWRoundnessTolerance %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepDimTol_RWRoundnessTolerance {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepDimTol_RWAngularityTolerance;
class RWStepDimTol_RWAngularityTolerance {
	public:
		%feature("autodoc", "1");
		RWStepDimTol_RWAngularityTolerance();
		%feature("autodoc", "1");
		void ReadStep(const StepData_StepReaderData *data, const Standard_Integer num, Handle_Interface_Check & ach, const StepDimTol_AngularityTolerance *ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const StepDimTol_AngularityTolerance *ent) const;
		%feature("autodoc", "1");
		void Share(const StepDimTol_AngularityTolerance *ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepDimTol_RWAngularityTolerance::~RWStepDimTol_RWAngularityTolerance %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepDimTol_RWAngularityTolerance {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepDimTol_RWSurfaceProfileTolerance;
class RWStepDimTol_RWSurfaceProfileTolerance {
	public:
		%feature("autodoc", "1");
		RWStepDimTol_RWSurfaceProfileTolerance();
		%feature("autodoc", "1");
		void ReadStep(const StepData_StepReaderData *data, const Standard_Integer num, Handle_Interface_Check & ach, const StepDimTol_SurfaceProfileTolerance *ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const StepDimTol_SurfaceProfileTolerance *ent) const;
		%feature("autodoc", "1");
		void Share(const StepDimTol_SurfaceProfileTolerance *ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepDimTol_RWSurfaceProfileTolerance::~RWStepDimTol_RWSurfaceProfileTolerance %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepDimTol_RWSurfaceProfileTolerance {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepDimTol_RWCommonDatum;
class RWStepDimTol_RWCommonDatum {
	public:
		%feature("autodoc", "1");
		RWStepDimTol_RWCommonDatum();
		%feature("autodoc", "1");
		void ReadStep(const StepData_StepReaderData *data, const Standard_Integer num, Handle_Interface_Check & ach, const StepDimTol_CommonDatum *ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const StepDimTol_CommonDatum *ent) const;
		%feature("autodoc", "1");
		void Share(const StepDimTol_CommonDatum *ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepDimTol_RWCommonDatum::~RWStepDimTol_RWCommonDatum %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepDimTol_RWCommonDatum {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepDimTol_RWPlacedDatumTargetFeature;
class RWStepDimTol_RWPlacedDatumTargetFeature {
	public:
		%feature("autodoc", "1");
		RWStepDimTol_RWPlacedDatumTargetFeature();
		%feature("autodoc", "1");
		void ReadStep(const StepData_StepReaderData *data, const Standard_Integer num, Handle_Interface_Check & ach, const StepDimTol_PlacedDatumTargetFeature *ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const StepDimTol_PlacedDatumTargetFeature *ent) const;
		%feature("autodoc", "1");
		void Share(const StepDimTol_PlacedDatumTargetFeature *ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepDimTol_RWPlacedDatumTargetFeature::~RWStepDimTol_RWPlacedDatumTargetFeature %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepDimTol_RWPlacedDatumTargetFeature {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepDimTol_RWPerpendicularityTolerance;
class RWStepDimTol_RWPerpendicularityTolerance {
	public:
		%feature("autodoc", "1");
		RWStepDimTol_RWPerpendicularityTolerance();
		%feature("autodoc", "1");
		void ReadStep(const StepData_StepReaderData *data, const Standard_Integer num, Handle_Interface_Check & ach, const StepDimTol_PerpendicularityTolerance *ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const StepDimTol_PerpendicularityTolerance *ent) const;
		%feature("autodoc", "1");
		void Share(const StepDimTol_PerpendicularityTolerance *ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepDimTol_RWPerpendicularityTolerance::~RWStepDimTol_RWPerpendicularityTolerance %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepDimTol_RWPerpendicularityTolerance {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepDimTol_RWSymmetryTolerance;
class RWStepDimTol_RWSymmetryTolerance {
	public:
		%feature("autodoc", "1");
		RWStepDimTol_RWSymmetryTolerance();
		%feature("autodoc", "1");
		void ReadStep(const StepData_StepReaderData *data, const Standard_Integer num, Handle_Interface_Check & ach, const StepDimTol_SymmetryTolerance *ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const StepDimTol_SymmetryTolerance *ent) const;
		%feature("autodoc", "1");
		void Share(const StepDimTol_SymmetryTolerance *ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepDimTol_RWSymmetryTolerance::~RWStepDimTol_RWSymmetryTolerance %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepDimTol_RWSymmetryTolerance {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepDimTol_RWCircularRunoutTolerance;
class RWStepDimTol_RWCircularRunoutTolerance {
	public:
		%feature("autodoc", "1");
		RWStepDimTol_RWCircularRunoutTolerance();
		%feature("autodoc", "1");
		void ReadStep(const StepData_StepReaderData *data, const Standard_Integer num, Handle_Interface_Check & ach, const StepDimTol_CircularRunoutTolerance *ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const StepDimTol_CircularRunoutTolerance *ent) const;
		%feature("autodoc", "1");
		void Share(const StepDimTol_CircularRunoutTolerance *ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepDimTol_RWCircularRunoutTolerance::~RWStepDimTol_RWCircularRunoutTolerance %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepDimTol_RWCircularRunoutTolerance {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepDimTol_RWPositionTolerance;
class RWStepDimTol_RWPositionTolerance {
	public:
		%feature("autodoc", "1");
		RWStepDimTol_RWPositionTolerance();
		%feature("autodoc", "1");
		void ReadStep(const StepData_StepReaderData *data, const Standard_Integer num, Handle_Interface_Check & ach, const StepDimTol_PositionTolerance *ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const StepDimTol_PositionTolerance *ent) const;
		%feature("autodoc", "1");
		void Share(const StepDimTol_PositionTolerance *ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepDimTol_RWPositionTolerance::~RWStepDimTol_RWPositionTolerance %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepDimTol_RWPositionTolerance {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepDimTol_RWLineProfileTolerance;
class RWStepDimTol_RWLineProfileTolerance {
	public:
		%feature("autodoc", "1");
		RWStepDimTol_RWLineProfileTolerance();
		%feature("autodoc", "1");
		void ReadStep(const StepData_StepReaderData *data, const Standard_Integer num, Handle_Interface_Check & ach, const StepDimTol_LineProfileTolerance *ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const StepDimTol_LineProfileTolerance *ent) const;
		%feature("autodoc", "1");
		void Share(const StepDimTol_LineProfileTolerance *ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepDimTol_RWLineProfileTolerance::~RWStepDimTol_RWLineProfileTolerance %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepDimTol_RWLineProfileTolerance {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepDimTol_RWDatumTarget;
class RWStepDimTol_RWDatumTarget {
	public:
		%feature("autodoc", "1");
		RWStepDimTol_RWDatumTarget();
		%feature("autodoc", "1");
		void ReadStep(const StepData_StepReaderData *data, const Standard_Integer num, Handle_Interface_Check & ach, const StepDimTol_DatumTarget *ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const StepDimTol_DatumTarget *ent) const;
		%feature("autodoc", "1");
		void Share(const StepDimTol_DatumTarget *ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepDimTol_RWDatumTarget::~RWStepDimTol_RWDatumTarget %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepDimTol_RWDatumTarget {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepDimTol_RWFlatnessTolerance;
class RWStepDimTol_RWFlatnessTolerance {
	public:
		%feature("autodoc", "1");
		RWStepDimTol_RWFlatnessTolerance();
		%feature("autodoc", "1");
		void ReadStep(const StepData_StepReaderData *data, const Standard_Integer num, Handle_Interface_Check & ach, const StepDimTol_FlatnessTolerance *ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const StepDimTol_FlatnessTolerance *ent) const;
		%feature("autodoc", "1");
		void Share(const StepDimTol_FlatnessTolerance *ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepDimTol_RWFlatnessTolerance::~RWStepDimTol_RWFlatnessTolerance %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepDimTol_RWFlatnessTolerance {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepDimTol_RWGeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol;
class RWStepDimTol_RWGeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol {
	public:
		%feature("autodoc", "1");
		RWStepDimTol_RWGeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol();
		%feature("autodoc", "1");
		void ReadStep(const StepData_StepReaderData *data, const Standard_Integer num, Handle_Interface_Check & ach, const StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol *ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol *ent) const;
		%feature("autodoc", "1");
		void Share(const StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol *ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepDimTol_RWGeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol::~RWStepDimTol_RWGeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepDimTol_RWGeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepDimTol_RWGeometricTolerance;
class RWStepDimTol_RWGeometricTolerance {
	public:
		%feature("autodoc", "1");
		RWStepDimTol_RWGeometricTolerance();
		%feature("autodoc", "1");
		void ReadStep(const StepData_StepReaderData *data, const Standard_Integer num, Handle_Interface_Check & ach, const StepDimTol_GeometricTolerance *ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const StepDimTol_GeometricTolerance *ent) const;
		%feature("autodoc", "1");
		void Share(const StepDimTol_GeometricTolerance *ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepDimTol_RWGeometricTolerance::~RWStepDimTol_RWGeometricTolerance %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepDimTol_RWGeometricTolerance {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepDimTol_RWStraightnessTolerance;
class RWStepDimTol_RWStraightnessTolerance {
	public:
		%feature("autodoc", "1");
		RWStepDimTol_RWStraightnessTolerance();
		%feature("autodoc", "1");
		void ReadStep(const StepData_StepReaderData *data, const Standard_Integer num, Handle_Interface_Check & ach, const StepDimTol_StraightnessTolerance *ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const StepDimTol_StraightnessTolerance *ent) const;
		%feature("autodoc", "1");
		void Share(const StepDimTol_StraightnessTolerance *ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepDimTol_RWStraightnessTolerance::~RWStepDimTol_RWStraightnessTolerance %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepDimTol_RWStraightnessTolerance {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepDimTol_RWCylindricityTolerance;
class RWStepDimTol_RWCylindricityTolerance {
	public:
		%feature("autodoc", "1");
		RWStepDimTol_RWCylindricityTolerance();
		%feature("autodoc", "1");
		void ReadStep(const StepData_StepReaderData *data, const Standard_Integer num, Handle_Interface_Check & ach, const StepDimTol_CylindricityTolerance *ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const StepDimTol_CylindricityTolerance *ent) const;
		%feature("autodoc", "1");
		void Share(const StepDimTol_CylindricityTolerance *ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepDimTol_RWCylindricityTolerance::~RWStepDimTol_RWCylindricityTolerance %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepDimTol_RWCylindricityTolerance {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepDimTol_RWGeometricToleranceRelationship;
class RWStepDimTol_RWGeometricToleranceRelationship {
	public:
		%feature("autodoc", "1");
		RWStepDimTol_RWGeometricToleranceRelationship();
		%feature("autodoc", "1");
		void ReadStep(const StepData_StepReaderData *data, const Standard_Integer num, Handle_Interface_Check & ach, const StepDimTol_GeometricToleranceRelationship *ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const StepDimTol_GeometricToleranceRelationship *ent) const;
		%feature("autodoc", "1");
		void Share(const StepDimTol_GeometricToleranceRelationship *ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepDimTol_RWGeometricToleranceRelationship::~RWStepDimTol_RWGeometricToleranceRelationship %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepDimTol_RWGeometricToleranceRelationship {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepDimTol_RWCoaxialityTolerance;
class RWStepDimTol_RWCoaxialityTolerance {
	public:
		%feature("autodoc", "1");
		RWStepDimTol_RWCoaxialityTolerance();
		%feature("autodoc", "1");
		void ReadStep(const StepData_StepReaderData *data, const Standard_Integer num, Handle_Interface_Check & ach, const StepDimTol_CoaxialityTolerance *ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const StepDimTol_CoaxialityTolerance *ent) const;
		%feature("autodoc", "1");
		void Share(const StepDimTol_CoaxialityTolerance *ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepDimTol_RWCoaxialityTolerance::~RWStepDimTol_RWCoaxialityTolerance %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepDimTol_RWCoaxialityTolerance {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepDimTol_RWTotalRunoutTolerance;
class RWStepDimTol_RWTotalRunoutTolerance {
	public:
		%feature("autodoc", "1");
		RWStepDimTol_RWTotalRunoutTolerance();
		%feature("autodoc", "1");
		void ReadStep(const StepData_StepReaderData *data, const Standard_Integer num, Handle_Interface_Check & ach, const StepDimTol_TotalRunoutTolerance *ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const StepDimTol_TotalRunoutTolerance *ent) const;
		%feature("autodoc", "1");
		void Share(const StepDimTol_TotalRunoutTolerance *ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepDimTol_RWTotalRunoutTolerance::~RWStepDimTol_RWTotalRunoutTolerance %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepDimTol_RWTotalRunoutTolerance {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepDimTol_RWModifiedGeometricTolerance;
class RWStepDimTol_RWModifiedGeometricTolerance {
	public:
		%feature("autodoc", "1");
		RWStepDimTol_RWModifiedGeometricTolerance();
		%feature("autodoc", "1");
		void ReadStep(const StepData_StepReaderData *data, const Standard_Integer num, Handle_Interface_Check & ach, const StepDimTol_ModifiedGeometricTolerance *ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const StepDimTol_ModifiedGeometricTolerance *ent) const;
		%feature("autodoc", "1");
		void Share(const StepDimTol_ModifiedGeometricTolerance *ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepDimTol_RWModifiedGeometricTolerance::~RWStepDimTol_RWModifiedGeometricTolerance %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepDimTol_RWModifiedGeometricTolerance {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepDimTol_RWConcentricityTolerance;
class RWStepDimTol_RWConcentricityTolerance {
	public:
		%feature("autodoc", "1");
		RWStepDimTol_RWConcentricityTolerance();
		%feature("autodoc", "1");
		void ReadStep(const StepData_StepReaderData *data, const Standard_Integer num, Handle_Interface_Check & ach, const StepDimTol_ConcentricityTolerance *ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const StepDimTol_ConcentricityTolerance *ent) const;
		%feature("autodoc", "1");
		void Share(const StepDimTol_ConcentricityTolerance *ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepDimTol_RWConcentricityTolerance::~RWStepDimTol_RWConcentricityTolerance %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepDimTol_RWConcentricityTolerance {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepDimTol_RWDatum;
class RWStepDimTol_RWDatum {
	public:
		%feature("autodoc", "1");
		RWStepDimTol_RWDatum();
		%feature("autodoc", "1");
		void ReadStep(const StepData_StepReaderData *data, const Standard_Integer num, Handle_Interface_Check & ach, const StepDimTol_Datum *ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const StepDimTol_Datum *ent) const;
		%feature("autodoc", "1");
		void Share(const StepDimTol_Datum *ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepDimTol_RWDatum::~RWStepDimTol_RWDatum %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepDimTol_RWDatum {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepDimTol_RWGeometricToleranceWithDatumReference;
class RWStepDimTol_RWGeometricToleranceWithDatumReference {
	public:
		%feature("autodoc", "1");
		RWStepDimTol_RWGeometricToleranceWithDatumReference();
		%feature("autodoc", "1");
		void ReadStep(const StepData_StepReaderData *data, const Standard_Integer num, Handle_Interface_Check & ach, const StepDimTol_GeometricToleranceWithDatumReference *ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const StepDimTol_GeometricToleranceWithDatumReference *ent) const;
		%feature("autodoc", "1");
		void Share(const StepDimTol_GeometricToleranceWithDatumReference *ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepDimTol_RWGeometricToleranceWithDatumReference::~RWStepDimTol_RWGeometricToleranceWithDatumReference %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepDimTol_RWGeometricToleranceWithDatumReference {
	void _kill_pointed() {
		delete $self;
	}
};
