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

%module HLRBRep
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include HLRBRep_renames.i


%include HLRBRep_required_python_modules.i


%include HLRBRep_dependencies.i


%include HLRBRep_headers.i




%nodefaultctor Handle_HLRBRep_InternalAlgo;
class Handle_HLRBRep_InternalAlgo : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_HLRBRep_InternalAlgo();
		%feature("autodoc", "1");
		Handle_HLRBRep_InternalAlgo(const Handle_HLRBRep_InternalAlgo &aHandle);
		%feature("autodoc", "1");
		Handle_HLRBRep_InternalAlgo(const HLRBRep_InternalAlgo *anItem);
		%feature("autodoc", "1");
		Handle_HLRBRep_InternalAlgo & operator=(const Handle_HLRBRep_InternalAlgo &aHandle);
		%feature("autodoc", "1");
		Handle_HLRBRep_InternalAlgo & operator=(const HLRBRep_InternalAlgo *anItem);
		%feature("autodoc", "1");
		static		Handle_HLRBRep_InternalAlgo DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_HLRBRep_InternalAlgo {
	HLRBRep_InternalAlgo* GetObject() {
	return (HLRBRep_InternalAlgo*)$self->Access();
	}
};
%feature("shadow") Handle_HLRBRep_InternalAlgo::~Handle_HLRBRep_InternalAlgo %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_HLRBRep_InternalAlgo {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_HLRBRep_Algo;
class Handle_HLRBRep_Algo : public Handle_HLRBRep_InternalAlgo {
	public:
		%feature("autodoc", "1");
		Handle_HLRBRep_Algo();
		%feature("autodoc", "1");
		Handle_HLRBRep_Algo(const Handle_HLRBRep_Algo &aHandle);
		%feature("autodoc", "1");
		Handle_HLRBRep_Algo(const HLRBRep_Algo *anItem);
		%feature("autodoc", "1");
		Handle_HLRBRep_Algo & operator=(const Handle_HLRBRep_Algo &aHandle);
		%feature("autodoc", "1");
		Handle_HLRBRep_Algo & operator=(const HLRBRep_Algo *anItem);
		%feature("autodoc", "1");
		static		Handle_HLRBRep_Algo DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_HLRBRep_Algo {
	HLRBRep_Algo* GetObject() {
	return (HLRBRep_Algo*)$self->Access();
	}
};
%feature("shadow") Handle_HLRBRep_Algo::~Handle_HLRBRep_Algo %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_HLRBRep_Algo {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_HLRBRep_AreaLimit;
class Handle_HLRBRep_AreaLimit : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_HLRBRep_AreaLimit();
		%feature("autodoc", "1");
		Handle_HLRBRep_AreaLimit(const Handle_HLRBRep_AreaLimit &aHandle);
		%feature("autodoc", "1");
		Handle_HLRBRep_AreaLimit(const HLRBRep_AreaLimit *anItem);
		%feature("autodoc", "1");
		Handle_HLRBRep_AreaLimit & operator=(const Handle_HLRBRep_AreaLimit &aHandle);
		%feature("autodoc", "1");
		Handle_HLRBRep_AreaLimit & operator=(const HLRBRep_AreaLimit *anItem);
		%feature("autodoc", "1");
		static		Handle_HLRBRep_AreaLimit DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_HLRBRep_AreaLimit {
	HLRBRep_AreaLimit* GetObject() {
	return (HLRBRep_AreaLimit*)$self->Access();
	}
};
%feature("shadow") Handle_HLRBRep_AreaLimit::~Handle_HLRBRep_AreaLimit %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_HLRBRep_AreaLimit {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_HLRBRep_Data;
class Handle_HLRBRep_Data : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_HLRBRep_Data();
		%feature("autodoc", "1");
		Handle_HLRBRep_Data(const Handle_HLRBRep_Data &aHandle);
		%feature("autodoc", "1");
		Handle_HLRBRep_Data(const HLRBRep_Data *anItem);
		%feature("autodoc", "1");
		Handle_HLRBRep_Data & operator=(const Handle_HLRBRep_Data &aHandle);
		%feature("autodoc", "1");
		Handle_HLRBRep_Data & operator=(const HLRBRep_Data *anItem);
		%feature("autodoc", "1");
		static		Handle_HLRBRep_Data DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_HLRBRep_Data {
	HLRBRep_Data* GetObject() {
	return (HLRBRep_Data*)$self->Access();
	}
};
%feature("shadow") Handle_HLRBRep_Data::~Handle_HLRBRep_Data %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_HLRBRep_Data {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_HLRBRep_PolyAlgo;
class Handle_HLRBRep_PolyAlgo : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_HLRBRep_PolyAlgo();
		%feature("autodoc", "1");
		Handle_HLRBRep_PolyAlgo(const Handle_HLRBRep_PolyAlgo &aHandle);
		%feature("autodoc", "1");
		Handle_HLRBRep_PolyAlgo(const HLRBRep_PolyAlgo *anItem);
		%feature("autodoc", "1");
		Handle_HLRBRep_PolyAlgo & operator=(const Handle_HLRBRep_PolyAlgo &aHandle);
		%feature("autodoc", "1");
		Handle_HLRBRep_PolyAlgo & operator=(const HLRBRep_PolyAlgo *anItem);
		%feature("autodoc", "1");
		static		Handle_HLRBRep_PolyAlgo DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_HLRBRep_PolyAlgo {
	HLRBRep_PolyAlgo* GetObject() {
	return (HLRBRep_PolyAlgo*)$self->Access();
	}
};
%feature("shadow") Handle_HLRBRep_PolyAlgo::~Handle_HLRBRep_PolyAlgo %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_HLRBRep_PolyAlgo {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_HLRBRep_ListNodeOfListOfBPoint;
class Handle_HLRBRep_ListNodeOfListOfBPoint : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_HLRBRep_ListNodeOfListOfBPoint();
		%feature("autodoc", "1");
		Handle_HLRBRep_ListNodeOfListOfBPoint(const Handle_HLRBRep_ListNodeOfListOfBPoint &aHandle);
		%feature("autodoc", "1");
		Handle_HLRBRep_ListNodeOfListOfBPoint(const HLRBRep_ListNodeOfListOfBPoint *anItem);
		%feature("autodoc", "1");
		Handle_HLRBRep_ListNodeOfListOfBPoint & operator=(const Handle_HLRBRep_ListNodeOfListOfBPoint &aHandle);
		%feature("autodoc", "1");
		Handle_HLRBRep_ListNodeOfListOfBPoint & operator=(const HLRBRep_ListNodeOfListOfBPoint *anItem);
		%feature("autodoc", "1");
		static		Handle_HLRBRep_ListNodeOfListOfBPoint DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_HLRBRep_ListNodeOfListOfBPoint {
	HLRBRep_ListNodeOfListOfBPoint* GetObject() {
	return (HLRBRep_ListNodeOfListOfBPoint*)$self->Access();
	}
};
%feature("shadow") Handle_HLRBRep_ListNodeOfListOfBPoint::~Handle_HLRBRep_ListNodeOfListOfBPoint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_HLRBRep_ListNodeOfListOfBPoint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_HLRBRep_SequenceNodeOfSeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfCInter;
class Handle_HLRBRep_SequenceNodeOfSeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfCInter : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_HLRBRep_SequenceNodeOfSeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfCInter();
		%feature("autodoc", "1");
		Handle_HLRBRep_SequenceNodeOfSeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfCInter(const Handle_HLRBRep_SequenceNodeOfSeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfCInter &aHandle);
		%feature("autodoc", "1");
		Handle_HLRBRep_SequenceNodeOfSeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfCInter(const HLRBRep_SequenceNodeOfSeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfCInter *anItem);
		%feature("autodoc", "1");
		Handle_HLRBRep_SequenceNodeOfSeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfCInter & operator=(const Handle_HLRBRep_SequenceNodeOfSeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfCInter &aHandle);
		%feature("autodoc", "1");
		Handle_HLRBRep_SequenceNodeOfSeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfCInter & operator=(const HLRBRep_SequenceNodeOfSeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfCInter *anItem);
		%feature("autodoc", "1");
		static		Handle_HLRBRep_SequenceNodeOfSeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfCInter DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_HLRBRep_SequenceNodeOfSeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfCInter {
	HLRBRep_SequenceNodeOfSeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfCInter* GetObject() {
	return (HLRBRep_SequenceNodeOfSeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfCInter*)$self->Access();
	}
};
%feature("shadow") Handle_HLRBRep_SequenceNodeOfSeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfCInter::~Handle_HLRBRep_SequenceNodeOfSeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfCInter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_HLRBRep_SequenceNodeOfSeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfCInter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_HLRBRep_SequenceNodeOfSeqOfShapeBounds;
class Handle_HLRBRep_SequenceNodeOfSeqOfShapeBounds : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_HLRBRep_SequenceNodeOfSeqOfShapeBounds();
		%feature("autodoc", "1");
		Handle_HLRBRep_SequenceNodeOfSeqOfShapeBounds(const Handle_HLRBRep_SequenceNodeOfSeqOfShapeBounds &aHandle);
		%feature("autodoc", "1");
		Handle_HLRBRep_SequenceNodeOfSeqOfShapeBounds(const HLRBRep_SequenceNodeOfSeqOfShapeBounds *anItem);
		%feature("autodoc", "1");
		Handle_HLRBRep_SequenceNodeOfSeqOfShapeBounds & operator=(const Handle_HLRBRep_SequenceNodeOfSeqOfShapeBounds &aHandle);
		%feature("autodoc", "1");
		Handle_HLRBRep_SequenceNodeOfSeqOfShapeBounds & operator=(const HLRBRep_SequenceNodeOfSeqOfShapeBounds *anItem);
		%feature("autodoc", "1");
		static		Handle_HLRBRep_SequenceNodeOfSeqOfShapeBounds DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_HLRBRep_SequenceNodeOfSeqOfShapeBounds {
	HLRBRep_SequenceNodeOfSeqOfShapeBounds* GetObject() {
	return (HLRBRep_SequenceNodeOfSeqOfShapeBounds*)$self->Access();
	}
};
%feature("shadow") Handle_HLRBRep_SequenceNodeOfSeqOfShapeBounds::~Handle_HLRBRep_SequenceNodeOfSeqOfShapeBounds %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_HLRBRep_SequenceNodeOfSeqOfShapeBounds {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_HLRBRep_ListNodeOfListOfBPnt2D;
class Handle_HLRBRep_ListNodeOfListOfBPnt2D : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_HLRBRep_ListNodeOfListOfBPnt2D();
		%feature("autodoc", "1");
		Handle_HLRBRep_ListNodeOfListOfBPnt2D(const Handle_HLRBRep_ListNodeOfListOfBPnt2D &aHandle);
		%feature("autodoc", "1");
		Handle_HLRBRep_ListNodeOfListOfBPnt2D(const HLRBRep_ListNodeOfListOfBPnt2D *anItem);
		%feature("autodoc", "1");
		Handle_HLRBRep_ListNodeOfListOfBPnt2D & operator=(const Handle_HLRBRep_ListNodeOfListOfBPnt2D &aHandle);
		%feature("autodoc", "1");
		Handle_HLRBRep_ListNodeOfListOfBPnt2D & operator=(const HLRBRep_ListNodeOfListOfBPnt2D *anItem);
		%feature("autodoc", "1");
		static		Handle_HLRBRep_ListNodeOfListOfBPnt2D DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_HLRBRep_ListNodeOfListOfBPnt2D {
	HLRBRep_ListNodeOfListOfBPnt2D* GetObject() {
	return (HLRBRep_ListNodeOfListOfBPnt2D*)$self->Access();
	}
};
%feature("shadow") Handle_HLRBRep_ListNodeOfListOfBPnt2D::~Handle_HLRBRep_ListNodeOfListOfBPnt2D %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_HLRBRep_ListNodeOfListOfBPnt2D {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRBRep_BCurveTool;
class HLRBRep_BCurveTool {
	public:
		%feature("autodoc", "1");
		HLRBRep_BCurveTool();
		%feature("autodoc", "1");
		static		Standard_Real FirstParameter(const BRepAdaptor_Curve &C);
		%feature("autodoc", "1");
		static		Standard_Real LastParameter(const BRepAdaptor_Curve &C);
		%feature("autodoc", "1");
		static		GeomAbs_Shape Continuity(const BRepAdaptor_Curve &C);
		%feature("autodoc", "1");
		static		Standard_Integer NbIntervals(BRepAdaptor_Curve & C, const GeomAbs_Shape Sh);
		%feature("autodoc", "1");
		static		void Intervals(BRepAdaptor_Curve & C, TColStd_Array1OfReal & Tab, const GeomAbs_Shape Sh);
		%feature("autodoc", "1");
		static		Standard_Boolean IsClosed(const BRepAdaptor_Curve &C);
		%feature("autodoc", "1");
		static		Standard_Boolean IsPeriodic(const BRepAdaptor_Curve &C);
		%feature("autodoc", "1");
		static		Standard_Real Period(const BRepAdaptor_Curve &C);
		%feature("autodoc", "1");
		static		gp_Pnt Value(const BRepAdaptor_Curve &C, const Standard_Real U);
		%feature("autodoc", "1");
		static		void D0(const BRepAdaptor_Curve &C, const Standard_Real U, gp_Pnt & P);
		%feature("autodoc", "1");
		static		void D1(const BRepAdaptor_Curve &C, const Standard_Real U, gp_Pnt & P, gp_Vec & T);
		%feature("autodoc", "1");
		static		void D2(const BRepAdaptor_Curve &C, const Standard_Real U, gp_Pnt & P, gp_Vec & T, gp_Vec & N);
		%feature("autodoc", "1");
		static		void D3(const BRepAdaptor_Curve &C, const Standard_Real U, gp_Pnt & P, gp_Vec & V1, gp_Vec & V2, gp_Vec & V3);
		%feature("autodoc", "1");
		static		gp_Vec DN(const BRepAdaptor_Curve &C, const Standard_Real U, const Standard_Integer N);
		%feature("autodoc", "1");
		static		Standard_Real Resolution(const BRepAdaptor_Curve &C, const Standard_Real R3d);
		%feature("autodoc", "1");
		static		GeomAbs_CurveType GetType(const BRepAdaptor_Curve &C);
		%feature("autodoc", "1");
		static		gp_Lin Line(const BRepAdaptor_Curve &C);
		%feature("autodoc", "1");
		static		gp_Circ Circle(const BRepAdaptor_Curve &C);
		%feature("autodoc", "1");
		static		gp_Elips Ellipse(const BRepAdaptor_Curve &C);
		%feature("autodoc", "1");
		static		gp_Hypr Hyperbola(const BRepAdaptor_Curve &C);
		%feature("autodoc", "1");
		static		gp_Parab Parabola(const BRepAdaptor_Curve &C);
		%feature("autodoc", "1");
		static		Handle_Geom_BezierCurve Bezier(const BRepAdaptor_Curve &C);
		%feature("autodoc", "1");
		static		Handle_Geom_BSplineCurve BSpline(const BRepAdaptor_Curve &C);
		%feature("autodoc", "1");
		static		Standard_Integer Degree(const BRepAdaptor_Curve &C);
		%feature("autodoc", "1");
		static		Standard_Boolean IsRational(const BRepAdaptor_Curve &C);
		%feature("autodoc", "1");
		static		Standard_Integer NbPoles(const BRepAdaptor_Curve &C);
		%feature("autodoc", "1");
		static		Standard_Integer NbKnots(const BRepAdaptor_Curve &C);
		%feature("autodoc", "1");
		static		void Poles(const BRepAdaptor_Curve &C, TColgp_Array1OfPnt & T);
		%feature("autodoc", "1");
		static		void PolesAndWeights(const BRepAdaptor_Curve &C, TColgp_Array1OfPnt & T, TColStd_Array1OfReal & W);
		%feature("autodoc", "1");
		static		Standard_Integer NbSamples(const BRepAdaptor_Curve &C, const Standard_Real U0, const Standard_Real U1);

};
%feature("shadow") HLRBRep_BCurveTool::~HLRBRep_BCurveTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRBRep_BCurveTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRBRep_CInter;
class HLRBRep_CInter : public IntRes2d_Intersection {
	public:
		%feature("autodoc", "1");
		HLRBRep_CInter();
		%feature("autodoc", "1");
		HLRBRep_CInter(const Standard_Address &C, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		HLRBRep_CInter(const Standard_Address &C, const IntRes2d_Domain &D, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		HLRBRep_CInter(const Standard_Address &C1, const Standard_Address &C2, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		HLRBRep_CInter(const Standard_Address &C1, const IntRes2d_Domain &D1, const Standard_Address &C2, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		HLRBRep_CInter(const Standard_Address &C1, const Standard_Address &C2, const IntRes2d_Domain &D2, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		HLRBRep_CInter(const Standard_Address &C1, const IntRes2d_Domain &D1, const Standard_Address &C2, const IntRes2d_Domain &D2, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Perform(const Standard_Address &C1, const IntRes2d_Domain &D1, const Standard_Address &C2, const IntRes2d_Domain &D2, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Perform(const Standard_Address &C1, const Standard_Address &C2, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Perform(const Standard_Address &C1, const IntRes2d_Domain &D1, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Perform(const Standard_Address &C1, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Perform(const Standard_Address &C1, const IntRes2d_Domain &D1, const Standard_Address &C2, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Perform(const Standard_Address &C1, const Standard_Address &C2, const IntRes2d_Domain &D2, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		IntRes2d_Domain ComputeDomain(const Standard_Address &C1, const Standard_Real TolDomain) const;

};
%feature("shadow") HLRBRep_CInter::~HLRBRep_CInter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRBRep_CInter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRBRep_InterferencePoly2dOfTheIntPCurvePCurveOfCInter;
class HLRBRep_InterferencePoly2dOfTheIntPCurvePCurveOfCInter : public Intf_Interference {
	public:
		%feature("autodoc", "1");
		HLRBRep_InterferencePoly2dOfTheIntPCurvePCurveOfCInter();
		%feature("autodoc", "1");
		HLRBRep_InterferencePoly2dOfTheIntPCurvePCurveOfCInter(const HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter &Obje1, const HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter &Obje2);
		%feature("autodoc", "1");
		HLRBRep_InterferencePoly2dOfTheIntPCurvePCurveOfCInter(const HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter &Obje);
		%feature("autodoc", "1");
		void Perform(const HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter &Obje1, const HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter &Obje2);
		%feature("autodoc", "1");
		void Perform(const HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter &Obje);
		%feature("autodoc", "1");
		gp_Pnt2d Pnt2dValue(const Standard_Integer Index) const;

};
%feature("shadow") HLRBRep_InterferencePoly2dOfTheIntPCurvePCurveOfCInter::~HLRBRep_InterferencePoly2dOfTheIntPCurvePCurveOfCInter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRBRep_InterferencePoly2dOfTheIntPCurvePCurveOfCInter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRBRep_ListOfBPoint;
class HLRBRep_ListOfBPoint {
	public:
		%feature("autodoc", "1");
		HLRBRep_ListOfBPoint();
		%feature("autodoc", "1");
		void Assign(const HLRBRep_ListOfBPoint &Other);
		%feature("autodoc", "1");
		void operator=(const HLRBRep_ListOfBPoint &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const HLRBRep_BiPoint &I);
		%feature("autodoc", "1");
		void Prepend(const HLRBRep_BiPoint &I, HLRBRep_ListIteratorOfListOfBPoint & theIt);
		%feature("autodoc", "1");
		void Prepend(HLRBRep_ListOfBPoint & Other);
		%feature("autodoc", "1");
		void Append(const HLRBRep_BiPoint &I);
		%feature("autodoc", "1");
		void Append(const HLRBRep_BiPoint &I, HLRBRep_ListIteratorOfListOfBPoint & theIt);
		%feature("autodoc", "1");
		void Append(HLRBRep_ListOfBPoint & Other);
		%feature("autodoc", "1");
		HLRBRep_BiPoint & First() const;
		%feature("autodoc", "1");
		HLRBRep_BiPoint & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(HLRBRep_ListIteratorOfListOfBPoint & It);
		%feature("autodoc", "1");
		void InsertBefore(const HLRBRep_BiPoint &I, HLRBRep_ListIteratorOfListOfBPoint & It);
		%feature("autodoc", "1");
		void InsertBefore(HLRBRep_ListOfBPoint & Other, HLRBRep_ListIteratorOfListOfBPoint & It);
		%feature("autodoc", "1");
		void InsertAfter(const HLRBRep_BiPoint &I, HLRBRep_ListIteratorOfListOfBPoint & It);
		%feature("autodoc", "1");
		void InsertAfter(HLRBRep_ListOfBPoint & Other, HLRBRep_ListIteratorOfListOfBPoint & It);

};
%feature("shadow") HLRBRep_ListOfBPoint::~HLRBRep_ListOfBPoint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRBRep_ListOfBPoint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRBRep_SLProps;
class HLRBRep_SLProps {
	public:
		%feature("autodoc", "1");
		HLRBRep_SLProps(const Standard_Address &S, const Standard_Real U, const Standard_Real V, const Standard_Integer N, const Standard_Real Resolution);
		%feature("autodoc", "1");
		HLRBRep_SLProps(const Standard_Address &S, const Standard_Integer N, const Standard_Real Resolution);
		%feature("autodoc", "1");
		HLRBRep_SLProps(const Standard_Integer N, const Standard_Real Resolution);
		%feature("autodoc", "1");
		void SetSurface(const Standard_Address &S);
		%feature("autodoc", "1");
		void SetParameters(const Standard_Real U, const Standard_Real V);
		%feature("autodoc", "1");
		const gp_Pnt  Value() const;
		%feature("autodoc", "1");
		const gp_Vec  D1U();
		%feature("autodoc", "1");
		const gp_Vec  D1V();
		%feature("autodoc", "1");
		const gp_Vec  D2U();
		%feature("autodoc", "1");
		const gp_Vec  D2V();
		%feature("autodoc", "1");
		const gp_Vec  DUV();
		%feature("autodoc", "1");
		Standard_Boolean IsTangentUDefined();
		%feature("autodoc", "1");
		void TangentU(gp_Dir & D);
		%feature("autodoc", "1");
		Standard_Boolean IsTangentVDefined();
		%feature("autodoc", "1");
		void TangentV(gp_Dir & D);
		%feature("autodoc", "1");
		Standard_Boolean IsNormalDefined();
		%feature("autodoc", "1");
		const gp_Dir  Normal();
		%feature("autodoc", "1");
		Standard_Boolean IsCurvatureDefined();
		%feature("autodoc", "1");
		Standard_Boolean IsUmbilic();
		%feature("autodoc", "1");
		Standard_Real MaxCurvature();
		%feature("autodoc", "1");
		Standard_Real MinCurvature();
		%feature("autodoc", "1");
		void CurvatureDirections(gp_Dir & MaxD, gp_Dir & MinD);
		%feature("autodoc", "1");
		Standard_Real MeanCurvature();
		%feature("autodoc", "1");
		Standard_Real GaussianCurvature();

};
%feature("shadow") HLRBRep_SLProps::~HLRBRep_SLProps %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRBRep_SLProps {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRBRep_TheIntPCurvePCurveOfCInter;
class HLRBRep_TheIntPCurvePCurveOfCInter : public IntRes2d_Intersection {
	public:
		%feature("autodoc", "1");
		HLRBRep_TheIntPCurvePCurveOfCInter();
		%feature("autodoc", "1");
		void Perform(const Standard_Address &Curve1, const IntRes2d_Domain &Domain1, const Standard_Address &Curve2, const IntRes2d_Domain &Domain2, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Perform(const Standard_Address &Curve1, const IntRes2d_Domain &Domain1, const Standard_Real TolConf, const Standard_Real Tol);

};
%feature("shadow") HLRBRep_TheIntPCurvePCurveOfCInter::~HLRBRep_TheIntPCurvePCurveOfCInter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRBRep_TheIntPCurvePCurveOfCInter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRBRep_TheIntConicCurveOfCInter;
class HLRBRep_TheIntConicCurveOfCInter : public IntRes2d_Intersection {
	public:
		%feature("autodoc", "1");
		HLRBRep_TheIntConicCurveOfCInter();
		%feature("autodoc", "1");
		HLRBRep_TheIntConicCurveOfCInter(const gp_Lin2d L, const IntRes2d_Domain &D1, const Standard_Address &PCurve, const IntRes2d_Domain &D2, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		HLRBRep_TheIntConicCurveOfCInter(const gp_Circ2d C, const IntRes2d_Domain &D1, const Standard_Address &PCurve, const IntRes2d_Domain &D2, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		HLRBRep_TheIntConicCurveOfCInter(const gp_Elips2d E, const IntRes2d_Domain &D1, const Standard_Address &PCurve, const IntRes2d_Domain &D2, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		HLRBRep_TheIntConicCurveOfCInter(const gp_Parab2d Prb, const IntRes2d_Domain &D1, const Standard_Address &PCurve, const IntRes2d_Domain &D2, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		HLRBRep_TheIntConicCurveOfCInter(const gp_Hypr2d H, const IntRes2d_Domain &D1, const Standard_Address &PCurve, const IntRes2d_Domain &D2, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Perform(const gp_Lin2d L, const IntRes2d_Domain &D1, const Standard_Address &PCurve, const IntRes2d_Domain &D2, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Perform(const gp_Circ2d C, const IntRes2d_Domain &D1, const Standard_Address &PCurve, const IntRes2d_Domain &D2, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Perform(const gp_Elips2d E, const IntRes2d_Domain &D1, const Standard_Address &PCurve, const IntRes2d_Domain &D2, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Perform(const gp_Parab2d Prb, const IntRes2d_Domain &D1, const Standard_Address &PCurve, const IntRes2d_Domain &D2, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Perform(const gp_Hypr2d H, const IntRes2d_Domain &D1, const Standard_Address &PCurve, const IntRes2d_Domain &D2, const Standard_Real TolConf, const Standard_Real Tol);

};
%feature("shadow") HLRBRep_TheIntConicCurveOfCInter::~HLRBRep_TheIntConicCurveOfCInter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRBRep_TheIntConicCurveOfCInter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRBRep_AreaLimit;
class HLRBRep_AreaLimit : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		HLRBRep_AreaLimit(const HLRAlgo_Intersection &V, const Standard_Boolean Boundary, const Standard_Boolean Interference, const TopAbs_State StateBefore, const TopAbs_State StateAfter, const TopAbs_State EdgeBefore, const TopAbs_State EdgeAfter);
		%feature("autodoc", "1");
		void StateBefore(const TopAbs_State St);
		%feature("autodoc", "1");
		void StateAfter(const TopAbs_State St);
		%feature("autodoc", "1");
		void EdgeBefore(const TopAbs_State St);
		%feature("autodoc", "1");
		void EdgeAfter(const TopAbs_State St);
		%feature("autodoc", "1");
		void Previous(const Handle_HLRBRep_AreaLimit &P);
		%feature("autodoc", "1");
		void Next(const Handle_HLRBRep_AreaLimit &N);
		%feature("autodoc", "1");
		const HLRAlgo_Intersection & Vertex() const;
		%feature("autodoc", "1");
		Standard_Boolean IsBoundary() const;
		%feature("autodoc", "1");
		Standard_Boolean IsInterference() const;
		%feature("autodoc", "1");
		TopAbs_State StateBefore() const;
		%feature("autodoc", "1");
		TopAbs_State StateAfter() const;
		%feature("autodoc", "1");
		TopAbs_State EdgeBefore() const;
		%feature("autodoc", "1");
		TopAbs_State EdgeAfter() const;
		%feature("autodoc", "1");
		Handle_HLRBRep_AreaLimit Previous() const;
		%feature("autodoc", "1");
		Handle_HLRBRep_AreaLimit Next() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend HLRBRep_AreaLimit {
	Handle_HLRBRep_AreaLimit GetHandle() {
	return *(Handle_HLRBRep_AreaLimit*) &$self;
	}
};
%extend HLRBRep_AreaLimit {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") HLRBRep_AreaLimit::~HLRBRep_AreaLimit %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRBRep_AreaLimit {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRBRep_PolyAlgo;
class HLRBRep_PolyAlgo : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		HLRBRep_PolyAlgo();
		%feature("autodoc", "1");
		HLRBRep_PolyAlgo(const Handle_HLRBRep_PolyAlgo &A);
		%feature("autodoc", "1");
		HLRBRep_PolyAlgo(const TopoDS_Shape S);
		%feature("autodoc", "1");
		Standard_Integer NbShapes() const;
		%feature("autodoc", "1");
		TopoDS_Shape  Shape(const Standard_Integer I);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer I);
		%feature("autodoc", "1");
		Standard_Integer Index(const TopoDS_Shape S) const;
		%feature("autodoc", "1");
		void Load(const TopoDS_Shape S);
		%feature("autodoc", "1");
		Handle_HLRAlgo_PolyAlgo Algo() const;
		%feature("autodoc", "1");
		const HLRAlgo_Projector & Projector() const;
		%feature("autodoc", "1");
		void Projector(const HLRAlgo_Projector &P);
		%feature("autodoc", "1");
		Standard_Real Angle() const;
		%feature("autodoc", "1");
		void Angle(const Standard_Real Ang);
		%feature("autodoc", "1");
		Standard_Real TolAngular() const;
		%feature("autodoc", "1");
		void TolAngular(const Standard_Real Tol);
		%feature("autodoc", "1");
		Standard_Real TolCoef() const;
		%feature("autodoc", "1");
		void TolCoef(const Standard_Real Tol);
		%feature("autodoc", "1");
		void Update();
		%feature("autodoc", "1");
		void InitHide();
		%feature("autodoc", "1");
		Standard_Boolean MoreHide() const;
		%feature("autodoc", "1");
		void NextHide();
		%feature("autodoc", "1");
		void Hide(Standard_Address & Coordinates, HLRAlgo_EdgeStatus & status, TopoDS_Shape & S, Standard_Boolean & reg1, Standard_Boolean & regn, Standard_Boolean & outl, Standard_Boolean & intl);
		%feature("autodoc", "1");
		void InitShow();
		%feature("autodoc", "1");
		Standard_Boolean MoreShow() const;
		%feature("autodoc", "1");
		void NextShow();
		%feature("autodoc", "1");
		void Show(Standard_Address & Coordinates, TopoDS_Shape & S, Standard_Boolean & reg1, Standard_Boolean & regn, Standard_Boolean & outl, Standard_Boolean & intl);
		%feature("autodoc", "1");
		TopoDS_Shape OutLinedShape(const TopoDS_Shape S) const;
		%feature("autodoc", "1");
		Standard_Boolean Debug() const;
		%feature("autodoc", "1");
		void Debug(const Standard_Boolean B);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend HLRBRep_PolyAlgo {
	Handle_HLRBRep_PolyAlgo GetHandle() {
	return *(Handle_HLRBRep_PolyAlgo*) &$self;
	}
};
%extend HLRBRep_PolyAlgo {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") HLRBRep_PolyAlgo::~HLRBRep_PolyAlgo %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRBRep_PolyAlgo {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRBRep_SeqOfShapeBounds;
class HLRBRep_SeqOfShapeBounds : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		HLRBRep_SeqOfShapeBounds();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const HLRBRep_SeqOfShapeBounds & Assign(const HLRBRep_SeqOfShapeBounds &Other);
		%feature("autodoc", "1");
		const HLRBRep_SeqOfShapeBounds & operator=(const HLRBRep_SeqOfShapeBounds &Other);
		%feature("autodoc", "1");
		void Append(const HLRBRep_ShapeBounds &T);
		%feature("autodoc", "1");
		void Append(HLRBRep_SeqOfShapeBounds & S);
		%feature("autodoc", "1");
		void Prepend(const HLRBRep_ShapeBounds &T);
		%feature("autodoc", "1");
		void Prepend(HLRBRep_SeqOfShapeBounds & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const HLRBRep_ShapeBounds &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, HLRBRep_SeqOfShapeBounds & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const HLRBRep_ShapeBounds &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, HLRBRep_SeqOfShapeBounds & S);
		%feature("autodoc", "1");
		const HLRBRep_ShapeBounds & First() const;
		%feature("autodoc", "1");
		const HLRBRep_ShapeBounds & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, HLRBRep_SeqOfShapeBounds & S);
		%feature("autodoc", "1");
		const HLRBRep_ShapeBounds & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const HLRBRep_ShapeBounds & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const HLRBRep_ShapeBounds &I);
		%feature("autodoc", "1");
		HLRBRep_ShapeBounds & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		HLRBRep_ShapeBounds & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") HLRBRep_SeqOfShapeBounds::~HLRBRep_SeqOfShapeBounds %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRBRep_SeqOfShapeBounds {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRBRep_TheProjPCurOfCInter;
class HLRBRep_TheProjPCurOfCInter {
	public:
		%feature("autodoc", "1");
		HLRBRep_TheProjPCurOfCInter();
		%feature("autodoc", "1");
		static		Standard_Real FindParameter(const Standard_Address &C, const gp_Pnt2d Pnt, const Standard_Real Tol);
		%feature("autodoc", "1");
		static		Standard_Real FindParameter(const Standard_Address &C, const gp_Pnt2d Pnt, const Standard_Real LowParameter, const Standard_Real HighParameter, const Standard_Real Tol);

};
%feature("shadow") HLRBRep_TheProjPCurOfCInter::~HLRBRep_TheProjPCurOfCInter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRBRep_TheProjPCurOfCInter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRBRep_BSurfaceTool;
class HLRBRep_BSurfaceTool {
	public:
		%feature("autodoc", "1");
		HLRBRep_BSurfaceTool();
		%feature("autodoc", "1");
		static		Standard_Real FirstUParameter(const BRepAdaptor_Surface &Surf);
		%feature("autodoc", "1");
		static		Standard_Real FirstVParameter(const BRepAdaptor_Surface &Surf);
		%feature("autodoc", "1");
		static		Standard_Real LastUParameter(const BRepAdaptor_Surface &Surf);
		%feature("autodoc", "1");
		static		Standard_Real LastVParameter(const BRepAdaptor_Surface &Surf);
		%feature("autodoc", "1");
		static		Standard_Integer NbUIntervals(const BRepAdaptor_Surface &Surf, const GeomAbs_Shape S);
		%feature("autodoc", "1");
		static		Standard_Integer NbVIntervals(const BRepAdaptor_Surface &Surf, const GeomAbs_Shape S);
		%feature("autodoc", "1");
		static		void UIntervals(const BRepAdaptor_Surface &Surf, TColStd_Array1OfReal & Tab, const GeomAbs_Shape S);
		%feature("autodoc", "1");
		static		void VIntervals(const BRepAdaptor_Surface &Surf, TColStd_Array1OfReal & Tab, const GeomAbs_Shape S);
		%feature("autodoc", "1");
		static		Handle_Adaptor3d_HSurface UTrim(const BRepAdaptor_Surface &Surf, const Standard_Real F, const Standard_Real L, const Standard_Real Tol);
		%feature("autodoc", "1");
		static		Handle_Adaptor3d_HSurface VTrim(const BRepAdaptor_Surface &Surf, const Standard_Real F, const Standard_Real L, const Standard_Real Tol);
		%feature("autodoc", "1");
		static		Standard_Boolean IsUClosed(const BRepAdaptor_Surface &S);
		%feature("autodoc", "1");
		static		Standard_Boolean IsVClosed(const BRepAdaptor_Surface &S);
		%feature("autodoc", "1");
		static		Standard_Boolean IsUPeriodic(const BRepAdaptor_Surface &S);
		%feature("autodoc", "1");
		static		Standard_Real UPeriod(const BRepAdaptor_Surface &S);
		%feature("autodoc", "1");
		static		Standard_Boolean IsVPeriodic(const BRepAdaptor_Surface &S);
		%feature("autodoc", "1");
		static		Standard_Real VPeriod(const BRepAdaptor_Surface &S);
		%feature("autodoc", "1");
		static		gp_Pnt Value(const BRepAdaptor_Surface &S, const Standard_Real U, const Standard_Real V);
		%feature("autodoc", "1");
		static		void D0(const BRepAdaptor_Surface &S, const Standard_Real U, const Standard_Real V, gp_Pnt & P);
		%feature("autodoc", "1");
		static		void D1(const BRepAdaptor_Surface &S, const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V);
		%feature("autodoc", "1");
		static		void D2(const BRepAdaptor_Surface &S, const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V, gp_Vec & D2U, gp_Vec & D2V, gp_Vec & D2UV);
		%feature("autodoc", "1");
		static		void D3(const BRepAdaptor_Surface &S, const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V, gp_Vec & D2U, gp_Vec & D2V, gp_Vec & D2UV, gp_Vec & D3U, gp_Vec & D3V, gp_Vec & D3UUV, gp_Vec & D3UVV);
		%feature("autodoc", "1");
		static		gp_Vec DN(const BRepAdaptor_Surface &S, const Standard_Real U, const Standard_Real V, const Standard_Integer Nu, const Standard_Integer Nv);
		%feature("autodoc", "1");
		static		GeomAbs_Shape UContinuity(const BRepAdaptor_Surface &S);
		%feature("autodoc", "1");
		static		GeomAbs_Shape VContinuity(const BRepAdaptor_Surface &S);
		%feature("autodoc", "1");
		static		Standard_Integer UDegree(const BRepAdaptor_Surface &S);
		%feature("autodoc", "1");
		static		Standard_Integer NbUPoles(const BRepAdaptor_Surface &S);
		%feature("autodoc", "1");
		static		Standard_Integer NbUKnots(const BRepAdaptor_Surface &S);
		%feature("autodoc", "1");
		static		Standard_Boolean IsURational(const BRepAdaptor_Surface &S);
		%feature("autodoc", "1");
		static		Standard_Integer VDegree(const BRepAdaptor_Surface &S);
		%feature("autodoc", "1");
		static		Standard_Integer NbVPoles(const BRepAdaptor_Surface &S);
		%feature("autodoc", "1");
		static		Standard_Integer NbVKnots(const BRepAdaptor_Surface &S);
		%feature("autodoc", "1");
		static		Standard_Boolean IsVRational(const BRepAdaptor_Surface &S);
		%feature("autodoc", "1");
		static		Standard_Real UResolution(const BRepAdaptor_Surface &S, const Standard_Real R3d);
		%feature("autodoc", "1");
		static		Standard_Real VResolution(const BRepAdaptor_Surface &S, const Standard_Real R3d);
		%feature("autodoc", "1");
		static		GeomAbs_SurfaceType GetType(const BRepAdaptor_Surface &S);
		%feature("autodoc", "1");
		static		gp_Pln Plane(const BRepAdaptor_Surface &S);
		%feature("autodoc", "1");
		static		gp_Cylinder Cylinder(const BRepAdaptor_Surface &S);
		%feature("autodoc", "1");
		static		gp_Cone Cone(const BRepAdaptor_Surface &S);
		%feature("autodoc", "1");
		static		gp_Torus Torus(const BRepAdaptor_Surface &S);
		%feature("autodoc", "1");
		static		gp_Sphere Sphere(const BRepAdaptor_Surface &S);
		%feature("autodoc", "1");
		static		Handle_Geom_BezierSurface Bezier(const BRepAdaptor_Surface &S);
		%feature("autodoc", "1");
		static		Handle_Geom_BSplineSurface BSpline(const BRepAdaptor_Surface &S);
		%feature("autodoc", "1");
		static		gp_Ax1 AxeOfRevolution(const BRepAdaptor_Surface &S);
		%feature("autodoc", "1");
		static		gp_Dir Direction(const BRepAdaptor_Surface &S);
		%feature("autodoc", "1");
		static		Handle_Adaptor3d_HCurve BasisCurve(const BRepAdaptor_Surface &S);
		%feature("autodoc", "1");
		static		Standard_Integer NbSamplesU(const BRepAdaptor_Surface &S);
		%feature("autodoc", "1");
		static		Standard_Integer NbSamplesV(const BRepAdaptor_Surface &S);
		%feature("autodoc", "1");
		static		Standard_Integer NbSamplesU(const BRepAdaptor_Surface &S, const Standard_Real u1, const Standard_Real u2);
		%feature("autodoc", "1");
		static		Standard_Integer NbSamplesV(const BRepAdaptor_Surface &S, const Standard_Real v1, const Standard_Real v2);

};
%feature("shadow") HLRBRep_BSurfaceTool::~HLRBRep_BSurfaceTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRBRep_BSurfaceTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRBRep_TheLocateExtPCOfTheProjPCurOfCInter;
class HLRBRep_TheLocateExtPCOfTheProjPCurOfCInter {
	public:
		%feature("autodoc", "1");
		HLRBRep_TheLocateExtPCOfTheProjPCurOfCInter();
		%feature("autodoc", "1");
		HLRBRep_TheLocateExtPCOfTheProjPCurOfCInter(const gp_Pnt2d P, const Standard_Address &C, const Standard_Real U0, const Standard_Real TolU);
		%feature("autodoc", "1");
		HLRBRep_TheLocateExtPCOfTheProjPCurOfCInter(const gp_Pnt2d P, const Standard_Address &C, const Standard_Real U0, const Standard_Real Umin, const Standard_Real Usup, const Standard_Real TolU);
		%feature("autodoc", "1");
		void Initialize(const Standard_Address &C, const Standard_Real Umin, const Standard_Real Usup, const Standard_Real TolU);
		%feature("autodoc", "1");
		void Perform(const gp_Pnt2d P, const Standard_Real U0);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Real SquareDistance() const;
		%feature("autodoc", "1");
		Standard_Boolean IsMin() const;
		%feature("autodoc", "1");
		Extrema_POnCurv2d Point() const;

};
%feature("shadow") HLRBRep_TheLocateExtPCOfTheProjPCurOfCInter::~HLRBRep_TheLocateExtPCOfTheProjPCurOfCInter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRBRep_TheLocateExtPCOfTheProjPCurOfCInter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRBRep_EdgeData;
class HLRBRep_EdgeData {
	public:
		%feature("autodoc", "1");
		HLRBRep_EdgeData();
		%feature("autodoc", "1");
		void Set(const Standard_Boolean Reg1, const Standard_Boolean RegN, const TopoDS_Edge EG, const Standard_Integer V1, const Standard_Integer V2, const Standard_Boolean Out1, const Standard_Boolean Out2, const Standard_Boolean Cut1, const Standard_Boolean Cut2, const Standard_Real Start, const Standard_ShortReal TolStart, const Standard_Real End, const Standard_ShortReal TolEnd);
		%feature("autodoc", "1");
		Standard_Boolean Selected() const;
		%feature("autodoc", "1");
		void Selected(const Standard_Boolean B);
		%feature("autodoc", "1");
		Standard_Boolean Rg1Line() const;
		%feature("autodoc", "1");
		void Rg1Line(const Standard_Boolean B);
		%feature("autodoc", "1");
		Standard_Boolean RgNLine() const;
		%feature("autodoc", "1");
		void RgNLine(const Standard_Boolean B);
		%feature("autodoc", "1");
		Standard_Boolean Vertical() const;
		%feature("autodoc", "1");
		void Vertical(const Standard_Boolean B);
		%feature("autodoc", "1");
		Standard_Boolean Simple() const;
		%feature("autodoc", "1");
		void Simple(const Standard_Boolean B);
		%feature("autodoc", "1");
		Standard_Boolean OutLVSta() const;
		%feature("autodoc", "1");
		void OutLVSta(const Standard_Boolean B);
		%feature("autodoc", "1");
		Standard_Boolean OutLVEnd() const;
		%feature("autodoc", "1");
		void OutLVEnd(const Standard_Boolean B);
		%feature("autodoc", "1");
		Standard_Boolean CutAtSta() const;
		%feature("autodoc", "1");
		void CutAtSta(const Standard_Boolean B);
		%feature("autodoc", "1");
		Standard_Boolean CutAtEnd() const;
		%feature("autodoc", "1");
		void CutAtEnd(const Standard_Boolean B);
		%feature("autodoc", "1");
		Standard_Boolean VerAtSta() const;
		%feature("autodoc", "1");
		void VerAtSta(const Standard_Boolean B);
		%feature("autodoc", "1");
		Standard_Boolean VerAtEnd() const;
		%feature("autodoc", "1");
		void VerAtEnd(const Standard_Boolean B);
		%feature("autodoc", "1");
		Standard_Boolean AutoIntersectionDone() const;
		%feature("autodoc", "1");
		void AutoIntersectionDone(const Standard_Boolean B);
		%feature("autodoc", "1");
		Standard_Boolean Used() const;
		%feature("autodoc", "1");
		void Used(const Standard_Boolean B);
		%feature("autodoc", "1");
		Standard_Integer HideCount() const;
		%feature("autodoc", "1");
		void HideCount(const Standard_Integer I);
		%feature("autodoc", "1");
		Standard_Integer VSta() const;
		%feature("autodoc", "1");
		void VSta(const Standard_Integer I);
		%feature("autodoc", "1");
		Standard_Integer VEnd() const;
		%feature("autodoc", "1");
		void VEnd(const Standard_Integer I);
		%feature("autodoc", "1");
		void UpdateMinMax(const Standard_Address TotMinMax);
		%feature("autodoc", "1");
		Standard_Address MinMax() const;
		%feature("autodoc", "1");
		HLRAlgo_EdgeStatus & Status();
		%feature("autodoc", "1");
		HLRBRep_Curve & ChangeGeometry();
		%feature("autodoc", "1");
		const HLRBRep_Curve & Geometry() const;
		%feature("autodoc", "1");
		Standard_Address Curve();
		%feature("autodoc", "1");
		Standard_ShortReal Tolerance() const;

};
%feature("shadow") HLRBRep_EdgeData::~HLRBRep_EdgeData %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRBRep_EdgeData {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRBRep_CLProps;
class HLRBRep_CLProps {
	public:
		%feature("autodoc", "1");
		HLRBRep_CLProps(const Standard_Address &C, const Standard_Integer N, const Standard_Real Resolution);
		%feature("autodoc", "1");
		HLRBRep_CLProps(const Standard_Address &C, const Standard_Real U, const Standard_Integer N, const Standard_Real Resolution);
		%feature("autodoc", "1");
		HLRBRep_CLProps(const Standard_Integer N, const Standard_Real Resolution);
		%feature("autodoc", "1");
		void SetParameter(const Standard_Real U);
		%feature("autodoc", "1");
		void SetCurve(const Standard_Address &C);
		%feature("autodoc", "1");
		const gp_Pnt2d  Value() const;
		%feature("autodoc", "1");
		const gp_Vec2d  D1();
		%feature("autodoc", "1");
		const gp_Vec2d  D2();
		%feature("autodoc", "1");
		const gp_Vec2d  D3();
		%feature("autodoc", "1");
		Standard_Boolean IsTangentDefined();
		%feature("autodoc", "1");
		void Tangent(gp_Dir2d & D);
		%feature("autodoc", "1");
		Standard_Real Curvature();
		%feature("autodoc", "1");
		void Normal(gp_Dir2d & N);
		%feature("autodoc", "1");
		void CentreOfCurvature(gp_Pnt2d & P);

};
%feature("shadow") HLRBRep_CLProps::~HLRBRep_CLProps %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRBRep_CLProps {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRBRep_InternalAlgo;
class HLRBRep_InternalAlgo : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		HLRBRep_InternalAlgo();
		%feature("autodoc", "1");
		HLRBRep_InternalAlgo(const Handle_HLRBRep_InternalAlgo &A);
		%feature("autodoc", "1");
		void Projector(const HLRAlgo_Projector &P);
		%feature("autodoc", "1");
		HLRAlgo_Projector & Projector();
		%feature("autodoc", "1");
		void Update();
		%feature("autodoc", "1");
		void Load(const Handle_HLRTopoBRep_OutLiner &S, const Handle_MMgt_TShared &SData, const Standard_Integer nbIso=0);
		%feature("autodoc", "1");
		void Load(const Handle_HLRTopoBRep_OutLiner &S, const Standard_Integer nbIso=0);
		%feature("autodoc", "1");
		Standard_Integer Index(const Handle_HLRTopoBRep_OutLiner &S) const;
		%feature("autodoc", "1");
		void Remove(const Standard_Integer I);
		%feature("autodoc", "1");
		void ShapeData(const Standard_Integer I, const Handle_MMgt_TShared &SData);
		%feature("autodoc", "1");
		HLRBRep_SeqOfShapeBounds & SeqOfShapeBounds();
		%feature("autodoc", "1");
		Standard_Integer NbShapes() const;
		%feature("autodoc", "1");
		HLRBRep_ShapeBounds & ShapeBounds(const Standard_Integer I);
		%feature("autodoc", "1");
		void InitEdgeStatus();
		%feature("autodoc", "1");
		void Select();
		%feature("autodoc", "1");
		void Select(const Standard_Integer I);
		%feature("autodoc", "1");
		void SelectEdge(const Standard_Integer I);
		%feature("autodoc", "1");
		void SelectFace(const Standard_Integer I);
		%feature("autodoc", "1");
		void ShowAll();
		%feature("autodoc", "1");
		void ShowAll(const Standard_Integer I);
		%feature("autodoc", "1");
		void HideAll();
		%feature("autodoc", "1");
		void HideAll(const Standard_Integer I);
		%feature("autodoc", "1");
		void PartialHide();
		%feature("autodoc", "1");
		void Hide();
		%feature("autodoc", "1");
		void Hide(const Standard_Integer I);
		%feature("autodoc", "1");
		void Hide(const Standard_Integer I, const Standard_Integer J);
		%feature("autodoc", "1");
		void Debug(const Standard_Boolean deb);
		%feature("autodoc", "1");
		Standard_Boolean Debug() const;
		%feature("autodoc", "1");
		Handle_HLRBRep_Data DataStructure() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend HLRBRep_InternalAlgo {
	Handle_HLRBRep_InternalAlgo GetHandle() {
	return *(Handle_HLRBRep_InternalAlgo*) &$self;
	}
};
%extend HLRBRep_InternalAlgo {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") HLRBRep_InternalAlgo::~HLRBRep_InternalAlgo %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRBRep_InternalAlgo {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRBRep_InterCSurf;
class HLRBRep_InterCSurf : public IntCurveSurface_Intersection {
	public:
		%feature("autodoc", "1");
		HLRBRep_InterCSurf();
		%feature("autodoc", "1");
		void Perform(const gp_Lin Curve, const Standard_Address &Surface);
		%feature("autodoc", "1");
		void Perform(const gp_Lin Curve, const HLRBRep_ThePolygonOfInterCSurf &Polygon, const Standard_Address &Surface);
		%feature("autodoc", "1");
		void Perform(const gp_Lin Curve, const HLRBRep_ThePolygonOfInterCSurf &ThePolygon, const Standard_Address &Surface, const HLRBRep_ThePolyhedronOfInterCSurf &Polyhedron);
		%feature("autodoc", "1");
		void Perform(const gp_Lin Curve, const HLRBRep_ThePolygonOfInterCSurf &ThePolygon, const Standard_Address &Surface, const HLRBRep_ThePolyhedronOfInterCSurf &Polyhedron, Bnd_BoundSortBox & BndBSB);
		%feature("autodoc", "1");
		void Perform(const gp_Lin Curve, const Standard_Address &Surface, const HLRBRep_ThePolyhedronOfInterCSurf &Polyhedron);

};
%feature("shadow") HLRBRep_InterCSurf::~HLRBRep_InterCSurf %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRBRep_InterCSurf {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRBRep_EdgeInterferenceTool;
class HLRBRep_EdgeInterferenceTool {
	public:
		%feature("autodoc", "1");
		HLRBRep_EdgeInterferenceTool(const Handle_HLRBRep_Data &DS);
		%feature("autodoc", "1");
		void LoadEdge();
		%feature("autodoc", "1");
		void InitVertices();
		%feature("autodoc", "1");
		Standard_Boolean MoreVertices() const;
		%feature("autodoc", "1");
		void NextVertex();
		%feature("autodoc", "1");
		const HLRAlgo_Intersection & CurrentVertex() const;
		%feature("autodoc", "1");
		TopAbs_Orientation CurrentOrientation() const;
		%feature("autodoc", "1");
		Standard_Real CurrentParameter() const;
		%feature("autodoc", "1");
		Standard_Boolean IsPeriodic() const;
		%feature("autodoc","EdgeGeometry(Standard_Real Param) -> Standard_Real");

		void EdgeGeometry(const Standard_Real Param, gp_Dir & Tgt, gp_Dir & Nrm, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Real ParameterOfInterference(const HLRAlgo_Interference &I) const;
		%feature("autodoc", "1");
		Standard_Boolean SameInterferences(const HLRAlgo_Interference &I1, const HLRAlgo_Interference &I2) const;
		%feature("autodoc", "1");
		Standard_Boolean SameVertexAndInterference(const HLRAlgo_Interference &I) const;
		%feature("autodoc","InterferenceBoundaryGeometry(const I) -> Standard_Real");

		void InterferenceBoundaryGeometry(const HLRAlgo_Interference &I, gp_Dir & Tang, gp_Dir & Norm, Standard_Real &OutValue) const;

};
%feature("shadow") HLRBRep_EdgeInterferenceTool::~HLRBRep_EdgeInterferenceTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRBRep_EdgeInterferenceTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRBRep_LineTool;
class HLRBRep_LineTool {
	public:
		%feature("autodoc", "1");
		HLRBRep_LineTool();
		%feature("autodoc", "1");
		static		Standard_Real FirstParameter(const gp_Lin arg0);
		%feature("autodoc", "1");
		static		Standard_Real LastParameter(const gp_Lin arg0);
		%feature("autodoc", "1");
		static		GeomAbs_Shape Continuity(const gp_Lin arg0);
		%feature("autodoc", "1");
		static		Standard_Integer NbIntervals(const gp_Lin arg0, const GeomAbs_Shape arg1);
		%feature("autodoc", "1");
		static		void Intervals(const gp_Lin arg0, TColStd_Array1OfReal & arg1, const GeomAbs_Shape arg2);
		%feature("autodoc", "1");
		static		Standard_Real IntervalFirst(const gp_Lin arg0);
		%feature("autodoc", "1");
		static		Standard_Real IntervalLast(const gp_Lin arg0);
		%feature("autodoc", "1");
		static		GeomAbs_Shape IntervalContinuity(const gp_Lin arg0);
		%feature("autodoc", "1");
		static		Standard_Boolean IsClosed(const gp_Lin arg0);
		%feature("autodoc", "1");
		static		Standard_Boolean IsPeriodic(const gp_Lin arg0);
		%feature("autodoc", "1");
		static		Standard_Real Period(const gp_Lin arg0);
		%feature("autodoc", "1");
		static		gp_Pnt Value(const gp_Lin C, const Standard_Real U);
		%feature("autodoc", "1");
		static		void D0(const gp_Lin C, const Standard_Real U, gp_Pnt & P);
		%feature("autodoc", "1");
		static		void D1(const gp_Lin C, const Standard_Real U, gp_Pnt & P, gp_Vec & V);
		%feature("autodoc", "1");
		static		void D2(const gp_Lin C, const Standard_Real U, gp_Pnt & P, gp_Vec & V1, gp_Vec & V2);
		%feature("autodoc", "1");
		static		void D3(const gp_Lin C, const Standard_Real U, gp_Pnt & P, gp_Vec & V1, gp_Vec & V2, gp_Vec & V3);
		%feature("autodoc", "1");
		static		gp_Vec DN(const gp_Lin C, const Standard_Real U, const Standard_Integer N);
		%feature("autodoc", "1");
		static		Standard_Real Resolution(const gp_Lin arg0, const Standard_Real R3D);
		%feature("autodoc", "1");
		static		GeomAbs_CurveType GetType(const gp_Lin arg0);
		%feature("autodoc", "1");
		static		gp_Lin Line(const gp_Lin C);
		%feature("autodoc", "1");
		static		gp_Circ Circle(const gp_Lin arg0);
		%feature("autodoc", "1");
		static		gp_Elips Ellipse(const gp_Lin arg0);
		%feature("autodoc", "1");
		static		gp_Hypr Hyperbola(const gp_Lin arg0);
		%feature("autodoc", "1");
		static		gp_Parab Parabola(const gp_Lin arg0);
		%feature("autodoc", "1");
		static		Handle_Geom_BezierCurve Bezier(const gp_Lin arg0);
		%feature("autodoc", "1");
		static		Handle_Geom_BSplineCurve BSpline(const gp_Lin arg0);
		%feature("autodoc", "1");
		static		Standard_Integer Degree(const gp_Lin arg0);
		%feature("autodoc", "1");
		static		Standard_Integer NbPoles(const gp_Lin arg0);
		%feature("autodoc", "1");
		static		void Poles(const gp_Lin arg0, TColgp_Array1OfPnt & arg1);
		%feature("autodoc", "1");
		static		Standard_Boolean IsRational(const gp_Lin arg0);
		%feature("autodoc", "1");
		static		void PolesAndWeights(const gp_Lin arg0, TColgp_Array1OfPnt & arg1, TColStd_Array1OfReal & arg2);
		%feature("autodoc", "1");
		static		Standard_Integer NbKnots(const gp_Lin arg0);
		%feature("autodoc", "1");
		static		void KnotsAndMultiplicities(const gp_Lin arg0, TColStd_Array1OfReal & arg1, TColStd_Array1OfInteger & arg2);
		%feature("autodoc", "1");
		static		Standard_Integer NbSamples(const gp_Lin arg0, const Standard_Real arg1, const Standard_Real arg2);
		%feature("autodoc", "1");
		static		void SamplePars(const gp_Lin C, const Standard_Real U0, const Standard_Real U1, const Standard_Real Defl, const Standard_Integer NbMin, Handle_TColStd_HArray1OfReal & Pars);

};
%feature("shadow") HLRBRep_LineTool::~HLRBRep_LineTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRBRep_LineTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRBRep_ShapeToHLR;
class HLRBRep_ShapeToHLR {
	public:
		%feature("autodoc", "1");
		HLRBRep_ShapeToHLR();
		%feature("autodoc", "1");
		static		Handle_HLRBRep_Data Load(const Handle_HLRTopoBRep_OutLiner &S, const HLRAlgo_Projector &P, BRepTopAdaptor_MapOfShapeTool & MST, const Standard_Integer nbIso=0);

};
%feature("shadow") HLRBRep_ShapeToHLR::~HLRBRep_ShapeToHLR %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRBRep_ShapeToHLR {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRBRep;
class HLRBRep {
	public:
		%feature("autodoc", "1");
		HLRBRep();
		%feature("autodoc", "1");
		static		TopoDS_Edge MakeEdge(const HLRBRep_Curve &ec, const Standard_Real U1, const Standard_Real U2);
		%feature("autodoc","PolyHLRAngleAndDeflection(Standard_Real InAngl) -> [Standard_Real, Standard_Real]");

		static		void PolyHLRAngleAndDeflection(const Standard_Real InAngl, Standard_Real &OutValue, Standard_Real &OutValue);

};
%feature("shadow") HLRBRep::~HLRBRep %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRBRep {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRBRep_FaceIterator;
class HLRBRep_FaceIterator {
	public:
		%feature("autodoc", "1");
		HLRBRep_FaceIterator();
		%feature("autodoc", "1");
		void InitEdge(HLRBRep_FaceData & fd);
		%feature("autodoc", "1");
		Standard_Boolean MoreEdge() const;
		%feature("autodoc", "1");
		void NextEdge();
		%feature("autodoc", "1");
		Standard_Boolean BeginningOfWire() const;
		%feature("autodoc", "1");
		Standard_Boolean EndOfWire() const;
		%feature("autodoc", "1");
		void SkipWire();
		%feature("autodoc", "1");
		Handle_HLRAlgo_EdgesBlock Wire() const;
		%feature("autodoc", "1");
		Standard_Integer Edge() const;
		%feature("autodoc", "1");
		TopAbs_Orientation Orientation() const;
		%feature("autodoc", "1");
		Standard_Boolean OutLine() const;
		%feature("autodoc", "1");
		Standard_Boolean Internal() const;
		%feature("autodoc", "1");
		Standard_Boolean Double() const;
		%feature("autodoc", "1");
		Standard_Boolean IsoLine() const;

};
%feature("shadow") HLRBRep_FaceIterator::~HLRBRep_FaceIterator %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRBRep_FaceIterator {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRBRep_ListNodeOfListOfBPoint;
class HLRBRep_ListNodeOfListOfBPoint : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		HLRBRep_ListNodeOfListOfBPoint(const HLRBRep_BiPoint &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		HLRBRep_BiPoint & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend HLRBRep_ListNodeOfListOfBPoint {
	Handle_HLRBRep_ListNodeOfListOfBPoint GetHandle() {
	return *(Handle_HLRBRep_ListNodeOfListOfBPoint*) &$self;
	}
};
%extend HLRBRep_ListNodeOfListOfBPoint {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") HLRBRep_ListNodeOfListOfBPoint::~HLRBRep_ListNodeOfListOfBPoint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRBRep_ListNodeOfListOfBPoint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRBRep_ThePolygonToolOfInterCSurf;
class HLRBRep_ThePolygonToolOfInterCSurf {
	public:
		%feature("autodoc", "1");
		HLRBRep_ThePolygonToolOfInterCSurf();
		%feature("autodoc", "1");
		static		const Bnd_Box & Bounding(const HLRBRep_ThePolygonOfInterCSurf &thePolygon);
		%feature("autodoc", "1");
		static		Standard_Real DeflectionOverEstimation(const HLRBRep_ThePolygonOfInterCSurf &thePolygon);
		%feature("autodoc", "1");
		static		Standard_Boolean Closed(const HLRBRep_ThePolygonOfInterCSurf &thePolygon);
		%feature("autodoc", "1");
		static		Standard_Integer NbSegments(const HLRBRep_ThePolygonOfInterCSurf &thePolygon);
		%feature("autodoc", "1");
		static		const gp_Pnt  BeginOfSeg(const HLRBRep_ThePolygonOfInterCSurf &thePolygon, const Standard_Integer Index);
		%feature("autodoc", "1");
		static		const gp_Pnt  EndOfSeg(const HLRBRep_ThePolygonOfInterCSurf &thePolygon, const Standard_Integer Index);
		%feature("autodoc", "1");
		static		void Dump(const HLRBRep_ThePolygonOfInterCSurf &thePolygon);

};
%feature("shadow") HLRBRep_ThePolygonToolOfInterCSurf::~HLRBRep_ThePolygonToolOfInterCSurf %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRBRep_ThePolygonToolOfInterCSurf {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRBRep_ListIteratorOfListOfBPoint;
class HLRBRep_ListIteratorOfListOfBPoint {
	public:
		%feature("autodoc", "1");
		HLRBRep_ListIteratorOfListOfBPoint();
		%feature("autodoc", "1");
		HLRBRep_ListIteratorOfListOfBPoint(const HLRBRep_ListOfBPoint &L);
		%feature("autodoc", "1");
		void Initialize(const HLRBRep_ListOfBPoint &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		HLRBRep_BiPoint & Value() const;

};
%feature("shadow") HLRBRep_ListIteratorOfListOfBPoint::~HLRBRep_ListIteratorOfListOfBPoint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRBRep_ListIteratorOfListOfBPoint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRBRep_BiPnt2D;
class HLRBRep_BiPnt2D {
	public:
		%feature("autodoc", "1");
		HLRBRep_BiPnt2D();
		%feature("autodoc", "1");
		HLRBRep_BiPnt2D(const Standard_Real x1, const Standard_Real y1, const Standard_Real x2, const Standard_Real y2, const TopoDS_Shape S, const Standard_Boolean reg1, const Standard_Boolean regn, const Standard_Boolean outl, const Standard_Boolean intl);
		%feature("autodoc", "1");
		const gp_Pnt2d  P1() const;
		%feature("autodoc", "1");
		const gp_Pnt2d  P2() const;
		%feature("autodoc", "1");
		const TopoDS_Shape  Shape() const;
		%feature("autodoc", "1");
		void Shape(const TopoDS_Shape S);
		%feature("autodoc", "1");
		Standard_Boolean Rg1Line() const;
		%feature("autodoc", "1");
		void Rg1Line(const Standard_Boolean B);
		%feature("autodoc", "1");
		Standard_Boolean RgNLine() const;
		%feature("autodoc", "1");
		void RgNLine(const Standard_Boolean B);
		%feature("autodoc", "1");
		Standard_Boolean OutLine() const;
		%feature("autodoc", "1");
		void OutLine(const Standard_Boolean B);
		%feature("autodoc", "1");
		Standard_Boolean IntLine() const;
		%feature("autodoc", "1");
		void IntLine(const Standard_Boolean B);

};
%feature("shadow") HLRBRep_BiPnt2D::~HLRBRep_BiPnt2D %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRBRep_BiPnt2D {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRBRep_Curve;
class HLRBRep_Curve {
	public:
		%feature("autodoc", "1");
		HLRBRep_Curve();
		%feature("autodoc", "1");
		void Projector(const Standard_Address Proj);
		%feature("autodoc", "1");
		BRepAdaptor_Curve & Curve();
		%feature("autodoc", "1");
		void Curve(const TopoDS_Edge E);
		%feature("autodoc", "1");
		Standard_Real Parameter2d(const Standard_Real P3d) const;
		%feature("autodoc", "1");
		Standard_Real Parameter3d(const Standard_Real P2d) const;
		%feature("autodoc", "1");
		Standard_Real Update(const Standard_Address TotMin, const Standard_Address TotMax);
		%feature("autodoc", "1");
		Standard_Real UpdateMinMax(const Standard_Address TotMin, const Standard_Address TotMax);
		%feature("autodoc", "1");
		Standard_Real Z(const Standard_Real U) const;
		%feature("autodoc", "1");
		gp_Pnt Value3D(const Standard_Real U) const;
		%feature("autodoc", "1");
		void D0(const Standard_Real U, gp_Pnt & P) const;
		%feature("autodoc", "1");
		void D1(const Standard_Real U, gp_Pnt & P, gp_Vec & V) const;
		%feature("autodoc", "1");
		void Tangent(const Standard_Boolean AtStart, gp_Pnt2d & P, gp_Dir2d & D) const;
		%feature("autodoc", "1");
		Standard_Real FirstParameter() const;
		%feature("autodoc", "1");
		Standard_Real LastParameter() const;
		%feature("autodoc", "1");
		GeomAbs_Shape Continuity() const;
		%feature("autodoc", "1");
		Standard_Integer NbIntervals(const GeomAbs_Shape S);
		%feature("autodoc", "1");
		void Intervals(TColStd_Array1OfReal & Tab, const GeomAbs_Shape Sh);
		%feature("autodoc", "1");
		Standard_Boolean IsClosed() const;
		%feature("autodoc", "1");
		Standard_Boolean IsPeriodic() const;
		%feature("autodoc", "1");
		Standard_Real Period() const;
		%feature("autodoc", "1");
		gp_Pnt2d Value(const Standard_Real U) const;
		%feature("autodoc", "1");
		void D0(const Standard_Real U, gp_Pnt2d & P) const;
		%feature("autodoc", "1");
		void D1(const Standard_Real U, gp_Pnt2d & P, gp_Vec2d & V) const;
		%feature("autodoc", "1");
		void D2(const Standard_Real U, gp_Pnt2d & P, gp_Vec2d & V1, gp_Vec2d & V2) const;
		%feature("autodoc", "1");
		void D3(const Standard_Real U, gp_Pnt2d & P, gp_Vec2d & V1, gp_Vec2d & V2, gp_Vec2d & V3) const;
		%feature("autodoc", "1");
		gp_Vec2d DN(const Standard_Real U, const Standard_Integer N) const;
		%feature("autodoc", "1");
		Standard_Real Resolution(const Standard_Real R3d) const;
		%feature("autodoc", "1");
		GeomAbs_CurveType GetType() const;
		%feature("autodoc", "1");
		gp_Lin2d Line() const;
		%feature("autodoc", "1");
		gp_Circ2d Circle() const;
		%feature("autodoc", "1");
		gp_Elips2d Ellipse() const;
		%feature("autodoc", "1");
		gp_Hypr2d Hyperbola() const;
		%feature("autodoc", "1");
		gp_Parab2d Parabola() const;
		%feature("autodoc", "1");
		Standard_Boolean IsRational() const;
		%feature("autodoc", "1");
		Standard_Integer Degree() const;
		%feature("autodoc", "1");
		Standard_Integer NbPoles() const;
		%feature("autodoc", "1");
		void Poles(TColgp_Array1OfPnt2d & TP) const;
		%feature("autodoc", "1");
		void PolesAndWeights(TColgp_Array1OfPnt2d & TP, TColStd_Array1OfReal & TW) const;
		%feature("autodoc", "1");
		Standard_Integer NbKnots() const;
		%feature("autodoc", "1");
		void Knots(TColStd_Array1OfReal & kn) const;
		%feature("autodoc", "1");
		void Multiplicities(TColStd_Array1OfInteger & mu) const;

};
%feature("shadow") HLRBRep_Curve::~HLRBRep_Curve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRBRep_Curve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRBRep_Intersector;
class HLRBRep_Intersector {
	public:
		%feature("autodoc", "1");
		HLRBRep_Intersector();
		%feature("autodoc", "1");
		void Perform(const Standard_Address A1, const Standard_Real da1, const Standard_Real db1);
		%feature("autodoc", "1");
		void Perform(const Standard_Integer nA, const Standard_Address A1, const Standard_Real da1, const Standard_Real db1, const Standard_Integer nB, const Standard_Address A2, const Standard_Real da2, const Standard_Real db2, const Standard_Boolean NoBound);
		%feature("autodoc", "1");
		void SimulateOnePoint(const Standard_Address A1, const Standard_Real U, const Standard_Address A2, const Standard_Real V);
		%feature("autodoc", "1");
		void Load(Standard_Address & A);
		%feature("autodoc", "1");
		void Perform(const gp_Lin L, const Standard_Real P);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbPoints() const;
		%feature("autodoc", "1");
		const IntRes2d_IntersectionPoint & Point(const Standard_Integer N) const;
		%feature("autodoc", "1");
		const IntCurveSurface_IntersectionPoint & CSPoint(const Standard_Integer N) const;
		%feature("autodoc", "1");
		Standard_Integer NbSegments() const;
		%feature("autodoc", "1");
		const IntRes2d_IntersectionSegment & Segment(const Standard_Integer N) const;
		%feature("autodoc", "1");
		const IntCurveSurface_IntersectionSegment & CSSegment(const Standard_Integer N) const;
		%feature("autodoc", "1");
		void Destroy();

};
%feature("shadow") HLRBRep_Intersector::~HLRBRep_Intersector %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRBRep_Intersector {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRBRep_TheQuadCurvFuncOfTheQuadCurvExactInterCSurf;
class HLRBRep_TheQuadCurvFuncOfTheQuadCurvExactInterCSurf : public math_FunctionWithDerivative {
	public:
		%feature("autodoc", "1");
		HLRBRep_TheQuadCurvFuncOfTheQuadCurvExactInterCSurf(const IntSurf_Quadric &Q, const gp_Lin C);
		%feature("autodoc","Value(Standard_Real Param) -> Standard_Real");

		virtual		Standard_Boolean Value(const Standard_Real Param, Standard_Real &OutValue);
		%feature("autodoc","Derivative(Standard_Real Param) -> Standard_Real");

		virtual		Standard_Boolean Derivative(const Standard_Real Param, Standard_Real &OutValue);
		%feature("autodoc","Values(Standard_Real Param) -> [Standard_Real, Standard_Real]");

		virtual		Standard_Boolean Values(const Standard_Real Param, Standard_Real &OutValue, Standard_Real &OutValue);

};
%feature("shadow") HLRBRep_TheQuadCurvFuncOfTheQuadCurvExactInterCSurf::~HLRBRep_TheQuadCurvFuncOfTheQuadCurvExactInterCSurf %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRBRep_TheQuadCurvFuncOfTheQuadCurvExactInterCSurf {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRBRep_TheIntersectorOfTheIntConicCurveOfCInter;
class HLRBRep_TheIntersectorOfTheIntConicCurveOfCInter : public IntRes2d_Intersection {
	public:
		%feature("autodoc", "1");
		HLRBRep_TheIntersectorOfTheIntConicCurveOfCInter();
		%feature("autodoc", "1");
		HLRBRep_TheIntersectorOfTheIntConicCurveOfCInter(const IntCurve_IConicTool &ITool, const IntRes2d_Domain &Dom1, const Standard_Address &PCurve, const IntRes2d_Domain &Dom2, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Perform(const IntCurve_IConicTool &ITool, const IntRes2d_Domain &Dom1, const Standard_Address &PCurve, const IntRes2d_Domain &Dom2, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		Standard_Real FindU(const Standard_Real parameter, gp_Pnt2d & point, const Standard_Address &TheParCurev, const IntCurve_IConicTool &IntCurve_IConicTool) const;
		%feature("autodoc", "1");
		Standard_Real FindV(const Standard_Real parameter, gp_Pnt2d & point, const IntCurve_IConicTool &IntCurve_IConicTool, const Standard_Address &ParCurve, const IntRes2d_Domain &TheParCurveDomain, const Standard_Real V0, const Standard_Real V1, const Standard_Real Tolerance) const;
		%feature("autodoc","And_Domaine_Objet1_Intersections(const IntCurve_IConicTool, const TheParCurve, const TheImpCurveDomain, const TheParCurveDomain, Standard_Real EpsNul) -> Standard_Integer");

		void And_Domaine_Objet1_Intersections(const IntCurve_IConicTool &IntCurve_IConicTool, const Standard_Address &TheParCurve, const IntRes2d_Domain &TheImpCurveDomain, const IntRes2d_Domain &TheParCurveDomain, Standard_Integer &OutValue, TColStd_Array1OfReal & Inter2_And_Domain2, TColStd_Array1OfReal & Inter1, TColStd_Array1OfReal & Resultat1, TColStd_Array1OfReal & Resultat2, const Standard_Real EpsNul) const;

};
%feature("shadow") HLRBRep_TheIntersectorOfTheIntConicCurveOfCInter::~HLRBRep_TheIntersectorOfTheIntConicCurveOfCInter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRBRep_TheIntersectorOfTheIntConicCurveOfCInter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRBRep_Array1OfFData;
class HLRBRep_Array1OfFData {
	public:
		%feature("autodoc", "1");
		HLRBRep_Array1OfFData(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		HLRBRep_Array1OfFData(const HLRBRep_FaceData &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const HLRBRep_FaceData &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const HLRBRep_Array1OfFData & Assign(const HLRBRep_Array1OfFData &Other);
		%feature("autodoc", "1");
		const HLRBRep_Array1OfFData & operator=(const HLRBRep_Array1OfFData &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const HLRBRep_FaceData &Value);
		%feature("autodoc", "1");
		const HLRBRep_FaceData & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const HLRBRep_FaceData & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		HLRBRep_FaceData & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		HLRBRep_FaceData & operator()(const Standard_Integer Index);

};
%feature("shadow") HLRBRep_Array1OfFData::~HLRBRep_Array1OfFData %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRBRep_Array1OfFData {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRBRep_IntConicCurveOfCInter;
class HLRBRep_IntConicCurveOfCInter : public IntRes2d_Intersection {
	public:
		%feature("autodoc", "1");
		HLRBRep_IntConicCurveOfCInter();
		%feature("autodoc", "1");
		HLRBRep_IntConicCurveOfCInter(const gp_Lin2d L, const IntRes2d_Domain &D1, const Standard_Address &PCurve, const IntRes2d_Domain &D2, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		HLRBRep_IntConicCurveOfCInter(const gp_Circ2d C, const IntRes2d_Domain &D1, const Standard_Address &PCurve, const IntRes2d_Domain &D2, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		HLRBRep_IntConicCurveOfCInter(const gp_Elips2d E, const IntRes2d_Domain &D1, const Standard_Address &PCurve, const IntRes2d_Domain &D2, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		HLRBRep_IntConicCurveOfCInter(const gp_Parab2d Prb, const IntRes2d_Domain &D1, const Standard_Address &PCurve, const IntRes2d_Domain &D2, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		HLRBRep_IntConicCurveOfCInter(const gp_Hypr2d H, const IntRes2d_Domain &D1, const Standard_Address &PCurve, const IntRes2d_Domain &D2, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Perform(const gp_Lin2d L, const IntRes2d_Domain &D1, const Standard_Address &PCurve, const IntRes2d_Domain &D2, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Perform(const gp_Circ2d C, const IntRes2d_Domain &D1, const Standard_Address &PCurve, const IntRes2d_Domain &D2, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Perform(const gp_Elips2d E, const IntRes2d_Domain &D1, const Standard_Address &PCurve, const IntRes2d_Domain &D2, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Perform(const gp_Parab2d Prb, const IntRes2d_Domain &D1, const Standard_Address &PCurve, const IntRes2d_Domain &D2, const Standard_Real TolConf, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Perform(const gp_Hypr2d H, const IntRes2d_Domain &D1, const Standard_Address &PCurve, const IntRes2d_Domain &D2, const Standard_Real TolConf, const Standard_Real Tol);

};
%feature("shadow") HLRBRep_IntConicCurveOfCInter::~HLRBRep_IntConicCurveOfCInter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRBRep_IntConicCurveOfCInter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter;
class HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter {
	public:
		%feature("autodoc", "1");
		HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter(const Standard_Address &Curve, const Standard_Integer NbPnt, const IntRes2d_Domain &Domain, const Standard_Real Tol);
		%feature("autodoc", "1");
		HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter(const Standard_Address &Curve, const Standard_Integer NbPnt, const IntRes2d_Domain &Domain, const Standard_Real Tol, const Bnd_Box2d &OtherBox);
		%feature("autodoc", "1");
		void ComputeWithBox(const Standard_Address &Curve, const Bnd_Box2d &OtherBox);
		%feature("autodoc", "1");
		const Bnd_Box2d & Bounding() const;
		%feature("autodoc", "1");
		Standard_Real DeflectionOverEstimation() const;
		%feature("autodoc", "1");
		void SetDeflectionOverEstimation(const Standard_Real x);
		%feature("autodoc", "1");
		void Closed(const Standard_Boolean flag);
		%feature("autodoc", "1");
		Standard_Boolean Closed() const;
		%feature("autodoc", "1");
		Standard_Integer NbSegments() const;
		%feature("autodoc", "1");
		const gp_Pnt2d  BeginOfSeg(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const gp_Pnt2d  EndOfSeg(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Real InfParameter() const;
		%feature("autodoc", "1");
		Standard_Real SupParameter() const;
		%feature("autodoc", "1");
		Standard_Boolean AutoIntersectionIsPossible() const;
		%feature("autodoc", "1");
		Standard_Real ApproxParamOnCurve(const Standard_Integer Index, const Standard_Real ParamOnLine) const;
		%feature("autodoc", "1");
		Standard_Integer CalculRegion(const Standard_Real x, const Standard_Real y, const Standard_Real x1, const Standard_Real x2, const Standard_Real y1, const Standard_Real y2) const;
		%feature("autodoc", "1");
		void Dump() const;

};
%feature("shadow") HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter::~HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRBRep_SeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfCInter;
class HLRBRep_SeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfCInter : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		HLRBRep_SeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfCInter();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const HLRBRep_SeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfCInter & Assign(const HLRBRep_SeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfCInter &Other);
		%feature("autodoc", "1");
		const HLRBRep_SeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfCInter & operator=(const HLRBRep_SeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfCInter &Other);
		%feature("autodoc", "1");
		void Append(const Extrema_POnCurv2d &T);
		%feature("autodoc", "1");
		void Append(HLRBRep_SeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfCInter & S);
		%feature("autodoc", "1");
		void Prepend(const Extrema_POnCurv2d &T);
		%feature("autodoc", "1");
		void Prepend(HLRBRep_SeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfCInter & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Extrema_POnCurv2d &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, HLRBRep_SeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfCInter & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Extrema_POnCurv2d &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, HLRBRep_SeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfCInter & S);
		%feature("autodoc", "1");
		const Extrema_POnCurv2d & First() const;
		%feature("autodoc", "1");
		const Extrema_POnCurv2d & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, HLRBRep_SeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfCInter & S);
		%feature("autodoc", "1");
		const Extrema_POnCurv2d & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Extrema_POnCurv2d & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Extrema_POnCurv2d &I);
		%feature("autodoc", "1");
		Extrema_POnCurv2d & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Extrema_POnCurv2d & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") HLRBRep_SeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfCInter::~HLRBRep_SeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfCInter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRBRep_SeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfCInter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRBRep_TheCurveLocatorOfTheProjPCurOfCInter;
class HLRBRep_TheCurveLocatorOfTheProjPCurOfCInter {
	public:
		%feature("autodoc", "1");
		HLRBRep_TheCurveLocatorOfTheProjPCurOfCInter();

};
%feature("shadow") HLRBRep_TheCurveLocatorOfTheProjPCurOfCInter::~HLRBRep_TheCurveLocatorOfTheProjPCurOfCInter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRBRep_TheCurveLocatorOfTheProjPCurOfCInter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRBRep_PolyHLRToShape;
class HLRBRep_PolyHLRToShape {
	public:
		%feature("autodoc", "1");
		HLRBRep_PolyHLRToShape();
		%feature("autodoc", "1");
		void Update(const Handle_HLRBRep_PolyAlgo &A);
		%feature("autodoc", "1");
		void Show();
		%feature("autodoc", "1");
		void Hide();
		%feature("autodoc", "1");
		TopoDS_Shape VCompound();
		%feature("autodoc", "1");
		TopoDS_Shape VCompound(const TopoDS_Shape S);
		%feature("autodoc", "1");
		TopoDS_Shape Rg1LineVCompound();
		%feature("autodoc", "1");
		TopoDS_Shape Rg1LineVCompound(const TopoDS_Shape S);
		%feature("autodoc", "1");
		TopoDS_Shape RgNLineVCompound();
		%feature("autodoc", "1");
		TopoDS_Shape RgNLineVCompound(const TopoDS_Shape S);
		%feature("autodoc", "1");
		TopoDS_Shape OutLineVCompound();
		%feature("autodoc", "1");
		TopoDS_Shape OutLineVCompound(const TopoDS_Shape S);
		%feature("autodoc", "1");
		TopoDS_Shape HCompound();
		%feature("autodoc", "1");
		TopoDS_Shape HCompound(const TopoDS_Shape S);
		%feature("autodoc", "1");
		TopoDS_Shape Rg1LineHCompound();
		%feature("autodoc", "1");
		TopoDS_Shape Rg1LineHCompound(const TopoDS_Shape S);
		%feature("autodoc", "1");
		TopoDS_Shape RgNLineHCompound();
		%feature("autodoc", "1");
		TopoDS_Shape RgNLineHCompound(const TopoDS_Shape S);
		%feature("autodoc", "1");
		TopoDS_Shape OutLineHCompound();
		%feature("autodoc", "1");
		TopoDS_Shape OutLineHCompound(const TopoDS_Shape S);

};
%feature("shadow") HLRBRep_PolyHLRToShape::~HLRBRep_PolyHLRToShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRBRep_PolyHLRToShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRBRep_ListOfBPnt2D;
class HLRBRep_ListOfBPnt2D {
	public:
		%feature("autodoc", "1");
		HLRBRep_ListOfBPnt2D();
		%feature("autodoc", "1");
		void Assign(const HLRBRep_ListOfBPnt2D &Other);
		%feature("autodoc", "1");
		void operator=(const HLRBRep_ListOfBPnt2D &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const HLRBRep_BiPnt2D &I);
		%feature("autodoc", "1");
		void Prepend(const HLRBRep_BiPnt2D &I, HLRBRep_ListIteratorOfListOfBPnt2D & theIt);
		%feature("autodoc", "1");
		void Prepend(HLRBRep_ListOfBPnt2D & Other);
		%feature("autodoc", "1");
		void Append(const HLRBRep_BiPnt2D &I);
		%feature("autodoc", "1");
		void Append(const HLRBRep_BiPnt2D &I, HLRBRep_ListIteratorOfListOfBPnt2D & theIt);
		%feature("autodoc", "1");
		void Append(HLRBRep_ListOfBPnt2D & Other);
		%feature("autodoc", "1");
		HLRBRep_BiPnt2D & First() const;
		%feature("autodoc", "1");
		HLRBRep_BiPnt2D & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(HLRBRep_ListIteratorOfListOfBPnt2D & It);
		%feature("autodoc", "1");
		void InsertBefore(const HLRBRep_BiPnt2D &I, HLRBRep_ListIteratorOfListOfBPnt2D & It);
		%feature("autodoc", "1");
		void InsertBefore(HLRBRep_ListOfBPnt2D & Other, HLRBRep_ListIteratorOfListOfBPnt2D & It);
		%feature("autodoc", "1");
		void InsertAfter(const HLRBRep_BiPnt2D &I, HLRBRep_ListIteratorOfListOfBPnt2D & It);
		%feature("autodoc", "1");
		void InsertAfter(HLRBRep_ListOfBPnt2D & Other, HLRBRep_ListIteratorOfListOfBPnt2D & It);

};
%feature("shadow") HLRBRep_ListOfBPnt2D::~HLRBRep_ListOfBPnt2D %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRBRep_ListOfBPnt2D {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRBRep_ListIteratorOfListOfBPnt2D;
class HLRBRep_ListIteratorOfListOfBPnt2D {
	public:
		%feature("autodoc", "1");
		HLRBRep_ListIteratorOfListOfBPnt2D();
		%feature("autodoc", "1");
		HLRBRep_ListIteratorOfListOfBPnt2D(const HLRBRep_ListOfBPnt2D &L);
		%feature("autodoc", "1");
		void Initialize(const HLRBRep_ListOfBPnt2D &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		HLRBRep_BiPnt2D & Value() const;

};
%feature("shadow") HLRBRep_ListIteratorOfListOfBPnt2D::~HLRBRep_ListIteratorOfListOfBPnt2D %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRBRep_ListIteratorOfListOfBPnt2D {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRBRep_Array1OfEData;
class HLRBRep_Array1OfEData {
	public:
		%feature("autodoc", "1");
		HLRBRep_Array1OfEData(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		HLRBRep_Array1OfEData(const HLRBRep_EdgeData &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const HLRBRep_EdgeData &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const HLRBRep_Array1OfEData & Assign(const HLRBRep_Array1OfEData &Other);
		%feature("autodoc", "1");
		const HLRBRep_Array1OfEData & operator=(const HLRBRep_Array1OfEData &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const HLRBRep_EdgeData &Value);
		%feature("autodoc", "1");
		const HLRBRep_EdgeData & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const HLRBRep_EdgeData & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		HLRBRep_EdgeData & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		HLRBRep_EdgeData & operator()(const Standard_Integer Index);

};
%feature("shadow") HLRBRep_Array1OfEData::~HLRBRep_Array1OfEData %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRBRep_Array1OfEData {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRBRep_CLPropsATool;
class HLRBRep_CLPropsATool {
	public:
		%feature("autodoc", "1");
		HLRBRep_CLPropsATool();
		%feature("autodoc", "1");
		static		void Value(const Standard_Address A, const Standard_Real U, gp_Pnt2d & P);
		%feature("autodoc", "1");
		static		void D1(const Standard_Address A, const Standard_Real U, gp_Pnt2d & P, gp_Vec2d & V1);
		%feature("autodoc", "1");
		static		void D2(const Standard_Address A, const Standard_Real U, gp_Pnt2d & P, gp_Vec2d & V1, gp_Vec2d & V2);
		%feature("autodoc", "1");
		static		void D3(const Standard_Address A, const Standard_Real U, gp_Pnt2d & P, gp_Vec2d & V1, gp_Vec2d & V2, gp_Vec2d & V3);
		%feature("autodoc", "1");
		static		Standard_Integer Continuity(const Standard_Address arg0);
		%feature("autodoc", "1");
		static		Standard_Real FirstParameter(const Standard_Address A);
		%feature("autodoc", "1");
		static		Standard_Real LastParameter(const Standard_Address A);

};
%feature("shadow") HLRBRep_CLPropsATool::~HLRBRep_CLPropsATool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRBRep_CLPropsATool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRBRep_HLRToShape;
class HLRBRep_HLRToShape {
	public:
		%feature("autodoc", "1");
		HLRBRep_HLRToShape(const Handle_HLRBRep_Algo &A);
		%feature("autodoc", "1");
		TopoDS_Shape VCompound();
		%feature("autodoc", "1");
		TopoDS_Shape VCompound(const TopoDS_Shape S);
		%feature("autodoc", "1");
		TopoDS_Shape Rg1LineVCompound();
		%feature("autodoc", "1");
		TopoDS_Shape Rg1LineVCompound(const TopoDS_Shape S);
		%feature("autodoc", "1");
		TopoDS_Shape RgNLineVCompound();
		%feature("autodoc", "1");
		TopoDS_Shape RgNLineVCompound(const TopoDS_Shape S);
		%feature("autodoc", "1");
		TopoDS_Shape OutLineVCompound();
		%feature("autodoc", "1");
		TopoDS_Shape OutLineVCompound(const TopoDS_Shape S);
		%feature("autodoc", "1");
		TopoDS_Shape IsoLineVCompound();
		%feature("autodoc", "1");
		TopoDS_Shape IsoLineVCompound(const TopoDS_Shape S);
		%feature("autodoc", "1");
		TopoDS_Shape HCompound();
		%feature("autodoc", "1");
		TopoDS_Shape HCompound(const TopoDS_Shape S);
		%feature("autodoc", "1");
		TopoDS_Shape Rg1LineHCompound();
		%feature("autodoc", "1");
		TopoDS_Shape Rg1LineHCompound(const TopoDS_Shape S);
		%feature("autodoc", "1");
		TopoDS_Shape RgNLineHCompound();
		%feature("autodoc", "1");
		TopoDS_Shape RgNLineHCompound(const TopoDS_Shape S);
		%feature("autodoc", "1");
		TopoDS_Shape OutLineHCompound();
		%feature("autodoc", "1");
		TopoDS_Shape OutLineHCompound(const TopoDS_Shape S);
		%feature("autodoc", "1");
		TopoDS_Shape IsoLineHCompound();
		%feature("autodoc", "1");
		TopoDS_Shape IsoLineHCompound(const TopoDS_Shape S);

};
%feature("shadow") HLRBRep_HLRToShape::~HLRBRep_HLRToShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRBRep_HLRToShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRBRep_ExactIntersectionPointOfTheIntPCurvePCurveOfCInter;
class HLRBRep_ExactIntersectionPointOfTheIntPCurvePCurveOfCInter {
	public:
		%feature("autodoc", "1");
		HLRBRep_ExactIntersectionPointOfTheIntPCurvePCurveOfCInter(const Standard_Address &C1, const Standard_Address &C2, const Standard_Real Tol);
		%feature("autodoc","Perform(const Poly1, const Poly2) -> [Standard_Integer, Standard_Integer, Standard_Real, Standard_Real]");

		void Perform(const HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter &Poly1, const HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter &Poly2, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		void Perform(const Standard_Real Uo, const Standard_Real Vo, const Standard_Real UInf, const Standard_Real VInf, const Standard_Real USup, const Standard_Real VSup);
		%feature("autodoc", "1");
		Standard_Integer NbRoots() const;
		%feature("autodoc","Roots() -> [Standard_Real, Standard_Real]");

		void Roots(Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		Standard_Boolean AnErrorOccurred() const;

};
%feature("shadow") HLRBRep_ExactIntersectionPointOfTheIntPCurvePCurveOfCInter::~HLRBRep_ExactIntersectionPointOfTheIntPCurvePCurveOfCInter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRBRep_ExactIntersectionPointOfTheIntPCurvePCurveOfCInter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRBRep_EdgeFaceTool;
class HLRBRep_EdgeFaceTool {
	public:
		%feature("autodoc", "1");
		HLRBRep_EdgeFaceTool();
		%feature("autodoc", "1");
		static		Standard_Real CurvatureValue(const Standard_Address F, const Standard_Real U, const Standard_Real V, const gp_Dir Tg);
		%feature("autodoc","UVPoint(Standard_Real Par, Standard_Address E, Standard_Address F) -> [Standard_Real, Standard_Real]");

		static		Standard_Boolean UVPoint(const Standard_Real Par, const Standard_Address E, const Standard_Address F, Standard_Real &OutValue, Standard_Real &OutValue);

};
%feature("shadow") HLRBRep_EdgeFaceTool::~HLRBRep_EdgeFaceTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRBRep_EdgeFaceTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRBRep_ThePolygonOfInterCSurf;
class HLRBRep_ThePolygonOfInterCSurf {
	public:
		%feature("autodoc", "1");
		HLRBRep_ThePolygonOfInterCSurf(const gp_Lin Curve, const Standard_Integer NbPnt);
		%feature("autodoc", "1");
		HLRBRep_ThePolygonOfInterCSurf(const gp_Lin Curve, const Standard_Real U1, const Standard_Real U2, const Standard_Integer NbPnt);
		%feature("autodoc", "1");
		HLRBRep_ThePolygonOfInterCSurf(const gp_Lin Curve, const TColStd_Array1OfReal &Upars);
		%feature("autodoc", "1");
		const Bnd_Box & Bounding() const;
		%feature("autodoc", "1");
		Standard_Real DeflectionOverEstimation() const;
		%feature("autodoc", "1");
		void SetDeflectionOverEstimation(const Standard_Real x);
		%feature("autodoc", "1");
		void Closed(const Standard_Boolean flag);
		%feature("autodoc", "1");
		Standard_Boolean Closed() const;
		%feature("autodoc", "1");
		Standard_Integer NbSegments() const;
		%feature("autodoc", "1");
		const gp_Pnt  BeginOfSeg(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const gp_Pnt  EndOfSeg(const Standard_Integer TheIndex) const;
		%feature("autodoc", "1");
		Standard_Real InfParameter() const;
		%feature("autodoc", "1");
		Standard_Real SupParameter() const;
		%feature("autodoc", "1");
		Standard_Real ApproxParamOnCurve(const Standard_Integer Index, const Standard_Real ParamOnLine) const;
		%feature("autodoc", "1");
		void Dump() const;

};
%feature("shadow") HLRBRep_ThePolygonOfInterCSurf::~HLRBRep_ThePolygonOfInterCSurf %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRBRep_ThePolygonOfInterCSurf {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRBRep_Algo;
class HLRBRep_Algo : public HLRBRep_InternalAlgo {
	public:
		%feature("autodoc", "1");
		HLRBRep_Algo();
		%feature("autodoc", "1");
		HLRBRep_Algo(const Handle_HLRBRep_Algo &A);
		%feature("autodoc", "1");
		void Add(const TopoDS_Shape S, const Handle_MMgt_TShared &SData, const Standard_Integer nbIso=0);
		%feature("autodoc", "1");
		void Add(const TopoDS_Shape S, const Standard_Integer nbIso=0);
		%feature("autodoc", "1");
		Standard_Integer Index(const TopoDS_Shape S);
		%feature("autodoc", "1");
		void OutLinedShapeNullify();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend HLRBRep_Algo {
	Handle_HLRBRep_Algo GetHandle() {
	return *(Handle_HLRBRep_Algo*) &$self;
	}
};
%extend HLRBRep_Algo {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") HLRBRep_Algo::~HLRBRep_Algo %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRBRep_Algo {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRBRep_TheExactInterCSurf;
class HLRBRep_TheExactInterCSurf {
	public:
		%feature("autodoc", "1");
		HLRBRep_TheExactInterCSurf(const Standard_Real U, const Standard_Real V, const Standard_Real W, const HLRBRep_TheCSFunctionOfInterCSurf &F, const Standard_Real TolTangency, const Standard_Real MarginCoef=0.0);
		%feature("autodoc", "1");
		HLRBRep_TheExactInterCSurf(const HLRBRep_TheCSFunctionOfInterCSurf &F, const Standard_Real TolTangency);
		%feature("autodoc", "1");
		void Perform(const Standard_Real U, const Standard_Real V, const Standard_Real W, math_FunctionSetRoot & Rsnld, const Standard_Real u0, const Standard_Real v0, const Standard_Real u1, const Standard_Real v1, const Standard_Real w0, const Standard_Real w1);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		const gp_Pnt  Point() const;
		%feature("autodoc", "1");
		Standard_Real ParameterOnCurve() const;
		%feature("autodoc","ParameterOnSurface() -> [Standard_Real, Standard_Real]");

		void ParameterOnSurface(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		HLRBRep_TheCSFunctionOfInterCSurf & Function();

};
%feature("shadow") HLRBRep_TheExactInterCSurf::~HLRBRep_TheExactInterCSurf %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRBRep_TheExactInterCSurf {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRBRep_ThePolyhedronToolOfInterCSurf;
class HLRBRep_ThePolyhedronToolOfInterCSurf {
	public:
		%feature("autodoc", "1");
		HLRBRep_ThePolyhedronToolOfInterCSurf();
		%feature("autodoc", "1");
		static		const Bnd_Box & Bounding(const HLRBRep_ThePolyhedronOfInterCSurf &thePolyh);
		%feature("autodoc", "1");
		static		const Handle_Bnd_HArray1OfBox & ComponentsBounding(const HLRBRep_ThePolyhedronOfInterCSurf &thePolyh);
		%feature("autodoc", "1");
		static		Standard_Real DeflectionOverEstimation(const HLRBRep_ThePolyhedronOfInterCSurf &thePolyh);
		%feature("autodoc", "1");
		static		Standard_Integer NbTriangles(const HLRBRep_ThePolyhedronOfInterCSurf &thePolyh);
		%feature("autodoc","Triangle(const thePolyh, Standard_Integer Index) -> [Standard_Integer, Standard_Integer, Standard_Integer]");

		static		void Triangle(const HLRBRep_ThePolyhedronOfInterCSurf &thePolyh, const Standard_Integer Index, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue);
		%feature("autodoc", "1");
		static		const gp_Pnt  Point(const HLRBRep_ThePolyhedronOfInterCSurf &thePolyh, const Standard_Integer Index);
		%feature("autodoc","TriConnex(const thePolyh, Standard_Integer Triang, Standard_Integer Pivot, Standard_Integer Pedge) -> [Standard_Integer, Standard_Integer]");

		static		Standard_Integer TriConnex(const HLRBRep_ThePolyhedronOfInterCSurf &thePolyh, const Standard_Integer Triang, const Standard_Integer Pivot, const Standard_Integer Pedge, Standard_Integer &OutValue, Standard_Integer &OutValue);
		%feature("autodoc", "1");
		static		Standard_Boolean IsOnBound(const HLRBRep_ThePolyhedronOfInterCSurf &thePolyh, const Standard_Integer Index1, const Standard_Integer Index2);
		%feature("autodoc", "1");
		static		Standard_Real GetBorderDeflection(const HLRBRep_ThePolyhedronOfInterCSurf &thePolyh);
		%feature("autodoc", "1");
		static		void Dump(const HLRBRep_ThePolyhedronOfInterCSurf &thePolyh);

};
%feature("shadow") HLRBRep_ThePolyhedronToolOfInterCSurf::~HLRBRep_ThePolyhedronToolOfInterCSurf %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRBRep_ThePolyhedronToolOfInterCSurf {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRBRep_SequenceNodeOfSeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfCInter;
class HLRBRep_SequenceNodeOfSeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfCInter : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		HLRBRep_SequenceNodeOfSeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfCInter(const Extrema_POnCurv2d &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Extrema_POnCurv2d & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend HLRBRep_SequenceNodeOfSeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfCInter {
	Handle_HLRBRep_SequenceNodeOfSeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfCInter GetHandle() {
	return *(Handle_HLRBRep_SequenceNodeOfSeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfCInter*) &$self;
	}
};
%extend HLRBRep_SequenceNodeOfSeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfCInter {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") HLRBRep_SequenceNodeOfSeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfCInter::~HLRBRep_SequenceNodeOfSeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfCInter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRBRep_SequenceNodeOfSeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfCInter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRBRep_SLPropsATool;
class HLRBRep_SLPropsATool {
	public:
		%feature("autodoc", "1");
		HLRBRep_SLPropsATool();
		%feature("autodoc", "1");
		static		void Value(const Standard_Address A, const Standard_Real U, const Standard_Real V, gp_Pnt & P);
		%feature("autodoc", "1");
		static		void D1(const Standard_Address A, const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V);
		%feature("autodoc", "1");
		static		void D2(const Standard_Address A, const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V, gp_Vec & D2U, gp_Vec & D2V, gp_Vec & DUV);
		%feature("autodoc", "1");
		static		gp_Vec DN(const Standard_Address A, const Standard_Real U, const Standard_Real V, const Standard_Integer Nu, const Standard_Integer Nv);
		%feature("autodoc", "1");
		static		Standard_Integer Continuity(const Standard_Address arg0);
		%feature("autodoc","Bounds(Standard_Address arg0) -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real]");

		static		void Bounds(const Standard_Address arg0, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);

};
%feature("shadow") HLRBRep_SLPropsATool::~HLRBRep_SLPropsATool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRBRep_SLPropsATool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRBRep_ShapeBounds;
class HLRBRep_ShapeBounds {
	public:
		%feature("autodoc", "1");
		HLRBRep_ShapeBounds();
		%feature("autodoc", "1");
		HLRBRep_ShapeBounds(const Handle_HLRTopoBRep_OutLiner &S, const Handle_MMgt_TShared &SData, const Standard_Integer nbIso, const Standard_Integer V1, const Standard_Integer V2, const Standard_Integer E1, const Standard_Integer E2, const Standard_Integer F1, const Standard_Integer F2);
		%feature("autodoc", "1");
		HLRBRep_ShapeBounds(const Handle_HLRTopoBRep_OutLiner &S, const Standard_Integer nbIso, const Standard_Integer V1, const Standard_Integer V2, const Standard_Integer E1, const Standard_Integer E2, const Standard_Integer F1, const Standard_Integer F2);
		%feature("autodoc", "1");
		void Translate(const Standard_Integer NV, const Standard_Integer NE, const Standard_Integer NF);
		%feature("autodoc", "1");
		void Shape(const Handle_HLRTopoBRep_OutLiner &S);
		%feature("autodoc", "1");
		const Handle_HLRTopoBRep_OutLiner & Shape() const;
		%feature("autodoc", "1");
		void ShapeData(const Handle_MMgt_TShared &SD);
		%feature("autodoc", "1");
		const Handle_MMgt_TShared & ShapeData() const;
		%feature("autodoc", "1");
		void NbOfIso(const Standard_Integer nbIso);
		%feature("autodoc", "1");
		Standard_Integer NbOfIso() const;
		%feature("autodoc","Sizes() -> [Standard_Integer, Standard_Integer, Standard_Integer]");

		void Sizes(Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc","Bounds() -> [Standard_Integer, Standard_Integer, Standard_Integer, Standard_Integer, Standard_Integer, Standard_Integer]");

		void Bounds(Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		void UpdateMinMax(const Standard_Address TotMinMax);
		%feature("autodoc", "1");
		Standard_Address MinMax() const;

};
%feature("shadow") HLRBRep_ShapeBounds::~HLRBRep_ShapeBounds %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRBRep_ShapeBounds {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRBRep_ListNodeOfListOfBPnt2D;
class HLRBRep_ListNodeOfListOfBPnt2D : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		HLRBRep_ListNodeOfListOfBPnt2D(const HLRBRep_BiPnt2D &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		HLRBRep_BiPnt2D & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend HLRBRep_ListNodeOfListOfBPnt2D {
	Handle_HLRBRep_ListNodeOfListOfBPnt2D GetHandle() {
	return *(Handle_HLRBRep_ListNodeOfListOfBPnt2D*) &$self;
	}
};
%extend HLRBRep_ListNodeOfListOfBPnt2D {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") HLRBRep_ListNodeOfListOfBPnt2D::~HLRBRep_ListNodeOfListOfBPnt2D %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRBRep_ListNodeOfListOfBPnt2D {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRBRep_SequenceNodeOfSeqOfShapeBounds;
class HLRBRep_SequenceNodeOfSeqOfShapeBounds : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		HLRBRep_SequenceNodeOfSeqOfShapeBounds(const HLRBRep_ShapeBounds &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		HLRBRep_ShapeBounds & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend HLRBRep_SequenceNodeOfSeqOfShapeBounds {
	Handle_HLRBRep_SequenceNodeOfSeqOfShapeBounds GetHandle() {
	return *(Handle_HLRBRep_SequenceNodeOfSeqOfShapeBounds*) &$self;
	}
};
%extend HLRBRep_SequenceNodeOfSeqOfShapeBounds {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") HLRBRep_SequenceNodeOfSeqOfShapeBounds::~HLRBRep_SequenceNodeOfSeqOfShapeBounds %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRBRep_SequenceNodeOfSeqOfShapeBounds {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRBRep_VertexList;
class HLRBRep_VertexList {
	public:
		%feature("autodoc", "1");
		HLRBRep_VertexList(const HLRBRep_EdgeInterferenceTool &T, const HLRAlgo_ListIteratorOfInterferenceList &I);
		%feature("autodoc", "1");
		Standard_Boolean IsPeriodic() const;
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		const HLRAlgo_Intersection & Current() const;
		%feature("autodoc", "1");
		Standard_Boolean IsBoundary() const;
		%feature("autodoc", "1");
		Standard_Boolean IsInterference() const;
		%feature("autodoc", "1");
		TopAbs_Orientation Orientation() const;
		%feature("autodoc", "1");
		TopAbs_Orientation Transition() const;
		%feature("autodoc", "1");
		TopAbs_Orientation BoundaryTransition() const;

};
%feature("shadow") HLRBRep_VertexList::~HLRBRep_VertexList %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRBRep_VertexList {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRBRep_TheQuadCurvExactInterCSurf;
class HLRBRep_TheQuadCurvExactInterCSurf {
	public:
		%feature("autodoc", "1");
		HLRBRep_TheQuadCurvExactInterCSurf(const Standard_Address &S, const gp_Lin C);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbRoots() const;
		%feature("autodoc", "1");
		Standard_Real Root(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Integer NbIntervals() const;
		%feature("autodoc","Intervals(Standard_Integer Index) -> [Standard_Real, Standard_Real]");

		void Intervals(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue) const;

};
%feature("shadow") HLRBRep_TheQuadCurvExactInterCSurf::~HLRBRep_TheQuadCurvExactInterCSurf %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRBRep_TheQuadCurvExactInterCSurf {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRBRep_CurveTool;
class HLRBRep_CurveTool {
	public:
		%feature("autodoc", "1");
		HLRBRep_CurveTool();
		%feature("autodoc", "1");
		static		Standard_Real FirstParameter(const Standard_Address C);
		%feature("autodoc", "1");
		static		Standard_Real LastParameter(const Standard_Address C);
		%feature("autodoc", "1");
		static		GeomAbs_Shape Continuity(const Standard_Address C);
		%feature("autodoc", "1");
		static		Standard_Integer NbIntervals(const Standard_Address C);
		%feature("autodoc", "1");
		static		void Intervals(const Standard_Address C, TColStd_Array1OfReal & Tab);
		%feature("autodoc","GetInterval(Standard_Address C, Standard_Integer i, const Tab) -> [Standard_Real, Standard_Real]");

		static		void GetInterval(const Standard_Address C, const Standard_Integer i, const TColStd_Array1OfReal &Tab, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		static		Standard_Boolean IsClosed(const Standard_Address C);
		%feature("autodoc", "1");
		static		Standard_Boolean IsPeriodic(const Standard_Address C);
		%feature("autodoc", "1");
		static		Standard_Real Period(const Standard_Address C);
		%feature("autodoc", "1");
		static		gp_Pnt2d Value(const Standard_Address C, const Standard_Real U);
		%feature("autodoc", "1");
		static		void D0(const Standard_Address C, const Standard_Real U, gp_Pnt2d & P);
		%feature("autodoc", "1");
		static		void D1(const Standard_Address C, const Standard_Real U, gp_Pnt2d & P, gp_Vec2d & T);
		%feature("autodoc", "1");
		static		void D2(const Standard_Address C, const Standard_Real U, gp_Pnt2d & P, gp_Vec2d & T, gp_Vec2d & N);
		%feature("autodoc", "1");
		static		void D3(const Standard_Address C, const Standard_Real U, gp_Pnt2d & P, gp_Vec2d & V1, gp_Vec2d & V2, gp_Vec2d & V3);
		%feature("autodoc", "1");
		static		gp_Vec2d DN(const Standard_Address C, const Standard_Real U, const Standard_Integer N);
		%feature("autodoc", "1");
		static		Standard_Real Resolution(const Standard_Address C, const Standard_Real R3d);
		%feature("autodoc", "1");
		static		GeomAbs_CurveType GetType(const Standard_Address C);
		%feature("autodoc", "1");
		static		GeomAbs_CurveType TheType(const Standard_Address C);
		%feature("autodoc", "1");
		static		gp_Lin2d Line(const Standard_Address C);
		%feature("autodoc", "1");
		static		gp_Circ2d Circle(const Standard_Address C);
		%feature("autodoc", "1");
		static		gp_Elips2d Ellipse(const Standard_Address C);
		%feature("autodoc", "1");
		static		gp_Hypr2d Hyperbola(const Standard_Address C);
		%feature("autodoc", "1");
		static		gp_Parab2d Parabola(const Standard_Address C);
		%feature("autodoc", "1");
		static		Handle_Geom2d_BezierCurve Bezier(const Standard_Address C);
		%feature("autodoc", "1");
		static		Handle_Geom2d_BSplineCurve BSpline(const Standard_Address C);
		%feature("autodoc", "1");
		static		Standard_Real EpsX(const Standard_Address C);
		%feature("autodoc", "1");
		static		Standard_Integer NbSamples(const Standard_Address C, const Standard_Real U0, const Standard_Real U1);
		%feature("autodoc", "1");
		static		Standard_Integer NbSamples(const Standard_Address C);

};
%feature("shadow") HLRBRep_CurveTool::~HLRBRep_CurveTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRBRep_CurveTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRBRep_TheCSFunctionOfInterCSurf;
class HLRBRep_TheCSFunctionOfInterCSurf : public math_FunctionSetWithDerivatives {
	public:
		%feature("autodoc", "1");
		HLRBRep_TheCSFunctionOfInterCSurf(const Standard_Address &S, const gp_Lin C);
		%feature("autodoc", "1");
		virtual		Standard_Integer NbVariables() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbEquations() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Value(const math_Vector &X, math_Vector & F);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Derivatives(const math_Vector &X, math_Matrix & D);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Values(const math_Vector &X, math_Vector & F, math_Matrix & D);
		%feature("autodoc", "1");
		const gp_Pnt  Point() const;
		%feature("autodoc", "1");
		Standard_Real Root() const;
		%feature("autodoc", "1");
		const Standard_Address & AuxillarSurface() const;
		%feature("autodoc", "1");
		const gp_Lin  AuxillarCurve() const;

};
%feature("shadow") HLRBRep_TheCSFunctionOfInterCSurf::~HLRBRep_TheCSFunctionOfInterCSurf %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRBRep_TheCSFunctionOfInterCSurf {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRBRep_TheInterferenceOfInterCSurf;
class HLRBRep_TheInterferenceOfInterCSurf : public Intf_Interference {
	public:
		%feature("autodoc", "1");
		HLRBRep_TheInterferenceOfInterCSurf();
		%feature("autodoc", "1");
		HLRBRep_TheInterferenceOfInterCSurf(const HLRBRep_ThePolygonOfInterCSurf &thePolyg, const HLRBRep_ThePolyhedronOfInterCSurf &thePolyh);
		%feature("autodoc", "1");
		HLRBRep_TheInterferenceOfInterCSurf(const gp_Lin theLin, const HLRBRep_ThePolyhedronOfInterCSurf &thePolyh);
		%feature("autodoc", "1");
		HLRBRep_TheInterferenceOfInterCSurf(const Intf_Array1OfLin &theLins, const HLRBRep_ThePolyhedronOfInterCSurf &thePolyh);
		%feature("autodoc", "1");
		void Perform(const HLRBRep_ThePolygonOfInterCSurf &thePolyg, const HLRBRep_ThePolyhedronOfInterCSurf &thePolyh);
		%feature("autodoc", "1");
		void Perform(const gp_Lin theLin, const HLRBRep_ThePolyhedronOfInterCSurf &thePolyh);
		%feature("autodoc", "1");
		void Perform(const Intf_Array1OfLin &theLins, const HLRBRep_ThePolyhedronOfInterCSurf &thePolyh);
		%feature("autodoc", "1");
		HLRBRep_TheInterferenceOfInterCSurf(const HLRBRep_ThePolygonOfInterCSurf &thePolyg, const HLRBRep_ThePolyhedronOfInterCSurf &thePolyh, Bnd_BoundSortBox & theBoundSB);
		%feature("autodoc", "1");
		HLRBRep_TheInterferenceOfInterCSurf(const gp_Lin theLin, const HLRBRep_ThePolyhedronOfInterCSurf &thePolyh, Bnd_BoundSortBox & theBoundSB);
		%feature("autodoc", "1");
		HLRBRep_TheInterferenceOfInterCSurf(const Intf_Array1OfLin &theLins, const HLRBRep_ThePolyhedronOfInterCSurf &thePolyh, Bnd_BoundSortBox & theBoundSB);
		%feature("autodoc", "1");
		void Perform(const HLRBRep_ThePolygonOfInterCSurf &thePolyg, const HLRBRep_ThePolyhedronOfInterCSurf &thePolyh, Bnd_BoundSortBox & theBoundSB);
		%feature("autodoc", "1");
		void Perform(const gp_Lin theLin, const HLRBRep_ThePolyhedronOfInterCSurf &thePolyh, Bnd_BoundSortBox & theBoundSB);
		%feature("autodoc", "1");
		void Perform(const Intf_Array1OfLin &theLins, const HLRBRep_ThePolyhedronOfInterCSurf &thePolyh, Bnd_BoundSortBox & theBoundSB);
		%feature("autodoc", "1");
		void Interference(const HLRBRep_ThePolygonOfInterCSurf &thePolyg, const HLRBRep_ThePolyhedronOfInterCSurf &thePolyh, Bnd_BoundSortBox & theBoundSB);
		%feature("autodoc", "1");
		void Interference(const HLRBRep_ThePolygonOfInterCSurf &thePolyg, const HLRBRep_ThePolyhedronOfInterCSurf &thePolyh);

};
%feature("shadow") HLRBRep_TheInterferenceOfInterCSurf::~HLRBRep_TheInterferenceOfInterCSurf %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRBRep_TheInterferenceOfInterCSurf {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRBRep_Hider;
class HLRBRep_Hider {
	public:
		%feature("autodoc", "1");
		HLRBRep_Hider(const Handle_HLRBRep_Data &DS);
		%feature("autodoc", "1");
		void OwnHiding(const Standard_Integer FI);
		%feature("autodoc", "1");
		void Hide(const Standard_Integer FI, BRepTopAdaptor_MapOfShapeTool & MST);

};
%feature("shadow") HLRBRep_Hider::~HLRBRep_Hider %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRBRep_Hider {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRBRep_TheDistBetweenPCurvesOfTheIntPCurvePCurveOfCInter;
class HLRBRep_TheDistBetweenPCurvesOfTheIntPCurvePCurveOfCInter : public math_FunctionSetWithDerivatives {
	public:
		%feature("autodoc", "1");
		HLRBRep_TheDistBetweenPCurvesOfTheIntPCurvePCurveOfCInter(const Standard_Address &curve1, const Standard_Address &curve2);
		%feature("autodoc", "1");
		virtual		Standard_Integer NbVariables() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbEquations() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Value(const math_Vector &X, math_Vector & F);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Derivatives(const math_Vector &X, math_Matrix & D);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Values(const math_Vector &X, math_Vector & F, math_Matrix & D);

};
%feature("shadow") HLRBRep_TheDistBetweenPCurvesOfTheIntPCurvePCurveOfCInter::~HLRBRep_TheDistBetweenPCurvesOfTheIntPCurvePCurveOfCInter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRBRep_TheDistBetweenPCurvesOfTheIntPCurvePCurveOfCInter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRBRep_BiPoint;
class HLRBRep_BiPoint {
	public:
		%feature("autodoc", "1");
		HLRBRep_BiPoint();
		%feature("autodoc", "1");
		HLRBRep_BiPoint(const Standard_Real x1, const Standard_Real y1, const Standard_Real z1, const Standard_Real x2, const Standard_Real y2, const Standard_Real z2, const TopoDS_Shape S, const Standard_Boolean reg1, const Standard_Boolean regn, const Standard_Boolean outl, const Standard_Boolean intl);
		%feature("autodoc", "1");
		const gp_Pnt  P1() const;
		%feature("autodoc", "1");
		const gp_Pnt  P2() const;
		%feature("autodoc", "1");
		const TopoDS_Shape  Shape() const;
		%feature("autodoc", "1");
		void Shape(const TopoDS_Shape S);
		%feature("autodoc", "1");
		Standard_Boolean Rg1Line() const;
		%feature("autodoc", "1");
		void Rg1Line(const Standard_Boolean B);
		%feature("autodoc", "1");
		Standard_Boolean RgNLine() const;
		%feature("autodoc", "1");
		void RgNLine(const Standard_Boolean B);
		%feature("autodoc", "1");
		Standard_Boolean OutLine() const;
		%feature("autodoc", "1");
		void OutLine(const Standard_Boolean B);
		%feature("autodoc", "1");
		Standard_Boolean IntLine() const;
		%feature("autodoc", "1");
		void IntLine(const Standard_Boolean B);

};
%feature("shadow") HLRBRep_BiPoint::~HLRBRep_BiPoint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRBRep_BiPoint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRBRep_FaceData;
class HLRBRep_FaceData {
	public:
		%feature("autodoc", "1");
		HLRBRep_FaceData();
		%feature("autodoc", "1");
		void Set(const TopoDS_Face FG, const TopAbs_Orientation Or, const Standard_Boolean Cl, const Standard_Integer NW);
		%feature("autodoc", "1");
		void SetWire(const Standard_Integer WI, const Standard_Integer NE);
		%feature("autodoc", "1");
		void SetWEdge(const Standard_Integer WI, const Standard_Integer EWI, const Standard_Integer EI, const TopAbs_Orientation Or, const Standard_Boolean OutL, const Standard_Boolean Inte, const Standard_Boolean Dble, const Standard_Boolean IsoL);
		%feature("autodoc", "1");
		Standard_Boolean Selected() const;
		%feature("autodoc", "1");
		void Selected(const Standard_Boolean B);
		%feature("autodoc", "1");
		Standard_Boolean Back() const;
		%feature("autodoc", "1");
		void Back(const Standard_Boolean B);
		%feature("autodoc", "1");
		Standard_Boolean Side() const;
		%feature("autodoc", "1");
		void Side(const Standard_Boolean B);
		%feature("autodoc", "1");
		Standard_Boolean Closed() const;
		%feature("autodoc", "1");
		void Closed(const Standard_Boolean B);
		%feature("autodoc", "1");
		Standard_Boolean Hiding() const;
		%feature("autodoc", "1");
		void Hiding(const Standard_Boolean B);
		%feature("autodoc", "1");
		Standard_Boolean Simple() const;
		%feature("autodoc", "1");
		void Simple(const Standard_Boolean B);
		%feature("autodoc", "1");
		Standard_Boolean Cut() const;
		%feature("autodoc", "1");
		void Cut(const Standard_Boolean B);
		%feature("autodoc", "1");
		Standard_Boolean WithOutL() const;
		%feature("autodoc", "1");
		void WithOutL(const Standard_Boolean B);
		%feature("autodoc", "1");
		Standard_Boolean Plane() const;
		%feature("autodoc", "1");
		void Plane(const Standard_Boolean B);
		%feature("autodoc", "1");
		Standard_Boolean Cylinder() const;
		%feature("autodoc", "1");
		void Cylinder(const Standard_Boolean B);
		%feature("autodoc", "1");
		Standard_Boolean Cone() const;
		%feature("autodoc", "1");
		void Cone(const Standard_Boolean B);
		%feature("autodoc", "1");
		Standard_Boolean Sphere() const;
		%feature("autodoc", "1");
		void Sphere(const Standard_Boolean B);
		%feature("autodoc", "1");
		Standard_Boolean Torus() const;
		%feature("autodoc", "1");
		void Torus(const Standard_Boolean B);
		%feature("autodoc", "1");
		Standard_Real Size() const;
		%feature("autodoc", "1");
		void Size(const Standard_Real S);
		%feature("autodoc", "1");
		TopAbs_Orientation Orientation() const;
		%feature("autodoc", "1");
		void Orientation(const TopAbs_Orientation O);
		%feature("autodoc", "1");
		Handle_HLRAlgo_WiresBlock & Wires();
		%feature("autodoc", "1");
		HLRBRep_Surface & Geometry();
		%feature("autodoc", "1");
		Standard_ShortReal Tolerance() const;

};
%feature("shadow") HLRBRep_FaceData::~HLRBRep_FaceData %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRBRep_FaceData {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRBRep_MyImpParToolOfTheIntersectorOfTheIntConicCurveOfCInter;
class HLRBRep_MyImpParToolOfTheIntersectorOfTheIntConicCurveOfCInter : public math_FunctionWithDerivative {
	public:
		%feature("autodoc", "1");
		HLRBRep_MyImpParToolOfTheIntersectorOfTheIntConicCurveOfCInter(const IntCurve_IConicTool &IT, const Standard_Address &PC);
		%feature("autodoc","Value(Standard_Real Param) -> Standard_Real");

		virtual		Standard_Boolean Value(const Standard_Real Param, Standard_Real &OutValue);
		%feature("autodoc","Derivative(Standard_Real Param) -> Standard_Real");

		virtual		Standard_Boolean Derivative(const Standard_Real Param, Standard_Real &OutValue);
		%feature("autodoc","Values(Standard_Real Param) -> [Standard_Real, Standard_Real]");

		virtual		Standard_Boolean Values(const Standard_Real Param, Standard_Real &OutValue, Standard_Real &OutValue);

};
%feature("shadow") HLRBRep_MyImpParToolOfTheIntersectorOfTheIntConicCurveOfCInter::~HLRBRep_MyImpParToolOfTheIntersectorOfTheIntConicCurveOfCInter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRBRep_MyImpParToolOfTheIntersectorOfTheIntConicCurveOfCInter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRBRep_Surface;
class HLRBRep_Surface {
	public:
		%feature("autodoc", "1");
		HLRBRep_Surface();
		%feature("autodoc", "1");
		void Projector(const Standard_Address Proj);
		%feature("autodoc", "1");
		BRepAdaptor_Surface & Surface();
		%feature("autodoc", "1");
		void Surface(const TopoDS_Face F);
		%feature("autodoc", "1");
		Standard_Boolean IsSide(const Standard_Real tolf, const Standard_Real toler) const;
		%feature("autodoc", "1");
		Standard_Boolean IsAbove(const Standard_Boolean back, const Standard_Address A, const Standard_Real tolC) const;
		%feature("autodoc", "1");
		Standard_Real FirstUParameter() const;
		%feature("autodoc", "1");
		Standard_Real LastUParameter() const;
		%feature("autodoc", "1");
		Standard_Real FirstVParameter() const;
		%feature("autodoc", "1");
		Standard_Real LastVParameter() const;
		%feature("autodoc", "1");
		GeomAbs_Shape UContinuity() const;
		%feature("autodoc", "1");
		GeomAbs_Shape VContinuity() const;
		%feature("autodoc", "1");
		Standard_Integer NbUIntervals(const GeomAbs_Shape S);
		%feature("autodoc", "1");
		Standard_Integer NbVIntervals(const GeomAbs_Shape S);
		%feature("autodoc", "1");
		Standard_Boolean IsUClosed() const;
		%feature("autodoc", "1");
		Standard_Boolean IsVClosed() const;
		%feature("autodoc", "1");
		Standard_Boolean IsUPeriodic() const;
		%feature("autodoc", "1");
		Standard_Real UPeriod() const;
		%feature("autodoc", "1");
		Standard_Boolean IsVPeriodic() const;
		%feature("autodoc", "1");
		Standard_Real VPeriod() const;
		%feature("autodoc", "1");
		gp_Pnt Value(const Standard_Real U, const Standard_Real V) const;
		%feature("autodoc", "1");
		void D0(const Standard_Real U, const Standard_Real V, gp_Pnt & P) const;
		%feature("autodoc", "1");
		void D1(const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V) const;
		%feature("autodoc", "1");
		void D2(const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V, gp_Vec & D2U, gp_Vec & D2V, gp_Vec & D2UV) const;
		%feature("autodoc", "1");
		void D3(const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V, gp_Vec & D2U, gp_Vec & D2V, gp_Vec & D2UV, gp_Vec & D3U, gp_Vec & D3V, gp_Vec & D3UUV, gp_Vec & D3UVV) const;
		%feature("autodoc", "1");
		gp_Vec DN(const Standard_Real U, const Standard_Real V, const Standard_Integer Nu, const Standard_Integer Nv) const;
		%feature("autodoc", "1");
		GeomAbs_SurfaceType GetType() const;
		%feature("autodoc", "1");
		gp_Pln Plane() const;
		%feature("autodoc", "1");
		gp_Cylinder Cylinder() const;
		%feature("autodoc", "1");
		gp_Cone Cone() const;
		%feature("autodoc", "1");
		gp_Sphere Sphere() const;
		%feature("autodoc", "1");
		gp_Torus Torus() const;
		%feature("autodoc", "1");
		Standard_Integer UDegree() const;
		%feature("autodoc", "1");
		Standard_Integer NbUPoles() const;
		%feature("autodoc", "1");
		Standard_Integer VDegree() const;
		%feature("autodoc", "1");
		Standard_Integer NbVPoles() const;
		%feature("autodoc", "1");
		Standard_Integer NbUKnots() const;
		%feature("autodoc", "1");
		Standard_Integer NbVKnots() const;
		%feature("autodoc", "1");
		gp_Ax1 Axis() const;

};
%feature("shadow") HLRBRep_Surface::~HLRBRep_Surface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRBRep_Surface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRBRep_SurfaceTool;
class HLRBRep_SurfaceTool {
	public:
		%feature("autodoc", "1");
		HLRBRep_SurfaceTool();
		%feature("autodoc", "1");
		static		Standard_Real FirstUParameter(const Standard_Address Surf);
		%feature("autodoc", "1");
		static		Standard_Real FirstVParameter(const Standard_Address Surf);
		%feature("autodoc", "1");
		static		Standard_Real LastUParameter(const Standard_Address Surf);
		%feature("autodoc", "1");
		static		Standard_Real LastVParameter(const Standard_Address Surf);
		%feature("autodoc", "1");
		static		Standard_Integer NbUIntervals(const Standard_Address Surf, const GeomAbs_Shape S);
		%feature("autodoc", "1");
		static		Standard_Integer NbVIntervals(const Standard_Address Surf, const GeomAbs_Shape S);
		%feature("autodoc", "1");
		static		void UIntervals(const Standard_Address Surf, TColStd_Array1OfReal & Tab, const GeomAbs_Shape S);
		%feature("autodoc", "1");
		static		void VIntervals(const Standard_Address Surf, TColStd_Array1OfReal & Tab, const GeomAbs_Shape S);
		%feature("autodoc", "1");
		static		Handle_Adaptor3d_HSurface UTrim(const Standard_Address Surf, const Standard_Real F, const Standard_Real L, const Standard_Real Tol);
		%feature("autodoc", "1");
		static		Handle_Adaptor3d_HSurface VTrim(const Standard_Address Surf, const Standard_Real F, const Standard_Real L, const Standard_Real Tol);
		%feature("autodoc", "1");
		static		Standard_Boolean IsUClosed(const Standard_Address S);
		%feature("autodoc", "1");
		static		Standard_Boolean IsVClosed(const Standard_Address S);
		%feature("autodoc", "1");
		static		Standard_Boolean IsUPeriodic(const Standard_Address S);
		%feature("autodoc", "1");
		static		Standard_Real UPeriod(const Standard_Address S);
		%feature("autodoc", "1");
		static		Standard_Boolean IsVPeriodic(const Standard_Address S);
		%feature("autodoc", "1");
		static		Standard_Real VPeriod(const Standard_Address S);
		%feature("autodoc", "1");
		static		gp_Pnt Value(const Standard_Address S, const Standard_Real U, const Standard_Real V);
		%feature("autodoc", "1");
		static		void D0(const Standard_Address S, const Standard_Real U, const Standard_Real V, gp_Pnt & P);
		%feature("autodoc", "1");
		static		void D1(const Standard_Address S, const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V);
		%feature("autodoc", "1");
		static		void D2(const Standard_Address S, const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V, gp_Vec & D2U, gp_Vec & D2V, gp_Vec & D2UV);
		%feature("autodoc", "1");
		static		void D3(const Standard_Address S, const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V, gp_Vec & D2U, gp_Vec & D2V, gp_Vec & D2UV, gp_Vec & D3U, gp_Vec & D3V, gp_Vec & D3UUV, gp_Vec & D3UVV);
		%feature("autodoc", "1");
		static		gp_Vec DN(const Standard_Address S, const Standard_Real U, const Standard_Real V, const Standard_Integer Nu, const Standard_Integer Nv);
		%feature("autodoc", "1");
		static		Standard_Real UResolution(const Standard_Address S, const Standard_Real R3d);
		%feature("autodoc", "1");
		static		Standard_Real VResolution(const Standard_Address S, const Standard_Real R3d);
		%feature("autodoc", "1");
		static		GeomAbs_SurfaceType GetType(const Standard_Address S);
		%feature("autodoc", "1");
		static		gp_Pln Plane(const Standard_Address S);
		%feature("autodoc", "1");
		static		gp_Cylinder Cylinder(const Standard_Address S);
		%feature("autodoc", "1");
		static		gp_Cone Cone(const Standard_Address S);
		%feature("autodoc", "1");
		static		gp_Torus Torus(const Standard_Address S);
		%feature("autodoc", "1");
		static		gp_Sphere Sphere(const Standard_Address S);
		%feature("autodoc", "1");
		static		Handle_Geom_BezierSurface Bezier(const Standard_Address S);
		%feature("autodoc", "1");
		static		Handle_Geom_BSplineSurface BSpline(const Standard_Address S);
		%feature("autodoc", "1");
		static		gp_Ax1 AxeOfRevolution(const Standard_Address S);
		%feature("autodoc", "1");
		static		gp_Dir Direction(const Standard_Address S);
		%feature("autodoc", "1");
		static		Handle_Adaptor3d_HCurve BasisCurve(const Standard_Address S);
		%feature("autodoc", "1");
		static		Handle_Adaptor3d_HSurface BasisSurface(const Standard_Address S);
		%feature("autodoc", "1");
		static		Standard_Real OffsetValue(const Standard_Address S);
		%feature("autodoc", "1");
		static		Standard_Integer NbSamplesU(const Standard_Address S);
		%feature("autodoc", "1");
		static		Standard_Integer NbSamplesV(const Standard_Address S);
		%feature("autodoc", "1");
		static		Standard_Integer NbSamplesU(const Standard_Address S, const Standard_Real u1, const Standard_Real u2);
		%feature("autodoc", "1");
		static		Standard_Integer NbSamplesV(const Standard_Address S, const Standard_Real v1, const Standard_Real v2);

};
%feature("shadow") HLRBRep_SurfaceTool::~HLRBRep_SurfaceTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRBRep_SurfaceTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRBRep_EdgeIList;
class HLRBRep_EdgeIList {
	public:
		%feature("autodoc", "1");
		HLRBRep_EdgeIList();
		%feature("autodoc", "1");
		static		void AddInterference(HLRAlgo_InterferenceList & IL, const HLRAlgo_Interference &I, const HLRBRep_EdgeInterferenceTool &T);
		%feature("autodoc", "1");
		static		void ProcessComplex(HLRAlgo_InterferenceList & IL, const HLRBRep_EdgeInterferenceTool &T);

};
%feature("shadow") HLRBRep_EdgeIList::~HLRBRep_EdgeIList %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRBRep_EdgeIList {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRBRep_EdgeBuilder;
class HLRBRep_EdgeBuilder {
	public:
		%feature("autodoc", "1");
		HLRBRep_EdgeBuilder(HLRBRep_VertexList & VList);
		%feature("autodoc", "1");
		void InitAreas();
		%feature("autodoc", "1");
		void NextArea();
		%feature("autodoc", "1");
		void PreviousArea();
		%feature("autodoc", "1");
		Standard_Boolean HasArea() const;
		%feature("autodoc", "1");
		TopAbs_State AreaState() const;
		%feature("autodoc", "1");
		TopAbs_State AreaEdgeState() const;
		%feature("autodoc", "1");
		Handle_HLRBRep_AreaLimit LeftLimit() const;
		%feature("autodoc", "1");
		Handle_HLRBRep_AreaLimit RightLimit() const;
		%feature("autodoc", "1");
		void Builds(const TopAbs_State ToBuild);
		%feature("autodoc", "1");
		Standard_Boolean MoreEdges() const;
		%feature("autodoc", "1");
		void NextEdge();
		%feature("autodoc", "1");
		Standard_Boolean MoreVertices() const;
		%feature("autodoc", "1");
		void NextVertex();
		%feature("autodoc", "1");
		const HLRAlgo_Intersection & Current() const;
		%feature("autodoc", "1");
		Standard_Boolean IsBoundary() const;
		%feature("autodoc", "1");
		Standard_Boolean IsInterference() const;
		%feature("autodoc", "1");
		TopAbs_Orientation Orientation() const;
		%feature("autodoc", "1");
		void Destroy();

};
%feature("shadow") HLRBRep_EdgeBuilder::~HLRBRep_EdgeBuilder %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRBRep_EdgeBuilder {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRBRep_Data;
class HLRBRep_Data : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		HLRBRep_Data(const Standard_Integer NV, const Standard_Integer NE, const Standard_Integer NF);
		%feature("autodoc", "1");
		void Write(const Handle_HLRBRep_Data &DS, const Standard_Integer dv, const Standard_Integer de, const Standard_Integer df);
		%feature("autodoc", "1");
		HLRBRep_Array1OfEData & EDataArray();
		%feature("autodoc", "1");
		HLRBRep_Array1OfFData & FDataArray();
		%feature("autodoc", "1");
		void Tolerance(const Standard_ShortReal tol);
		%feature("autodoc", "1");
		Standard_ShortReal Tolerance() const;
		%feature("autodoc", "1");
		void Update(const HLRAlgo_Projector &P);
		%feature("autodoc", "1");
		HLRAlgo_Projector & Projector();
		%feature("autodoc", "1");
		Standard_Integer NbVertices() const;
		%feature("autodoc", "1");
		Standard_Integer NbEdges() const;
		%feature("autodoc", "1");
		Standard_Integer NbFaces() const;
		%feature("autodoc", "1");
		TopTools_IndexedMapOfShape & EdgeMap();
		%feature("autodoc", "1");
		TopTools_IndexedMapOfShape & FaceMap();
		%feature("autodoc", "1");
		void InitBoundSort(const Standard_Address MinMaxTot, const Standard_Integer e1, const Standard_Integer e2);
		%feature("autodoc", "1");
		void InitEdge(const Standard_Integer FI, BRepTopAdaptor_MapOfShapeTool & MST);
		%feature("autodoc", "1");
		Standard_Boolean MoreEdge();
		%feature("autodoc", "1");
		void NextEdge(const Standard_Boolean skip=1);
		%feature("autodoc", "1");
		Standard_Integer Edge() const;
		%feature("autodoc", "1");
		Standard_Boolean HidingTheFace() const;
		%feature("autodoc", "1");
		Standard_Boolean SimpleHidingFace() const;
		%feature("autodoc", "1");
		void InitInterference();
		%feature("autodoc", "1");
		Standard_Boolean MoreInterference() const;
		%feature("autodoc", "1");
		void NextInterference();
		%feature("autodoc", "1");
		Standard_Boolean RejectedInterference();
		%feature("autodoc", "1");
		Standard_Boolean AboveInterference();
		%feature("autodoc", "1");
		HLRAlgo_Interference & Interference();
		%feature("autodoc","LocalLEGeometry2D(Standard_Real Param) -> Standard_Real");

		void LocalLEGeometry2D(const Standard_Real Param, gp_Dir2d & Tg, gp_Dir2d & Nm, Standard_Real &OutValue);
		%feature("autodoc","LocalFEGeometry2D(Standard_Integer FE, Standard_Real Param) -> Standard_Real");

		void LocalFEGeometry2D(const Standard_Integer FE, const Standard_Real Param, gp_Dir2d & Tg, gp_Dir2d & Nm, Standard_Real &OutValue);
		%feature("autodoc", "1");
		void EdgeState(const Standard_Real p1, const Standard_Real p2, TopAbs_State & stbef, TopAbs_State & staf);
		%feature("autodoc", "1");
		Standard_Boolean EdgeOfTheHidingFace(const Standard_Integer E, const HLRBRep_EdgeData &EData) const;
		%feature("autodoc", "1");
		Standard_Integer HidingStartLevel(const Standard_Integer E, const HLRBRep_EdgeData &EData, const HLRAlgo_InterferenceList &IL);
		%feature("autodoc", "1");
		TopAbs_State Compare(const Standard_Integer E, const HLRBRep_EdgeData &EData);
		%feature("autodoc", "1");
		TopAbs_State SimplClassify(const Standard_Integer E, const HLRBRep_EdgeData &EData, const Standard_Integer Nbp, const Standard_Real p1, const Standard_Real p2);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend HLRBRep_Data {
	Handle_HLRBRep_Data GetHandle() {
	return *(Handle_HLRBRep_Data*) &$self;
	}
};
%extend HLRBRep_Data {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") HLRBRep_Data::~HLRBRep_Data %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRBRep_Data {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRBRep_ThePolygon2dToolOfTheIntPCurvePCurveOfCInter;
class HLRBRep_ThePolygon2dToolOfTheIntPCurvePCurveOfCInter {
	public:
		%feature("autodoc", "1");
		HLRBRep_ThePolygon2dToolOfTheIntPCurvePCurveOfCInter();
		%feature("autodoc", "1");
		static		const Bnd_Box2d & Bounding(const HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter &thePolygon);
		%feature("autodoc", "1");
		static		Standard_Real DeflectionOverEstimation(const HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter &thePolygon);
		%feature("autodoc", "1");
		static		Standard_Boolean Closed(const HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter &thePolygon);
		%feature("autodoc", "1");
		static		Standard_Integer NbSegments(const HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter &thePolygon);
		%feature("autodoc", "1");
		static		const gp_Pnt2d  BeginOfSeg(const HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter &thePolygon, const Standard_Integer Index);
		%feature("autodoc", "1");
		static		const gp_Pnt2d  EndOfSeg(const HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter &thePolygon, const Standard_Integer Index);

};
%feature("shadow") HLRBRep_ThePolygon2dToolOfTheIntPCurvePCurveOfCInter::~HLRBRep_ThePolygon2dToolOfTheIntPCurvePCurveOfCInter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRBRep_ThePolygon2dToolOfTheIntPCurvePCurveOfCInter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor HLRBRep_PCLocFOfTheLocateExtPCOfTheProjPCurOfCInter;
class HLRBRep_PCLocFOfTheLocateExtPCOfTheProjPCurOfCInter : public math_FunctionWithDerivative {
	public:
		%feature("autodoc", "1");
		HLRBRep_PCLocFOfTheLocateExtPCOfTheProjPCurOfCInter();
		%feature("autodoc", "1");
		HLRBRep_PCLocFOfTheLocateExtPCOfTheProjPCurOfCInter(const gp_Pnt2d P, const Standard_Address &C);
		%feature("autodoc", "1");
		void Initialize(const Standard_Address &C);
		%feature("autodoc", "1");
		void SetPoint(const gp_Pnt2d P);
		%feature("autodoc","Value(Standard_Real U) -> Standard_Real");

		virtual		Standard_Boolean Value(const Standard_Real U, Standard_Real &OutValue);
		%feature("autodoc","Derivative(Standard_Real U) -> Standard_Real");

		virtual		Standard_Boolean Derivative(const Standard_Real U, Standard_Real &OutValue);
		%feature("autodoc","Values(Standard_Real U) -> [Standard_Real, Standard_Real]");

		virtual		Standard_Boolean Values(const Standard_Real U, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Integer GetStateNumber();
		%feature("autodoc", "1");
		Standard_Integer NbExt() const;
		%feature("autodoc", "1");
		Standard_Real SquareDistance(const Standard_Integer N) const;
		%feature("autodoc", "1");
		Standard_Boolean IsMin(const Standard_Integer N) const;
		%feature("autodoc", "1");
		Extrema_POnCurv2d Point(const Standard_Integer N) const;

};
%feature("shadow") HLRBRep_PCLocFOfTheLocateExtPCOfTheProjPCurOfCInter::~HLRBRep_PCLocFOfTheLocateExtPCOfTheProjPCurOfCInter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend HLRBRep_PCLocFOfTheLocateExtPCOfTheProjPCurOfCInter {
	void _kill_pointed() {
		delete $self;
	}
};
