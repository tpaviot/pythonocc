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
%module BRepSweep

%include BRepSweep_renames.i

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


%include BRepSweep_dependencies.i


%include BRepSweep_headers.i




%nodefaultctor Handle_BRepSweep_SequenceNodeOfSequenceOfShapesOfNumLinearRegularSweep;
class Handle_BRepSweep_SequenceNodeOfSequenceOfShapesOfNumLinearRegularSweep : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_BRepSweep_SequenceNodeOfSequenceOfShapesOfNumLinearRegularSweep();
		%feature("autodoc", "1");
		Handle_BRepSweep_SequenceNodeOfSequenceOfShapesOfNumLinearRegularSweep(const Handle_BRepSweep_SequenceNodeOfSequenceOfShapesOfNumLinearRegularSweep &aHandle);
		%feature("autodoc", "1");
		Handle_BRepSweep_SequenceNodeOfSequenceOfShapesOfNumLinearRegularSweep(const BRepSweep_SequenceNodeOfSequenceOfShapesOfNumLinearRegularSweep *anItem);
		%feature("autodoc", "1");
		Handle_BRepSweep_SequenceNodeOfSequenceOfShapesOfNumLinearRegularSweep & operator=(const Handle_BRepSweep_SequenceNodeOfSequenceOfShapesOfNumLinearRegularSweep &aHandle);
		%feature("autodoc", "1");
		Handle_BRepSweep_SequenceNodeOfSequenceOfShapesOfNumLinearRegularSweep & operator=(const BRepSweep_SequenceNodeOfSequenceOfShapesOfNumLinearRegularSweep *anItem);
		%feature("autodoc", "1");
		Handle_BRepSweep_SequenceNodeOfSequenceOfShapesOfNumLinearRegularSweep const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepSweep_SequenceNodeOfSequenceOfShapesOfNumLinearRegularSweep {
	BRepSweep_SequenceNodeOfSequenceOfShapesOfNumLinearRegularSweep* GetObject() {
	return (BRepSweep_SequenceNodeOfSequenceOfShapesOfNumLinearRegularSweep*)$self->Access();
	}
};
%extend Handle_BRepSweep_SequenceNodeOfSequenceOfShapesOfNumLinearRegularSweep {
	~Handle_BRepSweep_SequenceNodeOfSequenceOfShapesOfNumLinearRegularSweep() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_BRepSweep_SequenceNodeOfSequenceOfShapesOfNumLinearRegularSweep\n");}
	}
};


