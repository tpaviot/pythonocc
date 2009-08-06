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
%module GccAna

%include GccAna_renames.i
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include GccAna_dependencies.i


%include GccAna_headers.i




%nodefaultctor Handle_GccAna_NoSolution;
class Handle_GccAna_NoSolution : public Handle_Standard_Failure {
	public:
		%feature("autodoc", "1");
		Handle_GccAna_NoSolution();
		%feature("autodoc", "1");
		Handle_GccAna_NoSolution(const Handle_GccAna_NoSolution &aHandle);
		%feature("autodoc", "1");
		Handle_GccAna_NoSolution(const GccAna_NoSolution *anItem);
		%feature("autodoc", "1");
		Handle_GccAna_NoSolution & operator=(const Handle_GccAna_NoSolution &aHandle);
		%feature("autodoc", "1");
		Handle_GccAna_NoSolution & operator=(const GccAna_NoSolution *anItem);
		%feature("autodoc", "1");
		Handle_GccAna_NoSolution const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GccAna_NoSolution {
	GccAna_NoSolution* GetObject() {
	return (GccAna_NoSolution*)$self->Access();
	}
};
%extend Handle_GccAna_NoSolution {
	~Handle_GccAna_NoSolution() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_GccAna_NoSolution\n");}
	}
};


%nodefaultctor GccAna_CircLin2dBisec;
class GccAna_CircLin2dBisec {
	public:
		%feature("autodoc", "1");
		GccAna_CircLin2dBisec(const gp_Circ2d &Circle, const gp_Lin2d &Line);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbSolutions() const;
		%feature("autodoc", "1");
		Handle_GccInt_Bisec ThisSolution(const Standard_Integer Index) const;

};
%extend GccAna_CircLin2dBisec {
	~GccAna_CircLin2dBisec() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GccAna_CircLin2dBisec\n");}
	}
};


