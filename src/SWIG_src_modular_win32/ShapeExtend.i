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
%module ShapeExtend

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



%nodefaultctor Handle_ShapeExtend_BasicMsgRegistrator;
class Handle_ShapeExtend_BasicMsgRegistrator : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_ShapeExtend_BasicMsgRegistrator();
		%feature("autodoc", "1");
		Handle_ShapeExtend_BasicMsgRegistrator();
		%feature("autodoc", "1");
		Handle_ShapeExtend_BasicMsgRegistrator(const Handle_ShapeExtend_BasicMsgRegistrator &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeExtend_BasicMsgRegistrator(const ShapeExtend_BasicMsgRegistrator *anItem);
		%feature("autodoc", "1");
		Handle_ShapeExtend_BasicMsgRegistrator const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeExtend_BasicMsgRegistrator {
	ShapeExtend_BasicMsgRegistrator* GetObject() {
	return (ShapeExtend_BasicMsgRegistrator*)$self->Access();
	}
};

%nodefaultctor Handle_ShapeExtend_DataMapNodeOfDataMapOfTransientListOfMsg;
class Handle_ShapeExtend_DataMapNodeOfDataMapOfTransientListOfMsg : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_ShapeExtend_DataMapNodeOfDataMapOfTransientListOfMsg();
		%feature("autodoc", "1");
		Handle_ShapeExtend_DataMapNodeOfDataMapOfTransientListOfMsg();
		%feature("autodoc", "1");
		Handle_ShapeExtend_DataMapNodeOfDataMapOfTransientListOfMsg(const Handle_ShapeExtend_DataMapNodeOfDataMapOfTransientListOfMsg &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeExtend_DataMapNodeOfDataMapOfTransientListOfMsg(const ShapeExtend_DataMapNodeOfDataMapOfTransientListOfMsg *anItem);
		%feature("autodoc", "1");
		Handle_ShapeExtend_DataMapNodeOfDataMapOfTransientListOfMsg const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeExtend_DataMapNodeOfDataMapOfTransientListOfMsg {
	ShapeExtend_DataMapNodeOfDataMapOfTransientListOfMsg* GetObject() {
	return (ShapeExtend_DataMapNodeOfDataMapOfTransientListOfMsg*)$self->Access();
	}
};

%nodefaultctor Handle_ShapeExtend_DataMapNodeOfDataMapOfShapeListOfMsg;
class Handle_ShapeExtend_DataMapNodeOfDataMapOfShapeListOfMsg : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_ShapeExtend_DataMapNodeOfDataMapOfShapeListOfMsg();
		%feature("autodoc", "1");
		Handle_ShapeExtend_DataMapNodeOfDataMapOfShapeListOfMsg();
		%feature("autodoc", "1");
		Handle_ShapeExtend_DataMapNodeOfDataMapOfShapeListOfMsg(const Handle_ShapeExtend_DataMapNodeOfDataMapOfShapeListOfMsg &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeExtend_DataMapNodeOfDataMapOfShapeListOfMsg(const ShapeExtend_DataMapNodeOfDataMapOfShapeListOfMsg *anItem);
		%feature("autodoc", "1");
		Handle_ShapeExtend_DataMapNodeOfDataMapOfShapeListOfMsg const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeExtend_DataMapNodeOfDataMapOfShapeListOfMsg {
	ShapeExtend_DataMapNodeOfDataMapOfShapeListOfMsg* GetObject() {
	return (ShapeExtend_DataMapNodeOfDataMapOfShapeListOfMsg*)$self->Access();
	}
};

%nodefaultctor Handle_ShapeExtend_MsgRegistrator;
class Handle_ShapeExtend_MsgRegistrator : public Handle_ShapeExtend_BasicMsgRegistrator {
	public:
		%feature("autodoc", "1");
		~Handle_ShapeExtend_MsgRegistrator();
		%feature("autodoc", "1");
		Handle_ShapeExtend_MsgRegistrator();
		%feature("autodoc", "1");
		Handle_ShapeExtend_MsgRegistrator(const Handle_ShapeExtend_MsgRegistrator &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeExtend_MsgRegistrator(const ShapeExtend_MsgRegistrator *anItem);
		%feature("autodoc", "1");
		Handle_ShapeExtend_MsgRegistrator const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeExtend_MsgRegistrator {
	ShapeExtend_MsgRegistrator* GetObject() {
	return (ShapeExtend_MsgRegistrator*)$self->Access();
	}
};

%nodefaultctor Handle_ShapeExtend_ComplexCurve;
class Handle_ShapeExtend_ComplexCurve : public Handle_Geom_Curve {
	public:
		%feature("autodoc", "1");
		~Handle_ShapeExtend_ComplexCurve();
		%feature("autodoc", "1");
		Handle_ShapeExtend_ComplexCurve();
		%feature("autodoc", "1");
		Handle_ShapeExtend_ComplexCurve(const Handle_ShapeExtend_ComplexCurve &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeExtend_ComplexCurve(const ShapeExtend_ComplexCurve *anItem);
		%feature("autodoc", "1");
		Handle_ShapeExtend_ComplexCurve const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeExtend_ComplexCurve {
	ShapeExtend_ComplexCurve* GetObject() {
	return (ShapeExtend_ComplexCurve*)$self->Access();
	}
};

%nodefaultctor Handle_ShapeExtend_CompositeSurface;
class Handle_ShapeExtend_CompositeSurface : public Handle_Geom_Surface {
	public:
		%feature("autodoc", "1");
		~Handle_ShapeExtend_CompositeSurface();
		%feature("autodoc", "1");
		Handle_ShapeExtend_CompositeSurface();
		%feature("autodoc", "1");
		Handle_ShapeExtend_CompositeSurface(const Handle_ShapeExtend_CompositeSurface &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeExtend_CompositeSurface(const ShapeExtend_CompositeSurface *anItem);
		%feature("autodoc", "1");
		Handle_ShapeExtend_CompositeSurface const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeExtend_CompositeSurface {
	ShapeExtend_CompositeSurface* GetObject() {
	return (ShapeExtend_CompositeSurface*)$self->Access();
	}
};

%nodefaultctor Handle_ShapeExtend_WireData;
class Handle_ShapeExtend_WireData : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_ShapeExtend_WireData();
		%feature("autodoc", "1");
		Handle_ShapeExtend_WireData();
		%feature("autodoc", "1");
		Handle_ShapeExtend_WireData(const Handle_ShapeExtend_WireData &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeExtend_WireData(const ShapeExtend_WireData *anItem);
		%feature("autodoc", "1");
		Handle_ShapeExtend_WireData const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeExtend_WireData {
	ShapeExtend_WireData* GetObject() {
	return (ShapeExtend_WireData*)$self->Access();
	}
};

%nodefaultctor ShapeExtend_ComplexCurve;
class ShapeExtend_ComplexCurve : public Geom_Curve {
	public:
		%feature("autodoc", "1");
		virtual		Standard_Integer NbCurves() const;
		%feature("autodoc", "1");
		virtual		const Handle_Geom_Curve & Curve(const Standard_Integer index) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer LocateParameter(const Standard_Real U, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		virtual		Standard_Real LocalToGlobal(const Standard_Integer index, const Standard_Real Ulocal) const;
		%feature("autodoc", "1");
		virtual		void Transform(const gp_Trsf &T);
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

%nodefaultctor ShapeExtend_WireData;
class ShapeExtend_WireData : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		ShapeExtend_WireData();
		%feature("autodoc", "1");
		ShapeExtend_WireData(const TopoDS_Wire &wire, const Standard_Boolean chained=1, const Standard_Boolean theManifoldMode=1);
		%feature("autodoc", "1");
		void Init(const Handle_ShapeExtend_WireData &other);
		%feature("autodoc", "1");
		Standard_Boolean Init(const TopoDS_Wire &wire, const Standard_Boolean chained=1, const Standard_Boolean theManifoldMode=1);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void ComputeSeams(const Standard_Boolean enforce=1);
		%feature("autodoc", "1");
		void SetLast(const Standard_Integer num);
		%feature("autodoc", "1");
		void SetDegeneratedLast();
		%feature("autodoc", "1");
		void Add(const TopoDS_Edge &edge, const Standard_Integer atnum=0);
		%feature("autodoc", "1");
		void Add(const TopoDS_Wire &wire, const Standard_Integer atnum=0);
		%feature("autodoc", "1");
		void Add(const Handle_ShapeExtend_WireData &wire, const Standard_Integer atnum=0);
		%feature("autodoc", "1");
		void Add(const TopoDS_Shape &shape, const Standard_Integer atnum=0);
		%feature("autodoc", "1");
		void AddOriented(const TopoDS_Edge &edge, const Standard_Integer mode);
		%feature("autodoc", "1");
		void AddOriented(const TopoDS_Wire &wire, const Standard_Integer mode);
		%feature("autodoc", "1");
		void AddOriented(const TopoDS_Shape &shape, const Standard_Integer mode);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer num=0);
		%feature("autodoc", "1");
		void Set(const TopoDS_Edge &edge, const Standard_Integer num=0);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void Reverse(const TopoDS_Face &face);
		%feature("autodoc", "1");
		Standard_Integer NbEdges() const;
		%feature("autodoc", "1");
		Standard_Integer NbNonManifoldEdges() const;
		%feature("autodoc", "1");
		TopoDS_Edge NonmanifoldEdge(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Handle_TopTools_HSequenceOfShape NonmanifoldEdges() const;
		%feature("autodoc", "1");
		Standard_Boolean & ManifoldMode();
		%feature("autodoc", "1");
		TopoDS_Edge Edge(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer Index(const TopoDS_Edge &edge);
		%feature("autodoc", "1");
		Standard_Boolean IsSeam(const Standard_Integer num);
		%feature("autodoc", "1");
		TopoDS_Wire Wire() const;
		%feature("autodoc", "1");
		TopoDS_Wire WireAPIMake() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~ShapeExtend_WireData();

};
%extend ShapeExtend_WireData {
	Handle_ShapeExtend_WireData GetHandle() {
	return *(Handle_ShapeExtend_WireData*) &$self;
	}
};

%nodefaultctor ShapeExtend;
class ShapeExtend {
	public:
		%feature("autodoc", "1");
		~ShapeExtend();
		%feature("autodoc", "1");
		ShapeExtend();
		%feature("autodoc", "1");
		void Init();
		%feature("autodoc", "1");
		Standard_Integer EncodeStatus(const ShapeExtend_Status status);
		%feature("autodoc", "1");
		Standard_Boolean DecodeStatus(const Standard_Integer flag, const ShapeExtend_Status status);

};

%nodefaultctor ShapeExtend_DataMapOfShapeListOfMsg;
class ShapeExtend_DataMapOfShapeListOfMsg : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		ShapeExtend_DataMapOfShapeListOfMsg(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		ShapeExtend_DataMapOfShapeListOfMsg & Assign(const ShapeExtend_DataMapOfShapeListOfMsg &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~ShapeExtend_DataMapOfShapeListOfMsg();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TopoDS_Shape &K, const Message_ListOfMsg &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TopoDS_Shape &K);
		%feature("autodoc", "1");
		const Message_ListOfMsg & Find(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		const Message_ListOfMsg & operator()(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		Message_ListOfMsg & ChangeFind(const TopoDS_Shape &K);
		%feature("autodoc", "1");
		Message_ListOfMsg & operator()(const TopoDS_Shape &K);

};

%nodefaultctor ShapeExtend_BasicMsgRegistrator;
class ShapeExtend_BasicMsgRegistrator : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		ShapeExtend_BasicMsgRegistrator();
		%feature("autodoc", "1");
		virtual		void Send(const Handle_Standard_Transient &object, const Message_Msg &message, const Message_Gravity gravity);
		%feature("autodoc", "1");
		virtual		void Send(const TopoDS_Shape &shape, const Message_Msg &message, const Message_Gravity gravity);
		%feature("autodoc", "1");
		virtual		void Send(const Message_Msg &message, const Message_Gravity gravity);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~ShapeExtend_BasicMsgRegistrator();

};
%extend ShapeExtend_BasicMsgRegistrator {
	Handle_ShapeExtend_BasicMsgRegistrator GetHandle() {
	return *(Handle_ShapeExtend_BasicMsgRegistrator*) &$self;
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
		%feature("autodoc", "1");
		void LocateUVPoint(const gp_Pnt2d &pnt, Standard_Integer & i, Standard_Integer & j) const;
		%feature("autodoc", "1");
		const Handle_Geom_Surface & Patch(const Standard_Real U, const Standard_Real V) const;
		%feature("autodoc", "1");
		const Handle_Geom_Surface & Patch(const gp_Pnt2d &pnt) const;
		%feature("autodoc", "1");
		Standard_Real ULocalToGlobal(const Standard_Integer i, const Standard_Integer j, const Standard_Real u) const;
		%feature("autodoc", "1");
		Standard_Real VLocalToGlobal(const Standard_Integer i, const Standard_Integer j, const Standard_Real v) const;
		%feature("autodoc", "1");
		gp_Pnt2d LocalToGlobal(const Standard_Integer i, const Standard_Integer j, const gp_Pnt2d &uv) const;
		%feature("autodoc", "1");
		Standard_Real UGlobalToLocal(const Standard_Integer i, const Standard_Integer j, const Standard_Real U) const;
		%feature("autodoc", "1");
		Standard_Real VGlobalToLocal(const Standard_Integer i, const Standard_Integer j, const Standard_Real V) const;
		%feature("autodoc", "1");
		gp_Pnt2d GlobalToLocal(const Standard_Integer i, const Standard_Integer j, const gp_Pnt2d &UV) const;
		%feature("autodoc", "1");
		Standard_Boolean GlobalToLocalTransformation(const Standard_Integer i, const Standard_Integer j, Standard_Real &OutValue, gp_Trsf2d & Trsf) const;
		%feature("autodoc", "1");
		virtual		void Transform(const gp_Trsf &T);
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
		%feature("autodoc", "1");
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
		gp_Pnt Value(const gp_Pnt2d &pnt) const;
		%feature("autodoc", "1");
		void ComputeJointValues(const ShapeExtend_Parametrisation param=ShapeExtend_Natural);
		%feature("autodoc", "1");
		Standard_Boolean CheckConnectivity(const Standard_Real prec);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~ShapeExtend_CompositeSurface();

};
%extend ShapeExtend_CompositeSurface {
	Handle_ShapeExtend_CompositeSurface GetHandle() {
	return *(Handle_ShapeExtend_CompositeSurface*) &$self;
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
		%feature("autodoc", "1");
		virtual		~ShapeExtend_DataMapNodeOfDataMapOfTransientListOfMsg();

};
%extend ShapeExtend_DataMapNodeOfDataMapOfTransientListOfMsg {
	Handle_ShapeExtend_DataMapNodeOfDataMapOfTransientListOfMsg GetHandle() {
	return *(Handle_ShapeExtend_DataMapNodeOfDataMapOfTransientListOfMsg*) &$self;
	}
};

%nodefaultctor ShapeExtend_DataMapIteratorOfDataMapOfTransientListOfMsg;
class ShapeExtend_DataMapIteratorOfDataMapOfTransientListOfMsg : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		~ShapeExtend_DataMapIteratorOfDataMapOfTransientListOfMsg();
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

%nodefaultctor ShapeExtend_DataMapIteratorOfDataMapOfShapeListOfMsg;
class ShapeExtend_DataMapIteratorOfDataMapOfShapeListOfMsg : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		~ShapeExtend_DataMapIteratorOfDataMapOfShapeListOfMsg();
		%feature("autodoc", "1");
		ShapeExtend_DataMapIteratorOfDataMapOfShapeListOfMsg();
		%feature("autodoc", "1");
		ShapeExtend_DataMapIteratorOfDataMapOfShapeListOfMsg(const ShapeExtend_DataMapOfShapeListOfMsg &aMap);
		%feature("autodoc", "1");
		void Initialize(const ShapeExtend_DataMapOfShapeListOfMsg &aMap);
		%feature("autodoc", "1");
		const TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		const Message_ListOfMsg & Value() const;

};

%nodefaultctor ShapeExtend_MsgRegistrator;
class ShapeExtend_MsgRegistrator : public ShapeExtend_BasicMsgRegistrator {
	public:
		%feature("autodoc", "1");
		ShapeExtend_MsgRegistrator();
		%feature("autodoc", "1");
		virtual		void Send(const Handle_Standard_Transient &object, const Message_Msg &message, const Message_Gravity gravity);
		%feature("autodoc", "1");
		virtual		void Send(const TopoDS_Shape &shape, const Message_Msg &message, const Message_Gravity gravity);
		%feature("autodoc", "1");
		const ShapeExtend_DataMapOfTransientListOfMsg & MapTransient() const;
		%feature("autodoc", "1");
		const ShapeExtend_DataMapOfShapeListOfMsg & MapShape() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~ShapeExtend_MsgRegistrator();

};
%extend ShapeExtend_MsgRegistrator {
	Handle_ShapeExtend_MsgRegistrator GetHandle() {
	return *(Handle_ShapeExtend_MsgRegistrator*) &$self;
	}
};

%nodefaultctor ShapeExtend_DataMapNodeOfDataMapOfShapeListOfMsg;
class ShapeExtend_DataMapNodeOfDataMapOfShapeListOfMsg : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		ShapeExtend_DataMapNodeOfDataMapOfShapeListOfMsg(const TopoDS_Shape &K, const Message_ListOfMsg &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		Message_ListOfMsg & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~ShapeExtend_DataMapNodeOfDataMapOfShapeListOfMsg();

};
%extend ShapeExtend_DataMapNodeOfDataMapOfShapeListOfMsg {
	Handle_ShapeExtend_DataMapNodeOfDataMapOfShapeListOfMsg GetHandle() {
	return *(Handle_ShapeExtend_DataMapNodeOfDataMapOfShapeListOfMsg*) &$self;
	}
};

%nodefaultctor ShapeExtend_Explorer;
class ShapeExtend_Explorer {
	public:
		%feature("autodoc", "1");
		~ShapeExtend_Explorer();
		%feature("autodoc", "1");
		ShapeExtend_Explorer();
		%feature("autodoc", "1");
		TopoDS_Shape CompoundFromSeq(const Handle_TopTools_HSequenceOfShape &seqval) const;
		%feature("autodoc", "1");
		Handle_TopTools_HSequenceOfShape SeqFromCompound(const TopoDS_Shape &comp, const Standard_Boolean expcomp) const;
		%feature("autodoc", "1");
		void ListFromSeq(const Handle_TopTools_HSequenceOfShape &seqval, TopTools_ListOfShape & lisval, const Standard_Boolean clear=1) const;
		%feature("autodoc", "1");
		Handle_TopTools_HSequenceOfShape SeqFromList(const TopTools_ListOfShape &lisval) const;
		%feature("autodoc", "1");
		TopAbs_ShapeEnum ShapeType(const TopoDS_Shape &shape, const Standard_Boolean compound) const;
		%feature("autodoc", "1");
		TopoDS_Shape SortedCompound(const TopoDS_Shape &shape, const TopAbs_ShapeEnum type, const Standard_Boolean explore, const Standard_Boolean compound) const;
		%feature("autodoc", "1");
		void DispatchList(const Handle_TopTools_HSequenceOfShape &list, Handle_TopTools_HSequenceOfShape & vertices, Handle_TopTools_HSequenceOfShape & edges, Handle_TopTools_HSequenceOfShape & wires, Handle_TopTools_HSequenceOfShape & faces, Handle_TopTools_HSequenceOfShape & shells, Handle_TopTools_HSequenceOfShape & solids, Handle_TopTools_HSequenceOfShape & compsols, Handle_TopTools_HSequenceOfShape & compounds) const;

};

%nodefaultctor ShapeExtend_DataMapOfTransientListOfMsg;
class ShapeExtend_DataMapOfTransientListOfMsg : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		ShapeExtend_DataMapOfTransientListOfMsg(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		ShapeExtend_DataMapOfTransientListOfMsg & Assign(const ShapeExtend_DataMapOfTransientListOfMsg &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~ShapeExtend_DataMapOfTransientListOfMsg();
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