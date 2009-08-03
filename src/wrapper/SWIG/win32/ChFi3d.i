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
%module ChFi3d

%include ChFi3d_renames.i

%include typemaps.i
%include cmalloc.i
%include cpointer.i
%include carrays.i
%include exception.i
%include std_list.i
%include std_string.i
%include <python/std_basic_string.i>

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

/*
Renaming operator = that can't be wrapped in Python
*/
%rename(Set) *::operator=;


%include ChFi3d_dependencies.i


%include ChFi3d_headers.i


enum ChFi3d_FilletShape {
	ChFi3d_Rational,
	ChFi3d_QuasiAngular,
	ChFi3d_Polynomial,
	};



%nodefaultctor ChFi3d;
class ChFi3d {
	public:
		%feature("autodoc", "1");
		ChFi3d();
		%feature("autodoc", "1");
		Standard_Integer ConcaveSide(const BRepAdaptor_Surface &S1, const BRepAdaptor_Surface &S2, const TopoDS_Edge &E, TopAbs_Orientation & Or1, TopAbs_Orientation & Or2);
		%feature("autodoc", "1");
		Standard_Integer NextSide(TopAbs_Orientation & Or1, TopAbs_Orientation & Or2, const TopAbs_Orientation OrSave1, const TopAbs_Orientation OrSave2, const Standard_Integer ChoixSauv);
		%feature("autodoc", "1");
		void NextSide(TopAbs_Orientation & Or, const TopAbs_Orientation OrSave, const TopAbs_Orientation OrFace);
		%feature("autodoc", "1");
		Standard_Boolean SameSide(const TopAbs_Orientation Or, const TopAbs_Orientation OrSave1, const TopAbs_Orientation OrSave2, const TopAbs_Orientation OrFace1, const TopAbs_Orientation OrFace2);

};
%extend ChFi3d {
	~ChFi3d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of ChFi3d\n");}
	}
};


