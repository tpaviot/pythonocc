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
%module LocalAnalysis
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%pythoncode {
import GarbageCollector
};

%include LocalAnalysis_dependencies.i


%include LocalAnalysis_headers.i


enum LocalAnalysis_StatusErrorType {
	LocalAnalysis_NullFirstDerivative,
	LocalAnalysis_NullSecondDerivative,
	LocalAnalysis_TangentNotDefined,
	LocalAnalysis_NormalNotDefined,
	LocalAnalysis_CurvatureNotDefined,
	};



%nodefaultctor LocalAnalysis_SurfaceContinuity;
class LocalAnalysis_SurfaceContinuity {
	public:
		%feature("autodoc", "1");
		LocalAnalysis_SurfaceContinuity(const Handle_Geom_Surface &Surf1, const Standard_Real u1, const Standard_Real v1, const Handle_Geom_Surface &Surf2, const Standard_Real u2, const Standard_Real v2, const GeomAbs_Shape Order, const Standard_Real EpsNul=1.0000000000000000208166817117216851329430937767e-3, const Standard_Real EpsC0=1.0000000000000000208166817117216851329430937767e-3, const Standard_Real EpsC1=1.0000000000000000208166817117216851329430937767e-3, const Standard_Real EpsC2=1.0000000000000000208166817117216851329430937767e-3, const Standard_Real EpsG1=1.0000000000000000208166817117216851329430937767e-3, const Standard_Real Percent=1.0000000000000000208166817117216851329430937767e-2, const Standard_Real Maxlen=10000);
		%feature("autodoc", "1");
		LocalAnalysis_SurfaceContinuity(const Handle_Geom2d_Curve &curv1, const Handle_Geom2d_Curve &curv2, const Standard_Real U, const Handle_Geom_Surface &Surf1, const Handle_Geom_Surface &Surf2, const GeomAbs_Shape Order, const Standard_Real EpsNul=1.0000000000000000208166817117216851329430937767e-3, const Standard_Real EpsC0=1.0000000000000000208166817117216851329430937767e-3, const Standard_Real EpsC1=1.0000000000000000208166817117216851329430937767e-3, const Standard_Real EpsC2=1.0000000000000000208166817117216851329430937767e-3, const Standard_Real EpsG1=1.0000000000000000208166817117216851329430937767e-3, const Standard_Real Percent=1.0000000000000000208166817117216851329430937767e-2, const Standard_Real Maxlen=10000);
		%feature("autodoc", "1");
		LocalAnalysis_SurfaceContinuity(const Standard_Real EpsNul=1.0000000000000000208166817117216851329430937767e-3, const Standard_Real EpsC0=1.0000000000000000208166817117216851329430937767e-3, const Standard_Real EpsC1=1.0000000000000000208166817117216851329430937767e-3, const Standard_Real EpsC2=1.0000000000000000208166817117216851329430937767e-3, const Standard_Real EpsG1=1.0000000000000000208166817117216851329430937767e-3, const Standard_Real Percent=1.0000000000000000208166817117216851329430937767e-2, const Standard_Real Maxlen=10000);
		%feature("autodoc", "1");
		void ComputeAnalysis(GeomLProp_SLProps & Surf1, GeomLProp_SLProps & Surf2, const GeomAbs_Shape Order);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		GeomAbs_Shape ContinuityStatus() const;
		%feature("autodoc", "1");
		LocalAnalysis_StatusErrorType StatusError() const;
		%feature("autodoc", "1");
		Standard_Real C0Value() const;
		%feature("autodoc", "1");
		Standard_Real C1UAngle() const;
		%feature("autodoc", "1");
		Standard_Real C1URatio() const;
		%feature("autodoc", "1");
		Standard_Real C1VAngle() const;
		%feature("autodoc", "1");
		Standard_Real C1VRatio() const;
		%feature("autodoc", "1");
		Standard_Real C2UAngle() const;
		%feature("autodoc", "1");
		Standard_Real C2URatio() const;
		%feature("autodoc", "1");
		Standard_Real C2VAngle() const;
		%feature("autodoc", "1");
		Standard_Real C2VRatio() const;
		%feature("autodoc", "1");
		Standard_Real G1Angle() const;
		%feature("autodoc", "1");
		Standard_Real G2CurvatureGap() const;
		%feature("autodoc", "1");
		Standard_Boolean IsC0() const;
		%feature("autodoc", "1");
		Standard_Boolean IsC1() const;
		%feature("autodoc", "1");
		Standard_Boolean IsC2() const;
		%feature("autodoc", "1");
		Standard_Boolean IsG1() const;
		%feature("autodoc", "1");
		Standard_Boolean IsG2() const;

};
%feature("shadow") LocalAnalysis_SurfaceContinuity::~LocalAnalysis_SurfaceContinuity %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend LocalAnalysis_SurfaceContinuity {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor LocalAnalysis;
class LocalAnalysis {
	public:
		%feature("autodoc", "1");
		LocalAnalysis();
		%feature("autodoc", "1");
		static		void Dump(const LocalAnalysis_SurfaceContinuity &surfconti, Standard_OStream & o);
		%feature("autodoc", "1");
		static		void Dump(const LocalAnalysis_CurveContinuity &curvconti, Standard_OStream & o);

};
%feature("shadow") LocalAnalysis::~LocalAnalysis %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend LocalAnalysis {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor LocalAnalysis_CurveContinuity;
class LocalAnalysis_CurveContinuity {
	public:
		%feature("autodoc", "1");
		LocalAnalysis_CurveContinuity(const Handle_Geom_Curve &Curv1, const Standard_Real u1, const Handle_Geom_Curve &Curv2, const Standard_Real u2, const GeomAbs_Shape Order, const Standard_Real EpsNul=1.0000000000000000208166817117216851329430937767e-3, const Standard_Real EpsC0=1.0000000000000000208166817117216851329430937767e-3, const Standard_Real EpsC1=1.0000000000000000208166817117216851329430937767e-3, const Standard_Real EpsC2=1.0000000000000000208166817117216851329430937767e-3, const Standard_Real EpsG1=1.0000000000000000208166817117216851329430937767e-3, const Standard_Real EpsG2=1.0000000000000000208166817117216851329430937767e-3, const Standard_Real Percent=1.0000000000000000208166817117216851329430937767e-2, const Standard_Real Maxlen=10000);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		LocalAnalysis_StatusErrorType StatusError() const;
		%feature("autodoc", "1");
		GeomAbs_Shape ContinuityStatus() const;
		%feature("autodoc", "1");
		Standard_Real C0Value() const;
		%feature("autodoc", "1");
		Standard_Real C1Angle() const;
		%feature("autodoc", "1");
		Standard_Real C1Ratio() const;
		%feature("autodoc", "1");
		Standard_Real C2Angle() const;
		%feature("autodoc", "1");
		Standard_Real C2Ratio() const;
		%feature("autodoc", "1");
		Standard_Real G1Angle() const;
		%feature("autodoc", "1");
		Standard_Real G2Angle() const;
		%feature("autodoc", "1");
		Standard_Real G2CurvatureVariation() const;
		%feature("autodoc", "1");
		Standard_Boolean IsC0() const;
		%feature("autodoc", "1");
		Standard_Boolean IsC1() const;
		%feature("autodoc", "1");
		Standard_Boolean IsC2() const;
		%feature("autodoc", "1");
		Standard_Boolean IsG1() const;
		%feature("autodoc", "1");
		Standard_Boolean IsG2() const;

};
%feature("shadow") LocalAnalysis_CurveContinuity::~LocalAnalysis_CurveContinuity %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend LocalAnalysis_CurveContinuity {
	void _kill_pointed() {
		delete $self;
	}
};
