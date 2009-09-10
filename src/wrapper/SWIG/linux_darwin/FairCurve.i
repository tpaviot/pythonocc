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
%module FairCurve

%include FairCurve_renames.i
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include FairCurve_dependencies.i


%include FairCurve_headers.i


enum FairCurve_AnalysisCode {
	FairCurve_OK,
	FairCurve_NotConverged,
	FairCurve_InfiniteSliding,
	FairCurve_NullHeight,
	};



%nodefaultctor FairCurve_Newton;
class FairCurve_Newton : public math_NewtonMinimum {
	public:
		%feature("autodoc", "1");
		FairCurve_Newton(math_MultipleVarFunctionWithHessian & F, const math_Vector &StartingPoint, const Standard_Real SpatialTolerance=9.99999999999999954748111825886258685613938723691e-8, const Standard_Real CriteriumTolerance=1.0000000000000000208166817117216851329430937767e-2, const Standard_Integer NbIterations=40, const Standard_Real Convexity=9.99999999999999954748111825886258685613938723691e-7, const Standard_Boolean WithSingularity=1);
		%feature("autodoc", "1");
		FairCurve_Newton(math_MultipleVarFunctionWithHessian & F, const Standard_Real SpatialTolerance=9.99999999999999954748111825886258685613938723691e-8, const Standard_Real Tolerance=9.99999999999999954748111825886258685613938723691e-8, const Standard_Integer NbIterations=40, const Standard_Real Convexity=9.99999999999999954748111825886258685613938723691e-7, const Standard_Boolean WithSingularity=1);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsConverged() const;

};
%extend FairCurve_Newton {
	~FairCurve_Newton() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of FairCurve_Newton\n");}
	}
};


%nodefaultctor FairCurve_Batten;
class FairCurve_Batten {
	public:
		%feature("autodoc", "1");
		FairCurve_Batten(const gp_Pnt2d &P1, const gp_Pnt2d &P2, const Standard_Real Height, const Standard_Real Slope=0);
		%feature("autodoc", "1");
		virtual		void Delete();
		%feature("autodoc", "1");
		void SetFreeSliding(const Standard_Boolean FreeSliding);
		%feature("autodoc", "1");
		void SetConstraintOrder1(const Standard_Integer ConstraintOrder);
		%feature("autodoc", "1");
		void SetConstraintOrder2(const Standard_Integer ConstraintOrder);
		%feature("autodoc", "1");
		void SetP1(const gp_Pnt2d &P1);
		%feature("autodoc", "1");
		void SetP2(const gp_Pnt2d &P2);
		%feature("autodoc", "1");
		void SetAngle1(const Standard_Real Angle1);
		%feature("autodoc", "1");
		void SetAngle2(const Standard_Real Angle2);
		%feature("autodoc", "1");
		void SetHeight(const Standard_Real Height);
		%feature("autodoc", "1");
		void SetSlope(const Standard_Real Slope);
		%feature("autodoc", "1");
		void SetSlidingFactor(const Standard_Real SlidingFactor);
		%feature("autodoc","Compute(Standard_Integer NbIterations=50, Standard_Real Tolerance=1.000000)->FairCurve_AnalysisCode");
		virtual		Standard_Boolean Compute(FairCurve_AnalysisCode &OutValue, const Standard_Integer NbIterations=50, const Standard_Real Tolerance=1.0000000000000000208166817117216851329430937767e-3);
		%feature("autodoc", "1");
		Standard_Real SlidingOfReference() const;
		%feature("autodoc", "1");
		Standard_Boolean GetFreeSliding() const;
		%feature("autodoc", "1");
		Standard_Integer GetConstraintOrder1() const;
		%feature("autodoc", "1");
		Standard_Integer GetConstraintOrder2() const;
		%feature("autodoc", "1");
		const gp_Pnt2d & GetP1() const;
		%feature("autodoc", "1");
		const gp_Pnt2d & GetP2() const;
		%feature("autodoc", "1");
		Standard_Real GetAngle1() const;
		%feature("autodoc", "1");
		Standard_Real GetAngle2() const;
		%feature("autodoc", "1");
		Standard_Real GetHeight() const;
		%feature("autodoc", "1");
		Standard_Real GetSlope() const;
		%feature("autodoc", "1");
		Standard_Real GetSlidingFactor() const;
		%feature("autodoc", "1");
		Handle_Geom2d_BSplineCurve Curve() const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};

};
%extend FairCurve_Batten {
	~FairCurve_Batten() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of FairCurve_Batten\n");}
	}
};