%nodefaultctor BRepSweep_NumLinearRegularSweep;
class BRepSweep_NumLinearRegularSweep {
	public:
		%feature("autodoc", "1");
		virtual		void Delete();
		%feature("autodoc", "1");
		virtual		TopoDS_Shape MakeEmptyVertex(const TopoDS_Shape &aGenV, const Sweep_NumShape &aDirV);
		%feature("autodoc", "1");
		virtual		TopoDS_Shape MakeEmptyDirectingEdge(const TopoDS_Shape &aGenV, const Sweep_NumShape &aDirE);
		%feature("autodoc", "1");
		virtual		TopoDS_Shape MakeEmptyGeneratingEdge(const TopoDS_Shape &aGenE, const Sweep_NumShape &aDirV);
		%feature("autodoc", "1");
		virtual		void SetParameters(const TopoDS_Shape &aNewFace, TopoDS_Shape & aNewVertex, const TopoDS_Shape &aGenF, const TopoDS_Shape &aGenV, const Sweep_NumShape &aDirV);
		%feature("autodoc", "1");
		virtual		void SetDirectingParameter(const TopoDS_Shape &aNewEdge, TopoDS_Shape & aNewVertex, const TopoDS_Shape &aGenV, const Sweep_NumShape &aDirE, const Sweep_NumShape &aDirV);
		%feature("autodoc", "1");
		virtual		void SetGeneratingParameter(const TopoDS_Shape &aNewEdge, TopoDS_Shape & aNewVertex, const TopoDS_Shape &aGenE, const TopoDS_Shape &aGenV, const Sweep_NumShape &aDirV);
		%feature("autodoc", "1");
		virtual		TopoDS_Shape MakeEmptyFace(const TopoDS_Shape &aGenS, const Sweep_NumShape &aDirS);
		%feature("autodoc", "1");
		virtual		void SetPCurve(const TopoDS_Shape &aNewFace, TopoDS_Shape & aNewEdge, const TopoDS_Shape &aGenF, const TopoDS_Shape &aGenE, const Sweep_NumShape &aDirV, const TopAbs_Orientation orien);
		%feature("autodoc", "1");
		virtual		void SetGeneratingPCurve(const TopoDS_Shape &aNewFace, TopoDS_Shape & aNewEdge, const TopoDS_Shape &aGenE, const Sweep_NumShape &aDirE, const Sweep_NumShape &aDirV, const TopAbs_Orientation orien);
		%feature("autodoc", "1");
		virtual		void SetDirectingPCurve(const TopoDS_Shape &aNewFace, TopoDS_Shape & aNewEdge, const TopoDS_Shape &aGenE, const TopoDS_Shape &aGenV, const Sweep_NumShape &aDirE, const TopAbs_Orientation orien);
		%feature("autodoc", "1");
		virtual		TopAbs_Orientation DirectSolid(const TopoDS_Shape &aGenS, const Sweep_NumShape &aDirS);
		%feature("autodoc", "1");
		virtual		Standard_Boolean GGDShapeIsToAdd(const TopoDS_Shape &aNewShape, const TopoDS_Shape &aNewSubShape, const TopoDS_Shape &aGenS, const TopoDS_Shape &aSubGenS, const Sweep_NumShape &aDirS) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean GDDShapeIsToAdd(const TopoDS_Shape &aNewShape, const TopoDS_Shape &aNewSubShape, const TopoDS_Shape &aGenS, const Sweep_NumShape &aDirS, const Sweep_NumShape &aSubDirS) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean SeparatedWires(const TopoDS_Shape &aNewShape, const TopoDS_Shape &aNewSubShape, const TopoDS_Shape &aGenS, const TopoDS_Shape &aSubGenS, const Sweep_NumShape &aDirS) const;
		%feature("autodoc", "1");
		virtual		TopoDS_Shape SplitShell(const TopoDS_Shape &aNewShape) const;
		%feature("autodoc", "1");
		virtual		void SetContinuity(const TopoDS_Shape &aGenS, const Sweep_NumShape &aDirS);
		%feature("autodoc", "1");
		virtual		Standard_Boolean HasShape(const TopoDS_Shape &aGenS, const Sweep_NumShape &aDirS) const;
		%feature("autodoc", "1");
		TopoDS_Shape Shape(const TopoDS_Shape &aGenS, const Sweep_NumShape &aDirS);
		%feature("autodoc", "1");
		TopoDS_Shape Shape(const TopoDS_Shape &aGenS);
		%feature("autodoc", "1");
		TopoDS_Shape Shape();
		%feature("autodoc", "1");
		TopoDS_Shape FirstShape();
		%feature("autodoc", "1");
		TopoDS_Shape LastShape();
		%feature("autodoc", "1");
		TopoDS_Shape FirstShape(const TopoDS_Shape &aGenS);
		%feature("autodoc", "1");
		TopoDS_Shape LastShape(const TopoDS_Shape &aGenS);
		%feature("autodoc", "1");
		Standard_Boolean Closed() const;

};
%extend BRepSweep_NumLinearRegularSweep {
	~BRepSweep_NumLinearRegularSweep() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepSweep_NumLinearRegularSweep\n");}
	}
};


