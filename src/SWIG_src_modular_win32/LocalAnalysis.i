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
%module LocalAnalysis

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
		~LocalAnalysis_SurfaceContinuity();
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

%nodefaultctor LocalAnalysis;
class LocalAnalysis {
	public:
		%feature("autodoc", "1");
		~LocalAnalysis();
		%feature("autodoc", "1");
		LocalAnalysis();
		%feature("autodoc", "1");
		void Dump(const LocalAnalysis_SurfaceContinuity &surfconti, Standard_OStream & o);
		%feature("autodoc", "1");
		void Dump(const LocalAnalysis_CurveContinuity &curvconti, Standard_OStream & o);

};

%nodefaultctor LocalAnalysis_CurveContinuity;
class LocalAnalysis_CurveContinuity {
	public:
		%feature("autodoc", "1");
		~LocalAnalysis_CurveContinuity();
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