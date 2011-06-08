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

%module ShapeExtend
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include ShapeExtend_renames.i


%include ShapeExtend_required_python_modules.i


%include ShapeExtend_dependencies.i


%include ShapeExtend_headers.i


enum ShapeExtend_Status {
	ShapeExtend_OK,
	ShapeExtend_DONE1,
	ShapeExtend_DONE2,
	ShapeExtend_DONE3,
	ShapeExtend_DONE4,
	ShapeExtend_DONE5,
	ShapeExtend_DONE6,
	ShapeExtend_DONE7,
	ShapeExtend_DONE8,
	ShapeExtend_DONE,
	ShapeExtend_FAIL1,
	ShapeExtend_FAIL2,
	ShapeExtend_FAIL3,
	ShapeExtend_FAIL4,
	ShapeExtend_FAIL5,
	ShapeExtend_FAIL6,
	ShapeExtend_FAIL7,
	ShapeExtend_FAIL8,
	ShapeExtend_FAIL,
	};

enum ShapeExtend_Parametrisation {
	ShapeExtend_Natural,
	ShapeExtend_Uniform,
	ShapeExtend_Unitary,
	};



%nodefaultctor Handle_ShapeExtend_DataMapNodeOfDataMapOfShapeListOfMsg;
class Handle_ShapeExtend_DataMapNodeOfDataMapOfShapeListOfMsg : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_ShapeExtend_DataMapNodeOfDataMapOfShapeListOfMsg();
		%feature("autodoc", "1");
		Handle_ShapeExtend_DataMapNodeOfDataMapOfShapeListOfMsg(const Handle_ShapeExtend_DataMapNodeOfDataMapOfShapeListOfMsg &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeExtend_DataMapNodeOfDataMapOfShapeListOfMsg(const ShapeExtend_DataMapNodeOfDataMapOfShapeListOfMsg *anItem);
		%feature("autodoc", "1");
		Handle_ShapeExtend_DataMapNodeOfDataMapOfShapeListOfMsg & operator=(const Handle_ShapeExtend_DataMapNodeOfDataMapOfShapeListOfMsg &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeExtend_DataMapNodeOfDataMapOfShapeListOfMsg & operator=(const ShapeExtend_DataMapNodeOfDataMapOfShapeListOfMsg *anItem);
		%feature("autodoc", "1");
		static		Handle_ShapeExtend_DataMapNodeOfDataMapOfShapeListOfMsg DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeExtend_DataMapNodeOfDataMapOfShapeListOfMsg {
	ShapeExtend_DataMapNodeOfDataMapOfShapeListOfMsg* GetObject() {
	return (ShapeExtend_DataMapNodeOfDataMapOfShapeListOfMsg*)$self->Access();
	}
};
%feature("shadow") Handle_ShapeExtend_DataMapNodeOfDataMapOfShapeListOfMsg::~Handle_ShapeExtend_DataMapNodeOfDataMapOfShapeListOfMsg %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ShapeExtend_DataMapNodeOfDataMapOfShapeListOfMsg {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_ShapeExtend_BasicMsgRegistrator;
class Handle_ShapeExtend_BasicMsgRegistrator : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_ShapeExtend_BasicMsgRegistrator();
		%feature("autodoc", "1");
		Handle_ShapeExtend_BasicMsgRegistrator(const Handle_ShapeExtend_BasicMsgRegistrator &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeExtend_BasicMsgRegistrator(const ShapeExtend_BasicMsgRegistrator *anItem);
		%feature("autodoc", "1");
		Handle_ShapeExtend_BasicMsgRegistrator & operator=(const Handle_ShapeExtend_BasicMsgRegistrator &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeExtend_BasicMsgRegistrator & operator=(const ShapeExtend_BasicMsgRegistrator *anItem);
		%feature("autodoc", "1");
		static		Handle_ShapeExtend_BasicMsgRegistrator DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeExtend_BasicMsgRegistrator {
	ShapeExtend_BasicMsgRegistrator* GetObject() {
	return (ShapeExtend_BasicMsgRegistrator*)$self->Access();
	}
};
%feature("shadow") Handle_ShapeExtend_BasicMsgRegistrator::~Handle_ShapeExtend_BasicMsgRegistrator %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ShapeExtend_BasicMsgRegistrator {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_ShapeExtend_MsgRegistrator;
class Handle_ShapeExtend_MsgRegistrator : public Handle_ShapeExtend_BasicMsgRegistrator {
	public:
		%feature("autodoc", "1");
		Handle_ShapeExtend_MsgRegistrator();
		%feature("autodoc", "1");
		Handle_ShapeExtend_MsgRegistrator(const Handle_ShapeExtend_MsgRegistrator &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeExtend_MsgRegistrator(const ShapeExtend_MsgRegistrator *anItem);
		%feature("autodoc", "1");
		Handle_ShapeExtend_MsgRegistrator & operator=(const Handle_ShapeExtend_MsgRegistrator &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeExtend_MsgRegistrator & operator=(const ShapeExtend_MsgRegistrator *anItem);
		%feature("autodoc", "1");
		static		Handle_ShapeExtend_MsgRegistrator DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeExtend_MsgRegistrator {
	ShapeExtend_MsgRegistrator* GetObject() {
	return (ShapeExtend_MsgRegistrator*)$self->Access();
	}
};
%feature("shadow") Handle_ShapeExtend_MsgRegistrator::~Handle_ShapeExtend_MsgRegistrator %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ShapeExtend_MsgRegistrator {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_ShapeExtend_DataMapNodeOfDataMapOfTransientListOfMsg;
class Handle_ShapeExtend_DataMapNodeOfDataMapOfTransientListOfMsg : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_ShapeExtend_DataMapNodeOfDataMapOfTransientListOfMsg();
		%feature("autodoc", "1");
		Handle_ShapeExtend_DataMapNodeOfDataMapOfTransientListOfMsg(const Handle_ShapeExtend_DataMapNodeOfDataMapOfTransientListOfMsg &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeExtend_DataMapNodeOfDataMapOfTransientListOfMsg(const ShapeExtend_DataMapNodeOfDataMapOfTransientListOfMsg *anItem);
		%feature("autodoc", "1");
		Handle_ShapeExtend_DataMapNodeOfDataMapOfTransientListOfMsg & operator=(const Handle_ShapeExtend_DataMapNodeOfDataMapOfTransientListOfMsg &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeExtend_DataMapNodeOfDataMapOfTransientListOfMsg & operator=(const ShapeExtend_DataMapNodeOfDataMapOfTransientListOfMsg *anItem);
		%feature("autodoc", "1");
		static		Handle_ShapeExtend_DataMapNodeOfDataMapOfTransientListOfMsg DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeExtend_DataMapNodeOfDataMapOfTransientListOfMsg {
	ShapeExtend_DataMapNodeOfDataMapOfTransientListOfMsg* GetObject() {
	return (ShapeExtend_DataMapNodeOfDataMapOfTransientListOfMsg*)$self->Access();
	}
};
%feature("shadow") Handle_ShapeExtend_DataMapNodeOfDataMapOfTransientListOfMsg::~Handle_ShapeExtend_DataMapNodeOfDataMapOfTransientListOfMsg %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ShapeExtend_DataMapNodeOfDataMapOfTransientListOfMsg {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_ShapeExtend_ComplexCurve;
class Handle_ShapeExtend_ComplexCurve : public Handle_Geom_Curve {
	public:
		%feature("autodoc", "1");
		Handle_ShapeExtend_ComplexCurve();
		%feature("autodoc", "1");
		Handle_ShapeExtend_ComplexCurve(const Handle_ShapeExtend_ComplexCurve &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeExtend_ComplexCurve(const ShapeExtend_ComplexCurve *anItem);
		%feature("autodoc", "1");
		Handle_ShapeExtend_ComplexCurve & operator=(const Handle_ShapeExtend_ComplexCurve &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeExtend_ComplexCurve & operator=(const ShapeExtend_ComplexCurve *anItem);
		%feature("autodoc", "1");
		static		Handle_ShapeExtend_ComplexCurve DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeExtend_ComplexCurve {
	ShapeExtend_ComplexCurve* GetObject() {
	return (ShapeExtend_ComplexCurve*)$self->Access();
	}
};
%feature("shadow") Handle_ShapeExtend_ComplexCurve::~Handle_ShapeExtend_ComplexCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ShapeExtend_ComplexCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_ShapeExtend_CompositeSurface;
class Handle_ShapeExtend_CompositeSurface : public Handle_Geom_Surface {
	public:
		%feature("autodoc", "1");
		Handle_ShapeExtend_CompositeSurface();
		%feature("autodoc", "1");
		Handle_ShapeExtend_CompositeSurface(const Handle_ShapeExtend_CompositeSurface &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeExtend_CompositeSurface(const ShapeExtend_CompositeSurface *anItem);
		%feature("autodoc", "1");
		Handle_ShapeExtend_CompositeSurface & operator=(const Handle_ShapeExtend_CompositeSurface &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeExtend_CompositeSurface & operator=(const ShapeExtend_CompositeSurface *anItem);
		%feature("autodoc", "1");
		static		Handle_ShapeExtend_CompositeSurface DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeExtend_CompositeSurface {
	ShapeExtend_CompositeSurface* GetObject() {
	return (ShapeExtend_CompositeSurface*)$self->Access();
	}
};
%feature("shadow") Handle_ShapeExtend_CompositeSurface::~Handle_ShapeExtend_CompositeSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ShapeExtend_CompositeSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_ShapeExtend_WireData;
class Handle_ShapeExtend_WireData : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_ShapeExtend_WireData();
		%feature("autodoc", "1");
		Handle_ShapeExtend_WireData(const Handle_ShapeExtend_WireData &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeExtend_WireData(const ShapeExtend_WireData *anItem);
		%feature("autodoc", "1");
		Handle_ShapeExtend_WireData & operator=(const Handle_ShapeExtend_WireData &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeExtend_WireData & operator=(const ShapeExtend_WireData *anItem);
		%feature("autodoc", "1");
		static		Handle_ShapeExtend_WireData DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeExtend_WireData {
	ShapeExtend_WireData* GetObject() {
	return (ShapeExtend_WireData*)$self->Access();
	}
};
%feature("shadow") Handle_ShapeExtend_WireData::~Handle_ShapeExtend_WireData %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_ShapeExtend_WireData {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeExtend_ComplexCurve;
class ShapeExtend_ComplexCurve : public Geom_Curve {
	public:
		%feature("autodoc", "1");
		virtual		Standard_Integer NbCurves() const;
		%feature("autodoc", "1");
		virtual		const Handle_Geom_Curve & Curve(const Standard_Integer index) const;
		%feature("autodoc","LocateParameter(Standard_Real U) -> Standard_Real");

		virtual		Standard_Integer LocateParameter(const Standard_Real U, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		virtual		Standard_Real LocalToGlobal(const Standard_Integer index, const Standard_Real Ulocal) const;
		%feature("autodoc", "1");
		virtual		void Transform(const gp_Trsf T);
		%feature("autodoc", "1");
		virtual		Standard_Real ReversedParameter(const Standard_Real U) const;
		%feature("autodoc", "1");
		virtual		Standard_Real FirstParameter() const;
		%feature("autodoc", "1");
		virtual		Standard_Real LastParameter() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsClosed() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsPeriodic() const;
		%feature("autodoc", "1");
		virtual		GeomAbs_Shape Continuity() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsCN(const Standard_Integer N) const;
		%feature("autodoc", "1");
		virtual		void D0(const Standard_Real U, gp_Pnt & P) const;
		%feature("autodoc", "1");
		virtual		void D1(const Standard_Real U, gp_Pnt & P, gp_Vec & V1) const;
		%feature("autodoc", "1");
		virtual		void D2(const Standard_Real U, gp_Pnt & P, gp_Vec & V1, gp_Vec & V2) const;
		%feature("autodoc", "1");
		virtual		void D3(const Standard_Real U, gp_Pnt & P, gp_Vec & V1, gp_Vec & V2, gp_Vec & V3) const;
		%feature("autodoc", "1");
		virtual		gp_Vec DN(const Standard_Real U, const Standard_Integer N) const;
		%feature("autodoc", "1");
		virtual		Standard_Real GetScaleFactor(const Standard_Integer ind) const;
		%feature("autodoc", "1");
		Standard_Boolean CheckConnectivity(const Standard_Real Preci);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ShapeExtend_ComplexCurve {
	Handle_ShapeExtend_ComplexCurve GetHandle() {
	return *(Handle_ShapeExtend_ComplexCurve*) &$self;
	}
};
%extend ShapeExtend_ComplexCurve {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") ShapeExtend_ComplexCurve::~ShapeExtend_ComplexCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeExtend_ComplexCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeExtend_WireData;
class ShapeExtend_WireData : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		ShapeExtend_WireData();
		%feature("autodoc", "1");
		ShapeExtend_WireData(const TopoDS_Wire wire, const Standard_Boolean chained=1, const Standard_Boolean theManifoldMode=1);
		%feature("autodoc", "1");
		void Init(const Handle_ShapeExtend_WireData &other);
		%feature("autodoc", "1");
		Standard_Boolean Init(const TopoDS_Wire wire, const Standard_Boolean chained=1, const Standard_Boolean theManifoldMode=1);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void ComputeSeams(const Standard_Boolean enforce=1);
		%feature("autodoc", "1");
		void SetLast(const Standard_Integer num);
		%feature("autodoc", "1");
		void SetDegeneratedLast();
		%feature("autodoc", "1");
		void Add(const TopoDS_Edge edge, const Standard_Integer atnum=0);
		%feature("autodoc", "1");
		void Add(const TopoDS_Wire wire, const Standard_Integer atnum=0);
		%feature("autodoc", "1");
		void Add(const Handle_ShapeExtend_WireData &wire, const Standard_Integer atnum=0);
		%feature("autodoc", "1");
		void Add(const TopoDS_Shape shape, const Standard_Integer atnum=0);
		%feature("autodoc", "1");
		void AddOriented(const TopoDS_Edge edge, const Standard_Integer mode);
		%feature("autodoc", "1");
		void AddOriented(const TopoDS_Wire wire, const Standard_Integer mode);
		%feature("autodoc", "1");
		void AddOriented(const TopoDS_Shape shape, const Standard_Integer mode);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer num=0);
		%feature("autodoc", "1");
		void Set(const TopoDS_Edge edge, const Standard_Integer num=0);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void Reverse(const TopoDS_Face face);
		%feature("autodoc", "1");
		Standard_Integer NbEdges() const;
		%feature("autodoc", "1");
		Standard_Integer NbNonManifoldEdges() const;
		%feature("autodoc", "1");
		TopoDS_Edge NonmanifoldEdge(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Handle_TopTools_HSequenceOfShape NonmanifoldEdges() const;
		%feature("autodoc","1");
		%extend {
				Standard_Boolean GetManifoldMode() {
				return (Standard_Boolean) $self->ManifoldMode();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetManifoldMode(Standard_Boolean value ) {
				$self->ManifoldMode()=value;
				}
		};
		%feature("autodoc", "1");
		TopoDS_Edge Edge(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer Index(const TopoDS_Edge edge);
		%feature("autodoc", "1");
		Standard_Boolean IsSeam(const Standard_Integer num);
		%feature("autodoc", "1");
		TopoDS_Wire Wire() const;
		%feature("autodoc", "1");
		TopoDS_Wire WireAPIMake() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ShapeExtend_WireData {
	Handle_ShapeExtend_WireData GetHandle() {
	return *(Handle_ShapeExtend_WireData*) &$self;
	}
};
%extend ShapeExtend_WireData {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") ShapeExtend_WireData::~ShapeExtend_WireData %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeExtend_WireData {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeExtend_BasicMsgRegistrator;
class ShapeExtend_BasicMsgRegistrator : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		ShapeExtend_BasicMsgRegistrator();
		%feature("autodoc", "1");
		virtual		void Send(const Handle_Standard_Transient &object, const Message_Msg &message, const Message_Gravity gravity);
		%feature("autodoc", "1");
		virtual		void Send(const TopoDS_Shape shape, const Message_Msg &message, const Message_Gravity gravity);
		%feature("autodoc", "1");
		virtual		void Send(const Message_Msg &message, const Message_Gravity gravity);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ShapeExtend_BasicMsgRegistrator {
	Handle_ShapeExtend_BasicMsgRegistrator GetHandle() {
	return *(Handle_ShapeExtend_BasicMsgRegistrator*) &$self;
	}
};
%extend ShapeExtend_BasicMsgRegistrator {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") ShapeExtend_BasicMsgRegistrator::~ShapeExtend_BasicMsgRegistrator %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeExtend_BasicMsgRegistrator {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeExtend;
class ShapeExtend {
	public:
		%feature("autodoc", "1");
		ShapeExtend();
		%feature("autodoc", "1");
		static		void Init();
		%feature("autodoc", "1");
		static		Standard_Integer EncodeStatus(const ShapeExtend_Status status);
		%feature("autodoc", "1");
		static		Standard_Boolean DecodeStatus(const Standard_Integer flag, const ShapeExtend_Status status);

};
%feature("shadow") ShapeExtend::~ShapeExtend %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeExtend {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeExtend_MsgRegistrator;
class ShapeExtend_MsgRegistrator : public ShapeExtend_BasicMsgRegistrator {
	public:
		%feature("autodoc", "1");
		ShapeExtend_MsgRegistrator();
		%feature("autodoc", "1");
		virtual		void Send(const Handle_Standard_Transient &object, const Message_Msg &message, const Message_Gravity gravity);
		%feature("autodoc", "1");
		virtual		void Send(const TopoDS_Shape shape, const Message_Msg &message, const Message_Gravity gravity);
		%feature("autodoc", "1");
		const ShapeExtend_DataMapOfTransientListOfMsg & MapTransient() const;
		%feature("autodoc", "1");
		const ShapeExtend_DataMapOfShapeListOfMsg & MapShape() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ShapeExtend_MsgRegistrator {
	Handle_ShapeExtend_MsgRegistrator GetHandle() {
	return *(Handle_ShapeExtend_MsgRegistrator*) &$self;
	}
};
%extend ShapeExtend_MsgRegistrator {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") ShapeExtend_MsgRegistrator::~ShapeExtend_MsgRegistrator %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeExtend_MsgRegistrator {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeExtend_DataMapNodeOfDataMapOfShapeListOfMsg;
class ShapeExtend_DataMapNodeOfDataMapOfShapeListOfMsg : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		ShapeExtend_DataMapNodeOfDataMapOfShapeListOfMsg(const TopoDS_Shape K, const Message_ListOfMsg &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Shape  Key() const;
		%feature("autodoc", "1");
		Message_ListOfMsg & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ShapeExtend_DataMapNodeOfDataMapOfShapeListOfMsg {
	Handle_ShapeExtend_DataMapNodeOfDataMapOfShapeListOfMsg GetHandle() {
	return *(Handle_ShapeExtend_DataMapNodeOfDataMapOfShapeListOfMsg*) &$self;
	}
};
%extend ShapeExtend_DataMapNodeOfDataMapOfShapeListOfMsg {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") ShapeExtend_DataMapNodeOfDataMapOfShapeListOfMsg::~ShapeExtend_DataMapNodeOfDataMapOfShapeListOfMsg %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeExtend_DataMapNodeOfDataMapOfShapeListOfMsg {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeExtend_DataMapNodeOfDataMapOfTransientListOfMsg;
class ShapeExtend_DataMapNodeOfDataMapOfTransientListOfMsg : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		ShapeExtend_DataMapNodeOfDataMapOfTransientListOfMsg(const Handle_Standard_Transient &K, const Message_ListOfMsg &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Handle_Standard_Transient & Key() const;
		%feature("autodoc", "1");
		Message_ListOfMsg & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ShapeExtend_DataMapNodeOfDataMapOfTransientListOfMsg {
	Handle_ShapeExtend_DataMapNodeOfDataMapOfTransientListOfMsg GetHandle() {
	return *(Handle_ShapeExtend_DataMapNodeOfDataMapOfTransientListOfMsg*) &$self;
	}
};
%extend ShapeExtend_DataMapNodeOfDataMapOfTransientListOfMsg {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") ShapeExtend_DataMapNodeOfDataMapOfTransientListOfMsg::~ShapeExtend_DataMapNodeOfDataMapOfTransientListOfMsg %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeExtend_DataMapNodeOfDataMapOfTransientListOfMsg {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeExtend_DataMapOfTransientListOfMsg;
class ShapeExtend_DataMapOfTransientListOfMsg : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		ShapeExtend_DataMapOfTransientListOfMsg(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		ShapeExtend_DataMapOfTransientListOfMsg & Assign(const ShapeExtend_DataMapOfTransientListOfMsg &Other);
		%feature("autodoc", "1");
		ShapeExtend_DataMapOfTransientListOfMsg & operator=(const ShapeExtend_DataMapOfTransientListOfMsg &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Handle_Standard_Transient &K, const Message_ListOfMsg &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Handle_Standard_Transient &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Handle_Standard_Transient &K);
		%feature("autodoc", "1");
		const Message_ListOfMsg & Find(const Handle_Standard_Transient &K) const;
		%feature("autodoc", "1");
		const Message_ListOfMsg & operator()(const Handle_Standard_Transient &K) const;
		%feature("autodoc", "1");
		Message_ListOfMsg & ChangeFind(const Handle_Standard_Transient &K);
		%feature("autodoc", "1");
		Message_ListOfMsg & operator()(const Handle_Standard_Transient &K);

};
%feature("shadow") ShapeExtend_DataMapOfTransientListOfMsg::~ShapeExtend_DataMapOfTransientListOfMsg %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeExtend_DataMapOfTransientListOfMsg {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeExtend_DataMapIteratorOfDataMapOfTransientListOfMsg;
class ShapeExtend_DataMapIteratorOfDataMapOfTransientListOfMsg : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		ShapeExtend_DataMapIteratorOfDataMapOfTransientListOfMsg();
		%feature("autodoc", "1");
		ShapeExtend_DataMapIteratorOfDataMapOfTransientListOfMsg(const ShapeExtend_DataMapOfTransientListOfMsg &aMap);
		%feature("autodoc", "1");
		void Initialize(const ShapeExtend_DataMapOfTransientListOfMsg &aMap);
		%feature("autodoc", "1");
		const Handle_Standard_Transient & Key() const;
		%feature("autodoc", "1");
		const Message_ListOfMsg & Value() const;

};
%feature("shadow") ShapeExtend_DataMapIteratorOfDataMapOfTransientListOfMsg::~ShapeExtend_DataMapIteratorOfDataMapOfTransientListOfMsg %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeExtend_DataMapIteratorOfDataMapOfTransientListOfMsg {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeExtend_DataMapIteratorOfDataMapOfShapeListOfMsg;
class ShapeExtend_DataMapIteratorOfDataMapOfShapeListOfMsg : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		ShapeExtend_DataMapIteratorOfDataMapOfShapeListOfMsg();
		%feature("autodoc", "1");
		ShapeExtend_DataMapIteratorOfDataMapOfShapeListOfMsg(const ShapeExtend_DataMapOfShapeListOfMsg &aMap);
		%feature("autodoc", "1");
		void Initialize(const ShapeExtend_DataMapOfShapeListOfMsg &aMap);
		%feature("autodoc", "1");
		const TopoDS_Shape  Key() const;
		%feature("autodoc", "1");
		const Message_ListOfMsg & Value() const;

};
%feature("shadow") ShapeExtend_DataMapIteratorOfDataMapOfShapeListOfMsg::~ShapeExtend_DataMapIteratorOfDataMapOfShapeListOfMsg %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeExtend_DataMapIteratorOfDataMapOfShapeListOfMsg {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeExtend_DataMapOfShapeListOfMsg;
class ShapeExtend_DataMapOfShapeListOfMsg : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		ShapeExtend_DataMapOfShapeListOfMsg(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		ShapeExtend_DataMapOfShapeListOfMsg & Assign(const ShapeExtend_DataMapOfShapeListOfMsg &Other);
		%feature("autodoc", "1");
		ShapeExtend_DataMapOfShapeListOfMsg & operator=(const ShapeExtend_DataMapOfShapeListOfMsg &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TopoDS_Shape K, const Message_ListOfMsg &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TopoDS_Shape K);
		%feature("autodoc", "1");
		const Message_ListOfMsg & Find(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		const Message_ListOfMsg & operator()(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		Message_ListOfMsg & ChangeFind(const TopoDS_Shape K);
		%feature("autodoc", "1");
		Message_ListOfMsg & operator()(const TopoDS_Shape K);

};
%feature("shadow") ShapeExtend_DataMapOfShapeListOfMsg::~ShapeExtend_DataMapOfShapeListOfMsg %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeExtend_DataMapOfShapeListOfMsg {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeExtend_CompositeSurface;
class ShapeExtend_CompositeSurface : public Geom_Surface {
	public:
		%feature("autodoc", "1");
		ShapeExtend_CompositeSurface();
		%feature("autodoc", "1");
		ShapeExtend_CompositeSurface(const Handle_TColGeom_HArray2OfSurface &GridSurf, const ShapeExtend_Parametrisation param=ShapeExtend_Natural);
		%feature("autodoc", "1");
		ShapeExtend_CompositeSurface(const Handle_TColGeom_HArray2OfSurface &GridSurf, const TColStd_Array1OfReal &UJoints, const TColStd_Array1OfReal &VJoints);
		%feature("autodoc", "1");
		Standard_Boolean Init(const Handle_TColGeom_HArray2OfSurface &GridSurf, const ShapeExtend_Parametrisation param=ShapeExtend_Natural);
		%feature("autodoc", "1");
		Standard_Boolean Init(const Handle_TColGeom_HArray2OfSurface &GridSurf, const TColStd_Array1OfReal &UJoints, const TColStd_Array1OfReal &VJoints);
		%feature("autodoc", "1");
		Standard_Integer NbUPatches() const;
		%feature("autodoc", "1");
		Standard_Integer NbVPatches() const;
		%feature("autodoc", "1");
		const Handle_Geom_Surface & Patch(const Standard_Integer i, const Standard_Integer j) const;
		%feature("autodoc", "1");
		const Handle_TColGeom_HArray2OfSurface & Patches() const;
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal UJointValues() const;
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal VJointValues() const;
		%feature("autodoc", "1");
		Standard_Real UJointValue(const Standard_Integer i) const;
		%feature("autodoc", "1");
		Standard_Real VJointValue(const Standard_Integer j) const;
		%feature("autodoc", "1");
		Standard_Boolean SetUJointValues(const TColStd_Array1OfReal &UJoints);
		%feature("autodoc", "1");
		Standard_Boolean SetVJointValues(const TColStd_Array1OfReal &VJoints);
		%feature("autodoc", "1");
		void SetUFirstValue(const Standard_Real UFirst);
		%feature("autodoc", "1");
		void SetVFirstValue(const Standard_Real VFirst);
		%feature("autodoc", "1");
		Standard_Integer LocateUParameter(const Standard_Real U) const;
		%feature("autodoc", "1");
		Standard_Integer LocateVParameter(const Standard_Real V) const;
		%feature("autodoc","LocateUVPoint(const pnt) -> [Standard_Integer, Standard_Integer]");

		void LocateUVPoint(const gp_Pnt2d pnt, Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		const Handle_Geom_Surface & Patch(const Standard_Real U, const Standard_Real V) const;
		%feature("autodoc", "1");
		const Handle_Geom_Surface & Patch(const gp_Pnt2d pnt) const;
		%feature("autodoc", "1");
		Standard_Real ULocalToGlobal(const Standard_Integer i, const Standard_Integer j, const Standard_Real u) const;
		%feature("autodoc", "1");
		Standard_Real VLocalToGlobal(const Standard_Integer i, const Standard_Integer j, const Standard_Real v) const;
		%feature("autodoc", "1");
		gp_Pnt2d LocalToGlobal(const Standard_Integer i, const Standard_Integer j, const gp_Pnt2d uv) const;
		%feature("autodoc", "1");
		Standard_Real UGlobalToLocal(const Standard_Integer i, const Standard_Integer j, const Standard_Real U) const;
		%feature("autodoc", "1");
		Standard_Real VGlobalToLocal(const Standard_Integer i, const Standard_Integer j, const Standard_Real V) const;
		%feature("autodoc", "1");
		gp_Pnt2d GlobalToLocal(const Standard_Integer i, const Standard_Integer j, const gp_Pnt2d UV) const;
		%feature("autodoc","GlobalToLocalTransformation(Standard_Integer i, Standard_Integer j) -> Standard_Real");

		Standard_Boolean GlobalToLocalTransformation(const Standard_Integer i, const Standard_Integer j, Standard_Real &OutValue, gp_Trsf2d & Trsf) const;
		%feature("autodoc", "1");
		virtual		void Transform(const gp_Trsf T);
		%feature("autodoc", "1");
		virtual		Handle_Geom_Geometry Copy() const;
		%feature("autodoc", "1");
		virtual		void UReverse();
		%feature("autodoc", "1");
		virtual		Standard_Real UReversedParameter(const Standard_Real U) const;
		%feature("autodoc", "1");
		virtual		void VReverse();
		%feature("autodoc", "1");
		virtual		Standard_Real VReversedParameter(const Standard_Real V) const;
		%feature("autodoc","Bounds() -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real]");

		virtual		void Bounds(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsUClosed() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsVClosed() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsUPeriodic() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsVPeriodic() const;
		%feature("autodoc", "1");
		virtual		Handle_Geom_Curve UIso(const Standard_Real U) const;
		%feature("autodoc", "1");
		virtual		Handle_Geom_Curve VIso(const Standard_Real V) const;
		%feature("autodoc", "1");
		virtual		GeomAbs_Shape Continuity() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsCNu(const Standard_Integer N) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsCNv(const Standard_Integer N) const;
		%feature("autodoc", "1");
		virtual		void D0(const Standard_Real U, const Standard_Real V, gp_Pnt & P) const;
		%feature("autodoc", "1");
		virtual		void D1(const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V) const;
		%feature("autodoc", "1");
		virtual		void D2(const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V, gp_Vec & D2U, gp_Vec & D2V, gp_Vec & D2UV) const;
		%feature("autodoc", "1");
		virtual		void D3(const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V, gp_Vec & D2U, gp_Vec & D2V, gp_Vec & D2UV, gp_Vec & D3U, gp_Vec & D3V, gp_Vec & D3UUV, gp_Vec & D3UVV) const;
		%feature("autodoc", "1");
		virtual		gp_Vec DN(const Standard_Real U, const Standard_Real V, const Standard_Integer Nu, const Standard_Integer Nv) const;
		%feature("autodoc", "1");
		gp_Pnt Value(const gp_Pnt2d pnt) const;
		%feature("autodoc", "1");
		void ComputeJointValues(const ShapeExtend_Parametrisation param=ShapeExtend_Natural);
		%feature("autodoc", "1");
		Standard_Boolean CheckConnectivity(const Standard_Real prec);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ShapeExtend_CompositeSurface {
	Handle_ShapeExtend_CompositeSurface GetHandle() {
	return *(Handle_ShapeExtend_CompositeSurface*) &$self;
	}
};
%extend ShapeExtend_CompositeSurface {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") ShapeExtend_CompositeSurface::~ShapeExtend_CompositeSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeExtend_CompositeSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor ShapeExtend_Explorer;
class ShapeExtend_Explorer {
	public:
		%feature("autodoc", "1");
		ShapeExtend_Explorer();
		%feature("autodoc", "1");
		TopoDS_Shape CompoundFromSeq(const Handle_TopTools_HSequenceOfShape &seqval) const;
		%feature("autodoc", "1");
		Handle_TopTools_HSequenceOfShape SeqFromCompound(const TopoDS_Shape comp, const Standard_Boolean expcomp) const;
		%feature("autodoc", "1");
		void ListFromSeq(const Handle_TopTools_HSequenceOfShape &seqval, TopTools_ListOfShape & lisval, const Standard_Boolean clear=1) const;
		%feature("autodoc", "1");
		Handle_TopTools_HSequenceOfShape SeqFromList(const TopTools_ListOfShape &lisval) const;
		%feature("autodoc", "1");
		TopAbs_ShapeEnum ShapeType(const TopoDS_Shape shape, const Standard_Boolean compound) const;
		%feature("autodoc", "1");
		TopoDS_Shape SortedCompound(const TopoDS_Shape shape, const TopAbs_ShapeEnum type, const Standard_Boolean explore, const Standard_Boolean compound) const;
		%feature("autodoc", "1");
		void DispatchList(const Handle_TopTools_HSequenceOfShape &list, Handle_TopTools_HSequenceOfShape & vertices, Handle_TopTools_HSequenceOfShape & edges, Handle_TopTools_HSequenceOfShape & wires, Handle_TopTools_HSequenceOfShape & faces, Handle_TopTools_HSequenceOfShape & shells, Handle_TopTools_HSequenceOfShape & solids, Handle_TopTools_HSequenceOfShape & compsols, Handle_TopTools_HSequenceOfShape & compounds) const;

};
%feature("shadow") ShapeExtend_Explorer::~ShapeExtend_Explorer %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ShapeExtend_Explorer {
	void _kill_pointed() {
		delete $self;
	}
};