%nodefaultctor FairCurve_Energy;
class FairCurve_Energy : public math_MultipleVarFunctionWithHessian {
	public:
		%feature("autodoc", "1");
		virtual		Standard_Integer NbVariables() const;
		%feature("autodoc","Value(const X)->Standard_Real");
		virtual		Standard_Boolean Value(const math_Vector &X, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Gradient(const math_Vector &X, math_Vector & G);
		%feature("autodoc","Values(const X)->Standard_Real");
		virtual		Standard_Boolean Values(const math_Vector &X, Standard_Real &OutValue, math_Vector & G);
		%feature("autodoc","Values(const X)->Standard_Real");
		virtual		Standard_Boolean Values(const math_Vector &X, Standard_Real &OutValue, math_Vector & G, math_Matrix & H);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Variable(math_Vector & X) const;
		%feature("autodoc", "1");
		const Handle_TColgp_HArray1OfPnt2d & Poles() const;

};
%extend FairCurve_Energy {
	~FairCurve_Energy() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of FairCurve_Energy\n");}
	}
};


%nodefaultctor FairCurve_EnergyOfMVC;
class FairCurve_EnergyOfMVC : public FairCurve_Energy {
	public:
		%feature("autodoc", "1");
		FairCurve_EnergyOfMVC(const Standard_Integer BSplOrder, const Handle_TColStd_HArray1OfReal &FlatKnots, const Handle_TColgp_HArray1OfPnt2d &Poles, const Standard_Integer ContrOrder1, const Standard_Integer ContrOrder2, const FairCurve_BattenLaw &Law, const Standard_Real PhysicalRatio, const Standard_Real LengthSliding, const Standard_Boolean FreeSliding=1, const Standard_Real Angle1=0, const Standard_Real Angle2=0, const Standard_Real Curvature1=0, const Standard_Real Curvature2=0);
		%feature("autodoc", "1");
		Standard_Real LengthSliding() const;
		%feature("autodoc", "1");
		FairCurve_AnalysisCode Status() const;

};
%extend FairCurve_EnergyOfMVC {
	~FairCurve_EnergyOfMVC() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of FairCurve_EnergyOfMVC\n");}
	}
};


%nodefaultctor FairCurve_DistributionOfEnergy;
class FairCurve_DistributionOfEnergy : public math_FunctionSet {
	public:
		%feature("autodoc", "1");
		virtual		Standard_Integer NbVariables() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbEquations() const;
		%feature("autodoc", "1");
		void SetDerivativeOrder(const Standard_Integer DerivativeOrder);

};
%extend FairCurve_DistributionOfEnergy {
	~FairCurve_DistributionOfEnergy() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of FairCurve_DistributionOfEnergy\n");}
	}
};


%nodefaultctor FairCurve_DistributionOfSagging;
class FairCurve_DistributionOfSagging : public FairCurve_DistributionOfEnergy {
	public:
		%feature("autodoc", "1");
		FairCurve_DistributionOfSagging(const Standard_Integer BSplOrder, const Handle_TColStd_HArray1OfReal &FlatKnots, const Handle_TColgp_HArray1OfPnt2d &Poles, const Standard_Integer DerivativeOrder, const FairCurve_BattenLaw &Law, const Standard_Integer NbValAux=0);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Value(const math_Vector &X, math_Vector & F);

};
%extend FairCurve_DistributionOfSagging {
	~FairCurve_DistributionOfSagging() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of FairCurve_DistributionOfSagging\n");}
	}
};


%nodefaultctor FairCurve_BattenLaw;
class FairCurve_BattenLaw : public math_Function {
	public:
		%feature("autodoc", "1");
		FairCurve_BattenLaw(const Standard_Real Heigth, const Standard_Real Slope, const Standard_Real Sliding);
		%feature("autodoc", "1");
		void SetSliding(const Standard_Real Sliding);
		%feature("autodoc", "1");
		void SetHeigth(const Standard_Real Heigth);
		%feature("autodoc", "1");
		void SetSlope(const Standard_Real Slope);
		%feature("autodoc","Value(Standard_Real T)->Standard_Real");
		virtual		Standard_Boolean Value(const Standard_Real T, Standard_Real &OutValue);

};
%extend FairCurve_BattenLaw {
	~FairCurve_BattenLaw() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of FairCurve_BattenLaw\n");}
	}
};


