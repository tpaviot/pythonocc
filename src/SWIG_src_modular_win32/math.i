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
%module math

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


%include math_dependencies.i


%include math_headers.i


enum math_Status {
	math_OK,
	math_TooManyIterations,
	math_FunctionError,
	math_DirectionSearchError,
	math_NotBracketed,
	};



%nodefaultctor Handle_math_NotSquare;
class Handle_math_NotSquare : public Handle_Standard_DimensionError {
	public:
		%feature("autodoc", "1");
		~Handle_math_NotSquare();
		%feature("autodoc", "1");
		Handle_math_NotSquare();
		%feature("autodoc", "1");
		Handle_math_NotSquare(const Handle_math_NotSquare &aHandle);
		%feature("autodoc", "1");
		Handle_math_NotSquare(const math_NotSquare *anItem);
		%feature("autodoc", "1");
		Handle_math_NotSquare const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_math_NotSquare {
	math_NotSquare* GetObject() {
	return (math_NotSquare*)$self->Access();
	}
};

%nodefaultctor Handle_math_SingularMatrix;
class Handle_math_SingularMatrix : public Handle_Standard_Failure {
	public:
		%feature("autodoc", "1");
		~Handle_math_SingularMatrix();
		%feature("autodoc", "1");
		Handle_math_SingularMatrix();
		%feature("autodoc", "1");
		Handle_math_SingularMatrix(const Handle_math_SingularMatrix &aHandle);
		%feature("autodoc", "1");
		Handle_math_SingularMatrix(const math_SingularMatrix *anItem);
		%feature("autodoc", "1");
		Handle_math_SingularMatrix const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_math_SingularMatrix {
	math_SingularMatrix* GetObject() {
	return (math_SingularMatrix*)$self->Access();
	}
};

%nodefaultctor math_GaussLeastSquare;
class math_GaussLeastSquare {
	public:
		%feature("autodoc", "1");
		~math_GaussLeastSquare();
		%feature("autodoc", "1");
		math_GaussLeastSquare(const math_Matrix &A, const Standard_Real MinPivot=9.99999999999999945153271454209571651729503702787e-21);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		void Solve(const math_Vector &B, math_Vector & X) const;
		%feature("autodoc", "1");
		void Dump(Standard_OStream & o) const;

};

%nodefaultctor math_SingularMatrix;
class math_SingularMatrix : public Standard_Failure {
	public:
		%feature("autodoc", "1");
		math_SingularMatrix();
		%feature("autodoc", "1");
		math_SingularMatrix(const char * AString);
		%feature("autodoc", "1");
		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		Handle_math_SingularMatrix NewInstance(const char * aMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~math_SingularMatrix();

};
%extend math_SingularMatrix {
	Handle_math_SingularMatrix GetHandle() {
	return *(Handle_math_SingularMatrix*) &$self;
	}
};

%nodefaultctor math_KronrodSingleIntegration;
class math_KronrodSingleIntegration {
	public:
		%feature("autodoc", "1");
		~math_KronrodSingleIntegration();
		%feature("autodoc", "1");
		math_KronrodSingleIntegration();
		%feature("autodoc", "1");
		math_KronrodSingleIntegration(math_Function & theFunction, const Standard_Real theLower, const Standard_Real theUpper, const Standard_Integer theNbPnts);
		%feature("autodoc", "1");
		math_KronrodSingleIntegration(math_Function & theFunction, const Standard_Real theLower, const Standard_Real theUpper, const Standard_Integer theNbPnts, const Standard_Real theTolerance, const Standard_Integer theMaxNbIter);
		%feature("autodoc", "1");
		void Perform(math_Function & theFunction, const Standard_Real theLower, const Standard_Real theUpper, const Standard_Integer theNbPnts);
		%feature("autodoc", "1");
		void Perform(math_Function & theFunction, const Standard_Real theLower, const Standard_Real theUpper, const Standard_Integer theNbPnts, const Standard_Real theTolerance, const Standard_Integer theMaxNbIter);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Real Value() const;
		%feature("autodoc", "1");
		Standard_Real ErrorReached() const;
		%feature("autodoc", "1");
		Standard_Real AbsolutError() const;
		%feature("autodoc", "1");
		Standard_Integer OrderReached() const;
		%feature("autodoc", "1");
		Standard_Integer NbIterReached() const;
		%feature("autodoc", "1");
		Standard_Boolean GKRule(math_Function & theFunction, const Standard_Real theLower, const Standard_Real theUpper, const math_Vector &theGaussP, const math_Vector &theGaussW, const math_Vector &theKronrodP, const math_Vector &theKronrodW, Standard_Real &OutValue, Standard_Real &OutValue);

};

%nodefaultctor math_TrigonometricFunctionRoots;
class math_TrigonometricFunctionRoots {
	public:
		%feature("autodoc", "1");
		~math_TrigonometricFunctionRoots();
		%feature("autodoc", "1");
		math_TrigonometricFunctionRoots(const Standard_Real A, const Standard_Real B, const Standard_Real C, const Standard_Real D, const Standard_Real E, const Standard_Real InfBound, const Standard_Real SupBound);
		%feature("autodoc", "1");
		math_TrigonometricFunctionRoots(const Standard_Real D, const Standard_Real E, const Standard_Real InfBound, const Standard_Real SupBound);
		%feature("autodoc", "1");
		math_TrigonometricFunctionRoots(const Standard_Real C, const Standard_Real D, const Standard_Real E, const Standard_Real InfBound, const Standard_Real SupBound);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Boolean InfiniteRoots() const;
		%feature("autodoc", "1");
		Standard_Real Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Integer NbSolutions() const;
		%feature("autodoc", "1");
		void Dump(Standard_OStream & o) const;

};

%nodefaultctor math_BissecNewton;
class math_BissecNewton {
	public:
		%feature("autodoc", "1");
		~math_BissecNewton();
		%feature("autodoc", "1");
		math_BissecNewton(math_FunctionWithDerivative & F, const Standard_Real Bound1, const Standard_Real Bound2, const Standard_Real TolX, const Standard_Integer NbIterations=100);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsSolutionReached(math_FunctionWithDerivative & F);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Real Root() const;
		%feature("autodoc", "1");
		Standard_Real Derivative() const;
		%feature("autodoc", "1");
		Standard_Real Value() const;
		%feature("autodoc", "1");
		void Dump(Standard_OStream & o) const;

};

%nodefaultctor math_MultipleVarFunction;
class math_MultipleVarFunction {
	public:
		%feature("autodoc", "1");
		virtual		Standard_Integer NbVariables() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Value(const math_Vector &X, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Integer GetStateNumber();

};

%nodefaultctor math_MultipleVarFunctionWithGradient;
class math_MultipleVarFunctionWithGradient : public math_MultipleVarFunction {
	public:
		%feature("autodoc", "1");
		virtual		void Delete();
		%feature("autodoc", "1");
		virtual		Standard_Boolean Gradient(const math_Vector &X, math_Vector & G);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Values(const math_Vector &X, Standard_Real &OutValue, math_Vector & G);

};

%nodefaultctor math_MultipleVarFunctionWithHessian;
class math_MultipleVarFunctionWithHessian : public math_MultipleVarFunctionWithGradient {
	public:
		%feature("autodoc", "1");
		virtual		Standard_Boolean Values(const math_Vector &X, Standard_Real &OutValue, math_Vector & G, math_Matrix & H);

};

%nodefaultctor math_BFGS;
class math_BFGS {
	public:
		%feature("autodoc", "1");
		math_BFGS(math_MultipleVarFunctionWithGradient & F, const math_Vector &StartingPoint, const Standard_Real Tolerance=1.00000000000000002092256083012847267532663408929e-8, const Standard_Integer NbIterations=200, const Standard_Real ZEPS=9.9999999999999997988664762925561536725284350613e-13);
		%feature("autodoc", "1");
		math_BFGS(math_MultipleVarFunctionWithGradient & F, const Standard_Real Tolerance=1.00000000000000002092256083012847267532663408929e-8, const Standard_Integer NbIterations=200, const Standard_Real ZEPS=9.9999999999999997988664762925561536725284350613e-13);
		%feature("autodoc", "1");
		virtual		void Delete();
		%feature("autodoc", "1");
		virtual		~math_BFGS();
		%feature("autodoc", "1");
		void Perform(math_MultipleVarFunctionWithGradient & F, const math_Vector &StartingPoint);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsSolutionReached(math_MultipleVarFunctionWithGradient & F) const;
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		const math_Vector & Location() const;
		%feature("autodoc", "1");
		void Location(math_Vector & Loc) const;
		%feature("autodoc", "1");
		Standard_Real Minimum() const;
		%feature("autodoc", "1");
		const math_Vector & Gradient() const;
		%feature("autodoc", "1");
		void Gradient(math_Vector & Grad) const;
		%feature("autodoc", "1");
		Standard_Integer NbIterations() const;
		%feature("autodoc", "1");
		void Dump(Standard_OStream & o) const;

};

%nodefaultctor math_DirectPolynomialRoots;
class math_DirectPolynomialRoots {
	public:
		%feature("autodoc", "1");
		~math_DirectPolynomialRoots();
		%feature("autodoc", "1");
		math_DirectPolynomialRoots(const Standard_Real A, const Standard_Real B, const Standard_Real C, const Standard_Real D, const Standard_Real E);
		%feature("autodoc", "1");
		math_DirectPolynomialRoots(const Standard_Real A, const Standard_Real B, const Standard_Real C, const Standard_Real D);
		%feature("autodoc", "1");
		math_DirectPolynomialRoots(const Standard_Real A, const Standard_Real B, const Standard_Real C);
		%feature("autodoc", "1");
		math_DirectPolynomialRoots(const Standard_Real A, const Standard_Real B);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Boolean InfiniteRoots() const;
		%feature("autodoc", "1");
		Standard_Integer NbSolutions() const;
		%feature("autodoc", "1");
		Standard_Real Value(const Standard_Integer Nieme) const;
		%feature("autodoc", "1");
		void Dump(Standard_OStream & o) const;

};

%nodefaultctor math_IntegerRandom;
class math_IntegerRandom {
	public:
		%feature("autodoc", "1");
		~math_IntegerRandom();
		%feature("autodoc", "1");
		math_IntegerRandom(const Standard_Integer Lower, const Standard_Integer Upper);
		%feature("autodoc", "1");
		void Reset();
		%feature("autodoc", "1");
		Standard_Integer Next();

};

%nodefaultctor math_Jacobi;
class math_Jacobi {
	public:
		%feature("autodoc", "1");
		~math_Jacobi();
		%feature("autodoc", "1");
		math_Jacobi(const math_Matrix &A);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		const math_Vector & Values() const;
		%feature("autodoc", "1");
		Standard_Real Value(const Standard_Integer Num) const;
		%feature("autodoc", "1");
		const math_Matrix & Vectors() const;
		%feature("autodoc", "1");
		void Vector(const Standard_Integer Num, math_Vector & V) const;
		%feature("autodoc", "1");
		void Dump(Standard_OStream & o) const;

};

%nodefaultctor math;
class math {
	public:
		%feature("autodoc", "1");
		~math();
		%feature("autodoc", "1");
		math();
		%feature("autodoc", "1");
		Standard_Integer GaussPointsMax();
		%feature("autodoc", "1");
		void GaussPoints(const Standard_Integer Index, math_Vector & Points);
		%feature("autodoc", "1");
		void GaussWeights(const Standard_Integer Index, math_Vector & Weights);
		%feature("autodoc", "1");
		Standard_Integer KronrodPointsMax();
		%feature("autodoc", "1");
		Standard_Boolean OrderedGaussPointsAndWeights(const Standard_Integer Index, math_Vector & Points, math_Vector & Weights);
		%feature("autodoc", "1");
		Standard_Boolean KronrodPointsAndWeights(const Standard_Integer Index, math_Vector & Points, math_Vector & Weights);

};

%nodefaultctor math_FunctionRoot;
class math_FunctionRoot {
	public:
		%feature("autodoc", "1");
		~math_FunctionRoot();
		%feature("autodoc", "1");
		math_FunctionRoot(math_FunctionWithDerivative & F, const Standard_Real Guess, const Standard_Real Tolerance, const Standard_Integer NbIterations=100);
		%feature("autodoc", "1");
		math_FunctionRoot(math_FunctionWithDerivative & F, const Standard_Real Guess, const Standard_Real Tolerance, const Standard_Real A, const Standard_Real B, const Standard_Integer NbIterations=100);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Real Root() const;
		%feature("autodoc", "1");
		Standard_Real Derivative() const;
		%feature("autodoc", "1");
		Standard_Real Value() const;
		%feature("autodoc", "1");
		Standard_Integer NbIterations() const;
		%feature("autodoc", "1");
		void Dump(Standard_OStream & o) const;

};

%nodefaultctor math_Powell;
class math_Powell {
	public:
		%feature("autodoc", "1");
		math_Powell(math_MultipleVarFunction & F, const math_Vector &StartingPoint, const math_Matrix &StartingDirections, const Standard_Real Tolerance, const Standard_Integer NbIterations=200, const Standard_Real ZEPS=9.9999999999999997988664762925561536725284350613e-13);
		%feature("autodoc", "1");
		math_Powell(math_MultipleVarFunction & F, const Standard_Real Tolerance, const Standard_Integer NbIterations=200, const Standard_Real ZEPS=9.9999999999999997988664762925561536725284350613e-13);
		%feature("autodoc", "1");
		virtual		void Delete();
		%feature("autodoc", "1");
		virtual		~math_Powell();
		%feature("autodoc", "1");
		void Perform(math_MultipleVarFunction & F, const math_Vector &StartingPoint, const math_Matrix &StartingDirections);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsSolutionReached(math_MultipleVarFunction & F);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		const math_Vector & Location() const;
		%feature("autodoc", "1");
		void Location(math_Vector & Loc) const;
		%feature("autodoc", "1");
		Standard_Real Minimum() const;
		%feature("autodoc", "1");
		Standard_Integer NbIterations() const;
		%feature("autodoc", "1");
		void Dump(Standard_OStream & o) const;

};

%nodefaultctor math_Array1OfValueAndWeight;
class math_Array1OfValueAndWeight {
	public:
		%feature("autodoc", "1");
		math_Array1OfValueAndWeight(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		math_Array1OfValueAndWeight(const math_ValueAndWeight &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const math_ValueAndWeight &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		~math_Array1OfValueAndWeight();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const math_Array1OfValueAndWeight & Assign(const math_Array1OfValueAndWeight &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const math_ValueAndWeight &Value);
		%feature("autodoc", "1");
		const math_ValueAndWeight & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const math_ValueAndWeight & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		math_ValueAndWeight & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		math_ValueAndWeight & operator()(const Standard_Integer Index);

};

%nodefaultctor math_Householder;
class math_Householder {
	public:
		%feature("autodoc", "1");
		~math_Householder();
		%feature("autodoc", "1");
		math_Householder(const math_Matrix &A, const math_Matrix &B, const Standard_Real EPS=9.99999999999999945153271454209571651729503702787e-21);
		%feature("autodoc", "1");
		math_Householder(const math_Matrix &A, const math_Matrix &B, const Standard_Integer lowerArow, const Standard_Integer upperArow, const Standard_Integer lowerAcol, const Standard_Integer upperAcol, const Standard_Real EPS=9.99999999999999945153271454209571651729503702787e-21);
		%feature("autodoc", "1");
		math_Householder(const math_Matrix &A, const math_Vector &B, const Standard_Real EPS=9.99999999999999945153271454209571651729503702787e-21);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		void Value(math_Vector & sol, const Standard_Integer Index=1) const;
		%feature("autodoc", "1");
		const math_Matrix & AllValues() const;
		%feature("autodoc", "1");
		void Dump(Standard_OStream & o) const;

};

%nodefaultctor math_FunctionAllRoots;
class math_FunctionAllRoots {
	public:
		%feature("autodoc", "1");
		~math_FunctionAllRoots();
		%feature("autodoc", "1");
		math_FunctionAllRoots(math_FunctionWithDerivative & F, const math_FunctionSample &S, const Standard_Real EpsX, const Standard_Real EpsF, const Standard_Real EpsNul);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbIntervals() const;
		%feature("autodoc", "1");
		void GetInterval(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		void GetIntervalState(const Standard_Integer Index, Standard_Integer & IFirst, Standard_Integer & ILast) const;
		%feature("autodoc", "1");
		Standard_Integer NbPoints() const;
		%feature("autodoc", "1");
		Standard_Real GetPoint(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Integer GetPointState(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void Dump(Standard_OStream & o) const;

};

%nodefaultctor math_EigenValuesSearcher;
class math_EigenValuesSearcher {
	public:
		%feature("autodoc", "1");
		~math_EigenValuesSearcher();
		%feature("autodoc", "1");
		math_EigenValuesSearcher(const TColStd_Array1OfReal &Diagonal, const TColStd_Array1OfReal &Subdiagonal);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer Dimension() const;
		%feature("autodoc", "1");
		Standard_Real EigenValue(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		math_Vector EigenVector(const Standard_Integer Index) const;

};

%nodefaultctor math_QuickSortOfValueAndWeight;
class math_QuickSortOfValueAndWeight {
	public:
		%feature("autodoc", "1");
		~math_QuickSortOfValueAndWeight();
		%feature("autodoc", "1");
		math_QuickSortOfValueAndWeight();
		%feature("autodoc", "1");
		void Sort(math_Array1OfValueAndWeight & TheArray, const math_CompareOfValueAndWeight &Comp);

};

%nodefaultctor math_Gauss;
class math_Gauss {
	public:
		%feature("autodoc", "1");
		~math_Gauss();
		%feature("autodoc", "1");
		math_Gauss(const math_Matrix &A, const Standard_Real MinPivot=9.99999999999999945153271454209571651729503702787e-21);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		void Solve(const math_Vector &B, math_Vector & X) const;
		%feature("autodoc", "1");
		void Solve(math_Vector & B) const;
		%feature("autodoc", "1");
		Standard_Real Determinant() const;
		%feature("autodoc", "1");
		void Invert(math_Matrix & Inv) const;
		%feature("autodoc", "1");
		void Dump(Standard_OStream & o) const;

};

%nodefaultctor math_ComputeGaussPointsAndWeights;
class math_ComputeGaussPointsAndWeights {
	public:
		%feature("autodoc", "1");
		~math_ComputeGaussPointsAndWeights();
		%feature("autodoc", "1");
		math_ComputeGaussPointsAndWeights(const Standard_Integer Number);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		math_Vector Points() const;
		%feature("autodoc", "1");
		math_Vector Weights() const;

};

%nodefaultctor math_FunctionSet;
class math_FunctionSet {
	public:
		%feature("autodoc", "1");
		virtual		void Delete();
		%feature("autodoc", "1");
		virtual		Standard_Integer NbVariables() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbEquations() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Value(const math_Vector &X, math_Vector & F);
		%feature("autodoc", "1");
		virtual		Standard_Integer GetStateNumber();

};

%nodefaultctor math_FunctionSetWithDerivatives;
class math_FunctionSetWithDerivatives : public math_FunctionSet {
	public:
		%feature("autodoc", "1");
		virtual		Standard_Boolean Derivatives(const math_Vector &X, math_Matrix & D);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Values(const math_Vector &X, math_Vector & F, math_Matrix & D);

};

%nodefaultctor math_GaussSingleIntegration;
class math_GaussSingleIntegration {
	public:
		%feature("autodoc", "1");
		~math_GaussSingleIntegration();
		%feature("autodoc", "1");
		math_GaussSingleIntegration();
		%feature("autodoc", "1");
		math_GaussSingleIntegration(math_Function & F, const Standard_Real Lower, const Standard_Real Upper, const Standard_Integer Order);
		%feature("autodoc", "1");
		math_GaussSingleIntegration(math_Function & F, const Standard_Real Lower, const Standard_Real Upper, const Standard_Integer Order, const Standard_Real Tol);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Real Value() const;
		%feature("autodoc", "1");
		void Dump(Standard_OStream & o) const;

};

%nodefaultctor math_Matrix;
class math_Matrix {
	public:
		%feature("autodoc", "1");
		~math_Matrix();
		%feature("autodoc", "1");
		math_Matrix(const Standard_Integer LowerRow, const Standard_Integer UpperRow, const Standard_Integer LowerCol, const Standard_Integer UpperCol);
		%feature("autodoc", "1");
		math_Matrix(const Standard_Integer LowerRow, const Standard_Integer UpperRow, const Standard_Integer LowerCol, const Standard_Integer UpperCol, const Standard_Real InitialValue);
		%feature("autodoc", "1");
		math_Matrix(const Standard_Address Tab, const Standard_Integer LowerRow, const Standard_Integer UpperRow, const Standard_Integer LowerCol, const Standard_Integer UpperCol);
		%feature("autodoc", "1");
		math_Matrix(const math_Matrix &Other);
		%feature("autodoc", "1");
		void Init(const Standard_Real InitialValue);
		%feature("autodoc", "1");
		Standard_Integer RowNumber() const;
		%feature("autodoc", "1");
		Standard_Integer ColNumber() const;
		%feature("autodoc", "1");
		Standard_Integer LowerRow() const;
		%feature("autodoc", "1");
		Standard_Integer UpperRow() const;
		%feature("autodoc", "1");
		Standard_Integer LowerCol() const;
		%feature("autodoc", "1");
		Standard_Integer UpperCol() const;
		%feature("autodoc", "1");
		Standard_Real Determinant() const;
		%feature("autodoc", "1");
		void Transpose();
		%feature("autodoc", "1");
		void Invert();
		%feature("autodoc", "1");
		void Multiply(const Standard_Real Right);
		%feature("autodoc", "1");
		void operator*=(const Standard_Real Right);
		%feature("autodoc", "1");
		math_Matrix Multiplied(const Standard_Real Right) const;
		%feature("autodoc", "1");
		math_Matrix operator*(const Standard_Real Right) const;
		%feature("autodoc", "1");
		math_Matrix TMultiplied(const Standard_Real Right) const;
		%feature("autodoc", "1");
		void Divide(const Standard_Real Right);
		%feature("autodoc", "1");
		void operator/=(const Standard_Real Right);
		%feature("autodoc", "1");
		math_Matrix Divided(const Standard_Real Right) const;
		%feature("autodoc", "1");
		math_Matrix operator/(const Standard_Real Right) const;
		%feature("autodoc", "1");
		void Add(const math_Matrix &Right);
		%feature("autodoc", "1");
		void operator+=(const math_Matrix &Right);
		%feature("autodoc", "1");
		math_Matrix Added(const math_Matrix &Right) const;
		%feature("autodoc", "1");
		math_Matrix operator+(const math_Matrix &Right) const;
		%feature("autodoc", "1");
		void Add(const math_Matrix &Left, const math_Matrix &Right);
		%feature("autodoc", "1");
		void Subtract(const math_Matrix &Right);
		%feature("autodoc", "1");
		void operator-=(const math_Matrix &Right);
		%feature("autodoc", "1");
		math_Matrix Subtracted(const math_Matrix &Right) const;
		%feature("autodoc", "1");
		math_Matrix operator-(const math_Matrix &Right) const;
		%feature("autodoc", "1");
		void Set(const Standard_Integer I1, const Standard_Integer I2, const Standard_Integer J1, const Standard_Integer J2, const math_Matrix &M);
		%feature("autodoc", "1");
		void SetRow(const Standard_Integer Row, const math_Vector &V);
		%feature("autodoc", "1");
		void SetCol(const Standard_Integer Col, const math_Vector &V);
		%feature("autodoc", "1");
		void SetDiag(const Standard_Real Value);
		%feature("autodoc", "1");
		math_Vector Row(const Standard_Integer Row) const;
		%feature("autodoc", "1");
		math_Vector Col(const Standard_Integer Col) const;
		%feature("autodoc", "1");
		void SwapRow(const Standard_Integer Row1, const Standard_Integer Row2);
		%feature("autodoc", "1");
		void SwapCol(const Standard_Integer Col1, const Standard_Integer Col2);
		%feature("autodoc", "1");
		math_Matrix Transposed() const;
		%feature("autodoc", "1");
		math_Matrix Inverse() const;
		%feature("autodoc", "1");
		math_Matrix TMultiply(const math_Matrix &Right) const;
		%feature("autodoc", "1");
		void Multiply(const math_Vector &Left, const math_Vector &Right);
		%feature("autodoc", "1");
		void Multiply(const math_Matrix &Left, const math_Matrix &Right);
		%feature("autodoc", "1");
		void TMultiply(const math_Matrix &TLeft, const math_Matrix &Right);
		%feature("autodoc", "1");
		void Subtract(const math_Matrix &Left, const math_Matrix &Right);
		%feature("autodoc", "1");
		Standard_Real & Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		Standard_Real & operator()(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		math_Matrix & Initialized(const math_Matrix &Other);
		%feature("autodoc", "1");
		void Multiply(const math_Matrix &Right);
		%feature("autodoc", "1");
		void operator*=(const math_Matrix &Right);
		%feature("autodoc", "1");
		math_Matrix Multiplied(const math_Matrix &Right) const;
		%feature("autodoc", "1");
		math_Matrix operator*(const math_Matrix &Right) const;
		%feature("autodoc", "1");
		math_Vector Multiplied(const math_Vector &Right) const;
		%feature("autodoc", "1");
		math_Vector operator*(const math_Vector &Right) const;
		%feature("autodoc", "1");
		math_Matrix Opposite();
		%feature("autodoc", "1");
		math_Matrix operator-();
		%feature("autodoc", "1");
		void Dump(Standard_OStream & o) const;

};

%nodefaultctor math_DoubleTabOfReal;
class math_DoubleTabOfReal {
	public:
		%feature("autodoc", "1");
		math_DoubleTabOfReal(const Standard_Integer LowerRow, const Standard_Integer UpperRow, const Standard_Integer LowerCol, const Standard_Integer UpperCol);
		%feature("autodoc", "1");
		math_DoubleTabOfReal(const Standard_Real &Tab, const Standard_Integer LowerRow, const Standard_Integer UpperRow, const Standard_Integer LowerCol, const Standard_Integer UpperCol);
		%feature("autodoc", "1");
		void Init(const Standard_Real &InitValue);
		%feature("autodoc", "1");
		math_DoubleTabOfReal(const math_DoubleTabOfReal &Other);
		%feature("autodoc", "1");
		void Copy(math_DoubleTabOfReal & Other) const;
		%feature("autodoc", "1");
		void SetLowerRow(const Standard_Integer LowerRow);
		%feature("autodoc", "1");
		void SetLowerCol(const Standard_Integer LowerCol);
		%feature("autodoc", "1");
		Standard_Real & Value(const Standard_Integer RowIndex, const Standard_Integer ColIndex) const;
		%feature("autodoc", "1");
		Standard_Real & operator()(const Standard_Integer RowIndex, const Standard_Integer ColIndex) const;
		%feature("autodoc", "1");
		void Free();
		%feature("autodoc", "1");
		~math_DoubleTabOfReal();

};

%nodefaultctor math_Function;
class math_Function {
	public:
		%feature("autodoc", "1");
		virtual		Standard_Boolean Value(const Standard_Real X, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Integer GetStateNumber();

};

%nodefaultctor math_GaussSetIntegration;
class math_GaussSetIntegration {
	public:
		%feature("autodoc", "1");
		~math_GaussSetIntegration();
		%feature("autodoc", "1");
		math_GaussSetIntegration(math_FunctionSet & F, const math_Vector &Lower, const math_Vector &Upper, const math_IntegerVector &Order);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		const math_Vector & Value() const;
		%feature("autodoc", "1");
		void Dump(Standard_OStream & o) const;

};

%nodefaultctor math_Vector;
class math_Vector {
	public:
		%feature("autodoc", "1");
		~math_Vector();
		%feature("autodoc", "1");
		math_Vector(const Standard_Integer Lower, const Standard_Integer Upper);
		%feature("autodoc", "1");
		math_Vector(const Standard_Integer Lower, const Standard_Integer Upper, const Standard_Real InitialValue);
		%feature("autodoc", "1");
		math_Vector(const Standard_Address Tab, const Standard_Integer Lower, const Standard_Integer Upper);
		%feature("autodoc", "1");
		void Init(const Standard_Real InitialValue);
		%feature("autodoc", "1");
		math_Vector(const math_Vector &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		Standard_Real Norm() const;
		%feature("autodoc", "1");
		Standard_Real Norm2() const;
		%feature("autodoc", "1");
		Standard_Integer Max() const;
		%feature("autodoc", "1");
		Standard_Integer Min() const;
		%feature("autodoc", "1");
		void Normalize();
		%feature("autodoc", "1");
		math_Vector Normalized() const;
		%feature("autodoc", "1");
		void Invert();
		%feature("autodoc", "1");
		math_Vector Inverse() const;
		%feature("autodoc", "1");
		void Set(const Standard_Integer I1, const Standard_Integer I2, const math_Vector &V);
		%feature("autodoc", "1");
		math_Vector Slice(const Standard_Integer I1, const Standard_Integer I2) const;
		%feature("autodoc", "1");
		void Multiply(const Standard_Real Right);
		%feature("autodoc", "1");
		void operator*=(const Standard_Real Right);
		%feature("autodoc", "1");
		math_Vector Multiplied(const Standard_Real Right) const;
		%feature("autodoc", "1");
		math_Vector operator*(const Standard_Real Right) const;
		%feature("autodoc", "1");
		math_Vector TMultiplied(const Standard_Real Right) const;
		%feature("autodoc", "1");
		void Divide(const Standard_Real Right);
		%feature("autodoc", "1");
		void operator/=(const Standard_Real Right);
		%feature("autodoc", "1");
		math_Vector Divided(const Standard_Real Right) const;
		%feature("autodoc", "1");
		math_Vector operator/(const Standard_Real Right) const;
		%feature("autodoc", "1");
		void Add(const math_Vector &Right);
		%feature("autodoc", "1");
		void operator+=(const math_Vector &Right);
		%feature("autodoc", "1");
		math_Vector Added(const math_Vector &Right) const;
		%feature("autodoc", "1");
		math_Vector operator+(const math_Vector &Right) const;
		%feature("autodoc", "1");
		void Multiply(const math_Vector &Left, const math_Matrix &Right);
		%feature("autodoc", "1");
		void Multiply(const math_Matrix &Left, const math_Vector &Right);
		%feature("autodoc", "1");
		void TMultiply(const math_Matrix &TLeft, const math_Vector &Right);
		%feature("autodoc", "1");
		void TMultiply(const math_Vector &Left, const math_Matrix &TRight);
		%feature("autodoc", "1");
		void Add(const math_Vector &Left, const math_Vector &Right);
		%feature("autodoc", "1");
		void Subtract(const math_Vector &Left, const math_Vector &Right);
		%feature("autodoc", "1");
		Standard_Real & Value(const Standard_Integer Num) const;
		%feature("autodoc", "1");
		Standard_Real & operator()(const Standard_Integer Num) const;
		%feature("autodoc", "1");
		math_Vector & Initialized(const math_Vector &Other);
		%feature("autodoc", "1");
		Standard_Real Multiplied(const math_Vector &Right) const;
		%feature("autodoc", "1");
		Standard_Real operator*(const math_Vector &Right) const;
		%feature("autodoc", "1");
		math_Vector Multiplied(const math_Matrix &Right) const;
		%feature("autodoc", "1");
		math_Vector operator*(const math_Matrix &Right) const;
		%feature("autodoc", "1");
		math_Vector Opposite();
		%feature("autodoc", "1");
		math_Vector operator-();
		%feature("autodoc", "1");
		void Subtract(const math_Vector &Right);
		%feature("autodoc", "1");
		void operator-=(const math_Vector &Right);
		%feature("autodoc", "1");
		math_Vector Subtracted(const math_Vector &Right) const;
		%feature("autodoc", "1");
		math_Vector operator-(const math_Vector &Right) const;
		%feature("autodoc", "1");
		void Multiply(const Standard_Real Left, const math_Vector &Right);
		%feature("autodoc", "1");
		void Dump(Standard_OStream & o) const;

};

%nodefaultctor math_Crout;
class math_Crout {
	public:
		%feature("autodoc", "1");
		~math_Crout();
		%feature("autodoc", "1");
		math_Crout(const math_Matrix &A, const Standard_Real MinPivot=9.99999999999999945153271454209571651729503702787e-21);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		void Solve(const math_Vector &B, math_Vector & X) const;
		%feature("autodoc", "1");
		const math_Matrix & Inverse() const;
		%feature("autodoc", "1");
		void Invert(math_Matrix & Inv) const;
		%feature("autodoc", "1");
		Standard_Real Determinant() const;
		%feature("autodoc", "1");
		void Dump(Standard_OStream & o) const;

};

%nodefaultctor math_SVD;
class math_SVD {
	public:
		%feature("autodoc", "1");
		~math_SVD();
		%feature("autodoc", "1");
		math_SVD(const math_Matrix &A);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		void Solve(const math_Vector &B, math_Vector & X, const Standard_Real Eps=9.99999999999999954748111825886258685613938723691e-7) const;
		%feature("autodoc", "1");
		void PseudoInverse(math_Matrix & Inv, const Standard_Real Eps=9.99999999999999954748111825886258685613938723691e-7) const;
		%feature("autodoc", "1");
		void Dump(Standard_OStream & o) const;

};

%nodefaultctor math_BracketedRoot;
class math_BracketedRoot {
	public:
		%feature("autodoc", "1");
		~math_BracketedRoot();
		%feature("autodoc", "1");
		math_BracketedRoot(math_Function & F, const Standard_Real Bound1, const Standard_Real Bound2, const Standard_Real Tolerance, const Standard_Integer NbIterations=100, const Standard_Real ZEPS=9.9999999999999997988664762925561536725284350613e-13);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Real Root() const;
		%feature("autodoc", "1");
		Standard_Real Value() const;
		%feature("autodoc", "1");
		Standard_Integer NbIterations() const;
		%feature("autodoc", "1");
		void Dump(Standard_OStream & o) const;

};

%nodefaultctor math_GaussMultipleIntegration;
class math_GaussMultipleIntegration {
	public:
		%feature("autodoc", "1");
		~math_GaussMultipleIntegration();
		%feature("autodoc", "1");
		math_GaussMultipleIntegration(math_MultipleVarFunction & F, const math_Vector &Lower, const math_Vector &Upper, const math_IntegerVector &Order);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Real Value() const;
		%feature("autodoc", "1");
		void Dump(Standard_OStream & o) const;

};

%nodefaultctor math_NotSquare;
class math_NotSquare : public Standard_DimensionError {
	public:
		%feature("autodoc", "1");
		math_NotSquare();
		%feature("autodoc", "1");
		math_NotSquare(const char * AString);
		%feature("autodoc", "1");
		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		Handle_math_NotSquare NewInstance(const char * aMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~math_NotSquare();

};
%extend math_NotSquare {
	Handle_math_NotSquare GetHandle() {
	return *(Handle_math_NotSquare*) &$self;
	}
};

%nodefaultctor math_ComputeKronrodPointsAndWeights;
class math_ComputeKronrodPointsAndWeights {
	public:
		%feature("autodoc", "1");
		~math_ComputeKronrodPointsAndWeights();
		%feature("autodoc", "1");
		math_ComputeKronrodPointsAndWeights(const Standard_Integer Number);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		math_Vector Points() const;
		%feature("autodoc", "1");
		math_Vector Weights() const;

};

%nodefaultctor math_BrentMinimum;
class math_BrentMinimum {
	public:
		%feature("autodoc", "1");
		~math_BrentMinimum();
		%feature("autodoc", "1");
		math_BrentMinimum(const Standard_Real TolX, const Standard_Integer NbIterations=100, const Standard_Real ZEPS=9.9999999999999997988664762925561536725284350613e-13);
		%feature("autodoc", "1");
		math_BrentMinimum(const Standard_Real TolX, const Standard_Real Fbx, const Standard_Integer NbIterations=100, const Standard_Real ZEPS=9.9999999999999997988664762925561536725284350613e-13);
		%feature("autodoc", "1");
		math_BrentMinimum(math_Function & F, const Standard_Real Ax, const Standard_Real Bx, const Standard_Real Cx, const Standard_Real TolX, const Standard_Integer NbIterations=100, const Standard_Real ZEPS=9.9999999999999997988664762925561536725284350613e-13);
		%feature("autodoc", "1");
		void Perform(math_Function & F, const Standard_Real Ax, const Standard_Real Bx, const Standard_Real Cx);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsSolutionReached(math_Function & F);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Real Location() const;
		%feature("autodoc", "1");
		Standard_Real Minimum() const;
		%feature("autodoc", "1");
		Standard_Integer NbIterations() const;
		%feature("autodoc", "1");
		void Dump(Standard_OStream & o) const;

};

%nodefaultctor math_FunctionSetRoot;
class math_FunctionSetRoot {
	public:
		%feature("autodoc", "1");
		math_FunctionSetRoot(math_FunctionSetWithDerivatives & F, const math_Vector &Tolerance, const Standard_Integer NbIterations=100);
		%feature("autodoc", "1");
		math_FunctionSetRoot(math_FunctionSetWithDerivatives & F, const Standard_Integer NbIterations=100);
		%feature("autodoc", "1");
		math_FunctionSetRoot(math_FunctionSetWithDerivatives & F, const math_Vector &StartingPoint, const math_Vector &Tolerance, const Standard_Integer NbIterations=100);
		%feature("autodoc", "1");
		math_FunctionSetRoot(math_FunctionSetWithDerivatives & F, const math_Vector &StartingPoint, const math_Vector &Tolerance, const math_Vector &infBound, const math_Vector &supBound, const Standard_Integer NbIterations=100);
		%feature("autodoc", "1");
		virtual		void Delete();
		%feature("autodoc", "1");
		virtual		~math_FunctionSetRoot();
		%feature("autodoc", "1");
		void SetTolerance(const math_Vector &Tolerance);
		%feature("autodoc", "1");
		void Perform(math_FunctionSetWithDerivatives & F, const math_Vector &StartingPoint, const math_Vector &infBound, const math_Vector &supBound);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsSolutionReached(math_FunctionSetWithDerivatives & F);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbIterations() const;
		%feature("autodoc", "1");
		Standard_Integer StateNumber() const;
		%feature("autodoc", "1");
		const math_Vector & Root() const;
		%feature("autodoc", "1");
		void Root(math_Vector & Root) const;
		%feature("autodoc", "1");
		const math_Matrix & Derivative() const;
		%feature("autodoc", "1");
		void Derivative(math_Matrix & Der) const;
		%feature("autodoc", "1");
		const math_Vector & FunctionSetErrors() const;
		%feature("autodoc", "1");
		void FunctionSetErrors(math_Vector & Err) const;
		%feature("autodoc", "1");
		void Dump(Standard_OStream & o) const;

};

%nodefaultctor math_IntegerVector;
class math_IntegerVector {
	public:
		%feature("autodoc", "1");
		~math_IntegerVector();
		%feature("autodoc", "1");
		math_IntegerVector(const Standard_Integer First, const Standard_Integer Last);
		%feature("autodoc", "1");
		math_IntegerVector(const Standard_Integer First, const Standard_Integer Last, const Standard_Integer InitialValue);
		%feature("autodoc", "1");
		void Init(const Standard_Integer InitialValue);
		%feature("autodoc", "1");
		math_IntegerVector(const Standard_Address Tab, const Standard_Integer First, const Standard_Integer Last);
		%feature("autodoc", "1");
		math_IntegerVector(const math_IntegerVector &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		Standard_Real Norm() const;
		%feature("autodoc", "1");
		Standard_Real Norm2() const;
		%feature("autodoc", "1");
		Standard_Integer Max() const;
		%feature("autodoc", "1");
		Standard_Integer Min() const;
		%feature("autodoc", "1");
		void Invert();
		%feature("autodoc", "1");
		math_IntegerVector Inverse() const;
		%feature("autodoc", "1");
		void Set(const Standard_Integer I1, const Standard_Integer I2, const math_IntegerVector &V);
		%feature("autodoc", "1");
		math_IntegerVector Slice(const Standard_Integer I1, const Standard_Integer I2) const;
		%feature("autodoc", "1");
		void Multiply(const Standard_Integer Right);
		%feature("autodoc", "1");
		void operator*=(const Standard_Integer Right);
		%feature("autodoc", "1");
		math_IntegerVector Multiplied(const Standard_Integer Right) const;
		%feature("autodoc", "1");
		math_IntegerVector operator*(const Standard_Integer Right) const;
		%feature("autodoc", "1");
		math_IntegerVector TMultiplied(const Standard_Integer Right) const;
		%feature("autodoc", "1");
		void Add(const math_IntegerVector &Right);
		%feature("autodoc", "1");
		void operator+=(const math_IntegerVector &Right);
		%feature("autodoc", "1");
		math_IntegerVector Added(const math_IntegerVector &Right) const;
		%feature("autodoc", "1");
		math_IntegerVector operator+(const math_IntegerVector &Right) const;
		%feature("autodoc", "1");
		void Add(const math_IntegerVector &Left, const math_IntegerVector &Right);
		%feature("autodoc", "1");
		void Subtract(const math_IntegerVector &Left, const math_IntegerVector &Right);
		%feature("autodoc", "1");
		Standard_Integer & Value(const Standard_Integer Num) const;
		%feature("autodoc", "1");
		Standard_Integer & operator()(const Standard_Integer Num) const;
		%feature("autodoc", "1");
		math_IntegerVector & Initialized(const math_IntegerVector &Other);
		%feature("autodoc", "1");
		Standard_Integer Multiplied(const math_IntegerVector &Right) const;
		%feature("autodoc", "1");
		Standard_Integer operator*(const math_IntegerVector &Right) const;
		%feature("autodoc", "1");
		math_IntegerVector Opposite();
		%feature("autodoc", "1");
		math_IntegerVector operator-();
		%feature("autodoc", "1");
		void Subtract(const math_IntegerVector &Right);
		%feature("autodoc", "1");
		void operator-=(const math_IntegerVector &Right);
		%feature("autodoc", "1");
		math_IntegerVector Subtracted(const math_IntegerVector &Right) const;
		%feature("autodoc", "1");
		math_IntegerVector operator-(const math_IntegerVector &Right) const;
		%feature("autodoc", "1");
		void Multiply(const Standard_Integer Left, const math_IntegerVector &Right);
		%feature("autodoc", "1");
		void Dump(Standard_OStream & o) const;

};

%nodefaultctor math_BracketMinimum;
class math_BracketMinimum {
	public:
		%feature("autodoc", "1");
		~math_BracketMinimum();
		%feature("autodoc", "1");
		math_BracketMinimum(math_Function & F, const Standard_Real A, const Standard_Real B);
		%feature("autodoc", "1");
		math_BracketMinimum(math_Function & F, const Standard_Real A, const Standard_Real B, const Standard_Real FA);
		%feature("autodoc", "1");
		math_BracketMinimum(math_Function & F, const Standard_Real A, const Standard_Real B, const Standard_Real FA, const Standard_Real FB);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		void Values(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		void FunctionValues(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		void Dump(Standard_OStream & o) const;

};

%nodefaultctor math_SingleTabOfReal;
class math_SingleTabOfReal {
	public:
		%feature("autodoc", "1");
		math_SingleTabOfReal(const Standard_Integer LowerIndex, const Standard_Integer UpperIndex);
		%feature("autodoc", "1");
		math_SingleTabOfReal(const Standard_Real &Tab, const Standard_Integer LowerIndex, const Standard_Integer UpperIndex);
		%feature("autodoc", "1");
		void Init(const Standard_Real &InitValue);
		%feature("autodoc", "1");
		math_SingleTabOfReal(const math_SingleTabOfReal &Other);
		%feature("autodoc", "1");
		void Copy(math_SingleTabOfReal & Other) const;
		%feature("autodoc", "1");
		void SetLower(const Standard_Integer LowerIndex);
		%feature("autodoc", "1");
		Standard_Real & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Real & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void Free();
		%feature("autodoc", "1");
		~math_SingleTabOfReal();

};

%nodefaultctor math_ValueAndWeight;
class math_ValueAndWeight {
	public:
		%feature("autodoc", "1");
		~math_ValueAndWeight();
		%feature("autodoc", "1");
		math_ValueAndWeight();
		%feature("autodoc", "1");
		math_ValueAndWeight(const Standard_Real Value, const Standard_Real Weight);
		%feature("autodoc", "1");
		Standard_Real Value() const;
		%feature("autodoc", "1");
		Standard_Real Weight() const;

};

%nodefaultctor math_CompareOfValueAndWeight;
class math_CompareOfValueAndWeight {
	public:
		%feature("autodoc", "1");
		~math_CompareOfValueAndWeight();
		%feature("autodoc", "1");
		math_CompareOfValueAndWeight();
		%feature("autodoc", "1");
		Standard_Boolean IsLower(const math_ValueAndWeight &Left, const math_ValueAndWeight &Right) const;
		%feature("autodoc", "1");
		Standard_Boolean IsGreater(const math_ValueAndWeight &Left, const math_ValueAndWeight &Right) const;
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const math_ValueAndWeight &Left, const math_ValueAndWeight &Right) const;

};

%nodefaultctor math_FunctionWithDerivative;
class math_FunctionWithDerivative : public math_Function {
	public:
		%feature("autodoc", "1");
		virtual		void Delete();
		%feature("autodoc", "1");
		virtual		Standard_Boolean Value(const Standard_Real X, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Derivative(const Standard_Real X, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Values(const Standard_Real X, Standard_Real &OutValue, Standard_Real &OutValue);

};

%nodefaultctor math_FunctionRoots;
class math_FunctionRoots {
	public:
		%feature("autodoc", "1");
		~math_FunctionRoots();
		%feature("autodoc", "1");
		math_FunctionRoots(math_FunctionWithDerivative & F, const Standard_Real A, const Standard_Real B, const Standard_Integer NbSample, const Standard_Real EpsX=0.0, const Standard_Real EpsF=0.0, const Standard_Real EpsNull=0.0, const Standard_Real K=0.0);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Boolean IsAllNull() const;
		%feature("autodoc", "1");
		Standard_Integer NbSolutions() const;
		%feature("autodoc", "1");
		Standard_Real Value(const Standard_Integer Nieme) const;
		%feature("autodoc", "1");
		Standard_Integer StateNumber(const Standard_Integer Nieme) const;
		%feature("autodoc", "1");
		void Dump(Standard_OStream & o) const;

};

%nodefaultctor math_Uzawa;
class math_Uzawa {
	public:
		%feature("autodoc", "1");
		~math_Uzawa();
		%feature("autodoc", "1");
		math_Uzawa(const math_Matrix &Cont, const math_Vector &Secont, const math_Vector &StartingPoint, const Standard_Real EpsLix=9.99999999999999954748111825886258685613938723691e-7, const Standard_Real EpsLic=9.99999999999999954748111825886258685613938723691e-7, const Standard_Integer NbIterations=500);
		%feature("autodoc", "1");
		math_Uzawa(const math_Matrix &Cont, const math_Vector &Secont, const math_Vector &StartingPoint, const Standard_Integer Nci, const Standard_Integer Nce, const Standard_Real EpsLix=9.99999999999999954748111825886258685613938723691e-7, const Standard_Real EpsLic=9.99999999999999954748111825886258685613938723691e-7, const Standard_Integer NbIterations=500);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		const math_Vector & Value() const;
		%feature("autodoc", "1");
		const math_Vector & InitialError() const;
		%feature("autodoc", "1");
		void Duale(math_Vector & V) const;
		%feature("autodoc", "1");
		const math_Vector & Error() const;
		%feature("autodoc", "1");
		Standard_Integer NbIterations() const;
		%feature("autodoc", "1");
		const math_Matrix & InverseCont() const;
		%feature("autodoc", "1");
		void Dump(Standard_OStream & o) const;

};

%nodefaultctor math_FRPR;
class math_FRPR {
	public:
		%feature("autodoc", "1");
		math_FRPR(math_MultipleVarFunctionWithGradient & F, const math_Vector &StartingPoint, const Standard_Real Tolerance, const Standard_Integer NbIterations=200, const Standard_Real ZEPS=9.9999999999999997988664762925561536725284350613e-13);
		%feature("autodoc", "1");
		math_FRPR(math_MultipleVarFunctionWithGradient & F, const Standard_Real Tolerance, const Standard_Integer NbIterations=200, const Standard_Real ZEPS=9.9999999999999997988664762925561536725284350613e-13);
		%feature("autodoc", "1");
		virtual		void Delete();
		%feature("autodoc", "1");
		virtual		~math_FRPR();
		%feature("autodoc", "1");
		void Perform(math_MultipleVarFunctionWithGradient & F, const math_Vector &StartingPoint);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsSolutionReached(math_MultipleVarFunctionWithGradient & F);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		const math_Vector & Location() const;
		%feature("autodoc", "1");
		void Location(math_Vector & Loc) const;
		%feature("autodoc", "1");
		Standard_Real Minimum() const;
		%feature("autodoc", "1");
		const math_Vector & Gradient() const;
		%feature("autodoc", "1");
		void Gradient(math_Vector & Grad) const;
		%feature("autodoc", "1");
		Standard_Integer NbIterations() const;
		%feature("autodoc", "1");
		void Dump(Standard_OStream & o) const;

};

%nodefaultctor math_FunctionSample;
class math_FunctionSample {
	public:
		%feature("autodoc", "1");
		~math_FunctionSample();
		%feature("autodoc", "1");
		math_FunctionSample(const Standard_Real A, const Standard_Real B, const Standard_Integer N);
		%feature("autodoc", "1");
		virtual		void Bounds(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Integer NbPoints() const;
		%feature("autodoc", "1");
		virtual		Standard_Real GetParameter(const Standard_Integer Index) const;

};

%nodefaultctor math_NewtonFunctionRoot;
class math_NewtonFunctionRoot {
	public:
		%feature("autodoc", "1");
		~math_NewtonFunctionRoot();
		%feature("autodoc", "1");
		math_NewtonFunctionRoot(math_FunctionWithDerivative & F, const Standard_Real Guess, const Standard_Real EpsX, const Standard_Real EpsF, const Standard_Integer NbIterations=100);
		%feature("autodoc", "1");
		math_NewtonFunctionRoot(math_FunctionWithDerivative & F, const Standard_Real Guess, const Standard_Real EpsX, const Standard_Real EpsF, const Standard_Real A, const Standard_Real B, const Standard_Integer NbIterations=100);
		%feature("autodoc", "1");
		math_NewtonFunctionRoot(const Standard_Real A, const Standard_Real B, const Standard_Real EpsX, const Standard_Real EpsF, const Standard_Integer NbIterations=100);
		%feature("autodoc", "1");
		void Perform(math_FunctionWithDerivative & F, const Standard_Real Guess);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Real Root() const;
		%feature("autodoc", "1");
		Standard_Real Derivative() const;
		%feature("autodoc", "1");
		Standard_Real Value() const;
		%feature("autodoc", "1");
		Standard_Integer NbIterations() const;
		%feature("autodoc", "1");
		void Dump(Standard_OStream & o) const;

};

%nodefaultctor math_RealRandom;
class math_RealRandom {
	public:
		%feature("autodoc", "1");
		~math_RealRandom();
		%feature("autodoc", "1");
		math_RealRandom(const Standard_Real Lower, const Standard_Real Upper);
		%feature("autodoc", "1");
		void Reset();
		%feature("autodoc", "1");
		Standard_Real Next();

};

%nodefaultctor math_SingleTabOfInteger;
class math_SingleTabOfInteger {
	public:
		%feature("autodoc", "1");
		math_SingleTabOfInteger(const Standard_Integer LowerIndex, const Standard_Integer UpperIndex);
		%feature("autodoc", "1");
		math_SingleTabOfInteger(const Standard_Integer &Tab, const Standard_Integer LowerIndex, const Standard_Integer UpperIndex);
		%feature("autodoc", "1");
		void Init(const Standard_Integer &InitValue);
		%feature("autodoc", "1");
		math_SingleTabOfInteger(const math_SingleTabOfInteger &Other);
		%feature("autodoc", "1");
		void Copy(math_SingleTabOfInteger & Other) const;
		%feature("autodoc", "1");
		void SetLower(const Standard_Integer LowerIndex);
		%feature("autodoc", "1");
		Standard_Integer & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Integer & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void Free();
		%feature("autodoc", "1");
		~math_SingleTabOfInteger();

};