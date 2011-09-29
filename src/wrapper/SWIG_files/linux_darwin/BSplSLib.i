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

%module BSplSLib
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include BSplSLib_renames.i


%include BSplSLib_required_python_modules.i


%include BSplSLib_dependencies.i


%include BSplSLib_headers.i




%nodefaultctor BSplSLib;
class BSplSLib {
	public:
		%feature("autodoc", "1");
		BSplSLib();
		%feature("autodoc","RationalDerivative(Standard_Integer UDeg, Standard_Integer VDeg, Standard_Integer N, Standard_Integer M, Standard_Boolean All=1) -> [Standard_Real, Standard_Real]");

		static		void RationalDerivative(const Standard_Integer UDeg, const Standard_Integer VDeg, const Standard_Integer N, const Standard_Integer M, Standard_Real &OutValue, Standard_Real &OutValue, const Standard_Boolean All=1);
		%feature("autodoc", "1");
		static		void D0(const Standard_Real U, const Standard_Real V, const Standard_Integer UIndex, const Standard_Integer VIndex, const TColgp_Array2OfPnt &Poles, const TColStd_Array2OfReal &Weights, const TColStd_Array1OfReal &UKnots, const TColStd_Array1OfReal &VKnots, const TColStd_Array1OfInteger &UMults, const TColStd_Array1OfInteger &VMults, const Standard_Integer UDegree, const Standard_Integer VDegree, const Standard_Boolean URat, const Standard_Boolean VRat, const Standard_Boolean UPer, const Standard_Boolean VPer, gp_Pnt & P);
		%feature("autodoc", "1");
		static		void D1(const Standard_Real U, const Standard_Real V, const Standard_Integer UIndex, const Standard_Integer VIndex, const TColgp_Array2OfPnt &Poles, const TColStd_Array2OfReal &Weights, const TColStd_Array1OfReal &UKnots, const TColStd_Array1OfReal &VKnots, const TColStd_Array1OfInteger &UMults, const TColStd_Array1OfInteger &VMults, const Standard_Integer Degree, const Standard_Integer VDegree, const Standard_Boolean URat, const Standard_Boolean VRat, const Standard_Boolean UPer, const Standard_Boolean VPer, gp_Pnt & P, gp_Vec & Vu, gp_Vec & Vv);
		%feature("autodoc", "1");
		static		void D2(const Standard_Real U, const Standard_Real V, const Standard_Integer UIndex, const Standard_Integer VIndex, const TColgp_Array2OfPnt &Poles, const TColStd_Array2OfReal &Weights, const TColStd_Array1OfReal &UKnots, const TColStd_Array1OfReal &VKnots, const TColStd_Array1OfInteger &UMults, const TColStd_Array1OfInteger &VMults, const Standard_Integer UDegree, const Standard_Integer VDegree, const Standard_Boolean URat, const Standard_Boolean VRat, const Standard_Boolean UPer, const Standard_Boolean VPer, gp_Pnt & P, gp_Vec & Vu, gp_Vec & Vv, gp_Vec & Vuu, gp_Vec & Vvv, gp_Vec & Vuv);
		%feature("autodoc", "1");
		static		void D3(const Standard_Real U, const Standard_Real V, const Standard_Integer UIndex, const Standard_Integer VIndex, const TColgp_Array2OfPnt &Poles, const TColStd_Array2OfReal &Weights, const TColStd_Array1OfReal &UKnots, const TColStd_Array1OfReal &VKnots, const TColStd_Array1OfInteger &UMults, const TColStd_Array1OfInteger &VMults, const Standard_Integer UDegree, const Standard_Integer VDegree, const Standard_Boolean URat, const Standard_Boolean VRat, const Standard_Boolean UPer, const Standard_Boolean VPer, gp_Pnt & P, gp_Vec & Vu, gp_Vec & Vv, gp_Vec & Vuu, gp_Vec & Vvv, gp_Vec & Vuv, gp_Vec & Vuuu, gp_Vec & Vvvv, gp_Vec & Vuuv, gp_Vec & Vuvv);
		%feature("autodoc", "1");
		static		void DN(const Standard_Real U, const Standard_Real V, const Standard_Integer Nu, const Standard_Integer Nv, const Standard_Integer UIndex, const Standard_Integer VIndex, const TColgp_Array2OfPnt &Poles, const TColStd_Array2OfReal &Weights, const TColStd_Array1OfReal &UKnots, const TColStd_Array1OfReal &VKnots, const TColStd_Array1OfInteger &UMults, const TColStd_Array1OfInteger &VMults, const Standard_Integer UDegree, const Standard_Integer VDegree, const Standard_Boolean URat, const Standard_Boolean VRat, const Standard_Boolean UPer, const Standard_Boolean VPer, gp_Vec & Vn);
		%feature("autodoc", "1");
		static		void Iso(const Standard_Real Param, const Standard_Boolean IsU, const TColgp_Array2OfPnt &Poles, const TColStd_Array2OfReal &Weights, const TColStd_Array1OfReal &Knots, const TColStd_Array1OfInteger &Mults, const Standard_Integer Degree, const Standard_Boolean Periodic, TColgp_Array1OfPnt & CPoles, TColStd_Array1OfReal & CWeights);
		%feature("autodoc", "1");
		static		void Reverse(TColgp_Array2OfPnt & Poles, const Standard_Integer Last, const Standard_Boolean UDirection);
		%feature("autodoc","HomogeneousD0(Standard_Real U, Standard_Real V, Standard_Integer UIndex, Standard_Integer VIndex, const Poles, const Weights, const UKnots, const VKnots, const UMults, const VMults, Standard_Integer UDegree, Standard_Integer VDegree, Standard_Boolean URat, Standard_Boolean VRat, Standard_Boolean UPer, Standard_Boolean VPer) -> Standard_Real");

