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

%module CSLib
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include CSLib_renames.i


%include CSLib_required_python_modules.i


%include CSLib_dependencies.i


%include CSLib_headers.i


enum CSLib_DerivativeStatus {
	CSLib_Done,
	CSLib_D1uIsNull,
	CSLib_D1vIsNull,
	CSLib_D1IsNull,
	CSLib_D1uD1vRatioIsNull,
	CSLib_D1vD1uRatioIsNull,
	CSLib_D1uIsParallelD1v,
	};

enum CSLib_NormalStatus {
	CSLib_Singular,
	CSLib_Defined,
	CSLib_InfinityOfSolutions,
	CSLib_D1NuIsNull,
	CSLib_D1NvIsNull,
	CSLib_D1NIsNull,
	CSLib_D1NuNvRatioIsNull,
	CSLib_D1NvNuRatioIsNull,
	CSLib_D1NuIsParallelD1Nv,
	};



%nodefaultctor CSLib;
class CSLib {
	public:
		%feature("autodoc", "1");
		CSLib();
		%feature("autodoc", "1");
		static		void Normal(const gp_Vec &D1U, const gp_Vec &D1V, const Standard_Real SinTol, CSLib_DerivativeStatus & Status, gp_Dir & Normal);
		%feature("autodoc", "1");
		static		void Normal(const gp_Vec &D1U, const gp_Vec &D1V, const gp_Vec &D2U, const gp_Vec &D2V, const gp_Vec &D2UV, const Standard_Real SinTol, Standard_Boolean & Done, CSLib_NormalStatus & Status, gp_Dir & Normal);
		%feature("autodoc", "1");
		static		void Normal(const gp_Vec &D1U, const gp_Vec &D1V, const Standard_Real MagTol, CSLib_NormalStatus & Status, gp_Dir & Normal);
		%feature("autodoc","Normal(Standard_Integer MaxOrder, const DerNUV, Standard_Real MagTol, Standard_Real U, Standard_Real V, Standard_Real Umin, Standard_Real Umax, Standard_Real Vmin, Standard_Real Vmax) -> [Standard_Integer, Standard_Integer]");

		static		void Normal(const Standard_Integer MaxOrder, const TColgp_Array2OfVec &DerNUV, const Standard_Real MagTol, const Standard_Real U, const Standard_Real V, const Standard_Real Umin, const Standard_Real Umax, const Standard_Real Vmin, const Standard_Real Vmax, CSLib_NormalStatus & Status, gp_Dir & Normal, Standard_Integer &OutValue, Standard_Integer &OutValue);
		%feature("autodoc", "1");
		static		gp_Vec DNNUV(const Standard_Integer Nu, const Standard_Integer Nv, const TColgp_Array2OfVec &DerSurf);
		%feature("autodoc", "1");
		static		gp_Vec DNNUV(const Standard_Integer Nu, const Standard_Integer Nv, const TColgp_Array2OfVec &DerSurf1, const TColgp_Array2OfVec &DerSurf2);
		%feature("autodoc", "1");
		static		gp_Vec DNNormal(const Standard_Integer Nu, const Standard_Integer Nv, const TColgp_Array2OfVec &DerNUV, const Standard_Integer Iduref=0, const Standard_Integer Idvref=0);

};
%feature("shadow") CSLib::~CSLib %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend CSLib {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor CSLib_Class2d;
class CSLib_Class2d {
	public:
		%feature("autodoc", "1");
		CSLib_Class2d(const TColgp_Array1OfPnt2d &TP, const Standard_Real aTolu, const Standard_Real aTolv, const Standard_Real umin, const Standard_Real vmin, const Standard_Real umax, const Standard_Real vmax);
		%feature("autodoc", "1");
		Standard_Integer SiDans(const gp_Pnt2d &P) const;
		%feature("autodoc", "1");
		Standard_Integer SiDans_OnMode(const gp_Pnt2d &P, const Standard_Real Tol) const;
		%feature("autodoc", "1");
		Standard_Integer InternalSiDans(const Standard_Real X, const Standard_Real Y) const;
		%feature("autodoc", "1");
		Standard_Integer InternalSiDansOuOn(const Standard_Real X, const Standard_Real Y) const;
		%feature("autodoc", "1");
		const CSLib_Class2d & Copy(const CSLib_Class2d &Other) const;
		%feature("autodoc", "1");
		const CSLib_Class2d & operator=(const CSLib_Class2d &Other) const;
		%feature("autodoc", "1");
		void Destroy();

};
%feature("shadow") CSLib_Class2d::~CSLib_Class2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend CSLib_Class2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor CSLib_NormalPolyDef;
class CSLib_NormalPolyDef : public math_FunctionWithDerivative {
	public:
		%feature("autodoc", "1");
		CSLib_NormalPolyDef(const Standard_Integer k0, const TColStd_Array1OfReal &li);
		%feature("autodoc","Value(Standard_Real X) -> Standard_Real");

		virtual		Standard_Boolean Value(const Standard_Real X, Standard_Real &OutValue);
		%feature("autodoc","Derivative(Standard_Real X) -> Standard_Real");

		virtual		Standard_Boolean Derivative(const Standard_Real X, Standard_Real &OutValue);
		%feature("autodoc","Values(Standard_Real X) -> [Standard_Real, Standard_Real]");

		virtual		Standard_Boolean Values(const Standard_Real X, Standard_Real &OutValue, Standard_Real &OutValue);

};
%feature("shadow") CSLib_NormalPolyDef::~CSLib_NormalPolyDef %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend CSLib_NormalPolyDef {
	void _kill_pointed() {
		delete $self;
	}
};
