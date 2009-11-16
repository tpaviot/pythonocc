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
%module Geom2dConvert
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%pythoncode {
import GarbageCollector
};

%include Geom2dConvert_dependencies.i


%include Geom2dConvert_headers.i




%nodefaultctor Geom2dConvert;
class Geom2dConvert {
	public:
		%feature("autodoc", "1");
		Geom2dConvert();
		%feature("autodoc", "1");
		Handle_Geom2d_BSplineCurve SplitBSplineCurve(const Handle_Geom2d_BSplineCurve &C, const Standard_Integer FromK1, const Standard_Integer ToK2, const Standard_Boolean SameOrientation=1);
		%feature("autodoc", "1");
		Handle_Geom2d_BSplineCurve SplitBSplineCurve(const Handle_Geom2d_BSplineCurve &C, const Standard_Real FromU1, const Standard_Real ToU2, const Standard_Real ParametricTolerance, const Standard_Boolean SameOrientation=1);
		%feature("autodoc", "1");
		Handle_Geom2d_BSplineCurve CurveToBSplineCurve(const Handle_Geom2d_Curve &C, const Convert_ParameterisationType Parameterisation=Convert_TgtThetaOver2);
		%feature("autodoc", "1");
		void ConcatG1(TColGeom2d_Array1OfBSplineCurve & ArrayOfCurves, const TColStd_Array1OfReal &ArrayOfToler, Handle_TColGeom2d_HArray1OfBSplineCurve & ArrayOfConcatenated, const Standard_Boolean ClosedFlag, const Standard_Real ClosedTolerance);
		%feature("autodoc", "1");
		void ConcatC1(TColGeom2d_Array1OfBSplineCurve & ArrayOfCurves, const TColStd_Array1OfReal &ArrayOfToler, Handle_TColStd_HArray1OfInteger & ArrayOfIndices, Handle_TColGeom2d_HArray1OfBSplineCurve & ArrayOfConcatenated, const Standard_Boolean ClosedFlag, const Standard_Real ClosedTolerance);
		%feature("autodoc", "1");
		void ConcatC1(TColGeom2d_Array1OfBSplineCurve & ArrayOfCurves, const TColStd_Array1OfReal &ArrayOfToler, Handle_TColStd_HArray1OfInteger & ArrayOfIndices, Handle_TColGeom2d_HArray1OfBSplineCurve & ArrayOfConcatenated, const Standard_Boolean ClosedFlag, const Standard_Real ClosedTolerance, const Standard_Real AngularTolerance);
		%feature("autodoc", "1");
		void C0BSplineToC1BSplineCurve(Handle_Geom2d_BSplineCurve & BS, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		void C0BSplineToArrayOfC1BSplineCurve(const Handle_Geom2d_BSplineCurve &BS, Handle_TColGeom2d_HArray1OfBSplineCurve & tabBS, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		void C0BSplineToArrayOfC1BSplineCurve(const Handle_Geom2d_BSplineCurve &BS, Handle_TColGeom2d_HArray1OfBSplineCurve & tabBS, const Standard_Real AngularTolerance, const Standard_Real Tolerance);

};
%feature("shadow") Geom2dConvert::~Geom2dConvert %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom2dConvert {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom2dConvert_BSplineCurveKnotSplitting;
class Geom2dConvert_BSplineCurveKnotSplitting {
	public:
		%feature("autodoc", "1");
		Geom2dConvert_BSplineCurveKnotSplitting(const Handle_Geom2d_BSplineCurve &BasisCurve, const Standard_Integer ContinuityRange);
		%feature("autodoc", "1");
		Standard_Integer NbSplits() const;
		%feature("autodoc", "1");
		void Splitting(TColStd_Array1OfInteger & SplitValues) const;
		%feature("autodoc", "1");
		Standard_Integer SplitValue(const Standard_Integer Index) const;

};
%feature("shadow") Geom2dConvert_BSplineCurveKnotSplitting::~Geom2dConvert_BSplineCurveKnotSplitting %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom2dConvert_BSplineCurveKnotSplitting {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom2dConvert_BSplineCurveToBezierCurve;
class Geom2dConvert_BSplineCurveToBezierCurve {
	public:
		%feature("autodoc", "1");
		Geom2dConvert_BSplineCurveToBezierCurve(const Handle_Geom2d_BSplineCurve &BasisCurve);
		%feature("autodoc", "1");
		Geom2dConvert_BSplineCurveToBezierCurve(const Handle_Geom2d_BSplineCurve &BasisCurve, const Standard_Real U1, const Standard_Real U2, const Standard_Real ParametricTolerance);
		%feature("autodoc", "1");
		Handle_Geom2d_BezierCurve Arc(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Arcs(TColGeom2d_Array1OfBezierCurve & Curves);
		%feature("autodoc", "1");
		void Knots(TColStd_Array1OfReal & TKnots) const;
		%feature("autodoc", "1");
		Standard_Integer NbArcs() const;

};
%feature("shadow") Geom2dConvert_BSplineCurveToBezierCurve::~Geom2dConvert_BSplineCurveToBezierCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom2dConvert_BSplineCurveToBezierCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom2dConvert_CompCurveToBSplineCurve;
class Geom2dConvert_CompCurveToBSplineCurve {
	public:
		%feature("autodoc", "1");
		Geom2dConvert_CompCurveToBSplineCurve(const Handle_Geom2d_BoundedCurve &BasisCurve, const Convert_ParameterisationType Parameterisation=Convert_TgtThetaOver2);
		%feature("autodoc", "1");
		Standard_Boolean Add(const Handle_Geom2d_BoundedCurve &NewCurve, const Standard_Real Tolerance, const Standard_Boolean After=0);
		%feature("autodoc", "1");
		Handle_Geom2d_BSplineCurve BSplineCurve() const;

};
%feature("shadow") Geom2dConvert_CompCurveToBSplineCurve::~Geom2dConvert_CompCurveToBSplineCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom2dConvert_CompCurveToBSplineCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom2dConvert_ApproxCurve;
class Geom2dConvert_ApproxCurve {
	public:
		%feature("autodoc", "1");
		Geom2dConvert_ApproxCurve(const Handle_Geom2d_Curve &Curve, const Standard_Real Tol2d, const GeomAbs_Shape Order, const Standard_Integer MaxSegments, const Standard_Integer MaxDegree);
		%feature("autodoc", "1");
		Handle_Geom2d_BSplineCurve Curve() const;
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Boolean HasResult() const;
		%feature("autodoc", "1");
		Standard_Real MaxError() const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};

};
%feature("shadow") Geom2dConvert_ApproxCurve::~Geom2dConvert_ApproxCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom2dConvert_ApproxCurve {
	void _kill_pointed() {
		delete $self;
	}
};
