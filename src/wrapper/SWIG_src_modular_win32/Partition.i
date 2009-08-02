/*

Copyright 2008-2009 Thomas Paviot (tpaviot@gmail.com)

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
%module Partition

%include Partition_renames.i

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


%include Partition_dependencies.i


%include Partition_headers.i




%nodefaultctor Partition_Spliter;
class Partition_Spliter {
	public:
		%feature("autodoc", "1");
		Partition_Spliter();
		%feature("autodoc", "1");
		void AddShape(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		void AddTool(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		void Compute(const TopAbs_ShapeEnum Limit=TopAbs_SHAPE);
		%feature("autodoc", "1");
		void KeepShapesInside(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		void RemoveShapesInside(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		TopoDS_Shape Shape() const;
		%feature("autodoc", "1");
		void Clear();

};
%extend Partition_Spliter {
	~Partition_Spliter() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Partition_Spliter\n");}
	}
};


%nodefaultctor Partition_Loop2d;
class Partition_Loop2d {
	public:
		%feature("autodoc", "1");
		Partition_Loop2d();
		%feature("autodoc", "1");
		void Init(const TopoDS_Face &F);
		%feature("autodoc", "1");
		void AddConstEdge(const TopoDS_Edge &E);
		%feature("autodoc", "1");
		void AddSectionEdge(const TopoDS_Edge &E);
		%feature("autodoc", "1");
		void Perform();
		%feature("autodoc", "1");
		const TopTools_ListOfShape & NewWires() const;
		%feature("autodoc", "1");
		void WiresToFaces(const BRepAlgo_Image &EdgeImage);
		%feature("autodoc", "1");
		const TopTools_ListOfShape & NewFaces() const;

};
%extend Partition_Loop2d {
	~Partition_Loop2d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Partition_Loop2d\n");}
	}
};


%nodefaultctor Partition_Inter2d;
class Partition_Inter2d {
	public:
		%feature("autodoc", "1");
		Partition_Inter2d();
		%feature("autodoc", "1");
		void CompletPart2d(const Handle_BRepAlgo_AsDes &AsDes, const TopoDS_Face &F, const TopTools_MapOfShape &NewEdges);
		%feature("autodoc", "1");
		TopoDS_Vertex FindEndVertex(const TopTools_ListOfShape &VertList, const Standard_Real f, const Standard_Real l, const TopoDS_Edge &E, Standard_Boolean & First, Standard_Real &OutValue);
		%feature("autodoc", "1");
		TopoDS_Vertex AddVonE(const TopoDS_Vertex &V, const TopoDS_Edge &E1, const TopoDS_Edge &E2, const Handle_BRepAlgo_AsDes &AsDes, const TopoDS_Face &F);
		%feature("autodoc", "1");
		Standard_Real GetTolerance(const TopoDS_Vertex &theV, const Standard_Real theU, const TopoDS_Edge &theE, const Handle_BRepAlgo_AsDes &theAsDes);

};
%extend Partition_Inter2d {
	~Partition_Inter2d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Partition_Inter2d\n");}
	}
};


%nodefaultctor Partition_Loop;
class Partition_Loop {
	public:
		%feature("autodoc", "1");
		Partition_Loop();
		%feature("autodoc", "1");
		void Init(const TopoDS_Face &F);
		%feature("autodoc", "1");
		void AddConstEdge(const TopoDS_Edge &E);
		%feature("autodoc", "1");
		void Perform();
		%feature("autodoc", "1");
		const TopTools_ListOfShape & NewWires() const;
		%feature("autodoc", "1");
		void WiresToFaces();
		%feature("autodoc", "1");
		const TopTools_ListOfShape & NewFaces() const;

};
%extend Partition_Loop {
	~Partition_Loop() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Partition_Loop\n");}
	}
};


%nodefaultctor Partition_Inter3d;
class Partition_Inter3d {
	public:
		%feature("autodoc", "1");
		Partition_Inter3d();
		%feature("autodoc", "1");
		Partition_Inter3d(const Handle_BRepAlgo_AsDes &AsDes);
		%feature("autodoc", "1");
		void CompletPart3d(const TopTools_ListOfShape &SetOfFaces1, const TopTools_DataMapOfShapeShape &FaceShapeMap);
		%feature("autodoc", "1");
		void FacesPartition(const TopoDS_Face &F1, const TopoDS_Face &F2);
		%feature("autodoc", "1");
		Standard_Boolean IsDone(const TopoDS_Face &F1, const TopoDS_Face &F2) const;
		%feature("autodoc", "1");
		TopTools_MapOfShape & TouchedFaces();
		%feature("autodoc", "1");
		Handle_BRepAlgo_AsDes AsDes() const;
		%feature("autodoc", "1");
		TopTools_MapOfShape & NewEdges();
		%feature("autodoc", "1");
		Standard_Boolean HasSameDomainF(const TopoDS_Shape &F) const;
		%feature("autodoc", "1");
		Standard_Boolean IsSameDomainF(const TopoDS_Shape &F1, const TopoDS_Shape &F2) const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & SameDomain(const TopoDS_Face &F) const;
		%feature("autodoc", "1");
		TopoDS_Vertex ReplaceSameDomainV(const TopoDS_Vertex &V, const TopoDS_Edge &E) const;
		%feature("autodoc", "1");
		Handle_BRepAlgo_AsDes SectionEdgesAD() const;
		%feature("autodoc", "1");
		Standard_Boolean IsSectionEdge(const TopoDS_Edge &E) const;
		%feature("autodoc", "1");
		Standard_Boolean HasSectionEdge(const TopoDS_Face &F) const;
		%feature("autodoc", "1");
		Standard_Boolean IsSplitOn(const TopoDS_Edge &NewE, const TopoDS_Edge &OldE, const TopoDS_Face &F) const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & SectionEdgeFaces(const TopoDS_Edge &SecE) const;

};
%extend Partition_Inter3d {
	~Partition_Inter3d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Partition_Inter3d\n");}
	}
};


%nodefaultctor Partition_Loop3d;
class Partition_Loop3d {
	public:
		%feature("autodoc", "1");
		Partition_Loop3d();
		%feature("autodoc", "1");
		void AddConstFaces(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		void AddSectionFaces(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		const TopTools_ListOfShape & MakeShells(const TopTools_MapOfOrientedShape &AvoidFacesMap);
		%feature("autodoc", "1");
		Standard_Boolean IsInside(const TopoDS_Edge &E, const TopoDS_Face &F1, const TopoDS_Face &F2, const Standard_Boolean CountDot, Standard_Real &OutValue, Standard_Boolean & GoodOri);
		%feature("autodoc", "1");
		gp_Vec Normal(const TopoDS_Edge &E, const TopoDS_Face &F);

};
%extend Partition_Loop3d {
	~Partition_Loop3d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Partition_Loop3d\n");}
	}
};
