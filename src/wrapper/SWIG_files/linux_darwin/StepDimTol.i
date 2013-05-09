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

%module StepDimTol
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include StepDimTol_renames.i


%include StepDimTol_required_python_modules.i


%include StepDimTol_dependencies.i


%include StepDimTol_headers.i


enum StepDimTol_LimitCondition {
	StepDimTol_MaximumMaterialCondition,
	StepDimTol_LeastMaterialCondition,
	StepDimTol_RegardlessOfFeatureSize,
	};



%nodefaultctor Handle_StepDimTol_GeometricTolerance;
class Handle_StepDimTol_GeometricTolerance : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepDimTol_GeometricTolerance();
		%feature("autodoc", "1");
		Handle_StepDimTol_GeometricTolerance(const Handle_StepDimTol_GeometricTolerance &aHandle);
		%feature("autodoc", "1");
		Handle_StepDimTol_GeometricTolerance(const StepDimTol_GeometricTolerance *anItem);
		%feature("autodoc", "1");
		Handle_StepDimTol_GeometricTolerance & operator=(const Handle_StepDimTol_GeometricTolerance &aHandle);
		%feature("autodoc", "1");
		Handle_StepDimTol_GeometricTolerance & operator=(const StepDimTol_GeometricTolerance *anItem);
		%feature("autodoc", "1");
		static		Handle_StepDimTol_GeometricTolerance DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepDimTol_GeometricTolerance {
	StepDimTol_GeometricTolerance* GetObject() {
	return (StepDimTol_GeometricTolerance*)$self->Access();
	}
};
%feature("shadow") Handle_StepDimTol_GeometricTolerance::~Handle_StepDimTol_GeometricTolerance %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepDimTol_GeometricTolerance {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepDimTol_GeometricToleranceWithDatumReference;
class Handle_StepDimTol_GeometricToleranceWithDatumReference : public Handle_StepDimTol_GeometricTolerance {
	public:
		%feature("autodoc", "1");
		Handle_StepDimTol_GeometricToleranceWithDatumReference();
		%feature("autodoc", "1");
		Handle_StepDimTol_GeometricToleranceWithDatumReference(const Handle_StepDimTol_GeometricToleranceWithDatumReference &aHandle);
		%feature("autodoc", "1");
		Handle_StepDimTol_GeometricToleranceWithDatumReference(const StepDimTol_GeometricToleranceWithDatumReference *anItem);
		%feature("autodoc", "1");
		Handle_StepDimTol_GeometricToleranceWithDatumReference & operator=(const Handle_StepDimTol_GeometricToleranceWithDatumReference &aHandle);
		%feature("autodoc", "1");
		Handle_StepDimTol_GeometricToleranceWithDatumReference & operator=(const StepDimTol_GeometricToleranceWithDatumReference *anItem);
		%feature("autodoc", "1");
		static		Handle_StepDimTol_GeometricToleranceWithDatumReference DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepDimTol_GeometricToleranceWithDatumReference {
	StepDimTol_GeometricToleranceWithDatumReference* GetObject() {
	return (StepDimTol_GeometricToleranceWithDatumReference*)$self->Access();
	}
};
%feature("shadow") Handle_StepDimTol_GeometricToleranceWithDatumReference::~Handle_StepDimTol_GeometricToleranceWithDatumReference %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepDimTol_GeometricToleranceWithDatumReference {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepDimTol_CoaxialityTolerance;
class Handle_StepDimTol_CoaxialityTolerance : public Handle_StepDimTol_GeometricToleranceWithDatumReference {
	public:
		%feature("autodoc", "1");
		Handle_StepDimTol_CoaxialityTolerance();
		%feature("autodoc", "1");
		Handle_StepDimTol_CoaxialityTolerance(const Handle_StepDimTol_CoaxialityTolerance &aHandle);
		%feature("autodoc", "1");
		Handle_StepDimTol_CoaxialityTolerance(const StepDimTol_CoaxialityTolerance *anItem);
		%feature("autodoc", "1");
		Handle_StepDimTol_CoaxialityTolerance & operator=(const Handle_StepDimTol_CoaxialityTolerance &aHandle);
		%feature("autodoc", "1");
		Handle_StepDimTol_CoaxialityTolerance & operator=(const StepDimTol_CoaxialityTolerance *anItem);
		%feature("autodoc", "1");
		static		Handle_StepDimTol_CoaxialityTolerance DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepDimTol_CoaxialityTolerance {
	StepDimTol_CoaxialityTolerance* GetObject() {
	return (StepDimTol_CoaxialityTolerance*)$self->Access();
	}
};
%feature("shadow") Handle_StepDimTol_CoaxialityTolerance::~Handle_StepDimTol_CoaxialityTolerance %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepDimTol_CoaxialityTolerance {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepDimTol_Datum;
class Handle_StepDimTol_Datum : public Handle_StepRepr_ShapeAspect {
	public:
		%feature("autodoc", "1");
		Handle_StepDimTol_Datum();
		%feature("autodoc", "1");
		Handle_StepDimTol_Datum(const Handle_StepDimTol_Datum &aHandle);
		%feature("autodoc", "1");
		Handle_StepDimTol_Datum(const StepDimTol_Datum *anItem);
		%feature("autodoc", "1");
		Handle_StepDimTol_Datum & operator=(const Handle_StepDimTol_Datum &aHandle);
		%feature("autodoc", "1");
		Handle_StepDimTol_Datum & operator=(const StepDimTol_Datum *anItem);
		%feature("autodoc", "1");
		static		Handle_StepDimTol_Datum DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepDimTol_Datum {
	StepDimTol_Datum* GetObject() {
	return (StepDimTol_Datum*)$self->Access();
	}
};
%feature("shadow") Handle_StepDimTol_Datum::~Handle_StepDimTol_Datum %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepDimTol_Datum {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepDimTol_DatumTarget;
class Handle_StepDimTol_DatumTarget : public Handle_StepRepr_ShapeAspect {
	public:
		%feature("autodoc", "1");
		Handle_StepDimTol_DatumTarget();
		%feature("autodoc", "1");
		Handle_StepDimTol_DatumTarget(const Handle_StepDimTol_DatumTarget &aHandle);
		%feature("autodoc", "1");
		Handle_StepDimTol_DatumTarget(const StepDimTol_DatumTarget *anItem);
		%feature("autodoc", "1");
		Handle_StepDimTol_DatumTarget & operator=(const Handle_StepDimTol_DatumTarget &aHandle);
		%feature("autodoc", "1");
		Handle_StepDimTol_DatumTarget & operator=(const StepDimTol_DatumTarget *anItem);
		%feature("autodoc", "1");
		static		Handle_StepDimTol_DatumTarget DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepDimTol_DatumTarget {
	StepDimTol_DatumTarget* GetObject() {
	return (StepDimTol_DatumTarget*)$self->Access();
	}
};
%feature("shadow") Handle_StepDimTol_DatumTarget::~Handle_StepDimTol_DatumTarget %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepDimTol_DatumTarget {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepDimTol_PlacedDatumTargetFeature;
class Handle_StepDimTol_PlacedDatumTargetFeature : public Handle_StepDimTol_DatumTarget {
	public:
		%feature("autodoc", "1");
		Handle_StepDimTol_PlacedDatumTargetFeature();
		%feature("autodoc", "1");
		Handle_StepDimTol_PlacedDatumTargetFeature(const Handle_StepDimTol_PlacedDatumTargetFeature &aHandle);
		%feature("autodoc", "1");
		Handle_StepDimTol_PlacedDatumTargetFeature(const StepDimTol_PlacedDatumTargetFeature *anItem);
		%feature("autodoc", "1");
		Handle_StepDimTol_PlacedDatumTargetFeature & operator=(const Handle_StepDimTol_PlacedDatumTargetFeature &aHandle);
		%feature("autodoc", "1");
		Handle_StepDimTol_PlacedDatumTargetFeature & operator=(const StepDimTol_PlacedDatumTargetFeature *anItem);
		%feature("autodoc", "1");
		static		Handle_StepDimTol_PlacedDatumTargetFeature DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepDimTol_PlacedDatumTargetFeature {
	StepDimTol_PlacedDatumTargetFeature* GetObject() {
	return (StepDimTol_PlacedDatumTargetFeature*)$self->Access();
	}
};
%feature("shadow") Handle_StepDimTol_PlacedDatumTargetFeature::~Handle_StepDimTol_PlacedDatumTargetFeature %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepDimTol_PlacedDatumTargetFeature {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepDimTol_HArray1OfDatumReference;
class Handle_StepDimTol_HArray1OfDatumReference : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepDimTol_HArray1OfDatumReference();
		%feature("autodoc", "1");
		Handle_StepDimTol_HArray1OfDatumReference(const Handle_StepDimTol_HArray1OfDatumReference &aHandle);
		%feature("autodoc", "1");
		Handle_StepDimTol_HArray1OfDatumReference(const StepDimTol_HArray1OfDatumReference *anItem);
		%feature("autodoc", "1");
		Handle_StepDimTol_HArray1OfDatumReference & operator=(const Handle_StepDimTol_HArray1OfDatumReference &aHandle);
		%feature("autodoc", "1");
		Handle_StepDimTol_HArray1OfDatumReference & operator=(const StepDimTol_HArray1OfDatumReference *anItem);
		%feature("autodoc", "1");
		static		Handle_StepDimTol_HArray1OfDatumReference DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepDimTol_HArray1OfDatumReference {
	StepDimTol_HArray1OfDatumReference* GetObject() {
	return (StepDimTol_HArray1OfDatumReference*)$self->Access();
	}
};
%feature("shadow") Handle_StepDimTol_HArray1OfDatumReference::~Handle_StepDimTol_HArray1OfDatumReference %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepDimTol_HArray1OfDatumReference {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepDimTol_LineProfileTolerance;
class Handle_StepDimTol_LineProfileTolerance : public Handle_StepDimTol_GeometricTolerance {
	public:
		%feature("autodoc", "1");
		Handle_StepDimTol_LineProfileTolerance();
		%feature("autodoc", "1");
		Handle_StepDimTol_LineProfileTolerance(const Handle_StepDimTol_LineProfileTolerance &aHandle);
		%feature("autodoc", "1");
		Handle_StepDimTol_LineProfileTolerance(const StepDimTol_LineProfileTolerance *anItem);
		%feature("autodoc", "1");
		Handle_StepDimTol_LineProfileTolerance & operator=(const Handle_StepDimTol_LineProfileTolerance &aHandle);
		%feature("autodoc", "1");
		Handle_StepDimTol_LineProfileTolerance & operator=(const StepDimTol_LineProfileTolerance *anItem);
		%feature("autodoc", "1");
		static		Handle_StepDimTol_LineProfileTolerance DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepDimTol_LineProfileTolerance {
	StepDimTol_LineProfileTolerance* GetObject() {
	return (StepDimTol_LineProfileTolerance*)$self->Access();
	}
};
%feature("shadow") Handle_StepDimTol_LineProfileTolerance::~Handle_StepDimTol_LineProfileTolerance %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepDimTol_LineProfileTolerance {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepDimTol_GeometricToleranceRelationship;
class Handle_StepDimTol_GeometricToleranceRelationship : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepDimTol_GeometricToleranceRelationship();
		%feature("autodoc", "1");
		Handle_StepDimTol_GeometricToleranceRelationship(const Handle_StepDimTol_GeometricToleranceRelationship &aHandle);
		%feature("autodoc", "1");
		Handle_StepDimTol_GeometricToleranceRelationship(const StepDimTol_GeometricToleranceRelationship *anItem);
		%feature("autodoc", "1");
		Handle_StepDimTol_GeometricToleranceRelationship & operator=(const Handle_StepDimTol_GeometricToleranceRelationship &aHandle);
		%feature("autodoc", "1");
		Handle_StepDimTol_GeometricToleranceRelationship & operator=(const StepDimTol_GeometricToleranceRelationship *anItem);
		%feature("autodoc", "1");
		static		Handle_StepDimTol_GeometricToleranceRelationship DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepDimTol_GeometricToleranceRelationship {
	StepDimTol_GeometricToleranceRelationship* GetObject() {
	return (StepDimTol_GeometricToleranceRelationship*)$self->Access();
	}
};
%feature("shadow") Handle_StepDimTol_GeometricToleranceRelationship::~Handle_StepDimTol_GeometricToleranceRelationship %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepDimTol_GeometricToleranceRelationship {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepDimTol_PositionTolerance;
class Handle_StepDimTol_PositionTolerance : public Handle_StepDimTol_GeometricTolerance {
	public:
		%feature("autodoc", "1");
		Handle_StepDimTol_PositionTolerance();
		%feature("autodoc", "1");
		Handle_StepDimTol_PositionTolerance(const Handle_StepDimTol_PositionTolerance &aHandle);
		%feature("autodoc", "1");
		Handle_StepDimTol_PositionTolerance(const StepDimTol_PositionTolerance *anItem);
		%feature("autodoc", "1");
		Handle_StepDimTol_PositionTolerance & operator=(const Handle_StepDimTol_PositionTolerance &aHandle);
		%feature("autodoc", "1");
		Handle_StepDimTol_PositionTolerance & operator=(const StepDimTol_PositionTolerance *anItem);
		%feature("autodoc", "1");
		static		Handle_StepDimTol_PositionTolerance DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepDimTol_PositionTolerance {
	StepDimTol_PositionTolerance* GetObject() {
	return (StepDimTol_PositionTolerance*)$self->Access();
	}
};
%feature("shadow") Handle_StepDimTol_PositionTolerance::~Handle_StepDimTol_PositionTolerance %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepDimTol_PositionTolerance {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepDimTol_PerpendicularityTolerance;
class Handle_StepDimTol_PerpendicularityTolerance : public Handle_StepDimTol_GeometricToleranceWithDatumReference {
	public:
		%feature("autodoc", "1");
		Handle_StepDimTol_PerpendicularityTolerance();
		%feature("autodoc", "1");
		Handle_StepDimTol_PerpendicularityTolerance(const Handle_StepDimTol_PerpendicularityTolerance &aHandle);
		%feature("autodoc", "1");
		Handle_StepDimTol_PerpendicularityTolerance(const StepDimTol_PerpendicularityTolerance *anItem);
		%feature("autodoc", "1");
		Handle_StepDimTol_PerpendicularityTolerance & operator=(const Handle_StepDimTol_PerpendicularityTolerance &aHandle);
		%feature("autodoc", "1");
		Handle_StepDimTol_PerpendicularityTolerance & operator=(const StepDimTol_PerpendicularityTolerance *anItem);
		%feature("autodoc", "1");
		static		Handle_StepDimTol_PerpendicularityTolerance DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepDimTol_PerpendicularityTolerance {
	StepDimTol_PerpendicularityTolerance* GetObject() {
	return (StepDimTol_PerpendicularityTolerance*)$self->Access();
	}
};
%feature("shadow") Handle_StepDimTol_PerpendicularityTolerance::~Handle_StepDimTol_PerpendicularityTolerance %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepDimTol_PerpendicularityTolerance {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepDimTol_AngularityTolerance;
class Handle_StepDimTol_AngularityTolerance : public Handle_StepDimTol_GeometricToleranceWithDatumReference {
	public:
		%feature("autodoc", "1");
		Handle_StepDimTol_AngularityTolerance();
		%feature("autodoc", "1");
		Handle_StepDimTol_AngularityTolerance(const Handle_StepDimTol_AngularityTolerance &aHandle);
		%feature("autodoc", "1");
		Handle_StepDimTol_AngularityTolerance(const StepDimTol_AngularityTolerance *anItem);
		%feature("autodoc", "1");
		Handle_StepDimTol_AngularityTolerance & operator=(const Handle_StepDimTol_AngularityTolerance &aHandle);
		%feature("autodoc", "1");
		Handle_StepDimTol_AngularityTolerance & operator=(const StepDimTol_AngularityTolerance *anItem);
		%feature("autodoc", "1");
		static		Handle_StepDimTol_AngularityTolerance DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepDimTol_AngularityTolerance {
	StepDimTol_AngularityTolerance* GetObject() {
	return (StepDimTol_AngularityTolerance*)$self->Access();
	}
};
%feature("shadow") Handle_StepDimTol_AngularityTolerance::~Handle_StepDimTol_AngularityTolerance %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepDimTol_AngularityTolerance {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepDimTol_TotalRunoutTolerance;
class Handle_StepDimTol_TotalRunoutTolerance : public Handle_StepDimTol_GeometricToleranceWithDatumReference {
	public:
		%feature("autodoc", "1");
		Handle_StepDimTol_TotalRunoutTolerance();
		%feature("autodoc", "1");
		Handle_StepDimTol_TotalRunoutTolerance(const Handle_StepDimTol_TotalRunoutTolerance &aHandle);
		%feature("autodoc", "1");
		Handle_StepDimTol_TotalRunoutTolerance(const StepDimTol_TotalRunoutTolerance *anItem);
		%feature("autodoc", "1");
		Handle_StepDimTol_TotalRunoutTolerance & operator=(const Handle_StepDimTol_TotalRunoutTolerance &aHandle);
		%feature("autodoc", "1");
		Handle_StepDimTol_TotalRunoutTolerance & operator=(const StepDimTol_TotalRunoutTolerance *anItem);
		%feature("autodoc", "1");
		static		Handle_StepDimTol_TotalRunoutTolerance DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepDimTol_TotalRunoutTolerance {
	StepDimTol_TotalRunoutTolerance* GetObject() {
	return (StepDimTol_TotalRunoutTolerance*)$self->Access();
	}
};
%feature("shadow") Handle_StepDimTol_TotalRunoutTolerance::~Handle_StepDimTol_TotalRunoutTolerance %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepDimTol_TotalRunoutTolerance {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepDimTol_ConcentricityTolerance;
class Handle_StepDimTol_ConcentricityTolerance : public Handle_StepDimTol_GeometricToleranceWithDatumReference {
	public:
		%feature("autodoc", "1");
		Handle_StepDimTol_ConcentricityTolerance();
		%feature("autodoc", "1");
		Handle_StepDimTol_ConcentricityTolerance(const Handle_StepDimTol_ConcentricityTolerance &aHandle);
		%feature("autodoc", "1");
		Handle_StepDimTol_ConcentricityTolerance(const StepDimTol_ConcentricityTolerance *anItem);
		%feature("autodoc", "1");
		Handle_StepDimTol_ConcentricityTolerance & operator=(const Handle_StepDimTol_ConcentricityTolerance &aHandle);
		%feature("autodoc", "1");
		Handle_StepDimTol_ConcentricityTolerance & operator=(const StepDimTol_ConcentricityTolerance *anItem);
		%feature("autodoc", "1");
		static		Handle_StepDimTol_ConcentricityTolerance DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepDimTol_ConcentricityTolerance {
	StepDimTol_ConcentricityTolerance* GetObject() {
	return (StepDimTol_ConcentricityTolerance*)$self->Access();
	}
};
%feature("shadow") Handle_StepDimTol_ConcentricityTolerance::~Handle_StepDimTol_ConcentricityTolerance %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepDimTol_ConcentricityTolerance {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepDimTol_ParallelismTolerance;
class Handle_StepDimTol_ParallelismTolerance : public Handle_StepDimTol_GeometricToleranceWithDatumReference {
	public:
		%feature("autodoc", "1");
		Handle_StepDimTol_ParallelismTolerance();
		%feature("autodoc", "1");
		Handle_StepDimTol_ParallelismTolerance(const Handle_StepDimTol_ParallelismTolerance &aHandle);
		%feature("autodoc", "1");
		Handle_StepDimTol_ParallelismTolerance(const StepDimTol_ParallelismTolerance *anItem);
		%feature("autodoc", "1");
		Handle_StepDimTol_ParallelismTolerance & operator=(const Handle_StepDimTol_ParallelismTolerance &aHandle);
		%feature("autodoc", "1");
		Handle_StepDimTol_ParallelismTolerance & operator=(const StepDimTol_ParallelismTolerance *anItem);
		%feature("autodoc", "1");
		static		Handle_StepDimTol_ParallelismTolerance DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepDimTol_ParallelismTolerance {
	StepDimTol_ParallelismTolerance* GetObject() {
	return (StepDimTol_ParallelismTolerance*)$self->Access();
	}
};
%feature("shadow") Handle_StepDimTol_ParallelismTolerance::~Handle_StepDimTol_ParallelismTolerance %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepDimTol_ParallelismTolerance {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepDimTol_FlatnessTolerance;
class Handle_StepDimTol_FlatnessTolerance : public Handle_StepDimTol_GeometricTolerance {
	public:
		%feature("autodoc", "1");
		Handle_StepDimTol_FlatnessTolerance();
		%feature("autodoc", "1");
		Handle_StepDimTol_FlatnessTolerance(const Handle_StepDimTol_FlatnessTolerance &aHandle);
		%feature("autodoc", "1");
		Handle_StepDimTol_FlatnessTolerance(const StepDimTol_FlatnessTolerance *anItem);
		%feature("autodoc", "1");
		Handle_StepDimTol_FlatnessTolerance & operator=(const Handle_StepDimTol_FlatnessTolerance &aHandle);
		%feature("autodoc", "1");
		Handle_StepDimTol_FlatnessTolerance & operator=(const StepDimTol_FlatnessTolerance *anItem);
		%feature("autodoc", "1");
		static		Handle_StepDimTol_FlatnessTolerance DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepDimTol_FlatnessTolerance {
	StepDimTol_FlatnessTolerance* GetObject() {
	return (StepDimTol_FlatnessTolerance*)$self->Access();
	}
};
%feature("shadow") Handle_StepDimTol_FlatnessTolerance::~Handle_StepDimTol_FlatnessTolerance %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepDimTol_FlatnessTolerance {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepDimTol_StraightnessTolerance;
class Handle_StepDimTol_StraightnessTolerance : public Handle_StepDimTol_GeometricTolerance {
	public:
		%feature("autodoc", "1");
		Handle_StepDimTol_StraightnessTolerance();
		%feature("autodoc", "1");
		Handle_StepDimTol_StraightnessTolerance(const Handle_StepDimTol_StraightnessTolerance &aHandle);
		%feature("autodoc", "1");
		Handle_StepDimTol_StraightnessTolerance(const StepDimTol_StraightnessTolerance *anItem);
		%feature("autodoc", "1");
		Handle_StepDimTol_StraightnessTolerance & operator=(const Handle_StepDimTol_StraightnessTolerance &aHandle);
		%feature("autodoc", "1");
		Handle_StepDimTol_StraightnessTolerance & operator=(const StepDimTol_StraightnessTolerance *anItem);
		%feature("autodoc", "1");
		static		Handle_StepDimTol_StraightnessTolerance DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepDimTol_StraightnessTolerance {
	StepDimTol_StraightnessTolerance* GetObject() {
	return (StepDimTol_StraightnessTolerance*)$self->Access();
	}
};
%feature("shadow") Handle_StepDimTol_StraightnessTolerance::~Handle_StepDimTol_StraightnessTolerance %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepDimTol_StraightnessTolerance {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepDimTol_DatumReference;
class Handle_StepDimTol_DatumReference : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepDimTol_DatumReference();
		%feature("autodoc", "1");
		Handle_StepDimTol_DatumReference(const Handle_StepDimTol_DatumReference &aHandle);
		%feature("autodoc", "1");
		Handle_StepDimTol_DatumReference(const StepDimTol_DatumReference *anItem);
		%feature("autodoc", "1");
		Handle_StepDimTol_DatumReference & operator=(const Handle_StepDimTol_DatumReference &aHandle);
		%feature("autodoc", "1");
		Handle_StepDimTol_DatumReference & operator=(const StepDimTol_DatumReference *anItem);
		%feature("autodoc", "1");
		static		Handle_StepDimTol_DatumReference DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepDimTol_DatumReference {
	StepDimTol_DatumReference* GetObject() {
	return (StepDimTol_DatumReference*)$self->Access();
	}
};
%feature("shadow") Handle_StepDimTol_DatumReference::~Handle_StepDimTol_DatumReference %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepDimTol_DatumReference {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepDimTol_DatumFeature;
class Handle_StepDimTol_DatumFeature : public Handle_StepRepr_ShapeAspect {
	public:
		%feature("autodoc", "1");
		Handle_StepDimTol_DatumFeature();
		%feature("autodoc", "1");
		Handle_StepDimTol_DatumFeature(const Handle_StepDimTol_DatumFeature &aHandle);
		%feature("autodoc", "1");
		Handle_StepDimTol_DatumFeature(const StepDimTol_DatumFeature *anItem);
		%feature("autodoc", "1");
		Handle_StepDimTol_DatumFeature & operator=(const Handle_StepDimTol_DatumFeature &aHandle);
		%feature("autodoc", "1");
		Handle_StepDimTol_DatumFeature & operator=(const StepDimTol_DatumFeature *anItem);
		%feature("autodoc", "1");
		static		Handle_StepDimTol_DatumFeature DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepDimTol_DatumFeature {
	StepDimTol_DatumFeature* GetObject() {
	return (StepDimTol_DatumFeature*)$self->Access();
	}
};
%feature("shadow") Handle_StepDimTol_DatumFeature::~Handle_StepDimTol_DatumFeature %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepDimTol_DatumFeature {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepDimTol_CircularRunoutTolerance;
class Handle_StepDimTol_CircularRunoutTolerance : public Handle_StepDimTol_GeometricToleranceWithDatumReference {
	public:
		%feature("autodoc", "1");
		Handle_StepDimTol_CircularRunoutTolerance();
		%feature("autodoc", "1");
		Handle_StepDimTol_CircularRunoutTolerance(const Handle_StepDimTol_CircularRunoutTolerance &aHandle);
		%feature("autodoc", "1");
		Handle_StepDimTol_CircularRunoutTolerance(const StepDimTol_CircularRunoutTolerance *anItem);
		%feature("autodoc", "1");
		Handle_StepDimTol_CircularRunoutTolerance & operator=(const Handle_StepDimTol_CircularRunoutTolerance &aHandle);
		%feature("autodoc", "1");
		Handle_StepDimTol_CircularRunoutTolerance & operator=(const StepDimTol_CircularRunoutTolerance *anItem);
		%feature("autodoc", "1");
		static		Handle_StepDimTol_CircularRunoutTolerance DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepDimTol_CircularRunoutTolerance {
	StepDimTol_CircularRunoutTolerance* GetObject() {
	return (StepDimTol_CircularRunoutTolerance*)$self->Access();
	}
};
%feature("shadow") Handle_StepDimTol_CircularRunoutTolerance::~Handle_StepDimTol_CircularRunoutTolerance %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepDimTol_CircularRunoutTolerance {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepDimTol_CylindricityTolerance;
class Handle_StepDimTol_CylindricityTolerance : public Handle_StepDimTol_GeometricTolerance {
	public:
		%feature("autodoc", "1");
		Handle_StepDimTol_CylindricityTolerance();
		%feature("autodoc", "1");
		Handle_StepDimTol_CylindricityTolerance(const Handle_StepDimTol_CylindricityTolerance &aHandle);
		%feature("autodoc", "1");
		Handle_StepDimTol_CylindricityTolerance(const StepDimTol_CylindricityTolerance *anItem);
		%feature("autodoc", "1");
		Handle_StepDimTol_CylindricityTolerance & operator=(const Handle_StepDimTol_CylindricityTolerance &aHandle);
		%feature("autodoc", "1");
		Handle_StepDimTol_CylindricityTolerance & operator=(const StepDimTol_CylindricityTolerance *anItem);
		%feature("autodoc", "1");
		static		Handle_StepDimTol_CylindricityTolerance DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepDimTol_CylindricityTolerance {
	StepDimTol_CylindricityTolerance* GetObject() {
	return (StepDimTol_CylindricityTolerance*)$self->Access();
	}
};
%feature("shadow") Handle_StepDimTol_CylindricityTolerance::~Handle_StepDimTol_CylindricityTolerance %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepDimTol_CylindricityTolerance {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepDimTol_SymmetryTolerance;
class Handle_StepDimTol_SymmetryTolerance : public Handle_StepDimTol_GeometricToleranceWithDatumReference {
	public:
		%feature("autodoc", "1");
		Handle_StepDimTol_SymmetryTolerance();
		%feature("autodoc", "1");
		Handle_StepDimTol_SymmetryTolerance(const Handle_StepDimTol_SymmetryTolerance &aHandle);
		%feature("autodoc", "1");
		Handle_StepDimTol_SymmetryTolerance(const StepDimTol_SymmetryTolerance *anItem);
		%feature("autodoc", "1");
		Handle_StepDimTol_SymmetryTolerance & operator=(const Handle_StepDimTol_SymmetryTolerance &aHandle);
		%feature("autodoc", "1");
		Handle_StepDimTol_SymmetryTolerance & operator=(const StepDimTol_SymmetryTolerance *anItem);
		%feature("autodoc", "1");
		static		Handle_StepDimTol_SymmetryTolerance DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepDimTol_SymmetryTolerance {
	StepDimTol_SymmetryTolerance* GetObject() {
	return (StepDimTol_SymmetryTolerance*)$self->Access();
	}
};
%feature("shadow") Handle_StepDimTol_SymmetryTolerance::~Handle_StepDimTol_SymmetryTolerance %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepDimTol_SymmetryTolerance {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepDimTol_SurfaceProfileTolerance;
class Handle_StepDimTol_SurfaceProfileTolerance : public Handle_StepDimTol_GeometricTolerance {
	public:
		%feature("autodoc", "1");
		Handle_StepDimTol_SurfaceProfileTolerance();
		%feature("autodoc", "1");
		Handle_StepDimTol_SurfaceProfileTolerance(const Handle_StepDimTol_SurfaceProfileTolerance &aHandle);
		%feature("autodoc", "1");
		Handle_StepDimTol_SurfaceProfileTolerance(const StepDimTol_SurfaceProfileTolerance *anItem);
		%feature("autodoc", "1");
		Handle_StepDimTol_SurfaceProfileTolerance & operator=(const Handle_StepDimTol_SurfaceProfileTolerance &aHandle);
		%feature("autodoc", "1");
		Handle_StepDimTol_SurfaceProfileTolerance & operator=(const StepDimTol_SurfaceProfileTolerance *anItem);
		%feature("autodoc", "1");
		static		Handle_StepDimTol_SurfaceProfileTolerance DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepDimTol_SurfaceProfileTolerance {
	StepDimTol_SurfaceProfileTolerance* GetObject() {
	return (StepDimTol_SurfaceProfileTolerance*)$self->Access();
	}
};
%feature("shadow") Handle_StepDimTol_SurfaceProfileTolerance::~Handle_StepDimTol_SurfaceProfileTolerance %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepDimTol_SurfaceProfileTolerance {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepDimTol_ModifiedGeometricTolerance;
class Handle_StepDimTol_ModifiedGeometricTolerance : public Handle_StepDimTol_GeometricTolerance {
	public:
		%feature("autodoc", "1");
		Handle_StepDimTol_ModifiedGeometricTolerance();
		%feature("autodoc", "1");
		Handle_StepDimTol_ModifiedGeometricTolerance(const Handle_StepDimTol_ModifiedGeometricTolerance &aHandle);
		%feature("autodoc", "1");
		Handle_StepDimTol_ModifiedGeometricTolerance(const StepDimTol_ModifiedGeometricTolerance *anItem);
		%feature("autodoc", "1");
		Handle_StepDimTol_ModifiedGeometricTolerance & operator=(const Handle_StepDimTol_ModifiedGeometricTolerance &aHandle);
		%feature("autodoc", "1");
		Handle_StepDimTol_ModifiedGeometricTolerance & operator=(const StepDimTol_ModifiedGeometricTolerance *anItem);
		%feature("autodoc", "1");
		static		Handle_StepDimTol_ModifiedGeometricTolerance DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepDimTol_ModifiedGeometricTolerance {
	StepDimTol_ModifiedGeometricTolerance* GetObject() {
	return (StepDimTol_ModifiedGeometricTolerance*)$self->Access();
	}
};
%feature("shadow") Handle_StepDimTol_ModifiedGeometricTolerance::~Handle_StepDimTol_ModifiedGeometricTolerance %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepDimTol_ModifiedGeometricTolerance {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepDimTol_CommonDatum;
class Handle_StepDimTol_CommonDatum : public Handle_StepRepr_CompositeShapeAspect {
	public:
		%feature("autodoc", "1");
		Handle_StepDimTol_CommonDatum();
		%feature("autodoc", "1");
		Handle_StepDimTol_CommonDatum(const Handle_StepDimTol_CommonDatum &aHandle);
		%feature("autodoc", "1");
		Handle_StepDimTol_CommonDatum(const StepDimTol_CommonDatum *anItem);
		%feature("autodoc", "1");
		Handle_StepDimTol_CommonDatum & operator=(const Handle_StepDimTol_CommonDatum &aHandle);
		%feature("autodoc", "1");
		Handle_StepDimTol_CommonDatum & operator=(const StepDimTol_CommonDatum *anItem);
		%feature("autodoc", "1");
		static		Handle_StepDimTol_CommonDatum DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepDimTol_CommonDatum {
	StepDimTol_CommonDatum* GetObject() {
	return (StepDimTol_CommonDatum*)$self->Access();
	}
};
%feature("shadow") Handle_StepDimTol_CommonDatum::~Handle_StepDimTol_CommonDatum %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepDimTol_CommonDatum {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepDimTol_RoundnessTolerance;
class Handle_StepDimTol_RoundnessTolerance : public Handle_StepDimTol_GeometricTolerance {
	public:
		%feature("autodoc", "1");
		Handle_StepDimTol_RoundnessTolerance();
		%feature("autodoc", "1");
		Handle_StepDimTol_RoundnessTolerance(const Handle_StepDimTol_RoundnessTolerance &aHandle);
		%feature("autodoc", "1");
		Handle_StepDimTol_RoundnessTolerance(const StepDimTol_RoundnessTolerance *anItem);
		%feature("autodoc", "1");
		Handle_StepDimTol_RoundnessTolerance & operator=(const Handle_StepDimTol_RoundnessTolerance &aHandle);
		%feature("autodoc", "1");
		Handle_StepDimTol_RoundnessTolerance & operator=(const StepDimTol_RoundnessTolerance *anItem);
		%feature("autodoc", "1");
		static		Handle_StepDimTol_RoundnessTolerance DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepDimTol_RoundnessTolerance {
	StepDimTol_RoundnessTolerance* GetObject() {
	return (StepDimTol_RoundnessTolerance*)$self->Access();
	}
};
%feature("shadow") Handle_StepDimTol_RoundnessTolerance::~Handle_StepDimTol_RoundnessTolerance %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepDimTol_RoundnessTolerance {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol;
class Handle_StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol : public Handle_StepDimTol_GeometricTolerance {
	public:
		%feature("autodoc", "1");
		Handle_StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol();
		%feature("autodoc", "1");
		Handle_StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol(const Handle_StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol &aHandle);
		%feature("autodoc", "1");
		Handle_StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol(const StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol *anItem);
		%feature("autodoc", "1");
		Handle_StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol & operator=(const Handle_StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol &aHandle);
		%feature("autodoc", "1");
		Handle_StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol & operator=(const StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol *anItem);
		%feature("autodoc", "1");
		static		Handle_StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol {
	StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol* GetObject() {
	return (StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol*)$self->Access();
	}
};
%feature("shadow") Handle_StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol::~Handle_StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepDimTol_GeometricTolerance;
class StepDimTol_GeometricTolerance : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepDimTol_GeometricTolerance();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_TCollection_HAsciiString &aDescription, const Handle_StepBasic_MeasureWithUnit &aMagnitude, const Handle_StepRepr_ShapeAspect &aTolerancedShapeAspect);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Name() const;
		%feature("autodoc", "1");
		void SetName(const Handle_TCollection_HAsciiString &Name);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Description() const;
		%feature("autodoc", "1");
		void SetDescription(const Handle_TCollection_HAsciiString &Description);
		%feature("autodoc", "1");
		Handle_StepBasic_MeasureWithUnit Magnitude() const;
		%feature("autodoc", "1");
		void SetMagnitude(const Handle_StepBasic_MeasureWithUnit &Magnitude);
		%feature("autodoc", "1");
		Handle_StepRepr_ShapeAspect TolerancedShapeAspect() const;
		%feature("autodoc", "1");
		void SetTolerancedShapeAspect(const Handle_StepRepr_ShapeAspect &TolerancedShapeAspect);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepDimTol_GeometricTolerance {
	Handle_StepDimTol_GeometricTolerance GetHandle() {
	return *(Handle_StepDimTol_GeometricTolerance*) &$self;
	}
};
%extend StepDimTol_GeometricTolerance {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") StepDimTol_GeometricTolerance::~StepDimTol_GeometricTolerance %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepDimTol_GeometricTolerance {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepDimTol_StraightnessTolerance;
class StepDimTol_StraightnessTolerance : public StepDimTol_GeometricTolerance {
	public:
		%feature("autodoc", "1");
		StepDimTol_StraightnessTolerance();

};
%extend StepDimTol_StraightnessTolerance {
	Handle_StepDimTol_StraightnessTolerance GetHandle() {
	return *(Handle_StepDimTol_StraightnessTolerance*) &$self;
	}
};
%extend StepDimTol_StraightnessTolerance {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") StepDimTol_StraightnessTolerance::~StepDimTol_StraightnessTolerance %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepDimTol_StraightnessTolerance {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepDimTol_LineProfileTolerance;
class StepDimTol_LineProfileTolerance : public StepDimTol_GeometricTolerance {
	public:
		%feature("autodoc", "1");
		StepDimTol_LineProfileTolerance();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepDimTol_LineProfileTolerance {
	Handle_StepDimTol_LineProfileTolerance GetHandle() {
	return *(Handle_StepDimTol_LineProfileTolerance*) &$self;
	}
};
%extend StepDimTol_LineProfileTolerance {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") StepDimTol_LineProfileTolerance::~StepDimTol_LineProfileTolerance %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepDimTol_LineProfileTolerance {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepDimTol_SurfaceProfileTolerance;
class StepDimTol_SurfaceProfileTolerance : public StepDimTol_GeometricTolerance {
	public:
		%feature("autodoc", "1");
		StepDimTol_SurfaceProfileTolerance();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepDimTol_SurfaceProfileTolerance {
	Handle_StepDimTol_SurfaceProfileTolerance GetHandle() {
	return *(Handle_StepDimTol_SurfaceProfileTolerance*) &$self;
	}
};
%extend StepDimTol_SurfaceProfileTolerance {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") StepDimTol_SurfaceProfileTolerance::~StepDimTol_SurfaceProfileTolerance %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepDimTol_SurfaceProfileTolerance {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepDimTol_CylindricityTolerance;
class StepDimTol_CylindricityTolerance : public StepDimTol_GeometricTolerance {
	public:
		%feature("autodoc", "1");
		StepDimTol_CylindricityTolerance();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepDimTol_CylindricityTolerance {
	Handle_StepDimTol_CylindricityTolerance GetHandle() {
	return *(Handle_StepDimTol_CylindricityTolerance*) &$self;
	}
};
%extend StepDimTol_CylindricityTolerance {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") StepDimTol_CylindricityTolerance::~StepDimTol_CylindricityTolerance %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepDimTol_CylindricityTolerance {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepDimTol_RoundnessTolerance;
class StepDimTol_RoundnessTolerance : public StepDimTol_GeometricTolerance {
	public:
		%feature("autodoc", "1");
		StepDimTol_RoundnessTolerance();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepDimTol_RoundnessTolerance {
	Handle_StepDimTol_RoundnessTolerance GetHandle() {
	return *(Handle_StepDimTol_RoundnessTolerance*) &$self;
	}
};
%extend StepDimTol_RoundnessTolerance {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") StepDimTol_RoundnessTolerance::~StepDimTol_RoundnessTolerance %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepDimTol_RoundnessTolerance {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepDimTol_GeometricToleranceWithDatumReference;
class StepDimTol_GeometricToleranceWithDatumReference : public StepDimTol_GeometricTolerance {
	public:
		%feature("autodoc", "1");
		StepDimTol_GeometricToleranceWithDatumReference();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aGeometricTolerance_Name, const Handle_TCollection_HAsciiString &aGeometricTolerance_Description, const Handle_StepBasic_MeasureWithUnit &aGeometricTolerance_Magnitude, const Handle_StepRepr_ShapeAspect &aGeometricTolerance_TolerancedShapeAspect, const Handle_StepDimTol_HArray1OfDatumReference &aDatumSystem);
		%feature("autodoc", "1");
		Handle_StepDimTol_HArray1OfDatumReference DatumSystem() const;
		%feature("autodoc", "1");
		void SetDatumSystem(const Handle_StepDimTol_HArray1OfDatumReference &DatumSystem);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepDimTol_GeometricToleranceWithDatumReference {
	Handle_StepDimTol_GeometricToleranceWithDatumReference GetHandle() {
	return *(Handle_StepDimTol_GeometricToleranceWithDatumReference*) &$self;
	}
};
%extend StepDimTol_GeometricToleranceWithDatumReference {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") StepDimTol_GeometricToleranceWithDatumReference::~StepDimTol_GeometricToleranceWithDatumReference %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepDimTol_GeometricToleranceWithDatumReference {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepDimTol_TotalRunoutTolerance;
class StepDimTol_TotalRunoutTolerance : public StepDimTol_GeometricToleranceWithDatumReference {
	public:
		%feature("autodoc", "1");
		StepDimTol_TotalRunoutTolerance();

};
%extend StepDimTol_TotalRunoutTolerance {
	Handle_StepDimTol_TotalRunoutTolerance GetHandle() {
	return *(Handle_StepDimTol_TotalRunoutTolerance*) &$self;
	}
};
%extend StepDimTol_TotalRunoutTolerance {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") StepDimTol_TotalRunoutTolerance::~StepDimTol_TotalRunoutTolerance %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepDimTol_TotalRunoutTolerance {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepDimTol_Array1OfDatumReference;
class StepDimTol_Array1OfDatumReference {
	public:
		%feature("autodoc", "1");
		StepDimTol_Array1OfDatumReference(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepDimTol_Array1OfDatumReference(const Handle_StepDimTol_DatumReference &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Handle_StepDimTol_DatumReference &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepDimTol_Array1OfDatumReference & Assign(const StepDimTol_Array1OfDatumReference &Other);
		%feature("autodoc", "1");
		const StepDimTol_Array1OfDatumReference & operator=(const StepDimTol_Array1OfDatumReference &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StepDimTol_DatumReference &Value);
		%feature("autodoc", "1");
		const Handle_StepDimTol_DatumReference & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_StepDimTol_DatumReference & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_StepDimTol_DatumReference & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_StepDimTol_DatumReference & operator()(const Standard_Integer Index);

};
%feature("shadow") StepDimTol_Array1OfDatumReference::~StepDimTol_Array1OfDatumReference %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepDimTol_Array1OfDatumReference {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepDimTol_DatumTarget;
class StepDimTol_DatumTarget : public StepRepr_ShapeAspect {
	public:
		%feature("autodoc", "1");
		StepDimTol_DatumTarget();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aShapeAspect_Name, const Handle_TCollection_HAsciiString &aShapeAspect_Description, const Handle_StepRepr_ProductDefinitionShape &aShapeAspect_OfShape, const StepData_Logical aShapeAspect_ProductDefinitional, const Handle_TCollection_HAsciiString &aTargetId);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString TargetId() const;
		%feature("autodoc", "1");
		void SetTargetId(const Handle_TCollection_HAsciiString &TargetId);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepDimTol_DatumTarget {
	Handle_StepDimTol_DatumTarget GetHandle() {
	return *(Handle_StepDimTol_DatumTarget*) &$self;
	}
};
%extend StepDimTol_DatumTarget {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") StepDimTol_DatumTarget::~StepDimTol_DatumTarget %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepDimTol_DatumTarget {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepDimTol_AngularityTolerance;
class StepDimTol_AngularityTolerance : public StepDimTol_GeometricToleranceWithDatumReference {
	public:
		%feature("autodoc", "1");
		StepDimTol_AngularityTolerance();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepDimTol_AngularityTolerance {
	Handle_StepDimTol_AngularityTolerance GetHandle() {
	return *(Handle_StepDimTol_AngularityTolerance*) &$self;
	}
};
%extend StepDimTol_AngularityTolerance {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") StepDimTol_AngularityTolerance::~StepDimTol_AngularityTolerance %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepDimTol_AngularityTolerance {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepDimTol_ConcentricityTolerance;
class StepDimTol_ConcentricityTolerance : public StepDimTol_GeometricToleranceWithDatumReference {
	public:
		%feature("autodoc", "1");
		StepDimTol_ConcentricityTolerance();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepDimTol_ConcentricityTolerance {
	Handle_StepDimTol_ConcentricityTolerance GetHandle() {
	return *(Handle_StepDimTol_ConcentricityTolerance*) &$self;
	}
};
%extend StepDimTol_ConcentricityTolerance {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") StepDimTol_ConcentricityTolerance::~StepDimTol_ConcentricityTolerance %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepDimTol_ConcentricityTolerance {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepDimTol_HArray1OfDatumReference;
class StepDimTol_HArray1OfDatumReference : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepDimTol_HArray1OfDatumReference(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepDimTol_HArray1OfDatumReference(const Standard_Integer Low, const Standard_Integer Up, const Handle_StepDimTol_DatumReference &V);
		%feature("autodoc", "1");
		void Init(const Handle_StepDimTol_DatumReference &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StepDimTol_DatumReference &Value);
		%feature("autodoc", "1");
		const Handle_StepDimTol_DatumReference & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_StepDimTol_DatumReference & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const StepDimTol_Array1OfDatumReference & Array1() const;
		%feature("autodoc", "1");
		StepDimTol_Array1OfDatumReference & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepDimTol_HArray1OfDatumReference {
	Handle_StepDimTol_HArray1OfDatumReference GetHandle() {
	return *(Handle_StepDimTol_HArray1OfDatumReference*) &$self;
	}
};
%extend StepDimTol_HArray1OfDatumReference {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") StepDimTol_HArray1OfDatumReference::~StepDimTol_HArray1OfDatumReference %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepDimTol_HArray1OfDatumReference {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepDimTol_DatumReference;
class StepDimTol_DatumReference : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepDimTol_DatumReference();
		%feature("autodoc", "1");
		void Init(const Standard_Integer aPrecedence, const Handle_StepDimTol_Datum &aReferencedDatum);
		%feature("autodoc", "1");
		Standard_Integer Precedence() const;
		%feature("autodoc", "1");
		void SetPrecedence(const Standard_Integer Precedence);
		%feature("autodoc", "1");
		Handle_StepDimTol_Datum ReferencedDatum() const;
		%feature("autodoc", "1");
		void SetReferencedDatum(const Handle_StepDimTol_Datum &ReferencedDatum);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepDimTol_DatumReference {
	Handle_StepDimTol_DatumReference GetHandle() {
	return *(Handle_StepDimTol_DatumReference*) &$self;
	}
};
%extend StepDimTol_DatumReference {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") StepDimTol_DatumReference::~StepDimTol_DatumReference %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepDimTol_DatumReference {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepDimTol_ShapeToleranceSelect;
class StepDimTol_ShapeToleranceSelect : public StepData_SelectType {
	public:
		%feature("autodoc", "1");
		StepDimTol_ShapeToleranceSelect();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseNum(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Handle_StepDimTol_GeometricTolerance GeometricTolerance() const;
		%feature("autodoc", "1");
		Handle_StepShape_PlusMinusTolerance PlusMinusTolerance() const;

};
%feature("shadow") StepDimTol_ShapeToleranceSelect::~StepDimTol_ShapeToleranceSelect %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepDimTol_ShapeToleranceSelect {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepDimTol_SymmetryTolerance;
class StepDimTol_SymmetryTolerance : public StepDimTol_GeometricToleranceWithDatumReference {
	public:
		%feature("autodoc", "1");
		StepDimTol_SymmetryTolerance();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepDimTol_SymmetryTolerance {
	Handle_StepDimTol_SymmetryTolerance GetHandle() {
	return *(Handle_StepDimTol_SymmetryTolerance*) &$self;
	}
};
%extend StepDimTol_SymmetryTolerance {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") StepDimTol_SymmetryTolerance::~StepDimTol_SymmetryTolerance %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepDimTol_SymmetryTolerance {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepDimTol_FlatnessTolerance;
class StepDimTol_FlatnessTolerance : public StepDimTol_GeometricTolerance {
	public:
		%feature("autodoc", "1");
		StepDimTol_FlatnessTolerance();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepDimTol_FlatnessTolerance {
	Handle_StepDimTol_FlatnessTolerance GetHandle() {
	return *(Handle_StepDimTol_FlatnessTolerance*) &$self;
	}
};
%extend StepDimTol_FlatnessTolerance {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") StepDimTol_FlatnessTolerance::~StepDimTol_FlatnessTolerance %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepDimTol_FlatnessTolerance {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepDimTol_ParallelismTolerance;
class StepDimTol_ParallelismTolerance : public StepDimTol_GeometricToleranceWithDatumReference {
	public:
		%feature("autodoc", "1");
		StepDimTol_ParallelismTolerance();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepDimTol_ParallelismTolerance {
	Handle_StepDimTol_ParallelismTolerance GetHandle() {
	return *(Handle_StepDimTol_ParallelismTolerance*) &$self;
	}
};
%extend StepDimTol_ParallelismTolerance {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") StepDimTol_ParallelismTolerance::~StepDimTol_ParallelismTolerance %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepDimTol_ParallelismTolerance {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepDimTol_CommonDatum;
class StepDimTol_CommonDatum : public StepRepr_CompositeShapeAspect {
	public:
		%feature("autodoc", "1");
		StepDimTol_CommonDatum();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aShapeAspect_Name, const Handle_TCollection_HAsciiString &aShapeAspect_Description, const Handle_StepRepr_ProductDefinitionShape &aShapeAspect_OfShape, const StepData_Logical aShapeAspect_ProductDefinitional, const Handle_TCollection_HAsciiString &aDatum_Name, const Handle_TCollection_HAsciiString &aDatum_Description, const Handle_StepRepr_ProductDefinitionShape &aDatum_OfShape, const StepData_Logical aDatum_ProductDefinitional, const Handle_TCollection_HAsciiString &aDatum_Identification);
		%feature("autodoc", "1");
		Handle_StepDimTol_Datum Datum() const;
		%feature("autodoc", "1");
		void SetDatum(const Handle_StepDimTol_Datum &Datum);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepDimTol_CommonDatum {
	Handle_StepDimTol_CommonDatum GetHandle() {
	return *(Handle_StepDimTol_CommonDatum*) &$self;
	}
};
%extend StepDimTol_CommonDatum {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") StepDimTol_CommonDatum::~StepDimTol_CommonDatum %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepDimTol_CommonDatum {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol;
class StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol : public StepDimTol_GeometricTolerance {
	public:
		%feature("autodoc", "1");
		StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_TCollection_HAsciiString &aDescription, const Handle_StepBasic_MeasureWithUnit &aMagnitude, const Handle_StepRepr_ShapeAspect &aTolerancedShapeAspect, const Handle_StepDimTol_GeometricToleranceWithDatumReference &aGTWDR, const Handle_StepDimTol_ModifiedGeometricTolerance &aMGT);
		%feature("autodoc", "1");
		void SetGeometricToleranceWithDatumReference(const Handle_StepDimTol_GeometricToleranceWithDatumReference &aGTWDR);
		%feature("autodoc", "1");
		Handle_StepDimTol_GeometricToleranceWithDatumReference GetGeometricToleranceWithDatumReference() const;
		%feature("autodoc", "1");
		void SetModifiedGeometricTolerance(const Handle_StepDimTol_ModifiedGeometricTolerance &aMGT);
		%feature("autodoc", "1");
		Handle_StepDimTol_ModifiedGeometricTolerance GetModifiedGeometricTolerance() const;
		%feature("autodoc", "1");
		void SetPositionTolerance(const Handle_StepDimTol_PositionTolerance &aPT);
		%feature("autodoc", "1");
		Handle_StepDimTol_PositionTolerance GetPositionTolerance() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol {
	Handle_StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol GetHandle() {
	return *(Handle_StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol*) &$self;
	}
};
%extend StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol::~StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepDimTol_ModifiedGeometricTolerance;
class StepDimTol_ModifiedGeometricTolerance : public StepDimTol_GeometricTolerance {
	public:
		%feature("autodoc", "1");
		StepDimTol_ModifiedGeometricTolerance();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aGeometricTolerance_Name, const Handle_TCollection_HAsciiString &aGeometricTolerance_Description, const Handle_StepBasic_MeasureWithUnit &aGeometricTolerance_Magnitude, const Handle_StepRepr_ShapeAspect &aGeometricTolerance_TolerancedShapeAspect, const StepDimTol_LimitCondition aModifier);
		%feature("autodoc", "1");
		StepDimTol_LimitCondition Modifier() const;
		%feature("autodoc", "1");
		void SetModifier(const StepDimTol_LimitCondition Modifier);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepDimTol_ModifiedGeometricTolerance {
	Handle_StepDimTol_ModifiedGeometricTolerance GetHandle() {
	return *(Handle_StepDimTol_ModifiedGeometricTolerance*) &$self;
	}
};
%extend StepDimTol_ModifiedGeometricTolerance {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") StepDimTol_ModifiedGeometricTolerance::~StepDimTol_ModifiedGeometricTolerance %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepDimTol_ModifiedGeometricTolerance {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepDimTol_PerpendicularityTolerance;
class StepDimTol_PerpendicularityTolerance : public StepDimTol_GeometricToleranceWithDatumReference {
	public:
		%feature("autodoc", "1");
		StepDimTol_PerpendicularityTolerance();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepDimTol_PerpendicularityTolerance {
	Handle_StepDimTol_PerpendicularityTolerance GetHandle() {
	return *(Handle_StepDimTol_PerpendicularityTolerance*) &$self;
	}
};
%extend StepDimTol_PerpendicularityTolerance {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") StepDimTol_PerpendicularityTolerance::~StepDimTol_PerpendicularityTolerance %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepDimTol_PerpendicularityTolerance {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepDimTol_CoaxialityTolerance;
class StepDimTol_CoaxialityTolerance : public StepDimTol_GeometricToleranceWithDatumReference {
	public:
		%feature("autodoc", "1");
		StepDimTol_CoaxialityTolerance();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepDimTol_CoaxialityTolerance {
	Handle_StepDimTol_CoaxialityTolerance GetHandle() {
	return *(Handle_StepDimTol_CoaxialityTolerance*) &$self;
	}
};
%extend StepDimTol_CoaxialityTolerance {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") StepDimTol_CoaxialityTolerance::~StepDimTol_CoaxialityTolerance %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepDimTol_CoaxialityTolerance {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepDimTol_DatumFeature;
class StepDimTol_DatumFeature : public StepRepr_ShapeAspect {
	public:
		%feature("autodoc", "1");
		StepDimTol_DatumFeature();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepDimTol_DatumFeature {
	Handle_StepDimTol_DatumFeature GetHandle() {
	return *(Handle_StepDimTol_DatumFeature*) &$self;
	}
};
%extend StepDimTol_DatumFeature {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") StepDimTol_DatumFeature::~StepDimTol_DatumFeature %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepDimTol_DatumFeature {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepDimTol_Datum;
class StepDimTol_Datum : public StepRepr_ShapeAspect {
	public:
		%feature("autodoc", "1");
		StepDimTol_Datum();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aShapeAspect_Name, const Handle_TCollection_HAsciiString &aShapeAspect_Description, const Handle_StepRepr_ProductDefinitionShape &aShapeAspect_OfShape, const StepData_Logical aShapeAspect_ProductDefinitional, const Handle_TCollection_HAsciiString &aIdentification);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Identification() const;
		%feature("autodoc", "1");
		void SetIdentification(const Handle_TCollection_HAsciiString &Identification);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepDimTol_Datum {
	Handle_StepDimTol_Datum GetHandle() {
	return *(Handle_StepDimTol_Datum*) &$self;
	}
};
%extend StepDimTol_Datum {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") StepDimTol_Datum::~StepDimTol_Datum %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepDimTol_Datum {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepDimTol_CircularRunoutTolerance;
class StepDimTol_CircularRunoutTolerance : public StepDimTol_GeometricToleranceWithDatumReference {
	public:
		%feature("autodoc", "1");
		StepDimTol_CircularRunoutTolerance();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepDimTol_CircularRunoutTolerance {
	Handle_StepDimTol_CircularRunoutTolerance GetHandle() {
	return *(Handle_StepDimTol_CircularRunoutTolerance*) &$self;
	}
};
%extend StepDimTol_CircularRunoutTolerance {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") StepDimTol_CircularRunoutTolerance::~StepDimTol_CircularRunoutTolerance %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepDimTol_CircularRunoutTolerance {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepDimTol_PositionTolerance;
class StepDimTol_PositionTolerance : public StepDimTol_GeometricTolerance {
	public:
		%feature("autodoc", "1");
		StepDimTol_PositionTolerance();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepDimTol_PositionTolerance {
	Handle_StepDimTol_PositionTolerance GetHandle() {
	return *(Handle_StepDimTol_PositionTolerance*) &$self;
	}
};
%extend StepDimTol_PositionTolerance {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") StepDimTol_PositionTolerance::~StepDimTol_PositionTolerance %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepDimTol_PositionTolerance {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepDimTol_PlacedDatumTargetFeature;
class StepDimTol_PlacedDatumTargetFeature : public StepDimTol_DatumTarget {
	public:
		%feature("autodoc", "1");
		StepDimTol_PlacedDatumTargetFeature();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepDimTol_PlacedDatumTargetFeature {
	Handle_StepDimTol_PlacedDatumTargetFeature GetHandle() {
	return *(Handle_StepDimTol_PlacedDatumTargetFeature*) &$self;
	}
};
%extend StepDimTol_PlacedDatumTargetFeature {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") StepDimTol_PlacedDatumTargetFeature::~StepDimTol_PlacedDatumTargetFeature %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepDimTol_PlacedDatumTargetFeature {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepDimTol_GeometricToleranceRelationship;
class StepDimTol_GeometricToleranceRelationship : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepDimTol_GeometricToleranceRelationship();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_TCollection_HAsciiString &aDescription, const Handle_StepDimTol_GeometricTolerance &aRelatingGeometricTolerance, const Handle_StepDimTol_GeometricTolerance &aRelatedGeometricTolerance);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Name() const;
		%feature("autodoc", "1");
		void SetName(const Handle_TCollection_HAsciiString &Name);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Description() const;
		%feature("autodoc", "1");
		void SetDescription(const Handle_TCollection_HAsciiString &Description);
		%feature("autodoc", "1");
		Handle_StepDimTol_GeometricTolerance RelatingGeometricTolerance() const;
		%feature("autodoc", "1");
		void SetRelatingGeometricTolerance(const Handle_StepDimTol_GeometricTolerance &RelatingGeometricTolerance);
		%feature("autodoc", "1");
		Handle_StepDimTol_GeometricTolerance RelatedGeometricTolerance() const;
		%feature("autodoc", "1");
		void SetRelatedGeometricTolerance(const Handle_StepDimTol_GeometricTolerance &RelatedGeometricTolerance);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepDimTol_GeometricToleranceRelationship {
	Handle_StepDimTol_GeometricToleranceRelationship GetHandle() {
	return *(Handle_StepDimTol_GeometricToleranceRelationship*) &$self;
	}
};
%extend StepDimTol_GeometricToleranceRelationship {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") StepDimTol_GeometricToleranceRelationship::~StepDimTol_GeometricToleranceRelationship %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepDimTol_GeometricToleranceRelationship {
	void _kill_pointed() {
		delete $self;
	}
};
