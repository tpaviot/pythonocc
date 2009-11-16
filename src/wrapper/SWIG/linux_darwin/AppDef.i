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
%module AppDef
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%pythoncode {
import GarbageCollector
};

%include AppDef_dependencies.i


%include AppDef_headers.i




%nodefaultctor Handle_AppDef_HArray1OfMultiPointConstraint;
class Handle_AppDef_HArray1OfMultiPointConstraint : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_AppDef_HArray1OfMultiPointConstraint();
		%feature("autodoc", "1");
		Handle_AppDef_HArray1OfMultiPointConstraint(const Handle_AppDef_HArray1OfMultiPointConstraint &aHandle);
		%feature("autodoc", "1");
		Handle_AppDef_HArray1OfMultiPointConstraint(const AppDef_HArray1OfMultiPointConstraint *anItem);
		%feature("autodoc", "1");
		Handle_AppDef_HArray1OfMultiPointConstraint & operator=(const Handle_AppDef_HArray1OfMultiPointConstraint &aHandle);
		%feature("autodoc", "1");
		Handle_AppDef_HArray1OfMultiPointConstraint & operator=(const AppDef_HArray1OfMultiPointConstraint *anItem);
		%feature("autodoc", "1");
		Handle_AppDef_HArray1OfMultiPointConstraint const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AppDef_HArray1OfMultiPointConstraint {
	AppDef_HArray1OfMultiPointConstraint* GetObject() {
	return (AppDef_HArray1OfMultiPointConstraint*)$self->Access();
	}
};
%feature("shadow") Handle_AppDef_HArray1OfMultiPointConstraint::~Handle_AppDef_HArray1OfMultiPointConstraint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_AppDef_HArray1OfMultiPointConstraint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_AppDef_MyCriterionOfTheVariational;
class Handle_AppDef_MyCriterionOfTheVariational : public Handle_AppParCurves_SmoothCriterion {
	public:
		%feature("autodoc", "1");
		Handle_AppDef_MyCriterionOfTheVariational();
		%feature("autodoc", "1");
		Handle_AppDef_MyCriterionOfTheVariational(const Handle_AppDef_MyCriterionOfTheVariational &aHandle);
		%feature("autodoc", "1");
		Handle_AppDef_MyCriterionOfTheVariational(const AppDef_MyCriterionOfTheVariational *anItem);
		%feature("autodoc", "1");
		Handle_AppDef_MyCriterionOfTheVariational & operator=(const Handle_AppDef_MyCriterionOfTheVariational &aHandle);
		%feature("autodoc", "1");
		Handle_AppDef_MyCriterionOfTheVariational & operator=(const AppDef_MyCriterionOfTheVariational *anItem);
		%feature("autodoc", "1");
		Handle_AppDef_MyCriterionOfTheVariational const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AppDef_MyCriterionOfTheVariational {
	AppDef_MyCriterionOfTheVariational* GetObject() {
	return (AppDef_MyCriterionOfTheVariational*)$self->Access();
	}
};
%feature("shadow") Handle_AppDef_MyCriterionOfTheVariational::~Handle_AppDef_MyCriterionOfTheVariational %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_AppDef_MyCriterionOfTheVariational {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor AppDef_MyLineTool;
class AppDef_MyLineTool {
	public:
		%feature("autodoc", "1");
		AppDef_MyLineTool();
		%feature("autodoc", "1");
		Standard_Integer FirstPoint(const AppDef_MultiLine &ML);
		%feature("autodoc", "1");
		Standard_Integer LastPoint(const AppDef_MultiLine &ML);
		%feature("autodoc", "1");
		Standard_Integer NbP2d(const AppDef_MultiLine &ML);
		%feature("autodoc", "1");
		Standard_Integer NbP3d(const AppDef_MultiLine &ML);
		%feature("autodoc", "1");
		void Value(const AppDef_MultiLine &ML, const Standard_Integer MPointIndex, TColgp_Array1OfPnt & tabPt);
		%feature("autodoc", "1");
		void Value(const AppDef_MultiLine &ML, const Standard_Integer MPointIndex, TColgp_Array1OfPnt2d & tabPt2d);
		%feature("autodoc", "1");
		void Value(const AppDef_MultiLine &ML, const Standard_Integer MPointIndex, TColgp_Array1OfPnt & tabPt, TColgp_Array1OfPnt2d & tabPt2d);
		%feature("autodoc", "1");
		Standard_Boolean Tangency(const AppDef_MultiLine &ML, const Standard_Integer MPointIndex, TColgp_Array1OfVec & tabV);
		%feature("autodoc", "1");
		Standard_Boolean Tangency(const AppDef_MultiLine &ML, const Standard_Integer MPointIndex, TColgp_Array1OfVec2d & tabV2d);
		%feature("autodoc", "1");
		Standard_Boolean Tangency(const AppDef_MultiLine &ML, const Standard_Integer MPointIndex, TColgp_Array1OfVec & tabV, TColgp_Array1OfVec2d & tabV2d);
		%feature("autodoc", "1");
		Standard_Boolean Curvature(const AppDef_MultiLine &ML, const Standard_Integer MPointIndex, TColgp_Array1OfVec & tabV);
		%feature("autodoc", "1");
		Standard_Boolean Curvature(const AppDef_MultiLine &ML, const Standard_Integer MPointIndex, TColgp_Array1OfVec2d & tabV2d);
		%feature("autodoc", "1");
		Standard_Boolean Curvature(const AppDef_MultiLine &ML, const Standard_Integer MPointIndex, TColgp_Array1OfVec & tabV, TColgp_Array1OfVec2d & tabV2d);
		%feature("autodoc", "1");
		Approx_Status WhatStatus(const AppDef_MultiLine &ML, const Standard_Integer I1, const Standard_Integer I2);
		%feature("autodoc", "1");
		AppDef_MultiLine & MakeMLBetween(const AppDef_MultiLine &ML, const Standard_Integer I1, const Standard_Integer I2, const Standard_Integer NbPMin);

};
%feature("shadow") AppDef_MyLineTool::~AppDef_MyLineTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend AppDef_MyLineTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor AppDef_ParFunctionOfTheGradient;
class AppDef_ParFunctionOfTheGradient : public math_MultipleVarFunctionWithGradient {
	public:
		%feature("autodoc", "1");
		AppDef_ParFunctionOfTheGradient(const AppDef_MultiLine &SSP, const Standard_Integer FirstPoint, const Standard_Integer LastPoint, const Handle_AppParCurves_HArray1OfConstraintCouple &TheConstraints, const math_Vector &Parameters, const Standard_Integer Deg);
		%feature("autodoc", "1");
		virtual		Standard_Integer NbVariables() const;
		%feature("autodoc","Value(const X) -> Standard_Real");
		virtual		Standard_Boolean Value(const math_Vector &X, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Gradient(const math_Vector &X, math_Vector & G);
		%feature("autodoc","Values(const X) -> Standard_Real");
		virtual		Standard_Boolean Values(const math_Vector &X, Standard_Real &OutValue, math_Vector & G);
		%feature("autodoc", "1");
		const math_Vector & NewParameters() const;
		%feature("autodoc", "1");
		const AppParCurves_MultiCurve & CurveValue();
		%feature("autodoc", "1");
		Standard_Real Error(const Standard_Integer IPoint, const Standard_Integer CurveIndex) const;
		%feature("autodoc", "1");
		Standard_Real MaxError3d() const;
		%feature("autodoc", "1");
		Standard_Real MaxError2d() const;
		%feature("autodoc", "1");
		AppParCurves_Constraint FirstConstraint(const Handle_AppParCurves_HArray1OfConstraintCouple &TheConstraints, const Standard_Integer FirstPoint) const;
		%feature("autodoc", "1");
		AppParCurves_Constraint LastConstraint(const Handle_AppParCurves_HArray1OfConstraintCouple &TheConstraints, const Standard_Integer LastPoint) const;

};
%feature("shadow") AppDef_ParFunctionOfTheGradient::~AppDef_ParFunctionOfTheGradient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend AppDef_ParFunctionOfTheGradient {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor AppDef_MultiPointConstraint;
class AppDef_MultiPointConstraint : public AppParCurves_MultiPoint {
	public:
		%feature("autodoc", "1");
		AppDef_MultiPointConstraint();
		%feature("autodoc", "1");
		AppDef_MultiPointConstraint(const Standard_Integer NbPoints, const Standard_Integer NbPoints2d);
		%feature("autodoc", "1");
		AppDef_MultiPointConstraint(const TColgp_Array1OfPnt &tabP);
		%feature("autodoc", "1");
		AppDef_MultiPointConstraint(const TColgp_Array1OfPnt2d &tabP);
		%feature("autodoc", "1");
		AppDef_MultiPointConstraint(const TColgp_Array1OfPnt &tabP, const TColgp_Array1OfPnt2d &tabP2d);
		%feature("autodoc", "1");
		AppDef_MultiPointConstraint(const TColgp_Array1OfPnt &tabP, const TColgp_Array1OfPnt2d &tabP2d, const TColgp_Array1OfVec &tabVec, const TColgp_Array1OfVec2d &tabVec2d, const TColgp_Array1OfVec &tabCur, const TColgp_Array1OfVec2d &tabCur2d);
		%feature("autodoc", "1");
		AppDef_MultiPointConstraint(const TColgp_Array1OfPnt &tabP, const TColgp_Array1OfPnt2d &tabP2d, const TColgp_Array1OfVec &tabVec, const TColgp_Array1OfVec2d &tabVec2d);
		%feature("autodoc", "1");
		AppDef_MultiPointConstraint(const TColgp_Array1OfPnt &tabP, const TColgp_Array1OfVec &tabVec, const TColgp_Array1OfVec &tabCur);
		%feature("autodoc", "1");
		AppDef_MultiPointConstraint(const TColgp_Array1OfPnt &tabP, const TColgp_Array1OfVec &tabVec);
		%feature("autodoc", "1");
		AppDef_MultiPointConstraint(const TColgp_Array1OfPnt2d &tabP2d, const TColgp_Array1OfVec2d &tabVec2d);
		%feature("autodoc", "1");
		AppDef_MultiPointConstraint(const TColgp_Array1OfPnt2d &tabP2d, const TColgp_Array1OfVec2d &tabVec2d, const TColgp_Array1OfVec2d &tabCur2d);
		%feature("autodoc", "1");
		void SetTang(const Standard_Integer Index, const gp_Vec &Tang);
		%feature("autodoc", "1");
		gp_Vec Tang(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetTang2d(const Standard_Integer Index, const gp_Vec2d &Tang2d);
		%feature("autodoc", "1");
		gp_Vec2d Tang2d(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetCurv(const Standard_Integer Index, const gp_Vec &Curv);
		%feature("autodoc", "1");
		gp_Vec Curv(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetCurv2d(const Standard_Integer Index, const gp_Vec2d &Curv2d);
		%feature("autodoc", "1");
		gp_Vec2d Curv2d(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Boolean IsTangencyPoint() const;
		%feature("autodoc", "1");
		Standard_Boolean IsCurvaturePoint() const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};

};
%feature("shadow") AppDef_MultiPointConstraint::~AppDef_MultiPointConstraint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend AppDef_MultiPointConstraint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor AppDef_TheGradient;
class AppDef_TheGradient {
	public:
		%feature("autodoc", "1");
		AppDef_TheGradient(const AppDef_MultiLine &SSP, const Standard_Integer FirstPoint, const Standard_Integer LastPoint, const Handle_AppParCurves_HArray1OfConstraintCouple &TheConstraints, math_Vector & Parameters, const Standard_Integer Deg, const Standard_Real Tol3d, const Standard_Real Tol2d, const Standard_Integer NbIterations=200);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		AppParCurves_MultiCurve Value() const;
		%feature("autodoc", "1");
		Standard_Real Error(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Real MaxError3d() const;
		%feature("autodoc", "1");
		Standard_Real MaxError2d() const;
		%feature("autodoc", "1");
		Standard_Real AverageError() const;

};
%feature("shadow") AppDef_TheGradient::~AppDef_TheGradient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend AppDef_TheGradient {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor AppDef_MyBSplGradientOfBSplineCompute;
class AppDef_MyBSplGradientOfBSplineCompute {
	public:
		%feature("autodoc", "1");
		AppDef_MyBSplGradientOfBSplineCompute(const AppDef_MultiLine &SSP, const Standard_Integer FirstPoint, const Standard_Integer LastPoint, const Handle_AppParCurves_HArray1OfConstraintCouple &TheConstraints, math_Vector & Parameters, const TColStd_Array1OfReal &Knots, const TColStd_Array1OfInteger &Mults, const Standard_Integer Deg, const Standard_Real Tol3d, const Standard_Real Tol2d, const Standard_Integer NbIterations=1);
		%feature("autodoc", "1");
		AppDef_MyBSplGradientOfBSplineCompute(const AppDef_MultiLine &SSP, const Standard_Integer FirstPoint, const Standard_Integer LastPoint, const Handle_AppParCurves_HArray1OfConstraintCouple &TheConstraints, math_Vector & Parameters, const TColStd_Array1OfReal &Knots, const TColStd_Array1OfInteger &Mults, const Standard_Integer Deg, const Standard_Real Tol3d, const Standard_Real Tol2d, const Standard_Integer NbIterations, const Standard_Real lambda1, const Standard_Real lambda2);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		AppParCurves_MultiBSpCurve Value() const;
		%feature("autodoc", "1");
		Standard_Real Error(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Real MaxError3d() const;
		%feature("autodoc", "1");
		Standard_Real MaxError2d() const;
		%feature("autodoc", "1");
		Standard_Real AverageError() const;

};
%feature("shadow") AppDef_MyBSplGradientOfBSplineCompute::~AppDef_MyBSplGradientOfBSplineCompute %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend AppDef_MyBSplGradientOfBSplineCompute {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor AppDef_HArray1OfMultiPointConstraint;
class AppDef_HArray1OfMultiPointConstraint : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		AppDef_HArray1OfMultiPointConstraint(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		AppDef_HArray1OfMultiPointConstraint(const Standard_Integer Low, const Standard_Integer Up, const AppDef_MultiPointConstraint &V);
		%feature("autodoc", "1");
		void Init(const AppDef_MultiPointConstraint &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const AppDef_MultiPointConstraint &Value);
		%feature("autodoc", "1");
		const AppDef_MultiPointConstraint & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		AppDef_MultiPointConstraint & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const AppDef_Array1OfMultiPointConstraint & Array1() const;
		%feature("autodoc", "1");
		AppDef_Array1OfMultiPointConstraint & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AppDef_HArray1OfMultiPointConstraint {
	Handle_AppDef_HArray1OfMultiPointConstraint GetHandle() {
	return *(Handle_AppDef_HArray1OfMultiPointConstraint*) &$self;
	}
};
%extend AppDef_HArray1OfMultiPointConstraint {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") AppDef_HArray1OfMultiPointConstraint::~AppDef_HArray1OfMultiPointConstraint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend AppDef_HArray1OfMultiPointConstraint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor AppDef_TheLeastSquares;
class AppDef_TheLeastSquares {
	public:
		%feature("autodoc", "1");
		AppDef_TheLeastSquares(const AppDef_MultiLine &SSP, const Standard_Integer FirstPoint, const Standard_Integer LastPoint, const AppParCurves_Constraint FirstCons, const AppParCurves_Constraint LastCons, const math_Vector &Parameters, const Standard_Integer NbPol);
		%feature("autodoc", "1");
		AppDef_TheLeastSquares(const AppDef_MultiLine &SSP, const Standard_Integer FirstPoint, const Standard_Integer LastPoint, const AppParCurves_Constraint FirstCons, const AppParCurves_Constraint LastCons, const Standard_Integer NbPol);
		%feature("autodoc", "1");
		AppDef_TheLeastSquares(const AppDef_MultiLine &SSP, const TColStd_Array1OfReal &Knots, const TColStd_Array1OfInteger &Mults, const Standard_Integer FirstPoint, const Standard_Integer LastPoint, const AppParCurves_Constraint FirstCons, const AppParCurves_Constraint LastCons, const math_Vector &Parameters, const Standard_Integer NbPol);
		%feature("autodoc", "1");
		AppDef_TheLeastSquares(const AppDef_MultiLine &SSP, const TColStd_Array1OfReal &Knots, const TColStd_Array1OfInteger &Mults, const Standard_Integer FirstPoint, const Standard_Integer LastPoint, const AppParCurves_Constraint FirstCons, const AppParCurves_Constraint LastCons, const Standard_Integer NbPol);
		%feature("autodoc", "1");
		void Perform(const math_Vector &Parameters);
		%feature("autodoc", "1");
		void Perform(const math_Vector &Parameters, const Standard_Real l1, const Standard_Real l2);
		%feature("autodoc", "1");
		void Perform(const math_Vector &Parameters, const math_Vector &V1t, const math_Vector &V2t, const Standard_Real l1, const Standard_Real l2);
		%feature("autodoc", "1");
		void Perform(const math_Vector &Parameters, const math_Vector &V1t, const math_Vector &V2t, const math_Vector &V1c, const math_Vector &V2c, const Standard_Real l1, const Standard_Real l2);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		AppParCurves_MultiCurve BezierValue();
		%feature("autodoc", "1");
		const AppParCurves_MultiBSpCurve & BSplineValue();
		%feature("autodoc", "1");
		const math_Matrix & FunctionMatrix() const;
		%feature("autodoc", "1");
		const math_Matrix & DerivativeFunctionMatrix() const;
		%feature("autodoc","ErrorGradient() -> [Standard_Real, Standard_Real, Standard_Real]");
		void ErrorGradient(math_Vector & Grad, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		const math_Matrix & Distance();
		%feature("autodoc","Error() -> [Standard_Real, Standard_Real, Standard_Real]");
		void Error(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		Standard_Real FirstLambda() const;
		%feature("autodoc", "1");
		Standard_Real LastLambda() const;
		%feature("autodoc", "1");
		const math_Matrix & Points() const;
		%feature("autodoc", "1");
		const math_Matrix & Poles() const;
		%feature("autodoc", "1");
		const math_IntegerVector & KIndex() const;

};
%feature("shadow") AppDef_TheLeastSquares::~AppDef_TheLeastSquares %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend AppDef_TheLeastSquares {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor AppDef_Gradient_BFGSOfMyGradientbisOfBSplineCompute;
class AppDef_Gradient_BFGSOfMyGradientbisOfBSplineCompute : public math_BFGS {
	public:
		%feature("autodoc", "1");
		AppDef_Gradient_BFGSOfMyGradientbisOfBSplineCompute(math_MultipleVarFunctionWithGradient & F, const math_Vector &StartingPoint, const Standard_Real Tolerance3d, const Standard_Real Tolerance2d, const Standard_Real Eps, const Standard_Integer NbIterations=200);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsSolutionReached(math_MultipleVarFunctionWithGradient & F) const;

};
%feature("shadow") AppDef_Gradient_BFGSOfMyGradientbisOfBSplineCompute::~AppDef_Gradient_BFGSOfMyGradientbisOfBSplineCompute %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend AppDef_Gradient_BFGSOfMyGradientbisOfBSplineCompute {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor AppDef_BSpGradient_BFGSOfMyBSplGradientOfBSplineCompute;
class AppDef_BSpGradient_BFGSOfMyBSplGradientOfBSplineCompute : public math_BFGS {
	public:
		%feature("autodoc", "1");
		AppDef_BSpGradient_BFGSOfMyBSplGradientOfBSplineCompute(math_MultipleVarFunctionWithGradient & F, const math_Vector &StartingPoint, const Standard_Real Tolerance3d, const Standard_Real Tolerance2d, const Standard_Real Eps, const Standard_Integer NbIterations=200);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsSolutionReached(math_MultipleVarFunctionWithGradient & F) const;

};
%feature("shadow") AppDef_BSpGradient_BFGSOfMyBSplGradientOfBSplineCompute::~AppDef_BSpGradient_BFGSOfMyBSplGradientOfBSplineCompute %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend AppDef_BSpGradient_BFGSOfMyBSplGradientOfBSplineCompute {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor AppDef_MyCriterionOfTheVariational;
class AppDef_MyCriterionOfTheVariational : public AppParCurves_SmoothCriterion {
	public:
		%feature("autodoc", "1");
		AppDef_MyCriterionOfTheVariational(const AppDef_MultiLine &SSP, const Standard_Integer FirstPoint, const Standard_Integer LastPoint);
		%feature("autodoc", "1");
		virtual		void SetParameters(const Handle_TColStd_HArray1OfReal &Parameters);
		%feature("autodoc", "1");
		virtual		void SetCurve(const Handle_FEmTool_Curve &C);
		%feature("autodoc", "1");
		virtual		void GetCurve(Handle_FEmTool_Curve & C) const;
		%feature("autodoc", "1");
		virtual		void SetEstimation(const Standard_Real E1, const Standard_Real E2, const Standard_Real E3);
		%feature("autodoc","1");
		%extend {
				Standard_Real GetEstLength() {
				return (Standard_Real) $self->EstLength();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetEstLength(Standard_Real value ) {
				$self->EstLength()=value;
				}
		};
		%feature("autodoc","GetEstimation() -> [Standard_Real, Standard_Real, Standard_Real]");
		virtual		void GetEstimation(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		virtual		Handle_FEmTool_HAssemblyTable AssemblyTable() const;
		%feature("autodoc", "1");
		virtual		Handle_TColStd_HArray2OfInteger DependenceTable() const;
		%feature("autodoc","QualityValues(Standard_Real J1min, Standard_Real J2min, Standard_Real J3min) -> [Standard_RealStandard_RealStandard_Real]");
		virtual		Standard_Integer QualityValues(const Standard_Real J1min, const Standard_Real J2min, const Standard_Real J3min, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc","ErrorValues() -> [Standard_Real, Standard_Real, Standard_Real]");
		virtual		void ErrorValues(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		void Hessian(const Standard_Integer Element, const Standard_Integer Dimension1, const Standard_Integer Dimension2, math_Matrix & H);
		%feature("autodoc", "1");
		virtual		void Gradient(const Standard_Integer Element, const Standard_Integer Dimension, math_Vector & G);
		%feature("autodoc", "1");
		virtual		void InputVector(const math_Vector &X, const Handle_FEmTool_HAssemblyTable &AssTable);
		%feature("autodoc", "1");
		virtual		void SetWeight(const Standard_Real QuadraticWeight, const Standard_Real QualityWeight, const Standard_Real percentJ1, const Standard_Real percentJ2, const Standard_Real percentJ3);
		%feature("autodoc","GetWeight() -> [Standard_Real, Standard_Real]");
		virtual		void GetWeight(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		virtual		void SetWeight(const TColStd_Array1OfReal &Weight);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AppDef_MyCriterionOfTheVariational {
	Handle_AppDef_MyCriterionOfTheVariational GetHandle() {
	return *(Handle_AppDef_MyCriterionOfTheVariational*) &$self;
	}
};
%extend AppDef_MyCriterionOfTheVariational {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") AppDef_MyCriterionOfTheVariational::~AppDef_MyCriterionOfTheVariational %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend AppDef_MyCriterionOfTheVariational {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor AppDef_Compute;
class AppDef_Compute {
	public:
		%feature("autodoc", "1");
		AppDef_Compute(const AppDef_MultiLine &Line, const Standard_Integer degreemin=4, const Standard_Integer degreemax=8, const Standard_Real Tolerance3d=1.0000000000000000208166817117216851329430937767e-3, const Standard_Real Tolerance2d=9.99999999999999954748111825886258685613938723691e-7, const Standard_Integer NbIterations=5, const Standard_Boolean cutting=1, const Approx_ParametrizationType parametrization=Approx_ChordLength, const Standard_Boolean Squares=0);
		%feature("autodoc", "1");
		AppDef_Compute(const AppDef_MultiLine &Line, const math_Vector &Parameters, const Standard_Integer degreemin=4, const Standard_Integer degreemax=8, const Standard_Real Tolerance3d=1.0000000000000000208166817117216851329430937767e-3, const Standard_Real Tolerance2d=9.99999999999999954748111825886258685613938723691e-7, const Standard_Integer NbIterations=5, const Standard_Boolean cutting=1, const Standard_Boolean Squares=0);
		%feature("autodoc", "1");
		AppDef_Compute(const math_Vector &Parameters, const Standard_Integer degreemin=4, const Standard_Integer degreemax=8, const Standard_Real Tolerance3d=1.0000000000000000208166817117216851329430937767e-3, const Standard_Real Tolerance2d=9.99999999999999954748111825886258685613938723691e-7, const Standard_Integer NbIterations=5, const Standard_Boolean cutting=1, const Standard_Boolean Squares=0);
		%feature("autodoc", "1");
		AppDef_Compute(const Standard_Integer degreemin=4, const Standard_Integer degreemax=8, const Standard_Real Tolerance3d=1.0000000000000000208166817117216851329430937767e-3, const Standard_Real Tolerance2d=9.99999999999999954748111825886258685613938723691e-7, const Standard_Integer NbIterations=5, const Standard_Boolean cutting=1, const Approx_ParametrizationType parametrization=Approx_ChordLength, const Standard_Boolean Squares=0);
		%feature("autodoc", "1");
		void Init(const Standard_Integer degreemin=4, const Standard_Integer degreemax=8, const Standard_Real Tolerance3d=1.0000000000000000208166817117216851329430937767e-3, const Standard_Real Tolerance2d=9.99999999999999954748111825886258685613938723691e-7, const Standard_Integer NbIterations=5, const Standard_Boolean cutting=1, const Approx_ParametrizationType parametrization=Approx_ChordLength, const Standard_Boolean Squares=0);
		%feature("autodoc", "1");
		void Perform(const AppDef_MultiLine &Line);
		%feature("autodoc", "1");
		void SetDegrees(const Standard_Integer degreemin, const Standard_Integer degreemax);
		%feature("autodoc", "1");
		void SetTolerances(const Standard_Real Tolerance3d, const Standard_Real Tolerance2d);
		%feature("autodoc", "1");
		void SetConstraints(const AppParCurves_Constraint firstC, const AppParCurves_Constraint lastC);
		%feature("autodoc", "1");
		Standard_Boolean IsAllApproximated() const;
		%feature("autodoc", "1");
		Standard_Boolean IsToleranceReached() const;
		%feature("autodoc","Error(Standard_Integer Index) -> [Standard_RealStandard_Real]");
		void Error(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Integer NbMultiCurves() const;
		%feature("autodoc", "1");
		const AppParCurves_MultiCurve & Value(const Standard_Integer Index=1) const;
		%feature("autodoc", "1");
		AppParCurves_MultiCurve & ChangeValue(const Standard_Integer Index=1);
		%feature("autodoc", "1");
		const AppParCurves_MultiBSpCurve & SplineValue();
		%feature("autodoc", "1");
		void Parametrization(Approx_ParametrizationType & partype) const;
		%feature("autodoc", "1");
		const TColStd_Array1OfReal & Parameters(const Standard_Integer Index=1) const;

};
%feature("shadow") AppDef_Compute::~AppDef_Compute %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend AppDef_Compute {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor AppDef_TheResol;
class AppDef_TheResol {
	public:
		%feature("autodoc", "1");
		AppDef_TheResol(const AppDef_MultiLine &SSP, AppParCurves_MultiCurve & SCurv, const Standard_Integer FirstPoint, const Standard_Integer LastPoint, const Handle_AppParCurves_HArray1OfConstraintCouple &Constraints, const math_Matrix &Bern, const math_Matrix &DerivativeBern, const Standard_Real Tolerance=1.0000000000000000364321973154977415791655470656e-10);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		const math_Matrix & ConstraintMatrix() const;
		%feature("autodoc", "1");
		const math_Vector & Duale() const;
		%feature("autodoc", "1");
		const math_Matrix & ConstraintDerivative(const AppDef_MultiLine &SSP, const math_Vector &Parameters, const Standard_Integer Deg, const math_Matrix &DA);
		%feature("autodoc", "1");
		const math_Matrix & InverseMatrix() const;

};
%feature("shadow") AppDef_TheResol::~AppDef_TheResol %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend AppDef_TheResol {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor AppDef_MultiLine;
class AppDef_MultiLine {
	public:
		%feature("autodoc", "1");
		AppDef_MultiLine();
		%feature("autodoc", "1");
		AppDef_MultiLine(const Standard_Integer NbMult);
		%feature("autodoc", "1");
		AppDef_MultiLine(const AppDef_Array1OfMultiPointConstraint &tabMultiP);
		%feature("autodoc", "1");
		AppDef_MultiLine(const TColgp_Array1OfPnt &tabP3d);
		%feature("autodoc", "1");
		AppDef_MultiLine(const TColgp_Array1OfPnt2d &tabP2d);
		%feature("autodoc", "1");
		Standard_Integer NbMultiPoints() const;
		%feature("autodoc", "1");
		Standard_Integer NbPoints() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const AppDef_MultiPointConstraint &MPoint);
		%feature("autodoc", "1");
		AppDef_MultiPointConstraint Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};

};
%feature("shadow") AppDef_MultiLine::~AppDef_MultiLine %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend AppDef_MultiLine {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor AppDef_ResConstraintOfMyGradientbisOfBSplineCompute;
class AppDef_ResConstraintOfMyGradientbisOfBSplineCompute {
	public:
		%feature("autodoc", "1");
		AppDef_ResConstraintOfMyGradientbisOfBSplineCompute(const AppDef_MultiLine &SSP, AppParCurves_MultiCurve & SCurv, const Standard_Integer FirstPoint, const Standard_Integer LastPoint, const Handle_AppParCurves_HArray1OfConstraintCouple &Constraints, const math_Matrix &Bern, const math_Matrix &DerivativeBern, const Standard_Real Tolerance=1.0000000000000000364321973154977415791655470656e-10);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		const math_Matrix & ConstraintMatrix() const;
		%feature("autodoc", "1");
		const math_Vector & Duale() const;
		%feature("autodoc", "1");
		const math_Matrix & ConstraintDerivative(const AppDef_MultiLine &SSP, const math_Vector &Parameters, const Standard_Integer Deg, const math_Matrix &DA);
		%feature("autodoc", "1");
		const math_Matrix & InverseMatrix() const;

};
%feature("shadow") AppDef_ResConstraintOfMyGradientbisOfBSplineCompute::~AppDef_ResConstraintOfMyGradientbisOfBSplineCompute %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend AppDef_ResConstraintOfMyGradientbisOfBSplineCompute {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor AppDef_Gradient_BFGSOfMyGradientOfCompute;
class AppDef_Gradient_BFGSOfMyGradientOfCompute : public math_BFGS {
	public:
		%feature("autodoc", "1");
		AppDef_Gradient_BFGSOfMyGradientOfCompute(math_MultipleVarFunctionWithGradient & F, const math_Vector &StartingPoint, const Standard_Real Tolerance3d, const Standard_Real Tolerance2d, const Standard_Real Eps, const Standard_Integer NbIterations=200);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsSolutionReached(math_MultipleVarFunctionWithGradient & F) const;

};
%feature("shadow") AppDef_Gradient_BFGSOfMyGradientOfCompute::~AppDef_Gradient_BFGSOfMyGradientOfCompute %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend AppDef_Gradient_BFGSOfMyGradientOfCompute {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor AppDef_BSpParFunctionOfMyBSplGradientOfBSplineCompute;
class AppDef_BSpParFunctionOfMyBSplGradientOfBSplineCompute : public math_MultipleVarFunctionWithGradient {
	public:
		%feature("autodoc", "1");
		AppDef_BSpParFunctionOfMyBSplGradientOfBSplineCompute(const AppDef_MultiLine &SSP, const Standard_Integer FirstPoint, const Standard_Integer LastPoint, const Handle_AppParCurves_HArray1OfConstraintCouple &TheConstraints, const math_Vector &Parameters, const TColStd_Array1OfReal &Knots, const TColStd_Array1OfInteger &Mults, const Standard_Integer NbPol);
		%feature("autodoc", "1");
		virtual		Standard_Integer NbVariables() const;
		%feature("autodoc","Value(const X) -> Standard_Real");
		virtual		Standard_Boolean Value(const math_Vector &X, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Gradient(const math_Vector &X, math_Vector & G);
		%feature("autodoc","Values(const X) -> Standard_Real");
		virtual		Standard_Boolean Values(const math_Vector &X, Standard_Real &OutValue, math_Vector & G);
		%feature("autodoc", "1");
		const math_Vector & NewParameters() const;
		%feature("autodoc", "1");
		AppParCurves_MultiBSpCurve CurveValue();
		%feature("autodoc", "1");
		Standard_Real Error(const Standard_Integer IPoint, const Standard_Integer CurveIndex);
		%feature("autodoc", "1");
		Standard_Real MaxError3d() const;
		%feature("autodoc", "1");
		Standard_Real MaxError2d() const;
		%feature("autodoc", "1");
		const math_Matrix & FunctionMatrix() const;
		%feature("autodoc", "1");
		const math_Matrix & DerivativeFunctionMatrix() const;
		%feature("autodoc", "1");
		const math_IntegerVector & Index() const;
		%feature("autodoc", "1");
		AppParCurves_Constraint FirstConstraint(const Handle_AppParCurves_HArray1OfConstraintCouple &TheConstraints, const Standard_Integer FirstPoint) const;
		%feature("autodoc", "1");
		AppParCurves_Constraint LastConstraint(const Handle_AppParCurves_HArray1OfConstraintCouple &TheConstraints, const Standard_Integer LastPoint) const;
		%feature("autodoc", "1");
		void SetFirstLambda(const Standard_Real l1);
		%feature("autodoc", "1");
		void SetLastLambda(const Standard_Real l2);

};
%feature("shadow") AppDef_BSpParFunctionOfMyBSplGradientOfBSplineCompute::~AppDef_BSpParFunctionOfMyBSplGradientOfBSplineCompute %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend AppDef_BSpParFunctionOfMyBSplGradientOfBSplineCompute {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor AppDef_ParFunctionOfMyGradientbisOfBSplineCompute;
class AppDef_ParFunctionOfMyGradientbisOfBSplineCompute : public math_MultipleVarFunctionWithGradient {
	public:
		%feature("autodoc", "1");
		AppDef_ParFunctionOfMyGradientbisOfBSplineCompute(const AppDef_MultiLine &SSP, const Standard_Integer FirstPoint, const Standard_Integer LastPoint, const Handle_AppParCurves_HArray1OfConstraintCouple &TheConstraints, const math_Vector &Parameters, const Standard_Integer Deg);
		%feature("autodoc", "1");
		virtual		Standard_Integer NbVariables() const;
		%feature("autodoc","Value(const X) -> Standard_Real");
		virtual		Standard_Boolean Value(const math_Vector &X, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Gradient(const math_Vector &X, math_Vector & G);
		%feature("autodoc","Values(const X) -> Standard_Real");
		virtual		Standard_Boolean Values(const math_Vector &X, Standard_Real &OutValue, math_Vector & G);
		%feature("autodoc", "1");
		const math_Vector & NewParameters() const;
		%feature("autodoc", "1");
		const AppParCurves_MultiCurve & CurveValue();
		%feature("autodoc", "1");
		Standard_Real Error(const Standard_Integer IPoint, const Standard_Integer CurveIndex) const;
		%feature("autodoc", "1");
		Standard_Real MaxError3d() const;
		%feature("autodoc", "1");
		Standard_Real MaxError2d() const;
		%feature("autodoc", "1");
		AppParCurves_Constraint FirstConstraint(const Handle_AppParCurves_HArray1OfConstraintCouple &TheConstraints, const Standard_Integer FirstPoint) const;
		%feature("autodoc", "1");
		AppParCurves_Constraint LastConstraint(const Handle_AppParCurves_HArray1OfConstraintCouple &TheConstraints, const Standard_Integer LastPoint) const;

};
%feature("shadow") AppDef_ParFunctionOfMyGradientbisOfBSplineCompute::~AppDef_ParFunctionOfMyGradientbisOfBSplineCompute %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend AppDef_ParFunctionOfMyGradientbisOfBSplineCompute {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor AppDef_TheVariational;
class AppDef_TheVariational {
	public:
		%feature("autodoc", "1");
		AppDef_TheVariational(const AppDef_MultiLine &SSP, const Standard_Integer FirstPoint, const Standard_Integer LastPoint, const Handle_AppParCurves_HArray1OfConstraintCouple &TheConstraints, const Standard_Integer MaxDegree=14, const Standard_Integer MaxSegment=100, const GeomAbs_Shape Continuity=GeomAbs_C2, const Standard_Boolean WithMinMax=0, const Standard_Boolean WithCutting=1, const Standard_Real Tolerance=1.0e+0, const Standard_Integer NbIterations=2);
		%feature("autodoc", "1");
		void Approximate();
		%feature("autodoc", "1");
		Standard_Boolean IsCreated() const;
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Boolean IsOverConstrained() const;
		%feature("autodoc", "1");
		AppParCurves_MultiBSpCurve Value() const;
		%feature("autodoc", "1");
		Standard_Real MaxError() const;
		%feature("autodoc", "1");
		Standard_Integer MaxErrorIndex() const;
		%feature("autodoc", "1");
		Standard_Real QuadraticError() const;
		%feature("autodoc", "1");
		void Distance(math_Matrix & mat);
		%feature("autodoc", "1");
		Standard_Real AverageError() const;
		%feature("autodoc", "1");
		const Handle_TColStd_HArray1OfReal & Parameters() const;
		%feature("autodoc", "1");
		const Handle_TColStd_HArray1OfReal & Knots() const;
		%feature("autodoc","Criterium() -> [Standard_Real, Standard_Real, Standard_Real]");
		void Criterium(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc","CriteriumWeight() -> [Standard_Real, Standard_Real, Standard_Real]");
		void CriteriumWeight(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Integer MaxDegree() const;
		%feature("autodoc", "1");
		Standard_Integer MaxSegment() const;
		%feature("autodoc", "1");
		GeomAbs_Shape Continuity() const;
		%feature("autodoc", "1");
		Standard_Boolean WithMinMax() const;
		%feature("autodoc", "1");
		Standard_Boolean WithCutting() const;
		%feature("autodoc", "1");
		Standard_Real Tolerance() const;
		%feature("autodoc", "1");
		Standard_Integer NbIterations() const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		Standard_Boolean SetConstraints(const Handle_AppParCurves_HArray1OfConstraintCouple &aConstrainst);
		%feature("autodoc", "1");
		void SetParameters(const Handle_TColStd_HArray1OfReal &param);
		%feature("autodoc", "1");
		Standard_Boolean SetKnots(const Handle_TColStd_HArray1OfReal &knots);
		%feature("autodoc", "1");
		Standard_Boolean SetMaxDegree(const Standard_Integer Degree);
		%feature("autodoc", "1");
		Standard_Boolean SetMaxSegment(const Standard_Integer NbSegment);
		%feature("autodoc", "1");
		Standard_Boolean SetContinuity(const GeomAbs_Shape C);
		%feature("autodoc", "1");
		void SetWithMinMax(const Standard_Boolean MinMax);
		%feature("autodoc", "1");
		Standard_Boolean SetWithCutting(const Standard_Boolean Cutting);
		%feature("autodoc", "1");
		void SetCriteriumWeight(const Standard_Real Percent1, const Standard_Real Percent2, const Standard_Real Percent3);
		%feature("autodoc", "1");
		void SetCriteriumWeight(const Standard_Integer Order, const Standard_Real Percent);
		%feature("autodoc", "1");
		void SetTolerance(const Standard_Real Tol);
		%feature("autodoc", "1");
		void SetNbIterations(const Standard_Integer Iter);

};
%feature("shadow") AppDef_TheVariational::~AppDef_TheVariational %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend AppDef_TheVariational {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor AppDef_ParLeastSquareOfMyGradientOfCompute;
class AppDef_ParLeastSquareOfMyGradientOfCompute {
	public:
		%feature("autodoc", "1");
		AppDef_ParLeastSquareOfMyGradientOfCompute(const AppDef_MultiLine &SSP, const Standard_Integer FirstPoint, const Standard_Integer LastPoint, const AppParCurves_Constraint FirstCons, const AppParCurves_Constraint LastCons, const math_Vector &Parameters, const Standard_Integer NbPol);
		%feature("autodoc", "1");
		AppDef_ParLeastSquareOfMyGradientOfCompute(const AppDef_MultiLine &SSP, const Standard_Integer FirstPoint, const Standard_Integer LastPoint, const AppParCurves_Constraint FirstCons, const AppParCurves_Constraint LastCons, const Standard_Integer NbPol);
		%feature("autodoc", "1");
		AppDef_ParLeastSquareOfMyGradientOfCompute(const AppDef_MultiLine &SSP, const TColStd_Array1OfReal &Knots, const TColStd_Array1OfInteger &Mults, const Standard_Integer FirstPoint, const Standard_Integer LastPoint, const AppParCurves_Constraint FirstCons, const AppParCurves_Constraint LastCons, const math_Vector &Parameters, const Standard_Integer NbPol);
		%feature("autodoc", "1");
		AppDef_ParLeastSquareOfMyGradientOfCompute(const AppDef_MultiLine &SSP, const TColStd_Array1OfReal &Knots, const TColStd_Array1OfInteger &Mults, const Standard_Integer FirstPoint, const Standard_Integer LastPoint, const AppParCurves_Constraint FirstCons, const AppParCurves_Constraint LastCons, const Standard_Integer NbPol);
		%feature("autodoc", "1");
		void Perform(const math_Vector &Parameters);
		%feature("autodoc", "1");
		void Perform(const math_Vector &Parameters, const Standard_Real l1, const Standard_Real l2);
		%feature("autodoc", "1");
		void Perform(const math_Vector &Parameters, const math_Vector &V1t, const math_Vector &V2t, const Standard_Real l1, const Standard_Real l2);
		%feature("autodoc", "1");
		void Perform(const math_Vector &Parameters, const math_Vector &V1t, const math_Vector &V2t, const math_Vector &V1c, const math_Vector &V2c, const Standard_Real l1, const Standard_Real l2);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		AppParCurves_MultiCurve BezierValue();
		%feature("autodoc", "1");
		const AppParCurves_MultiBSpCurve & BSplineValue();
		%feature("autodoc", "1");
		const math_Matrix & FunctionMatrix() const;
		%feature("autodoc", "1");
		const math_Matrix & DerivativeFunctionMatrix() const;
		%feature("autodoc","ErrorGradient() -> [Standard_Real, Standard_Real, Standard_Real]");
		void ErrorGradient(math_Vector & Grad, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		const math_Matrix & Distance();
		%feature("autodoc","Error() -> [Standard_Real, Standard_Real, Standard_Real]");
		void Error(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		Standard_Real FirstLambda() const;
		%feature("autodoc", "1");
		Standard_Real LastLambda() const;
		%feature("autodoc", "1");
		const math_Matrix & Points() const;
		%feature("autodoc", "1");
		const math_Matrix & Poles() const;
		%feature("autodoc", "1");
		const math_IntegerVector & KIndex() const;

};
%feature("shadow") AppDef_ParLeastSquareOfMyGradientOfCompute::~AppDef_ParLeastSquareOfMyGradientOfCompute %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend AppDef_ParLeastSquareOfMyGradientOfCompute {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor AppDef_ResConstraintOfTheGradient;
class AppDef_ResConstraintOfTheGradient {
	public:
		%feature("autodoc", "1");
		AppDef_ResConstraintOfTheGradient(const AppDef_MultiLine &SSP, AppParCurves_MultiCurve & SCurv, const Standard_Integer FirstPoint, const Standard_Integer LastPoint, const Handle_AppParCurves_HArray1OfConstraintCouple &Constraints, const math_Matrix &Bern, const math_Matrix &DerivativeBern, const Standard_Real Tolerance=1.0000000000000000364321973154977415791655470656e-10);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		const math_Matrix & ConstraintMatrix() const;
		%feature("autodoc", "1");
		const math_Vector & Duale() const;
		%feature("autodoc", "1");
		const math_Matrix & ConstraintDerivative(const AppDef_MultiLine &SSP, const math_Vector &Parameters, const Standard_Integer Deg, const math_Matrix &DA);
		%feature("autodoc", "1");
		const math_Matrix & InverseMatrix() const;

};
%feature("shadow") AppDef_ResConstraintOfTheGradient::~AppDef_ResConstraintOfTheGradient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend AppDef_ResConstraintOfTheGradient {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor AppDef_TheFunction;
class AppDef_TheFunction : public math_MultipleVarFunctionWithGradient {
	public:
		%feature("autodoc", "1");
		AppDef_TheFunction(const AppDef_MultiLine &SSP, const Standard_Integer FirstPoint, const Standard_Integer LastPoint, const Handle_AppParCurves_HArray1OfConstraintCouple &TheConstraints, const math_Vector &Parameters, const Standard_Integer Deg);
		%feature("autodoc", "1");
		virtual		Standard_Integer NbVariables() const;
		%feature("autodoc","Value(const X) -> Standard_Real");
		virtual		Standard_Boolean Value(const math_Vector &X, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Gradient(const math_Vector &X, math_Vector & G);
		%feature("autodoc","Values(const X) -> Standard_Real");
		virtual		Standard_Boolean Values(const math_Vector &X, Standard_Real &OutValue, math_Vector & G);
		%feature("autodoc", "1");
		const math_Vector & NewParameters() const;
		%feature("autodoc", "1");
		const AppParCurves_MultiCurve & CurveValue();
		%feature("autodoc", "1");
		Standard_Real Error(const Standard_Integer IPoint, const Standard_Integer CurveIndex) const;
		%feature("autodoc", "1");
		Standard_Real MaxError3d() const;
		%feature("autodoc", "1");
		Standard_Real MaxError2d() const;
		%feature("autodoc", "1");
		AppParCurves_Constraint FirstConstraint(const Handle_AppParCurves_HArray1OfConstraintCouple &TheConstraints, const Standard_Integer FirstPoint) const;
		%feature("autodoc", "1");
		AppParCurves_Constraint LastConstraint(const Handle_AppParCurves_HArray1OfConstraintCouple &TheConstraints, const Standard_Integer LastPoint) const;

};
%feature("shadow") AppDef_TheFunction::~AppDef_TheFunction %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend AppDef_TheFunction {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor AppDef_MyGradientOfCompute;
class AppDef_MyGradientOfCompute {
	public:
		%feature("autodoc", "1");
		AppDef_MyGradientOfCompute(const AppDef_MultiLine &SSP, const Standard_Integer FirstPoint, const Standard_Integer LastPoint, const Handle_AppParCurves_HArray1OfConstraintCouple &TheConstraints, math_Vector & Parameters, const Standard_Integer Deg, const Standard_Real Tol3d, const Standard_Real Tol2d, const Standard_Integer NbIterations=200);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		AppParCurves_MultiCurve Value() const;
		%feature("autodoc", "1");
		Standard_Real Error(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Real MaxError3d() const;
		%feature("autodoc", "1");
		Standard_Real MaxError2d() const;
		%feature("autodoc", "1");
		Standard_Real AverageError() const;

};
%feature("shadow") AppDef_MyGradientOfCompute::~AppDef_MyGradientOfCompute %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend AppDef_MyGradientOfCompute {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor AppDef_BSpParLeastSquareOfMyBSplGradientOfBSplineCompute;
class AppDef_BSpParLeastSquareOfMyBSplGradientOfBSplineCompute {
	public:
		%feature("autodoc", "1");
		AppDef_BSpParLeastSquareOfMyBSplGradientOfBSplineCompute(const AppDef_MultiLine &SSP, const Standard_Integer FirstPoint, const Standard_Integer LastPoint, const AppParCurves_Constraint FirstCons, const AppParCurves_Constraint LastCons, const math_Vector &Parameters, const Standard_Integer NbPol);
		%feature("autodoc", "1");
		AppDef_BSpParLeastSquareOfMyBSplGradientOfBSplineCompute(const AppDef_MultiLine &SSP, const Standard_Integer FirstPoint, const Standard_Integer LastPoint, const AppParCurves_Constraint FirstCons, const AppParCurves_Constraint LastCons, const Standard_Integer NbPol);
		%feature("autodoc", "1");
		AppDef_BSpParLeastSquareOfMyBSplGradientOfBSplineCompute(const AppDef_MultiLine &SSP, const TColStd_Array1OfReal &Knots, const TColStd_Array1OfInteger &Mults, const Standard_Integer FirstPoint, const Standard_Integer LastPoint, const AppParCurves_Constraint FirstCons, const AppParCurves_Constraint LastCons, const math_Vector &Parameters, const Standard_Integer NbPol);
		%feature("autodoc", "1");
		AppDef_BSpParLeastSquareOfMyBSplGradientOfBSplineCompute(const AppDef_MultiLine &SSP, const TColStd_Array1OfReal &Knots, const TColStd_Array1OfInteger &Mults, const Standard_Integer FirstPoint, const Standard_Integer LastPoint, const AppParCurves_Constraint FirstCons, const AppParCurves_Constraint LastCons, const Standard_Integer NbPol);
		%feature("autodoc", "1");
		void Perform(const math_Vector &Parameters);
		%feature("autodoc", "1");
		void Perform(const math_Vector &Parameters, const Standard_Real l1, const Standard_Real l2);
		%feature("autodoc", "1");
		void Perform(const math_Vector &Parameters, const math_Vector &V1t, const math_Vector &V2t, const Standard_Real l1, const Standard_Real l2);
		%feature("autodoc", "1");
		void Perform(const math_Vector &Parameters, const math_Vector &V1t, const math_Vector &V2t, const math_Vector &V1c, const math_Vector &V2c, const Standard_Real l1, const Standard_Real l2);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		AppParCurves_MultiCurve BezierValue();
		%feature("autodoc", "1");
		const AppParCurves_MultiBSpCurve & BSplineValue();
		%feature("autodoc", "1");
		const math_Matrix & FunctionMatrix() const;
		%feature("autodoc", "1");
		const math_Matrix & DerivativeFunctionMatrix() const;
		%feature("autodoc","ErrorGradient() -> [Standard_Real, Standard_Real, Standard_Real]");
		void ErrorGradient(math_Vector & Grad, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		const math_Matrix & Distance();
		%feature("autodoc","Error() -> [Standard_Real, Standard_Real, Standard_Real]");
		void Error(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		Standard_Real FirstLambda() const;
		%feature("autodoc", "1");
		Standard_Real LastLambda() const;
		%feature("autodoc", "1");
		const math_Matrix & Points() const;
		%feature("autodoc", "1");
		const math_Matrix & Poles() const;
		%feature("autodoc", "1");
		const math_IntegerVector & KIndex() const;

};
%feature("shadow") AppDef_BSpParLeastSquareOfMyBSplGradientOfBSplineCompute::~AppDef_BSpParLeastSquareOfMyBSplGradientOfBSplineCompute %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend AppDef_BSpParLeastSquareOfMyBSplGradientOfBSplineCompute {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor AppDef_MyGradientbisOfBSplineCompute;
class AppDef_MyGradientbisOfBSplineCompute {
	public:
		%feature("autodoc", "1");
		AppDef_MyGradientbisOfBSplineCompute(const AppDef_MultiLine &SSP, const Standard_Integer FirstPoint, const Standard_Integer LastPoint, const Handle_AppParCurves_HArray1OfConstraintCouple &TheConstraints, math_Vector & Parameters, const Standard_Integer Deg, const Standard_Real Tol3d, const Standard_Real Tol2d, const Standard_Integer NbIterations=200);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		AppParCurves_MultiCurve Value() const;
		%feature("autodoc", "1");
		Standard_Real Error(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Real MaxError3d() const;
		%feature("autodoc", "1");
		Standard_Real MaxError2d() const;
		%feature("autodoc", "1");
		Standard_Real AverageError() const;

};
%feature("shadow") AppDef_MyGradientbisOfBSplineCompute::~AppDef_MyGradientbisOfBSplineCompute %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend AppDef_MyGradientbisOfBSplineCompute {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor AppDef_BSplineCompute;
class AppDef_BSplineCompute {
	public:
		%feature("autodoc", "1");
		AppDef_BSplineCompute(const AppDef_MultiLine &Line, const Standard_Integer degreemin=4, const Standard_Integer degreemax=8, const Standard_Real Tolerance3d=1.0000000000000000208166817117216851329430937767e-3, const Standard_Real Tolerance2d=9.99999999999999954748111825886258685613938723691e-7, const Standard_Integer NbIterations=5, const Standard_Boolean cutting=1, const Approx_ParametrizationType parametrization=Approx_ChordLength, const Standard_Boolean Squares=0);
		%feature("autodoc", "1");
		AppDef_BSplineCompute(const AppDef_MultiLine &Line, const math_Vector &Parameters, const Standard_Integer degreemin=4, const Standard_Integer degreemax=8, const Standard_Real Tolerance3d=1.0000000000000000208166817117216851329430937767e-3, const Standard_Real Tolerance2d=9.99999999999999954748111825886258685613938723691e-7, const Standard_Integer NbIterations=5, const Standard_Boolean cutting=1, const Standard_Boolean Squares=0);
		%feature("autodoc", "1");
		AppDef_BSplineCompute(const math_Vector &Parameters, const Standard_Integer degreemin=4, const Standard_Integer degreemax=8, const Standard_Real Tolerance3d=1.0000000000000000208166817117216851329430937767e-3, const Standard_Real Tolerance2d=9.99999999999999954748111825886258685613938723691e-7, const Standard_Integer NbIterations=5, const Standard_Boolean cutting=1, const Standard_Boolean Squares=0);
		%feature("autodoc", "1");
		AppDef_BSplineCompute(const Standard_Integer degreemin=4, const Standard_Integer degreemax=8, const Standard_Real Tolerance3d=1.0000000000000000208166817117216851329430937767e-3, const Standard_Real Tolerance2d=9.99999999999999954748111825886258685613938723691e-7, const Standard_Integer NbIterations=5, const Standard_Boolean cutting=1, const Approx_ParametrizationType parametrization=Approx_ChordLength, const Standard_Boolean Squares=0);
		%feature("autodoc", "1");
		void Interpol(const AppDef_MultiLine &Line);
		%feature("autodoc", "1");
		void Init(const Standard_Integer degreemin=4, const Standard_Integer degreemax=8, const Standard_Real Tolerance3d=1.0000000000000000208166817117216851329430937767e-3, const Standard_Real Tolerance2d=9.99999999999999954748111825886258685613938723691e-7, const Standard_Integer NbIterations=5, const Standard_Boolean cutting=1, const Approx_ParametrizationType parametrization=Approx_ChordLength, const Standard_Boolean Squares=0);
		%feature("autodoc", "1");
		void Perform(const AppDef_MultiLine &Line);
		%feature("autodoc", "1");
		void SetParameters(const math_Vector &ThePar);
		%feature("autodoc", "1");
		void SetKnots(const TColStd_Array1OfReal &Knots);
		%feature("autodoc", "1");
		void SetKnotsAndMultiplicities(const TColStd_Array1OfReal &Knots, const TColStd_Array1OfInteger &Mults);
		%feature("autodoc", "1");
		void SetDegrees(const Standard_Integer degreemin, const Standard_Integer degreemax);
		%feature("autodoc", "1");
		void SetTolerances(const Standard_Real Tolerance3d, const Standard_Real Tolerance2d);
		%feature("autodoc", "1");
		void SetContinuity(const Standard_Integer C);
		%feature("autodoc", "1");
		void SetConstraints(const AppParCurves_Constraint firstC, const AppParCurves_Constraint lastC);
		%feature("autodoc", "1");
		Standard_Boolean IsAllApproximated() const;
		%feature("autodoc", "1");
		Standard_Boolean IsToleranceReached() const;
		%feature("autodoc","Error() -> [Standard_Real, Standard_Real]");
		void Error(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		const AppParCurves_MultiBSpCurve & Value() const;
		%feature("autodoc", "1");
		AppParCurves_MultiBSpCurve & ChangeValue();
		%feature("autodoc", "1");
		const TColStd_Array1OfReal & Parameters() const;

};
%feature("shadow") AppDef_BSplineCompute::~AppDef_BSplineCompute %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend AppDef_BSplineCompute {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor AppDef_Gradient_BFGSOfTheGradient;
class AppDef_Gradient_BFGSOfTheGradient : public math_BFGS {
	public:
		%feature("autodoc", "1");
		AppDef_Gradient_BFGSOfTheGradient(math_MultipleVarFunctionWithGradient & F, const math_Vector &StartingPoint, const Standard_Real Tolerance3d, const Standard_Real Tolerance2d, const Standard_Real Eps, const Standard_Integer NbIterations=200);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsSolutionReached(math_MultipleVarFunctionWithGradient & F) const;

};
%feature("shadow") AppDef_Gradient_BFGSOfTheGradient::~AppDef_Gradient_BFGSOfTheGradient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend AppDef_Gradient_BFGSOfTheGradient {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor AppDef_ParLeastSquareOfMyGradientbisOfBSplineCompute;
class AppDef_ParLeastSquareOfMyGradientbisOfBSplineCompute {
	public:
		%feature("autodoc", "1");
		AppDef_ParLeastSquareOfMyGradientbisOfBSplineCompute(const AppDef_MultiLine &SSP, const Standard_Integer FirstPoint, const Standard_Integer LastPoint, const AppParCurves_Constraint FirstCons, const AppParCurves_Constraint LastCons, const math_Vector &Parameters, const Standard_Integer NbPol);
		%feature("autodoc", "1");
		AppDef_ParLeastSquareOfMyGradientbisOfBSplineCompute(const AppDef_MultiLine &SSP, const Standard_Integer FirstPoint, const Standard_Integer LastPoint, const AppParCurves_Constraint FirstCons, const AppParCurves_Constraint LastCons, const Standard_Integer NbPol);
		%feature("autodoc", "1");
		AppDef_ParLeastSquareOfMyGradientbisOfBSplineCompute(const AppDef_MultiLine &SSP, const TColStd_Array1OfReal &Knots, const TColStd_Array1OfInteger &Mults, const Standard_Integer FirstPoint, const Standard_Integer LastPoint, const AppParCurves_Constraint FirstCons, const AppParCurves_Constraint LastCons, const math_Vector &Parameters, const Standard_Integer NbPol);
		%feature("autodoc", "1");
		AppDef_ParLeastSquareOfMyGradientbisOfBSplineCompute(const AppDef_MultiLine &SSP, const TColStd_Array1OfReal &Knots, const TColStd_Array1OfInteger &Mults, const Standard_Integer FirstPoint, const Standard_Integer LastPoint, const AppParCurves_Constraint FirstCons, const AppParCurves_Constraint LastCons, const Standard_Integer NbPol);
		%feature("autodoc", "1");
		void Perform(const math_Vector &Parameters);
		%feature("autodoc", "1");
		void Perform(const math_Vector &Parameters, const Standard_Real l1, const Standard_Real l2);
		%feature("autodoc", "1");
		void Perform(const math_Vector &Parameters, const math_Vector &V1t, const math_Vector &V2t, const Standard_Real l1, const Standard_Real l2);
		%feature("autodoc", "1");
		void Perform(const math_Vector &Parameters, const math_Vector &V1t, const math_Vector &V2t, const math_Vector &V1c, const math_Vector &V2c, const Standard_Real l1, const Standard_Real l2);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		AppParCurves_MultiCurve BezierValue();
		%feature("autodoc", "1");
		const AppParCurves_MultiBSpCurve & BSplineValue();
		%feature("autodoc", "1");
		const math_Matrix & FunctionMatrix() const;
		%feature("autodoc", "1");
		const math_Matrix & DerivativeFunctionMatrix() const;
		%feature("autodoc","ErrorGradient() -> [Standard_Real, Standard_Real, Standard_Real]");
		void ErrorGradient(math_Vector & Grad, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		const math_Matrix & Distance();
		%feature("autodoc","Error() -> [Standard_Real, Standard_Real, Standard_Real]");
		void Error(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		Standard_Real FirstLambda() const;
		%feature("autodoc", "1");
		Standard_Real LastLambda() const;
		%feature("autodoc", "1");
		const math_Matrix & Points() const;
		%feature("autodoc", "1");
		const math_Matrix & Poles() const;
		%feature("autodoc", "1");
		const math_IntegerVector & KIndex() const;

};
%feature("shadow") AppDef_ParLeastSquareOfMyGradientbisOfBSplineCompute::~AppDef_ParLeastSquareOfMyGradientbisOfBSplineCompute %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend AppDef_ParLeastSquareOfMyGradientbisOfBSplineCompute {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor AppDef_ResConstraintOfMyGradientOfCompute;
class AppDef_ResConstraintOfMyGradientOfCompute {
	public:
		%feature("autodoc", "1");
		AppDef_ResConstraintOfMyGradientOfCompute(const AppDef_MultiLine &SSP, AppParCurves_MultiCurve & SCurv, const Standard_Integer FirstPoint, const Standard_Integer LastPoint, const Handle_AppParCurves_HArray1OfConstraintCouple &Constraints, const math_Matrix &Bern, const math_Matrix &DerivativeBern, const Standard_Real Tolerance=1.0000000000000000364321973154977415791655470656e-10);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		const math_Matrix & ConstraintMatrix() const;
		%feature("autodoc", "1");
		const math_Vector & Duale() const;
		%feature("autodoc", "1");
		const math_Matrix & ConstraintDerivative(const AppDef_MultiLine &SSP, const math_Vector &Parameters, const Standard_Integer Deg, const math_Matrix &DA);
		%feature("autodoc", "1");
		const math_Matrix & InverseMatrix() const;

};
%feature("shadow") AppDef_ResConstraintOfMyGradientOfCompute::~AppDef_ResConstraintOfMyGradientOfCompute %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend AppDef_ResConstraintOfMyGradientOfCompute {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor AppDef_Array1OfMultiPointConstraint;
class AppDef_Array1OfMultiPointConstraint {
	public:
		%feature("autodoc", "1");
		AppDef_Array1OfMultiPointConstraint(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		AppDef_Array1OfMultiPointConstraint(const AppDef_MultiPointConstraint &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const AppDef_MultiPointConstraint &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const AppDef_Array1OfMultiPointConstraint & Assign(const AppDef_Array1OfMultiPointConstraint &Other);
		%feature("autodoc", "1");
		const AppDef_Array1OfMultiPointConstraint & operator=(const AppDef_Array1OfMultiPointConstraint &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const AppDef_MultiPointConstraint &Value);
		%feature("autodoc", "1");
		const AppDef_MultiPointConstraint & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const AppDef_MultiPointConstraint & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		AppDef_MultiPointConstraint & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		AppDef_MultiPointConstraint & operator()(const Standard_Integer Index);

};
%feature("shadow") AppDef_Array1OfMultiPointConstraint::~AppDef_Array1OfMultiPointConstraint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend AppDef_Array1OfMultiPointConstraint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor AppDef_ParLeastSquareOfTheGradient;
class AppDef_ParLeastSquareOfTheGradient {
	public:
		%feature("autodoc", "1");
		AppDef_ParLeastSquareOfTheGradient(const AppDef_MultiLine &SSP, const Standard_Integer FirstPoint, const Standard_Integer LastPoint, const AppParCurves_Constraint FirstCons, const AppParCurves_Constraint LastCons, const math_Vector &Parameters, const Standard_Integer NbPol);
		%feature("autodoc", "1");
		AppDef_ParLeastSquareOfTheGradient(const AppDef_MultiLine &SSP, const Standard_Integer FirstPoint, const Standard_Integer LastPoint, const AppParCurves_Constraint FirstCons, const AppParCurves_Constraint LastCons, const Standard_Integer NbPol);
		%feature("autodoc", "1");
		AppDef_ParLeastSquareOfTheGradient(const AppDef_MultiLine &SSP, const TColStd_Array1OfReal &Knots, const TColStd_Array1OfInteger &Mults, const Standard_Integer FirstPoint, const Standard_Integer LastPoint, const AppParCurves_Constraint FirstCons, const AppParCurves_Constraint LastCons, const math_Vector &Parameters, const Standard_Integer NbPol);
		%feature("autodoc", "1");
		AppDef_ParLeastSquareOfTheGradient(const AppDef_MultiLine &SSP, const TColStd_Array1OfReal &Knots, const TColStd_Array1OfInteger &Mults, const Standard_Integer FirstPoint, const Standard_Integer LastPoint, const AppParCurves_Constraint FirstCons, const AppParCurves_Constraint LastCons, const Standard_Integer NbPol);
		%feature("autodoc", "1");
		void Perform(const math_Vector &Parameters);
		%feature("autodoc", "1");
		void Perform(const math_Vector &Parameters, const Standard_Real l1, const Standard_Real l2);
		%feature("autodoc", "1");
		void Perform(const math_Vector &Parameters, const math_Vector &V1t, const math_Vector &V2t, const Standard_Real l1, const Standard_Real l2);
		%feature("autodoc", "1");
		void Perform(const math_Vector &Parameters, const math_Vector &V1t, const math_Vector &V2t, const math_Vector &V1c, const math_Vector &V2c, const Standard_Real l1, const Standard_Real l2);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		AppParCurves_MultiCurve BezierValue();
		%feature("autodoc", "1");
		const AppParCurves_MultiBSpCurve & BSplineValue();
		%feature("autodoc", "1");
		const math_Matrix & FunctionMatrix() const;
		%feature("autodoc", "1");
		const math_Matrix & DerivativeFunctionMatrix() const;
		%feature("autodoc","ErrorGradient() -> [Standard_Real, Standard_Real, Standard_Real]");
		void ErrorGradient(math_Vector & Grad, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		const math_Matrix & Distance();
		%feature("autodoc","Error() -> [Standard_Real, Standard_Real, Standard_Real]");
		void Error(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		Standard_Real FirstLambda() const;
		%feature("autodoc", "1");
		Standard_Real LastLambda() const;
		%feature("autodoc", "1");
		const math_Matrix & Points() const;
		%feature("autodoc", "1");
		const math_Matrix & Poles() const;
		%feature("autodoc", "1");
		const math_IntegerVector & KIndex() const;

};
%feature("shadow") AppDef_ParLeastSquareOfTheGradient::~AppDef_ParLeastSquareOfTheGradient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend AppDef_ParLeastSquareOfTheGradient {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor AppDef_ParFunctionOfMyGradientOfCompute;
class AppDef_ParFunctionOfMyGradientOfCompute : public math_MultipleVarFunctionWithGradient {
	public:
		%feature("autodoc", "1");
		AppDef_ParFunctionOfMyGradientOfCompute(const AppDef_MultiLine &SSP, const Standard_Integer FirstPoint, const Standard_Integer LastPoint, const Handle_AppParCurves_HArray1OfConstraintCouple &TheConstraints, const math_Vector &Parameters, const Standard_Integer Deg);
		%feature("autodoc", "1");
		virtual		Standard_Integer NbVariables() const;
		%feature("autodoc","Value(const X) -> Standard_Real");
		virtual		Standard_Boolean Value(const math_Vector &X, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Gradient(const math_Vector &X, math_Vector & G);
		%feature("autodoc","Values(const X) -> Standard_Real");
		virtual		Standard_Boolean Values(const math_Vector &X, Standard_Real &OutValue, math_Vector & G);
		%feature("autodoc", "1");
		const math_Vector & NewParameters() const;
		%feature("autodoc", "1");
		const AppParCurves_MultiCurve & CurveValue();
		%feature("autodoc", "1");
		Standard_Real Error(const Standard_Integer IPoint, const Standard_Integer CurveIndex) const;
		%feature("autodoc", "1");
		Standard_Real MaxError3d() const;
		%feature("autodoc", "1");
		Standard_Real MaxError2d() const;
		%feature("autodoc", "1");
		AppParCurves_Constraint FirstConstraint(const Handle_AppParCurves_HArray1OfConstraintCouple &TheConstraints, const Standard_Integer FirstPoint) const;
		%feature("autodoc", "1");
		AppParCurves_Constraint LastConstraint(const Handle_AppParCurves_HArray1OfConstraintCouple &TheConstraints, const Standard_Integer LastPoint) const;

};
%feature("shadow") AppDef_ParFunctionOfMyGradientOfCompute::~AppDef_ParFunctionOfMyGradientOfCompute %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend AppDef_ParFunctionOfMyGradientOfCompute {
	void _kill_pointed() {
		delete $self;
	}
};
