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
%module BRepBlend

%include BRepBlend_renames.i
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%pythoncode {
import GarbageCollector
};

%include BRepBlend_dependencies.i


%include BRepBlend_headers.i




%nodefaultctor Handle_BRepBlend_AppFuncRoot;
class Handle_BRepBlend_AppFuncRoot : public Handle_Approx_SweepFunction {
	public:
		%feature("autodoc", "1");
		Handle_BRepBlend_AppFuncRoot();
		%feature("autodoc", "1");
		Handle_BRepBlend_AppFuncRoot(const Handle_BRepBlend_AppFuncRoot &aHandle);
		%feature("autodoc", "1");
		Handle_BRepBlend_AppFuncRoot(const BRepBlend_AppFuncRoot *anItem);
		%feature("autodoc", "1");
		Handle_BRepBlend_AppFuncRoot & operator=(const Handle_BRepBlend_AppFuncRoot &aHandle);
		%feature("autodoc", "1");
		Handle_BRepBlend_AppFuncRoot & operator=(const BRepBlend_AppFuncRoot *anItem);
		%feature("autodoc", "1");
		Handle_BRepBlend_AppFuncRoot const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepBlend_AppFuncRoot {
	BRepBlend_AppFuncRoot* GetObject() {
	return (BRepBlend_AppFuncRoot*)$self->Access();
	}
};
%feature("shadow") Handle_BRepBlend_AppFuncRoot::~Handle_BRepBlend_AppFuncRoot %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BRepBlend_AppFuncRoot {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BRepBlend_AppFuncRst;
class Handle_BRepBlend_AppFuncRst : public Handle_BRepBlend_AppFuncRoot {
	public:
		%feature("autodoc", "1");
		Handle_BRepBlend_AppFuncRst();
		%feature("autodoc", "1");
		Handle_BRepBlend_AppFuncRst(const Handle_BRepBlend_AppFuncRst &aHandle);
		%feature("autodoc", "1");
		Handle_BRepBlend_AppFuncRst(const BRepBlend_AppFuncRst *anItem);
		%feature("autodoc", "1");
		Handle_BRepBlend_AppFuncRst & operator=(const Handle_BRepBlend_AppFuncRst &aHandle);
		%feature("autodoc", "1");
		Handle_BRepBlend_AppFuncRst & operator=(const BRepBlend_AppFuncRst *anItem);
		%feature("autodoc", "1");
		Handle_BRepBlend_AppFuncRst const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepBlend_AppFuncRst {
	BRepBlend_AppFuncRst* GetObject() {
	return (BRepBlend_AppFuncRst*)$self->Access();
	}
};
%feature("shadow") Handle_BRepBlend_AppFuncRst::~Handle_BRepBlend_AppFuncRst %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BRepBlend_AppFuncRst {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BRepBlend_SequenceNodeOfSequenceOfLine;
class Handle_BRepBlend_SequenceNodeOfSequenceOfLine : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_BRepBlend_SequenceNodeOfSequenceOfLine();
		%feature("autodoc", "1");
		Handle_BRepBlend_SequenceNodeOfSequenceOfLine(const Handle_BRepBlend_SequenceNodeOfSequenceOfLine &aHandle);
		%feature("autodoc", "1");
		Handle_BRepBlend_SequenceNodeOfSequenceOfLine(const BRepBlend_SequenceNodeOfSequenceOfLine *anItem);
		%feature("autodoc", "1");
		Handle_BRepBlend_SequenceNodeOfSequenceOfLine & operator=(const Handle_BRepBlend_SequenceNodeOfSequenceOfLine &aHandle);
		%feature("autodoc", "1");
		Handle_BRepBlend_SequenceNodeOfSequenceOfLine & operator=(const BRepBlend_SequenceNodeOfSequenceOfLine *anItem);
		%feature("autodoc", "1");
		Handle_BRepBlend_SequenceNodeOfSequenceOfLine const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepBlend_SequenceNodeOfSequenceOfLine {
	BRepBlend_SequenceNodeOfSequenceOfLine* GetObject() {
	return (BRepBlend_SequenceNodeOfSequenceOfLine*)$self->Access();
	}
};
%feature("shadow") Handle_BRepBlend_SequenceNodeOfSequenceOfLine::~Handle_BRepBlend_SequenceNodeOfSequenceOfLine %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BRepBlend_SequenceNodeOfSequenceOfLine {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BRepBlend_SequenceNodeOfSequenceOfPointOnRst;
class Handle_BRepBlend_SequenceNodeOfSequenceOfPointOnRst : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_BRepBlend_SequenceNodeOfSequenceOfPointOnRst();
		%feature("autodoc", "1");
		Handle_BRepBlend_SequenceNodeOfSequenceOfPointOnRst(const Handle_BRepBlend_SequenceNodeOfSequenceOfPointOnRst &aHandle);
		%feature("autodoc", "1");
		Handle_BRepBlend_SequenceNodeOfSequenceOfPointOnRst(const BRepBlend_SequenceNodeOfSequenceOfPointOnRst *anItem);
		%feature("autodoc", "1");
		Handle_BRepBlend_SequenceNodeOfSequenceOfPointOnRst & operator=(const Handle_BRepBlend_SequenceNodeOfSequenceOfPointOnRst &aHandle);
		%feature("autodoc", "1");
		Handle_BRepBlend_SequenceNodeOfSequenceOfPointOnRst & operator=(const BRepBlend_SequenceNodeOfSequenceOfPointOnRst *anItem);
		%feature("autodoc", "1");
		Handle_BRepBlend_SequenceNodeOfSequenceOfPointOnRst const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepBlend_SequenceNodeOfSequenceOfPointOnRst {
	BRepBlend_SequenceNodeOfSequenceOfPointOnRst* GetObject() {
	return (BRepBlend_SequenceNodeOfSequenceOfPointOnRst*)$self->Access();
	}
};
%feature("shadow") Handle_BRepBlend_SequenceNodeOfSequenceOfPointOnRst::~Handle_BRepBlend_SequenceNodeOfSequenceOfPointOnRst %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BRepBlend_SequenceNodeOfSequenceOfPointOnRst {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BRepBlend_Line;
class Handle_BRepBlend_Line : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_BRepBlend_Line();
		%feature("autodoc", "1");
		Handle_BRepBlend_Line(const Handle_BRepBlend_Line &aHandle);
		%feature("autodoc", "1");
		Handle_BRepBlend_Line(const BRepBlend_Line *anItem);
		%feature("autodoc", "1");
		Handle_BRepBlend_Line & operator=(const Handle_BRepBlend_Line &aHandle);
		%feature("autodoc", "1");
		Handle_BRepBlend_Line & operator=(const BRepBlend_Line *anItem);
		%feature("autodoc", "1");
		Handle_BRepBlend_Line const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepBlend_Line {
	BRepBlend_Line* GetObject() {
	return (BRepBlend_Line*)$self->Access();
	}
};
%feature("shadow") Handle_BRepBlend_Line::~Handle_BRepBlend_Line %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BRepBlend_Line {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BRepBlend_AppFunc;
class Handle_BRepBlend_AppFunc : public Handle_BRepBlend_AppFuncRoot {
	public:
		%feature("autodoc", "1");
		Handle_BRepBlend_AppFunc();
		%feature("autodoc", "1");
		Handle_BRepBlend_AppFunc(const Handle_BRepBlend_AppFunc &aHandle);
		%feature("autodoc", "1");
		Handle_BRepBlend_AppFunc(const BRepBlend_AppFunc *anItem);
		%feature("autodoc", "1");
		Handle_BRepBlend_AppFunc & operator=(const Handle_BRepBlend_AppFunc &aHandle);
		%feature("autodoc", "1");
		Handle_BRepBlend_AppFunc & operator=(const BRepBlend_AppFunc *anItem);
		%feature("autodoc", "1");
		Handle_BRepBlend_AppFunc const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepBlend_AppFunc {
	BRepBlend_AppFunc* GetObject() {
	return (BRepBlend_AppFunc*)$self->Access();
	}
};
%feature("shadow") Handle_BRepBlend_AppFunc::~Handle_BRepBlend_AppFunc %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BRepBlend_AppFunc {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BRepBlend_AppFuncRstRst;
class Handle_BRepBlend_AppFuncRstRst : public Handle_BRepBlend_AppFuncRoot {
	public:
		%feature("autodoc", "1");
		Handle_BRepBlend_AppFuncRstRst();
		%feature("autodoc", "1");
		Handle_BRepBlend_AppFuncRstRst(const Handle_BRepBlend_AppFuncRstRst &aHandle);
		%feature("autodoc", "1");
		Handle_BRepBlend_AppFuncRstRst(const BRepBlend_AppFuncRstRst *anItem);
		%feature("autodoc", "1");
		Handle_BRepBlend_AppFuncRstRst & operator=(const Handle_BRepBlend_AppFuncRstRst &aHandle);
		%feature("autodoc", "1");
		Handle_BRepBlend_AppFuncRstRst & operator=(const BRepBlend_AppFuncRstRst *anItem);
		%feature("autodoc", "1");
		Handle_BRepBlend_AppFuncRstRst const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepBlend_AppFuncRstRst {
	BRepBlend_AppFuncRstRst* GetObject() {
	return (BRepBlend_AppFuncRstRst*)$self->Access();
	}
};
%feature("shadow") Handle_BRepBlend_AppFuncRstRst::~Handle_BRepBlend_AppFuncRstRst %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BRepBlend_AppFuncRstRst {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepBlend_ChamfInv;
class BRepBlend_ChamfInv : public Blend_FuncInv {
	public:
		%feature("autodoc", "1");
		BRepBlend_ChamfInv(const Handle_Adaptor3d_HSurface &S1, const Handle_Adaptor3d_HSurface &S2, const Handle_Adaptor3d_HCurve &C);
		%feature("autodoc", "1");
		virtual		void Set(const Standard_Boolean OnFirst, const Handle_Adaptor2d_HCurve2d &COnSurf);
		%feature("autodoc", "1");
		virtual		void GetTolerance(math_Vector & Tolerance, const Standard_Real Tol) const;
		%feature("autodoc", "1");
		virtual		void GetBounds(math_Vector & InfBound, math_Vector & SupBound) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsSolution(const math_Vector &Sol, const Standard_Real Tol);
		%feature("autodoc", "1");
		virtual		Standard_Integer NbEquations() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Value(const math_Vector &X, math_Vector & F);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Derivatives(const math_Vector &X, math_Matrix & D);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Values(const math_Vector &X, math_Vector & F, math_Matrix & D);
		%feature("autodoc", "1");
		void Set(const Standard_Real Dist1, const Standard_Real Dist2, const Standard_Integer Choix);

};
%feature("shadow") BRepBlend_ChamfInv::~BRepBlend_ChamfInv %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepBlend_ChamfInv {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepBlend_ConstRad;
class BRepBlend_ConstRad : public Blend_Function {
	public:
		%feature("autodoc", "1");
		BRepBlend_ConstRad(const Handle_Adaptor3d_HSurface &S1, const Handle_Adaptor3d_HSurface &S2, const Handle_Adaptor3d_HCurve &C);
		%feature("autodoc", "1");
		virtual		Standard_Integer NbEquations() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Value(const math_Vector &X, math_Vector & F);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Derivatives(const math_Vector &X, math_Matrix & D);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Values(const math_Vector &X, math_Vector & F, math_Matrix & D);
		%feature("autodoc", "1");
		virtual		void Set(const Standard_Real Param);
		%feature("autodoc", "1");
		virtual		void Set(const Standard_Real First, const Standard_Real Last);
		%feature("autodoc", "1");
		virtual		void GetTolerance(math_Vector & Tolerance, const Standard_Real Tol) const;
		%feature("autodoc", "1");
		virtual		void GetBounds(math_Vector & InfBound, math_Vector & SupBound) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsSolution(const math_Vector &Sol, const Standard_Real Tol);
		%feature("autodoc", "1");
		virtual		Standard_Real GetMinimalDistance() const;
		%feature("autodoc", "1");
		virtual		const gp_Pnt & PointOnS1() const;
		%feature("autodoc", "1");
		virtual		const gp_Pnt & PointOnS2() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsTangencyPoint() const;
		%feature("autodoc", "1");
		virtual		const gp_Vec & TangentOnS1() const;
		%feature("autodoc", "1");
		virtual		const gp_Vec2d & Tangent2dOnS1() const;
		%feature("autodoc", "1");
		virtual		const gp_Vec & TangentOnS2() const;
		%feature("autodoc", "1");
		virtual		const gp_Vec2d & Tangent2dOnS2() const;
		%feature("autodoc", "1");
		virtual		void Tangent(const Standard_Real U1, const Standard_Real V1, const Standard_Real U2, const Standard_Real V2, gp_Vec & TgFirst, gp_Vec & TgLast, gp_Vec & NormFirst, gp_Vec & NormLast) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean TwistOnS1() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean TwistOnS2() const;
		%feature("autodoc", "1");
		void Set(const Standard_Real Radius, const Standard_Integer Choix);
		%feature("autodoc", "1");
		void Set(const BlendFunc_SectionShape TypeSection);
		%feature("autodoc","Section(Standard_Real Param, Standard_Real U1, Standard_Real V1, Standard_Real U2, Standard_Real V2) -> [Standard_RealStandard_Real]");
		void Section(const Standard_Real Param, const Standard_Real U1, const Standard_Real V1, const Standard_Real U2, const Standard_Real V2, Standard_Real &OutValue, Standard_Real &OutValue, gp_Circ & C);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsRational() const;
		%feature("autodoc", "1");
		virtual		Standard_Real GetSectionSize() const;
		%feature("autodoc", "1");
		virtual		void GetMinimalWeight(TColStd_Array1OfReal & Weigths) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbIntervals(const GeomAbs_Shape S) const;
		%feature("autodoc", "1");
		virtual		void Intervals(TColStd_Array1OfReal & T, const GeomAbs_Shape S) const;
		%feature("autodoc","GetShape() -> [Standard_Integer, Standard_Integer, Standard_Integer, Standard_Integer]");
		virtual		void GetShape(Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue);
		%feature("autodoc", "1");
		virtual		void GetTolerance(const Standard_Real BoundTol, const Standard_Real SurfTol, const Standard_Real AngleTol, math_Vector & Tol3d, math_Vector & Tol1D) const;
		%feature("autodoc", "1");
		virtual		void Knots(TColStd_Array1OfReal & TKnots);
		%feature("autodoc", "1");
		virtual		void Mults(TColStd_Array1OfInteger & TMults);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Section(const Blend_Point &P, TColgp_Array1OfPnt & Poles, TColgp_Array1OfVec & DPoles, TColgp_Array1OfVec & D2Poles, TColgp_Array1OfPnt2d & Poles2d, TColgp_Array1OfVec2d & DPoles2d, TColgp_Array1OfVec2d & D2Poles2d, TColStd_Array1OfReal & Weigths, TColStd_Array1OfReal & DWeigths, TColStd_Array1OfReal & D2Weigths);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Section(const Blend_Point &P, TColgp_Array1OfPnt & Poles, TColgp_Array1OfVec & DPoles, TColgp_Array1OfPnt2d & Poles2d, TColgp_Array1OfVec2d & DPoles2d, TColStd_Array1OfReal & Weigths, TColStd_Array1OfReal & DWeigths);
		%feature("autodoc", "1");
		virtual		void Section(const Blend_Point &P, TColgp_Array1OfPnt & Poles, TColgp_Array1OfPnt2d & Poles2d, TColStd_Array1OfReal & Weigths);
		%feature("autodoc", "1");
		gp_Ax1 AxeRot(const Standard_Real Prm);
		%feature("autodoc","Resolution(Standard_Integer IC2d, Standard_Real Tol) -> [Standard_RealStandard_Real]");
		virtual		void Resolution(const Standard_Integer IC2d, const Standard_Real Tol, Standard_Real &OutValue, Standard_Real &OutValue) const;

};
%feature("shadow") BRepBlend_ConstRad::~BRepBlend_ConstRad %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepBlend_ConstRad {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepBlend_AppFuncRoot;
class BRepBlend_AppFuncRoot : public Approx_SweepFunction {
	public:
		%feature("autodoc", "1");
		virtual		Standard_Boolean D0(const Standard_Real Param, const Standard_Real First, const Standard_Real Last, TColgp_Array1OfPnt & Poles, TColgp_Array1OfPnt2d & Poles2d, TColStd_Array1OfReal & Weigths);
		%feature("autodoc", "1");
		virtual		Standard_Boolean D1(const Standard_Real Param, const Standard_Real First, const Standard_Real Last, TColgp_Array1OfPnt & Poles, TColgp_Array1OfVec & DPoles, TColgp_Array1OfPnt2d & Poles2d, TColgp_Array1OfVec2d & DPoles2d, TColStd_Array1OfReal & Weigths, TColStd_Array1OfReal & DWeigths);
		%feature("autodoc", "1");
		virtual		Standard_Boolean D2(const Standard_Real Param, const Standard_Real First, const Standard_Real Last, TColgp_Array1OfPnt & Poles, TColgp_Array1OfVec & DPoles, TColgp_Array1OfVec & D2Poles, TColgp_Array1OfPnt2d & Poles2d, TColgp_Array1OfVec2d & DPoles2d, TColgp_Array1OfVec2d & D2Poles2d, TColStd_Array1OfReal & Weigths, TColStd_Array1OfReal & DWeigths, TColStd_Array1OfReal & D2Weigths);
		%feature("autodoc", "1");
		virtual		Standard_Integer Nb2dCurves() const;
		%feature("autodoc","SectionShape() -> [Standard_Integer, Standard_Integer, Standard_Integer]");
		virtual		void SectionShape(Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		virtual		void Knots(TColStd_Array1OfReal & TKnots) const;
		%feature("autodoc", "1");
		virtual		void Mults(TColStd_Array1OfInteger & TMults) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsRational() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbIntervals(const GeomAbs_Shape S) const;
		%feature("autodoc", "1");
		virtual		void Intervals(TColStd_Array1OfReal & T, const GeomAbs_Shape S) const;
		%feature("autodoc", "1");
		virtual		void SetInterval(const Standard_Real First, const Standard_Real Last);
		%feature("autodoc","Resolution(Standard_Integer Index, Standard_Real Tol) -> [Standard_RealStandard_Real]");
		virtual		void Resolution(const Standard_Integer Index, const Standard_Real Tol, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		virtual		void GetTolerance(const Standard_Real BoundTol, const Standard_Real SurfTol, const Standard_Real AngleTol, TColStd_Array1OfReal & Tol3d) const;
		%feature("autodoc", "1");
		virtual		void SetTolerance(const Standard_Real Tol3d, const Standard_Real Tol2d);
		%feature("autodoc", "1");
		virtual		gp_Pnt BarycentreOfSurf() const;
		%feature("autodoc", "1");
		virtual		Standard_Real MaximalSection() const;
		%feature("autodoc", "1");
		virtual		void GetMinimalWeight(TColStd_Array1OfReal & Weigths) const;
		%feature("autodoc", "1");
		virtual		void Point(const Blend_AppFunction &Func, const Standard_Real Param, const math_Vector &Sol, Blend_Point & Pnt) const;
		%feature("autodoc", "1");
		virtual		void Vec(math_Vector & Sol, const Blend_Point &Pnt) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepBlend_AppFuncRoot {
	Handle_BRepBlend_AppFuncRoot GetHandle() {
	return *(Handle_BRepBlend_AppFuncRoot*) &$self;
	}
};
%extend BRepBlend_AppFuncRoot {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BRepBlend_AppFuncRoot::~BRepBlend_AppFuncRoot %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepBlend_AppFuncRoot {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepBlend_AppFuncRst;
class BRepBlend_AppFuncRst : public BRepBlend_AppFuncRoot {
	public:
		%feature("autodoc", "1");
		BRepBlend_AppFuncRst(Handle_BRepBlend_Line & Line, Blend_SurfRstFunction & Func, const Standard_Real Tol3d, const Standard_Real Tol2d);

};
%extend BRepBlend_AppFuncRst {
	Handle_BRepBlend_AppFuncRst GetHandle() {
	return *(Handle_BRepBlend_AppFuncRst*) &$self;
	}
};
%extend BRepBlend_AppFuncRst {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BRepBlend_AppFuncRst::~BRepBlend_AppFuncRst %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepBlend_AppFuncRst {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepBlend_SequenceNodeOfSequenceOfPointOnRst;
class BRepBlend_SequenceNodeOfSequenceOfPointOnRst : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		BRepBlend_SequenceNodeOfSequenceOfPointOnRst(const BRepBlend_PointOnRst &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		BRepBlend_PointOnRst & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepBlend_SequenceNodeOfSequenceOfPointOnRst {
	Handle_BRepBlend_SequenceNodeOfSequenceOfPointOnRst GetHandle() {
	return *(Handle_BRepBlend_SequenceNodeOfSequenceOfPointOnRst*) &$self;
	}
};
%extend BRepBlend_SequenceNodeOfSequenceOfPointOnRst {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BRepBlend_SequenceNodeOfSequenceOfPointOnRst::~BRepBlend_SequenceNodeOfSequenceOfPointOnRst %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepBlend_SequenceNodeOfSequenceOfPointOnRst {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepBlend_SurfRstConstRad;
class BRepBlend_SurfRstConstRad : public Blend_SurfRstFunction {
	public:
		%feature("autodoc", "1");
		BRepBlend_SurfRstConstRad(const Handle_Adaptor3d_HSurface &Surf, const Handle_Adaptor3d_HSurface &SurfRst, const Handle_Adaptor2d_HCurve2d &Rst, const Handle_Adaptor3d_HCurve &CGuide);
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
		void Set(const Handle_Adaptor3d_HSurface &SurfRef, const Handle_Adaptor2d_HCurve2d &RstRef);
		%feature("autodoc", "1");
		virtual		void Set(const Standard_Real Param);
		%feature("autodoc", "1");
		virtual		void Set(const Standard_Real First, const Standard_Real Last);
		%feature("autodoc", "1");
		virtual		void GetTolerance(math_Vector & Tolerance, const Standard_Real Tol) const;
		%feature("autodoc", "1");
		virtual		void GetBounds(math_Vector & InfBound, math_Vector & SupBound) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsSolution(const math_Vector &Sol, const Standard_Real Tol);
		%feature("autodoc", "1");
		virtual		Standard_Real GetMinimalDistance() const;
		%feature("autodoc", "1");
		virtual		const gp_Pnt & PointOnS() const;
		%feature("autodoc", "1");
		virtual		const gp_Pnt & PointOnRst() const;
		%feature("autodoc", "1");
		virtual		const gp_Pnt2d & Pnt2dOnS() const;
		%feature("autodoc", "1");
		virtual		const gp_Pnt2d & Pnt2dOnRst() const;
		%feature("autodoc", "1");
		virtual		Standard_Real ParameterOnRst() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsTangencyPoint() const;
		%feature("autodoc", "1");
		virtual		const gp_Vec & TangentOnS() const;
		%feature("autodoc", "1");
		virtual		const gp_Vec2d & Tangent2dOnS() const;
		%feature("autodoc", "1");
		virtual		const gp_Vec & TangentOnRst() const;
		%feature("autodoc", "1");
		virtual		const gp_Vec2d & Tangent2dOnRst() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Decroch(const math_Vector &Sol, gp_Vec & NS, gp_Vec & TgS) const;
		%feature("autodoc", "1");
		void Set(const Standard_Real Radius, const Standard_Integer Choix);
		%feature("autodoc", "1");
		void Set(const BlendFunc_SectionShape TypeSection);
		%feature("autodoc","Section(Standard_Real Param, Standard_Real U, Standard_Real V, Standard_Real W) -> [Standard_RealStandard_Real]");
		void Section(const Standard_Real Param, const Standard_Real U, const Standard_Real V, const Standard_Real W, Standard_Real &OutValue, Standard_Real &OutValue, gp_Circ & C);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsRational() const;
		%feature("autodoc", "1");
		virtual		Standard_Real GetSectionSize() const;
		%feature("autodoc", "1");
		virtual		void GetMinimalWeight(TColStd_Array1OfReal & Weigths) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbIntervals(const GeomAbs_Shape S) const;
		%feature("autodoc", "1");
		virtual		void Intervals(TColStd_Array1OfReal & T, const GeomAbs_Shape S) const;
		%feature("autodoc","GetShape() -> [Standard_Integer, Standard_Integer, Standard_Integer, Standard_Integer]");
		virtual		void GetShape(Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue);
		%feature("autodoc", "1");
		virtual		void GetTolerance(const Standard_Real BoundTol, const Standard_Real SurfTol, const Standard_Real AngleTol, math_Vector & Tol3d, math_Vector & Tol1D) const;
		%feature("autodoc", "1");
		virtual		void Knots(TColStd_Array1OfReal & TKnots);
		%feature("autodoc", "1");
		virtual		void Mults(TColStd_Array1OfInteger & TMults);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Section(const Blend_Point &P, TColgp_Array1OfPnt & Poles, TColgp_Array1OfVec & DPoles, TColgp_Array1OfPnt2d & Poles2d, TColgp_Array1OfVec2d & DPoles2d, TColStd_Array1OfReal & Weigths, TColStd_Array1OfReal & DWeigths);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Section(const Blend_Point &P, TColgp_Array1OfPnt & Poles, TColgp_Array1OfVec & DPoles, TColgp_Array1OfVec & D2Poles, TColgp_Array1OfPnt2d & Poles2d, TColgp_Array1OfVec2d & DPoles2d, TColgp_Array1OfVec2d & D2Poles2d, TColStd_Array1OfReal & Weigths, TColStd_Array1OfReal & DWeigths, TColStd_Array1OfReal & D2Weigths);
		%feature("autodoc", "1");
		virtual		void Section(const Blend_Point &P, TColgp_Array1OfPnt & Poles, TColgp_Array1OfPnt2d & Poles2d, TColStd_Array1OfReal & Weigths);
		%feature("autodoc","Resolution(Standard_Integer IC2d, Standard_Real Tol) -> [Standard_RealStandard_Real]");
		virtual		void Resolution(const Standard_Integer IC2d, const Standard_Real Tol, Standard_Real &OutValue, Standard_Real &OutValue) const;

};
%feature("shadow") BRepBlend_SurfRstConstRad::~BRepBlend_SurfRstConstRad %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepBlend_SurfRstConstRad {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepBlend_CSCircular;
class BRepBlend_CSCircular : public Blend_CSFunction {
	public:
		%feature("autodoc", "1");
		BRepBlend_CSCircular(const Handle_Adaptor3d_HSurface &S, const Handle_Adaptor3d_HCurve &C, const Handle_Adaptor3d_HCurve &CGuide, const Handle_Law_Function &L);
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
		virtual		void Set(const Standard_Real Param);
		%feature("autodoc", "1");
		virtual		void Set(const Standard_Real First, const Standard_Real Last);
		%feature("autodoc", "1");
		virtual		void GetTolerance(math_Vector & Tolerance, const Standard_Real Tol) const;
		%feature("autodoc", "1");
		virtual		void GetBounds(math_Vector & InfBound, math_Vector & SupBound) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsSolution(const math_Vector &Sol, const Standard_Real Tol);
		%feature("autodoc", "1");
		virtual		const gp_Pnt & PointOnS() const;
		%feature("autodoc", "1");
		virtual		const gp_Pnt & PointOnC() const;
		%feature("autodoc", "1");
		virtual		const gp_Pnt2d & Pnt2d() const;
		%feature("autodoc", "1");
		virtual		Standard_Real ParameterOnC() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsTangencyPoint() const;
		%feature("autodoc", "1");
		virtual		const gp_Vec & TangentOnS() const;
		%feature("autodoc", "1");
		virtual		const gp_Vec2d & Tangent2d() const;
		%feature("autodoc", "1");
		virtual		const gp_Vec & TangentOnC() const;
		%feature("autodoc", "1");
		virtual		void Tangent(const Standard_Real U, const Standard_Real V, gp_Vec & TgS, gp_Vec & NormS) const;
		%feature("autodoc", "1");
		void Set(const Standard_Real Radius, const Standard_Integer Choix);
		%feature("autodoc", "1");
		void Set(const BlendFunc_SectionShape TypeSection);
		%feature("autodoc","Section(Standard_Real Param, Standard_Real U, Standard_Real V, Standard_Real W) -> [Standard_RealStandard_Real]");
		void Section(const Standard_Real Param, const Standard_Real U, const Standard_Real V, const Standard_Real W, Standard_Real &OutValue, Standard_Real &OutValue, gp_Circ & C);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Section(const Blend_Point &P, TColgp_Array1OfPnt & Poles, TColgp_Array1OfVec & DPoles, TColgp_Array1OfVec & D2Poles, TColgp_Array1OfPnt2d & Poles2d, TColgp_Array1OfVec2d & DPoles2d, TColgp_Array1OfVec2d & D2Poles2d, TColStd_Array1OfReal & Weigths, TColStd_Array1OfReal & DWeigths, TColStd_Array1OfReal & D2Weigths);
		%feature("autodoc", "1");
		Standard_Boolean GetSection(const Standard_Real Param, const Standard_Real U, const Standard_Real V, const Standard_Real W, TColgp_Array1OfPnt & tabP, TColgp_Array1OfVec & tabV);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsRational() const;
		%feature("autodoc", "1");
		virtual		Standard_Real GetSectionSize() const;
		%feature("autodoc", "1");
		virtual		void GetMinimalWeight(TColStd_Array1OfReal & Weigths) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbIntervals(const GeomAbs_Shape S) const;
		%feature("autodoc", "1");
		virtual		void Intervals(TColStd_Array1OfReal & T, const GeomAbs_Shape S) const;
		%feature("autodoc","GetShape() -> [Standard_Integer, Standard_Integer, Standard_Integer, Standard_Integer]");
		virtual		void GetShape(Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue);
		%feature("autodoc", "1");
		virtual		void GetTolerance(const Standard_Real BoundTol, const Standard_Real SurfTol, const Standard_Real AngleTol, math_Vector & Tol3d, math_Vector & Tol1D) const;
		%feature("autodoc", "1");
		virtual		void Knots(TColStd_Array1OfReal & TKnots);
		%feature("autodoc", "1");
		virtual		void Mults(TColStd_Array1OfInteger & TMults);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Section(const Blend_Point &P, TColgp_Array1OfPnt & Poles, TColgp_Array1OfVec & DPoles, TColgp_Array1OfPnt2d & Poles2d, TColgp_Array1OfVec2d & DPoles2d, TColStd_Array1OfReal & Weigths, TColStd_Array1OfReal & DWeigths);
		%feature("autodoc", "1");
		virtual		void Section(const Blend_Point &P, TColgp_Array1OfPnt & Poles, TColgp_Array1OfPnt2d & Poles2d, TColStd_Array1OfReal & Weigths);
		%feature("autodoc","Resolution(Standard_Integer IC2d, Standard_Real Tol) -> [Standard_RealStandard_Real]");
		virtual		void Resolution(const Standard_Integer IC2d, const Standard_Real Tol, Standard_Real &OutValue, Standard_Real &OutValue) const;

};
%feature("shadow") BRepBlend_CSCircular::~BRepBlend_CSCircular %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepBlend_CSCircular {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepBlend_RstRstEvolRad;
class BRepBlend_RstRstEvolRad : public Blend_RstRstFunction {
	public:
		%feature("autodoc", "1");
		BRepBlend_RstRstEvolRad(const Handle_Adaptor3d_HSurface &Surf1, const Handle_Adaptor2d_HCurve2d &Rst1, const Handle_Adaptor3d_HSurface &Surf2, const Handle_Adaptor2d_HCurve2d &Rst2, const Handle_Adaptor3d_HCurve &CGuide, const Handle_Law_Function &Evol);
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
		void Set(const Handle_Adaptor3d_HSurface &SurfRef1, const Handle_Adaptor2d_HCurve2d &RstRef1, const Handle_Adaptor3d_HSurface &SurfRef2, const Handle_Adaptor2d_HCurve2d &RstRef2);
		%feature("autodoc", "1");
		virtual		void Set(const Standard_Real Param);
		%feature("autodoc", "1");
		virtual		void Set(const Standard_Real First, const Standard_Real Last);
		%feature("autodoc", "1");
		virtual		void GetTolerance(math_Vector & Tolerance, const Standard_Real Tol) const;
		%feature("autodoc", "1");
		virtual		void GetBounds(math_Vector & InfBound, math_Vector & SupBound) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsSolution(const math_Vector &Sol, const Standard_Real Tol);
		%feature("autodoc", "1");
		virtual		Standard_Real GetMinimalDistance() const;
		%feature("autodoc", "1");
		virtual		const gp_Pnt & PointOnRst1() const;
		%feature("autodoc", "1");
		virtual		const gp_Pnt & PointOnRst2() const;
		%feature("autodoc", "1");
		virtual		const gp_Pnt2d & Pnt2dOnRst1() const;
		%feature("autodoc", "1");
		virtual		const gp_Pnt2d & Pnt2dOnRst2() const;
		%feature("autodoc", "1");
		virtual		Standard_Real ParameterOnRst1() const;
		%feature("autodoc", "1");
		virtual		Standard_Real ParameterOnRst2() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsTangencyPoint() const;
		%feature("autodoc", "1");
		virtual		const gp_Vec & TangentOnRst1() const;
		%feature("autodoc", "1");
		virtual		const gp_Vec2d & Tangent2dOnRst1() const;
		%feature("autodoc", "1");
		virtual		const gp_Vec & TangentOnRst2() const;
		%feature("autodoc", "1");
		virtual		const gp_Vec2d & Tangent2dOnRst2() const;
		%feature("autodoc", "1");
		virtual		Blend_DecrochStatus Decroch(const math_Vector &Sol, gp_Vec & NRst1, gp_Vec & TgRst1, gp_Vec & NRst2, gp_Vec & TgRst2) const;
		%feature("autodoc", "1");
		void Set(const Standard_Integer Choix);
		%feature("autodoc", "1");
		void Set(const BlendFunc_SectionShape TypeSection);
		%feature("autodoc", "1");
		Standard_Boolean CenterCircleRst1Rst2(const gp_Pnt &PtRst1, const gp_Pnt &PtRst2, const gp_Vec &np, gp_Pnt & Center, gp_Vec & VdMed) const;
		%feature("autodoc","Section(Standard_Real Param, Standard_Real U, Standard_Real V) -> [Standard_RealStandard_Real]");
		void Section(const Standard_Real Param, const Standard_Real U, const Standard_Real V, Standard_Real &OutValue, Standard_Real &OutValue, gp_Circ & C);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsRational() const;
		%feature("autodoc", "1");
		virtual		Standard_Real GetSectionSize() const;
		%feature("autodoc", "1");
		virtual		void GetMinimalWeight(TColStd_Array1OfReal & Weigths) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbIntervals(const GeomAbs_Shape S) const;
		%feature("autodoc", "1");
		virtual		void Intervals(TColStd_Array1OfReal & T, const GeomAbs_Shape S) const;
		%feature("autodoc","GetShape() -> [Standard_Integer, Standard_Integer, Standard_Integer, Standard_Integer]");
		virtual		void GetShape(Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue);
		%feature("autodoc", "1");
		virtual		void GetTolerance(const Standard_Real BoundTol, const Standard_Real SurfTol, const Standard_Real AngleTol, math_Vector & Tol3d, math_Vector & Tol1D) const;
		%feature("autodoc", "1");
		virtual		void Knots(TColStd_Array1OfReal & TKnots);
		%feature("autodoc", "1");
		virtual		void Mults(TColStd_Array1OfInteger & TMults);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Section(const Blend_Point &P, TColgp_Array1OfPnt & Poles, TColgp_Array1OfVec & DPoles, TColgp_Array1OfPnt2d & Poles2d, TColgp_Array1OfVec2d & DPoles2d, TColStd_Array1OfReal & Weigths, TColStd_Array1OfReal & DWeigths);
		%feature("autodoc", "1");
		virtual		void Section(const Blend_Point &P, TColgp_Array1OfPnt & Poles, TColgp_Array1OfPnt2d & Poles2d, TColStd_Array1OfReal & Weigths);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Section(const Blend_Point &P, TColgp_Array1OfPnt & Poles, TColgp_Array1OfVec & DPoles, TColgp_Array1OfVec & D2Poles, TColgp_Array1OfPnt2d & Poles2d, TColgp_Array1OfVec2d & DPoles2d, TColgp_Array1OfVec2d & D2Poles2d, TColStd_Array1OfReal & Weigths, TColStd_Array1OfReal & DWeigths, TColStd_Array1OfReal & D2Weigths);
		%feature("autodoc","Resolution(Standard_Integer IC2d, Standard_Real Tol) -> [Standard_RealStandard_Real]");
		virtual		void Resolution(const Standard_Integer IC2d, const Standard_Real Tol, Standard_Real &OutValue, Standard_Real &OutValue) const;

};
%feature("shadow") BRepBlend_RstRstEvolRad::~BRepBlend_RstRstEvolRad %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepBlend_RstRstEvolRad {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepBlend_EvolRadInv;
class BRepBlend_EvolRadInv : public Blend_FuncInv {
	public:
		%feature("autodoc", "1");
		BRepBlend_EvolRadInv(const Handle_Adaptor3d_HSurface &S1, const Handle_Adaptor3d_HSurface &S2, const Handle_Adaptor3d_HCurve &C, const Handle_Law_Function &Law);
		%feature("autodoc", "1");
		virtual		void Set(const Standard_Boolean OnFirst, const Handle_Adaptor2d_HCurve2d &COnSurf);
		%feature("autodoc", "1");
		virtual		void GetTolerance(math_Vector & Tolerance, const Standard_Real Tol) const;
		%feature("autodoc", "1");
		virtual		void GetBounds(math_Vector & InfBound, math_Vector & SupBound) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsSolution(const math_Vector &Sol, const Standard_Real Tol);
		%feature("autodoc", "1");
		virtual		Standard_Integer NbEquations() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Value(const math_Vector &X, math_Vector & F);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Derivatives(const math_Vector &X, math_Matrix & D);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Values(const math_Vector &X, math_Vector & F, math_Matrix & D);
		%feature("autodoc", "1");
		void Set(const Standard_Integer Choix);

};
%feature("shadow") BRepBlend_EvolRadInv::~BRepBlend_EvolRadInv %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepBlend_EvolRadInv {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepBlend_ChAsym;
class BRepBlend_ChAsym : public Blend_Function {
	public:
		%feature("autodoc", "1");
		BRepBlend_ChAsym(const Handle_Adaptor3d_HSurface &S1, const Handle_Adaptor3d_HSurface &S2, const Handle_Adaptor3d_HCurve &C);
		%feature("autodoc", "1");
		virtual		Standard_Integer NbEquations() const;
		%feature("autodoc", "1");
		virtual		void Set(const Standard_Real Param);
		%feature("autodoc", "1");
		virtual		void Set(const Standard_Real First, const Standard_Real Last);
		%feature("autodoc", "1");
		virtual		void GetTolerance(math_Vector & Tolerance, const Standard_Real Tol) const;
		%feature("autodoc", "1");
		virtual		void GetBounds(math_Vector & InfBound, math_Vector & SupBound) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsSolution(const math_Vector &Sol, const Standard_Real Tol);
		%feature("autodoc", "1");
		virtual		Standard_Real GetMinimalDistance() const;
		%feature("autodoc", "1");
		Standard_Boolean ComputeValues(const math_Vector &X, const Standard_Integer DegF, const Standard_Integer DegL);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Value(const math_Vector &X, math_Vector & F);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Derivatives(const math_Vector &X, math_Matrix & D);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Values(const math_Vector &X, math_Vector & F, math_Matrix & D);
		%feature("autodoc", "1");
		virtual		const gp_Pnt & PointOnS1() const;
		%feature("autodoc", "1");
		virtual		const gp_Pnt & PointOnS2() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsTangencyPoint() const;
		%feature("autodoc", "1");
		virtual		const gp_Vec & TangentOnS1() const;
		%feature("autodoc", "1");
		virtual		const gp_Vec2d & Tangent2dOnS1() const;
		%feature("autodoc", "1");
		virtual		const gp_Vec & TangentOnS2() const;
		%feature("autodoc", "1");
		virtual		const gp_Vec2d & Tangent2dOnS2() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean TwistOnS1() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean TwistOnS2() const;
		%feature("autodoc", "1");
		virtual		void Tangent(const Standard_Real U1, const Standard_Real V1, const Standard_Real U2, const Standard_Real V2, gp_Vec & TgFirst, gp_Vec & TgLast, gp_Vec & NormFirst, gp_Vec & NormLast) const;
		%feature("autodoc","Section(Standard_Real Param, Standard_Real U1, Standard_Real V1, Standard_Real U2, Standard_Real V2) -> [Standard_RealStandard_Real]");
		void Section(const Standard_Real Param, const Standard_Real U1, const Standard_Real V1, const Standard_Real U2, const Standard_Real V2, Standard_Real &OutValue, Standard_Real &OutValue, gp_Lin & C);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsRational() const;
		%feature("autodoc", "1");
		virtual		Standard_Real GetSectionSize() const;
		%feature("autodoc", "1");
		virtual		void GetMinimalWeight(TColStd_Array1OfReal & Weigths) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbIntervals(const GeomAbs_Shape S) const;
		%feature("autodoc", "1");
		virtual		void Intervals(TColStd_Array1OfReal & T, const GeomAbs_Shape S) const;
		%feature("autodoc","GetShape() -> [Standard_Integer, Standard_Integer, Standard_Integer, Standard_Integer]");
		virtual		void GetShape(Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue);
		%feature("autodoc", "1");
		virtual		void GetTolerance(const Standard_Real BoundTol, const Standard_Real SurfTol, const Standard_Real AngleTol, math_Vector & Tol3d, math_Vector & Tol1D) const;
		%feature("autodoc", "1");
		virtual		void Knots(TColStd_Array1OfReal & TKnots);
		%feature("autodoc", "1");
		virtual		void Mults(TColStd_Array1OfInteger & TMults);
		%feature("autodoc", "1");
		virtual		void Section(const Blend_Point &P, TColgp_Array1OfPnt & Poles, TColgp_Array1OfPnt2d & Poles2d, TColStd_Array1OfReal & Weigths);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Section(const Blend_Point &P, TColgp_Array1OfPnt & Poles, TColgp_Array1OfVec & DPoles, TColgp_Array1OfPnt2d & Poles2d, TColgp_Array1OfVec2d & DPoles2d, TColStd_Array1OfReal & Weigths, TColStd_Array1OfReal & DWeigths);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Section(const Blend_Point &P, TColgp_Array1OfPnt & Poles, TColgp_Array1OfVec & DPoles, TColgp_Array1OfVec & D2Poles, TColgp_Array1OfPnt2d & Poles2d, TColgp_Array1OfVec2d & DPoles2d, TColgp_Array1OfVec2d & D2Poles2d, TColStd_Array1OfReal & Weigths, TColStd_Array1OfReal & DWeigths, TColStd_Array1OfReal & D2Weigths);
		%feature("autodoc","Resolution(Standard_Integer IC2d, Standard_Real Tol) -> [Standard_RealStandard_Real]");
		virtual		void Resolution(const Standard_Integer IC2d, const Standard_Real Tol, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		void Set(const Standard_Real Dist1, const Standard_Real Angle, const Standard_Integer Choix);

};
%feature("shadow") BRepBlend_ChAsym::~BRepBlend_ChAsym %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepBlend_ChAsym {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepBlend_AppSurface;
class BRepBlend_AppSurface : public AppBlend_Approx {
	public:
		%feature("autodoc", "1");
		BRepBlend_AppSurface(Handle_Approx_SweepFunction & Funct, const Standard_Real First, const Standard_Real Last, const Standard_Real Tol3d, const Standard_Real Tol2d, const Standard_Real TolAngular, const GeomAbs_Shape Continuity=GeomAbs_C0, const Standard_Integer Degmax=11, const Standard_Integer Segmax=50);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsDone() const;
		%feature("autodoc","SurfShape() -> [Standard_Integer, Standard_Integer, Standard_Integer, Standard_Integer, Standard_Integer, Standard_Integer]");
		virtual		void SurfShape(Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		virtual		void Surface(TColgp_Array2OfPnt & TPoles, TColStd_Array2OfReal & TWeights, TColStd_Array1OfReal & TUKnots, TColStd_Array1OfReal & TVKnots, TColStd_Array1OfInteger & TUMults, TColStd_Array1OfInteger & TVMults) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer UDegree() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer VDegree() const;
		%feature("autodoc", "1");
		virtual		const TColgp_Array2OfPnt & SurfPoles() const;
		%feature("autodoc", "1");
		virtual		const TColStd_Array2OfReal & SurfWeights() const;
		%feature("autodoc", "1");
		virtual		const TColStd_Array1OfReal & SurfUKnots() const;
		%feature("autodoc", "1");
		virtual		const TColStd_Array1OfReal & SurfVKnots() const;
		%feature("autodoc", "1");
		virtual		const TColStd_Array1OfInteger & SurfUMults() const;
		%feature("autodoc", "1");
		virtual		const TColStd_Array1OfInteger & SurfVMults() const;
		%feature("autodoc", "1");
		Standard_Real MaxErrorOnSurf() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbCurves2d() const;
		%feature("autodoc","Curves2dShape() -> [Standard_Integer, Standard_Integer, Standard_Integer]");
		virtual		void Curves2dShape(Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		virtual		void Curve2d(const Standard_Integer Index, TColgp_Array1OfPnt2d & TPoles, TColStd_Array1OfReal & TKnots, TColStd_Array1OfInteger & TMults) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer Curves2dDegree() const;
		%feature("autodoc", "1");
		virtual		const TColgp_Array1OfPnt2d & Curve2dPoles(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		virtual		const TColStd_Array1OfReal & Curves2dKnots() const;
		%feature("autodoc", "1");
		virtual		const TColStd_Array1OfInteger & Curves2dMults() const;
		%feature("autodoc","TolReached() -> [Standard_Real, Standard_Real]");
		virtual		void TolReached(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Real Max2dError(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		virtual		Standard_Real TolCurveOnSurf(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};

};
%feature("shadow") BRepBlend_AppSurface::~BRepBlend_AppSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepBlend_AppSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepBlend_Extremity;
class BRepBlend_Extremity {
	public:
		%feature("autodoc", "1");
		BRepBlend_Extremity();
		%feature("autodoc", "1");
		BRepBlend_Extremity(const gp_Pnt &P, const Standard_Real U, const Standard_Real V, const Standard_Real Param, const Standard_Real Tol);
		%feature("autodoc", "1");
		BRepBlend_Extremity(const gp_Pnt &P, const Standard_Real U, const Standard_Real V, const Standard_Real Param, const Standard_Real Tol, const Handle_Adaptor3d_HVertex &Vtx);
		%feature("autodoc", "1");
		BRepBlend_Extremity(const gp_Pnt &P, const Standard_Real W, const Standard_Real Param, const Standard_Real Tol);
		%feature("autodoc", "1");
		void SetValue(const gp_Pnt &P, const Standard_Real U, const Standard_Real V, const Standard_Real Param, const Standard_Real Tol);
		%feature("autodoc", "1");
		void SetValue(const gp_Pnt &P, const Standard_Real U, const Standard_Real V, const Standard_Real Param, const Standard_Real Tol, const Handle_Adaptor3d_HVertex &Vtx);
		%feature("autodoc", "1");
		void SetValue(const gp_Pnt &P, const Standard_Real W, const Standard_Real Param, const Standard_Real Tol);
		%feature("autodoc", "1");
		const gp_Pnt & Value() const;
		%feature("autodoc", "1");
		void SetTangent(const gp_Vec &Tangent);
		%feature("autodoc", "1");
		Standard_Boolean HasTangent() const;
		%feature("autodoc", "1");
		const gp_Vec & Tangent() const;
		%feature("autodoc", "1");
		Standard_Real Tolerance() const;
		%feature("autodoc", "1");
		void SetVertex(const Handle_Adaptor3d_HVertex &V);
		%feature("autodoc", "1");
		void AddArc(const Handle_Adaptor2d_HCurve2d &A, const Standard_Real Param, const IntSurf_Transition &TLine, const IntSurf_Transition &TArc);
		%feature("autodoc","Parameters() -> [Standard_Real, Standard_Real]");
		void Parameters(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Boolean IsVertex() const;
		%feature("autodoc", "1");
		const Handle_Adaptor3d_HVertex & Vertex() const;
		%feature("autodoc", "1");
		Standard_Integer NbPointOnRst() const;
		%feature("autodoc", "1");
		const BRepBlend_PointOnRst & PointOnRst(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Real Parameter() const;
		%feature("autodoc", "1");
		Standard_Real ParameterOnGuide() const;

};
%feature("shadow") BRepBlend_Extremity::~BRepBlend_Extremity %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepBlend_Extremity {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepBlend_Chamfer;
class BRepBlend_Chamfer : public Blend_Function {
	public:
		%feature("autodoc", "1");
		BRepBlend_Chamfer(const Handle_Adaptor3d_HSurface &S1, const Handle_Adaptor3d_HSurface &S2, const Handle_Adaptor3d_HCurve &CG);
		%feature("autodoc", "1");
		virtual		Standard_Integer NbEquations() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Value(const math_Vector &X, math_Vector & F);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Derivatives(const math_Vector &X, math_Matrix & D);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Values(const math_Vector &X, math_Vector & F, math_Matrix & D);
		%feature("autodoc", "1");
		virtual		void Set(const Standard_Real Param);
		%feature("autodoc", "1");
		virtual		void Set(const Standard_Real First, const Standard_Real Last);
		%feature("autodoc", "1");
		virtual		void GetTolerance(math_Vector & Tolerance, const Standard_Real Tol) const;
		%feature("autodoc", "1");
		virtual		void GetBounds(math_Vector & InfBound, math_Vector & SupBound) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsSolution(const math_Vector &Sol, const Standard_Real Tol);
		%feature("autodoc", "1");
		virtual		Standard_Real GetMinimalDistance() const;
		%feature("autodoc", "1");
		virtual		const gp_Pnt & PointOnS1() const;
		%feature("autodoc", "1");
		virtual		const gp_Pnt & PointOnS2() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsTangencyPoint() const;
		%feature("autodoc", "1");
		virtual		const gp_Vec & TangentOnS1() const;
		%feature("autodoc", "1");
		virtual		const gp_Vec2d & Tangent2dOnS1() const;
		%feature("autodoc", "1");
		virtual		const gp_Vec & TangentOnS2() const;
		%feature("autodoc", "1");
		virtual		const gp_Vec2d & Tangent2dOnS2() const;
		%feature("autodoc", "1");
		virtual		void Tangent(const Standard_Real U1, const Standard_Real V1, const Standard_Real U2, const Standard_Real V2, gp_Vec & TgFirst, gp_Vec & TgLast, gp_Vec & NormFirst, gp_Vec & NormLast) const;
		%feature("autodoc", "1");
		void Set(const Standard_Real Dist1, const Standard_Real Dist2, const Standard_Integer Choix);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsRational() const;
		%feature("autodoc", "1");
		virtual		Standard_Real GetSectionSize() const;
		%feature("autodoc", "1");
		virtual		void GetMinimalWeight(TColStd_Array1OfReal & Weigths) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbIntervals(const GeomAbs_Shape S) const;
		%feature("autodoc", "1");
		virtual		void Intervals(TColStd_Array1OfReal & T, const GeomAbs_Shape S) const;
		%feature("autodoc","GetShape() -> [Standard_Integer, Standard_Integer, Standard_Integer, Standard_Integer]");
		virtual		void GetShape(Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue);
		%feature("autodoc", "1");
		virtual		void GetTolerance(const Standard_Real BoundTol, const Standard_Real SurfTol, const Standard_Real AngleTol, math_Vector & Tol3d, math_Vector & Tol1D) const;
		%feature("autodoc", "1");
		virtual		void Knots(TColStd_Array1OfReal & TKnots);
		%feature("autodoc", "1");
		virtual		void Mults(TColStd_Array1OfInteger & TMults);
		%feature("autodoc","Section(Standard_Real Param, Standard_Real U1, Standard_Real V1, Standard_Real U2, Standard_Real V2) -> [Standard_RealStandard_Real]");
		void Section(const Standard_Real Param, const Standard_Real U1, const Standard_Real V1, const Standard_Real U2, const Standard_Real V2, Standard_Real &OutValue, Standard_Real &OutValue, gp_Lin & C);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Section(const Blend_Point &P, TColgp_Array1OfPnt & Poles, TColgp_Array1OfVec & DPoles, TColgp_Array1OfVec & D2Poles, TColgp_Array1OfPnt2d & Poles2d, TColgp_Array1OfVec2d & DPoles2d, TColgp_Array1OfVec2d & D2Poles2d, TColStd_Array1OfReal & Weigths, TColStd_Array1OfReal & DWeigths, TColStd_Array1OfReal & D2Weigths);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Section(const Blend_Point &P, TColgp_Array1OfPnt & Poles, TColgp_Array1OfVec & DPoles, TColgp_Array1OfPnt2d & Poles2d, TColgp_Array1OfVec2d & DPoles2d, TColStd_Array1OfReal & Weigths, TColStd_Array1OfReal & DWeigths);
		%feature("autodoc", "1");
		virtual		void Section(const Blend_Point &P, TColgp_Array1OfPnt & Poles, TColgp_Array1OfPnt2d & Poles2d, TColStd_Array1OfReal & Weigths);
		%feature("autodoc","Resolution(Standard_Integer IC2d, Standard_Real Tol) -> [Standard_RealStandard_Real]");
		virtual		void Resolution(const Standard_Integer IC2d, const Standard_Real Tol, Standard_Real &OutValue, Standard_Real &OutValue) const;

};
%feature("shadow") BRepBlend_Chamfer::~BRepBlend_Chamfer %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepBlend_Chamfer {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepBlend_CurvPointRadInv;
class BRepBlend_CurvPointRadInv : public Blend_CurvPointFuncInv {
	public:
		%feature("autodoc", "1");
		BRepBlend_CurvPointRadInv(const Handle_Adaptor3d_HCurve &C1, const Handle_Adaptor3d_HCurve &C2);
		%feature("autodoc", "1");
		void Set(const Standard_Integer Choix);
		%feature("autodoc", "1");
		virtual		Standard_Integer NbEquations() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Value(const math_Vector &X, math_Vector & F);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Derivatives(const math_Vector &X, math_Matrix & D);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Values(const math_Vector &X, math_Vector & F, math_Matrix & D);
		%feature("autodoc", "1");
		virtual		void Set(const gp_Pnt &P);
		%feature("autodoc", "1");
		virtual		void GetTolerance(math_Vector & Tolerance, const Standard_Real Tol) const;
		%feature("autodoc", "1");
		virtual		void GetBounds(math_Vector & InfBound, math_Vector & SupBound) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsSolution(const math_Vector &Sol, const Standard_Real Tol);

};
%feature("shadow") BRepBlend_CurvPointRadInv::~BRepBlend_CurvPointRadInv %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepBlend_CurvPointRadInv {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepBlend_RstRstConstRad;
class BRepBlend_RstRstConstRad : public Blend_RstRstFunction {
	public:
		%feature("autodoc", "1");
		BRepBlend_RstRstConstRad(const Handle_Adaptor3d_HSurface &Surf1, const Handle_Adaptor2d_HCurve2d &Rst1, const Handle_Adaptor3d_HSurface &Surf2, const Handle_Adaptor2d_HCurve2d &Rst2, const Handle_Adaptor3d_HCurve &CGuide);
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
		void Set(const Handle_Adaptor3d_HSurface &SurfRef1, const Handle_Adaptor2d_HCurve2d &RstRef1, const Handle_Adaptor3d_HSurface &SurfRef2, const Handle_Adaptor2d_HCurve2d &RstRef2);
		%feature("autodoc", "1");
		virtual		void Set(const Standard_Real Param);
		%feature("autodoc", "1");
		virtual		void Set(const Standard_Real First, const Standard_Real Last);
		%feature("autodoc", "1");
		virtual		void GetTolerance(math_Vector & Tolerance, const Standard_Real Tol) const;
		%feature("autodoc", "1");
		virtual		void GetBounds(math_Vector & InfBound, math_Vector & SupBound) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsSolution(const math_Vector &Sol, const Standard_Real Tol);
		%feature("autodoc", "1");
		virtual		Standard_Real GetMinimalDistance() const;
		%feature("autodoc", "1");
		virtual		const gp_Pnt & PointOnRst1() const;
		%feature("autodoc", "1");
		virtual		const gp_Pnt & PointOnRst2() const;
		%feature("autodoc", "1");
		virtual		const gp_Pnt2d & Pnt2dOnRst1() const;
		%feature("autodoc", "1");
		virtual		const gp_Pnt2d & Pnt2dOnRst2() const;
		%feature("autodoc", "1");
		virtual		Standard_Real ParameterOnRst1() const;
		%feature("autodoc", "1");
		virtual		Standard_Real ParameterOnRst2() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsTangencyPoint() const;
		%feature("autodoc", "1");
		virtual		const gp_Vec & TangentOnRst1() const;
		%feature("autodoc", "1");
		virtual		const gp_Vec2d & Tangent2dOnRst1() const;
		%feature("autodoc", "1");
		virtual		const gp_Vec & TangentOnRst2() const;
		%feature("autodoc", "1");
		virtual		const gp_Vec2d & Tangent2dOnRst2() const;
		%feature("autodoc", "1");
		virtual		Blend_DecrochStatus Decroch(const math_Vector &Sol, gp_Vec & NRst1, gp_Vec & TgRst1, gp_Vec & NRst2, gp_Vec & TgRst2) const;
		%feature("autodoc", "1");
		void Set(const Standard_Real Radius, const Standard_Integer Choix);
		%feature("autodoc", "1");
		void Set(const BlendFunc_SectionShape TypeSection);
		%feature("autodoc", "1");
		Standard_Boolean CenterCircleRst1Rst2(const gp_Pnt &PtRst1, const gp_Pnt &PtRst2, const gp_Vec &np, gp_Pnt & Center, gp_Vec & VdMed) const;
		%feature("autodoc","Section(Standard_Real Param, Standard_Real U, Standard_Real V) -> [Standard_RealStandard_Real]");
		void Section(const Standard_Real Param, const Standard_Real U, const Standard_Real V, Standard_Real &OutValue, Standard_Real &OutValue, gp_Circ & C);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsRational() const;
		%feature("autodoc", "1");
		virtual		Standard_Real GetSectionSize() const;
		%feature("autodoc", "1");
		virtual		void GetMinimalWeight(TColStd_Array1OfReal & Weigths) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbIntervals(const GeomAbs_Shape S) const;
		%feature("autodoc", "1");
		virtual		void Intervals(TColStd_Array1OfReal & T, const GeomAbs_Shape S) const;
		%feature("autodoc","GetShape() -> [Standard_Integer, Standard_Integer, Standard_Integer, Standard_Integer]");
		virtual		void GetShape(Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue);
		%feature("autodoc", "1");
		virtual		void GetTolerance(const Standard_Real BoundTol, const Standard_Real SurfTol, const Standard_Real AngleTol, math_Vector & Tol3d, math_Vector & Tol1D) const;
		%feature("autodoc", "1");
		virtual		void Knots(TColStd_Array1OfReal & TKnots);
		%feature("autodoc", "1");
		virtual		void Mults(TColStd_Array1OfInteger & TMults);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Section(const Blend_Point &P, TColgp_Array1OfPnt & Poles, TColgp_Array1OfVec & DPoles, TColgp_Array1OfPnt2d & Poles2d, TColgp_Array1OfVec2d & DPoles2d, TColStd_Array1OfReal & Weigths, TColStd_Array1OfReal & DWeigths);
		%feature("autodoc", "1");
		virtual		void Section(const Blend_Point &P, TColgp_Array1OfPnt & Poles, TColgp_Array1OfPnt2d & Poles2d, TColStd_Array1OfReal & Weigths);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Section(const Blend_Point &P, TColgp_Array1OfPnt & Poles, TColgp_Array1OfVec & DPoles, TColgp_Array1OfVec & D2Poles, TColgp_Array1OfPnt2d & Poles2d, TColgp_Array1OfVec2d & DPoles2d, TColgp_Array1OfVec2d & D2Poles2d, TColStd_Array1OfReal & Weigths, TColStd_Array1OfReal & DWeigths, TColStd_Array1OfReal & D2Weigths);
		%feature("autodoc","Resolution(Standard_Integer IC2d, Standard_Real Tol) -> [Standard_RealStandard_Real]");
		virtual		void Resolution(const Standard_Integer IC2d, const Standard_Real Tol, Standard_Real &OutValue, Standard_Real &OutValue) const;

};
%feature("shadow") BRepBlend_RstRstConstRad::~BRepBlend_RstRstConstRad %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepBlend_RstRstConstRad {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepBlend_Ruled;
class BRepBlend_Ruled : public Blend_Function {
	public:
		%feature("autodoc", "1");
		BRepBlend_Ruled(const Handle_Adaptor3d_HSurface &S1, const Handle_Adaptor3d_HSurface &S2, const Handle_Adaptor3d_HCurve &C);
		%feature("autodoc", "1");
		virtual		Standard_Integer NbEquations() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Value(const math_Vector &X, math_Vector & F);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Derivatives(const math_Vector &X, math_Matrix & D);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Values(const math_Vector &X, math_Vector & F, math_Matrix & D);
		%feature("autodoc", "1");
		virtual		void Set(const Standard_Real Param);
		%feature("autodoc", "1");
		virtual		void Set(const Standard_Real First, const Standard_Real Last);
		%feature("autodoc", "1");
		virtual		void GetTolerance(math_Vector & Tolerance, const Standard_Real Tol) const;
		%feature("autodoc", "1");
		virtual		void GetBounds(math_Vector & InfBound, math_Vector & SupBound) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsSolution(const math_Vector &Sol, const Standard_Real Tol);
		%feature("autodoc", "1");
		virtual		Standard_Real GetMinimalDistance() const;
		%feature("autodoc", "1");
		virtual		const gp_Pnt & PointOnS1() const;
		%feature("autodoc", "1");
		virtual		const gp_Pnt & PointOnS2() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsTangencyPoint() const;
		%feature("autodoc", "1");
		virtual		const gp_Vec & TangentOnS1() const;
		%feature("autodoc", "1");
		virtual		const gp_Vec2d & Tangent2dOnS1() const;
		%feature("autodoc", "1");
		virtual		const gp_Vec & TangentOnS2() const;
		%feature("autodoc", "1");
		virtual		const gp_Vec2d & Tangent2dOnS2() const;
		%feature("autodoc", "1");
		virtual		void Tangent(const Standard_Real U1, const Standard_Real V1, const Standard_Real U2, const Standard_Real V2, gp_Vec & TgFirst, gp_Vec & TgLast, gp_Vec & NormFirst, gp_Vec & NormLast) const;
		%feature("autodoc", "1");
		Standard_Boolean GetSection(const Standard_Real Param, const Standard_Real U1, const Standard_Real V1, const Standard_Real U2, const Standard_Real V2, TColgp_Array1OfPnt & tabP, TColgp_Array1OfVec & tabV);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsRational() const;
		%feature("autodoc", "1");
		virtual		Standard_Real GetSectionSize() const;
		%feature("autodoc", "1");
		virtual		void GetMinimalWeight(TColStd_Array1OfReal & Weigths) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbIntervals(const GeomAbs_Shape S) const;
		%feature("autodoc", "1");
		virtual		void Intervals(TColStd_Array1OfReal & T, const GeomAbs_Shape S) const;
		%feature("autodoc","GetShape() -> [Standard_Integer, Standard_Integer, Standard_Integer, Standard_Integer]");
		virtual		void GetShape(Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue);
		%feature("autodoc", "1");
		virtual		void GetTolerance(const Standard_Real BoundTol, const Standard_Real SurfTol, const Standard_Real AngleTol, math_Vector & Tol3d, math_Vector & Tol1D) const;
		%feature("autodoc", "1");
		virtual		void Knots(TColStd_Array1OfReal & TKnots);
		%feature("autodoc", "1");
		virtual		void Mults(TColStd_Array1OfInteger & TMults);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Section(const Blend_Point &P, TColgp_Array1OfPnt & Poles, TColgp_Array1OfVec & DPoles, TColgp_Array1OfVec & D2Poles, TColgp_Array1OfPnt2d & Poles2d, TColgp_Array1OfVec2d & DPoles2d, TColgp_Array1OfVec2d & D2Poles2d, TColStd_Array1OfReal & Weigths, TColStd_Array1OfReal & DWeigths, TColStd_Array1OfReal & D2Weigths);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Section(const Blend_Point &P, TColgp_Array1OfPnt & Poles, TColgp_Array1OfVec & DPoles, TColgp_Array1OfPnt2d & Poles2d, TColgp_Array1OfVec2d & DPoles2d, TColStd_Array1OfReal & Weigths, TColStd_Array1OfReal & DWeigths);
		%feature("autodoc", "1");
		virtual		void Section(const Blend_Point &P, TColgp_Array1OfPnt & Poles, TColgp_Array1OfPnt2d & Poles2d, TColStd_Array1OfReal & Weigths);
		%feature("autodoc", "1");
		gp_Ax1 AxeRot(const Standard_Real Prm);
		%feature("autodoc","Resolution(Standard_Integer IC2d, Standard_Real Tol) -> [Standard_RealStandard_Real]");
		virtual		void Resolution(const Standard_Integer IC2d, const Standard_Real Tol, Standard_Real &OutValue, Standard_Real &OutValue) const;

};
%feature("shadow") BRepBlend_Ruled::~BRepBlend_Ruled %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepBlend_Ruled {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepBlend_AppFunc;
class BRepBlend_AppFunc : public BRepBlend_AppFuncRoot {
	public:
		%feature("autodoc", "1");
		BRepBlend_AppFunc(Handle_BRepBlend_Line & Line, Blend_Function & Func, const Standard_Real Tol3d, const Standard_Real Tol2d);
		%feature("autodoc", "1");
		virtual		void Point(const Blend_AppFunction &Func, const Standard_Real Param, const math_Vector &Sol, Blend_Point & Pnt) const;
		%feature("autodoc", "1");
		virtual		void Vec(math_Vector & Sol, const Blend_Point &Pnt) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepBlend_AppFunc {
	Handle_BRepBlend_AppFunc GetHandle() {
	return *(Handle_BRepBlend_AppFunc*) &$self;
	}
};
%extend BRepBlend_AppFunc {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BRepBlend_AppFunc::~BRepBlend_AppFunc %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepBlend_AppFunc {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepBlend_SequenceOfLine;
class BRepBlend_SequenceOfLine : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		BRepBlend_SequenceOfLine();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const BRepBlend_SequenceOfLine & Assign(const BRepBlend_SequenceOfLine &Other);
		%feature("autodoc", "1");
		const BRepBlend_SequenceOfLine & operator=(const BRepBlend_SequenceOfLine &Other);
		%feature("autodoc", "1");
		void Append(const Handle_BRepBlend_Line &T);
		%feature("autodoc", "1");
		void Append(BRepBlend_SequenceOfLine & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_BRepBlend_Line &T);
		%feature("autodoc", "1");
		void Prepend(BRepBlend_SequenceOfLine & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_BRepBlend_Line &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, BRepBlend_SequenceOfLine & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_BRepBlend_Line &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, BRepBlend_SequenceOfLine & S);
		%feature("autodoc", "1");
		const Handle_BRepBlend_Line & First() const;
		%feature("autodoc", "1");
		const Handle_BRepBlend_Line & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, BRepBlend_SequenceOfLine & S);
		%feature("autodoc", "1");
		const Handle_BRepBlend_Line & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_BRepBlend_Line & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_BRepBlend_Line &I);
		%feature("autodoc", "1");
		Handle_BRepBlend_Line & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_BRepBlend_Line & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") BRepBlend_SequenceOfLine::~BRepBlend_SequenceOfLine %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepBlend_SequenceOfLine {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepBlend_CSWalking;
class BRepBlend_CSWalking {
	public:
		%feature("autodoc", "1");
		BRepBlend_CSWalking(const Handle_Adaptor3d_HCurve &Curv, const Handle_Adaptor3d_HSurface &Surf, const Handle_Adaptor3d_TopolTool &Domain);
		%feature("autodoc", "1");
		void Perform(Blend_CSFunction & F, const Standard_Real Pdep, const Standard_Real Pmax, const Standard_Real MaxStep, const Standard_Real TolGuide, const math_Vector &Soldep, const Standard_Real Tolesp, const Standard_Real Fleche, const Standard_Boolean Appro=0);
		%feature("autodoc", "1");
		Standard_Boolean Complete(Blend_CSFunction & F, const Standard_Real Pmin);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		const Handle_BRepBlend_Line & Line() const;

};
%feature("shadow") BRepBlend_CSWalking::~BRepBlend_CSWalking %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepBlend_CSWalking {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepBlend_Line;
class BRepBlend_Line : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		BRepBlend_Line();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const Blend_Point &P);
		%feature("autodoc", "1");
		void Prepend(const Blend_Point &P);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Blend_Point &P);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);
		%feature("autodoc", "1");
		void Set(const IntSurf_TypeTrans TranS1, const IntSurf_TypeTrans TranS2);
		%feature("autodoc", "1");
		void Set(const IntSurf_TypeTrans Trans);
		%feature("autodoc", "1");
		void SetStartPoints(const BRepBlend_Extremity &StartPtOnS1, const BRepBlend_Extremity &StartPtOnS2);
		%feature("autodoc", "1");
		void SetEndPoints(const BRepBlend_Extremity &EndPtOnS1, const BRepBlend_Extremity &EndPtOnS2);
		%feature("autodoc", "1");
		Standard_Integer NbPoints() const;
		%feature("autodoc", "1");
		const Blend_Point & Point(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		IntSurf_TypeTrans TransitionOnS1() const;
		%feature("autodoc", "1");
		IntSurf_TypeTrans TransitionOnS2() const;
		%feature("autodoc", "1");
		const BRepBlend_Extremity & StartPointOnFirst() const;
		%feature("autodoc", "1");
		const BRepBlend_Extremity & StartPointOnSecond() const;
		%feature("autodoc", "1");
		const BRepBlend_Extremity & EndPointOnFirst() const;
		%feature("autodoc", "1");
		const BRepBlend_Extremity & EndPointOnSecond() const;
		%feature("autodoc", "1");
		IntSurf_TypeTrans TransitionOnS() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepBlend_Line {
	Handle_BRepBlend_Line GetHandle() {
	return *(Handle_BRepBlend_Line*) &$self;
	}
};
%extend BRepBlend_Line {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BRepBlend_Line::~BRepBlend_Line %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepBlend_Line {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepBlend_CSConstRad;
class BRepBlend_CSConstRad : public Blend_CSFunction {
	public:
		%feature("autodoc", "1");
		BRepBlend_CSConstRad(const Handle_Adaptor3d_HSurface &S, const Handle_Adaptor3d_HCurve &C, const Handle_Adaptor3d_HCurve &CGuide);
		%feature("autodoc", "1");
		virtual		Standard_Integer NbEquations() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Value(const math_Vector &X, math_Vector & F);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Derivatives(const math_Vector &X, math_Matrix & D);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Values(const math_Vector &X, math_Vector & F, math_Matrix & D);
		%feature("autodoc", "1");
		virtual		void Set(const Standard_Real Param);
		%feature("autodoc", "1");
		virtual		void Set(const Standard_Real First, const Standard_Real Last);
		%feature("autodoc", "1");
		virtual		void GetTolerance(math_Vector & Tolerance, const Standard_Real Tol) const;
		%feature("autodoc", "1");
		virtual		void GetBounds(math_Vector & InfBound, math_Vector & SupBound) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsSolution(const math_Vector &Sol, const Standard_Real Tol);
		%feature("autodoc", "1");
		virtual		const gp_Pnt & PointOnS() const;
		%feature("autodoc", "1");
		virtual		const gp_Pnt & PointOnC() const;
		%feature("autodoc", "1");
		virtual		const gp_Pnt2d & Pnt2d() const;
		%feature("autodoc", "1");
		virtual		Standard_Real ParameterOnC() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsTangencyPoint() const;
		%feature("autodoc", "1");
		virtual		const gp_Vec & TangentOnS() const;
		%feature("autodoc", "1");
		virtual		const gp_Vec2d & Tangent2d() const;
		%feature("autodoc", "1");
		virtual		const gp_Vec & TangentOnC() const;
		%feature("autodoc", "1");
		virtual		void Tangent(const Standard_Real U, const Standard_Real V, gp_Vec & TgS, gp_Vec & NormS) const;
		%feature("autodoc", "1");
		void Set(const Standard_Real Radius, const Standard_Integer Choix);
		%feature("autodoc", "1");
		void Set(const BlendFunc_SectionShape TypeSection);
		%feature("autodoc","Section(Standard_Real Param, Standard_Real U, Standard_Real V, Standard_Real W) -> [Standard_RealStandard_Real]");
		void Section(const Standard_Real Param, const Standard_Real U, const Standard_Real V, const Standard_Real W, Standard_Real &OutValue, Standard_Real &OutValue, gp_Circ & C);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Section(const Blend_Point &P, TColgp_Array1OfPnt & Poles, TColgp_Array1OfVec & DPoles, TColgp_Array1OfVec & D2Poles, TColgp_Array1OfPnt2d & Poles2d, TColgp_Array1OfVec2d & DPoles2d, TColgp_Array1OfVec2d & D2Poles2d, TColStd_Array1OfReal & Weigths, TColStd_Array1OfReal & DWeigths, TColStd_Array1OfReal & D2Weigths);
		%feature("autodoc", "1");
		Standard_Boolean GetSection(const Standard_Real Param, const Standard_Real U, const Standard_Real V, const Standard_Real W, TColgp_Array1OfPnt & tabP, TColgp_Array1OfVec & tabV);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsRational() const;
		%feature("autodoc", "1");
		virtual		Standard_Real GetSectionSize() const;
		%feature("autodoc", "1");
		virtual		void GetMinimalWeight(TColStd_Array1OfReal & Weigths) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbIntervals(const GeomAbs_Shape S) const;
		%feature("autodoc", "1");
		virtual		void Intervals(TColStd_Array1OfReal & T, const GeomAbs_Shape S) const;
		%feature("autodoc","GetShape() -> [Standard_Integer, Standard_Integer, Standard_Integer, Standard_Integer]");
		virtual		void GetShape(Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue);
		%feature("autodoc", "1");
		virtual		void GetTolerance(const Standard_Real BoundTol, const Standard_Real SurfTol, const Standard_Real AngleTol, math_Vector & Tol3d, math_Vector & Tol1D) const;
		%feature("autodoc", "1");
		virtual		void Knots(TColStd_Array1OfReal & TKnots);
		%feature("autodoc", "1");
		virtual		void Mults(TColStd_Array1OfInteger & TMults);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Section(const Blend_Point &P, TColgp_Array1OfPnt & Poles, TColgp_Array1OfVec & DPoles, TColgp_Array1OfPnt2d & Poles2d, TColgp_Array1OfVec2d & DPoles2d, TColStd_Array1OfReal & Weigths, TColStd_Array1OfReal & DWeigths);
		%feature("autodoc", "1");
		virtual		void Section(const Blend_Point &P, TColgp_Array1OfPnt & Poles, TColgp_Array1OfPnt2d & Poles2d, TColStd_Array1OfReal & Weigths);
		%feature("autodoc","Resolution(Standard_Integer IC2d, Standard_Real Tol) -> [Standard_RealStandard_Real]");
		virtual		void Resolution(const Standard_Integer IC2d, const Standard_Real Tol, Standard_Real &OutValue, Standard_Real &OutValue) const;

};
%feature("shadow") BRepBlend_CSConstRad::~BRepBlend_CSConstRad %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepBlend_CSConstRad {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepBlend_AppFuncRstRst;
class BRepBlend_AppFuncRstRst : public BRepBlend_AppFuncRoot {
	public:
		%feature("autodoc", "1");
		BRepBlend_AppFuncRstRst(Handle_BRepBlend_Line & Line, Blend_RstRstFunction & Func, const Standard_Real Tol3d, const Standard_Real Tol2d);
		%feature("autodoc", "1");
		virtual		void Point(const Blend_AppFunction &Func, const Standard_Real Param, const math_Vector &Sol, Blend_Point & Pnt) const;
		%feature("autodoc", "1");
		virtual		void Vec(math_Vector & Sol, const Blend_Point &Pnt) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepBlend_AppFuncRstRst {
	Handle_BRepBlend_AppFuncRstRst GetHandle() {
	return *(Handle_BRepBlend_AppFuncRstRst*) &$self;
	}
};
%extend BRepBlend_AppFuncRstRst {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BRepBlend_AppFuncRstRst::~BRepBlend_AppFuncRstRst %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepBlend_AppFuncRstRst {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepBlend_ConstRadInv;
class BRepBlend_ConstRadInv : public Blend_FuncInv {
	public:
		%feature("autodoc", "1");
		BRepBlend_ConstRadInv(const Handle_Adaptor3d_HSurface &S1, const Handle_Adaptor3d_HSurface &S2, const Handle_Adaptor3d_HCurve &C);
		%feature("autodoc", "1");
		virtual		void Set(const Standard_Boolean OnFirst, const Handle_Adaptor2d_HCurve2d &COnSurf);
		%feature("autodoc", "1");
		virtual		void GetTolerance(math_Vector & Tolerance, const Standard_Real Tol) const;
		%feature("autodoc", "1");
		virtual		void GetBounds(math_Vector & InfBound, math_Vector & SupBound) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsSolution(const math_Vector &Sol, const Standard_Real Tol);
		%feature("autodoc", "1");
		virtual		Standard_Integer NbEquations() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Value(const math_Vector &X, math_Vector & F);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Derivatives(const math_Vector &X, math_Matrix & D);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Values(const math_Vector &X, math_Vector & F, math_Matrix & D);
		%feature("autodoc", "1");
		void Set(const Standard_Real R, const Standard_Integer Choix);

};
%feature("shadow") BRepBlend_ConstRadInv::~BRepBlend_ConstRadInv %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepBlend_ConstRadInv {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepBlend_RuledInv;
class BRepBlend_RuledInv : public Blend_FuncInv {
	public:
		%feature("autodoc", "1");
		BRepBlend_RuledInv(const Handle_Adaptor3d_HSurface &S1, const Handle_Adaptor3d_HSurface &S2, const Handle_Adaptor3d_HCurve &C);
		%feature("autodoc", "1");
		virtual		void Set(const Standard_Boolean OnFirst, const Handle_Adaptor2d_HCurve2d &COnSurf);
		%feature("autodoc", "1");
		virtual		void GetTolerance(math_Vector & Tolerance, const Standard_Real Tol) const;
		%feature("autodoc", "1");
		virtual		void GetBounds(math_Vector & InfBound, math_Vector & SupBound) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsSolution(const math_Vector &Sol, const Standard_Real Tol);
		%feature("autodoc", "1");
		virtual		Standard_Integer NbEquations() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Value(const math_Vector &X, math_Vector & F);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Derivatives(const math_Vector &X, math_Matrix & D);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Values(const math_Vector &X, math_Vector & F, math_Matrix & D);

};
%feature("shadow") BRepBlend_RuledInv::~BRepBlend_RuledInv %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepBlend_RuledInv {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepBlend_SurfPointConstRadInv;
class BRepBlend_SurfPointConstRadInv : public Blend_SurfPointFuncInv {
	public:
		%feature("autodoc", "1");
		BRepBlend_SurfPointConstRadInv(const Handle_Adaptor3d_HSurface &S, const Handle_Adaptor3d_HCurve &C);
		%feature("autodoc", "1");
		void Set(const Standard_Real R, const Standard_Integer Choix);
		%feature("autodoc", "1");
		virtual		Standard_Integer NbEquations() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Value(const math_Vector &X, math_Vector & F);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Derivatives(const math_Vector &X, math_Matrix & D);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Values(const math_Vector &X, math_Vector & F, math_Matrix & D);
		%feature("autodoc", "1");
		virtual		void Set(const gp_Pnt &P);
		%feature("autodoc", "1");
		virtual		void GetTolerance(math_Vector & Tolerance, const Standard_Real Tol) const;
		%feature("autodoc", "1");
		virtual		void GetBounds(math_Vector & InfBound, math_Vector & SupBound) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsSolution(const math_Vector &Sol, const Standard_Real Tol);

};
%feature("shadow") BRepBlend_SurfPointConstRadInv::~BRepBlend_SurfPointConstRadInv %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepBlend_SurfPointConstRadInv {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepBlend_HCurve2dTool;
class BRepBlend_HCurve2dTool {
	public:
		%feature("autodoc", "1");
		BRepBlend_HCurve2dTool();
		%feature("autodoc", "1");
		Standard_Real FirstParameter(const Handle_Adaptor2d_HCurve2d &C);
		%feature("autodoc", "1");
		Standard_Real LastParameter(const Handle_Adaptor2d_HCurve2d &C);
		%feature("autodoc", "1");
		GeomAbs_Shape Continuity(const Handle_Adaptor2d_HCurve2d &C);
		%feature("autodoc", "1");
		Standard_Integer NbIntervals(const Handle_Adaptor2d_HCurve2d &C, const GeomAbs_Shape Sh);
		%feature("autodoc", "1");
		void Intervals(const Handle_Adaptor2d_HCurve2d &C, TColStd_Array1OfReal & Tab, const GeomAbs_Shape Sh);
		%feature("autodoc", "1");
		Standard_Boolean IsClosed(const Handle_Adaptor2d_HCurve2d &C);
		%feature("autodoc", "1");
		Standard_Boolean IsPeriodic(const Handle_Adaptor2d_HCurve2d &C);
		%feature("autodoc", "1");
		Standard_Real Period(const Handle_Adaptor2d_HCurve2d &C);
		%feature("autodoc", "1");
		gp_Pnt2d Value(const Handle_Adaptor2d_HCurve2d &C, const Standard_Real U);
		%feature("autodoc", "1");
		void D0(const Handle_Adaptor2d_HCurve2d &C, const Standard_Real U, gp_Pnt2d & P);
		%feature("autodoc", "1");
		void D1(const Handle_Adaptor2d_HCurve2d &C, const Standard_Real U, gp_Pnt2d & P, gp_Vec2d & T);
		%feature("autodoc", "1");
		void D2(const Handle_Adaptor2d_HCurve2d &C, const Standard_Real U, gp_Pnt2d & P, gp_Vec2d & T, gp_Vec2d & N);
		%feature("autodoc", "1");
		void D3(const Handle_Adaptor2d_HCurve2d &C, const Standard_Real U, gp_Pnt2d & P, gp_Vec2d & V1, gp_Vec2d & V2, gp_Vec2d & V3);
		%feature("autodoc", "1");
		gp_Vec2d DN(const Handle_Adaptor2d_HCurve2d &C, const Standard_Real U, const Standard_Integer N);
		%feature("autodoc", "1");
		Standard_Real Resolution(const Handle_Adaptor2d_HCurve2d &C, const Standard_Real R3d);
		%feature("autodoc", "1");
		GeomAbs_CurveType GetType(const Handle_Adaptor2d_HCurve2d &C);
		%feature("autodoc", "1");
		gp_Lin2d Line(const Handle_Adaptor2d_HCurve2d &C);
		%feature("autodoc", "1");
		gp_Circ2d Circle(const Handle_Adaptor2d_HCurve2d &C);
		%feature("autodoc", "1");
		gp_Elips2d Ellipse(const Handle_Adaptor2d_HCurve2d &C);
		%feature("autodoc", "1");
		gp_Hypr2d Hyperbola(const Handle_Adaptor2d_HCurve2d &C);
		%feature("autodoc", "1");
		gp_Parab2d Parabola(const Handle_Adaptor2d_HCurve2d &C);
		%feature("autodoc", "1");
		Handle_Geom2d_BezierCurve Bezier(const Handle_Adaptor2d_HCurve2d &C);
		%feature("autodoc", "1");
		Handle_Geom2d_BSplineCurve BSpline(const Handle_Adaptor2d_HCurve2d &C);
		%feature("autodoc", "1");
		Standard_Integer NbSamples(const Handle_Adaptor2d_HCurve2d &C, const Standard_Real U0, const Standard_Real U1);

};
%feature("shadow") BRepBlend_HCurve2dTool::~BRepBlend_HCurve2dTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepBlend_HCurve2dTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepBlend_SurfPointEvolRadInv;
class BRepBlend_SurfPointEvolRadInv : public Blend_SurfPointFuncInv {
	public:
		%feature("autodoc", "1");
		BRepBlend_SurfPointEvolRadInv(const Handle_Adaptor3d_HSurface &S, const Handle_Adaptor3d_HCurve &C, const Handle_Law_Function &Evol);
		%feature("autodoc", "1");
		void Set(const Standard_Integer Choix);
		%feature("autodoc", "1");
		virtual		Standard_Integer NbEquations() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Value(const math_Vector &X, math_Vector & F);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Derivatives(const math_Vector &X, math_Matrix & D);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Values(const math_Vector &X, math_Vector & F, math_Matrix & D);
		%feature("autodoc", "1");
		virtual		void Set(const gp_Pnt &P);
		%feature("autodoc", "1");
		virtual		void GetTolerance(math_Vector & Tolerance, const Standard_Real Tol) const;
		%feature("autodoc", "1");
		virtual		void GetBounds(math_Vector & InfBound, math_Vector & SupBound) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsSolution(const math_Vector &Sol, const Standard_Real Tol);

};
%feature("shadow") BRepBlend_SurfPointEvolRadInv::~BRepBlend_SurfPointEvolRadInv %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepBlend_SurfPointEvolRadInv {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepBlend_HCurveTool;
class BRepBlend_HCurveTool {
	public:
		%feature("autodoc", "1");
		BRepBlend_HCurveTool();
		%feature("autodoc", "1");
		Standard_Real FirstParameter(const Handle_Adaptor3d_HCurve &C);
		%feature("autodoc", "1");
		Standard_Real LastParameter(const Handle_Adaptor3d_HCurve &C);
		%feature("autodoc", "1");
		GeomAbs_Shape Continuity(const Handle_Adaptor3d_HCurve &C);
		%feature("autodoc", "1");
		Standard_Integer NbIntervals(const Handle_Adaptor3d_HCurve &C, const GeomAbs_Shape Sh);
		%feature("autodoc", "1");
		void Intervals(const Handle_Adaptor3d_HCurve &C, TColStd_Array1OfReal & Tab, const GeomAbs_Shape Sh);
		%feature("autodoc", "1");
		Standard_Boolean IsClosed(const Handle_Adaptor3d_HCurve &C);
		%feature("autodoc", "1");
		Standard_Boolean IsPeriodic(const Handle_Adaptor3d_HCurve &C);
		%feature("autodoc", "1");
		Standard_Real Period(const Handle_Adaptor3d_HCurve &C);
		%feature("autodoc", "1");
		gp_Pnt Value(const Handle_Adaptor3d_HCurve &C, const Standard_Real U);
		%feature("autodoc", "1");
		void D0(const Handle_Adaptor3d_HCurve &C, const Standard_Real U, gp_Pnt & P);
		%feature("autodoc", "1");
		void D1(const Handle_Adaptor3d_HCurve &C, const Standard_Real U, gp_Pnt & P, gp_Vec & T);
		%feature("autodoc", "1");
		void D2(const Handle_Adaptor3d_HCurve &C, const Standard_Real U, gp_Pnt & P, gp_Vec & T, gp_Vec & N);
		%feature("autodoc", "1");
		void D3(const Handle_Adaptor3d_HCurve &C, const Standard_Real U, gp_Pnt & P, gp_Vec & V1, gp_Vec & V2, gp_Vec & V3);
		%feature("autodoc", "1");
		gp_Vec DN(const Handle_Adaptor3d_HCurve &C, const Standard_Real U, const Standard_Integer N);
		%feature("autodoc", "1");
		Standard_Real Resolution(const Handle_Adaptor3d_HCurve &C, const Standard_Real R3d);
		%feature("autodoc", "1");
		GeomAbs_CurveType GetType(const Handle_Adaptor3d_HCurve &C);
		%feature("autodoc", "1");
		gp_Lin Line(const Handle_Adaptor3d_HCurve &C);
		%feature("autodoc", "1");
		gp_Circ Circle(const Handle_Adaptor3d_HCurve &C);
		%feature("autodoc", "1");
		gp_Elips Ellipse(const Handle_Adaptor3d_HCurve &C);
		%feature("autodoc", "1");
		gp_Hypr Hyperbola(const Handle_Adaptor3d_HCurve &C);
		%feature("autodoc", "1");
		gp_Parab Parabola(const Handle_Adaptor3d_HCurve &C);
		%feature("autodoc", "1");
		Handle_Geom_BezierCurve Bezier(const Handle_Adaptor3d_HCurve &C);
		%feature("autodoc", "1");
		Handle_Geom_BSplineCurve BSpline(const Handle_Adaptor3d_HCurve &C);
		%feature("autodoc", "1");
		Standard_Integer NbSamples(const Handle_Adaptor3d_HCurve &C, const Standard_Real U0, const Standard_Real U1);

};
%feature("shadow") BRepBlend_HCurveTool::~BRepBlend_HCurveTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepBlend_HCurveTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepBlend_ChAsymInv;
class BRepBlend_ChAsymInv : public Blend_FuncInv {
	public:
		%feature("autodoc", "1");
		BRepBlend_ChAsymInv(const Handle_Adaptor3d_HSurface &S1, const Handle_Adaptor3d_HSurface &S2, const Handle_Adaptor3d_HCurve &C);
		%feature("autodoc", "1");
		virtual		void Set(const Standard_Boolean OnFirst, const Handle_Adaptor2d_HCurve2d &COnSurf);
		%feature("autodoc", "1");
		virtual		void GetTolerance(math_Vector & Tolerance, const Standard_Real Tol) const;
		%feature("autodoc", "1");
		virtual		void GetBounds(math_Vector & InfBound, math_Vector & SupBound) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsSolution(const math_Vector &Sol, const Standard_Real Tol);
		%feature("autodoc", "1");
		virtual		Standard_Integer NbEquations() const;
		%feature("autodoc", "1");
		Standard_Boolean ComputeValues(const math_Vector &X, const Standard_Integer DegF, const Standard_Integer DegL);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Value(const math_Vector &X, math_Vector & F);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Derivatives(const math_Vector &X, math_Matrix & D);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Values(const math_Vector &X, math_Vector & F, math_Matrix & D);
		%feature("autodoc", "1");
		void Set(const Standard_Real Dist1, const Standard_Real Angle, const Standard_Integer Choix);

};
%feature("shadow") BRepBlend_ChAsymInv::~BRepBlend_ChAsymInv %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepBlend_ChAsymInv {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepBlend_Corde;
class BRepBlend_Corde {
	public:
		%feature("autodoc", "1");
		BRepBlend_Corde(const Handle_Adaptor3d_HSurface &S, const Handle_Adaptor3d_HCurve &CGuide);
		%feature("autodoc", "1");
		void SetParam(const Standard_Real Param);
		%feature("autodoc", "1");
		void SetDist(const Standard_Real Dist);
		%feature("autodoc", "1");
		Standard_Boolean Value(const math_Vector &X, math_Vector & F);
		%feature("autodoc", "1");
		Standard_Boolean Derivatives(const math_Vector &X, math_Matrix & D);
		%feature("autodoc", "1");
		const gp_Pnt & PointOnS() const;
		%feature("autodoc", "1");
		const gp_Pnt & PointOnGuide() const;
		%feature("autodoc", "1");
		const gp_Vec & NPlan() const;
		%feature("autodoc", "1");
		Standard_Boolean IsTangencyPoint() const;
		%feature("autodoc", "1");
		const gp_Vec & TangentOnS() const;
		%feature("autodoc", "1");
		const gp_Vec2d & Tangent2dOnS() const;
		%feature("autodoc", "1");
		void DerFguide(const math_Vector &Sol, gp_Vec2d & DerF);
		%feature("autodoc", "1");
		Standard_Boolean IsSolution(const math_Vector &Sol, const Standard_Real Tol);

};
%feature("shadow") BRepBlend_Corde::~BRepBlend_Corde %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepBlend_Corde {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepBlend_AppSurf;
class BRepBlend_AppSurf : public AppBlend_Approx {
	public:
		%feature("autodoc", "1");
		BRepBlend_AppSurf();
		%feature("autodoc", "1");
		BRepBlend_AppSurf(const Standard_Integer Degmin, const Standard_Integer Degmax, const Standard_Real Tol3d, const Standard_Real Tol2d, const Standard_Integer NbIt, const Standard_Boolean KnownParameters=0);
		%feature("autodoc", "1");
		void Init(const Standard_Integer Degmin, const Standard_Integer Degmax, const Standard_Real Tol3d, const Standard_Real Tol2d, const Standard_Integer NbIt, const Standard_Boolean KnownParameters=0);
		%feature("autodoc", "1");
		void Perform(const Handle_BRepBlend_Line &Lin, Blend_AppFunction & SecGen, const Standard_Boolean SpApprox=0);
		%feature("autodoc", "1");
		void Perform(const Handle_BRepBlend_Line &Lin, Blend_AppFunction & SecGen, const Standard_Integer NbMaxP);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsDone() const;
		%feature("autodoc","SurfShape() -> [Standard_Integer, Standard_Integer, Standard_Integer, Standard_Integer, Standard_Integer, Standard_Integer]");
		virtual		void SurfShape(Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		virtual		void Surface(TColgp_Array2OfPnt & TPoles, TColStd_Array2OfReal & TWeights, TColStd_Array1OfReal & TUKnots, TColStd_Array1OfReal & TVKnots, TColStd_Array1OfInteger & TUMults, TColStd_Array1OfInteger & TVMults) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer UDegree() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer VDegree() const;
		%feature("autodoc", "1");
		virtual		const TColgp_Array2OfPnt & SurfPoles() const;
		%feature("autodoc", "1");
		virtual		const TColStd_Array2OfReal & SurfWeights() const;
		%feature("autodoc", "1");
		virtual		const TColStd_Array1OfReal & SurfUKnots() const;
		%feature("autodoc", "1");
		virtual		const TColStd_Array1OfReal & SurfVKnots() const;
		%feature("autodoc", "1");
		virtual		const TColStd_Array1OfInteger & SurfUMults() const;
		%feature("autodoc", "1");
		virtual		const TColStd_Array1OfInteger & SurfVMults() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbCurves2d() const;
		%feature("autodoc","Curves2dShape() -> [Standard_Integer, Standard_Integer, Standard_Integer]");
		virtual		void Curves2dShape(Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		virtual		void Curve2d(const Standard_Integer Index, TColgp_Array1OfPnt2d & TPoles, TColStd_Array1OfReal & TKnots, TColStd_Array1OfInteger & TMults) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer Curves2dDegree() const;
		%feature("autodoc", "1");
		virtual		const TColgp_Array1OfPnt2d & Curve2dPoles(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		virtual		const TColStd_Array1OfReal & Curves2dKnots() const;
		%feature("autodoc", "1");
		virtual		const TColStd_Array1OfInteger & Curves2dMults() const;
		%feature("autodoc","TolReached() -> [Standard_Real, Standard_Real]");
		virtual		void TolReached(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		virtual		Standard_Real TolCurveOnSurf(const Standard_Integer Index) const;

};
%feature("shadow") BRepBlend_AppSurf::~BRepBlend_AppSurf %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepBlend_AppSurf {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepBlend_HSurfaceTool;
class BRepBlend_HSurfaceTool {
	public:
		%feature("autodoc", "1");
		BRepBlend_HSurfaceTool();
		%feature("autodoc", "1");
		Standard_Real FirstUParameter(const Handle_Adaptor3d_HSurface &Surf);
		%feature("autodoc", "1");
		Standard_Real FirstVParameter(const Handle_Adaptor3d_HSurface &Surf);
		%feature("autodoc", "1");
		Standard_Real LastUParameter(const Handle_Adaptor3d_HSurface &Surf);
		%feature("autodoc", "1");
		Standard_Real LastVParameter(const Handle_Adaptor3d_HSurface &Surf);
		%feature("autodoc", "1");
		Standard_Integer NbUIntervals(const Handle_Adaptor3d_HSurface &Surf, const GeomAbs_Shape S);
		%feature("autodoc", "1");
		Standard_Integer NbVIntervals(const Handle_Adaptor3d_HSurface &Surf, const GeomAbs_Shape S);
		%feature("autodoc", "1");
		void UIntervals(const Handle_Adaptor3d_HSurface &Surf, TColStd_Array1OfReal & Tab, const GeomAbs_Shape S);
		%feature("autodoc", "1");
		void VIntervals(const Handle_Adaptor3d_HSurface &Surf, TColStd_Array1OfReal & Tab, const GeomAbs_Shape S);
		%feature("autodoc", "1");
		Handle_Adaptor3d_HSurface UTrim(const Handle_Adaptor3d_HSurface &Surf, const Standard_Real F, const Standard_Real L, const Standard_Real Tol);
		%feature("autodoc", "1");
		Handle_Adaptor3d_HSurface VTrim(const Handle_Adaptor3d_HSurface &Surf, const Standard_Real F, const Standard_Real L, const Standard_Real Tol);
		%feature("autodoc", "1");
		Standard_Boolean IsUClosed(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		Standard_Boolean IsVClosed(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		Standard_Boolean IsUPeriodic(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		Standard_Real UPeriod(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		Standard_Boolean IsVPeriodic(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		Standard_Real VPeriod(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		gp_Pnt Value(const Handle_Adaptor3d_HSurface &S, const Standard_Real U, const Standard_Real V);
		%feature("autodoc", "1");
		void D0(const Handle_Adaptor3d_HSurface &S, const Standard_Real U, const Standard_Real V, gp_Pnt & P);
		%feature("autodoc", "1");
		void D1(const Handle_Adaptor3d_HSurface &S, const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V);
		%feature("autodoc", "1");
		void D2(const Handle_Adaptor3d_HSurface &S, const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V, gp_Vec & D2U, gp_Vec & D2V, gp_Vec & D2UV);
		%feature("autodoc", "1");
		void D3(const Handle_Adaptor3d_HSurface &S, const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V, gp_Vec & D2U, gp_Vec & D2V, gp_Vec & D2UV, gp_Vec & D3U, gp_Vec & D3V, gp_Vec & D3UUV, gp_Vec & D3UVV);
		%feature("autodoc", "1");
		gp_Vec DN(const Handle_Adaptor3d_HSurface &S, const Standard_Real U, const Standard_Real V, const Standard_Integer Nu, const Standard_Integer Nv);
		%feature("autodoc", "1");
		Standard_Real UResolution(const Handle_Adaptor3d_HSurface &S, const Standard_Real R3d);
		%feature("autodoc", "1");
		Standard_Real VResolution(const Handle_Adaptor3d_HSurface &S, const Standard_Real R3d);
		%feature("autodoc", "1");
		GeomAbs_SurfaceType GetType(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		gp_Pln Plane(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		gp_Cylinder Cylinder(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		gp_Cone Cone(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		gp_Torus Torus(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		gp_Sphere Sphere(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		Handle_Geom_BezierSurface Bezier(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		Handle_Geom_BSplineSurface BSpline(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		gp_Ax1 AxeOfRevolution(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		gp_Dir Direction(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		Handle_Adaptor3d_HCurve BasisCurve(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		Standard_Integer NbSamplesU(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		Standard_Integer NbSamplesV(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		Standard_Integer NbSamplesU(const Handle_Adaptor3d_HSurface &S, const Standard_Real u1, const Standard_Real u2);
		%feature("autodoc", "1");
		Standard_Integer NbSamplesV(const Handle_Adaptor3d_HSurface &S, const Standard_Real v1, const Standard_Real v2);

};
%feature("shadow") BRepBlend_HSurfaceTool::~BRepBlend_HSurfaceTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepBlend_HSurfaceTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepBlend_PointOnRst;
class BRepBlend_PointOnRst {
	public:
		%feature("autodoc", "1");
		BRepBlend_PointOnRst();
		%feature("autodoc", "1");
		BRepBlend_PointOnRst(const Handle_Adaptor2d_HCurve2d &A, const Standard_Real Param, const IntSurf_Transition &TLine, const IntSurf_Transition &TArc);
		%feature("autodoc", "1");
		void SetArc(const Handle_Adaptor2d_HCurve2d &A, const Standard_Real Param, const IntSurf_Transition &TLine, const IntSurf_Transition &TArc);
		%feature("autodoc", "1");
		const Handle_Adaptor2d_HCurve2d & Arc() const;
		%feature("autodoc", "1");
		const IntSurf_Transition & TransitionOnLine() const;
		%feature("autodoc", "1");
		const IntSurf_Transition & TransitionOnArc() const;
		%feature("autodoc", "1");
		Standard_Real ParameterOnArc() const;

};
%feature("shadow") BRepBlend_PointOnRst::~BRepBlend_PointOnRst %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepBlend_PointOnRst {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepBlend_SequenceNodeOfSequenceOfLine;
class BRepBlend_SequenceNodeOfSequenceOfLine : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		BRepBlend_SequenceNodeOfSequenceOfLine(const Handle_BRepBlend_Line &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_BRepBlend_Line & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepBlend_SequenceNodeOfSequenceOfLine {
	Handle_BRepBlend_SequenceNodeOfSequenceOfLine GetHandle() {
	return *(Handle_BRepBlend_SequenceNodeOfSequenceOfLine*) &$self;
	}
};
%extend BRepBlend_SequenceNodeOfSequenceOfLine {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BRepBlend_SequenceNodeOfSequenceOfLine::~BRepBlend_SequenceNodeOfSequenceOfLine %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepBlend_SequenceNodeOfSequenceOfLine {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepBlend_SurfCurvEvolRadInv;
class BRepBlend_SurfCurvEvolRadInv : public Blend_SurfCurvFuncInv {
	public:
		%feature("autodoc", "1");
		BRepBlend_SurfCurvEvolRadInv(const Handle_Adaptor3d_HSurface &S, const Handle_Adaptor3d_HCurve &C, const Handle_Adaptor3d_HCurve &Cg, const Handle_Law_Function &Evol);
		%feature("autodoc", "1");
		void Set(const Standard_Integer Choix);
		%feature("autodoc", "1");
		virtual		Standard_Integer NbEquations() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Value(const math_Vector &X, math_Vector & F);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Derivatives(const math_Vector &X, math_Matrix & D);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Values(const math_Vector &X, math_Vector & F, math_Matrix & D);
		%feature("autodoc", "1");
		virtual		void Set(const Handle_Adaptor2d_HCurve2d &Rst);
		%feature("autodoc", "1");
		virtual		void GetTolerance(math_Vector & Tolerance, const Standard_Real Tol) const;
		%feature("autodoc", "1");
		virtual		void GetBounds(math_Vector & InfBound, math_Vector & SupBound) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsSolution(const math_Vector &Sol, const Standard_Real Tol);

};
%feature("shadow") BRepBlend_SurfCurvEvolRadInv::~BRepBlend_SurfCurvEvolRadInv %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepBlend_SurfCurvEvolRadInv {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepBlend_SurfRstLineBuilder;
class BRepBlend_SurfRstLineBuilder {
	public:
		%feature("autodoc", "1");
		BRepBlend_SurfRstLineBuilder(const Handle_Adaptor3d_HSurface &Surf1, const Handle_Adaptor3d_TopolTool &Domain1, const Handle_Adaptor3d_HSurface &Surf2, const Handle_Adaptor2d_HCurve2d &Rst, const Handle_Adaptor3d_TopolTool &Domain2);
		%feature("autodoc", "1");
		void Perform(Blend_SurfRstFunction & Func, Blend_FuncInv & Finv, Blend_SurfPointFuncInv & FinvP, Blend_SurfCurvFuncInv & FinvC, const Standard_Real Pdep, const Standard_Real Pmax, const Standard_Real MaxStep, const Standard_Real TolGuide, const math_Vector &Soldep, const Standard_Real Tolesp, const Standard_Real Fleche, const Standard_Boolean Appro=0);
		%feature("autodoc","PerformFirstSection(Standard_Real Pdep, Standard_Real Pmax, const Soldep, Standard_Real Tolesp, Standard_Real TolGuide, Standard_Boolean RecRst, Standard_Boolean RecP, Standard_Boolean RecS) -> Standard_Real");
		Standard_Boolean PerformFirstSection(Blend_SurfRstFunction & Func, Blend_FuncInv & Finv, Blend_SurfPointFuncInv & FinvP, Blend_SurfCurvFuncInv & FinvC, const Standard_Real Pdep, const Standard_Real Pmax, const math_Vector &Soldep, const Standard_Real Tolesp, const Standard_Real TolGuide, const Standard_Boolean RecRst, const Standard_Boolean RecP, const Standard_Boolean RecS, Standard_Real &OutValue, math_Vector & ParSol);
		%feature("autodoc", "1");
		Standard_Boolean Complete(Blend_SurfRstFunction & Func, Blend_FuncInv & Finv, Blend_SurfPointFuncInv & FinvP, Blend_SurfCurvFuncInv & FinvC, const Standard_Real Pmin);
		%feature("autodoc","ArcToRecadre(const Sol, Standard_Integer PrevIndex) -> Standard_Real");
		Standard_Integer ArcToRecadre(const math_Vector &Sol, const Standard_Integer PrevIndex, gp_Pnt2d & pt2d, gp_Pnt2d & lastpt2d, Standard_Real &OutValue);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		const Handle_BRepBlend_Line & Line() const;
		%feature("autodoc", "1");
		Standard_Boolean DecrochStart() const;
		%feature("autodoc", "1");
		Standard_Boolean DecrochEnd() const;

};
%feature("shadow") BRepBlend_SurfRstLineBuilder::~BRepBlend_SurfRstLineBuilder %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepBlend_SurfRstLineBuilder {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepBlend_SequenceOfPointOnRst;
class BRepBlend_SequenceOfPointOnRst : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		BRepBlend_SequenceOfPointOnRst();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const BRepBlend_SequenceOfPointOnRst & Assign(const BRepBlend_SequenceOfPointOnRst &Other);
		%feature("autodoc", "1");
		const BRepBlend_SequenceOfPointOnRst & operator=(const BRepBlend_SequenceOfPointOnRst &Other);
		%feature("autodoc", "1");
		void Append(const BRepBlend_PointOnRst &T);
		%feature("autodoc", "1");
		void Append(BRepBlend_SequenceOfPointOnRst & S);
		%feature("autodoc", "1");
		void Prepend(const BRepBlend_PointOnRst &T);
		%feature("autodoc", "1");
		void Prepend(BRepBlend_SequenceOfPointOnRst & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const BRepBlend_PointOnRst &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, BRepBlend_SequenceOfPointOnRst & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const BRepBlend_PointOnRst &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, BRepBlend_SequenceOfPointOnRst & S);
		%feature("autodoc", "1");
		const BRepBlend_PointOnRst & First() const;
		%feature("autodoc", "1");
		const BRepBlend_PointOnRst & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, BRepBlend_SequenceOfPointOnRst & S);
		%feature("autodoc", "1");
		const BRepBlend_PointOnRst & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const BRepBlend_PointOnRst & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const BRepBlend_PointOnRst &I);
		%feature("autodoc", "1");
		BRepBlend_PointOnRst & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		BRepBlend_PointOnRst & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") BRepBlend_SequenceOfPointOnRst::~BRepBlend_SequenceOfPointOnRst %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepBlend_SequenceOfPointOnRst {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepBlend_BlendTool;
class BRepBlend_BlendTool {
	public:
		%feature("autodoc", "1");
		BRepBlend_BlendTool();
		%feature("autodoc","Project(const P, const S, const C) -> [Standard_RealStandard_Real]");
		Standard_Boolean Project(const gp_Pnt2d &P, const Handle_Adaptor3d_HSurface &S, const Handle_Adaptor2d_HCurve2d &C, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc","Inters(const P1, const P2, const S, const C) -> [Standard_RealStandard_Real]");
		Standard_Boolean Inters(const gp_Pnt2d &P1, const gp_Pnt2d &P2, const Handle_Adaptor3d_HSurface &S, const Handle_Adaptor2d_HCurve2d &C, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		Standard_Real Parameter(const Handle_Adaptor3d_HVertex &V, const Handle_Adaptor2d_HCurve2d &C);
		%feature("autodoc", "1");
		Standard_Real Tolerance(const Handle_Adaptor3d_HVertex &V, const Handle_Adaptor2d_HCurve2d &A);
		%feature("autodoc", "1");
		Standard_Integer NbSamplesU(const Handle_Adaptor3d_HSurface &S, const Standard_Real u1, const Standard_Real u2);
		%feature("autodoc", "1");
		Standard_Integer NbSamplesV(const Handle_Adaptor3d_HSurface &S, const Standard_Real v1, const Standard_Real v2);
		%feature("autodoc","Bounds(const C) -> [Standard_RealStandard_Real]");
		void Bounds(const Handle_Adaptor2d_HCurve2d &C, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		Handle_Adaptor2d_HCurve2d CurveOnSurf(const Handle_Adaptor2d_HCurve2d &C, const Handle_Adaptor3d_HSurface &arg1);

};
%feature("shadow") BRepBlend_BlendTool::~BRepBlend_BlendTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepBlend_BlendTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepBlend_RstRstLineBuilder;
class BRepBlend_RstRstLineBuilder {
	public:
		%feature("autodoc", "1");
		BRepBlend_RstRstLineBuilder(const Handle_Adaptor3d_HSurface &Surf1, const Handle_Adaptor2d_HCurve2d &Rst1, const Handle_Adaptor3d_TopolTool &Domain1, const Handle_Adaptor3d_HSurface &Surf2, const Handle_Adaptor2d_HCurve2d &Rst2, const Handle_Adaptor3d_TopolTool &Domain2);
		%feature("autodoc", "1");
		void Perform(Blend_RstRstFunction & Func, Blend_SurfCurvFuncInv & Finv1, Blend_CurvPointFuncInv & FinvP1, Blend_SurfCurvFuncInv & Finv2, Blend_CurvPointFuncInv & FinvP2, const Standard_Real Pdep, const Standard_Real Pmax, const Standard_Real MaxStep, const Standard_Real TolGuide, const math_Vector &Soldep, const Standard_Real Tolesp, const Standard_Real Fleche, const Standard_Boolean Appro=0);
		%feature("autodoc","PerformFirstSection(Standard_Real Pdep, Standard_Real Pmax, const Soldep, Standard_Real Tolesp, Standard_Real TolGuide, Standard_Boolean RecRst1, Standard_Boolean RecP1, Standard_Boolean RecRst2, Standard_Boolean RecP2) -> Standard_Real");
		Standard_Boolean PerformFirstSection(Blend_RstRstFunction & Func, Blend_SurfCurvFuncInv & Finv1, Blend_CurvPointFuncInv & FinvP1, Blend_SurfCurvFuncInv & Finv2, Blend_CurvPointFuncInv & FinvP2, const Standard_Real Pdep, const Standard_Real Pmax, const math_Vector &Soldep, const Standard_Real Tolesp, const Standard_Real TolGuide, const Standard_Boolean RecRst1, const Standard_Boolean RecP1, const Standard_Boolean RecRst2, const Standard_Boolean RecP2, Standard_Real &OutValue, math_Vector & ParSol);
		%feature("autodoc", "1");
		Standard_Boolean Complete(Blend_RstRstFunction & Func, Blend_SurfCurvFuncInv & Finv1, Blend_CurvPointFuncInv & FinvP1, Blend_SurfCurvFuncInv & Finv2, Blend_CurvPointFuncInv & FinvP2, const Standard_Real Pmin);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		const Handle_BRepBlend_Line & Line() const;
		%feature("autodoc", "1");
		Standard_Boolean Decroch1Start() const;
		%feature("autodoc", "1");
		Standard_Boolean Decroch1End() const;
		%feature("autodoc", "1");
		Standard_Boolean Decroch2Start() const;
		%feature("autodoc", "1");
		Standard_Boolean Decroch2End() const;

};
%feature("shadow") BRepBlend_RstRstLineBuilder::~BRepBlend_RstRstLineBuilder %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepBlend_RstRstLineBuilder {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepBlend_Walking;
class BRepBlend_Walking {
	public:
		%feature("autodoc", "1");
		BRepBlend_Walking(const Handle_Adaptor3d_HSurface &Surf1, const Handle_Adaptor3d_HSurface &Surf2, const Handle_Adaptor3d_TopolTool &Domain1, const Handle_Adaptor3d_TopolTool &Domain2);
		%feature("autodoc", "1");
		void SetDomainsToRecadre(const Handle_Adaptor3d_TopolTool &RecDomain1, const Handle_Adaptor3d_TopolTool &RecDomain2);
		%feature("autodoc", "1");
		void AddSingularPoint(const Blend_Point &P);
		%feature("autodoc", "1");
		void Perform(Blend_Function & F, Blend_FuncInv & FInv, const Standard_Real Pdep, const Standard_Real Pmax, const Standard_Real MaxStep, const Standard_Real TolGuide, const math_Vector &Soldep, const Standard_Real Tolesp, const Standard_Real Fleche, const Standard_Boolean Appro=0);
		%feature("autodoc", "1");
		Standard_Boolean PerformFirstSection(Blend_Function & F, const Standard_Real Pdep, math_Vector & ParDep, const Standard_Real Tolesp, const Standard_Real TolGuide, TopAbs_State & Pos1, TopAbs_State & Pos2);
		%feature("autodoc","PerformFirstSection(Standard_Real Pdep, Standard_Real Pmax, const ParDep, Standard_Real Tolesp, Standard_Real TolGuide, Standard_Boolean RecOnS1, Standard_Boolean RecOnS2) -> Standard_Real");
		Standard_Boolean PerformFirstSection(Blend_Function & F, Blend_FuncInv & FInv, const Standard_Real Pdep, const Standard_Real Pmax, const math_Vector &ParDep, const Standard_Real Tolesp, const Standard_Real TolGuide, const Standard_Boolean RecOnS1, const Standard_Boolean RecOnS2, Standard_Real &OutValue, math_Vector & ParSol);
		%feature("autodoc", "1");
		Standard_Boolean Continu(Blend_Function & F, Blend_FuncInv & FInv, const Standard_Real P);
		%feature("autodoc", "1");
		Standard_Boolean Continu(Blend_Function & F, Blend_FuncInv & FInv, const Standard_Real P, const Standard_Boolean OnS1);
		%feature("autodoc", "1");
		Standard_Boolean Complete(Blend_Function & F, Blend_FuncInv & FInv, const Standard_Real Pmin);
		%feature("autodoc", "1");
		void ClassificationOnS1(const Standard_Boolean C);
		%feature("autodoc", "1");
		void ClassificationOnS2(const Standard_Boolean C);
		%feature("autodoc", "1");
		void Check2d(const Standard_Boolean C);
		%feature("autodoc", "1");
		void Check(const Standard_Boolean C);
		%feature("autodoc", "1");
		Standard_Boolean TwistOnS1() const;
		%feature("autodoc", "1");
		Standard_Boolean TwistOnS2() const;
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		const Handle_BRepBlend_Line & Line() const;

};
%feature("shadow") BRepBlend_Walking::~BRepBlend_Walking %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepBlend_Walking {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepBlend_EvolRad;
class BRepBlend_EvolRad : public Blend_Function {
	public:
		%feature("autodoc", "1");
		BRepBlend_EvolRad(const Handle_Adaptor3d_HSurface &S1, const Handle_Adaptor3d_HSurface &S2, const Handle_Adaptor3d_HCurve &C, const Handle_Law_Function &Law);
		%feature("autodoc", "1");
		virtual		Standard_Integer NbEquations() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Value(const math_Vector &X, math_Vector & F);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Derivatives(const math_Vector &X, math_Matrix & D);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Values(const math_Vector &X, math_Vector & F, math_Matrix & D);
		%feature("autodoc", "1");
		virtual		void Set(const Standard_Real Param);
		%feature("autodoc", "1");
		virtual		void Set(const Standard_Real First, const Standard_Real Last);
		%feature("autodoc", "1");
		virtual		void GetTolerance(math_Vector & Tolerance, const Standard_Real Tol) const;
		%feature("autodoc", "1");
		virtual		void GetBounds(math_Vector & InfBound, math_Vector & SupBound) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsSolution(const math_Vector &Sol, const Standard_Real Tol);
		%feature("autodoc", "1");
		virtual		Standard_Real GetMinimalDistance() const;
		%feature("autodoc", "1");
		virtual		const gp_Pnt & PointOnS1() const;
		%feature("autodoc", "1");
		virtual		const gp_Pnt & PointOnS2() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsTangencyPoint() const;
		%feature("autodoc", "1");
		virtual		const gp_Vec & TangentOnS1() const;
		%feature("autodoc", "1");
		virtual		const gp_Vec2d & Tangent2dOnS1() const;
		%feature("autodoc", "1");
		virtual		const gp_Vec & TangentOnS2() const;
		%feature("autodoc", "1");
		virtual		const gp_Vec2d & Tangent2dOnS2() const;
		%feature("autodoc", "1");
		virtual		void Tangent(const Standard_Real U1, const Standard_Real V1, const Standard_Real U2, const Standard_Real V2, gp_Vec & TgFirst, gp_Vec & TgLast, gp_Vec & NormFirst, gp_Vec & NormLast) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean TwistOnS1() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean TwistOnS2() const;
		%feature("autodoc", "1");
		void Set(const Standard_Integer Choix);
		%feature("autodoc", "1");
		void Set(const BlendFunc_SectionShape TypeSection);
		%feature("autodoc","Section(Standard_Real Param, Standard_Real U1, Standard_Real V1, Standard_Real U2, Standard_Real V2) -> [Standard_RealStandard_Real]");
		void Section(const Standard_Real Param, const Standard_Real U1, const Standard_Real V1, const Standard_Real U2, const Standard_Real V2, Standard_Real &OutValue, Standard_Real &OutValue, gp_Circ & C);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsRational() const;
		%feature("autodoc", "1");
		virtual		Standard_Real GetSectionSize() const;
		%feature("autodoc", "1");
		virtual		void GetMinimalWeight(TColStd_Array1OfReal & Weigths) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbIntervals(const GeomAbs_Shape S) const;
		%feature("autodoc", "1");
		virtual		void Intervals(TColStd_Array1OfReal & T, const GeomAbs_Shape S) const;
		%feature("autodoc","GetShape() -> [Standard_Integer, Standard_Integer, Standard_Integer, Standard_Integer]");
		virtual		void GetShape(Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue);
		%feature("autodoc", "1");
		virtual		void GetTolerance(const Standard_Real BoundTol, const Standard_Real SurfTol, const Standard_Real AngleTol, math_Vector & Tol3d, math_Vector & Tol1D) const;
		%feature("autodoc", "1");
		virtual		void Knots(TColStd_Array1OfReal & TKnots);
		%feature("autodoc", "1");
		virtual		void Mults(TColStd_Array1OfInteger & TMults);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Section(const Blend_Point &P, TColgp_Array1OfPnt & Poles, TColgp_Array1OfVec & DPoles, TColgp_Array1OfVec & D2Poles, TColgp_Array1OfPnt2d & Poles2d, TColgp_Array1OfVec2d & DPoles2d, TColgp_Array1OfVec2d & D2Poles2d, TColStd_Array1OfReal & Weigths, TColStd_Array1OfReal & DWeigths, TColStd_Array1OfReal & D2Weigths);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Section(const Blend_Point &P, TColgp_Array1OfPnt & Poles, TColgp_Array1OfVec & DPoles, TColgp_Array1OfPnt2d & Poles2d, TColgp_Array1OfVec2d & DPoles2d, TColStd_Array1OfReal & Weigths, TColStd_Array1OfReal & DWeigths);
		%feature("autodoc", "1");
		virtual		void Section(const Blend_Point &P, TColgp_Array1OfPnt & Poles, TColgp_Array1OfPnt2d & Poles2d, TColStd_Array1OfReal & Weigths);
		%feature("autodoc","Resolution(Standard_Integer IC2d, Standard_Real Tol) -> [Standard_RealStandard_Real]");
		virtual		void Resolution(const Standard_Integer IC2d, const Standard_Real Tol, Standard_Real &OutValue, Standard_Real &OutValue) const;

};
%feature("shadow") BRepBlend_EvolRad::~BRepBlend_EvolRad %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepBlend_EvolRad {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepBlend_SurfRstEvolRad;
class BRepBlend_SurfRstEvolRad : public Blend_SurfRstFunction {
	public:
		%feature("autodoc", "1");
		BRepBlend_SurfRstEvolRad(const Handle_Adaptor3d_HSurface &Surf, const Handle_Adaptor3d_HSurface &SurfRst, const Handle_Adaptor2d_HCurve2d &Rst, const Handle_Adaptor3d_HCurve &CGuide, const Handle_Law_Function &Evol);
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
		void Set(const Handle_Adaptor3d_HSurface &SurfRef, const Handle_Adaptor2d_HCurve2d &RstRef);
		%feature("autodoc", "1");
		virtual		void Set(const Standard_Real Param);
		%feature("autodoc", "1");
		virtual		void Set(const Standard_Real First, const Standard_Real Last);
		%feature("autodoc", "1");
		virtual		void GetTolerance(math_Vector & Tolerance, const Standard_Real Tol) const;
		%feature("autodoc", "1");
		virtual		void GetBounds(math_Vector & InfBound, math_Vector & SupBound) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsSolution(const math_Vector &Sol, const Standard_Real Tol);
		%feature("autodoc", "1");
		virtual		Standard_Real GetMinimalDistance() const;
		%feature("autodoc", "1");
		virtual		const gp_Pnt & PointOnS() const;
		%feature("autodoc", "1");
		virtual		const gp_Pnt & PointOnRst() const;
		%feature("autodoc", "1");
		virtual		const gp_Pnt2d & Pnt2dOnS() const;
		%feature("autodoc", "1");
		virtual		const gp_Pnt2d & Pnt2dOnRst() const;
		%feature("autodoc", "1");
		virtual		Standard_Real ParameterOnRst() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsTangencyPoint() const;
		%feature("autodoc", "1");
		virtual		const gp_Vec & TangentOnS() const;
		%feature("autodoc", "1");
		virtual		const gp_Vec2d & Tangent2dOnS() const;
		%feature("autodoc", "1");
		virtual		const gp_Vec & TangentOnRst() const;
		%feature("autodoc", "1");
		virtual		const gp_Vec2d & Tangent2dOnRst() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Decroch(const math_Vector &Sol, gp_Vec & NS, gp_Vec & TgS) const;
		%feature("autodoc", "1");
		void Set(const Standard_Integer Choix);
		%feature("autodoc", "1");
		void Set(const BlendFunc_SectionShape TypeSection);
		%feature("autodoc","Section(Standard_Real Param, Standard_Real U, Standard_Real V, Standard_Real W) -> [Standard_RealStandard_Real]");
		void Section(const Standard_Real Param, const Standard_Real U, const Standard_Real V, const Standard_Real W, Standard_Real &OutValue, Standard_Real &OutValue, gp_Circ & C);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsRational() const;
		%feature("autodoc", "1");
		virtual		Standard_Real GetSectionSize() const;
		%feature("autodoc", "1");
		virtual		void GetMinimalWeight(TColStd_Array1OfReal & Weigths) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbIntervals(const GeomAbs_Shape S) const;
		%feature("autodoc", "1");
		virtual		void Intervals(TColStd_Array1OfReal & T, const GeomAbs_Shape S) const;
		%feature("autodoc","GetShape() -> [Standard_Integer, Standard_Integer, Standard_Integer, Standard_Integer]");
		virtual		void GetShape(Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue);
		%feature("autodoc", "1");
		virtual		void GetTolerance(const Standard_Real BoundTol, const Standard_Real SurfTol, const Standard_Real AngleTol, math_Vector & Tol3d, math_Vector & Tol1D) const;
		%feature("autodoc", "1");
		virtual		void Knots(TColStd_Array1OfReal & TKnots);
		%feature("autodoc", "1");
		virtual		void Mults(TColStd_Array1OfInteger & TMults);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Section(const Blend_Point &P, TColgp_Array1OfPnt & Poles, TColgp_Array1OfVec & DPoles, TColgp_Array1OfPnt2d & Poles2d, TColgp_Array1OfVec2d & DPoles2d, TColStd_Array1OfReal & Weigths, TColStd_Array1OfReal & DWeigths);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Section(const Blend_Point &P, TColgp_Array1OfPnt & Poles, TColgp_Array1OfVec & DPoles, TColgp_Array1OfVec & D2Poles, TColgp_Array1OfPnt2d & Poles2d, TColgp_Array1OfVec2d & DPoles2d, TColgp_Array1OfVec2d & D2Poles2d, TColStd_Array1OfReal & Weigths, TColStd_Array1OfReal & DWeigths, TColStd_Array1OfReal & D2Weigths);
		%feature("autodoc", "1");
		virtual		void Section(const Blend_Point &P, TColgp_Array1OfPnt & Poles, TColgp_Array1OfPnt2d & Poles2d, TColStd_Array1OfReal & Weigths);
		%feature("autodoc","Resolution(Standard_Integer IC2d, Standard_Real Tol) -> [Standard_RealStandard_Real]");
		virtual		void Resolution(const Standard_Integer IC2d, const Standard_Real Tol, Standard_Real &OutValue, Standard_Real &OutValue) const;

};
%feature("shadow") BRepBlend_SurfRstEvolRad::~BRepBlend_SurfRstEvolRad %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepBlend_SurfRstEvolRad {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepBlend_SurfCurvConstRadInv;
class BRepBlend_SurfCurvConstRadInv : public Blend_SurfCurvFuncInv {
	public:
		%feature("autodoc", "1");
		BRepBlend_SurfCurvConstRadInv(const Handle_Adaptor3d_HSurface &S, const Handle_Adaptor3d_HCurve &C, const Handle_Adaptor3d_HCurve &Cg);
		%feature("autodoc", "1");
		void Set(const Standard_Real R, const Standard_Integer Choix);
		%feature("autodoc", "1");
		virtual		Standard_Integer NbEquations() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Value(const math_Vector &X, math_Vector & F);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Derivatives(const math_Vector &X, math_Matrix & D);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Values(const math_Vector &X, math_Vector & F, math_Matrix & D);
		%feature("autodoc", "1");
		virtual		void Set(const Handle_Adaptor2d_HCurve2d &Rst);
		%feature("autodoc", "1");
		virtual		void GetTolerance(math_Vector & Tolerance, const Standard_Real Tol) const;
		%feature("autodoc", "1");
		virtual		void GetBounds(math_Vector & InfBound, math_Vector & SupBound) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsSolution(const math_Vector &Sol, const Standard_Real Tol);

};
%feature("shadow") BRepBlend_SurfCurvConstRadInv::~BRepBlend_SurfCurvConstRadInv %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepBlend_SurfCurvConstRadInv {
	void _kill_pointed() {
		delete $self;
	}
};
