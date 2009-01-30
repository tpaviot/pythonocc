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
%module BRepGProp

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


%include BRepGProp_dependencies.i


%include BRepGProp_headers.i




%nodefaultctor BRepGProp_Sinert;
class BRepGProp_Sinert : public GProp_GProps {
	public:
		%feature("autodoc", "1");
		~BRepGProp_Sinert();
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

%nodefaultctor BRepGProp;
class BRepGProp {
	public:
		%feature("autodoc", "1");
		~BRepGProp();
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

%nodefaultctor BRepGProp_Vinert;
class BRepGProp_Vinert : public GProp_GProps {
	public:
		%feature("autodoc", "1");
		~BRepGProp_Vinert();
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

%nodefaultctor BRepGProp_Cinert;
class BRepGProp_Cinert : public GProp_GProps {
	public:
		%feature("autodoc", "1");
		~BRepGProp_Cinert();
		%feature("autodoc", "1");
		BRepGProp_Cinert();
		%feature("autodoc", "1");
		BRepGProp_Cinert(const BRepAdaptor_Curve &C, const gp_Pnt &CLocation);
		%feature("autodoc", "1");
		void SetLocation(const gp_Pnt &CLocation);
		%feature("autodoc", "1");
		void Perform(const BRepAdaptor_Curve &C);

};

%nodefaultctor BRepGProp_Domain;
class BRepGProp_Domain {
	public:
		%feature("autodoc", "1");
		~BRepGProp_Domain();
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

%nodefaultctor BRepGProp_TFunctionOfVinertGK;
class BRepGProp_TFunctionOfVinertGK : public math_Function {
	public:
		%feature("autodoc", "1");
		~BRepGProp_TFunctionOfVinertGK();
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
		%feature("autodoc", "1");
		virtual		Standard_Boolean Value(const Standard_Real X, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Integer GetStateNumber();

};

%nodefaultctor BRepGProp_Face;
class BRepGProp_Face {
	public:
		%feature("autodoc", "1");
		~BRepGProp_Face();
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
		%feature("autodoc", "1");
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

%nodefaultctor BRepGProp_EdgeTool;
class BRepGProp_EdgeTool {
	public:
		%feature("autodoc", "1");
		~BRepGProp_EdgeTool();
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

%nodefaultctor BRepGProp_UFunctionOfVinertGK;
class BRepGProp_UFunctionOfVinertGK : public math_Function {
	public:
		%feature("autodoc", "1");
		~BRepGProp_UFunctionOfVinertGK();
		%feature("autodoc", "1");
		BRepGProp_UFunctionOfVinertGK(const BRepGProp_Face &theSurface, const gp_Pnt &theVertex, const Standard_Boolean IsByPoint, const Standard_Address theCoeffs);
		%feature("autodoc", "1");
		void SetValueType(const GProp_ValueType theType);
		%feature("autodoc", "1");
		void SetVParam(const Standard_Real theVParam);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Value(const Standard_Real X, Standard_Real &OutValue);

};