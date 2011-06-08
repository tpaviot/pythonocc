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

%module GeomInt
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include GeomInt_renames.i


%include GeomInt_required_python_modules.i


%include GeomInt_dependencies.i


%include GeomInt_headers.i




%nodefaultctor Handle_GeomInt_SequenceNodeOfSequenceOfParameterAndOrientation;
class Handle_GeomInt_SequenceNodeOfSequenceOfParameterAndOrientation : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_GeomInt_SequenceNodeOfSequenceOfParameterAndOrientation();
		%feature("autodoc", "1");
		Handle_GeomInt_SequenceNodeOfSequenceOfParameterAndOrientation(const Handle_GeomInt_SequenceNodeOfSequenceOfParameterAndOrientation &aHandle);
		%feature("autodoc", "1");
		Handle_GeomInt_SequenceNodeOfSequenceOfParameterAndOrientation(const GeomInt_SequenceNodeOfSequenceOfParameterAndOrientation *anItem);
		%feature("autodoc", "1");
		Handle_GeomInt_SequenceNodeOfSequenceOfParameterAndOrientation & operator=(const Handle_GeomInt_SequenceNodeOfSequenceOfParameterAndOrientation &aHandle);
		%feature("autodoc", "1");
		Handle_GeomInt_SequenceNodeOfSequenceOfParameterAndOrientation & operator=(const GeomInt_SequenceNodeOfSequenceOfParameterAndOrientation *anItem);
		%feature("autodoc", "1");
		static		Handle_GeomInt_SequenceNodeOfSequenceOfParameterAndOrientation DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GeomInt_SequenceNodeOfSequenceOfParameterAndOrientation {
	GeomInt_SequenceNodeOfSequenceOfParameterAndOrientation* GetObject() {
	return (GeomInt_SequenceNodeOfSequenceOfParameterAndOrientation*)$self->Access();
	}
};
%feature("shadow") Handle_GeomInt_SequenceNodeOfSequenceOfParameterAndOrientation::~Handle_GeomInt_SequenceNodeOfSequenceOfParameterAndOrientation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GeomInt_SequenceNodeOfSequenceOfParameterAndOrientation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomInt_MyGradientOfTheComputeLineBezierOfWLApprox;
class GeomInt_MyGradientOfTheComputeLineBezierOfWLApprox {
	public:
		%feature("autodoc", "1");
		GeomInt_MyGradientOfTheComputeLineBezierOfWLApprox(const GeomInt_TheMultiLineOfWLApprox &SSP, const Standard_Integer FirstPoint, const Standard_Integer LastPoint, const Handle_AppParCurves_HArray1OfConstraintCouple &TheConstraints, math_Vector & Parameters, const Standard_Integer Deg, const Standard_Real Tol3d, const Standard_Real Tol2d, const Standard_Integer NbIterations=200);
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
%feature("shadow") GeomInt_MyGradientOfTheComputeLineBezierOfWLApprox::~GeomInt_MyGradientOfTheComputeLineBezierOfWLApprox %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomInt_MyGradientOfTheComputeLineBezierOfWLApprox {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomInt_MyBSplGradientOfTheComputeLineOfWLApprox;
class GeomInt_MyBSplGradientOfTheComputeLineOfWLApprox {
	public:
		%feature("autodoc", "1");
		GeomInt_MyBSplGradientOfTheComputeLineOfWLApprox(const GeomInt_TheMultiLineOfWLApprox &SSP, const Standard_Integer FirstPoint, const Standard_Integer LastPoint, const Handle_AppParCurves_HArray1OfConstraintCouple &TheConstraints, math_Vector & Parameters, const TColStd_Array1OfReal &Knots, const TColStd_Array1OfInteger &Mults, const Standard_Integer Deg, const Standard_Real Tol3d, const Standard_Real Tol2d, const Standard_Integer NbIterations=1);
		%feature("autodoc", "1");
		GeomInt_MyBSplGradientOfTheComputeLineOfWLApprox(const GeomInt_TheMultiLineOfWLApprox &SSP, const Standard_Integer FirstPoint, const Standard_Integer LastPoint, const Handle_AppParCurves_HArray1OfConstraintCouple &TheConstraints, math_Vector & Parameters, const TColStd_Array1OfReal &Knots, const TColStd_Array1OfInteger &Mults, const Standard_Integer Deg, const Standard_Real Tol3d, const Standard_Real Tol2d, const Standard_Integer NbIterations, const Standard_Real lambda1, const Standard_Real lambda2);
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
%feature("shadow") GeomInt_MyBSplGradientOfTheComputeLineOfWLApprox::~GeomInt_MyBSplGradientOfTheComputeLineOfWLApprox %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomInt_MyBSplGradientOfTheComputeLineOfWLApprox {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomInt_TheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox;
class GeomInt_TheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox : public math_FunctionSetWithDerivatives {
	public:
		%feature("autodoc", "1");
		GeomInt_TheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox();
		%feature("autodoc", "1");
		GeomInt_TheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox(const Handle_Adaptor3d_HSurface &PS, const IntSurf_Quadric &IS);
		%feature("autodoc", "1");
		GeomInt_TheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox(const IntSurf_Quadric &IS);
		%feature("autodoc", "1");
		void Set(const Handle_Adaptor3d_HSurface &PS);
		%feature("autodoc", "1");
		void SetImplicitSurface(const IntSurf_Quadric &IS);
		%feature("autodoc", "1");
		void Set(const Standard_Real Tol);
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
		Standard_Real Root() const;
		%feature("autodoc", "1");
		Standard_Real Tolerance() const;
		%feature("autodoc", "1");
		const gp_Pnt  Point() const;
		%feature("autodoc", "1");
		Standard_Boolean IsTangent();
		%feature("autodoc", "1");
		const gp_Vec  Direction3d();
		%feature("autodoc", "1");
		const gp_Dir2d  Direction2d();
		%feature("autodoc", "1");
		const Handle_Adaptor3d_HSurface & PSurface() const;
		%feature("autodoc", "1");
		const IntSurf_Quadric & ISurface() const;

};
%feature("shadow") GeomInt_TheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox::~GeomInt_TheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomInt_TheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomInt_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox;
class GeomInt_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox : public math_MultipleVarFunctionWithGradient {
	public:
		%feature("autodoc", "1");
		GeomInt_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox(const GeomInt_TheMultiLineOfWLApprox &SSP, const Standard_Integer FirstPoint, const Standard_Integer LastPoint, const Handle_AppParCurves_HArray1OfConstraintCouple &TheConstraints, const math_Vector &Parameters, const TColStd_Array1OfReal &Knots, const TColStd_Array1OfInteger &Mults, const Standard_Integer NbPol);
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
%feature("shadow") GeomInt_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox::~GeomInt_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomInt_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomInt_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfWLApprox;
class GeomInt_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfWLApprox {
	public:
		%feature("autodoc", "1");
		GeomInt_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfWLApprox(const GeomInt_TheMultiLineOfWLApprox &SSP, const Standard_Integer FirstPoint, const Standard_Integer LastPoint, const AppParCurves_Constraint FirstCons, const AppParCurves_Constraint LastCons, const math_Vector &Parameters, const Standard_Integer NbPol);
		%feature("autodoc", "1");
		GeomInt_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfWLApprox(const GeomInt_TheMultiLineOfWLApprox &SSP, const Standard_Integer FirstPoint, const Standard_Integer LastPoint, const AppParCurves_Constraint FirstCons, const AppParCurves_Constraint LastCons, const Standard_Integer NbPol);
		%feature("autodoc", "1");
		GeomInt_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfWLApprox(const GeomInt_TheMultiLineOfWLApprox &SSP, const TColStd_Array1OfReal &Knots, const TColStd_Array1OfInteger &Mults, const Standard_Integer FirstPoint, const Standard_Integer LastPoint, const AppParCurves_Constraint FirstCons, const AppParCurves_Constraint LastCons, const math_Vector &Parameters, const Standard_Integer NbPol);
		%feature("autodoc", "1");
		GeomInt_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfWLApprox(const GeomInt_TheMultiLineOfWLApprox &SSP, const TColStd_Array1OfReal &Knots, const TColStd_Array1OfInteger &Mults, const Standard_Integer FirstPoint, const Standard_Integer LastPoint, const AppParCurves_Constraint FirstCons, const AppParCurves_Constraint LastCons, const Standard_Integer NbPol);
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
%feature("shadow") GeomInt_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfWLApprox::~GeomInt_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfWLApprox %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomInt_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfWLApprox {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomInt_MyGradientbisOfTheComputeLineOfWLApprox;
class GeomInt_MyGradientbisOfTheComputeLineOfWLApprox {
	public:
		%feature("autodoc", "1");
		GeomInt_MyGradientbisOfTheComputeLineOfWLApprox(const GeomInt_TheMultiLineOfWLApprox &SSP, const Standard_Integer FirstPoint, const Standard_Integer LastPoint, const Handle_AppParCurves_HArray1OfConstraintCouple &TheConstraints, math_Vector & Parameters, const Standard_Integer Deg, const Standard_Real Tol3d, const Standard_Real Tol2d, const Standard_Integer NbIterations=200);
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
%feature("shadow") GeomInt_MyGradientbisOfTheComputeLineOfWLApprox::~GeomInt_MyGradientbisOfTheComputeLineOfWLApprox %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomInt_MyGradientbisOfTheComputeLineOfWLApprox {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomInt_ParFunctionOfMyGradientOfTheComputeLineBezierOfWLApprox;
class GeomInt_ParFunctionOfMyGradientOfTheComputeLineBezierOfWLApprox : public math_MultipleVarFunctionWithGradient {
	public:
		%feature("autodoc", "1");
		GeomInt_ParFunctionOfMyGradientOfTheComputeLineBezierOfWLApprox(const GeomInt_TheMultiLineOfWLApprox &SSP, const Standard_Integer FirstPoint, const Standard_Integer LastPoint, const Handle_AppParCurves_HArray1OfConstraintCouple &TheConstraints, const math_Vector &Parameters, const Standard_Integer Deg);
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
%feature("shadow") GeomInt_ParFunctionOfMyGradientOfTheComputeLineBezierOfWLApprox::~GeomInt_ParFunctionOfMyGradientOfTheComputeLineBezierOfWLApprox %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomInt_ParFunctionOfMyGradientOfTheComputeLineBezierOfWLApprox {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomInt_SequenceOfParameterAndOrientation;
class GeomInt_SequenceOfParameterAndOrientation : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		GeomInt_SequenceOfParameterAndOrientation();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const GeomInt_SequenceOfParameterAndOrientation & Assign(const GeomInt_SequenceOfParameterAndOrientation &Other);
		%feature("autodoc", "1");
		const GeomInt_SequenceOfParameterAndOrientation & operator=(const GeomInt_SequenceOfParameterAndOrientation &Other);
		%feature("autodoc", "1");
		void Append(const GeomInt_ParameterAndOrientation &T);
		%feature("autodoc", "1");
		void Append(GeomInt_SequenceOfParameterAndOrientation & S);
		%feature("autodoc", "1");
		void Prepend(const GeomInt_ParameterAndOrientation &T);
		%feature("autodoc", "1");
		void Prepend(GeomInt_SequenceOfParameterAndOrientation & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const GeomInt_ParameterAndOrientation &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, GeomInt_SequenceOfParameterAndOrientation & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const GeomInt_ParameterAndOrientation &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, GeomInt_SequenceOfParameterAndOrientation & S);
		%feature("autodoc", "1");
		const GeomInt_ParameterAndOrientation & First() const;
		%feature("autodoc", "1");
		const GeomInt_ParameterAndOrientation & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, GeomInt_SequenceOfParameterAndOrientation & S);
		%feature("autodoc", "1");
		const GeomInt_ParameterAndOrientation & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const GeomInt_ParameterAndOrientation & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const GeomInt_ParameterAndOrientation &I);
		%feature("autodoc", "1");
		GeomInt_ParameterAndOrientation & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		GeomInt_ParameterAndOrientation & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") GeomInt_SequenceOfParameterAndOrientation::~GeomInt_SequenceOfParameterAndOrientation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomInt_SequenceOfParameterAndOrientation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomInt_SequenceNodeOfSequenceOfParameterAndOrientation;
class GeomInt_SequenceNodeOfSequenceOfParameterAndOrientation : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		GeomInt_SequenceNodeOfSequenceOfParameterAndOrientation(const GeomInt_ParameterAndOrientation &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		GeomInt_ParameterAndOrientation & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GeomInt_SequenceNodeOfSequenceOfParameterAndOrientation {
	Handle_GeomInt_SequenceNodeOfSequenceOfParameterAndOrientation GetHandle() {
	return *(Handle_GeomInt_SequenceNodeOfSequenceOfParameterAndOrientation*) &$self;
	}
};
%extend GeomInt_SequenceNodeOfSequenceOfParameterAndOrientation {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") GeomInt_SequenceNodeOfSequenceOfParameterAndOrientation::~GeomInt_SequenceNodeOfSequenceOfParameterAndOrientation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomInt_SequenceNodeOfSequenceOfParameterAndOrientation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomInt_TheMultiLineOfWLApprox;
class GeomInt_TheMultiLineOfWLApprox {
	public:
		%feature("autodoc", "1");
		GeomInt_TheMultiLineOfWLApprox(const Handle_IntPatch_WLine &line, const Standard_Address PtrSvSurfaces, const Standard_Integer NbP3d, const Standard_Integer NbP2d, const Standard_Real xo, const Standard_Real ax, const Standard_Real yo, const Standard_Real ay, const Standard_Real zo, const Standard_Real az, const Standard_Real u1o, const Standard_Real a1u, const Standard_Real v1o, const Standard_Real a1v, const Standard_Real u2o, const Standard_Real a2u, const Standard_Real v2o, const Standard_Real a2v, const Standard_Boolean P2DOnFirst, const Standard_Integer IndMin=0, const Standard_Integer IndMax=0);
		%feature("autodoc", "1");
		GeomInt_TheMultiLineOfWLApprox(const Handle_IntPatch_WLine &line, const Standard_Integer NbP3d, const Standard_Integer NbP2d, const Standard_Real xo, const Standard_Real ax, const Standard_Real yo, const Standard_Real ay, const Standard_Real zo, const Standard_Real az, const Standard_Real u1o, const Standard_Real a1u, const Standard_Real v1o, const Standard_Real a1v, const Standard_Real u2o, const Standard_Real a2u, const Standard_Real v2o, const Standard_Real a2v, const Standard_Boolean P2DOnFirst, const Standard_Integer IndMin=0, const Standard_Integer IndMax=0);
		%feature("autodoc", "1");
		Standard_Integer FirstPoint() const;
		%feature("autodoc", "1");
		Standard_Integer LastPoint() const;
		%feature("autodoc", "1");
		Standard_Integer NbP2d() const;
		%feature("autodoc", "1");
		Standard_Integer NbP3d() const;
		%feature("autodoc", "1");
		Approx_Status WhatStatus() const;
		%feature("autodoc", "1");
		void Value(const Standard_Integer MPointIndex, TColgp_Array1OfPnt & tabPt) const;
		%feature("autodoc", "1");
		void Value(const Standard_Integer MPointIndex, TColgp_Array1OfPnt2d & tabPt2d) const;
		%feature("autodoc", "1");
		void Value(const Standard_Integer MPointIndex, TColgp_Array1OfPnt & tabPt, TColgp_Array1OfPnt2d & tabPt2d) const;
		%feature("autodoc", "1");
		Standard_Boolean Tangency(const Standard_Integer MPointIndex, TColgp_Array1OfVec & tabV) const;
		%feature("autodoc", "1");
		Standard_Boolean Tangency(const Standard_Integer MPointIndex, TColgp_Array1OfVec2d & tabV2d) const;
		%feature("autodoc", "1");
		Standard_Boolean Tangency(const Standard_Integer MPointIndex, TColgp_Array1OfVec & tabV, TColgp_Array1OfVec2d & tabV2d) const;
		%feature("autodoc", "1");
		GeomInt_TheMultiLineOfWLApprox MakeMLBetween(const Standard_Integer Low, const Standard_Integer High, const Standard_Integer NbPointsToInsert) const;

};
%feature("shadow") GeomInt_TheMultiLineOfWLApprox::~GeomInt_TheMultiLineOfWLApprox %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomInt_TheMultiLineOfWLApprox {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomInt_Gradient_BFGSOfMyGradientbisOfTheComputeLineOfWLApprox;
class GeomInt_Gradient_BFGSOfMyGradientbisOfTheComputeLineOfWLApprox : public math_BFGS {
	public:
		%feature("autodoc", "1");
		GeomInt_Gradient_BFGSOfMyGradientbisOfTheComputeLineOfWLApprox(math_MultipleVarFunctionWithGradient & F, const math_Vector &StartingPoint, const Standard_Real Tolerance3d, const Standard_Real Tolerance2d, const Standard_Real Eps, const Standard_Integer NbIterations=200);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsSolutionReached(math_MultipleVarFunctionWithGradient & F) const;

};
%feature("shadow") GeomInt_Gradient_BFGSOfMyGradientbisOfTheComputeLineOfWLApprox::~GeomInt_Gradient_BFGSOfMyGradientbisOfTheComputeLineOfWLApprox %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomInt_Gradient_BFGSOfMyGradientbisOfTheComputeLineOfWLApprox {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomInt_ParFunctionOfMyGradientbisOfTheComputeLineOfWLApprox;
class GeomInt_ParFunctionOfMyGradientbisOfTheComputeLineOfWLApprox : public math_MultipleVarFunctionWithGradient {
	public:
		%feature("autodoc", "1");
		GeomInt_ParFunctionOfMyGradientbisOfTheComputeLineOfWLApprox(const GeomInt_TheMultiLineOfWLApprox &SSP, const Standard_Integer FirstPoint, const Standard_Integer LastPoint, const Handle_AppParCurves_HArray1OfConstraintCouple &TheConstraints, const math_Vector &Parameters, const Standard_Integer Deg);
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
%feature("shadow") GeomInt_ParFunctionOfMyGradientbisOfTheComputeLineOfWLApprox::~GeomInt_ParFunctionOfMyGradientbisOfTheComputeLineOfWLApprox %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomInt_ParFunctionOfMyGradientbisOfTheComputeLineOfWLApprox {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomInt_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox;
class GeomInt_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox : public math_FunctionSetWithDerivatives {
	public:
		%feature("autodoc", "1");
		GeomInt_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox();
		%feature("autodoc", "1");
		GeomInt_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox(const Handle_Adaptor3d_HSurface &S1, const Handle_Adaptor3d_HSurface &S2);
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
		void ComputeParameters(const IntImp_ConstIsoparametric ChoixIso, const TColStd_Array1OfReal &Param, math_Vector & UVap, math_Vector & BornInf, math_Vector & BornSup, math_Vector & Tolerance);
		%feature("autodoc", "1");
		Standard_Real Root() const;
		%feature("autodoc", "1");
		gp_Pnt Point() const;
		%feature("autodoc", "1");
		Standard_Boolean IsTangent(const math_Vector &UVap, TColStd_Array1OfReal & Param, IntImp_ConstIsoparametric & BestChoix);
		%feature("autodoc", "1");
		gp_Dir Direction() const;
		%feature("autodoc", "1");
		gp_Dir2d DirectionOnS1() const;
		%feature("autodoc", "1");
		gp_Dir2d DirectionOnS2() const;
		%feature("autodoc", "1");
		const Handle_Adaptor3d_HSurface & AuxillarSurface1() const;
		%feature("autodoc", "1");
		const Handle_Adaptor3d_HSurface & AuxillarSurface2() const;

};
%feature("shadow") GeomInt_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox::~GeomInt_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomInt_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomInt_ParLeastSquareOfMyGradientbisOfTheComputeLineOfWLApprox;
class GeomInt_ParLeastSquareOfMyGradientbisOfTheComputeLineOfWLApprox {
	public:
		%feature("autodoc", "1");
		GeomInt_ParLeastSquareOfMyGradientbisOfTheComputeLineOfWLApprox(const GeomInt_TheMultiLineOfWLApprox &SSP, const Standard_Integer FirstPoint, const Standard_Integer LastPoint, const AppParCurves_Constraint FirstCons, const AppParCurves_Constraint LastCons, const math_Vector &Parameters, const Standard_Integer NbPol);
		%feature("autodoc", "1");
		GeomInt_ParLeastSquareOfMyGradientbisOfTheComputeLineOfWLApprox(const GeomInt_TheMultiLineOfWLApprox &SSP, const Standard_Integer FirstPoint, const Standard_Integer LastPoint, const AppParCurves_Constraint FirstCons, const AppParCurves_Constraint LastCons, const Standard_Integer NbPol);
		%feature("autodoc", "1");
		GeomInt_ParLeastSquareOfMyGradientbisOfTheComputeLineOfWLApprox(const GeomInt_TheMultiLineOfWLApprox &SSP, const TColStd_Array1OfReal &Knots, const TColStd_Array1OfInteger &Mults, const Standard_Integer FirstPoint, const Standard_Integer LastPoint, const AppParCurves_Constraint FirstCons, const AppParCurves_Constraint LastCons, const math_Vector &Parameters, const Standard_Integer NbPol);
		%feature("autodoc", "1");
		GeomInt_ParLeastSquareOfMyGradientbisOfTheComputeLineOfWLApprox(const GeomInt_TheMultiLineOfWLApprox &SSP, const TColStd_Array1OfReal &Knots, const TColStd_Array1OfInteger &Mults, const Standard_Integer FirstPoint, const Standard_Integer LastPoint, const AppParCurves_Constraint FirstCons, const AppParCurves_Constraint LastCons, const Standard_Integer NbPol);
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
%feature("shadow") GeomInt_ParLeastSquareOfMyGradientbisOfTheComputeLineOfWLApprox::~GeomInt_ParLeastSquareOfMyGradientbisOfTheComputeLineOfWLApprox %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomInt_ParLeastSquareOfMyGradientbisOfTheComputeLineOfWLApprox {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomInt_ThePrmPrmSvSurfacesOfWLApprox;
class GeomInt_ThePrmPrmSvSurfacesOfWLApprox : public ApproxInt_SvSurfaces {
	public:
		%feature("autodoc", "1");
		GeomInt_ThePrmPrmSvSurfacesOfWLApprox(const Handle_Adaptor3d_HSurface &Surf1, const Handle_Adaptor3d_HSurface &Surf2);
		%feature("autodoc","Compute() -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real]");

		virtual		Standard_Boolean Compute(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt & Pt, gp_Vec & Tg, gp_Vec2d & Tguv1, gp_Vec2d & Tguv2);
		%feature("autodoc", "1");
		virtual		void Pnt(const Standard_Real u1, const Standard_Real v1, const Standard_Real u2, const Standard_Real v2, gp_Pnt & P);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Tangency(const Standard_Real u1, const Standard_Real v1, const Standard_Real u2, const Standard_Real v2, gp_Vec & Tg);
		%feature("autodoc", "1");
		virtual		Standard_Boolean TangencyOnSurf1(const Standard_Real u1, const Standard_Real v1, const Standard_Real u2, const Standard_Real v2, gp_Vec2d & Tg);
		%feature("autodoc", "1");
		virtual		Standard_Boolean TangencyOnSurf2(const Standard_Real u1, const Standard_Real v1, const Standard_Real u2, const Standard_Real v2, gp_Vec2d & Tg);

};
%feature("shadow") GeomInt_ThePrmPrmSvSurfacesOfWLApprox::~GeomInt_ThePrmPrmSvSurfacesOfWLApprox %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomInt_ThePrmPrmSvSurfacesOfWLApprox {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomInt_ParLeastSquareOfMyGradientOfTheComputeLineBezierOfWLApprox;
class GeomInt_ParLeastSquareOfMyGradientOfTheComputeLineBezierOfWLApprox {
	public:
		%feature("autodoc", "1");
		GeomInt_ParLeastSquareOfMyGradientOfTheComputeLineBezierOfWLApprox(const GeomInt_TheMultiLineOfWLApprox &SSP, const Standard_Integer FirstPoint, const Standard_Integer LastPoint, const AppParCurves_Constraint FirstCons, const AppParCurves_Constraint LastCons, const math_Vector &Parameters, const Standard_Integer NbPol);
		%feature("autodoc", "1");
		GeomInt_ParLeastSquareOfMyGradientOfTheComputeLineBezierOfWLApprox(const GeomInt_TheMultiLineOfWLApprox &SSP, const Standard_Integer FirstPoint, const Standard_Integer LastPoint, const AppParCurves_Constraint FirstCons, const AppParCurves_Constraint LastCons, const Standard_Integer NbPol);
		%feature("autodoc", "1");
		GeomInt_ParLeastSquareOfMyGradientOfTheComputeLineBezierOfWLApprox(const GeomInt_TheMultiLineOfWLApprox &SSP, const TColStd_Array1OfReal &Knots, const TColStd_Array1OfInteger &Mults, const Standard_Integer FirstPoint, const Standard_Integer LastPoint, const AppParCurves_Constraint FirstCons, const AppParCurves_Constraint LastCons, const math_Vector &Parameters, const Standard_Integer NbPol);
		%feature("autodoc", "1");
		GeomInt_ParLeastSquareOfMyGradientOfTheComputeLineBezierOfWLApprox(const GeomInt_TheMultiLineOfWLApprox &SSP, const TColStd_Array1OfReal &Knots, const TColStd_Array1OfInteger &Mults, const Standard_Integer FirstPoint, const Standard_Integer LastPoint, const AppParCurves_Constraint FirstCons, const AppParCurves_Constraint LastCons, const Standard_Integer NbPol);
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
%feature("shadow") GeomInt_ParLeastSquareOfMyGradientOfTheComputeLineBezierOfWLApprox::~GeomInt_ParLeastSquareOfMyGradientOfTheComputeLineBezierOfWLApprox %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomInt_ParLeastSquareOfMyGradientOfTheComputeLineBezierOfWLApprox {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomInt_TheComputeLineBezierOfWLApprox;
class GeomInt_TheComputeLineBezierOfWLApprox {
	public:
		%feature("autodoc", "1");
		GeomInt_TheComputeLineBezierOfWLApprox(const GeomInt_TheMultiLineOfWLApprox &Line, const Standard_Integer degreemin=4, const Standard_Integer degreemax=8, const Standard_Real Tolerance3d=1.0000000000000000208166817117216851329430937767e-3, const Standard_Real Tolerance2d=9.99999999999999954748111825886258685613938723691e-7, const Standard_Integer NbIterations=5, const Standard_Boolean cutting=1, const Approx_ParametrizationType parametrization=Approx_ChordLength, const Standard_Boolean Squares=0);
		%feature("autodoc", "1");
		GeomInt_TheComputeLineBezierOfWLApprox(const GeomInt_TheMultiLineOfWLApprox &Line, const math_Vector &Parameters, const Standard_Integer degreemin=4, const Standard_Integer degreemax=8, const Standard_Real Tolerance3d=1.0000000000000000208166817117216851329430937767e-3, const Standard_Real Tolerance2d=9.99999999999999954748111825886258685613938723691e-7, const Standard_Integer NbIterations=5, const Standard_Boolean cutting=1, const Standard_Boolean Squares=0);
		%feature("autodoc", "1");
		GeomInt_TheComputeLineBezierOfWLApprox(const math_Vector &Parameters, const Standard_Integer degreemin=4, const Standard_Integer degreemax=8, const Standard_Real Tolerance3d=1.0000000000000000208166817117216851329430937767e-3, const Standard_Real Tolerance2d=9.99999999999999954748111825886258685613938723691e-7, const Standard_Integer NbIterations=5, const Standard_Boolean cutting=1, const Standard_Boolean Squares=0);
		%feature("autodoc", "1");
		GeomInt_TheComputeLineBezierOfWLApprox(const Standard_Integer degreemin=4, const Standard_Integer degreemax=8, const Standard_Real Tolerance3d=1.0000000000000000208166817117216851329430937767e-3, const Standard_Real Tolerance2d=9.99999999999999954748111825886258685613938723691e-7, const Standard_Integer NbIterations=5, const Standard_Boolean cutting=1, const Approx_ParametrizationType parametrization=Approx_ChordLength, const Standard_Boolean Squares=0);
		%feature("autodoc", "1");
		void Init(const Standard_Integer degreemin=4, const Standard_Integer degreemax=8, const Standard_Real Tolerance3d=1.0000000000000000208166817117216851329430937767e-3, const Standard_Real Tolerance2d=9.99999999999999954748111825886258685613938723691e-7, const Standard_Integer NbIterations=5, const Standard_Boolean cutting=1, const Approx_ParametrizationType parametrization=Approx_ChordLength, const Standard_Boolean Squares=0);
		%feature("autodoc", "1");
		void Perform(const GeomInt_TheMultiLineOfWLApprox &Line);
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
		%feature("autodoc","Error(Standard_Integer Index) -> [Standard_Real, Standard_Real]");

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
%feature("shadow") GeomInt_TheComputeLineBezierOfWLApprox::~GeomInt_TheComputeLineBezierOfWLApprox %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomInt_TheComputeLineBezierOfWLApprox {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomInt_Gradient_BFGSOfMyGradientOfTheComputeLineBezierOfWLApprox;
class GeomInt_Gradient_BFGSOfMyGradientOfTheComputeLineBezierOfWLApprox : public math_BFGS {
	public:
		%feature("autodoc", "1");
		GeomInt_Gradient_BFGSOfMyGradientOfTheComputeLineBezierOfWLApprox(math_MultipleVarFunctionWithGradient & F, const math_Vector &StartingPoint, const Standard_Real Tolerance3d, const Standard_Real Tolerance2d, const Standard_Real Eps, const Standard_Integer NbIterations=200);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsSolutionReached(math_MultipleVarFunctionWithGradient & F) const;

};
%feature("shadow") GeomInt_Gradient_BFGSOfMyGradientOfTheComputeLineBezierOfWLApprox::~GeomInt_Gradient_BFGSOfMyGradientOfTheComputeLineBezierOfWLApprox %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomInt_Gradient_BFGSOfMyGradientOfTheComputeLineBezierOfWLApprox {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomInt_LineTool;
class GeomInt_LineTool {
	public:
		%feature("autodoc", "1");
		GeomInt_LineTool();
		%feature("autodoc", "1");
		static		Standard_Integer NbVertex(const Handle_IntPatch_Line &L);
		%feature("autodoc", "1");
		static		const IntPatch_Point & Vertex(const Handle_IntPatch_Line &L, const Standard_Integer I);
		%feature("autodoc", "1");
		static		Standard_Real FirstParameter(const Handle_IntPatch_Line &L);
		%feature("autodoc", "1");
		static		Standard_Real LastParameter(const Handle_IntPatch_Line &L);

};
%feature("shadow") GeomInt_LineTool::~GeomInt_LineTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomInt_LineTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomInt_TheComputeLineOfWLApprox;
class GeomInt_TheComputeLineOfWLApprox {
	public:
		%feature("autodoc", "1");
		GeomInt_TheComputeLineOfWLApprox(const GeomInt_TheMultiLineOfWLApprox &Line, const Standard_Integer degreemin=4, const Standard_Integer degreemax=8, const Standard_Real Tolerance3d=1.0000000000000000208166817117216851329430937767e-3, const Standard_Real Tolerance2d=9.99999999999999954748111825886258685613938723691e-7, const Standard_Integer NbIterations=5, const Standard_Boolean cutting=1, const Approx_ParametrizationType parametrization=Approx_ChordLength, const Standard_Boolean Squares=0);
		%feature("autodoc", "1");
		GeomInt_TheComputeLineOfWLApprox(const GeomInt_TheMultiLineOfWLApprox &Line, const math_Vector &Parameters, const Standard_Integer degreemin=4, const Standard_Integer degreemax=8, const Standard_Real Tolerance3d=1.0000000000000000208166817117216851329430937767e-3, const Standard_Real Tolerance2d=9.99999999999999954748111825886258685613938723691e-7, const Standard_Integer NbIterations=5, const Standard_Boolean cutting=1, const Standard_Boolean Squares=0);
		%feature("autodoc", "1");
		GeomInt_TheComputeLineOfWLApprox(const math_Vector &Parameters, const Standard_Integer degreemin=4, const Standard_Integer degreemax=8, const Standard_Real Tolerance3d=1.0000000000000000208166817117216851329430937767e-3, const Standard_Real Tolerance2d=9.99999999999999954748111825886258685613938723691e-7, const Standard_Integer NbIterations=5, const Standard_Boolean cutting=1, const Standard_Boolean Squares=0);
		%feature("autodoc", "1");
		GeomInt_TheComputeLineOfWLApprox(const Standard_Integer degreemin=4, const Standard_Integer degreemax=8, const Standard_Real Tolerance3d=1.0000000000000000208166817117216851329430937767e-3, const Standard_Real Tolerance2d=9.99999999999999954748111825886258685613938723691e-7, const Standard_Integer NbIterations=5, const Standard_Boolean cutting=1, const Approx_ParametrizationType parametrization=Approx_ChordLength, const Standard_Boolean Squares=0);
		%feature("autodoc", "1");
		void Interpol(const GeomInt_TheMultiLineOfWLApprox &Line);
		%feature("autodoc", "1");
		void Init(const Standard_Integer degreemin=4, const Standard_Integer degreemax=8, const Standard_Real Tolerance3d=1.0000000000000000208166817117216851329430937767e-3, const Standard_Real Tolerance2d=9.99999999999999954748111825886258685613938723691e-7, const Standard_Integer NbIterations=5, const Standard_Boolean cutting=1, const Approx_ParametrizationType parametrization=Approx_ChordLength, const Standard_Boolean Squares=0);
		%feature("autodoc", "1");
		void Perform(const GeomInt_TheMultiLineOfWLApprox &Line);
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
%feature("shadow") GeomInt_TheComputeLineOfWLApprox::~GeomInt_TheComputeLineOfWLApprox %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomInt_TheComputeLineOfWLApprox {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomInt_BSpGradient_BFGSOfMyBSplGradientOfTheComputeLineOfWLApprox;
class GeomInt_BSpGradient_BFGSOfMyBSplGradientOfTheComputeLineOfWLApprox : public math_BFGS {
	public:
		%feature("autodoc", "1");
		GeomInt_BSpGradient_BFGSOfMyBSplGradientOfTheComputeLineOfWLApprox(math_MultipleVarFunctionWithGradient & F, const math_Vector &StartingPoint, const Standard_Real Tolerance3d, const Standard_Real Tolerance2d, const Standard_Real Eps, const Standard_Integer NbIterations=200);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsSolutionReached(math_MultipleVarFunctionWithGradient & F) const;

};
%feature("shadow") GeomInt_BSpGradient_BFGSOfMyBSplGradientOfTheComputeLineOfWLApprox::~GeomInt_BSpGradient_BFGSOfMyBSplGradientOfTheComputeLineOfWLApprox %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomInt_BSpGradient_BFGSOfMyBSplGradientOfTheComputeLineOfWLApprox {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomInt_ParameterAndOrientation;
class GeomInt_ParameterAndOrientation {
	public:
		%feature("autodoc", "1");
		GeomInt_ParameterAndOrientation();
		%feature("autodoc", "1");
		GeomInt_ParameterAndOrientation(const Standard_Real P, const TopAbs_Orientation Or1, const TopAbs_Orientation Or2);
		%feature("autodoc", "1");
		void SetOrientation1(const TopAbs_Orientation Or);
		%feature("autodoc", "1");
		void SetOrientation2(const TopAbs_Orientation Or);
		%feature("autodoc", "1");
		Standard_Real Parameter() const;
		%feature("autodoc", "1");
		TopAbs_Orientation Orientation1() const;
		%feature("autodoc", "1");
		TopAbs_Orientation Orientation2() const;

};
%feature("shadow") GeomInt_ParameterAndOrientation::~GeomInt_ParameterAndOrientation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomInt_ParameterAndOrientation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomInt_TheMultiLineToolOfWLApprox;
class GeomInt_TheMultiLineToolOfWLApprox {
	public:
		%feature("autodoc", "1");
		GeomInt_TheMultiLineToolOfWLApprox();
		%feature("autodoc", "1");
		static		Standard_Integer FirstPoint(const GeomInt_TheMultiLineOfWLApprox &ML);
		%feature("autodoc", "1");
		static		Standard_Integer LastPoint(const GeomInt_TheMultiLineOfWLApprox &ML);
		%feature("autodoc", "1");
		static		Standard_Integer NbP2d(const GeomInt_TheMultiLineOfWLApprox &ML);
		%feature("autodoc", "1");
		static		Standard_Integer NbP3d(const GeomInt_TheMultiLineOfWLApprox &ML);
		%feature("autodoc", "1");
		static		void Value(const GeomInt_TheMultiLineOfWLApprox &ML, const Standard_Integer Index, TColgp_Array1OfPnt & TabPnt);
		%feature("autodoc", "1");
		static		void Value(const GeomInt_TheMultiLineOfWLApprox &ML, const Standard_Integer Index, TColgp_Array1OfPnt2d & TabPnt2d);
		%feature("autodoc", "1");
		static		void Value(const GeomInt_TheMultiLineOfWLApprox &ML, const Standard_Integer Index, TColgp_Array1OfPnt & TabPnt, TColgp_Array1OfPnt2d & TabPnt2d);
		%feature("autodoc", "1");
		static		Standard_Boolean Tangency(const GeomInt_TheMultiLineOfWLApprox &ML, const Standard_Integer Index, TColgp_Array1OfVec & TabVec);
		%feature("autodoc", "1");
		static		Standard_Boolean Tangency(const GeomInt_TheMultiLineOfWLApprox &ML, const Standard_Integer Index, TColgp_Array1OfVec2d & TabVec2d);
		%feature("autodoc", "1");
		static		Standard_Boolean Tangency(const GeomInt_TheMultiLineOfWLApprox &ML, const Standard_Integer Index, TColgp_Array1OfVec & TabVec, TColgp_Array1OfVec2d & TabVec2d);
		%feature("autodoc", "1");
		static		Standard_Boolean Curvature(const GeomInt_TheMultiLineOfWLApprox &arg0, const Standard_Integer arg1, TColgp_Array1OfVec & arg2);
		%feature("autodoc", "1");
		static		Standard_Boolean Curvature(const GeomInt_TheMultiLineOfWLApprox &arg0, const Standard_Integer arg1, TColgp_Array1OfVec2d & arg2);
		%feature("autodoc", "1");
		static		Standard_Boolean Curvature(const GeomInt_TheMultiLineOfWLApprox &arg0, const Standard_Integer arg1, TColgp_Array1OfVec & arg2, TColgp_Array1OfVec2d & arg3);
		%feature("autodoc", "1");
		static		GeomInt_TheMultiLineOfWLApprox MakeMLBetween(const GeomInt_TheMultiLineOfWLApprox &ML, const Standard_Integer I1, const Standard_Integer I2, const Standard_Integer NbPMin);
		%feature("autodoc", "1");
		static		Approx_Status WhatStatus(const GeomInt_TheMultiLineOfWLApprox &ML, const Standard_Integer arg1, const Standard_Integer arg2);

};
%feature("shadow") GeomInt_TheMultiLineToolOfWLApprox::~GeomInt_TheMultiLineToolOfWLApprox %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomInt_TheMultiLineToolOfWLApprox {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomInt_LineConstructor;
class GeomInt_LineConstructor {
	public:
		%feature("autodoc", "1");
		GeomInt_LineConstructor();
		%feature("autodoc", "1");
		void Load(const Handle_Adaptor3d_TopolTool &D1, const Handle_Adaptor3d_TopolTool &D2, const Handle_GeomAdaptor_HSurface &S1, const Handle_GeomAdaptor_HSurface &S2);
		%feature("autodoc", "1");
		void Perform(const Handle_IntPatch_Line &L);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbParts() const;
		%feature("autodoc","Part(Standard_Integer I) -> [Standard_Real, Standard_Real]");

		void Part(const Standard_Integer I, Standard_Real &OutValue, Standard_Real &OutValue) const;

};
%feature("shadow") GeomInt_LineConstructor::~GeomInt_LineConstructor %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomInt_LineConstructor {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomInt_TheInt2SOfThePrmPrmSvSurfacesOfWLApprox;
class GeomInt_TheInt2SOfThePrmPrmSvSurfacesOfWLApprox {
	public:
		%feature("autodoc", "1");
		GeomInt_TheInt2SOfThePrmPrmSvSurfacesOfWLApprox();
		%feature("autodoc", "1");
		GeomInt_TheInt2SOfThePrmPrmSvSurfacesOfWLApprox(const TColStd_Array1OfReal &Param, const Handle_Adaptor3d_HSurface &S1, const Handle_Adaptor3d_HSurface &S2, const Standard_Real TolTangency);
		%feature("autodoc", "1");
		GeomInt_TheInt2SOfThePrmPrmSvSurfacesOfWLApprox(const Handle_Adaptor3d_HSurface &S1, const Handle_Adaptor3d_HSurface &S2, const Standard_Real TolTangency);
		%feature("autodoc", "1");
		IntImp_ConstIsoparametric Perform(const TColStd_Array1OfReal &Param, math_FunctionSetRoot & Rsnld);
		%feature("autodoc", "1");
		IntImp_ConstIsoparametric Perform(const TColStd_Array1OfReal &Param, math_FunctionSetRoot & Rsnld, const IntImp_ConstIsoparametric ChoixIso);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		const IntSurf_PntOn2S & Point() const;
		%feature("autodoc", "1");
		Standard_Boolean IsTangent() const;
		%feature("autodoc", "1");
		const gp_Dir  Direction() const;
		%feature("autodoc", "1");
		const gp_Dir2d  DirectionOnS1() const;
		%feature("autodoc", "1");
		const gp_Dir2d  DirectionOnS2() const;
		%feature("autodoc", "1");
		GeomInt_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox & Function();

};
%feature("shadow") GeomInt_TheInt2SOfThePrmPrmSvSurfacesOfWLApprox::~GeomInt_TheInt2SOfThePrmPrmSvSurfacesOfWLApprox %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomInt_TheInt2SOfThePrmPrmSvSurfacesOfWLApprox {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomInt_TheImpPrmSvSurfacesOfWLApprox;
class GeomInt_TheImpPrmSvSurfacesOfWLApprox : public ApproxInt_SvSurfaces {
	public:
		%feature("autodoc", "1");
		GeomInt_TheImpPrmSvSurfacesOfWLApprox(const Handle_Adaptor3d_HSurface &Surf1, const IntSurf_Quadric &Surf2);
		%feature("autodoc", "1");
		GeomInt_TheImpPrmSvSurfacesOfWLApprox(const IntSurf_Quadric &Surf1, const Handle_Adaptor3d_HSurface &Surf2);
		%feature("autodoc","Compute() -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real]");

		virtual		Standard_Boolean Compute(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt & Pt, gp_Vec & Tg, gp_Vec2d & Tguv1, gp_Vec2d & Tguv2);
		%feature("autodoc", "1");
		virtual		void Pnt(const Standard_Real u1, const Standard_Real v1, const Standard_Real u2, const Standard_Real v2, gp_Pnt & P);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Tangency(const Standard_Real u1, const Standard_Real v1, const Standard_Real u2, const Standard_Real v2, gp_Vec & Tg);
		%feature("autodoc", "1");
		virtual		Standard_Boolean TangencyOnSurf1(const Standard_Real u1, const Standard_Real v1, const Standard_Real u2, const Standard_Real v2, gp_Vec2d & Tg);
		%feature("autodoc", "1");
		virtual		Standard_Boolean TangencyOnSurf2(const Standard_Real u1, const Standard_Real v1, const Standard_Real u2, const Standard_Real v2, gp_Vec2d & Tg);

};
%feature("shadow") GeomInt_TheImpPrmSvSurfacesOfWLApprox::~GeomInt_TheImpPrmSvSurfacesOfWLApprox %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomInt_TheImpPrmSvSurfacesOfWLApprox {
	void _kill_pointed() {
		delete $self;
	}
};