%nodefaultctor BRepSweep_Trsf;
class BRepSweep_Trsf : public BRepSweep_NumLinearRegularSweep {
	public:
		%feature("autodoc", "1");
		void Init();
		%feature("autodoc", "1");
		Standard_Boolean Process(const TopoDS_Shape &aGenS, const Sweep_NumShape &aDirV);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsInvariant(const TopoDS_Shape &aGenS) const;

};
%extend BRepSweep_Trsf {
	~BRepSweep_Trsf() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepSweep_Trsf\n");}
	}
};


%nodefaultctor BRepSweep_Translation;
class BRepSweep_Translation : public BRepSweep_Trsf {
	public:
		%feature("autodoc", "1");
		BRepSweep_Translation(const TopoDS_Shape &S, const Sweep_NumShape &N, const TopLoc_Location &L, const gp_Vec &V, const Standard_Boolean C, const Standard_Boolean Canonize=1);
		%feature("autodoc", "1");
		gp_Vec Vec() const;

};
%extend BRepSweep_Translation {
	~BRepSweep_Translation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepSweep_Translation\n");}
	}
};


%nodefaultctor BRepSweep_Iterator;
class BRepSweep_Iterator {
	public:
		%feature("autodoc", "1");
		BRepSweep_Iterator();
		%feature("autodoc", "1");
		void Init(const TopoDS_Shape &aShape);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		const TopoDS_Shape & Value() const;
		%feature("autodoc", "1");
		TopAbs_Orientation Orientation() const;

};
%extend BRepSweep_Iterator {
	~BRepSweep_Iterator() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepSweep_Iterator\n");}
	}
};


%nodefaultctor BRepSweep_SequenceOfShapesOfNumLinearRegularSweep;
class BRepSweep_SequenceOfShapesOfNumLinearRegularSweep : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		BRepSweep_SequenceOfShapesOfNumLinearRegularSweep();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const BRepSweep_SequenceOfShapesOfNumLinearRegularSweep & Assign(const BRepSweep_SequenceOfShapesOfNumLinearRegularSweep &Other);
		%feature("autodoc", "1");
		const BRepSweep_SequenceOfShapesOfNumLinearRegularSweep & operator=(const BRepSweep_SequenceOfShapesOfNumLinearRegularSweep &Other);
		%feature("autodoc", "1");
		void Append(const TopoDS_Shape &T);
		%feature("autodoc", "1");
		void Append(BRepSweep_SequenceOfShapesOfNumLinearRegularSweep & S);
		%feature("autodoc", "1");
		void Prepend(const TopoDS_Shape &T);
		%feature("autodoc", "1");
		void Prepend(BRepSweep_SequenceOfShapesOfNumLinearRegularSweep & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const TopoDS_Shape &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, BRepSweep_SequenceOfShapesOfNumLinearRegularSweep & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const TopoDS_Shape &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, BRepSweep_SequenceOfShapesOfNumLinearRegularSweep & S);
		%feature("autodoc", "1");
		const TopoDS_Shape & First() const;
		%feature("autodoc", "1");
		const TopoDS_Shape & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, BRepSweep_SequenceOfShapesOfNumLinearRegularSweep & S);
		%feature("autodoc", "1");
		const TopoDS_Shape & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const TopoDS_Shape & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const TopoDS_Shape &I);
		%feature("autodoc", "1");
		TopoDS_Shape & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		TopoDS_Shape & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%extend BRepSweep_SequenceOfShapesOfNumLinearRegularSweep {
	~BRepSweep_SequenceOfShapesOfNumLinearRegularSweep() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepSweep_SequenceOfShapesOfNumLinearRegularSweep\n");}
	}
};


