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

%module Geom2dGcc
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include Geom2dGcc_renames.i


%include Geom2dGcc_required_python_modules.i


%include Geom2dGcc_dependencies.i


%include Geom2dGcc_headers.i




%nodefaultctor Geom2dGcc_Circ2d2TanOn;
class Geom2dGcc_Circ2d2TanOn {
	public:
		%feature("autodoc", "1");
		Geom2dGcc_Circ2d2TanOn(const Geom2dGcc_QualifiedCurve &Qualified1, const Geom2dGcc_QualifiedCurve &Qualified2, const Geom2dAdaptor_Curve &OnCurve, const Standard_Real Tolerance, const Standard_Real Param1, const Standard_Real Param2, const Standard_Real ParamOn);
		%feature("autodoc", "1");
		Geom2dGcc_Circ2d2TanOn(const Geom2dGcc_QualifiedCurve &Qualified1, const Handle_Geom2d_Point &Point, const Geom2dAdaptor_Curve &OnCurve, const Standard_Real Tolerance, const Standard_Real Param1, const Standard_Real ParamOn);
		%feature("autodoc", "1");
		Geom2dGcc_Circ2d2TanOn(const Handle_Geom2d_Point &Point1, const Handle_Geom2d_Point &Point2, const Geom2dAdaptor_Curve &OnCurve, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		void Results(const GccAna_Circ2d2TanOn &Circ);
		%feature("autodoc", "1");
		void Results(const Geom2dGcc_MyCirc2d2TanOn &Circ);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbSolutions() const;
		%feature("autodoc", "1");
		gp_Circ2d ThisSolution(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void WhichQualifier(const Standard_Integer Index, GccEnt_Position & Qualif1, GccEnt_Position & Qualif2) const;
		%feature("autodoc","Tangency1(Standard_Integer Index) -> [Standard_Real, Standard_Real]");

		void Tangency1(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;
		%feature("autodoc","Tangency2(Standard_Integer Index) -> [Standard_Real, Standard_Real]");

		void Tangency2(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;
		%feature("autodoc","CenterOn3(Standard_Integer Index) -> Standard_Real");

		void CenterOn3(const Standard_Integer Index, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;
		%feature("autodoc", "1");
		Standard_Boolean IsTheSame1(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Boolean IsTheSame2(const Standard_Integer Index) const;

};
%feature("shadow") Geom2dGcc_Circ2d2TanOn::~Geom2dGcc_Circ2d2TanOn %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom2dGcc_Circ2d2TanOn {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom2dGcc_MyL2dTanObl;
class Geom2dGcc_MyL2dTanObl {
	public:
		%feature("autodoc", "1");
		Geom2dGcc_MyL2dTanObl(const Geom2dGcc_MyQCurve &Qualified1, const gp_Lin2d &TheLin, const Standard_Real Param1, const Standard_Real TolAng, const Standard_Real Angle=0);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		gp_Lin2d ThisSolution() const;
		%feature("autodoc", "1");
		void WhichQualifier(GccEnt_Position & Qualif1) const;
		%feature("autodoc","Tangency1() -> [Standard_Real, Standard_Real]");

		void Tangency1(Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;
		%feature("autodoc","Intersection2() -> [Standard_Real, Standard_Real]");

		void Intersection2(Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;
		%feature("autodoc", "1");
		Standard_Boolean IsParallel2() const;

};
%feature("shadow") Geom2dGcc_MyL2dTanObl::~Geom2dGcc_MyL2dTanObl %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom2dGcc_MyL2dTanObl {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom2dGcc_FuncTOblOfMyL2dTanObl;
class Geom2dGcc_FuncTOblOfMyL2dTanObl : public math_FunctionWithDerivative {
	public:
		%feature("autodoc", "1");
		Geom2dGcc_FuncTOblOfMyL2dTanObl(const Geom2dAdaptor_Curve &Curve, const gp_Dir2d &Dir);
		%feature("autodoc","Value(Standard_Real X) -> Standard_Real");

		virtual		Standard_Boolean Value(const Standard_Real X, Standard_Real &OutValue);
		%feature("autodoc","Derivative(Standard_Real X) -> Standard_Real");

		virtual		Standard_Boolean Derivative(const Standard_Real X, Standard_Real &OutValue);
		%feature("autodoc","Values(Standard_Real X) -> [Standard_Real, Standard_Real]");

		virtual		Standard_Boolean Values(const Standard_Real X, Standard_Real &OutValue, Standard_Real &OutValue);

};
%feature("shadow") Geom2dGcc_FuncTOblOfMyL2dTanObl::~Geom2dGcc_FuncTOblOfMyL2dTanObl %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom2dGcc_FuncTOblOfMyL2dTanObl {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom2dGcc_FuncTCuCuOnCuOfMyC2d2TanOn;
class Geom2dGcc_FuncTCuCuOnCuOfMyC2d2TanOn : public math_FunctionSetWithDerivatives {
	public:
		%feature("autodoc", "1");
		Geom2dGcc_FuncTCuCuOnCuOfMyC2d2TanOn(const Geom2dAdaptor_Curve &C1, const Geom2dAdaptor_Curve &C2, const gp_Circ2d &OnCi, const Standard_Real Rad);
		%feature("autodoc", "1");
		Geom2dGcc_FuncTCuCuOnCuOfMyC2d2TanOn(const gp_Circ2d &C1, const Geom2dAdaptor_Curve &C2, const gp_Circ2d &OnCi, const Standard_Real Rad);
		%feature("autodoc", "1");
		Geom2dGcc_FuncTCuCuOnCuOfMyC2d2TanOn(const gp_Lin2d &L1, const Geom2dAdaptor_Curve &C2, const gp_Circ2d &OnCi, const Standard_Real Rad);
		%feature("autodoc", "1");
		Geom2dGcc_FuncTCuCuOnCuOfMyC2d2TanOn(const Geom2dAdaptor_Curve &C1, const gp_Pnt2d &P2, const gp_Circ2d &OnCi, const Standard_Real Rad);
		%feature("autodoc", "1");
		Geom2dGcc_FuncTCuCuOnCuOfMyC2d2TanOn(const Geom2dAdaptor_Curve &C1, const Geom2dAdaptor_Curve &C2, const gp_Lin2d &OnLi, const Standard_Real Rad);
		%feature("autodoc", "1");
		Geom2dGcc_FuncTCuCuOnCuOfMyC2d2TanOn(const gp_Circ2d &C1, const Geom2dAdaptor_Curve &C2, const gp_Lin2d &OnLi, const Standard_Real Rad);
		%feature("autodoc", "1");
		Geom2dGcc_FuncTCuCuOnCuOfMyC2d2TanOn(const gp_Lin2d &L1, const Geom2dAdaptor_Curve &C2, const gp_Lin2d &OnLi, const Standard_Real Rad);
		%feature("autodoc", "1");
		Geom2dGcc_FuncTCuCuOnCuOfMyC2d2TanOn(const Geom2dAdaptor_Curve &C1, const gp_Pnt2d &P2, const gp_Lin2d &OnLi, const Standard_Real Rad);
		%feature("autodoc", "1");
		Geom2dGcc_FuncTCuCuOnCuOfMyC2d2TanOn(const Geom2dAdaptor_Curve &C1, const Geom2dAdaptor_Curve &C2, const Geom2dAdaptor_Curve &OnCu, const Standard_Real Rad);
		%feature("autodoc", "1");
		Geom2dGcc_FuncTCuCuOnCuOfMyC2d2TanOn(const gp_Circ2d &C1, const Geom2dAdaptor_Curve &C2, const Geom2dAdaptor_Curve &OnCu, const Standard_Real Rad);
		%feature("autodoc", "1");
		Geom2dGcc_FuncTCuCuOnCuOfMyC2d2TanOn(const gp_Lin2d &L1, const Geom2dAdaptor_Curve &C2, const Geom2dAdaptor_Curve &OnCu, const Standard_Real Rad);
		%feature("autodoc", "1");
		Geom2dGcc_FuncTCuCuOnCuOfMyC2d2TanOn(const Geom2dAdaptor_Curve &C1, const gp_Pnt2d &P1, const Geom2dAdaptor_Curve &OnCu, const Standard_Real Rad);
		%feature("autodoc", "1");
		void InitDerivative(const math_Vector &X, gp_Pnt2d & Point1, gp_Pnt2d & Point2, gp_Pnt2d & Point3, gp_Vec2d & Tan1, gp_Vec2d & Tan2, gp_Vec2d & Tan3, gp_Vec2d & D21, gp_Vec2d & D22, gp_Vec2d & D23);
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

};
%feature("shadow") Geom2dGcc_FuncTCuCuOnCuOfMyC2d2TanOn::~Geom2dGcc_FuncTCuCuOnCuOfMyC2d2TanOn %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom2dGcc_FuncTCuCuOnCuOfMyC2d2TanOn {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom2dGcc_QualifiedCurve;
class Geom2dGcc_QualifiedCurve {
	public:
		%feature("autodoc", "1");
		Geom2dGcc_QualifiedCurve(const Geom2dAdaptor_Curve &Curve, const GccEnt_Position Qualifier);
		%feature("autodoc", "1");
		Geom2dAdaptor_Curve Qualified() const;
		%feature("autodoc", "1");
		GccEnt_Position Qualifier() const;
		%feature("autodoc", "1");
		Standard_Boolean IsUnqualified() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEnclosing() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEnclosed() const;
		%feature("autodoc", "1");
		Standard_Boolean IsOutside() const;

};
%feature("shadow") Geom2dGcc_QualifiedCurve::~Geom2dGcc_QualifiedCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom2dGcc_QualifiedCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom2dGcc_MyCirc2dTanCen;
class Geom2dGcc_MyCirc2dTanCen {
	public:
		%feature("autodoc", "1");
		Geom2dGcc_MyCirc2dTanCen(const Geom2dGcc_MyQCurve &Qualified1, const gp_Pnt2d &Pcenter, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbSolutions() const;
		%feature("autodoc", "1");
		gp_Circ2d ThisSolution(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void WhichQualifier(const Standard_Integer Index, GccEnt_Position & Qualif1) const;
		%feature("autodoc","Tangency1(Standard_Integer Index) -> [Standard_Real, Standard_Real]");

		void Tangency1(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;

};
%feature("shadow") Geom2dGcc_MyCirc2dTanCen::~Geom2dGcc_MyCirc2dTanCen %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom2dGcc_MyCirc2dTanCen {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom2dGcc_FuncTCirCuOfMyL2d2Tan;
class Geom2dGcc_FuncTCirCuOfMyL2d2Tan : public math_FunctionWithDerivative {
	public:
		%feature("autodoc", "1");
		Geom2dGcc_FuncTCirCuOfMyL2d2Tan(const gp_Circ2d &Circ, const Geom2dAdaptor_Curve &Curv);
		%feature("autodoc","Value(Standard_Real X) -> Standard_Real");

		virtual		Standard_Boolean Value(const Standard_Real X, Standard_Real &OutValue);
		%feature("autodoc","Derivative(Standard_Real X) -> Standard_Real");

		virtual		Standard_Boolean Derivative(const Standard_Real X, Standard_Real &OutValue);
		%feature("autodoc","Values(Standard_Real X) -> [Standard_Real, Standard_Real]");

		virtual		Standard_Boolean Values(const Standard_Real X, Standard_Real &OutValue, Standard_Real &OutValue);

};
%feature("shadow") Geom2dGcc_FuncTCirCuOfMyL2d2Tan::~Geom2dGcc_FuncTCirCuOfMyL2d2Tan %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom2dGcc_FuncTCirCuOfMyL2d2Tan {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom2dGcc_MyQCurve;
class Geom2dGcc_MyQCurve {
	public:
		%feature("autodoc", "1");
		Geom2dGcc_MyQCurve(const Geom2dAdaptor_Curve &Curve, const GccEnt_Position Qualifier);
		%feature("autodoc", "1");
		Geom2dAdaptor_Curve Qualified() const;
		%feature("autodoc", "1");
		GccEnt_Position Qualifier() const;
		%feature("autodoc", "1");
		Standard_Boolean IsUnqualified() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEnclosing() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEnclosed() const;
		%feature("autodoc", "1");
		Standard_Boolean IsOutside() const;

};
%feature("shadow") Geom2dGcc_MyQCurve::~Geom2dGcc_MyQCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom2dGcc_MyQCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom2dGcc_Circ2d3Tan;
class Geom2dGcc_Circ2d3Tan {
	public:
		%feature("autodoc", "1");
		Geom2dGcc_Circ2d3Tan(const Geom2dGcc_QualifiedCurve &Qualified1, const Geom2dGcc_QualifiedCurve &Qualified2, const Geom2dGcc_QualifiedCurve &Qualified3, const Standard_Real Tolerance, const Standard_Real Param1, const Standard_Real Param2, const Standard_Real Param3);
		%feature("autodoc", "1");
		Geom2dGcc_Circ2d3Tan(const Geom2dGcc_QualifiedCurve &Qualified1, const Geom2dGcc_QualifiedCurve &Qualified2, const Handle_Geom2d_Point &Point, const Standard_Real Tolerance, const Standard_Real Param1, const Standard_Real Param2);
		%feature("autodoc", "1");
		Geom2dGcc_Circ2d3Tan(const Geom2dGcc_QualifiedCurve &Qualified1, const Handle_Geom2d_Point &Point1, const Handle_Geom2d_Point &Point2, const Standard_Real Tolerance, const Standard_Real Param1);
		%feature("autodoc", "1");
		Geom2dGcc_Circ2d3Tan(const Handle_Geom2d_Point &Point1, const Handle_Geom2d_Point &Point2, const Handle_Geom2d_Point &Point3, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		void Results(const GccAna_Circ2d3Tan &Circ, const Standard_Integer Rank1, const Standard_Integer Rank2, const Standard_Integer Rank3);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbSolutions() const;
		%feature("autodoc", "1");
		gp_Circ2d ThisSolution(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void WhichQualifier(const Standard_Integer Index, GccEnt_Position & Qualif1, GccEnt_Position & Qualif2, GccEnt_Position & Qualif3) const;
		%feature("autodoc","Tangency1(Standard_Integer Index) -> [Standard_Real, Standard_Real]");

		void Tangency1(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;
		%feature("autodoc","Tangency2(Standard_Integer Index) -> [Standard_Real, Standard_Real]");

		void Tangency2(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;
		%feature("autodoc","Tangency3(Standard_Integer Index) -> [Standard_Real, Standard_Real]");

		void Tangency3(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;
		%feature("autodoc", "1");
		Standard_Boolean IsTheSame1(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Boolean IsTheSame2(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Boolean IsTheSame3(const Standard_Integer Index) const;

};
%feature("shadow") Geom2dGcc_Circ2d3Tan::~Geom2dGcc_Circ2d3Tan %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom2dGcc_Circ2d3Tan {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom2dGcc_FuncTCuPtOfMyL2d2Tan;
class Geom2dGcc_FuncTCuPtOfMyL2d2Tan : public math_FunctionWithDerivative {
	public:
		%feature("autodoc", "1");
		Geom2dGcc_FuncTCuPtOfMyL2d2Tan(const Geom2dAdaptor_Curve &C, const gp_Pnt2d &Point);
		%feature("autodoc","Value(Standard_Real X) -> Standard_Real");

		virtual		Standard_Boolean Value(const Standard_Real X, Standard_Real &OutValue);
		%feature("autodoc","Derivative(Standard_Real X) -> Standard_Real");

		virtual		Standard_Boolean Derivative(const Standard_Real X, Standard_Real &OutValue);
		%feature("autodoc","Values(Standard_Real X) -> [Standard_Real, Standard_Real]");

		virtual		Standard_Boolean Values(const Standard_Real X, Standard_Real &OutValue, Standard_Real &OutValue);

};
%feature("shadow") Geom2dGcc_FuncTCuPtOfMyL2d2Tan::~Geom2dGcc_FuncTCuPtOfMyL2d2Tan %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom2dGcc_FuncTCuPtOfMyL2d2Tan {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom2dGcc_MyCurveTool;
class Geom2dGcc_MyCurveTool {
	public:
		%feature("autodoc", "1");
		Geom2dGcc_MyCurveTool();
		%feature("autodoc", "1");
		static		GeomAbs_CurveType TheType(const Adaptor3d_OffsetCurve &C);
		%feature("autodoc", "1");
		static		gp_Lin2d Line(const Adaptor3d_OffsetCurve &C);
		%feature("autodoc", "1");
		static		gp_Circ2d Circle(const Adaptor3d_OffsetCurve &C);
		%feature("autodoc", "1");
		static		gp_Elips2d Ellipse(const Adaptor3d_OffsetCurve &C);
		%feature("autodoc", "1");
		static		gp_Parab2d Parabola(const Adaptor3d_OffsetCurve &C);
		%feature("autodoc", "1");
		static		gp_Hypr2d Hyperbola(const Adaptor3d_OffsetCurve &C);
		%feature("autodoc", "1");
		static		Standard_Real FirstParameter(const Adaptor3d_OffsetCurve &C);
		%feature("autodoc", "1");
		static		Standard_Real LastParameter(const Adaptor3d_OffsetCurve &C);
		%feature("autodoc", "1");
		static		Standard_Real EpsX(const Adaptor3d_OffsetCurve &C, const Standard_Real Tol);
		%feature("autodoc", "1");
		static		Standard_Integer NbSamples(const Adaptor3d_OffsetCurve &C);
		%feature("autodoc", "1");
		static		gp_Pnt2d Value(const Adaptor3d_OffsetCurve &C, const Standard_Real X);
		%feature("autodoc", "1");
		static		void D1(const Adaptor3d_OffsetCurve &C, const Standard_Real U, gp_Pnt2d & P, gp_Vec2d & T);
		%feature("autodoc", "1");
		static		void D2(const Adaptor3d_OffsetCurve &C, const Standard_Real U, gp_Pnt2d & P, gp_Vec2d & T, gp_Vec2d & N);
		%feature("autodoc", "1");
		static		Standard_Boolean IsComposite(const Adaptor3d_OffsetCurve &C);
		%feature("autodoc", "1");
		static		Standard_Integer GetIntervals(const Adaptor3d_OffsetCurve &C);
		%feature("autodoc","GetInterval(const C, Standard_Integer Index) -> [Standard_Real, Standard_Real]");

		static		void GetInterval(const Adaptor3d_OffsetCurve &C, const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		static		void SetCurrentInterval(Adaptor3d_OffsetCurve & C, const Standard_Integer Index);

};
%feature("shadow") Geom2dGcc_MyCurveTool::~Geom2dGcc_MyCurveTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom2dGcc_MyCurveTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom2dGcc_Lin2d2Tan;
class Geom2dGcc_Lin2d2Tan {
	public:
		%feature("autodoc", "1");
		Geom2dGcc_Lin2d2Tan(const Geom2dGcc_QualifiedCurve &Qualified1, const Geom2dGcc_QualifiedCurve &Qualified2, const Standard_Real Tolang);
		%feature("autodoc", "1");
		Geom2dGcc_Lin2d2Tan(const Geom2dGcc_QualifiedCurve &Qualified1, const gp_Pnt2d &ThePoint, const Standard_Real Tolang);
		%feature("autodoc", "1");
		Geom2dGcc_Lin2d2Tan(const Geom2dGcc_QualifiedCurve &Qualified1, const Geom2dGcc_QualifiedCurve &Qualified2, const Standard_Real Tolang, const Standard_Real Param1, const Standard_Real Param2);
		%feature("autodoc", "1");
		Geom2dGcc_Lin2d2Tan(const Geom2dGcc_QualifiedCurve &Qualified1, const gp_Pnt2d &ThePoint, const Standard_Real Tolang, const Standard_Real Param1);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbSolutions() const;
		%feature("autodoc", "1");
		gp_Lin2d ThisSolution(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void WhichQualifier(const Standard_Integer Index, GccEnt_Position & Qualif1, GccEnt_Position & Qualif2) const;
		%feature("autodoc","Tangency1(Standard_Integer Index) -> [Standard_Real, Standard_Real]");

		void Tangency1(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;
		%feature("autodoc","Tangency2(Standard_Integer Index) -> [Standard_Real, Standard_Real]");

		void Tangency2(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;

};
%feature("shadow") Geom2dGcc_Lin2d2Tan::~Geom2dGcc_Lin2d2Tan %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom2dGcc_Lin2d2Tan {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom2dGcc_MyCirc2d2TanRad;
class Geom2dGcc_MyCirc2d2TanRad {
	public:
		%feature("autodoc", "1");
		Geom2dGcc_MyCirc2d2TanRad(const GccEnt_QualifiedCirc &Qualified1, const Geom2dGcc_MyQCurve &Qualified2, const Standard_Real Radius, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Geom2dGcc_MyCirc2d2TanRad(const GccEnt_QualifiedLin &Qualified1, const Geom2dGcc_MyQCurve &Qualified2, const Standard_Real Radius, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Geom2dGcc_MyCirc2d2TanRad(const Geom2dGcc_MyQCurve &Qualified1, const Geom2dGcc_MyQCurve &Qualified2, const Standard_Real Radius, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Geom2dGcc_MyCirc2d2TanRad(const Geom2dGcc_MyQCurve &Qualified1, const gp_Pnt2d &Point2, const Standard_Real Radius, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbSolutions() const;
		%feature("autodoc", "1");
		gp_Circ2d ThisSolution(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void WhichQualifier(const Standard_Integer Index, GccEnt_Position & Qualif1, GccEnt_Position & Qualif2) const;
		%feature("autodoc","Tangency1(Standard_Integer Index) -> [Standard_Real, Standard_Real]");

		void Tangency1(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;
		%feature("autodoc","Tangency2(Standard_Integer Index) -> [Standard_Real, Standard_Real]");

		void Tangency2(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;
		%feature("autodoc", "1");
		Standard_Boolean IsTheSame1(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Boolean IsTheSame2(const Standard_Integer Index) const;

};
%feature("shadow") Geom2dGcc_MyCirc2d2TanRad::~Geom2dGcc_MyCirc2d2TanRad %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom2dGcc_MyCirc2d2TanRad {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom2dGcc_MyCirc2d2TanOn;
class Geom2dGcc_MyCirc2d2TanOn {
	public:
		%feature("autodoc", "1");
		Geom2dGcc_MyCirc2d2TanOn(const GccEnt_QualifiedCirc &Qualified1, const GccEnt_QualifiedCirc &Qualified2, const Geom2dAdaptor_Curve &OnCurv, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Geom2dGcc_MyCirc2d2TanOn(const GccEnt_QualifiedCirc &Qualified1, const GccEnt_QualifiedLin &Qualified2, const Geom2dAdaptor_Curve &OnCurv, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Geom2dGcc_MyCirc2d2TanOn(const GccEnt_QualifiedCirc &Qualified1, const gp_Pnt2d &Point2, const Geom2dAdaptor_Curve &OnCurv, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Geom2dGcc_MyCirc2d2TanOn(const GccEnt_QualifiedLin &Qualified1, const GccEnt_QualifiedLin &Qualified2, const Geom2dAdaptor_Curve &OnCurv, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Geom2dGcc_MyCirc2d2TanOn(const GccEnt_QualifiedLin &Qualified1, const gp_Pnt2d &Qualified2, const Geom2dAdaptor_Curve &OnCurv, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Geom2dGcc_MyCirc2d2TanOn(const gp_Pnt2d &Point1, const gp_Pnt2d &Point2, const Geom2dAdaptor_Curve &OnCurv, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbSolutions() const;
		%feature("autodoc", "1");
		gp_Circ2d ThisSolution(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void WhichQualifier(const Standard_Integer Index, GccEnt_Position & Qualif1, GccEnt_Position & Qualif2) const;
		%feature("autodoc","Tangency1(Standard_Integer Index) -> [Standard_Real, Standard_Real]");

		void Tangency1(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;
		%feature("autodoc","Tangency2(Standard_Integer Index) -> [Standard_Real, Standard_Real]");

		void Tangency2(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;
		%feature("autodoc","CenterOn3(Standard_Integer Index) -> Standard_Real");

		void CenterOn3(const Standard_Integer Index, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;
		%feature("autodoc", "1");
		Standard_Boolean IsTheSame1(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Boolean IsTheSame2(const Standard_Integer Index) const;

};
%feature("shadow") Geom2dGcc_MyCirc2d2TanOn::~Geom2dGcc_MyCirc2d2TanOn %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom2dGcc_MyCirc2d2TanOn {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom2dGcc_Circ2dTanCen;
class Geom2dGcc_Circ2dTanCen {
	public:
		%feature("autodoc", "1");
		Geom2dGcc_Circ2dTanCen(const Geom2dGcc_QualifiedCurve &Qualified1, const Handle_Geom2d_Point &Pcenter, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbSolutions() const;
		%feature("autodoc", "1");
		gp_Circ2d ThisSolution(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void WhichQualifier(const Standard_Integer Index, GccEnt_Position & Qualif1) const;
		%feature("autodoc","Tangency1(Standard_Integer Index) -> [Standard_Real, Standard_Real]");

		void Tangency1(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;
		%feature("autodoc", "1");
		Standard_Boolean IsTheSame1(const Standard_Integer Index) const;

};
%feature("shadow") Geom2dGcc_Circ2dTanCen::~Geom2dGcc_Circ2dTanCen %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom2dGcc_Circ2dTanCen {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom2dGcc_FuncTCuCuOfMyL2d2Tan;
class Geom2dGcc_FuncTCuCuOfMyL2d2Tan : public math_FunctionSetWithDerivatives {
	public:
		%feature("autodoc", "1");
		Geom2dGcc_FuncTCuCuOfMyL2d2Tan(const Geom2dAdaptor_Curve &Curv1, const Geom2dAdaptor_Curve &Curv2);
		%feature("autodoc", "1");
		Geom2dGcc_FuncTCuCuOfMyL2d2Tan(const gp_Circ2d &Circ1, const Geom2dAdaptor_Curve &Curv2);
		%feature("autodoc", "1");
		void InitDerivative(const math_Vector &X, gp_Pnt2d & Point1, gp_Pnt2d & Point2, gp_Vec2d & Tan1, gp_Vec2d & Tan2, gp_Vec2d & D21, gp_Vec2d & D22);
		%feature("autodoc", "1");
		virtual		Standard_Integer NbVariables() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbEquations() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Value(const math_Vector &X, math_Vector & F);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Derivatives(const math_Vector &X, math_Matrix & Deriv);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Values(const math_Vector &X, math_Vector & F, math_Matrix & Deriv);

};
%feature("shadow") Geom2dGcc_FuncTCuCuOfMyL2d2Tan::~Geom2dGcc_FuncTCuCuOfMyL2d2Tan %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom2dGcc_FuncTCuCuOfMyL2d2Tan {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom2dGcc_MyC2d3Tan;
class Geom2dGcc_MyC2d3Tan {
	public:
		%feature("autodoc", "1");
		Geom2dGcc_MyC2d3Tan(const GccEnt_QualifiedCirc &Qualified1, const GccEnt_QualifiedCirc &Qualified2, const Geom2dGcc_MyQCurve &Qualified3, const Standard_Real Param1, const Standard_Real Param2, const Standard_Real Param3, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Geom2dGcc_MyC2d3Tan(const GccEnt_QualifiedCirc &Qualified1, const Geom2dGcc_MyQCurve &Qualified2, const Geom2dGcc_MyQCurve &Qualified3, const Standard_Real Param1, const Standard_Real Param2, const Standard_Real Param3, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Geom2dGcc_MyC2d3Tan(const GccEnt_QualifiedCirc &Qualified1, const GccEnt_QualifiedLin &Qualified2, const Geom2dGcc_MyQCurve &Qualified3, const Standard_Real Param1, const Standard_Real Param2, const Standard_Real Param3, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Geom2dGcc_MyC2d3Tan(const GccEnt_QualifiedCirc &Qualified1, const Geom2dGcc_MyQCurve &Qualified2, const gp_Pnt2d &Point3, const Standard_Real Param1, const Standard_Real Param2, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Geom2dGcc_MyC2d3Tan(const GccEnt_QualifiedLin &Qualified1, const GccEnt_QualifiedLin &Qualified2, const Geom2dGcc_MyQCurve &Qualified3, const Standard_Real Param1, const Standard_Real Param2, const Standard_Real Param3, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Geom2dGcc_MyC2d3Tan(const GccEnt_QualifiedLin &Qualified1, const Geom2dGcc_MyQCurve &Qualified2, const Geom2dGcc_MyQCurve &Qualified3, const Standard_Real Param1, const Standard_Real Param2, const Standard_Real Param3, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Geom2dGcc_MyC2d3Tan(const GccEnt_QualifiedLin &Qualified1, const Geom2dGcc_MyQCurve &Qualified2, const gp_Pnt2d &Point3, const Standard_Real Param1, const Standard_Real Param2, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Geom2dGcc_MyC2d3Tan(const Geom2dGcc_MyQCurve &Qualified1, const gp_Pnt2d &Point1, const gp_Pnt2d &Point2, const Standard_Real Param1, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Geom2dGcc_MyC2d3Tan(const Geom2dGcc_MyQCurve &Qualified1, const Geom2dGcc_MyQCurve &Qualified2, const gp_Pnt2d &Point2, const Standard_Real Param1, const Standard_Real Param2, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Geom2dGcc_MyC2d3Tan(const Geom2dGcc_MyQCurve &Qualified1, const Geom2dGcc_MyQCurve &Qualified2, const Geom2dGcc_MyQCurve &Qualified3, const Standard_Real Param1, const Standard_Real Param2, const Standard_Real Param3, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		gp_Circ2d ThisSolution() const;
		%feature("autodoc", "1");
		void WhichQualifier(GccEnt_Position & Qualif1, GccEnt_Position & Qualif2, GccEnt_Position & Qualif3) const;
		%feature("autodoc","Tangency1() -> [Standard_Real, Standard_Real]");

		void Tangency1(Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;
		%feature("autodoc","Tangency2() -> [Standard_Real, Standard_Real]");

		void Tangency2(Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;
		%feature("autodoc","Tangency3() -> [Standard_Real, Standard_Real]");

		void Tangency3(Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;
		%feature("autodoc", "1");
		Standard_Boolean IsTheSame1() const;
		%feature("autodoc", "1");
		Standard_Boolean IsTheSame2() const;
		%feature("autodoc", "1");
		Standard_Boolean IsTheSame3() const;

};
%feature("shadow") Geom2dGcc_MyC2d3Tan::~Geom2dGcc_MyC2d3Tan %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom2dGcc_MyC2d3Tan {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom2dGcc_MyC2d2TanOn;
class Geom2dGcc_MyC2d2TanOn {
	public:
		%feature("autodoc", "1");
		Geom2dGcc_MyC2d2TanOn(const GccEnt_QualifiedCirc &Qualified1, const Geom2dGcc_MyQCurve &Qualified2, const gp_Lin2d &OnLine, const Standard_Real Param1, const Standard_Real Param2, const Standard_Real Param3, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Geom2dGcc_MyC2d2TanOn(const GccEnt_QualifiedLin &Qualified1, const Geom2dGcc_MyQCurve &Qualified2, const gp_Lin2d &OnLine, const Standard_Real Param1, const Standard_Real Param2, const Standard_Real Param3, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Geom2dGcc_MyC2d2TanOn(const Geom2dGcc_MyQCurve &Qualified1, const Geom2dGcc_MyQCurve &Qualified2, const gp_Lin2d &OnLine, const Standard_Real Param1, const Standard_Real Param2, const Standard_Real Param3, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Geom2dGcc_MyC2d2TanOn(const Geom2dGcc_MyQCurve &Qualified1, const gp_Pnt2d &Point2, const gp_Lin2d &OnLine, const Standard_Real Param1, const Standard_Real Param2, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Geom2dGcc_MyC2d2TanOn(const GccEnt_QualifiedCirc &Qualified1, const Geom2dGcc_MyQCurve &Qualified2, const gp_Circ2d &OnCirc, const Standard_Real Param1, const Standard_Real Param2, const Standard_Real Param3, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Geom2dGcc_MyC2d2TanOn(const GccEnt_QualifiedLin &Qualified1, const Geom2dGcc_MyQCurve &Qualified2, const gp_Circ2d &OnCirc, const Standard_Real Param1, const Standard_Real Param2, const Standard_Real Param3, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Geom2dGcc_MyC2d2TanOn(const Geom2dGcc_MyQCurve &Qualified1, const Geom2dGcc_MyQCurve &Qualified2, const gp_Circ2d &OnCirc, const Standard_Real Param1, const Standard_Real Param2, const Standard_Real Param3, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Geom2dGcc_MyC2d2TanOn(const Geom2dGcc_MyQCurve &Qualified1, const gp_Pnt2d &Point2, const gp_Circ2d &OnCirc, const Standard_Real Param1, const Standard_Real Param2, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Geom2dGcc_MyC2d2TanOn(const GccEnt_QualifiedCirc &Qualified1, const Geom2dGcc_MyQCurve &Qualified2, const Geom2dAdaptor_Curve &OnCurv, const Standard_Real Param1, const Standard_Real Param2, const Standard_Real ParamOn, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Geom2dGcc_MyC2d2TanOn(const GccEnt_QualifiedLin &Qualified1, const Geom2dGcc_MyQCurve &Qualified2, const Geom2dAdaptor_Curve &OnCurve, const Standard_Real Param1, const Standard_Real Param2, const Standard_Real ParamOn, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Geom2dGcc_MyC2d2TanOn(const Geom2dGcc_MyQCurve &Qualified1, const gp_Pnt2d &Point2, const Geom2dAdaptor_Curve &OnCurve, const Standard_Real Param1, const Standard_Real ParamOn, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Geom2dGcc_MyC2d2TanOn(const Geom2dGcc_MyQCurve &Qualified1, const Geom2dGcc_MyQCurve &Qualified2, const Geom2dAdaptor_Curve &OnCurve, const Standard_Real Param1, const Standard_Real Param2, const Standard_Real ParamOn, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		gp_Circ2d ThisSolution() const;
		%feature("autodoc", "1");
		void WhichQualifier(GccEnt_Position & Qualif1, GccEnt_Position & Qualif2) const;
		%feature("autodoc","Tangency1() -> [Standard_Real, Standard_Real]");

		void Tangency1(Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;
		%feature("autodoc","Tangency2() -> [Standard_Real, Standard_Real]");

		void Tangency2(Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;
		%feature("autodoc","CenterOn3() -> Standard_Real");

		void CenterOn3(Standard_Real &OutValue, gp_Pnt2d & PntSol) const;
		%feature("autodoc", "1");
		Standard_Boolean IsTheSame1() const;
		%feature("autodoc", "1");
		Standard_Boolean IsTheSame2() const;

};
%feature("shadow") Geom2dGcc_MyC2d2TanOn::~Geom2dGcc_MyC2d2TanOn %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom2dGcc_MyC2d2TanOn {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom2dGcc_MyL2d2Tan;
class Geom2dGcc_MyL2d2Tan {
	public:
		%feature("autodoc", "1");
		Geom2dGcc_MyL2d2Tan(const Geom2dGcc_MyQCurve &Qualified1, const gp_Pnt2d &ThePoint, const Standard_Real Param1, const Standard_Real Tolang);
		%feature("autodoc", "1");
		Geom2dGcc_MyL2d2Tan(const GccEnt_QualifiedCirc &Qualified1, const Geom2dGcc_MyQCurve &Qualified2, const Standard_Real Param2, const Standard_Real Tolang);
		%feature("autodoc", "1");
		Geom2dGcc_MyL2d2Tan(const Geom2dGcc_MyQCurve &Qualified1, const Geom2dGcc_MyQCurve &Qualified2, const Standard_Real Param1, const Standard_Real Param2, const Standard_Real Tolang);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		gp_Lin2d ThisSolution() const;
		%feature("autodoc", "1");
		void WhichQualifier(GccEnt_Position & Qualif1, GccEnt_Position & Qualif2) const;
		%feature("autodoc","Tangency1() -> [Standard_Real, Standard_Real]");

		void Tangency1(Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;
		%feature("autodoc","Tangency2() -> [Standard_Real, Standard_Real]");

		void Tangency2(Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;

};
%feature("shadow") Geom2dGcc_MyL2d2Tan::~Geom2dGcc_MyL2d2Tan %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom2dGcc_MyL2d2Tan {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom2dGcc_MyCirc2dTanOnRad;
class Geom2dGcc_MyCirc2dTanOnRad {
	public:
		%feature("autodoc", "1");
		Geom2dGcc_MyCirc2dTanOnRad(const Geom2dGcc_MyQCurve &Qualified1, const gp_Lin2d &OnLine, const Standard_Real Radius, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Geom2dGcc_MyCirc2dTanOnRad(const Geom2dGcc_MyQCurve &Qualified1, const gp_Circ2d &OnCirc, const Standard_Real Radius, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Geom2dGcc_MyCirc2dTanOnRad(const GccEnt_QualifiedCirc &Qualified1, const Geom2dAdaptor_Curve &OnCurv, const Standard_Real Radius, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Geom2dGcc_MyCirc2dTanOnRad(const GccEnt_QualifiedLin &Qualified1, const Geom2dAdaptor_Curve &OnCurv, const Standard_Real Radius, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Geom2dGcc_MyCirc2dTanOnRad(const Geom2dGcc_MyQCurve &Qualified1, const Geom2dAdaptor_Curve &OnCurv, const Standard_Real Radius, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Geom2dGcc_MyCirc2dTanOnRad(const gp_Pnt2d &Point1, const Geom2dAdaptor_Curve &OnCurv, const Standard_Real Radius, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbSolutions() const;
		%feature("autodoc", "1");
		gp_Circ2d ThisSolution(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void WhichQualifier(const Standard_Integer Index, GccEnt_Position & Qualif1) const;
		%feature("autodoc","Tangency1(Standard_Integer Index) -> [Standard_Real, Standard_Real]");

		void Tangency1(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;
		%feature("autodoc","CenterOn3(Standard_Integer Index) -> Standard_Real");

		void CenterOn3(const Standard_Integer Index, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;
		%feature("autodoc", "1");
		Standard_Boolean IsTheSame1(const Standard_Integer Index) const;

};
%feature("shadow") Geom2dGcc_MyCirc2dTanOnRad::~Geom2dGcc_MyCirc2dTanOnRad %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom2dGcc_MyCirc2dTanOnRad {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom2dGcc_Circ2d2TanRad;
class Geom2dGcc_Circ2d2TanRad {
	public:
		%feature("autodoc", "1");
		Geom2dGcc_Circ2d2TanRad(const Geom2dGcc_QualifiedCurve &Qualified1, const Geom2dGcc_QualifiedCurve &Qualified2, const Standard_Real Radius, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Geom2dGcc_Circ2d2TanRad(const Geom2dGcc_QualifiedCurve &Qualified1, const Handle_Geom2d_Point &Point, const Standard_Real Radius, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Geom2dGcc_Circ2d2TanRad(const Handle_Geom2d_Point &Point1, const Handle_Geom2d_Point &Point2, const Standard_Real Radius, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		void Results(const GccAna_Circ2d2TanRad &Circ);
		%feature("autodoc", "1");
		void Results(const Geom2dGcc_MyCirc2d2TanRad &Circ);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbSolutions() const;
		%feature("autodoc", "1");
		gp_Circ2d ThisSolution(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void WhichQualifier(const Standard_Integer Index, GccEnt_Position & Qualif1, GccEnt_Position & Qualif2) const;
		%feature("autodoc","Tangency1(Standard_Integer Index) -> [Standard_Real, Standard_Real]");

		void Tangency1(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;
		%feature("autodoc","Tangency2(Standard_Integer Index) -> [Standard_Real, Standard_Real]");

		void Tangency2(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;
		%feature("autodoc", "1");
		Standard_Boolean IsTheSame1(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Boolean IsTheSame2(const Standard_Integer Index) const;

};
%feature("shadow") Geom2dGcc_Circ2d2TanRad::~Geom2dGcc_Circ2d2TanRad %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom2dGcc_Circ2d2TanRad {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom2dGcc_Lin2dTanObl;
class Geom2dGcc_Lin2dTanObl {
	public:
		%feature("autodoc", "1");
		Geom2dGcc_Lin2dTanObl(const Geom2dGcc_QualifiedCurve &Qualified1, const gp_Lin2d &TheLin, const Standard_Real TolAng, const Standard_Real Angle);
		%feature("autodoc", "1");
		Geom2dGcc_Lin2dTanObl(const Geom2dGcc_QualifiedCurve &Qualified1, const gp_Lin2d &TheLin, const Standard_Real TolAng, const Standard_Real Param1, const Standard_Real Angle);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbSolutions() const;
		%feature("autodoc", "1");
		gp_Lin2d ThisSolution(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void WhichQualifier(const Standard_Integer Index, GccEnt_Position & Qualif1) const;
		%feature("autodoc","Tangency1(Standard_Integer Index) -> [Standard_Real, Standard_Real]");

		void Tangency1(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;
		%feature("autodoc","Intersection2(Standard_Integer Index) -> [Standard_Real, Standard_Real]");

		void Intersection2(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;

};
%feature("shadow") Geom2dGcc_Lin2dTanObl::~Geom2dGcc_Lin2dTanObl %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom2dGcc_Lin2dTanObl {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom2dGcc_CurveTool;
class Geom2dGcc_CurveTool {
	public:
		%feature("autodoc", "1");
		Geom2dGcc_CurveTool();
		%feature("autodoc", "1");
		static		Standard_Real FirstParameter(const Geom2dAdaptor_Curve &C);
		%feature("autodoc", "1");
		static		Standard_Real LastParameter(const Geom2dAdaptor_Curve &C);
		%feature("autodoc", "1");
		static		Standard_Real EpsX(const Geom2dAdaptor_Curve &C, const Standard_Real Tol);
		%feature("autodoc", "1");
		static		Standard_Integer NbSamples(const Geom2dAdaptor_Curve &C);
		%feature("autodoc", "1");
		static		gp_Pnt2d Value(const Geom2dAdaptor_Curve &C, const Standard_Real X);
		%feature("autodoc", "1");
		static		void D1(const Geom2dAdaptor_Curve &C, const Standard_Real U, gp_Pnt2d & P, gp_Vec2d & T);
		%feature("autodoc", "1");
		static		void D2(const Geom2dAdaptor_Curve &C, const Standard_Real U, gp_Pnt2d & P, gp_Vec2d & T, gp_Vec2d & N);
		%feature("autodoc", "1");
		static		void D3(const Geom2dAdaptor_Curve &C, const Standard_Real U, gp_Pnt2d & P, gp_Vec2d & T, gp_Vec2d & N, gp_Vec2d & dN);

};
%feature("shadow") Geom2dGcc_CurveTool::~Geom2dGcc_CurveTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom2dGcc_CurveTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom2dGcc_Circ2dTanOnRad;
class Geom2dGcc_Circ2dTanOnRad {
	public:
		%feature("autodoc", "1");
		Geom2dGcc_Circ2dTanOnRad(const Geom2dGcc_QualifiedCurve &Qualified1, const Geom2dAdaptor_Curve &OnCurv, const Standard_Real Radius, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Geom2dGcc_Circ2dTanOnRad(const Handle_Geom2d_Point &Point1, const Geom2dAdaptor_Curve &OnCurv, const Standard_Real Radius, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		void Results(const GccAna_Circ2dTanOnRad &Circ);
		%feature("autodoc", "1");
		void Results(const Geom2dGcc_MyCirc2dTanOnRad &Circ);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbSolutions() const;
		%feature("autodoc", "1");
		gp_Circ2d ThisSolution(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void WhichQualifier(const Standard_Integer Index, GccEnt_Position & Qualif1) const;
		%feature("autodoc","Tangency1(Standard_Integer Index) -> [Standard_Real, Standard_Real]");

		void Tangency1(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;
		%feature("autodoc","CenterOn3(Standard_Integer Index) -> Standard_Real");

		void CenterOn3(const Standard_Integer Index, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;
		%feature("autodoc", "1");
		Standard_Boolean IsTheSame1(const Standard_Integer Index) const;

};
%feature("shadow") Geom2dGcc_Circ2dTanOnRad::~Geom2dGcc_Circ2dTanOnRad %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom2dGcc_Circ2dTanOnRad {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Geom2dGcc;
class Geom2dGcc {
	public:
		%feature("autodoc", "1");
		Geom2dGcc();
		%feature("autodoc", "1");
		static		Geom2dGcc_QualifiedCurve Unqualified(const Geom2dAdaptor_Curve &Obj);
		%feature("autodoc", "1");
		static		Geom2dGcc_QualifiedCurve Enclosing(const Geom2dAdaptor_Curve &Obj);
		%feature("autodoc", "1");
		static		Geom2dGcc_QualifiedCurve Enclosed(const Geom2dAdaptor_Curve &Obj);
		%feature("autodoc", "1");
		static		Geom2dGcc_QualifiedCurve Outside(const Geom2dAdaptor_Curve &Obj);

};
%feature("shadow") Geom2dGcc::~Geom2dGcc %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Geom2dGcc {
	void _kill_pointed() {
		delete $self;
	}
};
