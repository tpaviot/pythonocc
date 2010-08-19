/*

Copyright 2008-2010 Thomas Paviot (tpaviot@gmail.com)

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

$Revision
$Date
$Author
$HeaderURL

*/


%{
#ifdef WNT
#pragma warning(disable : 4716)
#endif
%}

%module AdvApprox
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include AdvApprox_renames.i


%include AdvApprox_required_python_modules.i


%include AdvApprox_dependencies.i


%include AdvApprox_headers.i




%nodefaultctor AdvApprox_Cutting;
class AdvApprox_Cutting {
	public:
		%feature("autodoc", "1");
		virtual		void Delete();
		%feature("autodoc","Value(Standard_Real a, Standard_Real b) -> Standard_Real");

		virtual		Standard_Boolean Value(const Standard_Real a, const Standard_Real b, Standard_Real &OutValue) const;

};
%feature("shadow") AdvApprox_Cutting::~AdvApprox_Cutting %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend AdvApprox_Cutting {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor AdvApprox_DichoCutting;
class AdvApprox_DichoCutting : public AdvApprox_Cutting {
	public:
		%feature("autodoc", "1");
		AdvApprox_DichoCutting();

};
%feature("shadow") AdvApprox_DichoCutting::~AdvApprox_DichoCutting %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend AdvApprox_DichoCutting {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor AdvApprox_ApproxAFunction;
class AdvApprox_ApproxAFunction {
	public:
		%feature("autodoc", "1");
		AdvApprox_ApproxAFunction(const Standard_Integer Num1DSS, const Standard_Integer Num2DSS, const Standard_Integer Num3DSS, const Handle_TColStd_HArray1OfReal &OneDTol, const Handle_TColStd_HArray1OfReal &TwoDTol, const Handle_TColStd_HArray1OfReal &ThreeDTol, const Standard_Real First, const Standard_Real Last, const GeomAbs_Shape Continuity, const Standard_Integer MaxDeg, const Standard_Integer MaxSeg, const AdvApprox_EvaluatorFunction &Func);
		%feature("autodoc", "1");
		AdvApprox_ApproxAFunction(const Standard_Integer Num1DSS, const Standard_Integer Num2DSS, const Standard_Integer Num3DSS, const Handle_TColStd_HArray1OfReal &OneDTol, const Handle_TColStd_HArray1OfReal &TwoDTol, const Handle_TColStd_HArray1OfReal &ThreeDTol, const Standard_Real First, const Standard_Real Last, const GeomAbs_Shape Continuity, const Standard_Integer MaxDeg, const Standard_Integer MaxSeg, const AdvApprox_EvaluatorFunction &Func, const AdvApprox_Cutting &CutTool);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Boolean HasResult() const;
		%feature("autodoc", "1");
		Handle_TColStd_HArray2OfReal Poles1d() const;
		%feature("autodoc", "1");
		Handle_TColgp_HArray2OfPnt2d Poles2d() const;
		%feature("autodoc", "1");
		Handle_TColgp_HArray2OfPnt Poles() const;
		%feature("autodoc", "1");
		Standard_Integer NbPoles() const;
		%feature("autodoc", "1");
		void Poles1d(const Standard_Integer Index, TColStd_Array1OfReal & P) const;
		%feature("autodoc", "1");
		void Poles2d(const Standard_Integer Index, TColgp_Array1OfPnt2d & P) const;
		%feature("autodoc", "1");
		void Poles(const Standard_Integer Index, TColgp_Array1OfPnt & P) const;
		%feature("autodoc", "1");
		Standard_Integer Degree() const;
		%feature("autodoc", "1");
		Standard_Integer NbKnots() const;
		%feature("autodoc", "1");
		Standard_Integer NumSubSpaces(const Standard_Integer Dimension) const;
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal Knots() const;
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfInteger Multiplicities() const;
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal MaxError(const Standard_Integer Dimension) const;
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal AverageError(const Standard_Integer Dimension) const;
		%feature("autodoc", "1");
		Standard_Real MaxError(const Standard_Integer Dimension, const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Real AverageError(const Standard_Integer Dimension, const Standard_Integer Index) const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};

};
%feature("shadow") AdvApprox_ApproxAFunction::~AdvApprox_ApproxAFunction %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend AdvApprox_ApproxAFunction {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor AdvApprox_PrefAndRec;
class AdvApprox_PrefAndRec : public AdvApprox_Cutting {
	public:
		%feature("autodoc", "1");
		AdvApprox_PrefAndRec(const TColStd_Array1OfReal &RecomendedCut, const TColStd_Array1OfReal &PrefferedCut, const Standard_Real Weight=5);
		%feature("autodoc","Value(Standard_Real a, Standard_Real b) -> Standard_Real");

		virtual		Standard_Boolean Value(const Standard_Real a, const Standard_Real b, Standard_Real &OutValue) const;

};
%feature("shadow") AdvApprox_PrefAndRec::~AdvApprox_PrefAndRec %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend AdvApprox_PrefAndRec {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor AdvApprox_PrefCutting;
class AdvApprox_PrefCutting : public AdvApprox_Cutting {
	public:
		%feature("autodoc", "1");
		AdvApprox_PrefCutting(const TColStd_Array1OfReal &CutPnts);
		%feature("autodoc","Value(Standard_Real a, Standard_Real b) -> Standard_Real");

		virtual		Standard_Boolean Value(const Standard_Real a, const Standard_Real b, Standard_Real &OutValue) const;

};
%feature("shadow") AdvApprox_PrefCutting::~AdvApprox_PrefCutting %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend AdvApprox_PrefCutting {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor AdvApprox_SimpleApprox;
class AdvApprox_SimpleApprox {
	public:
		%feature("autodoc", "1");
		AdvApprox_SimpleApprox(const Standard_Integer TotalDimension, const Standard_Integer TotalNumSS, const GeomAbs_Shape Continuity, const Standard_Integer WorkDegree, const Standard_Integer NbGaussPoints, const Handle_PLib_JacobiPolynomial &JacobiBase, const AdvApprox_EvaluatorFunction &Func);
		%feature("autodoc", "1");
		void Perform(const TColStd_Array1OfInteger &LocalDimension, const TColStd_Array1OfReal &LocalTolerancesArray, const Standard_Real First, const Standard_Real Last, const Standard_Integer MaxDegree);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer Degree() const;
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal Coefficients() const;
		%feature("autodoc", "1");
		Handle_TColStd_HArray2OfReal FirstConstr() const;
		%feature("autodoc", "1");
		Handle_TColStd_HArray2OfReal LastConstr() const;
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal SomTab() const;
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal DifTab() const;
		%feature("autodoc", "1");
		Standard_Real MaxError(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Real AverageError(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};

};
%feature("shadow") AdvApprox_SimpleApprox::~AdvApprox_SimpleApprox %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend AdvApprox_SimpleApprox {
	void _kill_pointed() {
		delete $self;
	}
};
