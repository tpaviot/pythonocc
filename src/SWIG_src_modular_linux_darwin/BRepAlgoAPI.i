/*

Copyright 2008-2009 Thomas Paviot (thomas.paviot@free.fr)

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

*/
%module BRepAlgoAPI

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

/*
Standard_Integer & function transformation
*/
%typemap(argout) Standard_Integer &OutValue {
    PyObject *o, *o2, *o3;
    o = PyInt_FromLong(*$1);
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

%typemap(in,numinputs=0) Standard_Integer &OutValue(Standard_Integer temp) {
    $1 = &temp;
}


%include BRepAlgoAPI_dependencies.i


%include BRepAlgoAPI_headers.i




%nodefaultctor BRepAlgoAPI_BooleanOperation;
class BRepAlgoAPI_BooleanOperation : public BRepBuilderAPI_MakeShape {
	public:
		%feature("autodoc", "1");
		void SetOperation(const BOP_Operation anOp);
		%feature("autodoc", "1");
		virtual		void Build();
		%feature("autodoc", "1");
		const TopoDS_Shape & Shape1() const;
		%feature("autodoc", "1");
		const TopoDS_Shape & Shape2() const;
		%feature("autodoc", "1");
		BOP_Operation Operation() const;
		%feature("autodoc", "1");
		Standard_Boolean FuseEdges() const;
		%feature("autodoc", "1");
		void RefineEdges();
		%feature("autodoc", "1");
		Standard_Boolean BuilderCanWork() const;
		%feature("autodoc", "1");
		Standard_Integer ErrorStatus() const;
		%feature("autodoc", "1");
		virtual		const TopTools_ListOfShape & Modified(const TopoDS_Shape &aS);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsDeleted(const TopoDS_Shape &aS);
		%feature("autodoc", "1");
		virtual		const TopTools_ListOfShape & Modified2(const TopoDS_Shape &aS);
		%feature("autodoc", "1");
		virtual		const TopTools_ListOfShape & Generated(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		virtual		Standard_Boolean HasModified() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean HasGenerated() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean HasDeleted() const;
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		const TopTools_ListOfShape & SectionEdges();

};
%extend BRepAlgoAPI_BooleanOperation {
	~BRepAlgoAPI_BooleanOperation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepAlgoAPI_BooleanOperation\n");}
	}
};

%nodefaultctor BRepAlgoAPI_Fuse;
class BRepAlgoAPI_Fuse : public BRepAlgoAPI_BooleanOperation {
	public:
		%feature("autodoc", "1");
		BRepAlgoAPI_Fuse(const TopoDS_Shape &S1, const TopoDS_Shape &S2);
		%feature("autodoc", "1");
		BRepAlgoAPI_Fuse(const TopoDS_Shape &S1, const TopoDS_Shape &S2, const BOPTools_DSFiller &aDSF);

};
%extend BRepAlgoAPI_Fuse {
	~BRepAlgoAPI_Fuse() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepAlgoAPI_Fuse\n");}
	}
};

%nodefaultctor BRepAlgoAPI_Section;
class BRepAlgoAPI_Section : public BRepAlgoAPI_BooleanOperation {
	public:
		%feature("autodoc", "1");
		BRepAlgoAPI_Section(const TopoDS_Shape &S1, const TopoDS_Shape &S2, const BOPTools_DSFiller &aDSF, const Standard_Boolean PerformNow=1);
		%feature("autodoc", "1");
		BRepAlgoAPI_Section(const TopoDS_Shape &Sh1, const TopoDS_Shape &Sh2, const Standard_Boolean PerformNow=1);
		%feature("autodoc", "1");
		BRepAlgoAPI_Section(const TopoDS_Shape &Sh, const gp_Pln &Pl, const Standard_Boolean PerformNow=1);
		%feature("autodoc", "1");
		BRepAlgoAPI_Section(const TopoDS_Shape &Sh, const Handle_Geom_Surface &Sf, const Standard_Boolean PerformNow=1);
		%feature("autodoc", "1");
		BRepAlgoAPI_Section(const Handle_Geom_Surface &Sf, const TopoDS_Shape &Sh, const Standard_Boolean PerformNow=1);
		%feature("autodoc", "1");
		BRepAlgoAPI_Section(const Handle_Geom_Surface &Sf1, const Handle_Geom_Surface &Sf2, const Standard_Boolean PerformNow=1);
		%feature("autodoc", "1");
		void Init1(const TopoDS_Shape &S1);
		%feature("autodoc", "1");
		void Init1(const gp_Pln &Pl);
		%feature("autodoc", "1");
		void Init1(const Handle_Geom_Surface &Sf);
		%feature("autodoc", "1");
		void Init2(const TopoDS_Shape &S2);
		%feature("autodoc", "1");
		void Init2(const gp_Pln &Pl);
		%feature("autodoc", "1");
		void Init2(const Handle_Geom_Surface &Sf);
		%feature("autodoc", "1");
		void Approximation(const Standard_Boolean B);
		%feature("autodoc", "1");
		void ComputePCurveOn1(const Standard_Boolean B);
		%feature("autodoc", "1");
		void ComputePCurveOn2(const Standard_Boolean B);
		%feature("autodoc", "1");
		virtual		void Build();
		%feature("autodoc", "1");
		Standard_Boolean HasAncestorFaceOn1(const TopoDS_Shape &E, TopoDS_Shape & F) const;
		%feature("autodoc", "1");
		Standard_Boolean HasAncestorFaceOn2(const TopoDS_Shape &E, TopoDS_Shape & F) const;
		%feature("autodoc", "1");
		Handle_Geom2d_Curve PCurveOn1(const TopoDS_Shape &E) const;
		%feature("autodoc", "1");
		Handle_Geom2d_Curve PCurveOn2(const TopoDS_Shape &E) const;

};
%extend BRepAlgoAPI_Section {
	~BRepAlgoAPI_Section() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepAlgoAPI_Section\n");}
	}
};

%nodefaultctor BRepAlgoAPI_Cut;
class BRepAlgoAPI_Cut : public BRepAlgoAPI_BooleanOperation {
	public:
		%feature("autodoc", "1");
		BRepAlgoAPI_Cut(const TopoDS_Shape &S1, const TopoDS_Shape &S2);
		%feature("autodoc", "1");
		BRepAlgoAPI_Cut(const TopoDS_Shape &S1, const TopoDS_Shape &S2, const BOPTools_DSFiller &aDSF, const Standard_Boolean bFWD=1);

};
%extend BRepAlgoAPI_Cut {
	~BRepAlgoAPI_Cut() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepAlgoAPI_Cut\n");}
	}
};

%nodefaultctor BRepAlgoAPI_Common;
class BRepAlgoAPI_Common : public BRepAlgoAPI_BooleanOperation {
	public:
		%feature("autodoc", "1");
		BRepAlgoAPI_Common(const TopoDS_Shape &S1, const TopoDS_Shape &S2);
		%feature("autodoc", "1");
		BRepAlgoAPI_Common(const TopoDS_Shape &S1, const TopoDS_Shape &S2, const BOPTools_DSFiller &aDSF);

};
%extend BRepAlgoAPI_Common {
	~BRepAlgoAPI_Common() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepAlgoAPI_Common\n");}
	}
};