%nodefaultctor GccAna_Lin2dTanObl;
class GccAna_Lin2dTanObl {
	public:
		%feature("autodoc", "1");
		GccAna_Lin2dTanObl(const gp_Pnt2d &ThePoint, const gp_Lin2d &TheLine, const Standard_Real TheAngle);
		%feature("autodoc", "1");
		GccAna_Lin2dTanObl(const GccEnt_QualifiedCirc &Qualified1, const gp_Lin2d &TheLine, const Standard_Real TheAngle);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbSolutions() const;
		%feature("autodoc", "1");
		gp_Lin2d ThisSolution(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void WhichQualifier(const Standard_Integer Index, GccEnt_Position & Qualif1) const;
		%feature("autodoc","Tangency1(Standard_Integer Index)->[Standard_RealStandard_Real]");
		void Tangency1(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;
		%feature("autodoc","Intersection2(Standard_Integer Index)->[Standard_RealStandard_Real]");
		void Intersection2(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;

};
%extend GccAna_Lin2dTanObl {
	~GccAna_Lin2dTanObl() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GccAna_Lin2dTanObl\n");}
	}
};


%nodefaultctor GccAna_Lin2dBisec;
class GccAna_Lin2dBisec {
	public:
		%feature("autodoc", "1");
		GccAna_Lin2dBisec(const gp_Lin2d &Lin1, const gp_Lin2d &Lin2);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbSolutions() const;
		%feature("autodoc", "1");
		gp_Lin2d ThisSolution(const Standard_Integer Index) const;
		%feature("autodoc","Intersection1(Standard_Integer Index)->[Standard_RealStandard_Real]");
		void Intersection1(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;
		%feature("autodoc","Intersection2(Standard_Integer Index)->[Standard_RealStandard_Real]");
		void Intersection2(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;

};
%extend GccAna_Lin2dBisec {
	~GccAna_Lin2dBisec() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GccAna_Lin2dBisec\n");}
	}
};


%nodefaultctor GccAna_Pnt2dBisec;
class GccAna_Pnt2dBisec {
	public:
		%feature("autodoc", "1");
		GccAna_Pnt2dBisec(const gp_Pnt2d &Point1, const gp_Pnt2d &Point2);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Boolean HasSolution() const;
		%feature("autodoc", "1");
		gp_Lin2d ThisSolution() const;

};
%extend GccAna_Pnt2dBisec {
	~GccAna_Pnt2dBisec() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GccAna_Pnt2dBisec\n");}
	}
};


%nodefaultctor GccAna_Circ2dTanOnRad;
class GccAna_Circ2dTanOnRad {
	public:
		%feature("autodoc", "1");
		GccAna_Circ2dTanOnRad(const GccEnt_QualifiedCirc &Qualified1, const gp_Lin2d &OnLine, const Standard_Real Radius, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		GccAna_Circ2dTanOnRad(const GccEnt_QualifiedLin &Qualified1, const gp_Lin2d &OnLine, const Standard_Real Radius, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		GccAna_Circ2dTanOnRad(const gp_Pnt2d &Point1, const gp_Lin2d &OnLine, const Standard_Real Radius, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		GccAna_Circ2dTanOnRad(const GccEnt_QualifiedCirc &Qualified1, const gp_Circ2d &OnCirc, const Standard_Real Radius, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		GccAna_Circ2dTanOnRad(const GccEnt_QualifiedLin &Qualified1, const gp_Circ2d &OnCirc, const Standard_Real Radius, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		GccAna_Circ2dTanOnRad(const gp_Pnt2d &Point1, const gp_Circ2d &OnCirc, const Standard_Real Radius, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbSolutions() const;
		%feature("autodoc", "1");
		gp_Circ2d ThisSolution(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void WhichQualifier(const Standard_Integer Index, GccEnt_Position & Qualif1) const;
		%feature("autodoc","Tangency1(Standard_Integer Index)->[Standard_RealStandard_Real]");
		void Tangency1(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;
		%feature("autodoc","CenterOn3(Standard_Integer Index)->Standard_Real");
		void CenterOn3(const Standard_Integer Index, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;
		%feature("autodoc", "1");
		Standard_Boolean IsTheSame1(const Standard_Integer Index) const;

};
%extend GccAna_Circ2dTanOnRad {
	~GccAna_Circ2dTanOnRad() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GccAna_Circ2dTanOnRad\n");}
	}
};


%nodefaultctor GccAna_Circ2dTanCen;
class GccAna_Circ2dTanCen {
	public:
		%feature("autodoc", "1");
		GccAna_Circ2dTanCen(const GccEnt_QualifiedCirc &Qualified1, const gp_Pnt2d &Pcenter, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		GccAna_Circ2dTanCen(const gp_Lin2d &Linetan, const gp_Pnt2d &Pcenter);
		%feature("autodoc", "1");
		GccAna_Circ2dTanCen(const gp_Pnt2d &Point1, const gp_Pnt2d &Pcenter);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbSolutions() const;
		%feature("autodoc", "1");
		gp_Circ2d ThisSolution(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void WhichQualifier(const Standard_Integer Index, GccEnt_Position & Qualif1) const;
		%feature("autodoc","Tangency1(Standard_Integer Index)->[Standard_RealStandard_Real]");
		void Tangency1(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;
		%feature("autodoc", "1");
		Standard_Boolean IsTheSame1(const Standard_Integer Index) const;

};
%extend GccAna_Circ2dTanCen {
	~GccAna_Circ2dTanCen() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GccAna_Circ2dTanCen\n");}
	}
};


%nodefaultctor GccAna_Lin2dTanPer;
class GccAna_Lin2dTanPer {
	public:
		%feature("autodoc", "1");
		GccAna_Lin2dTanPer(const gp_Pnt2d &ThePnt, const gp_Lin2d &TheLin);
		%feature("autodoc", "1");
		GccAna_Lin2dTanPer(const gp_Pnt2d &ThePnt, const gp_Circ2d &TheCircle);
		%feature("autodoc", "1");
		GccAna_Lin2dTanPer(const GccEnt_QualifiedCirc &Qualified1, const gp_Lin2d &TheLin);
		%feature("autodoc", "1");
		GccAna_Lin2dTanPer(const GccEnt_QualifiedCirc &Qualified1, const gp_Circ2d &TheCircle);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbSolutions() const;
		%feature("autodoc", "1");
		void WhichQualifier(const Standard_Integer Index, GccEnt_Position & Qualif1) const;
		%feature("autodoc", "1");
		gp_Lin2d ThisSolution(const Standard_Integer Index) const;
		%feature("autodoc","Tangency1(Standard_Integer Index)->[Standard_RealStandard_Real]");
		void Tangency1(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & Pnt) const;
		%feature("autodoc","Intersection2(Standard_Integer Index)->[Standard_RealStandard_Real]");
		void Intersection2(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;

};
%extend GccAna_Lin2dTanPer {
	~GccAna_Lin2dTanPer() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GccAna_Lin2dTanPer\n");}
	}
};


%nodefaultctor GccAna_Circ2d3Tan;
class GccAna_Circ2d3Tan {
	public:
		%feature("autodoc", "1");
		GccAna_Circ2d3Tan(const GccEnt_QualifiedCirc &Qualified1, const GccEnt_QualifiedCirc &Qualified2, const GccEnt_QualifiedCirc &Qualified3, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		GccAna_Circ2d3Tan(const GccEnt_QualifiedCirc &Qualified1, const GccEnt_QualifiedCirc &Qualified2, const GccEnt_QualifiedLin &Qualified3, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		GccAna_Circ2d3Tan(const GccEnt_QualifiedCirc &Qualified1, const GccEnt_QualifiedLin &Qualified2, const GccEnt_QualifiedLin &Qualified3, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		GccAna_Circ2d3Tan(const GccEnt_QualifiedLin &Qualified1, const GccEnt_QualifiedLin &Qualified2, const GccEnt_QualifiedLin &Qualified3, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		GccAna_Circ2d3Tan(const GccEnt_QualifiedCirc &Qualified1, const GccEnt_QualifiedCirc &Qualified2, const gp_Pnt2d &Point3, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		GccAna_Circ2d3Tan(const GccEnt_QualifiedCirc &Qualified1, const GccEnt_QualifiedLin &Qualified2, const gp_Pnt2d &Point3, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		GccAna_Circ2d3Tan(const GccEnt_QualifiedLin &Qualified1, const GccEnt_QualifiedLin &Qualified2, const gp_Pnt2d &Point3, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		GccAna_Circ2d3Tan(const GccEnt_QualifiedCirc &Qualified1, const gp_Pnt2d &Point2, const gp_Pnt2d &Point3, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		GccAna_Circ2d3Tan(const GccEnt_QualifiedLin &Qualified1, const gp_Pnt2d &Point2, const gp_Pnt2d &Point3, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		GccAna_Circ2d3Tan(const gp_Pnt2d &Point1, const gp_Pnt2d &Point2, const gp_Pnt2d &Point3, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbSolutions() const;
		%feature("autodoc", "1");
		gp_Circ2d ThisSolution(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void WhichQualifier(const Standard_Integer Index, GccEnt_Position & Qualif1, GccEnt_Position & Qualif2, GccEnt_Position & Qualif3) const;
		%feature("autodoc","Tangency1(Standard_Integer Index)->[Standard_RealStandard_Real]");
		void Tangency1(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;
		%feature("autodoc","Tangency2(Standard_Integer Index)->[Standard_RealStandard_Real]");
		void Tangency2(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;
		%feature("autodoc","Tangency3(Standard_Integer Index)->[Standard_RealStandard_Real]");
		void Tangency3(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;
		%feature("autodoc", "1");
		Standard_Boolean IsTheSame1(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Boolean IsTheSame2(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Boolean IsTheSame3(const Standard_Integer Index) const;

};
%extend GccAna_Circ2d3Tan {
	~GccAna_Circ2d3Tan() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GccAna_Circ2d3Tan\n");}
	}
};


%nodefaultctor GccAna_NoSolution;
class GccAna_NoSolution : public Standard_Failure {
	public:
		%feature("autodoc", "1");
		GccAna_NoSolution();
		%feature("autodoc", "1");
		GccAna_NoSolution(const char * AString);
		%feature("autodoc", "1");
		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		Handle_GccAna_NoSolution NewInstance(const char * aMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GccAna_NoSolution {
	Handle_GccAna_NoSolution GetHandle() {
	return *(Handle_GccAna_NoSolution*) &$self;
	}
};
%extend GccAna_NoSolution {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend GccAna_NoSolution {
	~GccAna_NoSolution() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GccAna_NoSolution\n");}
	}
};


%nodefaultctor GccAna_LinPnt2dBisec;
class GccAna_LinPnt2dBisec {
	public:
		%feature("autodoc", "1");
		GccAna_LinPnt2dBisec(const gp_Lin2d &Line1, const gp_Pnt2d &Point2);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Handle_GccInt_Bisec ThisSolution() const;

};
%extend GccAna_LinPnt2dBisec {
	~GccAna_LinPnt2dBisec() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GccAna_LinPnt2dBisec\n");}
	}
};


%nodefaultctor GccAna_Circ2d2TanRad;
class GccAna_Circ2d2TanRad {
	public:
		%feature("autodoc", "1");
		GccAna_Circ2d2TanRad(const GccEnt_QualifiedCirc &Qualified1, const GccEnt_QualifiedCirc &Qualified2, const Standard_Real Radius, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		GccAna_Circ2d2TanRad(const GccEnt_QualifiedCirc &Qualified1, const GccEnt_QualifiedLin &Qualified2, const Standard_Real Radius, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		GccAna_Circ2d2TanRad(const GccEnt_QualifiedCirc &Qualified1, const gp_Pnt2d &Point2, const Standard_Real Radius, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		GccAna_Circ2d2TanRad(const GccEnt_QualifiedLin &Qualified1, const gp_Pnt2d &Point2, const Standard_Real Radius, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		GccAna_Circ2d2TanRad(const GccEnt_QualifiedLin &Qualified1, const GccEnt_QualifiedLin &Qualified2, const Standard_Real Radius, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		GccAna_Circ2d2TanRad(const gp_Pnt2d &Point1, const gp_Pnt2d &Point2, const Standard_Real Radius, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbSolutions() const;
		%feature("autodoc", "1");
		gp_Circ2d ThisSolution(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void WhichQualifier(const Standard_Integer Index, GccEnt_Position & Qualif1, GccEnt_Position & Qualif2) const;
		%feature("autodoc","Tangency1(Standard_Integer Index)->[Standard_RealStandard_Real]");
		void Tangency1(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;
		%feature("autodoc","Tangency2(Standard_Integer Index)->[Standard_RealStandard_Real]");
		void Tangency2(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;
		%feature("autodoc", "1");
		Standard_Boolean IsTheSame1(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Boolean IsTheSame2(const Standard_Integer Index) const;

};
%extend GccAna_Circ2d2TanRad {
	~GccAna_Circ2d2TanRad() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GccAna_Circ2d2TanRad\n");}
	}
};


%nodefaultctor GccAna_Lin2d2Tan;
class GccAna_Lin2d2Tan {
	public:
		%feature("autodoc", "1");
		GccAna_Lin2d2Tan(const gp_Pnt2d &ThePoint1, const gp_Pnt2d &ThePoint2, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		GccAna_Lin2d2Tan(const GccEnt_QualifiedCirc &Qualified1, const gp_Pnt2d &ThePoint, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		GccAna_Lin2d2Tan(const GccEnt_QualifiedCirc &Qualified1, const GccEnt_QualifiedCirc &Qualified2, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbSolutions() const;
		%feature("autodoc", "1");
		gp_Lin2d ThisSolution(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void WhichQualifier(const Standard_Integer Index, GccEnt_Position & Qualif1, GccEnt_Position & Qualif2) const;
		%feature("autodoc","Tangency1(Standard_Integer Index)->[Standard_RealStandard_Real]");
		void Tangency1(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;
		%feature("autodoc","Tangency2(Standard_Integer Index)->[Standard_RealStandard_Real]");
		void Tangency2(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;

};
%extend GccAna_Lin2d2Tan {
	~GccAna_Lin2d2Tan() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GccAna_Lin2d2Tan\n");}
	}
};


%nodefaultctor GccAna_Lin2dTanPar;
class GccAna_Lin2dTanPar {
	public:
		%feature("autodoc", "1");
		GccAna_Lin2dTanPar(const gp_Pnt2d &ThePoint, const gp_Lin2d &Lin1);
		%feature("autodoc", "1");
		GccAna_Lin2dTanPar(const GccEnt_QualifiedCirc &Qualified1, const gp_Lin2d &Lin1);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbSolutions() const;
		%feature("autodoc", "1");
		gp_Lin2d ThisSolution(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void WhichQualifier(const Standard_Integer Index, GccEnt_Position & Qualif1) const;
		%feature("autodoc","Tangency1(Standard_Integer Index)->[Standard_RealStandard_Real]");
		void Tangency1(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & Pnt) const;

};
%extend GccAna_Lin2dTanPar {
	~GccAna_Lin2dTanPar() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GccAna_Lin2dTanPar\n");}
	}
};


%nodefaultctor GccAna_CircPnt2dBisec;
class GccAna_CircPnt2dBisec {
	public:
		%feature("autodoc", "1");
		GccAna_CircPnt2dBisec(const gp_Circ2d &Circle1, const gp_Pnt2d &Point2);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbSolutions() const;
		%feature("autodoc", "1");
		Handle_GccInt_Bisec ThisSolution(const Standard_Integer Index) const;

};
%extend GccAna_CircPnt2dBisec {
	~GccAna_CircPnt2dBisec() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GccAna_CircPnt2dBisec\n");}
	}
};


%nodefaultctor GccAna_Circ2dBisec;
class GccAna_Circ2dBisec {
	public:
		%feature("autodoc", "1");
		GccAna_Circ2dBisec(const gp_Circ2d &Circ1, const gp_Circ2d &Circ2);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbSolutions() const;
		%feature("autodoc", "1");
		Handle_GccInt_Bisec ThisSolution(const Standard_Integer Index) const;

};
%extend GccAna_Circ2dBisec {
	~GccAna_Circ2dBisec() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GccAna_Circ2dBisec\n");}
	}
};


%nodefaultctor GccAna_Circ2d2TanOn;
class GccAna_Circ2d2TanOn {
	public:
		%feature("autodoc", "1");
		GccAna_Circ2d2TanOn(const GccEnt_QualifiedCirc &Qualified1, const GccEnt_QualifiedCirc &Qualified2, const gp_Lin2d &OnLine, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		GccAna_Circ2d2TanOn(const GccEnt_QualifiedCirc &Qualified1, const GccEnt_QualifiedLin &Qualified2, const gp_Lin2d &OnLine, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		GccAna_Circ2d2TanOn(const GccEnt_QualifiedLin &Qualified1, const GccEnt_QualifiedLin &Qualified2, const gp_Lin2d &OnLine, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		GccAna_Circ2d2TanOn(const GccEnt_QualifiedCirc &Qualified1, const gp_Pnt2d &Point2, const gp_Lin2d &OnLine, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		GccAna_Circ2d2TanOn(const GccEnt_QualifiedLin &Qualified1, const gp_Pnt2d &Point2, const gp_Lin2d &OnLine, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		GccAna_Circ2d2TanOn(const gp_Pnt2d &Point1, const gp_Pnt2d &Point2, const gp_Lin2d &OnLine, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		GccAna_Circ2d2TanOn(const GccEnt_QualifiedCirc &Qualified1, const GccEnt_QualifiedCirc &Qualified2, const gp_Circ2d &OnCirc, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		GccAna_Circ2d2TanOn(const GccEnt_QualifiedCirc &Qualified1, const GccEnt_QualifiedLin &Qualified2, const gp_Circ2d &OnCirc, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		GccAna_Circ2d2TanOn(const GccEnt_QualifiedCirc &Qualified1, const gp_Pnt2d &Point2, const gp_Circ2d &OnCirc, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		GccAna_Circ2d2TanOn(const GccEnt_QualifiedLin &Qualified1, const GccEnt_QualifiedLin &Qualified2, const gp_Circ2d &OnCirc, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		GccAna_Circ2d2TanOn(const GccEnt_QualifiedLin &Qualified1, const gp_Pnt2d &Point2, const gp_Circ2d &OnCirc, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		GccAna_Circ2d2TanOn(const gp_Pnt2d &Point1, const gp_Pnt2d &Point2, const gp_Circ2d &OnCirc, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbSolutions() const;
		%feature("autodoc", "1");
		gp_Circ2d ThisSolution(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void WhichQualifier(const Standard_Integer Index, GccEnt_Position & Qualif1, GccEnt_Position & Qualif2) const;
		%feature("autodoc","Tangency1(Standard_Integer Index)->[Standard_RealStandard_Real]");
		void Tangency1(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;
		%feature("autodoc","Tangency2(Standard_Integer Index)->[Standard_RealStandard_Real]");
		void Tangency2(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;
		%feature("autodoc","CenterOn3(Standard_Integer Index)->Standard_Real");
		void CenterOn3(const Standard_Integer Index, Standard_Real &OutValue, gp_Pnt2d & PntArg) const;
		%feature("autodoc", "1");
		Standard_Boolean IsTheSame1(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Boolean IsTheSame2(const Standard_Integer Index) const;

};
%extend GccAna_Circ2d2TanOn {
	~GccAna_Circ2d2TanOn() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GccAna_Circ2d2TanOn\n");}
	}
};
