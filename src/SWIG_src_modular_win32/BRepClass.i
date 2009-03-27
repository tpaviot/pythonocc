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
%module BRepClass

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


%include BRepClass_dependencies.i


%include BRepClass_headers.i




%nodefaultctor BRepClass_Edge;
class BRepClass_Edge {
	public:
		%feature("autodoc", "1");
		BRepClass_Edge();
		%feature("autodoc", "1");
		BRepClass_Edge(const TopoDS_Edge &E, const TopoDS_Face &F);
		%feature("autodoc", "1");
		TopoDS_Edge & Edge();
		%feature("autodoc", "1");
		const TopoDS_Edge & Edge() const;
		%feature("autodoc", "1");
		TopoDS_Face & Face();
		%feature("autodoc", "1");
		const TopoDS_Face & Face() const;

};
%extend BRepClass_Edge {
	~BRepClass_Edge() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of BRepClass_Edge\n");}
	}
};

%nodefaultctor BRepClass_Intersector;
class BRepClass_Intersector : public Geom2dInt_IntConicCurveOfGInter {
	public:
		%feature("autodoc", "1");
		BRepClass_Intersector();
		%feature("autodoc", "1");
		void Perform(const gp_Lin2d &L, const Standard_Real P, const Standard_Real Tol, const BRepClass_Edge &E);
		%feature("autodoc", "1");
		void LocalGeometry(const BRepClass_Edge &E, const Standard_Real U, gp_Dir2d & T, gp_Dir2d & N, Standard_Real &OutValue) const;

};
%extend BRepClass_Intersector {
	~BRepClass_Intersector() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of BRepClass_Intersector\n");}
	}
};

%nodefaultctor BRepClass_FClass2dOfFClassifier;
class BRepClass_FClass2dOfFClassifier {
	public:
		%feature("autodoc", "1");
		BRepClass_FClass2dOfFClassifier();
		%feature("autodoc", "1");
		void Reset(const gp_Lin2d &L, const Standard_Real P, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Compare(const BRepClass_Edge &E, const TopAbs_Orientation Or);
		%feature("autodoc", "1");
		Standard_Real Parameter() const;
		%feature("autodoc", "1");
		BRepClass_Intersector & Intersector();
		%feature("autodoc", "1");
		Standard_Integer ClosestIntersection() const;
		%feature("autodoc", "1");
		TopAbs_State State() const;
		%feature("autodoc", "1");
		Standard_Boolean IsHeadOrEnd() const;

};
%extend BRepClass_FClass2dOfFClassifier {
	~BRepClass_FClass2dOfFClassifier() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of BRepClass_FClass2dOfFClassifier\n");}
	}
};

%nodefaultctor BRepClass_FClassifier;
class BRepClass_FClassifier {
	public:
		%feature("autodoc", "1");
		BRepClass_FClassifier();
		%feature("autodoc", "1");
		BRepClass_FClassifier(BRepClass_FaceExplorer & F, const gp_Pnt2d &P, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Perform(BRepClass_FaceExplorer & F, const gp_Pnt2d &P, const Standard_Real Tol);
		%feature("autodoc", "1");
		TopAbs_State State() const;
		%feature("autodoc", "1");
		Standard_Boolean Rejected() const;
		%feature("autodoc", "1");
		Standard_Boolean NoWires() const;
		%feature("autodoc", "1");
		const BRepClass_Edge & Edge() const;
		%feature("autodoc", "1");
		Standard_Real EdgeParameter() const;
		%feature("autodoc", "1");
		IntRes2d_Position Position() const;

};
%extend BRepClass_FClassifier {
	~BRepClass_FClassifier() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of BRepClass_FClassifier\n");}
	}
};

%nodefaultctor BRepClass_FaceClassifier;
class BRepClass_FaceClassifier : public BRepClass_FClassifier {
	public:
		%feature("autodoc", "1");
		void Perform(const TopoDS_Face &F, const gp_Pnt2d &P, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Perform(const TopoDS_Face &F, const gp_Pnt &P, const Standard_Real Tol);

};
%extend BRepClass_FaceClassifier {
	~BRepClass_FaceClassifier() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of BRepClass_FaceClassifier\n");}
	}
};

%nodefaultctor BRepClass_FaceExplorer;
class BRepClass_FaceExplorer {
	public:
		%feature("autodoc", "1");
		BRepClass_FaceExplorer(const TopoDS_Face &F);
		%feature("autodoc", "1");
		Standard_Boolean Reject(const gp_Pnt2d &P) const;
		%feature("autodoc", "1");
		Standard_Boolean Segment(const gp_Pnt2d &P, gp_Lin2d & L, Standard_Real &OutValue);
		%feature("autodoc", "1");
		Standard_Boolean OtherSegment(const gp_Pnt2d &P, gp_Lin2d & L, Standard_Real &OutValue);
		%feature("autodoc", "1");
		void InitWires();
		%feature("autodoc", "1");
		Standard_Boolean MoreWires() const;
		%feature("autodoc", "1");
		void NextWire();
		%feature("autodoc", "1");
		Standard_Boolean RejectWire(const gp_Lin2d &L, const Standard_Real Par) const;
		%feature("autodoc", "1");
		void InitEdges();
		%feature("autodoc", "1");
		Standard_Boolean MoreEdges() const;
		%feature("autodoc", "1");
		void NextEdge();
		%feature("autodoc", "1");
		Standard_Boolean RejectEdge(const gp_Lin2d &L, const Standard_Real Par) const;
		%feature("autodoc", "1");
		void CurrentEdge(BRepClass_Edge & E, TopAbs_Orientation & Or) const;

};
%extend BRepClass_FaceExplorer {
	~BRepClass_FaceExplorer() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of BRepClass_FaceExplorer\n");}
	}
};

%nodefaultctor BRepClass_FacePassiveClassifier;
class BRepClass_FacePassiveClassifier {
	public:
		%feature("autodoc", "1");
		BRepClass_FacePassiveClassifier();
		%feature("autodoc", "1");
		void Reset(const gp_Lin2d &L, const Standard_Real P, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Compare(const BRepClass_Edge &E, const TopAbs_Orientation Or);
		%feature("autodoc", "1");
		Standard_Real Parameter() const;
		%feature("autodoc", "1");
		BRepClass_Intersector & Intersector();
		%feature("autodoc", "1");
		Standard_Integer ClosestIntersection() const;
		%feature("autodoc", "1");
		TopAbs_State State() const;
		%feature("autodoc", "1");
		Standard_Boolean IsHeadOrEnd() const;

};
%extend BRepClass_FacePassiveClassifier {
	~BRepClass_FacePassiveClassifier() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of BRepClass_FacePassiveClassifier\n");}
	}
};