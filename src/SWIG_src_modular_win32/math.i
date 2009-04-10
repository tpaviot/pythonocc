/*

Copyright 2008-2009 Thomas Paviot (thomas.paviot@free.fr)

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
%module math

%include typemaps.i
%include cmalloc.i
%include cpointer.i
%include carrays.i
%include exception.i
%include std_list.i
%include std_string.i
%include <python/std_basic_string.i>

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

/*
Standard_Integer & function transformation
*/
%typemap(argout) Standard_Integer &OutValue {
    PyObject *o, *o2, *o3;
    o = PyInt_FromLong(*$1);
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

%typemap(in,numinputs=0) Standard_Integer &OutValue(Standard_Integer temp) {
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
%extend Handle_math_NotSquare {
	~Handle_math_NotSquare() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_math_NotSquare\n");}
	}
};


%nodefaultctor Handle_math_SingularMatrix;
class Handle_math_SingularMatrix : public Handle_Standard_Failure {
	public:
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
%extend Handle_math_SingularMatrix {
	~Handle_math_SingularMatrix() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_math_SingularMatrix\n");}
	}
};


%nodefaultctor math_GaussLeastSquare;
class math_GaussLeastSquare {
	public:
		%feature("autodoc", "1");
		math_GaussLeastSquare(const math_Matrix &A, const Standard_Real MinPivot=9.99999999999999945153271454209571651729503702787e-21);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		void Solve(const math_Vector &B, math_Vector & X) const;
		%feature("autodoc", "1");
		void Dump(Standard_OStream & o) const;

};
%extend math_GaussLeastSquare {
	~math_GaussLeastSquare() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of math_GaussLeastSquare\n");}
	}
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

};
%extend math_DoubleTabOfReal {
	~math_DoubleTabOfReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of math_DoubleTabOfReal\n");}
	}
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

};
%extend math_SingularMatrix {
	Handle_math_SingularMatrix GetHandle() {
	return *(Handle_math_SingularMatrix*) &$self;
	}
};
%extend math_SingularMatrix {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend math_SingularMatrix {
	~math_SingularMatrix() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of math_SingularMatrix\n");}
	}
};


%nodefaultctor math_TrigonometricFunctionRoots;
class math_TrigonometricFunctionRoots {
	public:
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
%extend math_TrigonometricFunctionRoots {
	~math_TrigonometricFunctionRoots() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of math_TrigonometricFunctionRoots\n");}
	}
};


%nodefaultctor math_BissecNewton;
class math_BissecNewton {
	public:
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
%extend math_BissecNewton {
	~math_BissecNewton() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of math_BissecNewton\n");}
	}
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
%extend math_MultipleVarFunction {
	~math_MultipleVarFunction() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of math_MultipleVarFunction\n");}
	}
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
%extend math_MultipleVarFunctionWithGradient {
	~math_MultipleVarFunctionWithGradient() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of math_MultipleVarFunctionWithGradient\n");}
	}
};


%nodefaultctor math_MultipleVarFunctionWithHessian;
class math_MultipleVarFunctionWithHessian : public math_MultipleVarFunctionWithGradient {
	public:
		%feature("autodoc", "1");
		virtual		Standard_Boolean Values(const math_Vector &X, Standard_Real &OutValue, math_Vector & G, math_Matrix & H);

};
%extend math_MultipleVarFunctionWithHessian {
	~math_MultipleVarFunctionWithHessian() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of math_MultipleVarFunctionWithHessian\n");}
	}
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
%extend math_BFGS {
	~math_BFGS() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of math_BFGS\n");}
	}
};


%nodefaultctor math_DirectPolynomialRoots;
class math_DirectPolynomialRoots {
	public:
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
%extend math_DirectPolynomialRoots {
	~math_DirectPolynomialRoots() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of math_DirectPolynomialRoots\n");}
	}
};


