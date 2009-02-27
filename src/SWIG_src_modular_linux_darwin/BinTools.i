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
%module BinTools

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


%include BinTools_dependencies.i


%include BinTools_headers.i




%nodefaultctor BinTools_Curve2dSet;
class BinTools_Curve2dSet {
	public:
		%feature("autodoc", "1");
		~BinTools_Curve2dSet();
		%feature("autodoc", "1");
		BinTools_Curve2dSet();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer Add(const Handle_Geom2d_Curve &C);
		%feature("autodoc", "1");
		Handle_Geom2d_Curve Curve2d(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Standard_Integer Index(const Handle_Geom2d_Curve &C) const;
		%feature("autodoc", "1");
		void Write(Standard_OStream & OS) const;
		%feature("autodoc", "1");
		void Read(std::istream & IS);
		%feature("autodoc", "1");
		void WriteCurve2d(const Handle_Geom2d_Curve &C, Standard_OStream & OS);
		%feature("autodoc", "1");
		std::istream & ReadCurve2d(std::istream & IS, Handle_Geom2d_Curve & C);

};

%nodefaultctor BinTools_LocationSet;
class BinTools_LocationSet {
	public:
		%feature("autodoc", "1");
		~BinTools_LocationSet();
		%feature("autodoc", "1");
		BinTools_LocationSet();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer Add(const TopLoc_Location &L);
		%feature("autodoc", "1");
		const TopLoc_Location & Location(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Standard_Integer Index(const TopLoc_Location &L) const;
		%feature("autodoc", "1");
		Standard_Integer NbLocations() const;
		%feature("autodoc", "1");
		void Write(Standard_OStream & OS) const;
		%feature("autodoc", "1");
		void Read(std::istream & IS);

};

%nodefaultctor BinTools;
class BinTools {
	public:
		%feature("autodoc", "1");
		~BinTools();
		%feature("autodoc", "1");
		BinTools();
		%feature("autodoc", "1");
		Standard_OStream & PutReal(Standard_OStream & OS, const Standard_Real theValue);
		%feature("autodoc", "1");
		Standard_OStream & PutInteger(Standard_OStream & OS, const Standard_Integer theValue);
		%feature("autodoc", "1");
		Standard_OStream & PutBool(Standard_OStream & OS, const Standard_Boolean theValue);
		%feature("autodoc", "1");
		Standard_OStream & PutExtChar(Standard_OStream & OS, const Standard_ExtCharacter theValue);
		%feature("autodoc", "1");
		std::istream & GetReal(std::istream & IS, Standard_Real &OutValue);
		%feature("autodoc", "1");
		std::istream & GetInteger(std::istream & IS, Standard_Integer & theValue);
		%feature("autodoc", "1");
		std::istream & GetBool(std::istream & IS, Standard_Boolean & theValue);
		%feature("autodoc", "1");
		std::istream & GetExtChar(std::istream & IS, Standard_ExtCharacter & theValue);

};

%nodefaultctor BinTools_ShapeSet;
class BinTools_ShapeSet {
	public:
		%feature("autodoc", "1");
		BinTools_ShapeSet(const Standard_Boolean isWithTriangles=0);
		%feature("autodoc", "1");
		virtual		void Delete();
		%feature("autodoc", "1");
		virtual		~BinTools_ShapeSet();
		%feature("autodoc", "1");
		void SetFormatNb(const Standard_Integer theFormatNb);
		%feature("autodoc", "1");
		Standard_Integer FormatNb() const;
		%feature("autodoc", "1");
		virtual		void Clear();
		%feature("autodoc", "1");
		Standard_Integer Add(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		const TopoDS_Shape & Shape(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Standard_Integer Index(const TopoDS_Shape &S) const;
		%feature("autodoc", "1");
		const BinTools_LocationSet & Locations() const;
		%feature("autodoc", "1");
		BinTools_LocationSet & ChangeLocations();
		%feature("autodoc", "1");
		Standard_Integer NbShapes() const;
		%feature("autodoc", "1");
		virtual		void Write(Standard_OStream & OS) const;
		%feature("autodoc", "1");
		virtual		void Read(std::istream & IS);
		%feature("autodoc", "1");
		virtual		void Write(const TopoDS_Shape &S, Standard_OStream & OS) const;
		%feature("autodoc", "1");
		virtual		void WriteGeometry(Standard_OStream & OS) const;
		%feature("autodoc", "1");
		virtual		void ReadGeometry(std::istream & IS);
		%feature("autodoc", "1");
		virtual		void Read(TopoDS_Shape & S, std::istream & IS, const Standard_Integer NbShapes) const;
		%feature("autodoc", "1");
		virtual		void WriteGeometry(const TopoDS_Shape &S, Standard_OStream & OS) const;
		%feature("autodoc", "1");
		virtual		void ReadGeometry(const TopAbs_ShapeEnum T, std::istream & IS, TopoDS_Shape & S);
		%feature("autodoc", "1");
		virtual		void AddGeometry(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		virtual		void AddShapes(TopoDS_Shape & S1, const TopoDS_Shape &S2);
		%feature("autodoc", "1");
		void ReadPolygon3D(std::istream & IS);
		%feature("autodoc", "1");
		void WritePolygon3D(Standard_OStream & OS) const;
		%feature("autodoc", "1");
		void ReadTriangulation(std::istream & IS);
		%feature("autodoc", "1");
		void WriteTriangulation(Standard_OStream & OS) const;
		%feature("autodoc", "1");
		void ReadPolygonOnTriangulation(std::istream & IS);
		%feature("autodoc", "1");
		void WritePolygonOnTriangulation(Standard_OStream & OS) const;

};

%nodefaultctor BinTools_SurfaceSet;
class BinTools_SurfaceSet {
	public:
		%feature("autodoc", "1");
		~BinTools_SurfaceSet();
		%feature("autodoc", "1");
		BinTools_SurfaceSet();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer Add(const Handle_Geom_Surface &S);
		%feature("autodoc", "1");
		Handle_Geom_Surface Surface(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Standard_Integer Index(const Handle_Geom_Surface &S) const;
		%feature("autodoc", "1");
		void Write(Standard_OStream & OS) const;
		%feature("autodoc", "1");
		void Read(std::istream & IS);
		%feature("autodoc", "1");
		void WriteSurface(const Handle_Geom_Surface &S, Standard_OStream & OS);
		%feature("autodoc", "1");
		std::istream & ReadSurface(std::istream & IS, Handle_Geom_Surface & S);

};

%nodefaultctor BinTools_CurveSet;
class BinTools_CurveSet {
	public:
		%feature("autodoc", "1");
		~BinTools_CurveSet();
		%feature("autodoc", "1");
		BinTools_CurveSet();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer Add(const Handle_Geom_Curve &C);
		%feature("autodoc", "1");
		Handle_Geom_Curve Curve(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Standard_Integer Index(const Handle_Geom_Curve &C) const;
		%feature("autodoc", "1");
		void Write(Standard_OStream & OS) const;
		%feature("autodoc", "1");
		void Read(std::istream & IS);
		%feature("autodoc", "1");
		void WriteCurve(const Handle_Geom_Curve &C, Standard_OStream & OS);
		%feature("autodoc", "1");
		std::istream & ReadCurve(std::istream & IS, Handle_Geom_Curve & C);

};