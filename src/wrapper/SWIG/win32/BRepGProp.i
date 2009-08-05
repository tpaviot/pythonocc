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
%module BRepGProp

%include BRepGProp_renames.i
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include BRepGProp_dependencies.i


%include BRepGProp_headers.i




%nodefaultctor BRepGProp_Sinert;
class BRepGProp_Sinert : public GProp_GProps {
	public:
		%feature("autodoc", "1");
		BRepGProp_Sinert();
		%feature("autodoc", "1");
		BRepGProp_Sinert(const BRepGProp_Face &S, const gp_Pnt &SLocation);
		%feature("autodoc", "1");
		BRepGProp_Sinert(BRepGProp_Face & S, BRepGProp_Domain & D, const gp_Pnt &SLocation);
		%feature("autodoc", "1");
		BRepGProp_Sinert(BRepGProp_Face & S, const gp_Pnt &SLocation, const Standard_Real Eps);
		%feature("autodoc", "1");
		BRepGProp_Sinert(BRepGProp_Face & S, BRepGProp_Domain & D, const gp_Pnt &SLocation, const Standard_Real Eps);
		%feature("autodoc", "1");
		void SetLocation(const gp_Pnt &SLocation);
		%feature("autodoc", "1");
		void Perform(const BRepGProp_Face &S);
		%feature("autodoc", "1");
		void Perform(BRepGProp_Face & S, BRepGProp_Domain & D);
		%feature("autodoc", "1");
		Standard_Real Perform(BRepGProp_Face & S, const Standard_Real Eps);
		%feature("autodoc", "1");
		Standard_Real Perform(BRepGProp_Face & S, BRepGProp_Domain & D, const Standard_Real Eps);
		%feature("autodoc", "1");
		Standard_Real GetEpsilon();

};
%extend BRepGProp_Sinert {
	~BRepGProp_Sinert() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepGProp_Sinert\n");}
	}
};


%nodefaultctor BRepGProp;
class BRepGProp {
	public:
		%feature("autodoc", "1");
		BRepGProp();
		%feature("autodoc", "1");
		void LinearProperties(const TopoDS_Shape &S, GProp_GProps & LProps);
		%feature("autodoc", "1");
		void SurfaceProperties(const TopoDS_Shape &S, GProp_GProps & SProps);
		%feature("autodoc", "1");
		Standard_Real SurfaceProperties(const TopoDS_Shape &S, GProp_GProps & SProps, const Standard_Real Eps);
		%feature("autodoc", "1");
		void VolumeProperties(const TopoDS_Shape &S, GProp_GProps & VProps, const Standard_Boolean OnlyClosed=0);
		%feature("autodoc", "1");
		Standard_Real VolumeProperties(const TopoDS_Shape &S, GProp_GProps & VProps, const Standard_Real Eps, const Standard_Boolean OnlyClosed=0);
		%feature("autodoc", "1");
		Standard_Real VolumePropertiesGK(const TopoDS_Shape &S, GProp_GProps & VProps, const Standard_Real Eps=1.0000000000000000208166817117216851329430937767e-3, const Standard_Boolean OnlyClosed=0, const Standard_Boolean IsUseSpan=0, const Standard_Boolean CGFlag=0, const Standard_Boolean IFlag=0);
		%feature("autodoc", "1");
		Standard_Real VolumePropertiesGK(const TopoDS_Shape &S, GProp_GProps & VProps, const gp_Pln &thePln, const Standard_Real Eps=1.0000000000000000208166817117216851329430937767e-3, const Standard_Boolean OnlyClosed=0, const Standard_Boolean IsUseSpan=0, const Standard_Boolean CGFlag=0, const Standard_Boolean IFlag=0);

};
%extend BRepGProp {
	~BRepGProp() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepGProp\n");}
	}
};