%nodefaultctor math_IntegerRandom;
class math_IntegerRandom {
	public:
		%feature("autodoc", "1");
		math_IntegerRandom(const Standard_Integer Lower, const Standard_Integer Upper);
		%feature("autodoc", "1");
		void Reset();
		%feature("autodoc", "1");
		Standard_Integer Next();

};
%extend math_IntegerRandom {
	~math_IntegerRandom() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of math_IntegerRandom\n");}
	}
};


%nodefaultctor math_Jacobi;
class math_Jacobi {
	public:
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
%extend math_Jacobi {
	~math_Jacobi() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of math_Jacobi\n");}
	}
};


%nodefaultctor math;
class math {
	public:
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
%extend math {
	~math() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of math\n");}
	}
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
%extend math_Powell {
	~math_Powell() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of math_Powell\n");}
	}
};


%nodefaultctor math_FunctionRoot;
class math_FunctionRoot {
	public:
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
%extend math_FunctionRoot {
	~math_FunctionRoot() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of math_FunctionRoot\n");}
	}
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
%extend math_Array1OfValueAndWeight {
	~math_Array1OfValueAndWeight() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of math_Array1OfValueAndWeight\n");}
	}
};


%nodefaultctor math_Householder;
class math_Householder {
	public:
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
%extend math_Householder {
	~math_Householder() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of math_Householder\n");}
	}
};


%nodefaultctor math_FunctionAllRoots;
class math_FunctionAllRoots {
	public:
		%feature("autodoc", "1");
		math_FunctionAllRoots(math_FunctionWithDerivative & F, const math_FunctionSample &S, const Standard_Real EpsX, const Standard_Real EpsF, const Standard_Real EpsNul);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbIntervals() const;
		%feature("autodoc", "1");
		void GetInterval(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		void GetIntervalState(const Standard_Integer Index, Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		Standard_Integer NbPoints() const;
		%feature("autodoc", "1");
		Standard_Real GetPoint(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Integer GetPointState(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void Dump(Standard_OStream & o) const;

};
%extend math_FunctionAllRoots {
	~math_FunctionAllRoots() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of math_FunctionAllRoots\n");}
	}
};


%nodefaultctor math_EigenValuesSearcher;
class math_EigenValuesSearcher {
	public:
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
%extend math_EigenValuesSearcher {
	~math_EigenValuesSearcher() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of math_EigenValuesSearcher\n");}
	}
};


%nodefaultctor math_QuickSortOfValueAndWeight;
class math_QuickSortOfValueAndWeight {
	public:
		%feature("autodoc", "1");
		math_QuickSortOfValueAndWeight();
		%feature("autodoc", "1");
		void Sort(math_Array1OfValueAndWeight & TheArray, const math_CompareOfValueAndWeight &Comp);

};
%extend math_QuickSortOfValueAndWeight {
	~math_QuickSortOfValueAndWeight() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of math_QuickSortOfValueAndWeight\n");}
	}
};


%nodefaultctor math_ComputeGaussPointsAndWeights;
class math_ComputeGaussPointsAndWeights {
	public:
		%feature("autodoc", "1");
		math_ComputeGaussPointsAndWeights(const Standard_Integer Number);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		math_Vector Points() const;
		%feature("autodoc", "1");
		math_Vector Weights() const;

};
%extend math_ComputeGaussPointsAndWeights {
	~math_ComputeGaussPointsAndWeights() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of math_ComputeGaussPointsAndWeights\n");}
	}
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
%extend math_FunctionSet {
	~math_FunctionSet() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of math_FunctionSet\n");}
	}
};


%nodefaultctor math_FunctionSetWithDerivatives;
class math_FunctionSetWithDerivatives : public math_FunctionSet {
	public:
		%feature("autodoc", "1");
		virtual		Standard_Boolean Derivatives(const math_Vector &X, math_Matrix & D);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Values(const math_Vector &X, math_Vector & F, math_Matrix & D);

};
%extend math_FunctionSetWithDerivatives {
	~math_FunctionSetWithDerivatives() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of math_FunctionSetWithDerivatives\n");}
	}
};


