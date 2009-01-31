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
		virtual		~BRepAlgoAPI_BooleanOperation();
		%feature("autodoc", "1");
		const TopTools_ListOfShape & SectionEdges();

};

%nodefaultctor BRepAlgoAPI_Fuse;
class BRepAlgoAPI_Fuse : public BRepAlgoAPI_BooleanOperation {
	public:
		%feature("autodoc", "1");
		BRepAlgoAPI_Fuse(const TopoDS_Shape &S1, const TopoDS_Shape &S2);
		%feature("autodoc", "1");
		BRepAlgoAPI_Fuse(const TopoDS_Shape &S1, const TopoDS_Shape &S2, const BOPTools_DSFiller &aDSF);
		%feature("autodoc", "1");
		virtual		~BRepAlgoAPI_Fuse();

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
		%feature("autodoc", "1");
		virtual		~BRepAlgoAPI_Section();

};

%nodefaultctor BRepAlgoAPI_Cut;
class BRepAlgoAPI_Cut : public BRepAlgoAPI_BooleanOperation {
	public:
		%feature("autodoc", "1");
		BRepAlgoAPI_Cut(const TopoDS_Shape &S1, const TopoDS_Shape &S2);
		%feature("autodoc", "1");
		BRepAlgoAPI_Cut(const TopoDS_Shape &S1, const TopoDS_Shape &S2, const BOPTools_DSFiller &aDSF, const Standard_Boolean bFWD=1);
		%feature("autodoc", "1");
		virtual		~BRepAlgoAPI_Cut();

};

%nodefaultctor BRepAlgoAPI_Common;
class BRepAlgoAPI_Common : public BRepAlgoAPI_BooleanOperation {
	public:
		%feature("autodoc", "1");
		BRepAlgoAPI_Common(const TopoDS_Shape &S1, const TopoDS_Shape &S2);
		%feature("autodoc", "1");
		BRepAlgoAPI_Common(const TopoDS_Shape &S1, const TopoDS_Shape &S2, const BOPTools_DSFiller &aDSF);
		%feature("autodoc", "1");
		virtual		~BRepAlgoAPI_Common();

};