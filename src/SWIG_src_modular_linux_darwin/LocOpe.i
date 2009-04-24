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
%module LocOpe

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


%include LocOpe_dependencies.i


%include LocOpe_headers.i


enum LocOpe_Operation {
	LocOpe_FUSE,
	LocOpe_CUT,
	LocOpe_INVALID,
	};



%nodefaultctor Handle_LocOpe_HBuilder;
class Handle_LocOpe_HBuilder : public Handle_TopOpeBRepBuild_HBuilder {
	public:
		%feature("autodoc", "1");
		Handle_LocOpe_HBuilder();
		%feature("autodoc", "1");
		Handle_LocOpe_HBuilder(const Handle_LocOpe_HBuilder &aHandle);
		%feature("autodoc", "1");
		Handle_LocOpe_HBuilder(const LocOpe_HBuilder *anItem);
		%feature("autodoc", "1");
		Handle_LocOpe_HBuilder const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_LocOpe_HBuilder {
	LocOpe_HBuilder* GetObject() {
	return (LocOpe_HBuilder*)$self->Access();
	}
};
%extend Handle_LocOpe_HBuilder {
	~Handle_LocOpe_HBuilder() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_LocOpe_HBuilder\n");}
	}
};


%nodefaultctor Handle_LocOpe_GeneratedShape;
class Handle_LocOpe_GeneratedShape : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_LocOpe_GeneratedShape();
		%feature("autodoc", "1");
		Handle_LocOpe_GeneratedShape(const Handle_LocOpe_GeneratedShape &aHandle);
		%feature("autodoc", "1");
		Handle_LocOpe_GeneratedShape(const LocOpe_GeneratedShape *anItem);
		%feature("autodoc", "1");
		Handle_LocOpe_GeneratedShape const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_LocOpe_GeneratedShape {
	LocOpe_GeneratedShape* GetObject() {
	return (LocOpe_GeneratedShape*)$self->Access();
	}
};
%extend Handle_LocOpe_GeneratedShape {
	~Handle_LocOpe_GeneratedShape() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_LocOpe_GeneratedShape\n");}
	}
};


%nodefaultctor Handle_LocOpe_GluedShape;
class Handle_LocOpe_GluedShape : public Handle_LocOpe_GeneratedShape {
	public:
		%feature("autodoc", "1");
		Handle_LocOpe_GluedShape();
		%feature("autodoc", "1");
		Handle_LocOpe_GluedShape(const Handle_LocOpe_GluedShape &aHandle);
		%feature("autodoc", "1");
		Handle_LocOpe_GluedShape(const LocOpe_GluedShape *anItem);
		%feature("autodoc", "1");
		Handle_LocOpe_GluedShape const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_LocOpe_GluedShape {
	LocOpe_GluedShape* GetObject() {
	return (LocOpe_GluedShape*)$self->Access();
	}
};
%extend Handle_LocOpe_GluedShape {
	~Handle_LocOpe_GluedShape() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_LocOpe_GluedShape\n");}
	}
};


%nodefaultctor Handle_LocOpe_SequenceNodeOfSequenceOfLin;
class Handle_LocOpe_SequenceNodeOfSequenceOfLin : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_LocOpe_SequenceNodeOfSequenceOfLin();
		%feature("autodoc", "1");
		Handle_LocOpe_SequenceNodeOfSequenceOfLin(const Handle_LocOpe_SequenceNodeOfSequenceOfLin &aHandle);
		%feature("autodoc", "1");
		Handle_LocOpe_SequenceNodeOfSequenceOfLin(const LocOpe_SequenceNodeOfSequenceOfLin *anItem);
		%feature("autodoc", "1");
		Handle_LocOpe_SequenceNodeOfSequenceOfLin const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_LocOpe_SequenceNodeOfSequenceOfLin {
	LocOpe_SequenceNodeOfSequenceOfLin* GetObject() {
	return (LocOpe_SequenceNodeOfSequenceOfLin*)$self->Access();
	}
};
%extend Handle_LocOpe_SequenceNodeOfSequenceOfLin {
	~Handle_LocOpe_SequenceNodeOfSequenceOfLin() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_LocOpe_SequenceNodeOfSequenceOfLin\n");}
	}
};


%nodefaultctor Handle_LocOpe_ProjectedWires;
class Handle_LocOpe_ProjectedWires : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_LocOpe_ProjectedWires();
		%feature("autodoc", "1");
		Handle_LocOpe_ProjectedWires(const Handle_LocOpe_ProjectedWires &aHandle);
		%feature("autodoc", "1");
		Handle_LocOpe_ProjectedWires(const LocOpe_ProjectedWires *anItem);
		%feature("autodoc", "1");
		Handle_LocOpe_ProjectedWires const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_LocOpe_ProjectedWires {
	LocOpe_ProjectedWires* GetObject() {
	return (LocOpe_ProjectedWires*)$self->Access();
	}
};
%extend Handle_LocOpe_ProjectedWires {
	~Handle_LocOpe_ProjectedWires() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_LocOpe_ProjectedWires\n");}
	}
};