%nodefaultctor BRepSweep_Array2OfShapesOfNumLinearRegularSweep;
class BRepSweep_Array2OfShapesOfNumLinearRegularSweep {
	public:
		%feature("autodoc", "1");
		BRepSweep_Array2OfShapesOfNumLinearRegularSweep(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		BRepSweep_Array2OfShapesOfNumLinearRegularSweep(const TopoDS_Shape &Item, const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		void Init(const TopoDS_Shape &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		const BRepSweep_Array2OfShapesOfNumLinearRegularSweep & Assign(const BRepSweep_Array2OfShapesOfNumLinearRegularSweep &Other);
		%feature("autodoc", "1");
		const BRepSweep_Array2OfShapesOfNumLinearRegularSweep & operator=(const BRepSweep_Array2OfShapesOfNumLinearRegularSweep &Other);
		%feature("autodoc", "1");
		Standard_Integer ColLength() const;
		%feature("autodoc", "1");
		Standard_Integer RowLength() const;
		%feature("autodoc", "1");
		Standard_Integer LowerCol() const;
		%feature("autodoc", "1");
		Standard_Integer LowerRow() const;
		%feature("autodoc", "1");
		Standard_Integer UpperCol() const;
		%feature("autodoc", "1");
		Standard_Integer UpperRow() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const TopoDS_Shape &Value);
		%feature("autodoc", "1");
		const TopoDS_Shape & Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		const TopoDS_Shape & operator()(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		TopoDS_Shape & ChangeValue(const Standard_Integer Row, const Standard_Integer Col);
		%feature("autodoc", "1");
		TopoDS_Shape & operator()(const Standard_Integer Row, const Standard_Integer Col);

};
%extend BRepSweep_Array2OfShapesOfNumLinearRegularSweep {
	~BRepSweep_Array2OfShapesOfNumLinearRegularSweep() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepSweep_Array2OfShapesOfNumLinearRegularSweep\n");}
	}
};


%nodefaultctor BRepSweep_Revol;
class BRepSweep_Revol {
	public:
		%feature("autodoc", "1");
		BRepSweep_Revol(const TopoDS_Shape &S, const gp_Ax1 &A, const Quantity_PlaneAngle D, const Standard_Boolean C=0);
		%feature("autodoc", "1");
		BRepSweep_Revol(const TopoDS_Shape &S, const gp_Ax1 &A, const Standard_Boolean C=0);
		%feature("autodoc", "1");
		TopoDS_Shape Shape();
		%feature("autodoc", "1");
		TopoDS_Shape Shape(const TopoDS_Shape &aGenS);
		%feature("autodoc", "1");
		TopoDS_Shape FirstShape();
		%feature("autodoc", "1");
		TopoDS_Shape FirstShape(const TopoDS_Shape &aGenS);
		%feature("autodoc", "1");
		TopoDS_Shape LastShape();
		%feature("autodoc", "1");
		TopoDS_Shape LastShape(const TopoDS_Shape &aGenS);
		%feature("autodoc", "1");
		gp_Ax1 Axe() const;
		%feature("autodoc", "1");
		Quantity_PlaneAngle Angle() const;

};
%extend BRepSweep_Revol {
	~BRepSweep_Revol() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepSweep_Revol\n");}
	}
};


%nodefaultctor BRepSweep_Builder;
class BRepSweep_Builder {
	public:
		%feature("autodoc", "1");
		BRepSweep_Builder(const BRep_Builder &aBuilder);
		%feature("autodoc", "1");
		const BRep_Builder & Builder() const;
		%feature("autodoc", "1");
		void MakeCompound(TopoDS_Shape & aCompound) const;
		%feature("autodoc", "1");
		void MakeCompSolid(TopoDS_Shape & aCompSolid) const;
		%feature("autodoc", "1");
		void MakeSolid(TopoDS_Shape & aSolid) const;
		%feature("autodoc", "1");
		void MakeShell(TopoDS_Shape & aShell) const;
		%feature("autodoc", "1");
		void MakeWire(TopoDS_Shape & aWire) const;
		%feature("autodoc", "1");
		void Add(TopoDS_Shape & aShape1, const TopoDS_Shape &aShape2, const TopAbs_Orientation Orient) const;
		%feature("autodoc", "1");
		void Add(TopoDS_Shape & aShape1, const TopoDS_Shape &aShape2) const;

};
%extend BRepSweep_Builder {
	~BRepSweep_Builder() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepSweep_Builder\n");}
	}
};


