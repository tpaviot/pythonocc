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
%module IGESToBRep
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%pythoncode {
import GarbageCollector
};

%include IGESToBRep_dependencies.i


%include IGESToBRep_headers.i




%nodefaultctor Handle_IGESToBRep_Actor;
class Handle_IGESToBRep_Actor : public Handle_Transfer_ActorOfTransientProcess {
	public:
		%feature("autodoc", "1");
		Handle_IGESToBRep_Actor();
		%feature("autodoc", "1");
		Handle_IGESToBRep_Actor(const IGESToBRep_Actor *aHandle);
		%feature("autodoc", "1");
		Handle_IGESToBRep_Actor(const IGESToBRep_Actor *anItem);
		%feature("autodoc", "1");
		Handle_IGESToBRep_Actor & operator=(const IGESToBRep_Actor *aHandle);
		%feature("autodoc", "1");
		Handle_IGESToBRep_Actor & operator=(const IGESToBRep_Actor *anItem);
		%feature("autodoc", "1");
		Handle_IGESToBRep_Actor const DownCast(const Standard_Transient *AnObject);

};
%extend Handle_IGESToBRep_Actor {
	IGESToBRep_Actor* GetObject() {
	return (IGESToBRep_Actor*)$self->Access();
	}
};
%feature("shadow") Handle_IGESToBRep_Actor::~Handle_IGESToBRep_Actor %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESToBRep_Actor {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESToBRep_IGESBoundary;
class Handle_IGESToBRep_IGESBoundary : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_IGESToBRep_IGESBoundary();
		%feature("autodoc", "1");
		Handle_IGESToBRep_IGESBoundary(const IGESToBRep_IGESBoundary *aHandle);
		%feature("autodoc", "1");
		Handle_IGESToBRep_IGESBoundary(const IGESToBRep_IGESBoundary *anItem);
		%feature("autodoc", "1");
		Handle_IGESToBRep_IGESBoundary & operator=(const IGESToBRep_IGESBoundary *aHandle);
		%feature("autodoc", "1");
		Handle_IGESToBRep_IGESBoundary & operator=(const IGESToBRep_IGESBoundary *anItem);
		%feature("autodoc", "1");
		Handle_IGESToBRep_IGESBoundary const DownCast(const Standard_Transient *AnObject);

};
%extend Handle_IGESToBRep_IGESBoundary {
	IGESToBRep_IGESBoundary* GetObject() {
	return (IGESToBRep_IGESBoundary*)$self->Access();
	}
};
%feature("shadow") Handle_IGESToBRep_IGESBoundary::~Handle_IGESToBRep_IGESBoundary %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESToBRep_IGESBoundary {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESToBRep_AlgoContainer;
class Handle_IGESToBRep_AlgoContainer : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_IGESToBRep_AlgoContainer();
		%feature("autodoc", "1");
		Handle_IGESToBRep_AlgoContainer(const IGESToBRep_AlgoContainer *aHandle);
		%feature("autodoc", "1");
		Handle_IGESToBRep_AlgoContainer(const IGESToBRep_AlgoContainer *anItem);
		%feature("autodoc", "1");
		Handle_IGESToBRep_AlgoContainer & operator=(const IGESToBRep_AlgoContainer *aHandle);
		%feature("autodoc", "1");
		Handle_IGESToBRep_AlgoContainer & operator=(const IGESToBRep_AlgoContainer *anItem);
		%feature("autodoc", "1");
		Handle_IGESToBRep_AlgoContainer const DownCast(const Standard_Transient *AnObject);

};
%extend Handle_IGESToBRep_AlgoContainer {
	IGESToBRep_AlgoContainer* GetObject() {
	return (IGESToBRep_AlgoContainer*)$self->Access();
	}
};
%feature("shadow") Handle_IGESToBRep_AlgoContainer::~Handle_IGESToBRep_AlgoContainer %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESToBRep_AlgoContainer {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESToBRep_ToolContainer;
class Handle_IGESToBRep_ToolContainer : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_IGESToBRep_ToolContainer();
		%feature("autodoc", "1");
		Handle_IGESToBRep_ToolContainer(const IGESToBRep_ToolContainer *aHandle);
		%feature("autodoc", "1");
		Handle_IGESToBRep_ToolContainer(const IGESToBRep_ToolContainer *anItem);
		%feature("autodoc", "1");
		Handle_IGESToBRep_ToolContainer & operator=(const IGESToBRep_ToolContainer *aHandle);
		%feature("autodoc", "1");
		Handle_IGESToBRep_ToolContainer & operator=(const IGESToBRep_ToolContainer *anItem);
		%feature("autodoc", "1");
		Handle_IGESToBRep_ToolContainer const DownCast(const Standard_Transient *AnObject);

};
%extend Handle_IGESToBRep_ToolContainer {
	IGESToBRep_ToolContainer* GetObject() {
	return (IGESToBRep_ToolContainer*)$self->Access();
	}
};
%feature("shadow") Handle_IGESToBRep_ToolContainer::~Handle_IGESToBRep_ToolContainer %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESToBRep_ToolContainer {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESToBRep_CurveAndSurface;
class IGESToBRep_CurveAndSurface {
	public:
		%feature("autodoc", "1");
		IGESToBRep_CurveAndSurface();
		%feature("autodoc", "1");
		IGESToBRep_CurveAndSurface(const IGESToBRep_CurveAndSurface &CS);
		%feature("autodoc", "1");
		IGESToBRep_CurveAndSurface(const Standard_Real eps, const Standard_Real epsGeom, const Standard_Real epsCoeff, const Standard_Boolean mode, const Standard_Boolean modeapprox, const Standard_Boolean optimized);
		%feature("autodoc", "1");
		void Init();
		%feature("autodoc", "1");
		void SetEpsilon(const Standard_Real eps);
		%feature("autodoc", "1");
		Standard_Real GetEpsilon() const;
		%feature("autodoc", "1");
		void SetEpsCoeff(const Standard_Real eps);
		%feature("autodoc", "1");
		Standard_Real GetEpsCoeff() const;
		%feature("autodoc", "1");
		void SetEpsGeom(const Standard_Real eps);
		%feature("autodoc", "1");
		Standard_Real GetEpsGeom() const;
		%feature("autodoc", "1");
		void SetMinTol(const Standard_Real mintol);
		%feature("autodoc", "1");
		void SetMaxTol(const Standard_Real maxtol);
		%feature("autodoc", "1");
		void UpdateMinMaxTol();
		%feature("autodoc", "1");
		Standard_Real GetMinTol() const;
		%feature("autodoc", "1");
		Standard_Real GetMaxTol() const;
		%feature("autodoc", "1");
		void SetModeApprox(const Standard_Boolean mode);
		%feature("autodoc", "1");
		Standard_Boolean GetModeApprox() const;
		%feature("autodoc", "1");
		void SetModeTransfer(const Standard_Boolean mode);
		%feature("autodoc", "1");
		Standard_Boolean GetModeTransfer() const;
		%feature("autodoc", "1");
		void SetOptimized(const Standard_Boolean optimized);
		%feature("autodoc", "1");
		Standard_Boolean GetOptimized() const;
		%feature("autodoc", "1");
		Standard_Real GetUnitFactor() const;
		%feature("autodoc", "1");
		void SetSurfaceCurve(const Standard_Integer ival);
		%feature("autodoc", "1");
		Standard_Integer GetSurfaceCurve() const;
		%feature("autodoc", "1");
		void SetModel(const IGESData_IGESModel *model);
		%feature("autodoc", "1");
		Handle_IGESData_IGESModel GetModel() const;
		%feature("autodoc", "1");
		void SetContinuity(const Standard_Integer continuity);
		%feature("autodoc", "1");
		Standard_Integer GetContinuity() const;
		%feature("autodoc", "1");
		void SetTransferProcess(const Transfer_TransientProcess *TP);
		%feature("autodoc", "1");
		Handle_Transfer_TransientProcess GetTransferProcess() const;
		%feature("autodoc", "1");
		TopoDS_Shape TransferCurveAndSurface(const IGESData_IGESEntity *start);
		%feature("autodoc", "1");
		TopoDS_Shape TransferGeometry(const IGESData_IGESEntity *start);
		%feature("autodoc", "1");
		void SendFail(const IGESData_IGESEntity *start, const Message_Msg &amsg);
		%feature("autodoc", "1");
		void SendWarning(const IGESData_IGESEntity *start, const Message_Msg &amsg);
		%feature("autodoc", "1");
		void SendMsg(const IGESData_IGESEntity *start, const Message_Msg &amsg);
		%feature("autodoc", "1");
		Standard_Boolean HasShapeResult(const IGESData_IGESEntity *start) const;
		%feature("autodoc", "1");
		TopoDS_Shape GetShapeResult(const IGESData_IGESEntity *start) const;
		%feature("autodoc", "1");
		void SetShapeResult(const IGESData_IGESEntity *start, const TopoDS_Shape &result);
		%feature("autodoc", "1");
		Standard_Integer NbShapeResult(const IGESData_IGESEntity *start) const;
		%feature("autodoc", "1");
		TopoDS_Shape GetShapeResult(const IGESData_IGESEntity *start, const Standard_Integer num) const;
		%feature("autodoc", "1");
		void AddShapeResult(const IGESData_IGESEntity *start, const TopoDS_Shape &result);
		%feature("autodoc", "1");
		void SetSurface(const Geom_Surface *theSurface);
		%feature("autodoc", "1");
		Handle_Geom_Surface Surface() const;
		%feature("autodoc", "1");
		Standard_Real GetUVResolution();

};
%feature("shadow") IGESToBRep_CurveAndSurface::~IGESToBRep_CurveAndSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESToBRep_CurveAndSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESToBRep_TopoCurve;
class IGESToBRep_TopoCurve : public IGESToBRep_CurveAndSurface {
	public:
		%feature("autodoc", "1");
		IGESToBRep_TopoCurve();
		%feature("autodoc", "1");
		IGESToBRep_TopoCurve(const IGESToBRep_CurveAndSurface &CS);
		%feature("autodoc", "1");
		IGESToBRep_TopoCurve(const IGESToBRep_TopoCurve &CS);
		%feature("autodoc", "1");
		IGESToBRep_TopoCurve(const Standard_Real eps, const Standard_Real epsGeom, const Standard_Real epsCoeff, const Standard_Boolean mode, const Standard_Boolean modeapprox, const Standard_Boolean optimized);
		%feature("autodoc", "1");
		TopoDS_Shape TransferTopoCurve(const IGESData_IGESEntity *start);
		%feature("autodoc", "1");
		TopoDS_Shape Transfer2dTopoCurve(const IGESData_IGESEntity *start, const TopoDS_Face &face, const gp_Trsf2d &trans, const Standard_Real uFact);
		%feature("autodoc", "1");
		TopoDS_Shape TransferTopoBasicCurve(const IGESData_IGESEntity *start);
		%feature("autodoc", "1");
		TopoDS_Shape Transfer2dTopoBasicCurve(const IGESData_IGESEntity *start, const TopoDS_Face &face, const gp_Trsf2d &trans, const Standard_Real uFact);
		%feature("autodoc", "1");
		TopoDS_Vertex TransferPoint(const IGESGeom_Point *start);
		%feature("autodoc", "1");
		TopoDS_Vertex Transfer2dPoint(const IGESGeom_Point *start);
		%feature("autodoc", "1");
		TopoDS_Shape TransferCompositeCurve(const IGESGeom_CompositeCurve *start);
		%feature("autodoc", "1");
		TopoDS_Shape Transfer2dCompositeCurve(const IGESGeom_CompositeCurve *start, const TopoDS_Face &face, const gp_Trsf2d &trans, const Standard_Real uFact);
		%feature("autodoc", "1");
		TopoDS_Shape TransferOffsetCurve(const IGESGeom_OffsetCurve *start);
		%feature("autodoc", "1");
		TopoDS_Shape Transfer2dOffsetCurve(const IGESGeom_OffsetCurve *start, const TopoDS_Face &face, const gp_Trsf2d &trans, const Standard_Real uFact);
		%feature("autodoc", "1");
		TopoDS_Shape TransferCurveOnSurface(const IGESGeom_CurveOnSurface *start);
		%feature("autodoc", "1");
		TopoDS_Shape TransferCurveOnFace(TopoDS_Face & face, const IGESGeom_CurveOnSurface *start, const gp_Trsf2d &trans, const Standard_Real uFact, const Standard_Boolean IsCurv);
		%feature("autodoc", "1");
		TopoDS_Shape TransferBoundary(const IGESGeom_Boundary *start);
		%feature("autodoc", "1");
		TopoDS_Shape TransferBoundaryOnFace(TopoDS_Face & face, const IGESGeom_Boundary *start, const gp_Trsf2d &trans, const Standard_Real uFact);
		%feature("autodoc", "1");
		void ApproxBSplineCurve(const Geom_BSplineCurve *start);
		%feature("autodoc", "1");
		Standard_Integer NbCurves() const;
		%feature("autodoc", "1");
		Handle_Geom_Curve Curve(const Standard_Integer num=1) const;
		%feature("autodoc", "1");
		void Approx2dBSplineCurve(const Geom2d_BSplineCurve *start);
		%feature("autodoc", "1");
		Standard_Integer NbCurves2d() const;
		%feature("autodoc", "1");
		Handle_Geom2d_Curve Curve2d(const Standard_Integer num=1) const;
		%feature("autodoc", "1");
		void SetBadCase(const Standard_Boolean value);
		%feature("autodoc", "1");
		Standard_Boolean BadCase() const;

};
%feature("shadow") IGESToBRep_TopoCurve::~IGESToBRep_TopoCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESToBRep_TopoCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESToBRep_ToolContainer;
class IGESToBRep_ToolContainer : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		IGESToBRep_ToolContainer();
		%feature("autodoc", "1");
		virtual		Handle_IGESToBRep_IGESBoundary IGESBoundary() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESToBRep_ToolContainer {
	Handle_IGESToBRep_ToolContainer GetHandle() {
	return *(Handle_IGESToBRep_ToolContainer*) &$self;
	}
};
%extend IGESToBRep_ToolContainer {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IGESToBRep_ToolContainer::~IGESToBRep_ToolContainer %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESToBRep_ToolContainer {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESToBRep_BasicCurve;
class IGESToBRep_BasicCurve : public IGESToBRep_CurveAndSurface {
	public:
		%feature("autodoc", "1");
		IGESToBRep_BasicCurve();
		%feature("autodoc", "1");
		IGESToBRep_BasicCurve(const IGESToBRep_CurveAndSurface &CS);
		%feature("autodoc", "1");
		IGESToBRep_BasicCurve(const Standard_Real eps, const Standard_Real epsGeom, const Standard_Real epsCoeff, const Standard_Boolean mode, const Standard_Boolean modeapprox, const Standard_Boolean optimized);
		%feature("autodoc", "1");
		Handle_Geom_Curve TransferBasicCurve(const IGESData_IGESEntity *start);
		%feature("autodoc", "1");
		Handle_Geom2d_Curve Transfer2dBasicCurve(const IGESData_IGESEntity *start);
		%feature("autodoc", "1");
		Handle_Geom_Curve TransferBSplineCurve(const IGESGeom_BSplineCurve *start);
		%feature("autodoc", "1");
		Handle_Geom2d_Curve Transfer2dBSplineCurve(const IGESGeom_BSplineCurve *start);
		%feature("autodoc", "1");
		Handle_Geom_Curve TransferCircularArc(const IGESGeom_CircularArc *start);
		%feature("autodoc", "1");
		Handle_Geom2d_Curve Transfer2dCircularArc(const IGESGeom_CircularArc *start);
		%feature("autodoc", "1");
		Handle_Geom_Curve TransferConicArc(const IGESGeom_ConicArc *start);
		%feature("autodoc", "1");
		Handle_Geom2d_Curve Transfer2dConicArc(const IGESGeom_ConicArc *start);
		%feature("autodoc", "1");
		Handle_Geom_BSplineCurve TransferCopiousData(const IGESGeom_CopiousData *start);
		%feature("autodoc", "1");
		Handle_Geom2d_BSplineCurve Transfer2dCopiousData(const IGESGeom_CopiousData *start);
		%feature("autodoc", "1");
		Handle_Geom_Curve TransferLine(const IGESGeom_Line *start);
		%feature("autodoc", "1");
		Handle_Geom2d_Curve Transfer2dLine(const IGESGeom_Line *start);
		%feature("autodoc", "1");
		Handle_Geom_BSplineCurve TransferSplineCurve(const IGESGeom_SplineCurve *start);
		%feature("autodoc", "1");
		Handle_Geom2d_BSplineCurve Transfer2dSplineCurve(const IGESGeom_SplineCurve *start);
		%feature("autodoc", "1");
		Handle_Geom_Transformation TransferTransformation(const IGESGeom_TransformationMatrix *start);

};
%feature("shadow") IGESToBRep_BasicCurve::~IGESToBRep_BasicCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESToBRep_BasicCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESToBRep_Actor;
class IGESToBRep_Actor : public Transfer_ActorOfTransientProcess {
	public:
		%feature("autodoc", "1");
		IGESToBRep_Actor();
		%feature("autodoc", "1");
		void SetModel(const Interface_InterfaceModel *model);
		%feature("autodoc", "1");
		void SetContinuity(const Standard_Integer continuity=0);
		%feature("autodoc", "1");
		Standard_Integer GetContinuity() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Recognize(const Standard_Transient *start);
		%feature("autodoc", "1");
		virtual		Handle_Transfer_Binder Transfer(const Standard_Transient *start, const Transfer_TransientProcess *TP);
		%feature("autodoc", "1");
		Standard_Real UsedTolerance() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESToBRep_Actor {
	Handle_IGESToBRep_Actor GetHandle() {
	return *(Handle_IGESToBRep_Actor*) &$self;
	}
};
%extend IGESToBRep_Actor {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IGESToBRep_Actor::~IGESToBRep_Actor %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESToBRep_Actor {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESToBRep;
class IGESToBRep {
	public:
		%feature("autodoc", "1");
		IGESToBRep();
		%feature("autodoc", "1");
		void Init();
		%feature("autodoc", "1");
		void SetAlgoContainer(const IGESToBRep_AlgoContainer *aContainer);
		%feature("autodoc", "1");
		Handle_IGESToBRep_AlgoContainer AlgoContainer();
		%feature("autodoc", "1");
		Standard_Boolean IsCurveAndSurface(const IGESData_IGESEntity *start);
		%feature("autodoc", "1");
		Standard_Boolean IsBasicCurve(const IGESData_IGESEntity *start);
		%feature("autodoc", "1");
		Standard_Boolean IsBasicSurface(const IGESData_IGESEntity *start);
		%feature("autodoc", "1");
		Standard_Boolean IsTopoCurve(const IGESData_IGESEntity *start);
		%feature("autodoc", "1");
		Standard_Boolean IsTopoSurface(const IGESData_IGESEntity *start);
		%feature("autodoc", "1");
		Standard_Boolean IsBRepEntity(const IGESData_IGESEntity *start);
		%feature("autodoc", "1");
		void WriteShape(const TopoDS_Shape &shape, const Standard_Integer number);
		%feature("autodoc", "1");
		Standard_Integer IGESCurveToSequenceOfIGESCurve(const IGESData_IGESEntity *curve, Handle_TColStd_HSequenceOfTransient & sequence);
		%feature("autodoc", "1");
		Standard_Boolean TransferPCurve(const TopoDS_Edge &fromedge, const TopoDS_Edge &toedge, const TopoDS_Face &face);

};
%feature("shadow") IGESToBRep::~IGESToBRep %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESToBRep {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESToBRep_IGESBoundary;
class IGESToBRep_IGESBoundary : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		IGESToBRep_IGESBoundary();
		%feature("autodoc", "1");
		IGESToBRep_IGESBoundary(const IGESToBRep_CurveAndSurface &CS);
		%feature("autodoc", "1");
		void Init(const IGESToBRep_CurveAndSurface &CS, const IGESData_IGESEntity *entity, const TopoDS_Face &face, const gp_Trsf2d &trans, const Standard_Real uFact, const Standard_Integer filepreference);
		%feature("autodoc", "1");
		Handle_ShapeExtend_WireData WireData() const;
		%feature("autodoc", "1");
		Handle_ShapeExtend_WireData WireData3d() const;
		%feature("autodoc", "1");
		Handle_ShapeExtend_WireData WireData2d() const;
		%feature("autodoc", "1");
		Standard_Boolean Transfer(Standard_Boolean & okCurve, Standard_Boolean & okCurve3d, Standard_Boolean & okCurve2d, const IGESData_IGESEntity *curve3d, const Standard_Boolean toreverse3d, const IGESData_HArray1OfIGESEntity *curves2d, const Standard_Integer number);
		%feature("autodoc", "1");
		Standard_Boolean Transfer(Standard_Boolean & okCurve, Standard_Boolean & okCurve3d, Standard_Boolean & okCurve2d, const ShapeExtend_WireData *curve3d, const IGESData_HArray1OfIGESEntity *curves2d, const Standard_Boolean toreverse2d, const Standard_Integer number, Handle_ShapeExtend_WireData & lsewd);
		%feature("autodoc", "1");
		virtual		void Check(const Standard_Boolean result, const Standard_Boolean checkclosure, const Standard_Boolean okCurve3d, const Standard_Boolean okCurve2d);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESToBRep_IGESBoundary {
	Handle_IGESToBRep_IGESBoundary GetHandle() {
	return *(Handle_IGESToBRep_IGESBoundary*) &$self;
	}
};
%extend IGESToBRep_IGESBoundary {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IGESToBRep_IGESBoundary::~IGESToBRep_IGESBoundary %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESToBRep_IGESBoundary {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESToBRep_BRepEntity;
class IGESToBRep_BRepEntity : public IGESToBRep_CurveAndSurface {
	public:
		%feature("autodoc", "1");
		IGESToBRep_BRepEntity();
		%feature("autodoc", "1");
		IGESToBRep_BRepEntity(const IGESToBRep_CurveAndSurface &CS);
		%feature("autodoc", "1");
		IGESToBRep_BRepEntity(const Standard_Real eps, const Standard_Real epsGeom, const Standard_Real epsCoeff, const Standard_Boolean mode, const Standard_Boolean modeapprox, const Standard_Boolean optimized);
		%feature("autodoc", "1");
		TopoDS_Shape TransferBRepEntity(const IGESData_IGESEntity *start);
		%feature("autodoc", "1");
		TopoDS_Vertex TransferVertex(const IGESSolid_VertexList *start, const Standard_Integer index);
		%feature("autodoc", "1");
		TopoDS_Shape TransferEdge(const IGESSolid_EdgeList *start, const Standard_Integer index);
		%feature("autodoc", "1");
		TopoDS_Shape TransferLoop(const IGESSolid_Loop *start, const TopoDS_Face &Face, const gp_Trsf2d &trans, const Standard_Real uFact);
		%feature("autodoc", "1");
		TopoDS_Shape TransferFace(const IGESSolid_Face *start);
		%feature("autodoc", "1");
		TopoDS_Shape TransferShell(const IGESSolid_Shell *start);
		%feature("autodoc", "1");
		TopoDS_Shape TransferManifoldSolid(const IGESSolid_ManifoldSolid *start);

};
%feature("shadow") IGESToBRep_BRepEntity::~IGESToBRep_BRepEntity %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESToBRep_BRepEntity {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESToBRep_TopoSurface;
class IGESToBRep_TopoSurface : public IGESToBRep_CurveAndSurface {
	public:
		%feature("autodoc", "1");
		IGESToBRep_TopoSurface();
		%feature("autodoc", "1");
		IGESToBRep_TopoSurface(const IGESToBRep_CurveAndSurface &CS);
		%feature("autodoc", "1");
		IGESToBRep_TopoSurface(const Standard_Real eps, const Standard_Real epsGeom, const Standard_Real epsCoeff, const Standard_Boolean mode, const Standard_Boolean modeapprox, const Standard_Boolean optimized);
		%feature("autodoc", "1");
		TopoDS_Shape TransferTopoSurface(const IGESData_IGESEntity *start);
		%feature("autodoc", "1");
		TopoDS_Shape TransferTopoBasicSurface(const IGESData_IGESEntity *start);
		%feature("autodoc", "1");
		TopoDS_Shape TransferRuledSurface(const IGESGeom_RuledSurface *start);
		%feature("autodoc", "1");
		TopoDS_Shape TransferSurfaceOfRevolution(const IGESGeom_SurfaceOfRevolution *start);
		%feature("autodoc", "1");
		TopoDS_Shape TransferTabulatedCylinder(const IGESGeom_TabulatedCylinder *start);
		%feature("autodoc", "1");
		TopoDS_Shape TransferOffsetSurface(const IGESGeom_OffsetSurface *start);
		%feature("autodoc", "1");
		TopoDS_Shape TransferTrimmedSurface(const IGESGeom_TrimmedSurface *start);
		%feature("autodoc", "1");
		TopoDS_Shape TransferBoundedSurface(const IGESGeom_BoundedSurface *start);
		%feature("autodoc", "1");
		TopoDS_Shape TransferPlane(const IGESGeom_Plane *start);
		%feature("autodoc", "1");
		TopoDS_Shape TransferPerforate(const IGESBasic_SingleParent *start);
		%feature("autodoc","ParamSurface(const start) -> Standard_Real");

		TopoDS_Shape ParamSurface(const IGESData_IGESEntity *start, gp_Trsf2d & trans, Standard_Real &OutValue);

};
%feature("shadow") IGESToBRep_TopoSurface::~IGESToBRep_TopoSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESToBRep_TopoSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESToBRep_BasicSurface;
class IGESToBRep_BasicSurface : public IGESToBRep_CurveAndSurface {
	public:
		%feature("autodoc", "1");
		IGESToBRep_BasicSurface();
		%feature("autodoc", "1");
		IGESToBRep_BasicSurface(const IGESToBRep_CurveAndSurface &CS);
		%feature("autodoc", "1");
		IGESToBRep_BasicSurface(const Standard_Real eps, const Standard_Real epsGeom, const Standard_Real epsCoeff, const Standard_Boolean mode, const Standard_Boolean modeapprox, const Standard_Boolean optimized);
		%feature("autodoc", "1");
		Handle_Geom_Surface TransferBasicSurface(const IGESData_IGESEntity *start);
		%feature("autodoc", "1");
		Handle_Geom_Plane TransferPlaneSurface(const IGESSolid_PlaneSurface *start);
		%feature("autodoc", "1");
		Handle_Geom_CylindricalSurface TransferRigthCylindricalSurface(const IGESSolid_CylindricalSurface *start);
		%feature("autodoc", "1");
		Handle_Geom_ConicalSurface TransferRigthConicalSurface(const IGESSolid_ConicalSurface *start);
		%feature("autodoc", "1");
		Handle_Geom_SphericalSurface TransferSphericalSurface(const IGESSolid_SphericalSurface *start);
		%feature("autodoc", "1");
		Handle_Geom_ToroidalSurface TransferToroidalSurface(const IGESSolid_ToroidalSurface *start);
		%feature("autodoc", "1");
		Handle_Geom_BSplineSurface TransferSplineSurface(const IGESGeom_SplineSurface *start);
		%feature("autodoc", "1");
		Handle_Geom_BSplineSurface TransferBSplineSurface(const IGESGeom_BSplineSurface *start);

};
%feature("shadow") IGESToBRep_BasicSurface::~IGESToBRep_BasicSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESToBRep_BasicSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESToBRep_Reader;
class IGESToBRep_Reader {
	public:
		%feature("autodoc", "1");
		IGESToBRep_Reader();
		%feature("autodoc", "1");
		Standard_Integer LoadFile(const char * filename);
		%feature("autodoc", "1");
		void SetModel(const IGESData_IGESModel *model);
		%feature("autodoc", "1");
		Handle_IGESData_IGESModel Model() const;
		%feature("autodoc", "1");
		void SetTransientProcess(const Transfer_TransientProcess *TP);
		%feature("autodoc", "1");
		Handle_Transfer_TransientProcess TransientProcess() const;
		%feature("autodoc", "1");
		Handle_IGESToBRep_Actor Actor() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Check(const Standard_Boolean withprint) const;
		%feature("autodoc", "1");
		void TransferRoots(const Standard_Boolean onlyvisible=1);
		%feature("autodoc", "1");
		Standard_Boolean Transfer(const Standard_Integer num);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Real UsedTolerance() const;
		%feature("autodoc", "1");
		Standard_Integer NbShapes() const;
		%feature("autodoc", "1");
		TopoDS_Shape Shape(const Standard_Integer num=1) const;
		%feature("autodoc", "1");
		TopoDS_Shape OneShape() const;

};
%feature("shadow") IGESToBRep_Reader::~IGESToBRep_Reader %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESToBRep_Reader {
	void _kill_pointed() {
		delete $self;
	}
};
