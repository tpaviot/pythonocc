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
%module FairCurve

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


%include FairCurve_dependencies.i


%include FairCurve_headers.i


enum FairCurve_AnalysisCode {
	FairCurve_OK,
	FairCurve_NotConverged,
	FairCurve_InfiniteSliding,
	FairCurve_NullHeight,
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

%nodefaultctor FairCurve_DistributionOfSagging;
class FairCurve_DistributionOfSagging : public FairCurve_DistributionOfEnergy {
	public:
		%feature("autodoc", "1");
		FairCurve_DistributionOfSagging(const Standard_Integer BSplOrder, const Handle_TColStd_HArray1OfReal &FlatKnots, const Handle_TColgp_HArray1OfPnt2d &Poles, const Standard_Integer DerivativeOrder, const FairCurve_BattenLaw &Law, const Standard_Integer NbValAux=0);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Value(const math_Vector &X, math_Vector & F);
		%feature("autodoc", "1");
		virtual		~FairCurve_DistributionOfSagging();

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
		%feature("autodoc", "1");
		virtual		~FairCurve_Newton();

};

%nodefaultctor FairCurve_Batten;
class FairCurve_Batten {
	public:
		%feature("autodoc", "1");
		FairCurve_Batten(const gp_Pnt2d &P1, const gp_Pnt2d &P2, const Standard_Real Height, const Standard_Real Slope=0);
		%feature("autodoc", "1");
		virtual		void Delete();
		%feature("autodoc", "1");
		virtual		~FairCurve_Batten();
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
		%feature("autodoc", "1");
		virtual		Standard_Boolean Compute(FairCurve_AnalysisCode & Code, const Standard_Integer NbIterations=50, const Standard_Real Tolerance=1.0000000000000000208166817117216851329430937767e-3);
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
		virtual		void Dump(Standard_OStream & o) const;

};

%nodefaultctor FairCurve_BattenLaw;
class FairCurve_BattenLaw : public math_Function {
	public:
		%feature("autodoc", "1");
		~FairCurve_BattenLaw();
		%feature("autodoc", "1");
		FairCurve_BattenLaw(const Standard_Real Heigth, const Standard_Real Slope, const Standard_Real Sliding);
		%feature("autodoc", "1");
		void SetSliding(const Standard_Real Sliding);
		%feature("autodoc", "1");
		void SetHeigth(const Standard_Real Heigth);
		%feature("autodoc", "1");
		void SetSlope(const Standard_Real Slope);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Value(const Standard_Real T, Standard_Real &OutValue);

};

%nodefaultctor FairCurve_DistributionOfJerk;
class FairCurve_DistributionOfJerk : public FairCurve_DistributionOfEnergy {
	public:
		%feature("autodoc", "1");
		FairCurve_DistributionOfJerk(const Standard_Integer BSplOrder, const Handle_TColStd_HArray1OfReal &FlatKnots, const Handle_TColgp_HArray1OfPnt2d &Poles, const Standard_Integer DerivativeOrder, const FairCurve_BattenLaw &Law, const Standard_Integer NbValAux=0);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Value(const math_Vector &X, math_Vector & F);
		%feature("autodoc", "1");
		virtual		~FairCurve_DistributionOfJerk();

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
		%feature("autodoc", "1");
		virtual		Standard_Boolean Compute(FairCurve_AnalysisCode & ACode, const Standard_Integer NbIterations=50, const Standard_Real Tolerance=1.0000000000000000208166817117216851329430937767e-3);
		%feature("autodoc", "1");
		Standard_Real GetCurvature1() const;
		%feature("autodoc", "1");
		Standard_Real GetCurvature2() const;
		%feature("autodoc", "1");
		Standard_Real GetPhysicalRatio() const;
		%feature("autodoc", "1");
		virtual		void Dump(Standard_OStream & o) const;
		%feature("autodoc", "1");
		virtual		~FairCurve_MinimalVariation();

};

%nodefaultctor FairCurve_Energy;
class FairCurve_Energy : public math_MultipleVarFunctionWithHessian {
	public:
		%feature("autodoc", "1");
		virtual		Standard_Integer NbVariables() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Value(const math_Vector &X, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Gradient(const math_Vector &X, math_Vector & G);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Values(const math_Vector &X, Standard_Real &OutValue, math_Vector & G);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Values(const math_Vector &X, Standard_Real &OutValue, math_Vector & G, math_Matrix & H);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Variable(math_Vector & X) const;
		%feature("autodoc", "1");
		const Handle_TColgp_HArray1OfPnt2d & Poles() const;

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
		%feature("autodoc", "1");
		virtual		~FairCurve_EnergyOfMVC();

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
		%feature("autodoc", "1");
		virtual		~FairCurve_DistributionOfTension();

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
		%feature("autodoc", "1");
		virtual		~FairCurve_EnergyOfBatten();

};