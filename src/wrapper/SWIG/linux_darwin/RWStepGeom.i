/*

Copyright 2008-2010 Thomas Paviot (tpaviot@gmail.com)

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

$Revision
$Date
$Author
$HeaderURL

*/


%{
#ifdef WNT
#pragma warning(disable : 4716)
#endif
%}

%module RWStepGeom
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include RWStepGeom_renames.i


%include RWStepGeom_required_python_modules.i


%include RWStepGeom_dependencies.i


%include RWStepGeom_headers.i




%nodefaultctor RWStepGeom_RWGeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx;
class RWStepGeom_RWGeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWGeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepGeom_RWGeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx::~RWStepGeom_RWGeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepGeom_RWGeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepGeom_RWQuasiUniformSurfaceAndRationalBSplineSurface;
class RWStepGeom_RWQuasiUniformSurfaceAndRationalBSplineSurface {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWQuasiUniformSurfaceAndRationalBSplineSurface();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_QuasiUniformSurfaceAndRationalBSplineSurface &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_QuasiUniformSurfaceAndRationalBSplineSurface &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_QuasiUniformSurfaceAndRationalBSplineSurface &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepGeom_RWQuasiUniformSurfaceAndRationalBSplineSurface::~RWStepGeom_RWQuasiUniformSurfaceAndRationalBSplineSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepGeom_RWQuasiUniformSurfaceAndRationalBSplineSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepGeom_RWBoundedCurve;
class RWStepGeom_RWBoundedCurve {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWBoundedCurve();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_BoundedCurve &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_BoundedCurve &ent) const;

};
%feature("shadow") RWStepGeom_RWBoundedCurve::~RWStepGeom_RWBoundedCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepGeom_RWBoundedCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepGeom_RWPointReplica;
class RWStepGeom_RWPointReplica {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWPointReplica();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_PointReplica &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_PointReplica &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_PointReplica &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepGeom_RWPointReplica::~RWStepGeom_RWPointReplica %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepGeom_RWPointReplica {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepGeom_RWDegeneratePcurve;
class RWStepGeom_RWDegeneratePcurve {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWDegeneratePcurve();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_DegeneratePcurve &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_DegeneratePcurve &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_DegeneratePcurve &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepGeom_RWDegeneratePcurve::~RWStepGeom_RWDegeneratePcurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepGeom_RWDegeneratePcurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepGeom_RWSurface;
class RWStepGeom_RWSurface {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWSurface();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_Surface &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_Surface &ent) const;

};
%feature("shadow") RWStepGeom_RWSurface::~RWStepGeom_RWSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepGeom_RWSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepGeom_RWEvaluatedDegeneratePcurve;
class RWStepGeom_RWEvaluatedDegeneratePcurve {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWEvaluatedDegeneratePcurve();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_EvaluatedDegeneratePcurve &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_EvaluatedDegeneratePcurve &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_EvaluatedDegeneratePcurve &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepGeom_RWEvaluatedDegeneratePcurve::~RWStepGeom_RWEvaluatedDegeneratePcurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepGeom_RWEvaluatedDegeneratePcurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepGeom_RWGeometricRepresentationContext;
class RWStepGeom_RWGeometricRepresentationContext {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWGeometricRepresentationContext();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_GeometricRepresentationContext &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_GeometricRepresentationContext &ent) const;

};
%feature("shadow") RWStepGeom_RWGeometricRepresentationContext::~RWStepGeom_RWGeometricRepresentationContext %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepGeom_RWGeometricRepresentationContext {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepGeom_RWRectangularTrimmedSurface;
class RWStepGeom_RWRectangularTrimmedSurface {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWRectangularTrimmedSurface();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_RectangularTrimmedSurface &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_RectangularTrimmedSurface &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_RectangularTrimmedSurface &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepGeom_RWRectangularTrimmedSurface::~RWStepGeom_RWRectangularTrimmedSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepGeom_RWRectangularTrimmedSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepGeom_RWDegenerateToroidalSurface;
class RWStepGeom_RWDegenerateToroidalSurface {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWDegenerateToroidalSurface();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_DegenerateToroidalSurface &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_DegenerateToroidalSurface &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_DegenerateToroidalSurface &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepGeom_RWDegenerateToroidalSurface::~RWStepGeom_RWDegenerateToroidalSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepGeom_RWDegenerateToroidalSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepGeom_RWCompositeCurveSegment;
class RWStepGeom_RWCompositeCurveSegment {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWCompositeCurveSegment();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_CompositeCurveSegment &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_CompositeCurveSegment &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_CompositeCurveSegment &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepGeom_RWCompositeCurveSegment::~RWStepGeom_RWCompositeCurveSegment %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepGeom_RWCompositeCurveSegment {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepGeom_RWVector;
class RWStepGeom_RWVector {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWVector();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_Vector &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_Vector &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_Vector &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		void Check(const Handle_StepGeom_Vector &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;

};
%feature("shadow") RWStepGeom_RWVector::~RWStepGeom_RWVector %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepGeom_RWVector {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepGeom_RWOffsetSurface;
class RWStepGeom_RWOffsetSurface {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWOffsetSurface();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_OffsetSurface &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_OffsetSurface &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_OffsetSurface &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepGeom_RWOffsetSurface::~RWStepGeom_RWOffsetSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepGeom_RWOffsetSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepGeom_RWBoundedSurface;
class RWStepGeom_RWBoundedSurface {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWBoundedSurface();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_BoundedSurface &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_BoundedSurface &ent) const;

};
%feature("shadow") RWStepGeom_RWBoundedSurface::~RWStepGeom_RWBoundedSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepGeom_RWBoundedSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepGeom_RWQuasiUniformCurve;
class RWStepGeom_RWQuasiUniformCurve {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWQuasiUniformCurve();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_QuasiUniformCurve &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_QuasiUniformCurve &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_QuasiUniformCurve &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepGeom_RWQuasiUniformCurve::~RWStepGeom_RWQuasiUniformCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepGeom_RWQuasiUniformCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepGeom_RWCartesianTransformationOperator3d;
class RWStepGeom_RWCartesianTransformationOperator3d {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWCartesianTransformationOperator3d();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_CartesianTransformationOperator3d &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_CartesianTransformationOperator3d &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_CartesianTransformationOperator3d &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepGeom_RWCartesianTransformationOperator3d::~RWStepGeom_RWCartesianTransformationOperator3d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepGeom_RWCartesianTransformationOperator3d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepGeom_RWCurve;
class RWStepGeom_RWCurve {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWCurve();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_Curve &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_Curve &ent) const;

};
%feature("shadow") RWStepGeom_RWCurve::~RWStepGeom_RWCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepGeom_RWCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepGeom_RWAxis1Placement;
class RWStepGeom_RWAxis1Placement {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWAxis1Placement();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_Axis1Placement &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_Axis1Placement &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_Axis1Placement &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepGeom_RWAxis1Placement::~RWStepGeom_RWAxis1Placement %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepGeom_RWAxis1Placement {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepGeom_RWConicalSurface;
class RWStepGeom_RWConicalSurface {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWConicalSurface();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_ConicalSurface &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_ConicalSurface &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_ConicalSurface &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepGeom_RWConicalSurface::~RWStepGeom_RWConicalSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepGeom_RWConicalSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepGeom_RWSurfaceCurve;
class RWStepGeom_RWSurfaceCurve {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWSurfaceCurve();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_SurfaceCurve &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_SurfaceCurve &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_SurfaceCurve &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepGeom_RWSurfaceCurve::~RWStepGeom_RWSurfaceCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepGeom_RWSurfaceCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepGeom_RWToroidalSurface;
class RWStepGeom_RWToroidalSurface {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWToroidalSurface();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_ToroidalSurface &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_ToroidalSurface &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_ToroidalSurface &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		void Check(const Handle_StepGeom_ToroidalSurface &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;

};
%feature("shadow") RWStepGeom_RWToroidalSurface::~RWStepGeom_RWToroidalSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepGeom_RWToroidalSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepGeom_RWBezierCurve;
class RWStepGeom_RWBezierCurve {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWBezierCurve();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_BezierCurve &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_BezierCurve &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_BezierCurve &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepGeom_RWBezierCurve::~RWStepGeom_RWBezierCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepGeom_RWBezierCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepGeom_RWReparametrisedCompositeCurveSegment;
class RWStepGeom_RWReparametrisedCompositeCurveSegment {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWReparametrisedCompositeCurveSegment();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_ReparametrisedCompositeCurveSegment &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_ReparametrisedCompositeCurveSegment &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_ReparametrisedCompositeCurveSegment &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepGeom_RWReparametrisedCompositeCurveSegment::~RWStepGeom_RWReparametrisedCompositeCurveSegment %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepGeom_RWReparametrisedCompositeCurveSegment {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepGeom_RWElementarySurface;
class RWStepGeom_RWElementarySurface {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWElementarySurface();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_ElementarySurface &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_ElementarySurface &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_ElementarySurface &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepGeom_RWElementarySurface::~RWStepGeom_RWElementarySurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepGeom_RWElementarySurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepGeom_RWCylindricalSurface;
class RWStepGeom_RWCylindricalSurface {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWCylindricalSurface();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_CylindricalSurface &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_CylindricalSurface &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_CylindricalSurface &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepGeom_RWCylindricalSurface::~RWStepGeom_RWCylindricalSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepGeom_RWCylindricalSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepGeom_RWBoundaryCurve;
class RWStepGeom_RWBoundaryCurve {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWBoundaryCurve();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_BoundaryCurve &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_BoundaryCurve &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_BoundaryCurve &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepGeom_RWBoundaryCurve::~RWStepGeom_RWBoundaryCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepGeom_RWBoundaryCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepGeom_RWRationalBSplineSurface;
class RWStepGeom_RWRationalBSplineSurface {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWRationalBSplineSurface();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_RationalBSplineSurface &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_RationalBSplineSurface &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_RationalBSplineSurface &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		void Check(const Handle_StepGeom_RationalBSplineSurface &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;

};
%feature("shadow") RWStepGeom_RWRationalBSplineSurface::~RWStepGeom_RWRationalBSplineSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepGeom_RWRationalBSplineSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepGeom_RWSeamCurve;
class RWStepGeom_RWSeamCurve {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWSeamCurve();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_SeamCurve &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_SeamCurve &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_SeamCurve &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepGeom_RWSeamCurve::~RWStepGeom_RWSeamCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepGeom_RWSeamCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepGeom_RWSurfacePatch;
class RWStepGeom_RWSurfacePatch {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWSurfacePatch();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_SurfacePatch &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_SurfacePatch &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_SurfacePatch &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepGeom_RWSurfacePatch::~RWStepGeom_RWSurfacePatch %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepGeom_RWSurfacePatch {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepGeom_RWOuterBoundaryCurve;
class RWStepGeom_RWOuterBoundaryCurve {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWOuterBoundaryCurve();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_OuterBoundaryCurve &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_OuterBoundaryCurve &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_OuterBoundaryCurve &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepGeom_RWOuterBoundaryCurve::~RWStepGeom_RWOuterBoundaryCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepGeom_RWOuterBoundaryCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepGeom_RWCompositeCurveOnSurface;
class RWStepGeom_RWCompositeCurveOnSurface {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWCompositeCurveOnSurface();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_CompositeCurveOnSurface &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_CompositeCurveOnSurface &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_CompositeCurveOnSurface &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepGeom_RWCompositeCurveOnSurface::~RWStepGeom_RWCompositeCurveOnSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepGeom_RWCompositeCurveOnSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepGeom_RWQuasiUniformCurveAndRationalBSplineCurve;
class RWStepGeom_RWQuasiUniformCurveAndRationalBSplineCurve {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWQuasiUniformCurveAndRationalBSplineCurve();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_QuasiUniformCurveAndRationalBSplineCurve &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_QuasiUniformCurveAndRationalBSplineCurve &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_QuasiUniformCurveAndRationalBSplineCurve &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepGeom_RWQuasiUniformCurveAndRationalBSplineCurve::~RWStepGeom_RWQuasiUniformCurveAndRationalBSplineCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepGeom_RWQuasiUniformCurveAndRationalBSplineCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepGeom_RWUniformCurve;
class RWStepGeom_RWUniformCurve {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWUniformCurve();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_UniformCurve &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_UniformCurve &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_UniformCurve &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepGeom_RWUniformCurve::~RWStepGeom_RWUniformCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepGeom_RWUniformCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepGeom_RWPointOnSurface;
class RWStepGeom_RWPointOnSurface {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWPointOnSurface();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_PointOnSurface &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_PointOnSurface &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_PointOnSurface &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepGeom_RWPointOnSurface::~RWStepGeom_RWPointOnSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepGeom_RWPointOnSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepGeom_RWSurfaceOfLinearExtrusion;
class RWStepGeom_RWSurfaceOfLinearExtrusion {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWSurfaceOfLinearExtrusion();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_SurfaceOfLinearExtrusion &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_SurfaceOfLinearExtrusion &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_SurfaceOfLinearExtrusion &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepGeom_RWSurfaceOfLinearExtrusion::~RWStepGeom_RWSurfaceOfLinearExtrusion %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepGeom_RWSurfaceOfLinearExtrusion {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepGeom_RWParabola;
class RWStepGeom_RWParabola {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWParabola();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_Parabola &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_Parabola &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_Parabola &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepGeom_RWParabola::~RWStepGeom_RWParabola %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepGeom_RWParabola {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepGeom_RWCartesianPoint;
class RWStepGeom_RWCartesianPoint {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWCartesianPoint();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_CartesianPoint &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_CartesianPoint &ent) const;

};
%feature("shadow") RWStepGeom_RWCartesianPoint::~RWStepGeom_RWCartesianPoint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepGeom_RWCartesianPoint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepGeom_RWUniformSurface;
class RWStepGeom_RWUniformSurface {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWUniformSurface();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_UniformSurface &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_UniformSurface &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_UniformSurface &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepGeom_RWUniformSurface::~RWStepGeom_RWUniformSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepGeom_RWUniformSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepGeom_RWBSplineCurveWithKnotsAndRationalBSplineCurve;
class RWStepGeom_RWBSplineCurveWithKnotsAndRationalBSplineCurve {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWBSplineCurveWithKnotsAndRationalBSplineCurve();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		void Check(const Handle_StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;

};
%feature("shadow") RWStepGeom_RWBSplineCurveWithKnotsAndRationalBSplineCurve::~RWStepGeom_RWBSplineCurveWithKnotsAndRationalBSplineCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepGeom_RWBSplineCurveWithKnotsAndRationalBSplineCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepGeom_RWAxis2Placement3d;
class RWStepGeom_RWAxis2Placement3d {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWAxis2Placement3d();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_Axis2Placement3d &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_Axis2Placement3d &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_Axis2Placement3d &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepGeom_RWAxis2Placement3d::~RWStepGeom_RWAxis2Placement3d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepGeom_RWAxis2Placement3d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepGeom_RWGeometricRepresentationContextAndGlobalUnitAssignedContext;
class RWStepGeom_RWGeometricRepresentationContextAndGlobalUnitAssignedContext {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWGeometricRepresentationContextAndGlobalUnitAssignedContext();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepGeom_RWGeometricRepresentationContextAndGlobalUnitAssignedContext::~RWStepGeom_RWGeometricRepresentationContextAndGlobalUnitAssignedContext %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepGeom_RWGeometricRepresentationContextAndGlobalUnitAssignedContext {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepGeom_RWUniformSurfaceAndRationalBSplineSurface;
class RWStepGeom_RWUniformSurfaceAndRationalBSplineSurface {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWUniformSurfaceAndRationalBSplineSurface();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_UniformSurfaceAndRationalBSplineSurface &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_UniformSurfaceAndRationalBSplineSurface &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_UniformSurfaceAndRationalBSplineSurface &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepGeom_RWUniformSurfaceAndRationalBSplineSurface::~RWStepGeom_RWUniformSurfaceAndRationalBSplineSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepGeom_RWUniformSurfaceAndRationalBSplineSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepGeom_RWPlane;
class RWStepGeom_RWPlane {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWPlane();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_Plane &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_Plane &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_Plane &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepGeom_RWPlane::~RWStepGeom_RWPlane %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepGeom_RWPlane {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepGeom_RWPointOnCurve;
class RWStepGeom_RWPointOnCurve {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWPointOnCurve();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_PointOnCurve &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_PointOnCurve &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_PointOnCurve &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepGeom_RWPointOnCurve::~RWStepGeom_RWPointOnCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepGeom_RWPointOnCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepGeom_RWGeometricRepresentationItem;
class RWStepGeom_RWGeometricRepresentationItem {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWGeometricRepresentationItem();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_GeometricRepresentationItem &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_GeometricRepresentationItem &ent) const;

};
%feature("shadow") RWStepGeom_RWGeometricRepresentationItem::~RWStepGeom_RWGeometricRepresentationItem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepGeom_RWGeometricRepresentationItem {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepGeom_RWCircle;
class RWStepGeom_RWCircle {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWCircle();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_Circle &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_Circle &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_Circle &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepGeom_RWCircle::~RWStepGeom_RWCircle %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepGeom_RWCircle {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepGeom_RWCurveBoundedSurface;
class RWStepGeom_RWCurveBoundedSurface {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWCurveBoundedSurface();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_CurveBoundedSurface &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_CurveBoundedSurface &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_CurveBoundedSurface &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepGeom_RWCurveBoundedSurface::~RWStepGeom_RWCurveBoundedSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepGeom_RWCurveBoundedSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepGeom_RWTrimmedCurve;
class RWStepGeom_RWTrimmedCurve {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWTrimmedCurve();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_TrimmedCurve &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_TrimmedCurve &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_TrimmedCurve &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepGeom_RWTrimmedCurve::~RWStepGeom_RWTrimmedCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepGeom_RWTrimmedCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepGeom_RWRectangularCompositeSurface;
class RWStepGeom_RWRectangularCompositeSurface {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWRectangularCompositeSurface();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_RectangularCompositeSurface &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_RectangularCompositeSurface &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_RectangularCompositeSurface &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepGeom_RWRectangularCompositeSurface::~RWStepGeom_RWRectangularCompositeSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepGeom_RWRectangularCompositeSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepGeom_RWOrientedSurface;
class RWStepGeom_RWOrientedSurface {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWOrientedSurface();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_OrientedSurface &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_OrientedSurface &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_OrientedSurface &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepGeom_RWOrientedSurface::~RWStepGeom_RWOrientedSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepGeom_RWOrientedSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepGeom_RWCurveReplica;
class RWStepGeom_RWCurveReplica {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWCurveReplica();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_CurveReplica &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_CurveReplica &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_CurveReplica &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepGeom_RWCurveReplica::~RWStepGeom_RWCurveReplica %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepGeom_RWCurveReplica {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepGeom_RWAxis2Placement2d;
class RWStepGeom_RWAxis2Placement2d {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWAxis2Placement2d();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_Axis2Placement2d &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_Axis2Placement2d &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_Axis2Placement2d &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepGeom_RWAxis2Placement2d::~RWStepGeom_RWAxis2Placement2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepGeom_RWAxis2Placement2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepGeom_RWRationalBSplineCurve;
class RWStepGeom_RWRationalBSplineCurve {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWRationalBSplineCurve();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_RationalBSplineCurve &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_RationalBSplineCurve &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_RationalBSplineCurve &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		void Check(const Handle_StepGeom_RationalBSplineCurve &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;

};
%feature("shadow") RWStepGeom_RWRationalBSplineCurve::~RWStepGeom_RWRationalBSplineCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepGeom_RWRationalBSplineCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepGeom_RWDirection;
class RWStepGeom_RWDirection {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWDirection();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_Direction &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_Direction &ent) const;
		%feature("autodoc", "1");
		void Check(const Handle_StepGeom_Direction &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;

};
%feature("shadow") RWStepGeom_RWDirection::~RWStepGeom_RWDirection %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepGeom_RWDirection {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepGeom_RWBSplineCurve;
class RWStepGeom_RWBSplineCurve {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWBSplineCurve();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_BSplineCurve &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_BSplineCurve &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_BSplineCurve &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepGeom_RWBSplineCurve::~RWStepGeom_RWBSplineCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepGeom_RWBSplineCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepGeom_RWBSplineSurface;
class RWStepGeom_RWBSplineSurface {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWBSplineSurface();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_BSplineSurface &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_BSplineSurface &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_BSplineSurface &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepGeom_RWBSplineSurface::~RWStepGeom_RWBSplineSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepGeom_RWBSplineSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepGeom_RWUniformCurveAndRationalBSplineCurve;
class RWStepGeom_RWUniformCurveAndRationalBSplineCurve {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWUniformCurveAndRationalBSplineCurve();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_UniformCurveAndRationalBSplineCurve &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_UniformCurveAndRationalBSplineCurve &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_UniformCurveAndRationalBSplineCurve &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepGeom_RWUniformCurveAndRationalBSplineCurve::~RWStepGeom_RWUniformCurveAndRationalBSplineCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepGeom_RWUniformCurveAndRationalBSplineCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepGeom_RWPlacement;
class RWStepGeom_RWPlacement {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWPlacement();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_Placement &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_Placement &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_Placement &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepGeom_RWPlacement::~RWStepGeom_RWPlacement %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepGeom_RWPlacement {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepGeom_RWPoint;
class RWStepGeom_RWPoint {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWPoint();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_Point &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_Point &ent) const;

};
%feature("shadow") RWStepGeom_RWPoint::~RWStepGeom_RWPoint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepGeom_RWPoint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepGeom_RWCartesianTransformationOperator;
class RWStepGeom_RWCartesianTransformationOperator {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWCartesianTransformationOperator();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_CartesianTransformationOperator &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_CartesianTransformationOperator &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_CartesianTransformationOperator &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepGeom_RWCartesianTransformationOperator::~RWStepGeom_RWCartesianTransformationOperator %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepGeom_RWCartesianTransformationOperator {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepGeom_RWPcurve;
class RWStepGeom_RWPcurve {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWPcurve();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_Pcurve &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_Pcurve &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_Pcurve &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepGeom_RWPcurve::~RWStepGeom_RWPcurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepGeom_RWPcurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepGeom_RWSurfaceCurveAndBoundedCurve;
class RWStepGeom_RWSurfaceCurveAndBoundedCurve {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWSurfaceCurveAndBoundedCurve();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_SurfaceCurveAndBoundedCurve &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_SurfaceCurveAndBoundedCurve &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_SurfaceCurveAndBoundedCurve &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepGeom_RWSurfaceCurveAndBoundedCurve::~RWStepGeom_RWSurfaceCurveAndBoundedCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepGeom_RWSurfaceCurveAndBoundedCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepGeom_RWEllipse;
class RWStepGeom_RWEllipse {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWEllipse();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_Ellipse &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_Ellipse &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_Ellipse &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		void Check(const Handle_StepGeom_Ellipse &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;

};
%feature("shadow") RWStepGeom_RWEllipse::~RWStepGeom_RWEllipse %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepGeom_RWEllipse {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepGeom_RWBSplineSurfaceWithKnotsAndRationalBSplineSurface;
class RWStepGeom_RWBSplineSurfaceWithKnotsAndRationalBSplineSurface {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWBSplineSurfaceWithKnotsAndRationalBSplineSurface();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		void Check(const Handle_StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;

};
%feature("shadow") RWStepGeom_RWBSplineSurfaceWithKnotsAndRationalBSplineSurface::~RWStepGeom_RWBSplineSurfaceWithKnotsAndRationalBSplineSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepGeom_RWBSplineSurfaceWithKnotsAndRationalBSplineSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepGeom_RWBSplineCurveWithKnots;
class RWStepGeom_RWBSplineCurveWithKnots {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWBSplineCurveWithKnots();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_BSplineCurveWithKnots &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_BSplineCurveWithKnots &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_BSplineCurveWithKnots &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		void Check(const Handle_StepGeom_BSplineCurveWithKnots &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;

};
%feature("shadow") RWStepGeom_RWBSplineCurveWithKnots::~RWStepGeom_RWBSplineCurveWithKnots %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepGeom_RWBSplineCurveWithKnots {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepGeom_RWBezierCurveAndRationalBSplineCurve;
class RWStepGeom_RWBezierCurveAndRationalBSplineCurve {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWBezierCurveAndRationalBSplineCurve();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_BezierCurveAndRationalBSplineCurve &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_BezierCurveAndRationalBSplineCurve &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_BezierCurveAndRationalBSplineCurve &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepGeom_RWBezierCurveAndRationalBSplineCurve::~RWStepGeom_RWBezierCurveAndRationalBSplineCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepGeom_RWBezierCurveAndRationalBSplineCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepGeom_RWSphericalSurface;
class RWStepGeom_RWSphericalSurface {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWSphericalSurface();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_SphericalSurface &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_SphericalSurface &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_SphericalSurface &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepGeom_RWSphericalSurface::~RWStepGeom_RWSphericalSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepGeom_RWSphericalSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepGeom_RWCompositeCurve;
class RWStepGeom_RWCompositeCurve {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWCompositeCurve();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_CompositeCurve &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_CompositeCurve &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_CompositeCurve &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepGeom_RWCompositeCurve::~RWStepGeom_RWCompositeCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepGeom_RWCompositeCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepGeom_RWSurfaceOfRevolution;
class RWStepGeom_RWSurfaceOfRevolution {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWSurfaceOfRevolution();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_SurfaceOfRevolution &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_SurfaceOfRevolution &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_SurfaceOfRevolution &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepGeom_RWSurfaceOfRevolution::~RWStepGeom_RWSurfaceOfRevolution %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepGeom_RWSurfaceOfRevolution {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepGeom_RWBezierSurfaceAndRationalBSplineSurface;
class RWStepGeom_RWBezierSurfaceAndRationalBSplineSurface {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWBezierSurfaceAndRationalBSplineSurface();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_BezierSurfaceAndRationalBSplineSurface &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_BezierSurfaceAndRationalBSplineSurface &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_BezierSurfaceAndRationalBSplineSurface &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepGeom_RWBezierSurfaceAndRationalBSplineSurface::~RWStepGeom_RWBezierSurfaceAndRationalBSplineSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepGeom_RWBezierSurfaceAndRationalBSplineSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepGeom_RWSweptSurface;
class RWStepGeom_RWSweptSurface {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWSweptSurface();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_SweptSurface &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_SweptSurface &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_SweptSurface &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepGeom_RWSweptSurface::~RWStepGeom_RWSweptSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepGeom_RWSweptSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepGeom_RWSurfaceReplica;
class RWStepGeom_RWSurfaceReplica {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWSurfaceReplica();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_SurfaceReplica &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_SurfaceReplica &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_SurfaceReplica &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepGeom_RWSurfaceReplica::~RWStepGeom_RWSurfaceReplica %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepGeom_RWSurfaceReplica {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepGeom_RWGeometricRepresentationContextAndParametricRepresentationContext;
class RWStepGeom_RWGeometricRepresentationContextAndParametricRepresentationContext {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWGeometricRepresentationContextAndParametricRepresentationContext();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_GeometricRepresentationContextAndParametricRepresentationContext &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_GeometricRepresentationContextAndParametricRepresentationContext &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_GeometricRepresentationContextAndParametricRepresentationContext &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepGeom_RWGeometricRepresentationContextAndParametricRepresentationContext::~RWStepGeom_RWGeometricRepresentationContextAndParametricRepresentationContext %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepGeom_RWGeometricRepresentationContextAndParametricRepresentationContext {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepGeom_RWOffsetCurve3d;
class RWStepGeom_RWOffsetCurve3d {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWOffsetCurve3d();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_OffsetCurve3d &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_OffsetCurve3d &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_OffsetCurve3d &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepGeom_RWOffsetCurve3d::~RWStepGeom_RWOffsetCurve3d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepGeom_RWOffsetCurve3d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepGeom_RWQuasiUniformSurface;
class RWStepGeom_RWQuasiUniformSurface {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWQuasiUniformSurface();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_QuasiUniformSurface &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_QuasiUniformSurface &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_QuasiUniformSurface &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepGeom_RWQuasiUniformSurface::~RWStepGeom_RWQuasiUniformSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepGeom_RWQuasiUniformSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepGeom_RWBSplineSurfaceWithKnots;
class RWStepGeom_RWBSplineSurfaceWithKnots {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWBSplineSurfaceWithKnots();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_BSplineSurfaceWithKnots &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_BSplineSurfaceWithKnots &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_BSplineSurfaceWithKnots &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		void Check(const Handle_StepGeom_BSplineSurfaceWithKnots &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;

};
%feature("shadow") RWStepGeom_RWBSplineSurfaceWithKnots::~RWStepGeom_RWBSplineSurfaceWithKnots %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepGeom_RWBSplineSurfaceWithKnots {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepGeom_RWPolyline;
class RWStepGeom_RWPolyline {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWPolyline();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_Polyline &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_Polyline &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_Polyline &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepGeom_RWPolyline::~RWStepGeom_RWPolyline %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepGeom_RWPolyline {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepGeom_RWBezierSurface;
class RWStepGeom_RWBezierSurface {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWBezierSurface();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_BezierSurface &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_BezierSurface &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_BezierSurface &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepGeom_RWBezierSurface::~RWStepGeom_RWBezierSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepGeom_RWBezierSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepGeom_RWIntersectionCurve;
class RWStepGeom_RWIntersectionCurve {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWIntersectionCurve();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_IntersectionCurve &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_IntersectionCurve &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_IntersectionCurve &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepGeom_RWIntersectionCurve::~RWStepGeom_RWIntersectionCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepGeom_RWIntersectionCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepGeom_RWConic;
class RWStepGeom_RWConic {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWConic();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_Conic &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_Conic &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_Conic &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepGeom_RWConic::~RWStepGeom_RWConic %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepGeom_RWConic {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepGeom_RWHyperbola;
class RWStepGeom_RWHyperbola {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWHyperbola();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_Hyperbola &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_Hyperbola &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_Hyperbola &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepGeom_RWHyperbola::~RWStepGeom_RWHyperbola %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepGeom_RWHyperbola {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepGeom_RWLine;
class RWStepGeom_RWLine {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWLine();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_Line &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_Line &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_Line &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepGeom_RWLine::~RWStepGeom_RWLine %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepGeom_RWLine {
	void _kill_pointed() {
		delete $self;
	}
};
