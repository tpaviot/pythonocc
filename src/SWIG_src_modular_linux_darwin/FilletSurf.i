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
%module FilletSurf

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


%include FilletSurf_dependencies.i


%include FilletSurf_headers.i


enum FilletSurf_ErrorTypeStatus {
	FilletSurf_EmptyList,
	FilletSurf_EdgeNotG1,
	FilletSurf_FacesNotG1,
	FilletSurf_EdgeNotOnShape,
	FilletSurf_NotSharpEdge,
	FilletSurf_PbFilletCompute,
	};

enum FilletSurf_StatusType {
	FilletSurf_TwoExtremityOnEdge,
	FilletSurf_OneExtremityOnEdge,
	FilletSurf_NoExtremityOnEdge,
	};

enum FilletSurf_StatusDone {
	FilletSurf_IsOk,
	FilletSurf_IsNotOk,
	FilletSurf_IsPartial,
	};



%nodefaultctor FilletSurf_InternalBuilder;
class FilletSurf_InternalBuilder : public ChFi3d_FilBuilder {
	public:
		%feature("autodoc", "1");
		FilletSurf_InternalBuilder(const TopoDS_Shape &S, const ChFi3d_FilletShape FShape=ChFi3d_Polynomial, const Standard_Real Ta=1.0000000000000000208166817117216851329430937767e-2, const Standard_Real Tapp3d=1.00000000000000004792173602385929598312941379845e-4, const Standard_Real Tapp2d=1.00000000000000008180305391403130954586231382564e-5);
		%feature("autodoc", "1");
		Standard_Integer Add(const TopTools_ListOfShape &E, const Standard_Real R);
		%feature("autodoc", "1");
		void Perform();
		%feature("autodoc", "1");
		Standard_Boolean Done() const;
		%feature("autodoc", "1");
		Standard_Integer NbSurface() const;
		%feature("autodoc", "1");
		const Handle_Geom_Surface & SurfaceFillet(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Real TolApp3d(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const TopoDS_Face & SupportFace1(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const TopoDS_Face & SupportFace2(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_Geom_Curve & CurveOnFace1(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_Geom_Curve & CurveOnFace2(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_Geom2d_Curve & PCurveOnFace1(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_Geom2d_Curve & PCurve1OnFillet(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_Geom2d_Curve & PCurveOnFace2(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_Geom2d_Curve & PCurve2OnFillet(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Real FirstParameter() const;
		%feature("autodoc", "1");
		Standard_Real LastParameter() const;
		%feature("autodoc", "1");
		FilletSurf_StatusType StartSectionStatus() const;
		%feature("autodoc", "1");
		FilletSurf_StatusType EndSectionStatus() const;
		%feature("autodoc", "1");
		void Simulate();
		%feature("autodoc", "1");
		Standard_Integer NbSection(const Standard_Integer IndexSurf) const;
		%feature("autodoc", "1");
		void Section(const Standard_Integer IndexSurf, const Standard_Integer IndexSec, Handle_Geom_TrimmedCurve & Circ) const;
		%feature("autodoc", "1");
		virtual		~FilletSurf_InternalBuilder();

};

%nodefaultctor FilletSurf_Builder;
class FilletSurf_Builder {
	public:
		%feature("autodoc", "1");
		~FilletSurf_Builder();
		%feature("autodoc", "1");
		FilletSurf_Builder(const TopoDS_Shape &S, const TopTools_ListOfShape &E, const Standard_Real R, const Standard_Real Ta=1.0000000000000000208166817117216851329430937767e-2, const Standard_Real Tapp3d=1.00000000000000004792173602385929598312941379845e-4, const Standard_Real Tapp2d=1.00000000000000008180305391403130954586231382564e-5);
		%feature("autodoc", "1");
		void Perform();
		%feature("autodoc", "1");
		void Simulate();
		%feature("autodoc", "1");
		FilletSurf_StatusDone IsDone() const;
		%feature("autodoc", "1");
		FilletSurf_ErrorTypeStatus StatusError() const;
		%feature("autodoc", "1");
		Standard_Integer NbSurface() const;
		%feature("autodoc", "1");
		const Handle_Geom_Surface & SurfaceFillet(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Real TolApp3d(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const TopoDS_Face & SupportFace1(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const TopoDS_Face & SupportFace2(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_Geom_Curve & CurveOnFace1(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_Geom_Curve & CurveOnFace2(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_Geom2d_Curve & PCurveOnFace1(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_Geom2d_Curve & PCurve1OnFillet(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_Geom2d_Curve & PCurveOnFace2(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_Geom2d_Curve & PCurve2OnFillet(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Real FirstParameter() const;
		%feature("autodoc", "1");
		Standard_Real LastParameter() const;
		%feature("autodoc", "1");
		FilletSurf_StatusType StartSectionStatus() const;
		%feature("autodoc", "1");
		FilletSurf_StatusType EndSectionStatus() const;
		%feature("autodoc", "1");
		Standard_Integer NbSection(const Standard_Integer IndexSurf) const;
		%feature("autodoc", "1");
		void Section(const Standard_Integer IndexSurf, const Standard_Integer IndexSec, Handle_Geom_TrimmedCurve & Circ) const;

};