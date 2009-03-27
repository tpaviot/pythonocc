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
%module GccAna

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
		Handle_GccAna_NoSolution const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GccAna_NoSolution {
	GccAna_NoSolution* GetObject() {
	return (GccAna_NoSolution*)$self->Access();
	}
};
%extend Handle_GccAna_NoSolution {
	~Handle_GccAna_NoSolution() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_GccAna_NoSolution\n");}
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
		%feature("autodoc", "1");
		void Tangency1(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;
		%feature("autodoc", "1");
		void Intersection2(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;

};
%extend GccAna_Lin2dTanObl {
	~GccAna_Lin2dTanObl() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of GccAna_Lin2dTanObl\n");}
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
		%feature("autodoc", "1");
		void Intersection1(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;
		%feature("autodoc", "1");
		void Intersection2(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;

};
%extend GccAna_Lin2dBisec {
	~GccAna_Lin2dBisec() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of GccAna_Lin2dBisec\n");}
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
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of GccAna_Pnt2dBisec\n");}
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
		%feature("autodoc", "1");
		void Tangency1(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;
		%feature("autodoc", "1");
		void CenterOn3(const Standard_Integer Index, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;
		%feature("autodoc", "1");
		Standard_Boolean IsTheSame1(const Standard_Integer Index) const;

};
%extend GccAna_Circ2dTanOnRad {
	~GccAna_Circ2dTanOnRad() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of GccAna_Circ2dTanOnRad\n");}
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
		%feature("autodoc", "1");
		void Tangency1(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;
		%feature("autodoc", "1");
		Standard_Boolean IsTheSame1(const Standard_Integer Index) const;

};
%extend GccAna_Circ2dTanCen {
	~GccAna_Circ2dTanCen() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of GccAna_Circ2dTanCen\n");}
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
		%feature("autodoc", "1");
		void Tangency1(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & Pnt) const;
		%feature("autodoc", "1");
		void Intersection2(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;

};
%extend GccAna_Lin2dTanPer {
	~GccAna_Lin2dTanPer() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of GccAna_Lin2dTanPer\n");}
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
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of GccAna_LinPnt2dBisec\n");}
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
	~GccAna_NoSolution() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of GccAna_NoSolution\n");}
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
		%feature("autodoc", "1");
		void Tangency1(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;
		%feature("autodoc", "1");
		void Tangency2(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;
		%feature("autodoc", "1");
		Standard_Boolean IsTheSame1(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Boolean IsTheSame2(const Standard_Integer Index) const;

};
%extend GccAna_Circ2d2TanRad {
	~GccAna_Circ2d2TanRad() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of GccAna_Circ2d2TanRad\n");}
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
		%feature("autodoc", "1");
		void Tangency1(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;
		%feature("autodoc", "1");
		void Tangency2(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;
		%feature("autodoc", "1");
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
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of GccAna_Circ2d3Tan\n");}
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
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of GccAna_CircLin2dBisec\n");}
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
		%feature("autodoc", "1");
		void Tangency1(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & Pnt) const;

};
%extend GccAna_Lin2dTanPar {
	~GccAna_Lin2dTanPar() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of GccAna_Lin2dTanPar\n");}
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
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of GccAna_CircPnt2dBisec\n");}
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
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of GccAna_Circ2dBisec\n");}
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
		%feature("autodoc", "1");
		void Tangency1(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;
		%feature("autodoc", "1");
		void Tangency2(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;
		%feature("autodoc", "1");
		void CenterOn3(const Standard_Integer Index, Standard_Real &OutValue, gp_Pnt2d & PntArg) const;
		%feature("autodoc", "1");
		Standard_Boolean IsTheSame1(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Boolean IsTheSame2(const Standard_Integer Index) const;

};
%extend GccAna_Circ2d2TanOn {
	~GccAna_Circ2d2TanOn() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of GccAna_Circ2d2TanOn\n");}
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
		%feature("autodoc", "1");
		void Tangency1(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;
		%feature("autodoc", "1");
		void Tangency2(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & PntSol) const;

};
%extend GccAna_Lin2d2Tan {
	~GccAna_Lin2d2Tan() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of GccAna_Lin2d2Tan\n");}
	}
};