%nodefaultctor ChFi3d_Builder;
class ChFi3d_Builder {
	public:
		%feature("autodoc", "1");
		virtual		void Delete();
		%feature("autodoc", "1");
		void SetParams(const Standard_Real Tang, const Standard_Real Tesp, const Standard_Real T2d, const Standard_Real TApp3d, const Standard_Real TolApp2d, const Standard_Real Fleche);
		%feature("autodoc", "1");
		void SetContinuity(const GeomAbs_Shape InternalContinuity, const Standard_Real AngularTolerance);
		%feature("autodoc", "1");
		void Remove(const TopoDS_Edge &E);
		%feature("autodoc", "1");
		Standard_Integer Contains(const TopoDS_Edge &E) const;
		%feature("autodoc", "1");
		Standard_Integer Contains(const TopoDS_Edge &E, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		Standard_Integer NbElements() const;
		%feature("autodoc", "1");
		Handle_ChFiDS_Spine Value(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Standard_Real Length(const Standard_Integer IC) const;
		%feature("autodoc", "1");
		TopoDS_Vertex FirstVertex(const Standard_Integer IC) const;
		%feature("autodoc", "1");
		TopoDS_Vertex LastVertex(const Standard_Integer IC) const;
		%feature("autodoc", "1");
		Standard_Real Abscissa(const Standard_Integer IC, const TopoDS_Vertex &V) const;
		%feature("autodoc", "1");
		Standard_Real RelativeAbscissa(const Standard_Integer IC, const TopoDS_Vertex &V) const;
		%feature("autodoc", "1");
		Standard_Boolean ClosedAndTangent(const Standard_Integer IC) const;
		%feature("autodoc", "1");
		Standard_Boolean Closed(const Standard_Integer IC) const;
		%feature("autodoc", "1");
		void Compute();
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		TopoDS_Shape Shape() const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Generated(const TopoDS_Shape &EouV);
		%feature("autodoc", "1");
		Standard_Integer NbFaultyContours() const;
		%feature("autodoc", "1");
		Standard_Integer FaultyContour(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Standard_Integer NbComputedSurfaces(const Standard_Integer IC) const;
		%feature("autodoc", "1");
		Handle_Geom_Surface ComputedSurface(const Standard_Integer IC, const Standard_Integer IS) const;
		%feature("autodoc", "1");
		Standard_Integer NbFaultyVertices() const;
		%feature("autodoc", "1");
		TopoDS_Vertex FaultyVertex(const Standard_Integer IV) const;
		%feature("autodoc", "1");
		Standard_Boolean HasResult() const;
		%feature("autodoc", "1");
		TopoDS_Shape BadShape() const;
		%feature("autodoc", "1");
		ChFiDS_ErrorStatus StripeStatus(const Standard_Integer IC) const;
		%feature("autodoc", "1");
		void Reset();
		%feature("autodoc", "1");
		Handle_TopOpeBRepBuild_HBuilder Builder() const;
		%feature("autodoc", "1");
		Standard_Boolean SplitKPart(const Handle_ChFiDS_SurfData &Data, ChFiDS_SequenceOfSurfData & SetData, const Handle_ChFiDS_Spine &Spine, const Standard_Integer Iedge, const Handle_Adaptor3d_HSurface &S1, const Handle_Adaptor3d_TopolTool &I1, const Handle_Adaptor3d_HSurface &S2, const Handle_Adaptor3d_TopolTool &I2, Standard_Boolean & Intf, Standard_Boolean & Intl);
		%feature("autodoc", "1");
		Standard_Integer PerformTwoCornerbyInter(const Standard_Integer Index);

};
%extend ChFi3d_Builder {
	~ChFi3d_Builder() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of ChFi3d_Builder\n");}
	}
};


%nodefaultctor ChFi3d_SearchSing;
class ChFi3d_SearchSing : public math_FunctionWithDerivative {
	public:
		%feature("autodoc", "1");
		ChFi3d_SearchSing(const Handle_Geom_Curve &C1, const Handle_Geom_Curve &C2);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Value(const Standard_Real X, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Derivative(const Standard_Real X, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Values(const Standard_Real X, Standard_Real &OutValue, Standard_Real &OutValue);

};
%extend ChFi3d_SearchSing {
	~ChFi3d_SearchSing() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of ChFi3d_SearchSing\n");}
	}
};


%nodefaultctor ChFi3d_ChBuilder;
class ChFi3d_ChBuilder : public ChFi3d_Builder {
	public:
		%feature("autodoc", "1");
		ChFi3d_ChBuilder(const TopoDS_Shape &S, const Standard_Real Ta=1.0000000000000000208166817117216851329430937767e-2);
		%feature("autodoc", "1");
		void Add(const TopoDS_Edge &E);
		%feature("autodoc", "1");
		void Add(const Standard_Real Dis, const TopoDS_Edge &E, const TopoDS_Face &F);
		%feature("autodoc", "1");
		void SetDist(const Standard_Real Dis, const Standard_Integer IC, const TopoDS_Face &F);
		%feature("autodoc", "1");
		void GetDist(const Standard_Integer IC, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		void Add(const Standard_Real Dis1, const Standard_Real Dis2, const TopoDS_Edge &E, const TopoDS_Face &F);
		%feature("autodoc", "1");
		void SetDists(const Standard_Real Dis1, const Standard_Real Dis2, const Standard_Integer IC, const TopoDS_Face &F);
		%feature("autodoc", "1");
		void Dists(const Standard_Integer IC, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		void AddDA(const Standard_Real Dis, const Standard_Real Angle, const TopoDS_Edge &E, const TopoDS_Face &F);
		%feature("autodoc", "1");
		void SetDistAngle(const Standard_Real Dis, const Standard_Real Angle, const Standard_Integer IC, const TopoDS_Face &F);
		%feature("autodoc", "1");
		void GetDistAngle(const Standard_Integer IC, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Boolean & DisOnFace1) const;
		%feature("autodoc", "1");
		ChFiDS_ChamfMethod IsChamfer(const Standard_Integer IC) const;
		%feature("autodoc", "1");
		void ResetContour(const Standard_Integer IC);
		%feature("autodoc", "1");
		void Simulate(const Standard_Integer IC);
		%feature("autodoc", "1");
		Standard_Integer NbSurf(const Standard_Integer IC) const;
		%feature("autodoc", "1");
		Handle_ChFiDS_SecHArray1 Sect(const Standard_Integer IC, const Standard_Integer IS) const;
		%feature("autodoc", "1");
		virtual		void SimulSurf(Handle_ChFiDS_SurfData & Data, const Handle_ChFiDS_HElSpine &Guide, const Handle_ChFiDS_Spine &Spine, const Standard_Integer Choix, const Handle_BRepAdaptor_HSurface &S1, const Handle_Adaptor3d_TopolTool &I1, const Handle_BRepAdaptor_HCurve2d &PC1, const Handle_BRepAdaptor_HSurface &Sref1, const Handle_BRepAdaptor_HCurve2d &PCref1, Standard_Boolean & Decroch1, const Handle_BRepAdaptor_HSurface &S2, const Handle_Adaptor3d_TopolTool &I2, const TopAbs_Orientation Or2, const Standard_Real Fleche, const Standard_Real TolGuide, Standard_Real &OutValue, Standard_Real &OutValue, const Standard_Boolean Inside, const Standard_Boolean Appro, const Standard_Boolean Forward, const Standard_Boolean RecP, const Standard_Boolean RecS, const Standard_Boolean RecRst, const math_Vector &Soldep);
		%feature("autodoc", "1");
		virtual		void SimulSurf(Handle_ChFiDS_SurfData & Data, const Handle_ChFiDS_HElSpine &Guide, const Handle_ChFiDS_Spine &Spine, const Standard_Integer Choix, const Handle_BRepAdaptor_HSurface &S1, const Handle_Adaptor3d_TopolTool &I1, const TopAbs_Orientation Or1, const Handle_BRepAdaptor_HSurface &S2, const Handle_Adaptor3d_TopolTool &I2, const Handle_BRepAdaptor_HCurve2d &PC2, const Handle_BRepAdaptor_HSurface &Sref2, const Handle_BRepAdaptor_HCurve2d &PCref2, Standard_Boolean & Decroch2, const Standard_Real Fleche, const Standard_Real TolGuide, Standard_Real &OutValue, Standard_Real &OutValue, const Standard_Boolean Inside, const Standard_Boolean Appro, const Standard_Boolean Forward, const Standard_Boolean RecP, const Standard_Boolean RecS, const Standard_Boolean RecRst, const math_Vector &Soldep);
		%feature("autodoc", "1");
		virtual		void SimulSurf(Handle_ChFiDS_SurfData & Data, const Handle_ChFiDS_HElSpine &Guide, const Handle_ChFiDS_Spine &Spine, const Standard_Integer Choix, const Handle_BRepAdaptor_HSurface &S1, const Handle_Adaptor3d_TopolTool &I1, const Handle_BRepAdaptor_HCurve2d &PC1, const Handle_BRepAdaptor_HSurface &Sref1, const Handle_BRepAdaptor_HCurve2d &PCref1, Standard_Boolean & Decroch1, const TopAbs_Orientation Or1, const Handle_BRepAdaptor_HSurface &S2, const Handle_Adaptor3d_TopolTool &I2, const Handle_BRepAdaptor_HCurve2d &PC2, const Handle_BRepAdaptor_HSurface &Sref2, const Handle_BRepAdaptor_HCurve2d &PCref2, Standard_Boolean & Decroch2, const TopAbs_Orientation Or2, const Standard_Real Fleche, const Standard_Real TolGuide, Standard_Real &OutValue, Standard_Real &OutValue, const Standard_Boolean Inside, const Standard_Boolean Appro, const Standard_Boolean Forward, const Standard_Boolean RecP1, const Standard_Boolean RecRst1, const Standard_Boolean RecP2, const Standard_Boolean RecRst2, const math_Vector &Soldep);
		%feature("autodoc", "1");
		virtual		Standard_Boolean PerformSurf(ChFiDS_SequenceOfSurfData & Data, const Handle_ChFiDS_HElSpine &Guide, const Handle_ChFiDS_Spine &Spine, const Standard_Integer Choix, const Handle_BRepAdaptor_HSurface &S1, const Handle_Adaptor3d_TopolTool &I1, const Handle_BRepAdaptor_HSurface &S2, const Handle_Adaptor3d_TopolTool &I2, const Standard_Real MaxStep, const Standard_Real Fleche, const Standard_Real TolGuide, Standard_Real &OutValue, Standard_Real &OutValue, const Standard_Boolean Inside, const Standard_Boolean Appro, const Standard_Boolean Forward, const Standard_Boolean RecOnS1, const Standard_Boolean RecOnS2, const math_Vector &Soldep, Standard_Boolean & Intf, Standard_Boolean & Intl);
		%feature("autodoc", "1");
		virtual		void PerformSurf(ChFiDS_SequenceOfSurfData & Data, const Handle_ChFiDS_HElSpine &Guide, const Handle_ChFiDS_Spine &Spine, const Standard_Integer Choix, const Handle_BRepAdaptor_HSurface &S1, const Handle_Adaptor3d_TopolTool &I1, const Handle_BRepAdaptor_HCurve2d &PC1, const Handle_BRepAdaptor_HSurface &Sref1, const Handle_BRepAdaptor_HCurve2d &PCref1, Standard_Boolean & Decroch1, const Handle_BRepAdaptor_HSurface &S2, const Handle_Adaptor3d_TopolTool &I2, const TopAbs_Orientation Or2, const Standard_Real MaxStep, const Standard_Real Fleche, const Standard_Real TolGuide, Standard_Real &OutValue, Standard_Real &OutValue, const Standard_Boolean Inside, const Standard_Boolean Appro, const Standard_Boolean Forward, const Standard_Boolean RecP, const Standard_Boolean RecS, const Standard_Boolean RecRst, const math_Vector &Soldep);
		%feature("autodoc", "1");
		virtual		void PerformSurf(ChFiDS_SequenceOfSurfData & Data, const Handle_ChFiDS_HElSpine &Guide, const Handle_ChFiDS_Spine &Spine, const Standard_Integer Choix, const Handle_BRepAdaptor_HSurface &S1, const Handle_Adaptor3d_TopolTool &I1, const TopAbs_Orientation Or1, const Handle_BRepAdaptor_HSurface &S2, const Handle_Adaptor3d_TopolTool &I2, const Handle_BRepAdaptor_HCurve2d &PC2, const Handle_BRepAdaptor_HSurface &Sref2, const Handle_BRepAdaptor_HCurve2d &PCref2, Standard_Boolean & Decroch2, const Standard_Real MaxStep, const Standard_Real Fleche, const Standard_Real TolGuide, Standard_Real &OutValue, Standard_Real &OutValue, const Standard_Boolean Inside, const Standard_Boolean Appro, const Standard_Boolean Forward, const Standard_Boolean RecP, const Standard_Boolean RecS, const Standard_Boolean RecRst, const math_Vector &Soldep);
		%feature("autodoc", "1");
		virtual		void PerformSurf(ChFiDS_SequenceOfSurfData & Data, const Handle_ChFiDS_HElSpine &Guide, const Handle_ChFiDS_Spine &Spine, const Standard_Integer Choix, const Handle_BRepAdaptor_HSurface &S1, const Handle_Adaptor3d_TopolTool &I1, const Handle_BRepAdaptor_HCurve2d &PC1, const Handle_BRepAdaptor_HSurface &Sref1, const Handle_BRepAdaptor_HCurve2d &PCref1, Standard_Boolean & Decroch1, const TopAbs_Orientation Or1, const Handle_BRepAdaptor_HSurface &S2, const Handle_Adaptor3d_TopolTool &I2, const Handle_BRepAdaptor_HCurve2d &PC2, const Handle_BRepAdaptor_HSurface &Sref2, const Handle_BRepAdaptor_HCurve2d &PCref2, Standard_Boolean & Decroch2, const TopAbs_Orientation Or2, const Standard_Real MaxStep, const Standard_Real Fleche, const Standard_Real TolGuide, Standard_Real &OutValue, Standard_Real &OutValue, const Standard_Boolean Inside, const Standard_Boolean Appro, const Standard_Boolean Forward, const Standard_Boolean RecP1, const Standard_Boolean RecRst1, const Standard_Boolean RecP2, const Standard_Boolean RecRst2, const math_Vector &Soldep);
		%feature("autodoc", "1");
		Standard_Integer FindChoiceDistAngle(const Standard_Integer Choice, const Standard_Boolean DisOnF1) const;

};
%extend ChFi3d_ChBuilder {
	~ChFi3d_ChBuilder() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of ChFi3d_ChBuilder\n");}
	}
};


%nodefaultctor ChFi3d_FilBuilder;
class ChFi3d_FilBuilder : public ChFi3d_Builder {
	public:
		%feature("autodoc", "1");
		ChFi3d_FilBuilder(const TopoDS_Shape &S, const ChFi3d_FilletShape FShape=ChFi3d_Rational, const Standard_Real Ta=1.0000000000000000208166817117216851329430937767e-2);
		%feature("autodoc", "1");
		void SetFilletShape(const ChFi3d_FilletShape FShape);
		%feature("autodoc", "1");
		ChFi3d_FilletShape GetFilletShape() const;
		%feature("autodoc", "1");
		void Add(const TopoDS_Edge &E);
		%feature("autodoc", "1");
		void Add(const Standard_Real Radius, const TopoDS_Edge &E);
		%feature("autodoc", "1");
		void SetRadius(const Handle_Law_Function &C, const Standard_Integer IC, const Standard_Integer IinC);
		%feature("autodoc", "1");
		Standard_Boolean IsConstant(const Standard_Integer IC);
		%feature("autodoc", "1");
		Standard_Real Radius(const Standard_Integer IC);
		%feature("autodoc", "1");
		void ResetContour(const Standard_Integer IC);
		%feature("autodoc", "1");
		void SetRadius(const Standard_Real Radius, const Standard_Integer IC, const TopoDS_Edge &E);
		%feature("autodoc", "1");
		void UnSet(const Standard_Integer IC, const TopoDS_Edge &E);
		%feature("autodoc", "1");
		void SetRadius(const Standard_Real Radius, const Standard_Integer IC, const TopoDS_Vertex &V);
		%feature("autodoc", "1");
		void UnSet(const Standard_Integer IC, const TopoDS_Vertex &V);
		%feature("autodoc", "1");
		void SetRadius(const gp_XY &UandR, const Standard_Integer IC, const Standard_Integer IinC);
		%feature("autodoc", "1");
		Standard_Boolean IsConstant(const Standard_Integer IC, const TopoDS_Edge &E);
		%feature("autodoc", "1");
		Standard_Real Radius(const Standard_Integer IC, const TopoDS_Edge &E);
		%feature("autodoc", "1");
		Standard_Boolean GetBounds(const Standard_Integer IC, const TopoDS_Edge &E, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		Handle_Law_Function GetLaw(const Standard_Integer IC, const TopoDS_Edge &E);
		%feature("autodoc", "1");
		void SetLaw(const Standard_Integer IC, const TopoDS_Edge &E, const Handle_Law_Function &L);
		%feature("autodoc", "1");
		void Simulate(const Standard_Integer IC);
		%feature("autodoc", "1");
		Standard_Integer NbSurf(const Standard_Integer IC) const;
		%feature("autodoc", "1");
		Handle_ChFiDS_SecHArray1 Sect(const Standard_Integer IC, const Standard_Integer IS) const;

};
%extend ChFi3d_FilBuilder {
	~ChFi3d_FilBuilder() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of ChFi3d_FilBuilder\n");}
	}
};
