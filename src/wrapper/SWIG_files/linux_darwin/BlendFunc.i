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

%module BlendFunc
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include BlendFunc_renames.i


%include BlendFunc_required_python_modules.i


%include BlendFunc_dependencies.i


%include BlendFunc_headers.i


enum BlendFunc_SectionShape {
	BlendFunc_Rational,
	BlendFunc_QuasiAngular,
	BlendFunc_Polynomial,
	BlendFunc_Linear,
	};



%nodefaultctor BlendFunc_Chamfer;
class BlendFunc_Chamfer : public Blend_Function {
	public:
		%feature("autodoc", "1");
		BlendFunc_Chamfer(const Handle_Adaptor3d_HSurface &S1, const Handle_Adaptor3d_HSurface &S2, const Handle_Adaptor3d_HCurve &CG);
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
		virtual		const gp_Pnt  PointOnS1() const;
		%feature("autodoc", "1");
		virtual		const gp_Pnt  PointOnS2() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsTangencyPoint() const;
		%feature("autodoc", "1");
		virtual		const gp_Vec  TangentOnS1() const;
		%feature("autodoc", "1");
		virtual		const gp_Vec2d  Tangent2dOnS1() const;
		%feature("autodoc", "1");
		virtual		const gp_Vec  TangentOnS2() const;
		%feature("autodoc", "1");
		virtual		const gp_Vec2d  Tangent2dOnS2() const;
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
		%feature("autodoc","Section(Standard_Real Param, Standard_Real U1, Standard_Real V1, Standard_Real U2, Standard_Real V2) -> [Standard_Real, Standard_Real]");

		void Section(const Standard_Real Param, const Standard_Real U1, const Standard_Real V1, const Standard_Real U2, const Standard_Real V2, Standard_Real &OutValue, Standard_Real &OutValue, gp_Lin & C);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Section(const Blend_Point &P, TColgp_Array1OfPnt & Poles, TColgp_Array1OfVec & DPoles, TColgp_Array1OfVec & D2Poles, TColgp_Array1OfPnt2d & Poles2d, TColgp_Array1OfVec2d & DPoles2d, TColgp_Array1OfVec2d & D2Poles2d, TColStd_Array1OfReal & Weigths, TColStd_Array1OfReal & DWeigths, TColStd_Array1OfReal & D2Weigths);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Section(const Blend_Point &P, TColgp_Array1OfPnt & Poles, TColgp_Array1OfVec & DPoles, TColgp_Array1OfPnt2d & Poles2d, TColgp_Array1OfVec2d & DPoles2d, TColStd_Array1OfReal & Weigths, TColStd_Array1OfReal & DWeigths);
		%feature("autodoc", "1");
		virtual		void Section(const Blend_Point &P, TColgp_Array1OfPnt & Poles, TColgp_Array1OfPnt2d & Poles2d, TColStd_Array1OfReal & Weigths);
		%feature("autodoc","Resolution(Standard_Integer IC2d, Standard_Real Tol) -> [Standard_Real, Standard_Real]");