		static		void HomogeneousD0(const Standard_Real U, const Standard_Real V, const Standard_Integer UIndex, const Standard_Integer VIndex, const TColgp_Array2OfPnt &Poles, const TColStd_Array2OfReal &Weights, const TColStd_Array1OfReal &UKnots, const TColStd_Array1OfReal &VKnots, const TColStd_Array1OfInteger &UMults, const TColStd_Array1OfInteger &VMults, const Standard_Integer UDegree, const Standard_Integer VDegree, const Standard_Boolean URat, const Standard_Boolean VRat, const Standard_Boolean UPer, const Standard_Boolean VPer, Standard_Real &OutValue, gp_Pnt & P);
		%feature("autodoc","HomogeneousD1(Standard_Real U, Standard_Real V, Standard_Integer UIndex, Standard_Integer VIndex, const Poles, const Weights, const UKnots, const VKnots, const UMults, const VMults, Standard_Integer UDegree, Standard_Integer VDegree, Standard_Boolean URat, Standard_Boolean VRat, Standard_Boolean UPer, Standard_Boolean VPer) -> [Standard_Real, Standard_Real, Standard_Real]");

		static		void HomogeneousD1(const Standard_Real U, const Standard_Real V, const Standard_Integer UIndex, const Standard_Integer VIndex, const TColgp_Array2OfPnt &Poles, const TColStd_Array2OfReal &Weights, const TColStd_Array1OfReal &UKnots, const TColStd_Array1OfReal &VKnots, const TColStd_Array1OfInteger &UMults, const TColStd_Array1OfInteger &VMults, const Standard_Integer UDegree, const Standard_Integer VDegree, const Standard_Boolean URat, const Standard_Boolean VRat, const Standard_Boolean UPer, const Standard_Boolean VPer, gp_Pnt & N, gp_Vec & Nu, gp_Vec & Nv, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		static		void Reverse(TColStd_Array2OfReal & Weights, const Standard_Integer Last, const Standard_Boolean UDirection);
		%feature("autodoc", "1");
		static		Standard_Boolean IsRational(const TColStd_Array2OfReal &Weights, const Standard_Integer I1, const Standard_Integer I2, const Standard_Integer J1, const Standard_Integer J2, const Standard_Real Epsilon=0.0);
		%feature("autodoc", "1");
		static		void SetPoles(const TColgp_Array2OfPnt &Poles, TColStd_Array1OfReal & FP, const Standard_Boolean UDirection);
		%feature("autodoc", "1");
		static		void SetPoles(const TColgp_Array2OfPnt &Poles, const TColStd_Array2OfReal &Weights, TColStd_Array1OfReal & FP, const Standard_Boolean UDirection);
		%feature("autodoc", "1");
		static		void GetPoles(const TColStd_Array1OfReal &FP, TColgp_Array2OfPnt & Poles, const Standard_Boolean UDirection);
		%feature("autodoc", "1");
		static		void GetPoles(const TColStd_Array1OfReal &FP, TColgp_Array2OfPnt & Poles, TColStd_Array2OfReal & Weights, const Standard_Boolean UDirection);
		%feature("autodoc","MovePoint(Standard_Real U, Standard_Real V, const Displ, Standard_Integer UIndex1, Standard_Integer UIndex2, Standard_Integer VIndex1, Standard_Integer VIndex2, Standard_Integer UDegree, Standard_Integer VDegree, Standard_Boolean Rational, const Poles, const Weights, const UFlatKnots, const VFlatKnots) -> [Standard_Integer, Standard_Integer, Standard_Integer, Standard_Integer]");

		static		void MovePoint(const Standard_Real U, const Standard_Real V, const gp_Vec Displ, const Standard_Integer UIndex1, const Standard_Integer UIndex2, const Standard_Integer VIndex1, const Standard_Integer VIndex2, const Standard_Integer UDegree, const Standard_Integer VDegree, const Standard_Boolean Rational, const TColgp_Array2OfPnt &Poles, const TColStd_Array2OfReal &Weights, const TColStd_Array1OfReal &UFlatKnots, const TColStd_Array1OfReal &VFlatKnots, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue, TColgp_Array2OfPnt & NewPoles);
		%feature("autodoc", "1");
		static		void InsertKnots(const Standard_Boolean UDirection, const Standard_Integer Degree, const Standard_Boolean Periodic, const TColgp_Array2OfPnt &Poles, const TColStd_Array2OfReal &Weights, const TColStd_Array1OfReal &Knots, const TColStd_Array1OfInteger &Mults, const TColStd_Array1OfReal &AddKnots, const TColStd_Array1OfInteger &AddMults, TColgp_Array2OfPnt & NewPoles, TColStd_Array2OfReal & NewWeights, TColStd_Array1OfReal & NewKnots, TColStd_Array1OfInteger & NewMults, const Standard_Real Epsilon, const Standard_Boolean Add=1);
		%feature("autodoc", "1");
		static		Standard_Boolean RemoveKnot(const Standard_Boolean UDirection, const Standard_Integer Index, const Standard_Integer Mult, const Standard_Integer Degree, const Standard_Boolean Periodic, const TColgp_Array2OfPnt &Poles, const TColStd_Array2OfReal &Weights, const TColStd_Array1OfReal &Knots, const TColStd_Array1OfInteger &Mults, TColgp_Array2OfPnt & NewPoles, TColStd_Array2OfReal & NewWeights, TColStd_Array1OfReal & NewKnots, TColStd_Array1OfInteger & NewMults, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		static		void IncreaseDegree(const Standard_Boolean UDirection, const Standard_Integer Degree, const Standard_Integer NewDegree, const Standard_Boolean Periodic, const TColgp_Array2OfPnt &Poles, const TColStd_Array2OfReal &Weights, const TColStd_Array1OfReal &Knots, const TColStd_Array1OfInteger &Mults, TColgp_Array2OfPnt & NewPoles, TColStd_Array2OfReal & NewWeights, TColStd_Array1OfReal & NewKnots, TColStd_Array1OfInteger & NewMults);
		%feature("autodoc", "1");
		static		void Unperiodize(const Standard_Boolean UDirection, const Standard_Integer Degree, const TColStd_Array1OfInteger &Mults, const TColStd_Array1OfReal &Knots, const TColgp_Array2OfPnt &Poles, const TColStd_Array2OfReal &Weights, TColStd_Array1OfInteger & NewMults, TColStd_Array1OfReal & NewKnots, TColgp_Array2OfPnt & NewPoles, TColStd_Array2OfReal & NewWeights);
		%feature("autodoc", "1");
		static		TColStd_Array2OfReal & NoWeights();
		%feature("autodoc", "1");
		static		void BuildCache(const Standard_Real U, const Standard_Real V, const Standard_Real USpanDomain, const Standard_Real VSpanDomain, const Standard_Boolean UPeriodicFlag, const Standard_Boolean VPeriodicFlag, const Standard_Integer UDegree, const Standard_Integer VDegree, const Standard_Integer UIndex, const Standard_Integer VIndex, const TColStd_Array1OfReal &UFlatKnots, const TColStd_Array1OfReal &VFlatKnots, const TColgp_Array2OfPnt &Poles, const TColStd_Array2OfReal &Weights, TColgp_Array2OfPnt & CachePoles, TColStd_Array2OfReal & CacheWeights);
		%feature("autodoc", "1");
		static		void CacheD0(const Standard_Real U, const Standard_Real V, const Standard_Integer UDegree, const Standard_Integer VDegree, const Standard_Real UCacheParameter, const Standard_Real VCacheParameter, const Standard_Real USpanLenght, const Standard_Real VSpanLength, const TColgp_Array2OfPnt &Poles, const TColStd_Array2OfReal &Weights, gp_Pnt & Point);
		%feature("autodoc", "1");
		static		void CoefsD0(const Standard_Real U, const Standard_Real V, const TColgp_Array2OfPnt &Poles, const TColStd_Array2OfReal &Weights, gp_Pnt & Point);
		%feature("autodoc", "1");
		static		void CacheD1(const Standard_Real U, const Standard_Real V, const Standard_Integer UDegree, const Standard_Integer VDegree, const Standard_Real UCacheParameter, const Standard_Real VCacheParameter, const Standard_Real USpanLenght, const Standard_Real VSpanLength, const TColgp_Array2OfPnt &Poles, const TColStd_Array2OfReal &Weights, gp_Pnt & Point, gp_Vec & VecU, gp_Vec & VecV);
		%feature("autodoc", "1");
		static		void CoefsD1(const Standard_Real U, const Standard_Real V, const TColgp_Array2OfPnt &Poles, const TColStd_Array2OfReal &Weights, gp_Pnt & Point, gp_Vec & VecU, gp_Vec & VecV);
		%feature("autodoc", "1");
		static		void CacheD2(const Standard_Real U, const Standard_Real V, const Standard_Integer UDegree, const Standard_Integer VDegree, const Standard_Real UCacheParameter, const Standard_Real VCacheParameter, const Standard_Real USpanLenght, const Standard_Real VSpanLength, const TColgp_Array2OfPnt &Poles, const TColStd_Array2OfReal &Weights, gp_Pnt & Point, gp_Vec & VecU, gp_Vec & VecV, gp_Vec & VecUU, gp_Vec & VecUV, gp_Vec & VecVV);
		%feature("autodoc", "1");
		static		void CoefsD2(const Standard_Real U, const Standard_Real V, const TColgp_Array2OfPnt &Poles, const TColStd_Array2OfReal &Weights, gp_Pnt & Point, gp_Vec & VecU, gp_Vec & VecV, gp_Vec & VecUU, gp_Vec & VecUV, gp_Vec & VecVV);
		%feature("autodoc", "1");
		static		void PolesCoefficients(const TColgp_Array2OfPnt &Poles, TColgp_Array2OfPnt & CachePoles);
		%feature("autodoc", "1");
		static		void PolesCoefficients(const TColgp_Array2OfPnt &Poles, const TColStd_Array2OfReal &Weights, TColgp_Array2OfPnt & CachePoles, TColStd_Array2OfReal & CacheWeights);
		%feature("autodoc","Resolution(const Poles, const Weights, const UKnots, const VKnots, const UMults, const VMults, Standard_Integer UDegree, Standard_Integer VDegree, Standard_Boolean URat, Standard_Boolean VRat, Standard_Boolean UPer, Standard_Boolean VPer, Standard_Real Tolerance3D) -> [Standard_Real, Standard_Real]");

		static		void Resolution(const TColgp_Array2OfPnt &Poles, const TColStd_Array2OfReal &Weights, const TColStd_Array1OfReal &UKnots, const TColStd_Array1OfReal &VKnots, const TColStd_Array1OfInteger &UMults, const TColStd_Array1OfInteger &VMults, const Standard_Integer UDegree, const Standard_Integer VDegree, const Standard_Boolean URat, const Standard_Boolean VRat, const Standard_Boolean UPer, const Standard_Boolean VPer, const Standard_Real Tolerance3D, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc","Interpolate(Standard_Integer UDegree, Standard_Integer VDegree, const UFlatKnots, const VFlatKnots, const UParameters, const VParameters) -> Standard_Integer");

		static		void Interpolate(const Standard_Integer UDegree, const Standard_Integer VDegree, const TColStd_Array1OfReal &UFlatKnots, const TColStd_Array1OfReal &VFlatKnots, const TColStd_Array1OfReal &UParameters, const TColStd_Array1OfReal &VParameters, TColgp_Array2OfPnt & Poles, TColStd_Array2OfReal & Weights, Standard_Integer &OutValue);
		%feature("autodoc","Interpolate(Standard_Integer UDegree, Standard_Integer VDegree, const UFlatKnots, const VFlatKnots, const UParameters, const VParameters) -> Standard_Integer");

		static		void Interpolate(const Standard_Integer UDegree, const Standard_Integer VDegree, const TColStd_Array1OfReal &UFlatKnots, const TColStd_Array1OfReal &VFlatKnots, const TColStd_Array1OfReal &UParameters, const TColStd_Array1OfReal &VParameters, TColgp_Array2OfPnt & Poles, Standard_Integer &OutValue);

};
%feature("shadow") BSplSLib::~BSplSLib %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BSplSLib {
	void _kill_pointed() {
		delete $self;
	}
};