%nodefaultctor math_GaussSingleIntegration;
class math_GaussSingleIntegration {
	public:
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
%extend math_GaussSingleIntegration {
	~math_GaussSingleIntegration() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of math_GaussSingleIntegration\n");}
	}
};


%nodefaultctor math_Matrix;
class math_Matrix {
	public:
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
%extend math_Matrix {
	~math_Matrix() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of math_Matrix\n");}
	}
};


%nodefaultctor math_Gauss;
class math_Gauss {
	public:
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
%extend math_Gauss {
	~math_Gauss() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of math_Gauss\n");}
	}
};


%nodefaultctor math_Function;
class math_Function {
	public:
		%feature("autodoc", "1");
		virtual		Standard_Boolean Value(const Standard_Real X, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Integer GetStateNumber();

};
%extend math_Function {
	~math_Function() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of math_Function\n");}
	}
};


%nodefaultctor math_GaussSetIntegration;
class math_GaussSetIntegration {
	public:
		%feature("autodoc", "1");
		math_GaussSetIntegration(math_FunctionSet & F, const math_Vector &Lower, const math_Vector &Upper, const math_IntegerVector &Order);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		const math_Vector & Value() const;
		%feature("autodoc", "1");
		void Dump(Standard_OStream & o) const;

};
%extend math_GaussSetIntegration {
	~math_GaussSetIntegration() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of math_GaussSetIntegration\n");}
	}
};


%nodefaultctor math_Vector;
class math_Vector {
	public:
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
%extend math_Vector {
	~math_Vector() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of math_Vector\n");}
	}
};


%nodefaultctor math_Crout;
class math_Crout {
	public:
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
%extend math_Crout {
	~math_Crout() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of math_Crout\n");}
	}
};


%nodefaultctor math_SVD;
class math_SVD {
	public:
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
%extend math_SVD {
	~math_SVD() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of math_SVD\n");}
	}
};


%nodefaultctor math_BracketedRoot;
class math_BracketedRoot {
	public:
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
%extend math_BracketedRoot {
	~math_BracketedRoot() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of math_BracketedRoot\n");}
	}
};


%nodefaultctor math_GaussMultipleIntegration;
class math_GaussMultipleIntegration {
	public:
		%feature("autodoc", "1");
		math_GaussMultipleIntegration(math_MultipleVarFunction & F, const math_Vector &Lower, const math_Vector &Upper, const math_IntegerVector &Order);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Real Value() const;
		%feature("autodoc", "1");
		void Dump(Standard_OStream & o) const;

};
%extend math_GaussMultipleIntegration {
	~math_GaussMultipleIntegration() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of math_GaussMultipleIntegration\n");}
	}
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

};
%extend math_NotSquare {
	Handle_math_NotSquare GetHandle() {
	return *(Handle_math_NotSquare*) &$self;
	}
};
%extend math_NotSquare {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend math_NotSquare {
	~math_NotSquare() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of math_NotSquare\n");}
	}
};


%nodefaultctor math_ComputeKronrodPointsAndWeights;
class math_ComputeKronrodPointsAndWeights {
	public:
		%feature("autodoc", "1");
		math_ComputeKronrodPointsAndWeights(const Standard_Integer Number);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		math_Vector Points() const;
		%feature("autodoc", "1");
		math_Vector Weights() const;

};
%extend math_ComputeKronrodPointsAndWeights {
	~math_ComputeKronrodPointsAndWeights() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of math_ComputeKronrodPointsAndWeights\n");}
	}
};


%nodefaultctor math_BrentMinimum;
class math_BrentMinimum {
	public:
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
%extend math_BrentMinimum {
	~math_BrentMinimum() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of math_BrentMinimum\n");}
	}
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
%extend math_FunctionSetRoot {
	~math_FunctionSetRoot() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of math_FunctionSetRoot\n");}
	}
};


%nodefaultctor math_IntegerVector;
class math_IntegerVector {
	public:
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
%extend math_IntegerVector {
	~math_IntegerVector() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of math_IntegerVector\n");}
	}
};


