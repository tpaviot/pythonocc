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
%module BRepClass3d

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


%include BRepClass3d_dependencies.i


%include BRepClass3d_headers.i




%nodefaultctor Handle_BRepClass3d_DataMapNodeOfMapOfInter;
class Handle_BRepClass3d_DataMapNodeOfMapOfInter : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_BRepClass3d_DataMapNodeOfMapOfInter();
		%feature("autodoc", "1");
		Handle_BRepClass3d_DataMapNodeOfMapOfInter(const Handle_BRepClass3d_DataMapNodeOfMapOfInter &aHandle);
		%feature("autodoc", "1");
		Handle_BRepClass3d_DataMapNodeOfMapOfInter(const BRepClass3d_DataMapNodeOfMapOfInter *anItem);
		%feature("autodoc", "1");
		Handle_BRepClass3d_DataMapNodeOfMapOfInter const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepClass3d_DataMapNodeOfMapOfInter {
	BRepClass3d_DataMapNodeOfMapOfInter* GetObject() {
	return (BRepClass3d_DataMapNodeOfMapOfInter*)$self->Access();
	}
};
%extend Handle_BRepClass3d_DataMapNodeOfMapOfInter {
	~Handle_BRepClass3d_DataMapNodeOfMapOfInter() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_BRepClass3d_DataMapNodeOfMapOfInter\n");}
	}
};

%nodefaultctor BRepClass3d_DataMapIteratorOfMapOfInter;
class BRepClass3d_DataMapIteratorOfMapOfInter : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		BRepClass3d_DataMapIteratorOfMapOfInter();
		%feature("autodoc", "1");
		BRepClass3d_DataMapIteratorOfMapOfInter(const BRepClass3d_MapOfInter &aMap);
		%feature("autodoc", "1");
		void Initialize(const BRepClass3d_MapOfInter &aMap);
		%feature("autodoc", "1");
		const TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		const Standard_Address & Value() const;

};
%extend BRepClass3d_DataMapIteratorOfMapOfInter {
	~BRepClass3d_DataMapIteratorOfMapOfInter() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of BRepClass3d_DataMapIteratorOfMapOfInter\n");}
	}
};

%nodefaultctor BRepClass3d_SClassifier;
class BRepClass3d_SClassifier {
	public:
		%feature("autodoc", "1");
		BRepClass3d_SClassifier();
		%feature("autodoc", "1");
		BRepClass3d_SClassifier(BRepClass3d_SolidExplorer & S, const gp_Pnt &P, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Perform(BRepClass3d_SolidExplorer & S, const gp_Pnt &P, const Standard_Real Tol);
		%feature("autodoc", "1");
		void PerformInfinitePoint(BRepClass3d_SolidExplorer & S, const Standard_Real Tol);
		%feature("autodoc", "1");
		Standard_Boolean Rejected() const;
		%feature("autodoc", "1");
		TopAbs_State State() const;
		%feature("autodoc", "1");
		Standard_Boolean IsOnAFace() const;
		%feature("autodoc", "1");
		TopoDS_Face Face() const;

};
%extend BRepClass3d_SClassifier {
	~BRepClass3d_SClassifier() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of BRepClass3d_SClassifier\n");}
	}
};