		virtual		void Resolution(const Standard_Integer IC2d, const Standard_Real Tol, Standard_Real &OutValue, Standard_Real &OutValue) const;

};
%feature("shadow") BlendFunc_Chamfer::~BlendFunc_Chamfer %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BlendFunc_Chamfer {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BlendFunc_ChamfInv;
class BlendFunc_ChamfInv : public Blend_FuncInv {
	public:
		%feature("autodoc", "1");
		BlendFunc_ChamfInv(const Handle_Adaptor3d_HSurface &S1, const Handle_Adaptor3d_HSurface &S2, const Handle_Adaptor3d_HCurve &C);
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
%feature("shadow") BlendFunc_ChamfInv::~BlendFunc_ChamfInv %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BlendFunc_ChamfInv {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BlendFunc_ChAsym;
class BlendFunc_ChAsym : public Blend_Function {
	public:
		%feature("autodoc", "1");
		BlendFunc_ChAsym(const Handle_Adaptor3d_HSurface &S1, const Handle_Adaptor3d_HSurface &S2, const Handle_Adaptor3d_HCurve &C);
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
		virtual		const gp_Pnt  PointOnS1() const;
		%feature("autodoc", "1");
		virtual		const gp_Pnt  PointOnS2() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsTangencyPoint() const;
		%feature("autodoc", "1");
		virtual		const gp_Vec  TangentOnS1() const;
		%feature("autodoc", "1");
		virtual		const gp_Vec2d  Tangent2dOnS1() const;
		%feature("autodoc", "1");
		virtual		const gp_Vec  TangentOnS2() const;
		%feature("autodoc", "1");
		virtual		const gp_Vec2d  Tangent2dOnS2() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean TwistOnS1() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean TwistOnS2() const;
		%feature("autodoc", "1");
		virtual		void Tangent(const Standard_Real U1, const Standard_Real V1, const Standard_Real U2, const Standard_Real V2, gp_Vec & TgFirst, gp_Vec & TgLast, gp_Vec & NormFirst, gp_Vec & NormLast) const;
		%feature("autodoc","Section(Standard_Real Param, Standard_Real U1, Standard_Real V1, Standard_Real U2, Standard_Real V2) -> [Standard_Real, Standard_Real]");

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
		%feature("autodoc","Resolution(Standard_Integer IC2d, Standard_Real Tol) -> [Standard_Real, Standard_Real]");

		virtual		void Resolution(const Standard_Integer IC2d, const Standard_Real Tol, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		void Set(const Standard_Real Dist1, const Standard_Real Angle, const Standard_Integer Choix);

};
%feature("shadow") BlendFunc_ChAsym::~BlendFunc_ChAsym %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BlendFunc_ChAsym {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BlendFunc_CSCircular;
class BlendFunc_CSCircular : public Blend_CSFunction {
	public:
		%feature("autodoc", "1");
		BlendFunc_CSCircular(const Handle_Adaptor3d_HSurface &S, const Handle_Adaptor3d_HCurve &C, const Handle_Adaptor3d_HCurve &CGuide, const Handle_Law_Function &L);
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
		virtual		const gp_Pnt  PointOnS() const;
		%feature("autodoc", "1");
		virtual		const gp_Pnt  PointOnC() const;
		%feature("autodoc", "1");
		virtual		const gp_Pnt2d  Pnt2d() const;
		%feature("autodoc", "1");
		virtual		Standard_Real ParameterOnC() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsTangencyPoint() const;
		%feature("autodoc", "1");
		virtual		const gp_Vec  TangentOnS() const;
		%feature("autodoc", "1");
		virtual		const gp_Vec2d  Tangent2d() const;
		%feature("autodoc", "1");
		virtual		const gp_Vec  TangentOnC() const;
		%feature("autodoc", "1");
		virtual		void Tangent(const Standard_Real U, const Standard_Real V, gp_Vec & TgS, gp_Vec & NormS) const;
		%feature("autodoc", "1");
		void Set(const Standard_Real Radius, const Standard_Integer Choix);
		%feature("autodoc", "1");
		void Set(const BlendFunc_SectionShape TypeSection);
		%feature("autodoc","Section(Standard_Real Param, Standard_Real U, Standard_Real V, Standard_Real W) -> [Standard_Real, Standard_Real]");

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
		%feature("autodoc","Resolution(Standard_Integer IC2d, Standard_Real Tol) -> [Standard_Real, Standard_Real]");

		virtual		void Resolution(const Standard_Integer IC2d, const Standard_Real Tol, Standard_Real &OutValue, Standard_Real &OutValue) const;

};
%feature("shadow") BlendFunc_CSCircular::~BlendFunc_CSCircular %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BlendFunc_CSCircular {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BlendFunc;
class BlendFunc {
	public:
		%feature("autodoc", "1");
		BlendFunc();
		%feature("autodoc","GetShape(BlendFunc_SectionShape SectShape, Standard_Real MaxAng) -> [Standard_Integer, Standard_Integer, Standard_Integer]");

		static		void GetShape(const BlendFunc_SectionShape SectShape, const Standard_Real MaxAng, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue, Convert_ParameterisationType & TypeConv);
		%feature("autodoc", "1");
		static		void GetMinimalWeights(const BlendFunc_SectionShape SectShape, const Convert_ParameterisationType TConv, const Standard_Real AngleMin, const Standard_Real AngleMax, TColStd_Array1OfReal & Weigths);
		%feature("autodoc", "1");
		static		GeomAbs_Shape NextShape(const GeomAbs_Shape S);
		%feature("autodoc", "1");
		static		Standard_Boolean ComputeNormal(const Handle_Adaptor3d_HSurface &Surf, const gp_Pnt2d p2d, gp_Vec & Normal);
		%feature("autodoc", "1");
		static		Standard_Boolean ComputeDNormal(const Handle_Adaptor3d_HSurface &Surf, const gp_Pnt2d p2d, gp_Vec & Normal, gp_Vec & DNu, gp_Vec & DNv);

};
%feature("shadow") BlendFunc::~BlendFunc %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BlendFunc {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BlendFunc_Corde;
class BlendFunc_Corde {
	public:
		%feature("autodoc", "1");
		BlendFunc_Corde(const Handle_Adaptor3d_HSurface &S, const Handle_Adaptor3d_HCurve &CGuide);
		%feature("autodoc", "1");
		void SetParam(const Standard_Real Param);
		%feature("autodoc", "1");
		void SetDist(const Standard_Real Dist);
		%feature("autodoc", "1");
		Standard_Boolean Value(const math_Vector &X, math_Vector & F);
		%feature("autodoc", "1");
		Standard_Boolean Derivatives(const math_Vector &X, math_Matrix & D);
		%feature("autodoc", "1");
		const gp_Pnt  PointOnS() const;
		%feature("autodoc", "1");
		const gp_Pnt  PointOnGuide() const;
		%feature("autodoc", "1");
		const gp_Vec  NPlan() const;
		%feature("autodoc", "1");
		Standard_Boolean IsTangencyPoint() const;
		%feature("autodoc", "1");
		const gp_Vec  TangentOnS() const;
		%feature("autodoc", "1");
		const gp_Vec2d  Tangent2dOnS() const;
		%feature("autodoc", "1");
		void DerFguide(const math_Vector &Sol, gp_Vec2d & DerF);
		%feature("autodoc", "1");
		Standard_Boolean IsSolution(const math_Vector &Sol, const Standard_Real Tol);

};
%feature("shadow") BlendFunc_Corde::~BlendFunc_Corde %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BlendFunc_Corde {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BlendFunc_EvolRad;
class BlendFunc_EvolRad : public Blend_Function {
	public:
		%feature("autodoc", "1");
		BlendFunc_EvolRad(const Handle_Adaptor3d_HSurface &S1, const Handle_Adaptor3d_HSurface &S2, const Handle_Adaptor3d_HCurve &C, const Handle_Law_Function &Law);
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
		virtual		const gp_Pnt  PointOnS1() const;
		%feature("autodoc", "1");
		virtual		const gp_Pnt  PointOnS2() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsTangencyPoint() const;
		%feature("autodoc", "1");
		virtual		const gp_Vec  TangentOnS1() const;
		%feature("autodoc", "1");
		virtual		const gp_Vec2d  Tangent2dOnS1() const;
		%feature("autodoc", "1");
		virtual		const gp_Vec  TangentOnS2() const;
		%feature("autodoc", "1");
		virtual		const gp_Vec2d  Tangent2dOnS2() const;
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
		%feature("autodoc","Section(Standard_Real Param, Standard_Real U1, Standard_Real V1, Standard_Real U2, Standard_Real V2) -> [Standard_Real, Standard_Real]");

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
		%feature("autodoc","Resolution(Standard_Integer IC2d, Standard_Real Tol) -> [Standard_Real, Standard_Real]");

		virtual		void Resolution(const Standard_Integer IC2d, const Standard_Real Tol, Standard_Real &OutValue, Standard_Real &OutValue) const;

};
%feature("shadow") BlendFunc_EvolRad::~BlendFunc_EvolRad %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BlendFunc_EvolRad {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BlendFunc_EvolRadInv;
class BlendFunc_EvolRadInv : public Blend_FuncInv {
	public:
		%feature("autodoc", "1");
		BlendFunc_EvolRadInv(const Handle_Adaptor3d_HSurface &S1, const Handle_Adaptor3d_HSurface &S2, const Handle_Adaptor3d_HCurve &C, const Handle_Law_Function &Law);
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
%feature("shadow") BlendFunc_EvolRadInv::~BlendFunc_EvolRadInv %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BlendFunc_EvolRadInv {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BlendFunc_ConstRadInv;
class BlendFunc_ConstRadInv : public Blend_FuncInv {
	public:
		%feature("autodoc", "1");
		BlendFunc_ConstRadInv(const Handle_Adaptor3d_HSurface &S1, const Handle_Adaptor3d_HSurface &S2, const Handle_Adaptor3d_HCurve &C);
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
%feature("shadow") BlendFunc_ConstRadInv::~BlendFunc_ConstRadInv %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BlendFunc_ConstRadInv {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BlendFunc_RuledInv;
class BlendFunc_RuledInv : public Blend_FuncInv {
	public:
		%feature("autodoc", "1");
		BlendFunc_RuledInv(const Handle_Adaptor3d_HSurface &S1, const Handle_Adaptor3d_HSurface &S2, const Handle_Adaptor3d_HCurve &C);
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
%feature("shadow") BlendFunc_RuledInv::~BlendFunc_RuledInv %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BlendFunc_RuledInv {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BlendFunc_ConstRad;
class BlendFunc_ConstRad : public Blend_Function {
	public:
		%feature("autodoc", "1");
		BlendFunc_ConstRad(const Handle_Adaptor3d_HSurface &S1, const Handle_Adaptor3d_HSurface &S2, const Handle_Adaptor3d_HCurve &C);
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
		virtual		const gp_Pnt  PointOnS1() const;
		%feature("autodoc", "1");
		virtual		const gp_Pnt  PointOnS2() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsTangencyPoint() const;
		%feature("autodoc", "1");
		virtual		const gp_Vec  TangentOnS1() const;
		%feature("autodoc", "1");
		virtual		const gp_Vec2d  Tangent2dOnS1() const;
		%feature("autodoc", "1");
		virtual		const gp_Vec  TangentOnS2() const;
		%feature("autodoc", "1");
		virtual		const gp_Vec2d  Tangent2dOnS2() const;
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
		%feature("autodoc","Section(Standard_Real Param, Standard_Real U1, Standard_Real V1, Standard_Real U2, Standard_Real V2) -> [Standard_Real, Standard_Real]");

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
		%feature("autodoc","Resolution(Standard_Integer IC2d, Standard_Real Tol) -> [Standard_Real, Standard_Real]");

		virtual		void Resolution(const Standard_Integer IC2d, const Standard_Real Tol, Standard_Real &OutValue, Standard_Real &OutValue) const;

};
%feature("shadow") BlendFunc_ConstRad::~BlendFunc_ConstRad %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BlendFunc_ConstRad {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BlendFunc_Ruled;
class BlendFunc_Ruled : public Blend_Function {
	public:
		%feature("autodoc", "1");
		BlendFunc_Ruled(const Handle_Adaptor3d_HSurface &S1, const Handle_Adaptor3d_HSurface &S2, const Handle_Adaptor3d_HCurve &C);
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
		virtual		const gp_Pnt  PointOnS1() const;
		%feature("autodoc", "1");
		virtual		const gp_Pnt  PointOnS2() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsTangencyPoint() const;
		%feature("autodoc", "1");
		virtual		const gp_Vec  TangentOnS1() const;
		%feature("autodoc", "1");
		virtual		const gp_Vec2d  Tangent2dOnS1() const;
		%feature("autodoc", "1");
		virtual		const gp_Vec  TangentOnS2() const;
		%feature("autodoc", "1");
		virtual		const gp_Vec2d  Tangent2dOnS2() const;
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
		%feature("autodoc","Resolution(Standard_Integer IC2d, Standard_Real Tol) -> [Standard_Real, Standard_Real]");

		virtual		void Resolution(const Standard_Integer IC2d, const Standard_Real Tol, Standard_Real &OutValue, Standard_Real &OutValue) const;

};
%feature("shadow") BlendFunc_Ruled::~BlendFunc_Ruled %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BlendFunc_Ruled {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BlendFunc_CSConstRad;
class BlendFunc_CSConstRad : public Blend_CSFunction {
	public:
		%feature("autodoc", "1");
		BlendFunc_CSConstRad(const Handle_Adaptor3d_HSurface &S, const Handle_Adaptor3d_HCurve &C, const Handle_Adaptor3d_HCurve &CGuide);
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
		virtual		const gp_Pnt  PointOnS() const;
		%feature("autodoc", "1");
		virtual		const gp_Pnt  PointOnC() const;
		%feature("autodoc", "1");
		virtual		const gp_Pnt2d  Pnt2d() const;
		%feature("autodoc", "1");
		virtual		Standard_Real ParameterOnC() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsTangencyPoint() const;
		%feature("autodoc", "1");
		virtual		const gp_Vec  TangentOnS() const;
		%feature("autodoc", "1");
		virtual		const gp_Vec2d  Tangent2d() const;
		%feature("autodoc", "1");
		virtual		const gp_Vec  TangentOnC() const;
		%feature("autodoc", "1");
		virtual		void Tangent(const Standard_Real U, const Standard_Real V, gp_Vec & TgS, gp_Vec & NormS) const;
		%feature("autodoc", "1");
		void Set(const Standard_Real Radius, const Standard_Integer Choix);
		%feature("autodoc", "1");
		void Set(const BlendFunc_SectionShape TypeSection);
		%feature("autodoc","Section(Standard_Real Param, Standard_Real U, Standard_Real V, Standard_Real W) -> [Standard_Real, Standard_Real]");

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
		%feature("autodoc","Resolution(Standard_Integer IC2d, Standard_Real Tol) -> [Standard_Real, Standard_Real]");

		virtual		void Resolution(const Standard_Integer IC2d, const Standard_Real Tol, Standard_Real &OutValue, Standard_Real &OutValue) const;

};
%feature("shadow") BlendFunc_CSConstRad::~BlendFunc_CSConstRad %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BlendFunc_CSConstRad {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BlendFunc_Tensor;
class BlendFunc_Tensor {
	public:
		%feature("autodoc", "1");
		BlendFunc_Tensor(const Standard_Integer NbRow, const Standard_Integer NbCol, const Standard_Integer NbMat);
		%feature("autodoc", "1");
		void Init(const Standard_Real InitialValue);
		%feature("autodoc", "1");
		const Standard_Real & Value(const Standard_Integer Row, const Standard_Integer Col, const Standard_Integer Mat) const;
		%feature("autodoc", "1");
		const Standard_Real & operator()(const Standard_Integer Row, const Standard_Integer Col, const Standard_Integer Mat) const;
		%feature("autodoc","1");
		%extend {
				Standard_Real GetChangeValue(const Standard_Integer Row, const Standard_Integer Col, const Standard_Integer Mat) {
				return (Standard_Real) $self->ChangeValue(Row,Col,Mat);
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetChangeValue(Standard_Real value ,const Standard_Integer Row, const Standard_Integer Col, const Standard_Integer Mat) {
				$self->ChangeValue(Row,Col,Mat)=value;
				}
		};
		%feature("autodoc", "1");
		Standard_Real & operator()(const Standard_Integer Row, const Standard_Integer Col, const Standard_Integer Mat);
		%feature("autodoc", "1");
		void Multiply(const math_Vector &Right, math_Matrix & Product) const;

};
%feature("shadow") BlendFunc_Tensor::~BlendFunc_Tensor %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BlendFunc_Tensor {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BlendFunc_ChAsymInv;
class BlendFunc_ChAsymInv : public Blend_FuncInv {
	public:
		%feature("autodoc", "1");
		BlendFunc_ChAsymInv(const Handle_Adaptor3d_HSurface &S1, const Handle_Adaptor3d_HSurface &S2, const Handle_Adaptor3d_HCurve &C);
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
%feature("shadow") BlendFunc_ChAsymInv::~BlendFunc_ChAsymInv %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BlendFunc_ChAsymInv {
	void _kill_pointed() {
		delete $self;
	}
};