%nodefaultctor BRepSweep_SequenceNodeOfSequenceOfShapesOfNumLinearRegularSweep;
class BRepSweep_SequenceNodeOfSequenceOfShapesOfNumLinearRegularSweep : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		BRepSweep_SequenceNodeOfSequenceOfShapesOfNumLinearRegularSweep(const TopoDS_Shape &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		TopoDS_Shape & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepSweep_SequenceNodeOfSequenceOfShapesOfNumLinearRegularSweep {
	Handle_BRepSweep_SequenceNodeOfSequenceOfShapesOfNumLinearRegularSweep GetHandle() {
	return *(Handle_BRepSweep_SequenceNodeOfSequenceOfShapesOfNumLinearRegularSweep*) &$self;
	}
};
%extend BRepSweep_SequenceNodeOfSequenceOfShapesOfNumLinearRegularSweep {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend BRepSweep_SequenceNodeOfSequenceOfShapesOfNumLinearRegularSweep {
	~BRepSweep_SequenceNodeOfSequenceOfShapesOfNumLinearRegularSweep() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepSweep_SequenceNodeOfSequenceOfShapesOfNumLinearRegularSweep\n");}
	}
};


%nodefaultctor BRepSweep_Rotation;
class BRepSweep_Rotation : public BRepSweep_Trsf {
	public:
		%feature("autodoc", "1");
		BRepSweep_Rotation(const TopoDS_Shape &S, const Sweep_NumShape &N, const TopLoc_Location &L, const gp_Ax1 &A, const Quantity_PlaneAngle D, const Standard_Boolean C);
		%feature("autodoc", "1");
		virtual		TopoDS_Shape MakeEmptyVertex(const TopoDS_Shape &aGenV, const Sweep_NumShape &aDirV);
		%feature("autodoc", "1");
		virtual		TopoDS_Shape MakeEmptyDirectingEdge(const TopoDS_Shape &aGenV, const Sweep_NumShape &aDirE);
		%feature("autodoc", "1");
		virtual		TopoDS_Shape MakeEmptyGeneratingEdge(const TopoDS_Shape &aGenE, const Sweep_NumShape &aDirV);
		%feature("autodoc", "1");
		virtual		void SetParameters(const TopoDS_Shape &aNewFace, TopoDS_Shape & aNewVertex, const TopoDS_Shape &aGenF, const TopoDS_Shape &aGenV, const Sweep_NumShape &aDirV);
		%feature("autodoc", "1");
		virtual		void SetDirectingParameter(const TopoDS_Shape &aNewEdge, TopoDS_Shape & aNewVertex, const TopoDS_Shape &aGenV, const Sweep_NumShape &aDirE, const Sweep_NumShape &aDirV);
		%feature("autodoc", "1");
		virtual		void SetGeneratingParameter(const TopoDS_Shape &aNewEdge, TopoDS_Shape & aNewVertex, const TopoDS_Shape &aGenE, const TopoDS_Shape &aGenV, const Sweep_NumShape &aDirV);
		%feature("autodoc", "1");
		virtual		TopoDS_Shape MakeEmptyFace(const TopoDS_Shape &aGenS, const Sweep_NumShape &aDirS);
		%feature("autodoc", "1");
		virtual		void SetPCurve(const TopoDS_Shape &aNewFace, TopoDS_Shape & aNewEdge, const TopoDS_Shape &aGenF, const TopoDS_Shape &aGenE, const Sweep_NumShape &aDirV, const TopAbs_Orientation orien);
		%feature("autodoc", "1");
		virtual		void SetGeneratingPCurve(const TopoDS_Shape &aNewFace, TopoDS_Shape & aNewEdge, const TopoDS_Shape &aGenE, const Sweep_NumShape &aDirE, const Sweep_NumShape &aDirV, const TopAbs_Orientation orien);
		%feature("autodoc", "1");
		virtual		void SetDirectingPCurve(const TopoDS_Shape &aNewFace, TopoDS_Shape & aNewEdge, const TopoDS_Shape &aGenE, const TopoDS_Shape &aGenV, const Sweep_NumShape &aDirE, const TopAbs_Orientation orien);
		%feature("autodoc", "1");
		virtual		TopAbs_Orientation DirectSolid(const TopoDS_Shape &aGenS, const Sweep_NumShape &aDirS);
		%feature("autodoc", "1");
		virtual		Standard_Boolean GGDShapeIsToAdd(const TopoDS_Shape &aNewShape, const TopoDS_Shape &aNewSubShape, const TopoDS_Shape &aGenS, const TopoDS_Shape &aSubGenS, const Sweep_NumShape &aDirS) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean GDDShapeIsToAdd(const TopoDS_Shape &aNewShape, const TopoDS_Shape &aNewSubShape, const TopoDS_Shape &aGenS, const Sweep_NumShape &aDirS, const Sweep_NumShape &aSubDirS) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean SeparatedWires(const TopoDS_Shape &aNewShape, const TopoDS_Shape &aNewSubShape, const TopoDS_Shape &aGenS, const TopoDS_Shape &aSubGenS, const Sweep_NumShape &aDirS) const;
		%feature("autodoc", "1");
		virtual		TopoDS_Shape SplitShell(const TopoDS_Shape &aNewShape) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean HasShape(const TopoDS_Shape &aGenS, const Sweep_NumShape &aDirS) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsInvariant(const TopoDS_Shape &aGenS) const;
		%feature("autodoc", "1");
		gp_Ax1 Axe() const;
		%feature("autodoc", "1");
		Quantity_PlaneAngle Angle() const;

};
%extend BRepSweep_Rotation {
	~BRepSweep_Rotation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepSweep_Rotation\n");}
	}
};


