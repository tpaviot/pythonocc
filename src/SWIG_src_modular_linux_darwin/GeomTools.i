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
%module GeomTools

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


%include GeomTools_dependencies.i


%include GeomTools_headers.i




%nodefaultctor Handle_GeomTools_UndefinedTypeHandler;
class Handle_GeomTools_UndefinedTypeHandler : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_GeomTools_UndefinedTypeHandler();
		%feature("autodoc", "1");
		Handle_GeomTools_UndefinedTypeHandler();
		%feature("autodoc", "1");
		Handle_GeomTools_UndefinedTypeHandler(const Handle_GeomTools_UndefinedTypeHandler &aHandle);
		%feature("autodoc", "1");
		Handle_GeomTools_UndefinedTypeHandler(const GeomTools_UndefinedTypeHandler *anItem);
		%feature("autodoc", "1");
		Handle_GeomTools_UndefinedTypeHandler const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GeomTools_UndefinedTypeHandler {
	GeomTools_UndefinedTypeHandler* GetObject() {
	return (GeomTools_UndefinedTypeHandler*)$self->Access();
	}
};

%nodefaultctor GeomTools_Curve2dSet;
class GeomTools_Curve2dSet {
	public:
		%feature("autodoc", "1");
		~GeomTools_Curve2dSet();
		%feature("autodoc", "1");
		GeomTools_Curve2dSet();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer Add(const Handle_Geom2d_Curve &C);
		%feature("autodoc", "1");
		Handle_Geom2d_Curve Curve2d(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Standard_Integer Index(const Handle_Geom2d_Curve &C) const;
		%feature("autodoc", "1");
		void Dump(Standard_OStream & OS) const;
		%feature("autodoc", "1");
		void Write(Standard_OStream & OS) const;
		%feature("autodoc", "1");
		void Read(std::istream & IS);
		%feature("autodoc", "1");
		void PrintCurve2d(const Handle_Geom2d_Curve &C, Standard_OStream & OS, const Standard_Boolean compact=0);
		%feature("autodoc", "1");
		std::istream & ReadCurve2d(std::istream & IS, Handle_Geom2d_Curve & C);
		%feature("autodoc", "1");
		void SetProgress(const Handle_Message_ProgressIndicator &PR);
		%feature("autodoc", "1");
		Handle_Message_ProgressIndicator GetProgress() const;

};

%nodefaultctor GeomTools_CurveSet;
class GeomTools_CurveSet {
	public:
		%feature("autodoc", "1");
		~GeomTools_CurveSet();
		%feature("autodoc", "1");
		GeomTools_CurveSet();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer Add(const Handle_Geom_Curve &C);
		%feature("autodoc", "1");
		Handle_Geom_Curve Curve(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Standard_Integer Index(const Handle_Geom_Curve &C) const;
		%feature("autodoc", "1");
		void Dump(Standard_OStream & OS) const;
		%feature("autodoc", "1");
		void Write(Standard_OStream & OS) const;
		%feature("autodoc", "1");
		void Read(std::istream & IS);
		%feature("autodoc", "1");
		void PrintCurve(const Handle_Geom_Curve &C, Standard_OStream & OS, const Standard_Boolean compact=0);
		%feature("autodoc", "1");
		std::istream & ReadCurve(std::istream & IS, Handle_Geom_Curve & C);
		%feature("autodoc", "1");
		void SetProgress(const Handle_Message_ProgressIndicator &PR);
		%feature("autodoc", "1");
		Handle_Message_ProgressIndicator GetProgress() const;

};

%nodefaultctor GeomTools;
class GeomTools {
	public:
		%feature("autodoc", "1");
		~GeomTools();
		%feature("autodoc", "1");
		GeomTools();
		%feature("autodoc", "1");
		void Dump(const Handle_Geom_Surface &S, Standard_OStream & OS);
		%feature("autodoc", "1");
		void Write(const Handle_Geom_Surface &S, Standard_OStream & OS);
		%feature("autodoc", "1");
		void Read(Handle_Geom_Surface & S, std::istream & IS);
		%feature("autodoc", "1");
		void Dump(const Handle_Geom_Curve &C, Standard_OStream & OS);
		%feature("autodoc", "1");
		void Write(const Handle_Geom_Curve &C, Standard_OStream & OS);
		%feature("autodoc", "1");
		void Read(Handle_Geom_Curve & C, std::istream & IS);
		%feature("autodoc", "1");
		void Dump(const Handle_Geom2d_Curve &C, Standard_OStream & OS);
		%feature("autodoc", "1");
		void Write(const Handle_Geom2d_Curve &C, Standard_OStream & OS);
		%feature("autodoc", "1");
		void Read(Handle_Geom2d_Curve & C, std::istream & IS);
		%feature("autodoc", "1");
		void SetUndefinedTypeHandler(const Handle_GeomTools_UndefinedTypeHandler &aHandler);
		%feature("autodoc", "1");
		Handle_GeomTools_UndefinedTypeHandler GetUndefinedTypeHandler();

};

%nodefaultctor GeomTools_SurfaceSet;
class GeomTools_SurfaceSet {
	public:
		%feature("autodoc", "1");
		~GeomTools_SurfaceSet();
		%feature("autodoc", "1");
		GeomTools_SurfaceSet();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer Add(const Handle_Geom_Surface &S);
		%feature("autodoc", "1");
		Handle_Geom_Surface Surface(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Standard_Integer Index(const Handle_Geom_Surface &S) const;
		%feature("autodoc", "1");
		void Dump(Standard_OStream & OS) const;
		%feature("autodoc", "1");
		void Write(Standard_OStream & OS) const;
		%feature("autodoc", "1");
		void Read(std::istream & IS);
		%feature("autodoc", "1");
		void PrintSurface(const Handle_Geom_Surface &S, Standard_OStream & OS, const Standard_Boolean compact=0);
		%feature("autodoc", "1");
		std::istream & ReadSurface(std::istream & IS, Handle_Geom_Surface & S);
		%feature("autodoc", "1");
		void SetProgress(const Handle_Message_ProgressIndicator &PR);
		%feature("autodoc", "1");
		Handle_Message_ProgressIndicator GetProgress() const;

};

%nodefaultctor GeomTools_UndefinedTypeHandler;
class GeomTools_UndefinedTypeHandler : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		GeomTools_UndefinedTypeHandler();
		%feature("autodoc", "1");
		virtual		void PrintCurve(const Handle_Geom_Curve &C, Standard_OStream & OS, const Standard_Boolean compact=0) const;
		%feature("autodoc", "1");
		virtual		std::istream & ReadCurve(const Standard_Integer ctype, std::istream & IS, Handle_Geom_Curve & C) const;
		%feature("autodoc", "1");
		virtual		void PrintCurve2d(const Handle_Geom2d_Curve &C, Standard_OStream & OS, const Standard_Boolean compact=0) const;
		%feature("autodoc", "1");
		virtual		std::istream & ReadCurve2d(const Standard_Integer ctype, std::istream & IS, Handle_Geom2d_Curve & C) const;
		%feature("autodoc", "1");
		virtual		void PrintSurface(const Handle_Geom_Surface &S, Standard_OStream & OS, const Standard_Boolean compact=0) const;
		%feature("autodoc", "1");
		virtual		std::istream & ReadSurface(const Standard_Integer ctype, std::istream & IS, Handle_Geom_Surface & S) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~GeomTools_UndefinedTypeHandler();

};
%extend GeomTools_UndefinedTypeHandler {
	Handle_GeomTools_UndefinedTypeHandler GetHandle() {
	return *(Handle_GeomTools_UndefinedTypeHandler*) &$self;
	}
};