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

%module math
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include math_renames.i


%include math_required_python_modules.i


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
		Handle_math_NotSquare & operator=(const Handle_math_NotSquare &aHandle);
		%feature("autodoc", "1");
		Handle_math_NotSquare & operator=(const math_NotSquare *anItem);
		%feature("autodoc", "1");
		static		Handle_math_NotSquare const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_math_NotSquare {
	math_NotSquare* GetObject() {
	return (math_NotSquare*)$self->Access();
	}
};
%feature("shadow") Handle_math_NotSquare::~Handle_math_NotSquare %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_math_NotSquare {
	void _kill_pointed() {
		delete $self;
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
		Handle_math_SingularMatrix & operator=(const Handle_math_SingularMatrix &aHandle);
		%feature("autodoc", "1");
		Handle_math_SingularMatrix & operator=(const math_SingularMatrix *anItem);
		%feature("autodoc", "1");
		static		Handle_math_SingularMatrix const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_math_SingularMatrix {
	math_SingularMatrix* GetObject() {
	return (math_SingularMatrix*)$self->Access();
	}
};
%feature("shadow") Handle_math_SingularMatrix::~Handle_math_SingularMatrix %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_math_SingularMatrix {
	void _kill_pointed() {
		delete $self;
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
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};

};
%feature("shadow") math_TrigonometricFunctionRoots::~math_TrigonometricFunctionRoots %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend math_TrigonometricFunctionRoots {
	void _kill_pointed() {
		delete $self;
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
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};

};
%feature("shadow") math_BissecNewton::~math_BissecNewton %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend math_BissecNewton {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor math_MultipleVarFunction;
class math_MultipleVarFunction {
	public:
		%feature("autodoc", "1");
		virtual		Standard_Integer NbVariables() const;
		%feature("autodoc","Value(const X) -> Standard_Real");

		virtual		Standard_Boolean Value(const math_Vector &X, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Integer GetStateNumber();

};
%feature("shadow") math_MultipleVarFunction::~math_MultipleVarFunction %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend math_MultipleVarFunction {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor math_MultipleVarFunctionWithGradient;
class math_MultipleVarFunctionWithGradient : public math_MultipleVarFunction {
	public:
		%feature("autodoc", "1");
		virtual		void Delete();
		%feature("autodoc", "1");
		virtual		Standard_Boolean Gradient(const math_Vector &X, math_Vector & G);
		%feature("autodoc","Values(const X) -> Standard_Real");

		virtual		Standard_Boolean Values(const math_Vector &X, Standard_Real &OutValue, math_Vector & G);

};
%feature("shadow") math_MultipleVarFunctionWithGradient::~math_MultipleVarFunctionWithGradient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend math_MultipleVarFunctionWithGradient {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor math_MultipleVarFunctionWithHessian;
class math_MultipleVarFunctionWithHessian : public math_MultipleVarFunctionWithGradient {
	public:
		%feature("autodoc","Values(const X) -> Standard_Real");

		virtual		Standard_Boolean Values(const math_Vector &X, Standard_Real &OutValue, math_Vector & G, math_Matrix & H);

};
%feature("shadow") math_MultipleVarFunctionWithHessian::~math_MultipleVarFunctionWithHessian %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend math_MultipleVarFunctionWithHessian {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") math_ValueAndWeight::~math_ValueAndWeight %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend math_ValueAndWeight {
	void _kill_pointed() {
		delete $self;
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
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};

};
%feature("shadow") math_BFGS::~math_BFGS %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend math_BFGS {
	void _kill_pointed() {
		delete $self;
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
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};

};
%feature("shadow") math_DirectPolynomialRoots::~math_DirectPolynomialRoots %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend math_DirectPolynomialRoots {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") math_IntegerRandom::~math_IntegerRandom %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend math_IntegerRandom {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor math_Function;
class math_Function {
	public:
		%feature("autodoc","Value(Standard_Real X) -> Standard_Real");

		virtual		Standard_Boolean Value(const Standard_Real X, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Integer GetStateNumber();

};
%feature("shadow") math_Function::~math_Function %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend math_Function {
	void _kill_pointed() {
		delete $self;
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
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};

};
%feature("shadow") math_Jacobi::~math_Jacobi %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend math_Jacobi {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor math;
class math {
	public:
		%feature("autodoc", "1");
		math();
		%feature("autodoc", "1");
		static		Standard_Integer GaussPointsMax();
		%feature("autodoc", "1");
		static		void GaussPoints(const Standard_Integer Index, math_Vector & Points);
		%feature("autodoc", "1");
		static		void GaussWeights(const Standard_Integer Index, math_Vector & Weights);
		%feature("autodoc", "1");
		static		Standard_Integer KronrodPointsMax();
		%feature("autodoc", "1");
		static		Standard_Boolean OrderedGaussPointsAndWeights(const Standard_Integer Index, math_Vector & Points, math_Vector & Weights);
		%feature("autodoc", "1");
		static		Standard_Boolean KronrodPointsAndWeights(const Standard_Integer Index, math_Vector & Points, math_Vector & Weights);

};
%feature("shadow") math::~math %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend math {
	void _kill_pointed() {
		delete $self;
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
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};

};
%feature("shadow") math_Powell::~math_Powell %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend math_Powell {
	void _kill_pointed() {
		delete $self;
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
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};

};
%feature("shadow") math_FunctionRoot::~math_FunctionRoot %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend math_FunctionRoot {
	void _kill_pointed() {
		delete $self;
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
		const math_Array1OfValueAndWeight & operator=(const math_Array1OfValueAndWeight &Other);
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
%feature("shadow") math_Array1OfValueAndWeight::~math_Array1OfValueAndWeight %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend math_Array1OfValueAndWeight {
	void _kill_pointed() {
		delete $self;
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
		%feature("autodoc","GetInterval(Standard_Integer Index) -> [Standard_Real, Standard_Real]");

		void GetInterval(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc","GetIntervalState(Standard_Integer Index) -> [Standard_Integer, Standard_Integer]");

		void GetIntervalState(const Standard_Integer Index, Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		Standard_Integer NbPoints() const;
		%feature("autodoc", "1");
		Standard_Real GetPoint(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Integer GetPointState(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};

};
%feature("shadow") math_FunctionAllRoots::~math_FunctionAllRoots %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend math_FunctionAllRoots {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") math_EigenValuesSearcher::~math_EigenValuesSearcher %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend math_EigenValuesSearcher {
	void _kill_pointed() {
		delete $self;
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
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};

};
%feature("shadow") math_Gauss::~math_Gauss %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend math_Gauss {
	void _kill_pointed() {
		delete $self;
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
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};

};
%feature("shadow") math_SVD::~math_SVD %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend math_SVD {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor math_QuickSortOfValueAndWeight;
class math_QuickSortOfValueAndWeight {
	public:
		%feature("autodoc", "1");
		math_QuickSortOfValueAndWeight();
		%feature("autodoc", "1");
		static		void Sort(math_Array1OfValueAndWeight & TheArray, const math_CompareOfValueAndWeight &Comp);

};
%feature("shadow") math_QuickSortOfValueAndWeight::~math_QuickSortOfValueAndWeight %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend math_QuickSortOfValueAndWeight {
	void _kill_pointed() {
		delete $self;
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
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};

};
%feature("shadow") math_GaussSingleIntegration::~math_GaussSingleIntegration %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend math_GaussSingleIntegration {
	void _kill_pointed() {
		delete $self;
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
		%feature("autodoc","1");
		%extend {
				Standard_Real GetValue(const Standard_Integer Row, const Standard_Integer Col) {
				return (Standard_Real) $self->Value(Row,Col);
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetValue(Standard_Real value ,const Standard_Integer Row, const Standard_Integer Col) {
				$self->Value(Row,Col)=value;
				}
		};
		%feature("autodoc", "1");
		Standard_Real & operator()(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		math_Matrix & Initialized(const math_Matrix &Other);
		%feature("autodoc", "1");
		math_Matrix & operator=(const math_Matrix &Other);
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
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};

};
%feature("shadow") math_Matrix::~math_Matrix %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend math_Matrix {
	void _kill_pointed() {
		delete $self;
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
		%feature("autodoc","1");
		%extend {
				Standard_Real GetValue(const Standard_Integer RowIndex, const Standard_Integer ColIndex) {
				return (Standard_Real) $self->Value(RowIndex,ColIndex);
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetValue(Standard_Real value ,const Standard_Integer RowIndex, const Standard_Integer ColIndex) {
				$self->Value(RowIndex,ColIndex)=value;
				}
		};
		%feature("autodoc", "1");
		Standard_Real & operator()(const Standard_Integer RowIndex, const Standard_Integer ColIndex) const;
		%feature("autodoc", "1");
		void Free();

};
%feature("shadow") math_DoubleTabOfReal::~math_DoubleTabOfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend math_DoubleTabOfReal {
	void _kill_pointed() {
		delete $self;
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
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetValue(const Standard_Integer Num) {
				return (Standard_Integer) $self->Value(Num);
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetValue(Standard_Integer value ,const Standard_Integer Num) {
				$self->Value(Num)=value;
				}
		};
		%feature("autodoc", "1");
		Standard_Integer & operator()(const Standard_Integer Num) const;
		%feature("autodoc", "1");
		math_IntegerVector & Initialized(const math_IntegerVector &Other);
		%feature("autodoc", "1");
		math_IntegerVector & operator=(const math_IntegerVector &Other);
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
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};

};
%feature("shadow") math_IntegerVector::~math_IntegerVector %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend math_IntegerVector {
	void _kill_pointed() {
		delete $self;
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
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};

};
%feature("shadow") math_GaussSetIntegration::~math_GaussSetIntegration %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend math_GaussSetIntegration {
	void _kill_pointed() {
		delete $self;
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
		%feature("autodoc","1");
		%extend {
				Standard_Real GetValue(const Standard_Integer Num) {
				return (Standard_Real) $self->Value(Num);
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetValue(Standard_Real value ,const Standard_Integer Num) {
				$self->Value(Num)=value;
				}
		};
		%feature("autodoc", "1");
		Standard_Real & operator()(const Standard_Integer Num) const;
		%feature("autodoc", "1");
		math_Vector & Initialized(const math_Vector &Other);
		%feature("autodoc", "1");
		math_Vector & operator=(const math_Vector &Other);
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
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};

};
%feature("shadow") math_Vector::~math_Vector %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend math_Vector {
	void _kill_pointed() {
		delete $self;
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
		static		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		static		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		static		Handle_math_NotSquare NewInstance(const char * aMessage);
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
%feature("shadow") math_NotSquare::~math_NotSquare %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend math_NotSquare {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") math_FunctionSet::~math_FunctionSet %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend math_FunctionSet {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") math_FunctionSetWithDerivatives::~math_FunctionSetWithDerivatives %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend math_FunctionSetWithDerivatives {
	void _kill_pointed() {
		delete $self;
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
		static		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		static		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		static		Handle_math_SingularMatrix NewInstance(const char * aMessage);
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
%feature("shadow") math_SingularMatrix::~math_SingularMatrix %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend math_SingularMatrix {
	void _kill_pointed() {
		delete $self;
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
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};

};
%feature("shadow") math_Householder::~math_Householder %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend math_Householder {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") math_ComputeKronrodPointsAndWeights::~math_ComputeKronrodPointsAndWeights %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend math_ComputeKronrodPointsAndWeights {
	void _kill_pointed() {
		delete $self;
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
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};

};
%feature("shadow") math_BrentMinimum::~math_BrentMinimum %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend math_BrentMinimum {
	void _kill_pointed() {
		delete $self;
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
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};

};
%feature("shadow") math_NewtonFunctionRoot::~math_NewtonFunctionRoot %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend math_NewtonFunctionRoot {
	void _kill_pointed() {
		delete $self;
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
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};

};
%feature("shadow") math_Uzawa::~math_Uzawa %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend math_Uzawa {
	void _kill_pointed() {
		delete $self;
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
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};

};
%feature("shadow") math_FunctionRoots::~math_FunctionRoots %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend math_FunctionRoots {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor math_FunctionWithDerivative;
class math_FunctionWithDerivative : public math_Function {
	public:
		%feature("autodoc", "1");
		virtual		void Delete();
		%feature("autodoc","Value(Standard_Real X) -> Standard_Real");

		virtual		Standard_Boolean Value(const Standard_Real X, Standard_Real &OutValue);
		%feature("autodoc","Derivative(Standard_Real X) -> Standard_Real");

		virtual		Standard_Boolean Derivative(const Standard_Real X, Standard_Real &OutValue);
		%feature("autodoc","Values(Standard_Real X) -> [Standard_Real, Standard_Real]");

		virtual		Standard_Boolean Values(const Standard_Real X, Standard_Real &OutValue, Standard_Real &OutValue);

};
%feature("shadow") math_FunctionWithDerivative::~math_FunctionWithDerivative %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend math_FunctionWithDerivative {
	void _kill_pointed() {
		delete $self;
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
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};

};
%feature("shadow") math_BracketedRoot::~math_BracketedRoot %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend math_BracketedRoot {
	void _kill_pointed() {
		delete $self;
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
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};

};
%feature("shadow") math_FunctionSetRoot::~math_FunctionSetRoot %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend math_FunctionSetRoot {
	void _kill_pointed() {
		delete $self;
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
		%feature("autodoc","Values() -> [Standard_Real, Standard_Real, Standard_Real]");

		void Values(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc","FunctionValues() -> [Standard_Real, Standard_Real, Standard_Real]");

		void FunctionValues(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};

};
%feature("shadow") math_BracketMinimum::~math_BracketMinimum %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend math_BracketMinimum {
	void _kill_pointed() {
		delete $self;
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
		%feature("autodoc","1");
		%extend {
				Standard_Real GetValue(const Standard_Integer Index) {
				return (Standard_Real) $self->Value(Index);
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetValue(Standard_Real value ,const Standard_Integer Index) {
				$self->Value(Index)=value;
				}
		};
		%feature("autodoc", "1");
		Standard_Real & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void Free();

};
%feature("shadow") math_SingleTabOfReal::~math_SingleTabOfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend math_SingleTabOfReal {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") math_CompareOfValueAndWeight::~math_CompareOfValueAndWeight %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend math_CompareOfValueAndWeight {
	void _kill_pointed() {
		delete $self;
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
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};

};
%feature("shadow") math_GaussLeastSquare::~math_GaussLeastSquare %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend math_GaussLeastSquare {
	void _kill_pointed() {
		delete $self;
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
		%feature("autodoc","GKRule(Standard_Real theLower, Standard_Real theUpper, const theGaussP, const theGaussW, const theKronrodP, const theKronrodW) -> [Standard_Real, Standard_Real]");

		static		Standard_Boolean GKRule(math_Function & theFunction, const Standard_Real theLower, const Standard_Real theUpper, const math_Vector &theGaussP, const math_Vector &theGaussW, const math_Vector &theKronrodP, const math_Vector &theKronrodW, Standard_Real &OutValue, Standard_Real &OutValue);

};
%feature("shadow") math_KronrodSingleIntegration::~math_KronrodSingleIntegration %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend math_KronrodSingleIntegration {
	void _kill_pointed() {
		delete $self;
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
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};

};
%feature("shadow") math_Crout::~math_Crout %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend math_Crout {
	void _kill_pointed() {
		delete $self;
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
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};

};
%feature("shadow") math_FRPR::~math_FRPR %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend math_FRPR {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") math_ComputeGaussPointsAndWeights::~math_ComputeGaussPointsAndWeights %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend math_ComputeGaussPointsAndWeights {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor math_FunctionSample;
class math_FunctionSample {
	public:
		%feature("autodoc", "1");
		math_FunctionSample(const Standard_Real A, const Standard_Real B, const Standard_Integer N);
		%feature("autodoc","Bounds() -> [Standard_Real, Standard_Real]");

		virtual		void Bounds(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Integer NbPoints() const;
		%feature("autodoc", "1");
		virtual		Standard_Real GetParameter(const Standard_Integer Index) const;

};
%feature("shadow") math_FunctionSample::~math_FunctionSample %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend math_FunctionSample {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") math_RealRandom::~math_RealRandom %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend math_RealRandom {
	void _kill_pointed() {
		delete $self;
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
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetValue(const Standard_Integer Index) {
				return (Standard_Integer) $self->Value(Index);
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetValue(Standard_Integer value ,const Standard_Integer Index) {
				$self->Value(Index)=value;
				}
		};
		%feature("autodoc", "1");
		Standard_Integer & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void Free();

};
%feature("shadow") math_SingleTabOfInteger::~math_SingleTabOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend math_SingleTabOfInteger {
	void _kill_pointed() {
		delete $self;
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
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};

};
%feature("shadow") math_GaussMultipleIntegration::~math_GaussMultipleIntegration %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend math_GaussMultipleIntegration {
	void _kill_pointed() {
		delete $self;
	}
};
