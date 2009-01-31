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
		~Handle_BRepClass3d_DataMapNodeOfMapOfInter();
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

%nodefaultctor BRepClass3d_DataMapIteratorOfMapOfInter;
class BRepClass3d_DataMapIteratorOfMapOfInter : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		~BRepClass3d_DataMapIteratorOfMapOfInter();
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

%nodefaultctor BRepClass3d_SClassifier;
class BRepClass3d_SClassifier {
	public:
		%feature("autodoc", "1");
		~BRepClass3d_SClassifier();
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
		virtual		~BRepClass3d_SolidExplorer();
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
		%feature("autodoc", "1");
		~BRepClass3d_SolidClassifier();

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
		%feature("autodoc", "1");
		virtual		~BRepClass3d_DataMapNodeOfMapOfInter();

};
%extend BRepClass3d_DataMapNodeOfMapOfInter {
	Handle_BRepClass3d_DataMapNodeOfMapOfInter GetHandle() {
	return *(Handle_BRepClass3d_DataMapNodeOfMapOfInter*) &$self;
	}
};

%nodefaultctor BRepClass3d_SolidPassiveClassifier;
class BRepClass3d_SolidPassiveClassifier {
	public:
		%feature("autodoc", "1");
		~BRepClass3d_SolidPassiveClassifier();
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
		~BRepClass3d_MapOfInter();
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

%nodefaultctor BRepClass3d_Intersector3d;
class BRepClass3d_Intersector3d {
	public:
		%feature("autodoc", "1");
		~BRepClass3d_Intersector3d();
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