%nodefaultctor BRepClass3d_SolidExplorer;
class BRepClass3d_SolidExplorer {
	public:
		%feature("autodoc", "1");
		BRepClass3d_SolidExplorer();
		%feature("autodoc", "1");
		BRepClass3d_SolidExplorer(const BRepClass3d_SolidExplorer &Oth);
		%feature("autodoc", "1");
		BRepClass3d_SolidExplorer(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		virtual		void Delete();
		%feature("autodoc", "1");
		void InitShape(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Reject(const gp_Pnt &P) const;
		%feature("autodoc", "1");
		Standard_Boolean FindAPointInTheFace(const TopoDS_Face &F, gp_Pnt & P, Standard_Real &OutValue);
		%feature("autodoc", "1");
		Standard_Boolean FindAPointInTheFace(const TopoDS_Face &F, gp_Pnt & P, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		Standard_Boolean FindAPointInTheFace(const TopoDS_Face &F, gp_Pnt & P, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		Standard_Boolean FindAPointInTheFace(const TopoDS_Face &F, gp_Pnt & P);
		%feature("autodoc", "1");
		Standard_Boolean FindAPointInTheFace(const TopoDS_Face &F, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		Standard_Boolean PointInTheFace(const TopoDS_Face &F, gp_Pnt & P, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Integer & Index) const;
		%feature("autodoc", "1");
		Standard_Boolean PointInTheFace(const TopoDS_Face &F, gp_Pnt & P, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Integer & Index, const Handle_BRepAdaptor_HSurface &surf, const Standard_Real u1, const Standard_Real v1, const Standard_Real u2, const Standard_Real v2) const;
		%feature("autodoc", "1");
		void InitShell();
		%feature("autodoc", "1");
		Standard_Boolean MoreShell() const;
		%feature("autodoc", "1");
		void NextShell();
		%feature("autodoc", "1");
		TopoDS_Shell CurrentShell() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean RejectShell(const gp_Lin &L) const;
		%feature("autodoc", "1");
		void InitFace();
		%feature("autodoc", "1");
		Standard_Boolean MoreFace() const;
		%feature("autodoc", "1");
		void NextFace();
		%feature("autodoc", "1");
		TopoDS_Face CurrentFace() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean RejectFace(const gp_Lin &L) const;
		%feature("autodoc", "1");
		Standard_Integer Segment(const gp_Pnt &P, gp_Lin & L, Standard_Real &OutValue);
		%feature("autodoc", "1");
		Standard_Integer OtherSegment(const gp_Pnt &P, gp_Lin & L, Standard_Real &OutValue);
		%feature("autodoc", "1");
		Standard_Integer GetFaceSegmentIndex() const;
		%feature("autodoc", "1");
		virtual		void DumpSegment(const gp_Pnt &P, const gp_Lin &L, const Standard_Real Par, const TopAbs_State S) const;
		%feature("autodoc", "1");
		const Bnd_Box & Box() const;
		%feature("autodoc", "1");
		IntCurvesFace_Intersector & Intersector(const TopoDS_Face &F) const;
		%feature("autodoc", "1");
		void Destroy();

};
%extend BRepClass3d_SolidExplorer {
	~BRepClass3d_SolidExplorer() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of BRepClass3d_SolidExplorer\n");}
	}
};

%nodefaultctor BRepClass3d_SolidClassifier;
class BRepClass3d_SolidClassifier : public BRepClass3d_SClassifier {
	public:
		%feature("autodoc", "1");
		BRepClass3d_SolidClassifier();
		%feature("autodoc", "1");
		void Load(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		BRepClass3d_SolidClassifier(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		BRepClass3d_SolidClassifier(const TopoDS_Shape &S, const gp_Pnt &P, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Perform(const gp_Pnt &P, const Standard_Real Tol);
		%feature("autodoc", "1");
		void PerformInfinitePoint(const Standard_Real Tol);
		%feature("autodoc", "1");
		void Destroy();

};
%extend BRepClass3d_SolidClassifier {
	~BRepClass3d_SolidClassifier() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of BRepClass3d_SolidClassifier\n");}
	}
};

%nodefaultctor BRepClass3d_DataMapNodeOfMapOfInter;
class BRepClass3d_DataMapNodeOfMapOfInter : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BRepClass3d_DataMapNodeOfMapOfInter(const TopoDS_Shape &K, const Standard_Address &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		Standard_Address & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepClass3d_DataMapNodeOfMapOfInter {
	Handle_BRepClass3d_DataMapNodeOfMapOfInter GetHandle() {
	return *(Handle_BRepClass3d_DataMapNodeOfMapOfInter*) &$self;
	}
};
%extend BRepClass3d_DataMapNodeOfMapOfInter {
	~BRepClass3d_DataMapNodeOfMapOfInter() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of BRepClass3d_DataMapNodeOfMapOfInter\n");}
	}
};

%nodefaultctor BRepClass3d_SolidPassiveClassifier;
class BRepClass3d_SolidPassiveClassifier {
	public:
		%feature("autodoc", "1");
		BRepClass3d_SolidPassiveClassifier();
		%feature("autodoc", "1");
		void Reset(const gp_Lin &L, const Standard_Real P, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Compare(const TopoDS_Face &F, const TopAbs_Orientation Or);
		%feature("autodoc", "1");
		Standard_Real Parameter() const;
		%feature("autodoc", "1");
		Standard_Boolean HasIntersection() const;
		%feature("autodoc", "1");
		BRepClass3d_Intersector3d & Intersector();
		%feature("autodoc", "1");
		TopAbs_State State() const;

};
%extend BRepClass3d_SolidPassiveClassifier {
	~BRepClass3d_SolidPassiveClassifier() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of BRepClass3d_SolidPassiveClassifier\n");}
	}
};

%nodefaultctor BRepClass3d_MapOfInter;
class BRepClass3d_MapOfInter : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		BRepClass3d_MapOfInter(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		BRepClass3d_MapOfInter & Assign(const BRepClass3d_MapOfInter &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TopoDS_Shape &K, const Standard_Address &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TopoDS_Shape &K);
		%feature("autodoc", "1");
		const Standard_Address & Find(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		const Standard_Address & operator()(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		Standard_Address & ChangeFind(const TopoDS_Shape &K);
		%feature("autodoc", "1");
		Standard_Address & operator()(const TopoDS_Shape &K);

};
%extend BRepClass3d_MapOfInter {
	~BRepClass3d_MapOfInter() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of BRepClass3d_MapOfInter\n");}
	}
};

%nodefaultctor BRepClass3d_Intersector3d;
class BRepClass3d_Intersector3d {
	public:
		%feature("autodoc", "1");
		BRepClass3d_Intersector3d();
		%feature("autodoc", "1");
		void Perform(const gp_Lin &L, const Standard_Real Prm, const Standard_Real Tol, const TopoDS_Face &F);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Boolean HasAPoint() const;
		%feature("autodoc", "1");
		Standard_Real UParameter() const;
		%feature("autodoc", "1");
		Standard_Real VParameter() const;
		%feature("autodoc", "1");
		Standard_Real WParameter() const;
		%feature("autodoc", "1");
		const gp_Pnt & Pnt() const;
		%feature("autodoc", "1");
		IntCurveSurface_TransitionOnCurve Transition() const;
		%feature("autodoc", "1");
		TopAbs_State State() const;
		%feature("autodoc", "1");
		const TopoDS_Face & Face() const;

};
%extend BRepClass3d_Intersector3d {
	~BRepClass3d_Intersector3d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of BRepClass3d_Intersector3d\n");}
	}
};