%nodefaultctor BRepGProp_Vinert;
class BRepGProp_Vinert : public GProp_GProps {
	public:
		%feature("autodoc", "1");
		BRepGProp_Vinert();
		%feature("autodoc", "1");
		BRepGProp_Vinert(const BRepGProp_Face &S, const gp_Pnt &VLocation);
		%feature("autodoc", "1");
		BRepGProp_Vinert(BRepGProp_Face & S, const gp_Pnt &VLocation, const Standard_Real Eps);
		%feature("autodoc", "1");
		BRepGProp_Vinert(const BRepGProp_Face &S, const gp_Pnt &O, const gp_Pnt &VLocation);
		%feature("autodoc", "1");
		BRepGProp_Vinert(BRepGProp_Face & S, const gp_Pnt &O, const gp_Pnt &VLocation, const Standard_Real Eps);
		%feature("autodoc", "1");
		BRepGProp_Vinert(const BRepGProp_Face &S, const gp_Pln &Pl, const gp_Pnt &VLocation);
		%feature("autodoc", "1");
		BRepGProp_Vinert(BRepGProp_Face & S, const gp_Pln &Pl, const gp_Pnt &VLocation, const Standard_Real Eps);
		%feature("autodoc", "1");
		BRepGProp_Vinert(BRepGProp_Face & S, BRepGProp_Domain & D, const gp_Pnt &VLocation);
		%feature("autodoc", "1");
		BRepGProp_Vinert(BRepGProp_Face & S, BRepGProp_Domain & D, const gp_Pnt &VLocation, const Standard_Real Eps);
		%feature("autodoc", "1");
		BRepGProp_Vinert(BRepGProp_Face & S, BRepGProp_Domain & D, const gp_Pnt &O, const gp_Pnt &VLocation);
		%feature("autodoc", "1");
		BRepGProp_Vinert(BRepGProp_Face & S, BRepGProp_Domain & D, const gp_Pnt &O, const gp_Pnt &VLocation, const Standard_Real Eps);
		%feature("autodoc", "1");
		BRepGProp_Vinert(BRepGProp_Face & S, BRepGProp_Domain & D, const gp_Pln &Pl, const gp_Pnt &VLocation);
		%feature("autodoc", "1");
		BRepGProp_Vinert(BRepGProp_Face & S, BRepGProp_Domain & D, const gp_Pln &Pl, const gp_Pnt &VLocation, const Standard_Real Eps);
		%feature("autodoc", "1");
		void SetLocation(const gp_Pnt &VLocation);
		%feature("autodoc", "1");
		void Perform(const BRepGProp_Face &S);
		%feature("autodoc", "1");
		Standard_Real Perform(BRepGProp_Face & S, const Standard_Real Eps);
		%feature("autodoc", "1");
		void Perform(const BRepGProp_Face &S, const gp_Pnt &O);
		%feature("autodoc", "1");
		Standard_Real Perform(BRepGProp_Face & S, const gp_Pnt &O, const Standard_Real Eps);
		%feature("autodoc", "1");
		void Perform(const BRepGProp_Face &S, const gp_Pln &Pl);
		%feature("autodoc", "1");
		Standard_Real Perform(BRepGProp_Face & S, const gp_Pln &Pl, const Standard_Real Eps);
		%feature("autodoc", "1");
		void Perform(BRepGProp_Face & S, BRepGProp_Domain & D);
		%feature("autodoc", "1");
		Standard_Real Perform(BRepGProp_Face & S, BRepGProp_Domain & D, const Standard_Real Eps);
		%feature("autodoc", "1");
		void Perform(BRepGProp_Face & S, BRepGProp_Domain & D, const gp_Pnt &O);
		%feature("autodoc", "1");
		Standard_Real Perform(BRepGProp_Face & S, BRepGProp_Domain & D, const gp_Pnt &O, const Standard_Real Eps);
		%feature("autodoc", "1");
		void Perform(BRepGProp_Face & S, BRepGProp_Domain & D, const gp_Pln &Pl);
		%feature("autodoc", "1");
		Standard_Real Perform(BRepGProp_Face & S, BRepGProp_Domain & D, const gp_Pln &Pl, const Standard_Real Eps);
		%feature("autodoc", "1");
		Standard_Real GetEpsilon();

};
%extend BRepGProp_Vinert {
	~BRepGProp_Vinert() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepGProp_Vinert\n");}
	}
};


