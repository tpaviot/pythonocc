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
%module TopTrans

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


%include TopTrans_dependencies.i


%include TopTrans_headers.i




%nodefaultctor TopTrans_CurveTransition;
class TopTrans_CurveTransition {
	public:
		%feature("autodoc", "1");
		~TopTrans_CurveTransition();
		%feature("autodoc", "1");
		TopTrans_CurveTransition();
		%feature("autodoc", "1");
		void Reset(const gp_Dir &Tgt, const gp_Dir &Norm, const Standard_Real Curv);
		%feature("autodoc", "1");
		void Reset(const gp_Dir &Tgt);
		%feature("autodoc", "1");
		void Compare(const Standard_Real Tole, const gp_Dir &Tang, const gp_Dir &Norm, const Standard_Real Curv, const TopAbs_Orientation S, const TopAbs_Orientation Or);
		%feature("autodoc", "1");
		TopAbs_State StateBefore() const;
		%feature("autodoc", "1");
		TopAbs_State StateAfter() const;

};

%nodefaultctor TopTrans_Array2OfOrientation;
class TopTrans_Array2OfOrientation {
	public:
		%feature("autodoc", "1");
		TopTrans_Array2OfOrientation(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		TopTrans_Array2OfOrientation(const TopAbs_Orientation &Item, const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		void Init(const TopAbs_Orientation &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		~TopTrans_Array2OfOrientation();
		%feature("autodoc", "1");
		const TopTrans_Array2OfOrientation & Assign(const TopTrans_Array2OfOrientation &Other);
		%feature("autodoc", "1");
		Standard_Integer ColLength() const;
		%feature("autodoc", "1");
		Standard_Integer RowLength() const;
		%feature("autodoc", "1");
		Standard_Integer LowerCol() const;
		%feature("autodoc", "1");
		Standard_Integer LowerRow() const;
		%feature("autodoc", "1");
		Standard_Integer UpperCol() const;
		%feature("autodoc", "1");
		Standard_Integer UpperRow() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const TopAbs_Orientation &Value);
		%feature("autodoc", "1");
		const TopAbs_Orientation & Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		const TopAbs_Orientation & operator()(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		TopAbs_Orientation & ChangeValue(const Standard_Integer Row, const Standard_Integer Col);
		%feature("autodoc", "1");
		TopAbs_Orientation & operator()(const Standard_Integer Row, const Standard_Integer Col);

};

%nodefaultctor TopTrans_SurfaceTransition;
class TopTrans_SurfaceTransition {
	public:
		%feature("autodoc", "1");
		~TopTrans_SurfaceTransition();
		%feature("autodoc", "1");
		TopTrans_SurfaceTransition();
		%feature("autodoc", "1");
		void Reset(const gp_Dir &Tgt, const gp_Dir &Norm, const gp_Dir &MaxD, const gp_Dir &MinD, const Standard_Real MaxCurv, const Standard_Real MinCurv);
		%feature("autodoc", "1");
		void Reset(const gp_Dir &Tgt, const gp_Dir &Norm);
		%feature("autodoc", "1");
		void Compare(const Standard_Real Tole, const gp_Dir &Norm, const gp_Dir &MaxD, const gp_Dir &MinD, const Standard_Real MaxCurv, const Standard_Real MinCurv, const TopAbs_Orientation S, const TopAbs_Orientation O);
		%feature("autodoc", "1");
		void Compare(const Standard_Real Tole, const gp_Dir &Norm, const TopAbs_Orientation S, const TopAbs_Orientation O);
		%feature("autodoc", "1");
		TopAbs_State StateBefore() const;
		%feature("autodoc", "1");
		TopAbs_State StateAfter() const;
		%feature("autodoc", "1");
		TopAbs_State GetBefore(const TopAbs_Orientation Tran);
		%feature("autodoc", "1");
		TopAbs_State GetAfter(const TopAbs_Orientation Tran);

};