%nodefaultctor Handle_LocOpe_SequenceNodeOfSequenceOfPntFace;
class Handle_LocOpe_SequenceNodeOfSequenceOfPntFace : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_LocOpe_SequenceNodeOfSequenceOfPntFace();
		%feature("autodoc", "1");
		Handle_LocOpe_SequenceNodeOfSequenceOfPntFace(const Handle_LocOpe_SequenceNodeOfSequenceOfPntFace &aHandle);
		%feature("autodoc", "1");
		Handle_LocOpe_SequenceNodeOfSequenceOfPntFace(const LocOpe_SequenceNodeOfSequenceOfPntFace *anItem);
		%feature("autodoc", "1");
		Handle_LocOpe_SequenceNodeOfSequenceOfPntFace const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_LocOpe_SequenceNodeOfSequenceOfPntFace {
	LocOpe_SequenceNodeOfSequenceOfPntFace* GetObject() {
	return (LocOpe_SequenceNodeOfSequenceOfPntFace*)$self->Access();
	}
};
%extend Handle_LocOpe_SequenceNodeOfSequenceOfPntFace {
	~Handle_LocOpe_SequenceNodeOfSequenceOfPntFace() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_LocOpe_SequenceNodeOfSequenceOfPntFace\n");}
	}
};


%nodefaultctor Handle_LocOpe_DataMapNodeOfDataMapOfShapePnt;
class Handle_LocOpe_DataMapNodeOfDataMapOfShapePnt : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_LocOpe_DataMapNodeOfDataMapOfShapePnt();
		%feature("autodoc", "1");
		Handle_LocOpe_DataMapNodeOfDataMapOfShapePnt(const Handle_LocOpe_DataMapNodeOfDataMapOfShapePnt &aHandle);
		%feature("autodoc", "1");
		Handle_LocOpe_DataMapNodeOfDataMapOfShapePnt(const LocOpe_DataMapNodeOfDataMapOfShapePnt *anItem);
		%feature("autodoc", "1");
		Handle_LocOpe_DataMapNodeOfDataMapOfShapePnt const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_LocOpe_DataMapNodeOfDataMapOfShapePnt {
	LocOpe_DataMapNodeOfDataMapOfShapePnt* GetObject() {
	return (LocOpe_DataMapNodeOfDataMapOfShapePnt*)$self->Access();
	}
};
%extend Handle_LocOpe_DataMapNodeOfDataMapOfShapePnt {
	~Handle_LocOpe_DataMapNodeOfDataMapOfShapePnt() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_LocOpe_DataMapNodeOfDataMapOfShapePnt\n");}
	}
};


%nodefaultctor Handle_LocOpe_WiresOnShape;
class Handle_LocOpe_WiresOnShape : public Handle_LocOpe_ProjectedWires {
	public:
		%feature("autodoc", "1");
		Handle_LocOpe_WiresOnShape();
		%feature("autodoc", "1");
		Handle_LocOpe_WiresOnShape(const Handle_LocOpe_WiresOnShape &aHandle);
		%feature("autodoc", "1");
		Handle_LocOpe_WiresOnShape(const LocOpe_WiresOnShape *anItem);
		%feature("autodoc", "1");
		Handle_LocOpe_WiresOnShape const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_LocOpe_WiresOnShape {
	LocOpe_WiresOnShape* GetObject() {
	return (LocOpe_WiresOnShape*)$self->Access();
	}
};
%extend Handle_LocOpe_WiresOnShape {
	~Handle_LocOpe_WiresOnShape() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_LocOpe_WiresOnShape\n");}
	}
};


%nodefaultctor Handle_LocOpe_SequenceNodeOfSequenceOfCirc;
class Handle_LocOpe_SequenceNodeOfSequenceOfCirc : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_LocOpe_SequenceNodeOfSequenceOfCirc();
		%feature("autodoc", "1");
		Handle_LocOpe_SequenceNodeOfSequenceOfCirc(const Handle_LocOpe_SequenceNodeOfSequenceOfCirc &aHandle);
		%feature("autodoc", "1");
		Handle_LocOpe_SequenceNodeOfSequenceOfCirc(const LocOpe_SequenceNodeOfSequenceOfCirc *anItem);
		%feature("autodoc", "1");
		Handle_LocOpe_SequenceNodeOfSequenceOfCirc const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_LocOpe_SequenceNodeOfSequenceOfCirc {
	LocOpe_SequenceNodeOfSequenceOfCirc* GetObject() {
	return (LocOpe_SequenceNodeOfSequenceOfCirc*)$self->Access();
	}
};
%extend Handle_LocOpe_SequenceNodeOfSequenceOfCirc {
	~Handle_LocOpe_SequenceNodeOfSequenceOfCirc() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_LocOpe_SequenceNodeOfSequenceOfCirc\n");}
	}
};


%nodefaultctor LocOpe_BuildWires;
class LocOpe_BuildWires {
	public:
		%feature("autodoc", "1");
		LocOpe_BuildWires();
		%feature("autodoc", "1");
		LocOpe_BuildWires(const TopTools_ListOfShape &Ledges, const Handle_LocOpe_ProjectedWires &PW);
		%feature("autodoc", "1");
		void Perform(const TopTools_ListOfShape &Ledges, const Handle_LocOpe_ProjectedWires &PW);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Result() const;

};
%extend LocOpe_BuildWires {
	~LocOpe_BuildWires() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of LocOpe_BuildWires\n");}
	}
};