%nodefaultctor BRepGProp_EdgeTool;
class BRepGProp_EdgeTool {
	public:
		%feature("autodoc", "1");
		BRepGProp_EdgeTool();
		%feature("autodoc", "1");
		Standard_Real FirstParameter(const BRepAdaptor_Curve &C);
		%feature("autodoc", "1");
		Standard_Real LastParameter(const BRepAdaptor_Curve &C);
		%feature("autodoc", "1");
		Standard_Integer IntegrationOrder(const BRepAdaptor_Curve &C);
		%feature("autodoc", "1");
		gp_Pnt Value(const BRepAdaptor_Curve &C, const Standard_Real U);
		%feature("autodoc", "1");
		void D1(const BRepAdaptor_Curve &C, const Standard_Real U, gp_Pnt & P, gp_Vec & V1);
		%feature("autodoc", "1");
		Standard_Integer NbIntervals(const BRepAdaptor_Curve &C, const GeomAbs_Shape S);
		%feature("autodoc", "1");
		void Intervals(const BRepAdaptor_Curve &C, TColStd_Array1OfReal & T, const GeomAbs_Shape S);

};
%extend BRepGProp_EdgeTool {
	~BRepGProp_EdgeTool() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepGProp_EdgeTool\n");}
	}
};


%nodefaultctor BRepGProp_UFunctionOfVinertGK;
class BRepGProp_UFunctionOfVinertGK : public math_Function {
	public:
		%feature("autodoc", "1");
		BRepGProp_UFunctionOfVinertGK(const BRepGProp_Face &theSurface, const gp_Pnt &theVertex, const Standard_Boolean IsByPoint, const Standard_Address theCoeffs);
		%feature("autodoc", "1");
		void SetValueType(const GProp_ValueType theType);
		%feature("autodoc", "1");
		void SetVParam(const Standard_Real theVParam);
		%feature("autodoc","Value(Standard_Real X)->Standard_Real");
		virtual		Standard_Boolean Value(const Standard_Real X, Standard_Real &OutValue);

};
%extend BRepGProp_UFunctionOfVinertGK {
	~BRepGProp_UFunctionOfVinertGK() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepGProp_UFunctionOfVinertGK\n");}
	}
};


%nodefaultctor BRepGProp_Cinert;
class BRepGProp_Cinert : public GProp_GProps {
	public:
		%feature("autodoc", "1");
		BRepGProp_Cinert();
		%feature("autodoc", "1");
		BRepGProp_Cinert(const BRepAdaptor_Curve &C, const gp_Pnt &CLocation);
		%feature("autodoc", "1");
		void SetLocation(const gp_Pnt &CLocation);
		%feature("autodoc", "1");
		void Perform(const BRepAdaptor_Curve &C);

};
%extend BRepGProp_Cinert {
	~BRepGProp_Cinert() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepGProp_Cinert\n");}
	}
};


%nodefaultctor BRepGProp_Domain;
class BRepGProp_Domain {
	public:
		%feature("autodoc", "1");
		BRepGProp_Domain();
		%feature("autodoc", "1");
		BRepGProp_Domain(const TopoDS_Face &F);
		%feature("autodoc", "1");
		void Init(const TopoDS_Face &F);
		%feature("autodoc", "1");
		Standard_Boolean More();
		%feature("autodoc", "1");
		void Init();
		%feature("autodoc", "1");
		const TopoDS_Edge & Value();
		%feature("autodoc", "1");
		void Next();

};
%extend BRepGProp_Domain {
	~BRepGProp_Domain() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepGProp_Domain\n");}
	}
};


