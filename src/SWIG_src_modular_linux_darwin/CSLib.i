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
%module CSLib

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


%include CSLib_dependencies.i


%include CSLib_headers.i


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

enum CSLib_DerivativeStatus {
	CSLib_Done,
	CSLib_D1uIsNull,
	CSLib_D1vIsNull,
	CSLib_D1IsNull,
	CSLib_D1uD1vRatioIsNull,
	CSLib_D1vD1uRatioIsNull,
	CSLib_D1uIsParallelD1v,
	};



%nodefaultctor CSLib_NormalPolyDef;
class CSLib_NormalPolyDef : public math_FunctionWithDerivative {
	public:
		%feature("autodoc", "1");
		CSLib_NormalPolyDef(const Standard_Integer k0, const TColStd_Array1OfReal &li);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Value(const Standard_Real X, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Derivative(const Standard_Real X, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Values(const Standard_Real X, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		~CSLib_NormalPolyDef();

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
		void Destroy();
		%feature("autodoc", "1");
		~CSLib_Class2d();

};

%nodefaultctor CSLib;
class CSLib {
	public:
		%feature("autodoc", "1");
		~CSLib();
		%feature("autodoc", "1");
		CSLib();
		%feature("autodoc", "1");
		void Normal(const gp_Vec &D1U, const gp_Vec &D1V, const Standard_Real SinTol, CSLib_DerivativeStatus & Status, gp_Dir & Normal);
		%feature("autodoc", "1");
		void Normal(const gp_Vec &D1U, const gp_Vec &D1V, const gp_Vec &D2U, const gp_Vec &D2V, const gp_Vec &D2UV, const Standard_Real SinTol, Standard_Boolean & Done, CSLib_NormalStatus & Status, gp_Dir & Normal);
		%feature("autodoc", "1");
		void Normal(const gp_Vec &D1U, const gp_Vec &D1V, const Standard_Real MagTol, CSLib_NormalStatus & Status, gp_Dir & Normal);
		%feature("autodoc", "1");
		void Normal(const Standard_Integer MaxOrder, const TColgp_Array2OfVec &DerNUV, const Standard_Real MagTol, const Standard_Real U, const Standard_Real V, const Standard_Real Umin, const Standard_Real Umax, const Standard_Real Vmin, const Standard_Real Vmax, CSLib_NormalStatus & Status, gp_Dir & Normal, Standard_Integer & OrderU, Standard_Integer & OrderV);
		%feature("autodoc", "1");
		gp_Vec DNNUV(const Standard_Integer Nu, const Standard_Integer Nv, const TColgp_Array2OfVec &DerSurf);
		%feature("autodoc", "1");
		gp_Vec DNNUV(const Standard_Integer Nu, const Standard_Integer Nv, const TColgp_Array2OfVec &DerSurf1, const TColgp_Array2OfVec &DerSurf2);
		%feature("autodoc", "1");
		gp_Vec DNNormal(const Standard_Integer Nu, const Standard_Integer Nv, const TColgp_Array2OfVec &DerNUV, const Standard_Integer Iduref=0, const Standard_Integer Idvref=0);

};