%nodefaultctor BRepSweep_Tool;
class BRepSweep_Tool {
	public:
		%feature("autodoc", "1");
		BRepSweep_Tool(const TopoDS_Shape &aShape);
		%feature("autodoc", "1");
		Standard_Integer NbShapes() const;
		%feature("autodoc", "1");
		Standard_Integer Index(const TopoDS_Shape &aShape) const;
		%feature("autodoc", "1");
		TopoDS_Shape Shape(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		TopAbs_ShapeEnum Type(const TopoDS_Shape &aShape) const;
		%feature("autodoc", "1");
		TopAbs_Orientation Orientation(const TopoDS_Shape &aShape) const;
		%feature("autodoc", "1");
		void SetOrientation(TopoDS_Shape & aShape, const TopAbs_Orientation Or) const;

};
%extend BRepSweep_Tool {
	~BRepSweep_Tool() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepSweep_Tool\n");}
	}
};


%nodefaultctor BRepSweep_Prism;
class BRepSweep_Prism {
	public:
		%feature("autodoc", "1");
		BRepSweep_Prism(const TopoDS_Shape &S, const gp_Vec &V, const Standard_Boolean Copy=0, const Standard_Boolean Canonize=1);
		%feature("autodoc", "1");
		BRepSweep_Prism(const TopoDS_Shape &S, const gp_Dir &D, const Standard_Boolean Inf=1, const Standard_Boolean Copy=0, const Standard_Boolean Canonize=1);
		%feature("autodoc", "1");
		TopoDS_Shape Shape();
		%feature("autodoc", "1");
		TopoDS_Shape Shape(const TopoDS_Shape &aGenS);
		%feature("autodoc", "1");
		TopoDS_Shape FirstShape();
		%feature("autodoc", "1");
		TopoDS_Shape FirstShape(const TopoDS_Shape &aGenS);
		%feature("autodoc", "1");
		TopoDS_Shape LastShape();
		%feature("autodoc", "1");
		TopoDS_Shape LastShape(const TopoDS_Shape &aGenS);
		%feature("autodoc", "1");
		gp_Vec Vec() const;

};
%extend BRepSweep_Prism {
	~BRepSweep_Prism() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepSweep_Prism\n");}
	}
};