%nodefaultctor math_BracketMinimum;
class math_BracketMinimum {
	public:
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
%extend math_BracketMinimum {
	~math_BracketMinimum() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of math_BracketMinimum\n");}
	}
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

};
%extend math_SingleTabOfReal {
	~math_SingleTabOfReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of math_SingleTabOfReal\n");}
	}
};


%nodefaultctor math_ValueAndWeight;
class math_ValueAndWeight {
	public:
		%feature("autodoc", "1");
		math_ValueAndWeight();
		%feature("autodoc", "1");
		math_ValueAndWeight(const Standard_Real Value, const Standard_Real Weight);
		%feature("autodoc", "1");
		Standard_Real Value() const;
		%feature("autodoc", "1");
		Standard_Real Weight() const;

};
%extend math_ValueAndWeight {
	~math_ValueAndWeight() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of math_ValueAndWeight\n");}
	}
};


%nodefaultctor math_CompareOfValueAndWeight;
class math_CompareOfValueAndWeight {
	public:
		%feature("autodoc", "1");
		math_CompareOfValueAndWeight();
		%feature("autodoc", "1");
		Standard_Boolean IsLower(const math_ValueAndWeight &Left, const math_ValueAndWeight &Right) const;
		%feature("autodoc", "1");
		Standard_Boolean IsGreater(const math_ValueAndWeight &Left, const math_ValueAndWeight &Right) const;
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const math_ValueAndWeight &Left, const math_ValueAndWeight &Right) const;

};
%extend math_CompareOfValueAndWeight {
	~math_CompareOfValueAndWeight() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of math_CompareOfValueAndWeight\n");}
	}
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
%extend math_FunctionWithDerivative {
	~math_FunctionWithDerivative() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of math_FunctionWithDerivative\n");}
	}
};


%nodefaultctor math_FunctionRoots;
class math_FunctionRoots {
	public:
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
%extend math_FunctionRoots {
	~math_FunctionRoots() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of math_FunctionRoots\n");}
	}
};


%nodefaultctor math_KronrodSingleIntegration;
class math_KronrodSingleIntegration {
	public:
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
%extend math_KronrodSingleIntegration {
	~math_KronrodSingleIntegration() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of math_KronrodSingleIntegration\n");}
	}
};


%nodefaultctor math_Uzawa;
class math_Uzawa {
	public:
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
%extend math_Uzawa {
	~math_Uzawa() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of math_Uzawa\n");}
	}
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
%extend math_FRPR {
	~math_FRPR() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of math_FRPR\n");}
	}
};


%nodefaultctor math_FunctionSample;
class math_FunctionSample {
	public:
		%feature("autodoc", "1");
		math_FunctionSample(const Standard_Real A, const Standard_Real B, const Standard_Integer N);
		%feature("autodoc", "1");
		virtual		void Bounds(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Integer NbPoints() const;
		%feature("autodoc", "1");
		virtual		Standard_Real GetParameter(const Standard_Integer Index) const;

};
%extend math_FunctionSample {
	~math_FunctionSample() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of math_FunctionSample\n");}
	}
};


%nodefaultctor math_NewtonFunctionRoot;
class math_NewtonFunctionRoot {
	public:
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
%extend math_NewtonFunctionRoot {
	~math_NewtonFunctionRoot() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of math_NewtonFunctionRoot\n");}
	}
};


%nodefaultctor math_RealRandom;
class math_RealRandom {
	public:
		%feature("autodoc", "1");
		math_RealRandom(const Standard_Real Lower, const Standard_Real Upper);
		%feature("autodoc", "1");
		void Reset();
		%feature("autodoc", "1");
		Standard_Real Next();

};
%extend math_RealRandom {
	~math_RealRandom() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of math_RealRandom\n");}
	}
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

};
%extend math_SingleTabOfInteger {
	~math_SingleTabOfInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of math_SingleTabOfInteger\n");}
	}
};