%nodefaultctor LocOpe_SequenceNodeOfSequenceOfCirc;
class LocOpe_SequenceNodeOfSequenceOfCirc : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		LocOpe_SequenceNodeOfSequenceOfCirc(const gp_Circ &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		gp_Circ & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend LocOpe_SequenceNodeOfSequenceOfCirc {
	Handle_LocOpe_SequenceNodeOfSequenceOfCirc GetHandle() {
	return *(Handle_LocOpe_SequenceNodeOfSequenceOfCirc*) &$self;
	}
};
%extend LocOpe_SequenceNodeOfSequenceOfCirc {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend LocOpe_SequenceNodeOfSequenceOfCirc {
	~LocOpe_SequenceNodeOfSequenceOfCirc() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of LocOpe_SequenceNodeOfSequenceOfCirc\n");}
	}
};


%nodefaultctor LocOpe_SequenceNodeOfSequenceOfLin;
class LocOpe_SequenceNodeOfSequenceOfLin : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		LocOpe_SequenceNodeOfSequenceOfLin(const gp_Lin &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		gp_Lin & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend LocOpe_SequenceNodeOfSequenceOfLin {
	Handle_LocOpe_SequenceNodeOfSequenceOfLin GetHandle() {
	return *(Handle_LocOpe_SequenceNodeOfSequenceOfLin*) &$self;
	}
};
%extend LocOpe_SequenceNodeOfSequenceOfLin {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend LocOpe_SequenceNodeOfSequenceOfLin {
	~LocOpe_SequenceNodeOfSequenceOfLin() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of LocOpe_SequenceNodeOfSequenceOfLin\n");}
	}
};


%nodefaultctor LocOpe_HBuilder;
class LocOpe_HBuilder : public TopOpeBRepBuild_HBuilder {
	public:
		%feature("autodoc", "1");
		LocOpe_HBuilder(const TopOpeBRepDS_BuildTool &BT);
		%feature("autodoc", "1");
		Standard_Boolean Classify() const;
		%feature("autodoc", "1");
		void Classify(const Standard_Boolean B);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend LocOpe_HBuilder {
	Handle_LocOpe_HBuilder GetHandle() {
	return *(Handle_LocOpe_HBuilder*) &$self;
	}
};
%extend LocOpe_HBuilder {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend LocOpe_HBuilder {
	~LocOpe_HBuilder() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of LocOpe_HBuilder\n");}
	}
};


%nodefaultctor LocOpe_Generator;
class LocOpe_Generator {
	public:
		%feature("autodoc", "1");
		LocOpe_Generator();
		%feature("autodoc", "1");
		LocOpe_Generator(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		void Init(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		void Perform(const Handle_LocOpe_GeneratedShape &G);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		const TopoDS_Shape & ResultingShape() const;
		%feature("autodoc", "1");
		const TopoDS_Shape & Shape() const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & DescendantFace(const TopoDS_Face &F);

};
%extend LocOpe_Generator {
	~LocOpe_Generator() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of LocOpe_Generator\n");}
	}
};


%nodefaultctor LocOpe_CurveShapeIntersector;
class LocOpe_CurveShapeIntersector {
	public:
		%feature("autodoc", "1");
		LocOpe_CurveShapeIntersector();
		%feature("autodoc", "1");
		LocOpe_CurveShapeIntersector(const gp_Ax1 &Axis, const TopoDS_Shape &S);
		%feature("autodoc", "1");
		LocOpe_CurveShapeIntersector(const gp_Circ &C, const TopoDS_Shape &S);
		%feature("autodoc", "1");
		void Init(const gp_Ax1 &Axis, const TopoDS_Shape &S);
		%feature("autodoc", "1");
		void Init(const gp_Circ &C, const TopoDS_Shape &S);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbPoints() const;
		%feature("autodoc", "1");
		const LocOpe_PntFace & Point(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Standard_Boolean LocalizeAfter(const Standard_Real From, TopAbs_Orientation & Or, Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		Standard_Boolean LocalizeBefore(const Standard_Real From, TopAbs_Orientation & Or, Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		Standard_Boolean LocalizeAfter(const Standard_Integer FromInd, TopAbs_Orientation & Or, Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		Standard_Boolean LocalizeBefore(const Standard_Integer FromInd, TopAbs_Orientation & Or, Standard_Integer &OutValue, Standard_Integer &OutValue) const;

};
%extend LocOpe_CurveShapeIntersector {
	~LocOpe_CurveShapeIntersector() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of LocOpe_CurveShapeIntersector\n");}
	}
};


%nodefaultctor LocOpe_Spliter;
class LocOpe_Spliter {
	public:
		%feature("autodoc", "1");
		LocOpe_Spliter();
		%feature("autodoc", "1");
		LocOpe_Spliter(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		void Init(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		void Perform(const Handle_LocOpe_ProjectedWires &PW);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		const TopoDS_Shape & ResultingShape() const;
		%feature("autodoc", "1");
		const TopoDS_Shape & Shape() const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & DirectLeft() const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Left() const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & DescendantShapes(const TopoDS_Shape &S);

};
%extend LocOpe_Spliter {
	~LocOpe_Spliter() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of LocOpe_Spliter\n");}
	}
};


%nodefaultctor LocOpe_SequenceNodeOfSequenceOfPntFace;
class LocOpe_SequenceNodeOfSequenceOfPntFace : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		LocOpe_SequenceNodeOfSequenceOfPntFace(const LocOpe_PntFace &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		LocOpe_PntFace & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend LocOpe_SequenceNodeOfSequenceOfPntFace {
	Handle_LocOpe_SequenceNodeOfSequenceOfPntFace GetHandle() {
	return *(Handle_LocOpe_SequenceNodeOfSequenceOfPntFace*) &$self;
	}
};
%extend LocOpe_SequenceNodeOfSequenceOfPntFace {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend LocOpe_SequenceNodeOfSequenceOfPntFace {
	~LocOpe_SequenceNodeOfSequenceOfPntFace() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of LocOpe_SequenceNodeOfSequenceOfPntFace\n");}
	}
};


%nodefaultctor LocOpe_SplitDrafts;
class LocOpe_SplitDrafts {
	public:
		%feature("autodoc", "1");
		LocOpe_SplitDrafts();
		%feature("autodoc", "1");
		LocOpe_SplitDrafts(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		void Init(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		void Perform(const TopoDS_Face &F, const TopoDS_Wire &W, const gp_Dir &Extractg, const gp_Pln &NPlg, const Standard_Real Angleg, const gp_Dir &Extractd, const gp_Pln &NPld, const Standard_Real Angled, const Standard_Boolean ModifyLeft=1, const Standard_Boolean ModifyRight=1);
		%feature("autodoc", "1");
		void Perform(const TopoDS_Face &F, const TopoDS_Wire &W, const gp_Dir &Extract, const gp_Pln &NPl, const Standard_Real Angle);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		const TopoDS_Shape & OriginalShape() const;
		%feature("autodoc", "1");
		const TopoDS_Shape & Shape() const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & ShapesFromShape(const TopoDS_Shape &S) const;

};
%extend LocOpe_SplitDrafts {
	~LocOpe_SplitDrafts() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of LocOpe_SplitDrafts\n");}
	}
};


%nodefaultctor LocOpe_SequenceOfCirc;
class LocOpe_SequenceOfCirc : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		LocOpe_SequenceOfCirc();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const LocOpe_SequenceOfCirc & Assign(const LocOpe_SequenceOfCirc &Other);
		%feature("autodoc", "1");
		void Append(const gp_Circ &T);
		%feature("autodoc", "1");
		void Append(LocOpe_SequenceOfCirc & S);
		%feature("autodoc", "1");
		void Prepend(const gp_Circ &T);
		%feature("autodoc", "1");
		void Prepend(LocOpe_SequenceOfCirc & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const gp_Circ &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, LocOpe_SequenceOfCirc & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const gp_Circ &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, LocOpe_SequenceOfCirc & S);
		%feature("autodoc", "1");
		const gp_Circ & First() const;
		%feature("autodoc", "1");
		const gp_Circ & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, LocOpe_SequenceOfCirc & S);
		%feature("autodoc", "1");
		const gp_Circ & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const gp_Circ & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const gp_Circ &I);
		%feature("autodoc", "1");
		gp_Circ & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		gp_Circ & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%extend LocOpe_SequenceOfCirc {
	~LocOpe_SequenceOfCirc() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of LocOpe_SequenceOfCirc\n");}
	}
};


%nodefaultctor LocOpe_Pipe;
class LocOpe_Pipe {
	public:
		%feature("autodoc", "1");
		LocOpe_Pipe(const TopoDS_Wire &Spine, const TopoDS_Shape &Profile);
		%feature("autodoc", "1");
		const TopoDS_Shape & Spine() const;
		%feature("autodoc", "1");
		const TopoDS_Shape & Profile() const;
		%feature("autodoc", "1");
		const TopoDS_Shape & FirstShape() const;
		%feature("autodoc", "1");
		const TopoDS_Shape & LastShape() const;
		%feature("autodoc", "1");
		const TopoDS_Shape & Shape() const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Shapes(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		const TColGeom_SequenceOfCurve & Curves(const TColgp_SequenceOfPnt &Spt);
		%feature("autodoc", "1");
		Handle_Geom_Curve BarycCurve();

};
%extend LocOpe_Pipe {
	~LocOpe_Pipe() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of LocOpe_Pipe\n");}
	}
};


%nodefaultctor LocOpe_Gluer;
class LocOpe_Gluer {
	public:
		%feature("autodoc", "1");
		LocOpe_Gluer();
		%feature("autodoc", "1");
		LocOpe_Gluer(const TopoDS_Shape &Sbase, const TopoDS_Shape &Snew);
		%feature("autodoc", "1");
		void Init(const TopoDS_Shape &Sbase, const TopoDS_Shape &Snew);
		%feature("autodoc", "1");
		void Bind(const TopoDS_Face &Fnew, const TopoDS_Face &Fbase);
		%feature("autodoc", "1");
		void Bind(const TopoDS_Edge &Enew, const TopoDS_Edge &Ebase);
		%feature("autodoc", "1");
		LocOpe_Operation OpeType() const;
		%feature("autodoc", "1");
		void Perform();
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		const TopoDS_Shape & ResultingShape() const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & DescendantFaces(const TopoDS_Face &F) const;
		%feature("autodoc", "1");
		const TopoDS_Shape & BasisShape() const;
		%feature("autodoc", "1");
		const TopoDS_Shape & GluedShape() const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Edges() const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & TgtEdges() const;

};
%extend LocOpe_Gluer {
	~LocOpe_Gluer() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of LocOpe_Gluer\n");}
	}
};


%nodefaultctor LocOpe_ProjectedWires;
class LocOpe_ProjectedWires : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		virtual		void InitEdgeIterator();
		%feature("autodoc", "1");
		virtual		Standard_Boolean MoreEdge();
		%feature("autodoc", "1");
		virtual		TopoDS_Edge Edge();
		%feature("autodoc", "1");
		virtual		TopoDS_Face OnFace();
		%feature("autodoc", "1");
		virtual		Standard_Boolean OnEdge(TopoDS_Edge & E);
		%feature("autodoc", "1");
		virtual		void NextEdge();
		%feature("autodoc", "1");
		virtual		Standard_Boolean OnVertex(const TopoDS_Vertex &Vwire, TopoDS_Vertex & Vshape);
		%feature("autodoc", "1");
		virtual		Standard_Boolean OnEdge(const TopoDS_Vertex &V, TopoDS_Edge & E, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend LocOpe_ProjectedWires {
	Handle_LocOpe_ProjectedWires GetHandle() {
	return *(Handle_LocOpe_ProjectedWires*) &$self;
	}
};
%extend LocOpe_ProjectedWires {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend LocOpe_ProjectedWires {
	~LocOpe_ProjectedWires() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of LocOpe_ProjectedWires\n");}
	}
};


%nodefaultctor LocOpe_WiresOnShape;
class LocOpe_WiresOnShape : public LocOpe_ProjectedWires {
	public:
		%feature("autodoc", "1");
		LocOpe_WiresOnShape(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		void Init(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		void Bind(const TopoDS_Wire &W, const TopoDS_Face &F);
		%feature("autodoc", "1");
		void Bind(const TopoDS_Edge &E, const TopoDS_Face &F);
		%feature("autodoc", "1");
		void Bind(const TopoDS_Edge &EfromW, const TopoDS_Edge &EonFace);
		%feature("autodoc", "1");
		void BindAll();
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;

};
%extend LocOpe_WiresOnShape {
	Handle_LocOpe_WiresOnShape GetHandle() {
	return *(Handle_LocOpe_WiresOnShape*) &$self;
	}
};
%extend LocOpe_WiresOnShape {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend LocOpe_WiresOnShape {
	~LocOpe_WiresOnShape() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of LocOpe_WiresOnShape\n");}
	}
};


%nodefaultctor LocOpe;
class LocOpe {
	public:
		%feature("autodoc", "1");
		LocOpe();
		%feature("autodoc", "1");
		Standard_Boolean Closed(const TopoDS_Wire &W, const TopoDS_Face &OnF);
		%feature("autodoc", "1");
		Standard_Boolean Closed(const TopoDS_Edge &E, const TopoDS_Face &OnF);
		%feature("autodoc", "1");
		Standard_Boolean TgtFaces(const TopoDS_Edge &E, const TopoDS_Face &F1, const TopoDS_Face &F2);
		%feature("autodoc", "1");
		void SampleEdges(const TopoDS_Shape &S, TColgp_SequenceOfPnt & Pt);

};
%extend LocOpe {
	~LocOpe() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of LocOpe\n");}
	}
};


%nodefaultctor LocOpe_Prism;
class LocOpe_Prism {
	public:
		%feature("autodoc", "1");
		LocOpe_Prism();
		%feature("autodoc", "1");
		LocOpe_Prism(const TopoDS_Shape &Base, const gp_Vec &V);
		%feature("autodoc", "1");
		LocOpe_Prism(const TopoDS_Shape &Base, const gp_Vec &V, const gp_Vec &Vectra);
		%feature("autodoc", "1");
		void Perform(const TopoDS_Shape &Base, const gp_Vec &V);
		%feature("autodoc", "1");
		void Perform(const TopoDS_Shape &Base, const gp_Vec &V, const gp_Vec &Vtra);
		%feature("autodoc", "1");
		const TopoDS_Shape & FirstShape() const;
		%feature("autodoc", "1");
		const TopoDS_Shape & LastShape() const;
		%feature("autodoc", "1");
		const TopoDS_Shape & Shape() const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Shapes(const TopoDS_Shape &S) const;
		%feature("autodoc", "1");
		void Curves(TColGeom_SequenceOfCurve & SCurves) const;
		%feature("autodoc", "1");
		Handle_Geom_Curve BarycCurve() const;

};
%extend LocOpe_Prism {
	~LocOpe_Prism() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of LocOpe_Prism\n");}
	}
};


%nodefaultctor LocOpe_GeneratedShape;
class LocOpe_GeneratedShape : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		virtual		const TopTools_ListOfShape & GeneratingEdges();
		%feature("autodoc", "1");
		virtual		TopoDS_Edge Generated(const TopoDS_Vertex &V);
		%feature("autodoc", "1");
		virtual		TopoDS_Face Generated(const TopoDS_Edge &E);
		%feature("autodoc", "1");
		virtual		const TopTools_ListOfShape & OrientedFaces();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend LocOpe_GeneratedShape {
	Handle_LocOpe_GeneratedShape GetHandle() {
	return *(Handle_LocOpe_GeneratedShape*) &$self;
	}
};
%extend LocOpe_GeneratedShape {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend LocOpe_GeneratedShape {
	~LocOpe_GeneratedShape() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of LocOpe_GeneratedShape\n");}
	}
};


%nodefaultctor LocOpe_GluedShape;
class LocOpe_GluedShape : public LocOpe_GeneratedShape {
	public:
		%feature("autodoc", "1");
		LocOpe_GluedShape();
		%feature("autodoc", "1");
		LocOpe_GluedShape(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		void Init(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		void GlueOnFace(const TopoDS_Face &F);

};
%extend LocOpe_GluedShape {
	Handle_LocOpe_GluedShape GetHandle() {
	return *(Handle_LocOpe_GluedShape*) &$self;
	}
};
%extend LocOpe_GluedShape {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend LocOpe_GluedShape {
	~LocOpe_GluedShape() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of LocOpe_GluedShape\n");}
	}
};


%nodefaultctor LocOpe_BuildShape;
class LocOpe_BuildShape {
	public:
		%feature("autodoc", "1");
		LocOpe_BuildShape();
		%feature("autodoc", "1");
		LocOpe_BuildShape(const TopTools_ListOfShape &L);
		%feature("autodoc", "1");
		void Perform(const TopTools_ListOfShape &L);
		%feature("autodoc", "1");
		const TopoDS_Shape & Shape() const;

};
%extend LocOpe_BuildShape {
	~LocOpe_BuildShape() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of LocOpe_BuildShape\n");}
	}
};


%nodefaultctor LocOpe_DataMapOfShapePnt;
class LocOpe_DataMapOfShapePnt : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		LocOpe_DataMapOfShapePnt(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		LocOpe_DataMapOfShapePnt & Assign(const LocOpe_DataMapOfShapePnt &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TopoDS_Shape &K, const gp_Pnt &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TopoDS_Shape &K);
		%feature("autodoc", "1");
		const gp_Pnt & Find(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		const gp_Pnt & operator()(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		gp_Pnt & ChangeFind(const TopoDS_Shape &K);
		%feature("autodoc", "1");
		gp_Pnt & operator()(const TopoDS_Shape &K);

};
%extend LocOpe_DataMapOfShapePnt {
	~LocOpe_DataMapOfShapePnt() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of LocOpe_DataMapOfShapePnt\n");}
	}
};


%nodefaultctor LocOpe_DataMapIteratorOfDataMapOfShapePnt;
class LocOpe_DataMapIteratorOfDataMapOfShapePnt : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		LocOpe_DataMapIteratorOfDataMapOfShapePnt();
		%feature("autodoc", "1");
		LocOpe_DataMapIteratorOfDataMapOfShapePnt(const LocOpe_DataMapOfShapePnt &aMap);
		%feature("autodoc", "1");
		void Initialize(const LocOpe_DataMapOfShapePnt &aMap);
		%feature("autodoc", "1");
		const TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		const gp_Pnt & Value() const;

};
%extend LocOpe_DataMapIteratorOfDataMapOfShapePnt {
	~LocOpe_DataMapIteratorOfDataMapOfShapePnt() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of LocOpe_DataMapIteratorOfDataMapOfShapePnt\n");}
	}
};


%nodefaultctor LocOpe_DataMapNodeOfDataMapOfShapePnt;
class LocOpe_DataMapNodeOfDataMapOfShapePnt : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		LocOpe_DataMapNodeOfDataMapOfShapePnt(const TopoDS_Shape &K, const gp_Pnt &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		gp_Pnt & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend LocOpe_DataMapNodeOfDataMapOfShapePnt {
	Handle_LocOpe_DataMapNodeOfDataMapOfShapePnt GetHandle() {
	return *(Handle_LocOpe_DataMapNodeOfDataMapOfShapePnt*) &$self;
	}
};
%extend LocOpe_DataMapNodeOfDataMapOfShapePnt {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend LocOpe_DataMapNodeOfDataMapOfShapePnt {
	~LocOpe_DataMapNodeOfDataMapOfShapePnt() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of LocOpe_DataMapNodeOfDataMapOfShapePnt\n");}
	}
};


%nodefaultctor LocOpe_CSIntersector;
class LocOpe_CSIntersector {
	public:
		%feature("autodoc", "1");
		LocOpe_CSIntersector();
		%feature("autodoc", "1");
		LocOpe_CSIntersector(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		void Init(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		void Perform(const LocOpe_SequenceOfLin &Slin);
		%feature("autodoc", "1");
		void Perform(const LocOpe_SequenceOfCirc &Scir);
		%feature("autodoc", "1");
		void Perform(const TColGeom_SequenceOfCurve &Scur);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbPoints(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const LocOpe_PntFace & Point(const Standard_Integer I, const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Boolean LocalizeAfter(const Standard_Integer I, const Standard_Real From, const Standard_Real Tol, TopAbs_Orientation & Or, Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		Standard_Boolean LocalizeBefore(const Standard_Integer I, const Standard_Real From, const Standard_Real Tol, TopAbs_Orientation & Or, Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		Standard_Boolean LocalizeAfter(const Standard_Integer I, const Standard_Integer FromInd, const Standard_Real Tol, TopAbs_Orientation & Or, Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		Standard_Boolean LocalizeBefore(const Standard_Integer I, const Standard_Integer FromInd, const Standard_Real Tol, TopAbs_Orientation & Or, Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		void Destroy();

};
%extend LocOpe_CSIntersector {
	~LocOpe_CSIntersector() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of LocOpe_CSIntersector\n");}
	}
};


%nodefaultctor LocOpe_PntFace;
class LocOpe_PntFace {
	public:
		%feature("autodoc", "1");
		LocOpe_PntFace();
		%feature("autodoc", "1");
		LocOpe_PntFace(const gp_Pnt &P, const TopoDS_Face &F, const TopAbs_Orientation Or, const Standard_Real Par, const Standard_Real UPar, const Standard_Real VPar);
		%feature("autodoc", "1");
		const gp_Pnt & Pnt() const;
		%feature("autodoc", "1");
		const TopoDS_Face & Face() const;
		%feature("autodoc", "1");
		TopAbs_Orientation Orientation() const;
		%feature("autodoc", "1");
		TopAbs_Orientation & ChangeOrientation();
		%feature("autodoc", "1");
		Standard_Real Parameter() const;
		%feature("autodoc", "1");
		Standard_Real UParameter() const;
		%feature("autodoc", "1");
		Standard_Real VParameter() const;

};
%extend LocOpe_PntFace {
	~LocOpe_PntFace() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of LocOpe_PntFace\n");}
	}
};


%nodefaultctor LocOpe_SequenceOfLin;
class LocOpe_SequenceOfLin : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		LocOpe_SequenceOfLin();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const LocOpe_SequenceOfLin & Assign(const LocOpe_SequenceOfLin &Other);
		%feature("autodoc", "1");
		void Append(const gp_Lin &T);
		%feature("autodoc", "1");
		void Append(LocOpe_SequenceOfLin & S);
		%feature("autodoc", "1");
		void Prepend(const gp_Lin &T);
		%feature("autodoc", "1");
		void Prepend(LocOpe_SequenceOfLin & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const gp_Lin &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, LocOpe_SequenceOfLin & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const gp_Lin &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, LocOpe_SequenceOfLin & S);
		%feature("autodoc", "1");
		const gp_Lin & First() const;
		%feature("autodoc", "1");
		const gp_Lin & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, LocOpe_SequenceOfLin & S);
		%feature("autodoc", "1");
		const gp_Lin & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const gp_Lin & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const gp_Lin &I);
		%feature("autodoc", "1");
		gp_Lin & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		gp_Lin & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%extend LocOpe_SequenceOfLin {
	~LocOpe_SequenceOfLin() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of LocOpe_SequenceOfLin\n");}
	}
};


%nodefaultctor LocOpe_Builder;
class LocOpe_Builder {
	public:
		%feature("autodoc", "1");
		LocOpe_Builder();
		%feature("autodoc", "1");
		LocOpe_Builder(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		LocOpe_Builder(const TopoDS_Shape &S, const TopoDS_Shape &Tool);
		%feature("autodoc", "1");
		void Init(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		void Init(const TopoDS_Shape &S, const TopoDS_Shape &Tool);
		%feature("autodoc", "1");
		void Perform(const TopoDS_Shape &Tool, const TopTools_ListOfShape &L, const Standard_Boolean Fuse);
		%feature("autodoc", "1");
		void Perform(const TopTools_ListOfShape &LShape, const TopTools_ListOfShape &LTool, const Standard_Boolean Fuse);
		%feature("autodoc", "1");
		void BuildPartsOfTool();
		%feature("autodoc", "1");
		const TopTools_ListOfShape & PartsOfTool() const;
		%feature("autodoc", "1");
		void RemovePart(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		void ActivatePart(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		void PerformResult();
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Boolean IsInvDone() const;
		%feature("autodoc", "1");
		const TopoDS_Shape & ResultingShape() const;
		%feature("autodoc", "1");
		const TopoDS_Shape & OriginalShape() const;
		%feature("autodoc", "1");
		const TopoDS_Shape & Tool() const;
		%feature("autodoc", "1");
		const Handle_BOP_HistoryCollector & History() const;
		%feature("autodoc", "1");
		void InvalidateParts();
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Edges() const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & TgtEdges() const;

};
%extend LocOpe_Builder {
	~LocOpe_Builder() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of LocOpe_Builder\n");}
	}
};


%nodefaultctor LocOpe_SequenceOfPntFace;
class LocOpe_SequenceOfPntFace : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		LocOpe_SequenceOfPntFace();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const LocOpe_SequenceOfPntFace & Assign(const LocOpe_SequenceOfPntFace &Other);
		%feature("autodoc", "1");
		void Append(const LocOpe_PntFace &T);
		%feature("autodoc", "1");
		void Append(LocOpe_SequenceOfPntFace & S);
		%feature("autodoc", "1");
		void Prepend(const LocOpe_PntFace &T);
		%feature("autodoc", "1");
		void Prepend(LocOpe_SequenceOfPntFace & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const LocOpe_PntFace &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, LocOpe_SequenceOfPntFace & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const LocOpe_PntFace &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, LocOpe_SequenceOfPntFace & S);
		%feature("autodoc", "1");
		const LocOpe_PntFace & First() const;
		%feature("autodoc", "1");
		const LocOpe_PntFace & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, LocOpe_SequenceOfPntFace & S);
		%feature("autodoc", "1");
		const LocOpe_PntFace & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const LocOpe_PntFace & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const LocOpe_PntFace &I);
		%feature("autodoc", "1");
		LocOpe_PntFace & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		LocOpe_PntFace & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%extend LocOpe_SequenceOfPntFace {
	~LocOpe_SequenceOfPntFace() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of LocOpe_SequenceOfPntFace\n");}
	}
};


%nodefaultctor LocOpe_FindEdges;
class LocOpe_FindEdges {
	public:
		%feature("autodoc", "1");
		LocOpe_FindEdges();
		%feature("autodoc", "1");
		LocOpe_FindEdges(const TopoDS_Shape &FFrom, const TopoDS_Shape &FTo);
		%feature("autodoc", "1");
		void Set(const TopoDS_Shape &FFrom, const TopoDS_Shape &FTo);
		%feature("autodoc", "1");
		void InitIterator();
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		const TopoDS_Edge & EdgeFrom() const;
		%feature("autodoc", "1");
		const TopoDS_Edge & EdgeTo() const;
		%feature("autodoc", "1");
		void Next();

};
%extend LocOpe_FindEdges {
	~LocOpe_FindEdges() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of LocOpe_FindEdges\n");}
	}
};


%nodefaultctor LocOpe_SplitShape;
class LocOpe_SplitShape {
	public:
		%feature("autodoc", "1");
		LocOpe_SplitShape();
		%feature("autodoc", "1");
		LocOpe_SplitShape(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		void Init(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		Standard_Boolean CanSplit(const TopoDS_Edge &E) const;
		%feature("autodoc", "1");
		void Add(const TopoDS_Vertex &V, const Standard_Real P, const TopoDS_Edge &E);
		%feature("autodoc", "1");
		void Add(const TopoDS_Wire &W, const TopoDS_Face &F);
		%feature("autodoc", "1");
		const TopoDS_Shape & Shape() const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & DescendantShapes(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		const TopTools_ListOfShape & LeftOf(const TopoDS_Wire &W, const TopoDS_Face &F);

};
%extend LocOpe_SplitShape {
	~LocOpe_SplitShape() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of LocOpe_SplitShape\n");}
	}
};


%nodefaultctor LocOpe_FindEdgesInFace;
class LocOpe_FindEdgesInFace {
	public:
		%feature("autodoc", "1");
		LocOpe_FindEdgesInFace();
		%feature("autodoc", "1");
		LocOpe_FindEdgesInFace(const TopoDS_Shape &S, const TopoDS_Face &F);
		%feature("autodoc", "1");
		void Set(const TopoDS_Shape &S, const TopoDS_Face &F);
		%feature("autodoc", "1");
		void Init();
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		const TopoDS_Edge & Edge() const;
		%feature("autodoc", "1");
		void Next();

};
%extend LocOpe_FindEdgesInFace {
	~LocOpe_FindEdgesInFace() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of LocOpe_FindEdgesInFace\n");}
	}
};


%nodefaultctor LocOpe_LinearForm;
class LocOpe_LinearForm {
	public:
		%feature("autodoc", "1");
		LocOpe_LinearForm();
		%feature("autodoc", "1");
		LocOpe_LinearForm(const TopoDS_Shape &Base, const gp_Vec &V, const gp_Pnt &Pnt1, const gp_Pnt &Pnt2);
		%feature("autodoc", "1");
		LocOpe_LinearForm(const TopoDS_Shape &Base, const gp_Vec &V, const gp_Vec &Vectra, const gp_Pnt &Pnt1, const gp_Pnt &Pnt2);
		%feature("autodoc", "1");
		void Perform(const TopoDS_Shape &Base, const gp_Vec &V, const gp_Pnt &Pnt1, const gp_Pnt &Pnt2);
		%feature("autodoc", "1");
		void Perform(const TopoDS_Shape &Base, const gp_Vec &V, const gp_Vec &Vectra, const gp_Pnt &Pnt1, const gp_Pnt &Pnt2);
		%feature("autodoc", "1");
		const TopoDS_Shape & FirstShape() const;
		%feature("autodoc", "1");
		const TopoDS_Shape & LastShape() const;
		%feature("autodoc", "1");
		const TopoDS_Shape & Shape() const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Shapes(const TopoDS_Shape &S) const;

};
%extend LocOpe_LinearForm {
	~LocOpe_LinearForm() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of LocOpe_LinearForm\n");}
	}
};


%nodefaultctor LocOpe_DPrism;
class LocOpe_DPrism {
	public:
		%feature("autodoc", "1");
		LocOpe_DPrism(const TopoDS_Face &Spine, const Standard_Real Height1, const Standard_Real Height2, const Standard_Real Angle);
		%feature("autodoc", "1");
		LocOpe_DPrism(const TopoDS_Face &Spine, const Standard_Real Height, const Standard_Real Angle);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		const TopoDS_Shape & Spine() const;
		%feature("autodoc", "1");
		const TopoDS_Shape & Profile() const;
		%feature("autodoc", "1");
		const TopoDS_Shape & FirstShape() const;
		%feature("autodoc", "1");
		const TopoDS_Shape & LastShape() const;
		%feature("autodoc", "1");
		const TopoDS_Shape & Shape() const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Shapes(const TopoDS_Shape &S) const;
		%feature("autodoc", "1");
		void Curves(TColGeom_SequenceOfCurve & SCurves) const;
		%feature("autodoc", "1");
		Handle_Geom_Curve BarycCurve() const;

};
%extend LocOpe_DPrism {
	~LocOpe_DPrism() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of LocOpe_DPrism\n");}
	}
};