%nodefaultctor BRepGProp_TFunctionOfVinertGK;
class BRepGProp_TFunctionOfVinertGK : public math_Function {
	public:
		%feature("autodoc", "1");
		BRepGProp_TFunctionOfVinertGK(const BRepGProp_Face &theSurface, const gp_Pnt &theVertex, const Standard_Boolean IsByPoint, const Standard_Address theCoeffs, const Standard_Real theUMin, const Standard_Real theTolerance);
		%feature("autodoc", "1");
		void Init();
		%feature("autodoc", "1");
		void SetNbKronrodPoints(const Standard_Integer theNbPoints);
		%feature("autodoc", "1");
		void SetValueType(const GProp_ValueType theType);
		%feature("autodoc", "1");
		void SetTolerance(const Standard_Real theTolerance);
		%feature("autodoc", "1");
		Standard_Real ErrorReached() const;
		%feature("autodoc", "1");
		Standard_Real AbsolutError() const;
		%feature("autodoc","Value(Standard_Real X)->Standard_Real");
		virtual		Standard_Boolean Value(const Standard_Real X, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Integer GetStateNumber();

};
%extend BRepGProp_TFunctionOfVinertGK {
	~BRepGProp_TFunctionOfVinertGK() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepGProp_TFunctionOfVinertGK\n");}
	}
};


%nodefaultctor BRepGProp_Face;
class BRepGProp_Face {
	public:
		%feature("autodoc", "1");
		BRepGProp_Face(const Standard_Boolean IsUseSpan=0);
		%feature("autodoc", "1");
		BRepGProp_Face(const TopoDS_Face &F, const Standard_Boolean IsUseSpan=0);
		%feature("autodoc", "1");
		void Load(const TopoDS_Face &F);
		%feature("autodoc", "1");
		Standard_Integer VIntegrationOrder() const;
		%feature("autodoc", "1");
		Standard_Boolean NaturalRestriction() const;
		%feature("autodoc", "1");
		gp_Pnt2d Value2d(const Standard_Real U) const;
		%feature("autodoc", "1");
		Standard_Integer SIntOrder(const Standard_Real Eps) const;
		%feature("autodoc", "1");
		Standard_Integer SVIntSubs() const;
		%feature("autodoc", "1");
		Standard_Integer SUIntSubs() const;
		%feature("autodoc", "1");
		void UKnots(TColStd_Array1OfReal & Knots) const;
		%feature("autodoc", "1");
		void VKnots(TColStd_Array1OfReal & Knots) const;
		%feature("autodoc", "1");
		Standard_Integer LIntOrder(const Standard_Real Eps) const;
		%feature("autodoc", "1");
		Standard_Integer LIntSubs() const;
		%feature("autodoc", "1");
		void LKnots(TColStd_Array1OfReal & Knots) const;
		%feature("autodoc", "1");
		Standard_Integer UIntegrationOrder() const;
		%feature("autodoc","Bounds()->[Standard_Real, Standard_Real, Standard_Real, Standard_Real]");
		void Bounds(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		void Normal(const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Vec & VNor) const;
		%feature("autodoc", "1");
		void Load(const TopoDS_Edge &E);
		%feature("autodoc", "1");
		Standard_Real FirstParameter() const;
		%feature("autodoc", "1");
		Standard_Real LastParameter() const;
		%feature("autodoc", "1");
		Standard_Integer IntegrationOrder() const;
		%feature("autodoc", "1");
		void D12d(const Standard_Real U, gp_Pnt2d & P, gp_Vec2d & V1) const;
		%feature("autodoc", "1");
		void Load(const Standard_Boolean IsFirstParam, const GeomAbs_IsoType theIsoType);
		%feature("autodoc", "1");
		void GetUKnots(const Standard_Real theUMin, const Standard_Real theUMax, Handle_TColStd_HArray1OfReal & theUKnots) const;
		%feature("autodoc", "1");
		void GetTKnots(const Standard_Real theTMin, const Standard_Real theTMax, Handle_TColStd_HArray1OfReal & theTKnots) const;

};
%extend BRepGProp_Face {
	~BRepGProp_Face() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepGProp_Face\n");}
	}
};