%nodefaultctor FairCurve_DistributionOfJerk;
class FairCurve_DistributionOfJerk : public FairCurve_DistributionOfEnergy {
	public:
		%feature("autodoc", "1");
		FairCurve_DistributionOfJerk(const Standard_Integer BSplOrder, const Handle_TColStd_HArray1OfReal &FlatKnots, const Handle_TColgp_HArray1OfPnt2d &Poles, const Standard_Integer DerivativeOrder, const FairCurve_BattenLaw &Law, const Standard_Integer NbValAux=0);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Value(const math_Vector &X, math_Vector & F);

};
%extend FairCurve_DistributionOfJerk {
	~FairCurve_DistributionOfJerk() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of FairCurve_DistributionOfJerk\n");}
	}
};


%nodefaultctor FairCurve_MinimalVariation;
class FairCurve_MinimalVariation : public FairCurve_Batten {
	public:
		%feature("autodoc", "1");
		FairCurve_MinimalVariation(const gp_Pnt2d &P1, const gp_Pnt2d &P2, const Standard_Real Heigth, const Standard_Real Slope=0, const Standard_Real PhysicalRatio=0);
		%feature("autodoc", "1");
		void SetCurvature1(const Standard_Real Curvature);
		%feature("autodoc", "1");
		void SetCurvature2(const Standard_Real Curvature);
		%feature("autodoc", "1");
		void SetPhysicalRatio(const Standard_Real Ratio);
		%feature("autodoc","Compute(Standard_Integer NbIterations=50, Standard_Real Tolerance=1.000000)->FairCurve_AnalysisCode");
		virtual		Standard_Boolean Compute(FairCurve_AnalysisCode &OutValue, const Standard_Integer NbIterations=50, const Standard_Real Tolerance=1.0000000000000000208166817117216851329430937767e-3);
		%feature("autodoc", "1");
		Standard_Real GetCurvature1() const;
		%feature("autodoc", "1");
		Standard_Real GetCurvature2() const;
		%feature("autodoc", "1");
		Standard_Real GetPhysicalRatio() const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};

};
%extend FairCurve_MinimalVariation {
	~FairCurve_MinimalVariation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of FairCurve_MinimalVariation\n");}
	}
};


%nodefaultctor FairCurve_DistributionOfTension;
class FairCurve_DistributionOfTension : public FairCurve_DistributionOfEnergy {
	public:
		%feature("autodoc", "1");
		FairCurve_DistributionOfTension(const Standard_Integer BSplOrder, const Handle_TColStd_HArray1OfReal &FlatKnots, const Handle_TColgp_HArray1OfPnt2d &Poles, const Standard_Integer DerivativeOrder, const Standard_Real LengthSliding, const FairCurve_BattenLaw &Law, const Standard_Integer NbValAux=0, const Standard_Boolean Uniform=0);
		%feature("autodoc", "1");
		void SetLengthSliding(const Standard_Real LengthSliding);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Value(const math_Vector &X, math_Vector & F);

};
%extend FairCurve_DistributionOfTension {
	~FairCurve_DistributionOfTension() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of FairCurve_DistributionOfTension\n");}
	}
};


%nodefaultctor FairCurve_EnergyOfBatten;
class FairCurve_EnergyOfBatten : public FairCurve_Energy {
	public:
		%feature("autodoc", "1");
		FairCurve_EnergyOfBatten(const Standard_Integer BSplOrder, const Handle_TColStd_HArray1OfReal &FlatKnots, const Handle_TColgp_HArray1OfPnt2d &Poles, const Standard_Integer ContrOrder1, const Standard_Integer ContrOrder2, const FairCurve_BattenLaw &Law, const Standard_Real LengthSliding, const Standard_Boolean FreeSliding=1, const Standard_Real Angle1=0, const Standard_Real Angle2=0);
		%feature("autodoc", "1");
		Standard_Real LengthSliding() const;
		%feature("autodoc", "1");
		FairCurve_AnalysisCode Status() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Variable(math_Vector & X) const;

};
%extend FairCurve_EnergyOfBatten {
	~FairCurve_EnergyOfBatten() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of FairCurve_EnergyOfBatten\n");}
	}
};
