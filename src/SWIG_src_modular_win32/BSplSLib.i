/*
##Copyright 2008-2009 Thomas Paviot
##
##thomas.paviot@free.fr
##
##pythonOCC is a computer program whose purpose is to provide a complete set
##of python bindings for OpenCascade library.
##
##This software is governed by the CeCILL license under French law and
##abiding by the rules of distribution of free software.  You can  use, 
##modify and/ or redistribute the software under the terms of the CeCILL
##license as circulated by CEA, CNRS and INRIA at the following URL
##"http://www.cecill.info". 
##
##As a counterpart to the access to the source code and  rights to copy,
##modify and redistribute granted by the license, users are provided only
##with a limited warranty  and the software's author,  the holder of the
##economic rights,  and the successive licensors  have only  limited
##liability. 
##
##In this respect, the user's attention is drawn to the risks associated
##with loading,  using,  modifying and/or developing or reproducing the
##software by the user in light of its specific status of free software,
##that may mean  that it is complicated to manipulate,  and  that  also
##therefore means  that it is reserved for developers  and  experienced
##professionals having in-depth computer knowledge. Users are therefore
##encouraged to load and test the software's suitability as regards their
##requirements in conditions enabling the security of their systems and/or 
##data to be ensured and,  more generally, to use and operate it in the 
##same conditions as regards security. 
##
##The fact that you are presently reading this means that you have had
##knowledge of the CeCILL license and that you accept its terms.
*/
%module BSplSLib

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


%include BSplSLib_dependencies.i


%include BSplSLib_headers.i




%nodefaultctor BSplSLib;
class BSplSLib {
	public:
		%feature("autodoc", "1");
		~BSplSLib();
		%feature("autodoc", "1");
		BSplSLib();
		%feature("autodoc", "1");
		void RationalDerivative(const Standard_Integer UDeg, const Standard_Integer VDeg, const Standard_Integer N, const Standard_Integer M, Standard_Real &OutValue, Standard_Real &OutValue, const Standard_Boolean All=1);
		%feature("autodoc", "1");
		void D0(const Standard_Real U, const Standard_Real V, const Standard_Integer UIndex, const Standard_Integer VIndex, const TColgp_Array2OfPnt &Poles, const TColStd_Array2OfReal &Weights, const TColStd_Array1OfReal &UKnots, const TColStd_Array1OfReal &VKnots, const TColStd_Array1OfInteger &UMults, const TColStd_Array1OfInteger &VMults, const Standard_Integer UDegree, const Standard_Integer VDegree, const Standard_Boolean URat, const Standard_Boolean VRat, const Standard_Boolean UPer, const Standard_Boolean VPer, gp_Pnt & P);
		%feature("autodoc", "1");
		void D1(const Standard_Real U, const Standard_Real V, const Standard_Integer UIndex, const Standard_Integer VIndex, const TColgp_Array2OfPnt &Poles, const TColStd_Array2OfReal &Weights, const TColStd_Array1OfReal &UKnots, const TColStd_Array1OfReal &VKnots, const TColStd_Array1OfInteger &UMults, const TColStd_Array1OfInteger &VMults, const Standard_Integer Degree, const Standard_Integer VDegree, const Standard_Boolean URat, const Standard_Boolean VRat, const Standard_Boolean UPer, const Standard_Boolean VPer, gp_Pnt & P, gp_Vec & Vu, gp_Vec & Vv);
		%feature("autodoc", "1");
		void D2(const Standard_Real U, const Standard_Real V, const Standard_Integer UIndex, const Standard_Integer VIndex, const TColgp_Array2OfPnt &Poles, const TColStd_Array2OfReal &Weights, const TColStd_Array1OfReal &UKnots, const TColStd_Array1OfReal &VKnots, const TColStd_Array1OfInteger &UMults, const TColStd_Array1OfInteger &VMults, const Standard_Integer UDegree, const Standard_Integer VDegree, const Standard_Boolean URat, const Standard_Boolean VRat, const Standard_Boolean UPer, const Standard_Boolean VPer, gp_Pnt & P, gp_Vec & Vu, gp_Vec & Vv, gp_Vec & Vuu, gp_Vec & Vvv, gp_Vec & Vuv);
		%feature("autodoc", "1");
		void D3(const Standard_Real U, const Standard_Real V, const Standard_Integer UIndex, const Standard_Integer VIndex, const TColgp_Array2OfPnt &Poles, const TColStd_Array2OfReal &Weights, const TColStd_Array1OfReal &UKnots, const TColStd_Array1OfReal &VKnots, const TColStd_Array1OfInteger &UMults, const TColStd_Array1OfInteger &VMults, const Standard_Integer UDegree, const Standard_Integer VDegree, const Standard_Boolean URat, const Standard_Boolean VRat, const Standard_Boolean UPer, const Standard_Boolean VPer, gp_Pnt & P, gp_Vec & Vu, gp_Vec & Vv, gp_Vec & Vuu, gp_Vec & Vvv, gp_Vec & Vuv, gp_Vec & Vuuu, gp_Vec & Vvvv, gp_Vec & Vuuv, gp_Vec & Vuvv);
		%feature("autodoc", "1");
		void DN(const Standard_Real U, const Standard_Real V, const Standard_Integer Nu, const Standard_Integer Nv, const Standard_Integer UIndex, const Standard_Integer VIndex, const TColgp_Array2OfPnt &Poles, const TColStd_Array2OfReal &Weights, const TColStd_Array1OfReal &UKnots, const TColStd_Array1OfReal &VKnots, const TColStd_Array1OfInteger &UMults, const TColStd_Array1OfInteger &VMults, const Standard_Integer UDegree, const Standard_Integer VDegree, const Standard_Boolean URat, const Standard_Boolean VRat, const Standard_Boolean UPer, const Standard_Boolean VPer, gp_Vec & Vn);
		%feature("autodoc", "1");
		void Iso(const Standard_Real Param, const Standard_Boolean IsU, const TColgp_Array2OfPnt &Poles, const TColStd_Array2OfReal &Weights, const TColStd_Array1OfReal &Knots, const TColStd_Array1OfInteger &Mults, const Standard_Integer Degree, const Standard_Boolean Periodic, TColgp_Array1OfPnt & CPoles, TColStd_Array1OfReal & CWeights);
		%feature("autodoc", "1");
		void Reverse(TColgp_Array2OfPnt & Poles, const Standard_Integer Last, const Standard_Boolean UDirection);
		%feature("autodoc", "1");
		void HomogeneousD0(const Standard_Real U, const Standard_Real V, const Standard_Integer UIndex, const Standard_Integer VIndex, const TColgp_Array2OfPnt &Poles, const TColStd_Array2OfReal &Weights, const TColStd_Array1OfReal &UKnots, const TColStd_Array1OfReal &VKnots, const TColStd_Array1OfInteger &UMults, const TColStd_Array1OfInteger &VMults, const Standard_Integer UDegree, const Standard_Integer VDegree, const Standard_Boolean URat, const Standard_Boolean VRat, const Standard_Boolean UPer, const Standard_Boolean VPer, Standard_Real &OutValue, gp_Pnt & P);
		%feature("autodoc", "1");
		void HomogeneousD1(const Standard_Real U, const Standard_Real V, const Standard_Integer UIndex, const Standard_Integer VIndex, const TColgp_Array2OfPnt &Poles, const TColStd_Array2OfReal &Weights, const TColStd_Array1OfReal &UKnots, const TColStd_Array1OfReal &VKnots, const TColStd_Array1OfInteger &UMults, const TColStd_Array1OfInteger &VMults, const Standard_Integer UDegree, const Standard_Integer VDegree, const Standard_Boolean URat, const Standard_Boolean VRat, const Standard_Boolean UPer, const Standard_Boolean VPer, gp_Pnt & N, gp_Vec & Nu, gp_Vec & Nv, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		void Reverse(TColStd_Array2OfReal & Weights, const Standard_Integer Last, const Standard_Boolean UDirection);
		%feature("autodoc", "1");
		Standard_Boolean IsRational(const TColStd_Array2OfReal &Weights, const Standard_Integer I1, const Standard_Integer I2, const Standard_Integer J1, const Standard_Integer J2, const Standard_Real Epsilon=0.0);
		%feature("autodoc", "1");
		void SetPoles(const TColgp_Array2OfPnt &Poles, TColStd_Array1OfReal & FP, const Standard_Boolean UDirection);
		%feature("autodoc", "1");
		void SetPoles(const TColgp_Array2OfPnt &Poles, const TColStd_Array2OfReal &Weights, TColStd_Array1OfReal & FP, const Standard_Boolean UDirection);
		%feature("autodoc", "1");
		void GetPoles(const TColStd_Array1OfReal &FP, TColgp_Array2OfPnt & Poles, const Standard_Boolean UDirection);
		%feature("autodoc", "1");
		void GetPoles(const TColStd_Array1OfReal &FP, TColgp_Array2OfPnt & Poles, TColStd_Array2OfReal & Weights, const Standard_Boolean UDirection);
		%feature("autodoc", "1");
		void MovePoint(const Standard_Real U, const Standard_Real V, const gp_Vec &Displ, const Standard_Integer UIndex1, const Standard_Integer UIndex2, const Standard_Integer VIndex1, const Standard_Integer VIndex2, const Standard_Integer UDegree, const Standard_Integer VDegree, const Standard_Boolean Rational, const TColgp_Array2OfPnt &Poles, const TColStd_Array2OfReal &Weights, const TColStd_Array1OfReal &UFlatKnots, const TColStd_Array1OfReal &VFlatKnots, Standard_Integer & UFirstIndex, Standard_Integer & ULastIndex, Standard_Integer & VFirstIndex, Standard_Integer & VLastIndex, TColgp_Array2OfPnt & NewPoles);
		%feature("autodoc", "1");
		void InsertKnots(const Standard_Boolean UDirection, const Standard_Integer Degree, const Standard_Boolean Periodic, const TColgp_Array2OfPnt &Poles, const TColStd_Array2OfReal &Weights, const TColStd_Array1OfReal &Knots, const TColStd_Array1OfInteger &Mults, const TColStd_Array1OfReal &AddKnots, const TColStd_Array1OfInteger &AddMults, TColgp_Array2OfPnt & NewPoles, TColStd_Array2OfReal & NewWeights, TColStd_Array1OfReal & NewKnots, TColStd_Array1OfInteger & NewMults, const Standard_Real Epsilon, const Standard_Boolean Add=1);
		%feature("autodoc", "1");
		Standard_Boolean RemoveKnot(const Standard_Boolean UDirection, const Standard_Integer Index, const Standard_Integer Mult, const Standard_Integer Degree, const Standard_Boolean Periodic, const TColgp_Array2OfPnt &Poles, const TColStd_Array2OfReal &Weights, const TColStd_Array1OfReal &Knots, const TColStd_Array1OfInteger &Mults, TColgp_Array2OfPnt & NewPoles, TColStd_Array2OfReal & NewWeights, TColStd_Array1OfReal & NewKnots, TColStd_Array1OfInteger & NewMults, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		void IncreaseDegree(const Standard_Boolean UDirection, const Standard_Integer Degree, const Standard_Integer NewDegree, const Standard_Boolean Periodic, const TColgp_Array2OfPnt &Poles, const TColStd_Array2OfReal &Weights, const TColStd_Array1OfReal &Knots, const TColStd_Array1OfInteger &Mults, TColgp_Array2OfPnt & NewPoles, TColStd_Array2OfReal & NewWeights, TColStd_Array1OfReal & NewKnots, TColStd_Array1OfInteger & NewMults);
		%feature("autodoc", "1");
		void Unperiodize(const Standard_Boolean UDirection, const Standard_Integer Degree, const TColStd_Array1OfInteger &Mults, const TColStd_Array1OfReal &Knots, const TColgp_Array2OfPnt &Poles, const TColStd_Array2OfReal &Weights, TColStd_Array1OfInteger & NewMults, TColStd_Array1OfReal & NewKnots, TColgp_Array2OfPnt & NewPoles, TColStd_Array2OfReal & NewWeights);
		%feature("autodoc", "1");
		TColStd_Array2OfReal & NoWeights();
		%feature("autodoc", "1");
		void BuildCache(const Standard_Real U, const Standard_Real V, const Standard_Real USpanDomain, const Standard_Real VSpanDomain, const Standard_Boolean UPeriodicFlag, const Standard_Boolean VPeriodicFlag, const Standard_Integer UDegree, const Standard_Integer VDegree, const Standard_Integer UIndex, const Standard_Integer VIndex, const TColStd_Array1OfReal &UFlatKnots, const TColStd_Array1OfReal &VFlatKnots, const TColgp_Array2OfPnt &Poles, const TColStd_Array2OfReal &Weights, TColgp_Array2OfPnt & CachePoles, TColStd_Array2OfReal & CacheWeights);
		%feature("autodoc", "1");
		void CacheD0(const Standard_Real U, const Standard_Real V, const Standard_Integer UDegree, const Standard_Integer VDegree, const Standard_Real UCacheParameter, const Standard_Real VCacheParameter, const Standard_Real USpanLenght, const Standard_Real VSpanLength, const TColgp_Array2OfPnt &Poles, const TColStd_Array2OfReal &Weights, gp_Pnt & Point);
		%feature("autodoc", "1");
		void CoefsD0(const Standard_Real U, const Standard_Real V, const TColgp_Array2OfPnt &Poles, const TColStd_Array2OfReal &Weights, gp_Pnt & Point);
		%feature("autodoc", "1");
		void CacheD1(const Standard_Real U, const Standard_Real V, const Standard_Integer UDegree, const Standard_Integer VDegree, const Standard_Real UCacheParameter, const Standard_Real VCacheParameter, const Standard_Real USpanLenght, const Standard_Real VSpanLength, const TColgp_Array2OfPnt &Poles, const TColStd_Array2OfReal &Weights, gp_Pnt & Point, gp_Vec & VecU, gp_Vec & VecV);
		%feature("autodoc", "1");
		void CoefsD1(const Standard_Real U, const Standard_Real V, const TColgp_Array2OfPnt &Poles, const TColStd_Array2OfReal &Weights, gp_Pnt & Point, gp_Vec & VecU, gp_Vec & VecV);
		%feature("autodoc", "1");
		void CacheD2(const Standard_Real U, const Standard_Real V, const Standard_Integer UDegree, const Standard_Integer VDegree, const Standard_Real UCacheParameter, const Standard_Real VCacheParameter, const Standard_Real USpanLenght, const Standard_Real VSpanLength, const TColgp_Array2OfPnt &Poles, const TColStd_Array2OfReal &Weights, gp_Pnt & Point, gp_Vec & VecU, gp_Vec & VecV, gp_Vec & VecUU, gp_Vec & VecUV, gp_Vec & VecVV);
		%feature("autodoc", "1");
		void CoefsD2(const Standard_Real U, const Standard_Real V, const TColgp_Array2OfPnt &Poles, const TColStd_Array2OfReal &Weights, gp_Pnt & Point, gp_Vec & VecU, gp_Vec & VecV, gp_Vec & VecUU, gp_Vec & VecUV, gp_Vec & VecVV);
		%feature("autodoc", "1");
		void PolesCoefficients(const TColgp_Array2OfPnt &Poles, TColgp_Array2OfPnt & CachePoles);
		%feature("autodoc", "1");
		void PolesCoefficients(const TColgp_Array2OfPnt &Poles, const TColStd_Array2OfReal &Weights, TColgp_Array2OfPnt & CachePoles, TColStd_Array2OfReal & CacheWeights);
		%feature("autodoc", "1");
		void Resolution(const TColgp_Array2OfPnt &Poles, const TColStd_Array2OfReal &Weights, const TColStd_Array1OfReal &UKnots, const TColStd_Array1OfReal &VKnots, const TColStd_Array1OfInteger &UMults, const TColStd_Array1OfInteger &VMults, const Standard_Integer UDegree, const Standard_Integer VDegree, const Standard_Boolean URat, const Standard_Boolean VRat, const Standard_Boolean UPer, const Standard_Boolean VPer, const Standard_Real Tolerance3D, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		void Interpolate(const Standard_Integer UDegree, const Standard_Integer VDegree, const TColStd_Array1OfReal &UFlatKnots, const TColStd_Array1OfReal &VFlatKnots, const TColStd_Array1OfReal &UParameters, const TColStd_Array1OfReal &VParameters, TColgp_Array2OfPnt & Poles, TColStd_Array2OfReal & Weights, Standard_Integer & InversionProblem);
		%feature("autodoc", "1");
		void Interpolate(const Standard_Integer UDegree, const Standard_Integer VDegree, const TColStd_Array1OfReal &UFlatKnots, const TColStd_Array1OfReal &VFlatKnots, const TColStd_Array1OfReal &UParameters, const TColStd_Array1OfReal &VParameters, TColgp_Array2OfPnt & Poles, Standard_Integer & InversionProblem);

};