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
%module ShapeFix

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


%include ShapeFix_dependencies.i


%include ShapeFix_headers.i




%nodefaultctor Handle_ShapeFix_Root;
class Handle_ShapeFix_Root : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_ShapeFix_Root();
		%feature("autodoc", "1");
		Handle_ShapeFix_Root();
		%feature("autodoc", "1");
		Handle_ShapeFix_Root(const Handle_ShapeFix_Root &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeFix_Root(const ShapeFix_Root *anItem);
		%feature("autodoc", "1");
		Handle_ShapeFix_Root const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeFix_Root {
	ShapeFix_Root* GetObject() {
	return (ShapeFix_Root*)$self->Access();
	}
};

%nodefaultctor Handle_ShapeFix_Face;
class Handle_ShapeFix_Face : public Handle_ShapeFix_Root {
	public:
		%feature("autodoc", "1");
		~Handle_ShapeFix_Face();
		%feature("autodoc", "1");
		Handle_ShapeFix_Face();
		%feature("autodoc", "1");
		Handle_ShapeFix_Face(const Handle_ShapeFix_Face &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeFix_Face(const ShapeFix_Face *anItem);
		%feature("autodoc", "1");
		Handle_ShapeFix_Face const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeFix_Face {
	ShapeFix_Face* GetObject() {
	return (ShapeFix_Face*)$self->Access();
	}
};

%nodefaultctor Handle_ShapeFix_ComposeShell;
class Handle_ShapeFix_ComposeShell : public Handle_ShapeFix_Root {
	public:
		%feature("autodoc", "1");
		~Handle_ShapeFix_ComposeShell();
		%feature("autodoc", "1");
		Handle_ShapeFix_ComposeShell();
		%feature("autodoc", "1");
		Handle_ShapeFix_ComposeShell(const Handle_ShapeFix_ComposeShell &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeFix_ComposeShell(const ShapeFix_ComposeShell *anItem);
		%feature("autodoc", "1");
		Handle_ShapeFix_ComposeShell const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeFix_ComposeShell {
	ShapeFix_ComposeShell* GetObject() {
	return (ShapeFix_ComposeShell*)$self->Access();
	}
};

%nodefaultctor Handle_ShapeFix_EdgeProjAux;
class Handle_ShapeFix_EdgeProjAux : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_ShapeFix_EdgeProjAux();
		%feature("autodoc", "1");
		Handle_ShapeFix_EdgeProjAux();
		%feature("autodoc", "1");
		Handle_ShapeFix_EdgeProjAux(const Handle_ShapeFix_EdgeProjAux &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeFix_EdgeProjAux(const ShapeFix_EdgeProjAux *anItem);
		%feature("autodoc", "1");
		Handle_ShapeFix_EdgeProjAux const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeFix_EdgeProjAux {
	ShapeFix_EdgeProjAux* GetObject() {
	return (ShapeFix_EdgeProjAux*)$self->Access();
	}
};

%nodefaultctor Handle_ShapeFix_Solid;
class Handle_ShapeFix_Solid : public Handle_ShapeFix_Root {
	public:
		%feature("autodoc", "1");
		~Handle_ShapeFix_Solid();
		%feature("autodoc", "1");
		Handle_ShapeFix_Solid();
		%feature("autodoc", "1");
		Handle_ShapeFix_Solid(const Handle_ShapeFix_Solid &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeFix_Solid(const ShapeFix_Solid *anItem);
		%feature("autodoc", "1");
		Handle_ShapeFix_Solid const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeFix_Solid {
	ShapeFix_Solid* GetObject() {
	return (ShapeFix_Solid*)$self->Access();
	}
};

%nodefaultctor Handle_ShapeFix_SequenceNodeOfSequenceOfWireSegment;
class Handle_ShapeFix_SequenceNodeOfSequenceOfWireSegment : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		~Handle_ShapeFix_SequenceNodeOfSequenceOfWireSegment();
		%feature("autodoc", "1");
		Handle_ShapeFix_SequenceNodeOfSequenceOfWireSegment();
		%feature("autodoc", "1");
		Handle_ShapeFix_SequenceNodeOfSequenceOfWireSegment(const Handle_ShapeFix_SequenceNodeOfSequenceOfWireSegment &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeFix_SequenceNodeOfSequenceOfWireSegment(const ShapeFix_SequenceNodeOfSequenceOfWireSegment *anItem);
		%feature("autodoc", "1");
		Handle_ShapeFix_SequenceNodeOfSequenceOfWireSegment const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeFix_SequenceNodeOfSequenceOfWireSegment {
	ShapeFix_SequenceNodeOfSequenceOfWireSegment* GetObject() {
	return (ShapeFix_SequenceNodeOfSequenceOfWireSegment*)$self->Access();
	}
};

%nodefaultctor Handle_ShapeFix_Wire;
class Handle_ShapeFix_Wire : public Handle_ShapeFix_Root {
	public:
		%feature("autodoc", "1");
		~Handle_ShapeFix_Wire();
		%feature("autodoc", "1");
		Handle_ShapeFix_Wire();
		%feature("autodoc", "1");
		Handle_ShapeFix_Wire(const Handle_ShapeFix_Wire &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeFix_Wire(const ShapeFix_Wire *anItem);
		%feature("autodoc", "1");
		Handle_ShapeFix_Wire const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeFix_Wire {
	ShapeFix_Wire* GetObject() {
	return (ShapeFix_Wire*)$self->Access();
	}
};

%nodefaultctor Handle_ShapeFix_Edge;
class Handle_ShapeFix_Edge : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_ShapeFix_Edge();
		%feature("autodoc", "1");
		Handle_ShapeFix_Edge();
		%feature("autodoc", "1");
		Handle_ShapeFix_Edge(const Handle_ShapeFix_Edge &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeFix_Edge(const ShapeFix_Edge *anItem);
		%feature("autodoc", "1");
		Handle_ShapeFix_Edge const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeFix_Edge {
	ShapeFix_Edge* GetObject() {
	return (ShapeFix_Edge*)$self->Access();
	}
};

%nodefaultctor Handle_ShapeFix_Wireframe;
class Handle_ShapeFix_Wireframe : public Handle_ShapeFix_Root {
	public:
		%feature("autodoc", "1");
		~Handle_ShapeFix_Wireframe();
		%feature("autodoc", "1");
		Handle_ShapeFix_Wireframe();
		%feature("autodoc", "1");
		Handle_ShapeFix_Wireframe(const Handle_ShapeFix_Wireframe &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeFix_Wireframe(const ShapeFix_Wireframe *anItem);
		%feature("autodoc", "1");
		Handle_ShapeFix_Wireframe const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeFix_Wireframe {
	ShapeFix_Wireframe* GetObject() {
	return (ShapeFix_Wireframe*)$self->Access();
	}
};

%nodefaultctor Handle_ShapeFix_DataMapNodeOfDataMapOfShapeBox2d;
class Handle_ShapeFix_DataMapNodeOfDataMapOfShapeBox2d : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_ShapeFix_DataMapNodeOfDataMapOfShapeBox2d();
		%feature("autodoc", "1");
		Handle_ShapeFix_DataMapNodeOfDataMapOfShapeBox2d();
		%feature("autodoc", "1");
		Handle_ShapeFix_DataMapNodeOfDataMapOfShapeBox2d(const Handle_ShapeFix_DataMapNodeOfDataMapOfShapeBox2d &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeFix_DataMapNodeOfDataMapOfShapeBox2d(const ShapeFix_DataMapNodeOfDataMapOfShapeBox2d *anItem);
		%feature("autodoc", "1");
		Handle_ShapeFix_DataMapNodeOfDataMapOfShapeBox2d const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeFix_DataMapNodeOfDataMapOfShapeBox2d {
	ShapeFix_DataMapNodeOfDataMapOfShapeBox2d* GetObject() {
	return (ShapeFix_DataMapNodeOfDataMapOfShapeBox2d*)$self->Access();
	}
};

%nodefaultctor Handle_ShapeFix_Shape;
class Handle_ShapeFix_Shape : public Handle_ShapeFix_Root {
	public:
		%feature("autodoc", "1");
		~Handle_ShapeFix_Shape();
		%feature("autodoc", "1");
		Handle_ShapeFix_Shape();
		%feature("autodoc", "1");
		Handle_ShapeFix_Shape(const Handle_ShapeFix_Shape &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeFix_Shape(const ShapeFix_Shape *anItem);
		%feature("autodoc", "1");
		Handle_ShapeFix_Shape const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeFix_Shape {
	ShapeFix_Shape* GetObject() {
	return (ShapeFix_Shape*)$self->Access();
	}
};

%nodefaultctor Handle_ShapeFix_FixSmallFace;
class Handle_ShapeFix_FixSmallFace : public Handle_ShapeFix_Root {
	public:
		%feature("autodoc", "1");
		~Handle_ShapeFix_FixSmallFace();
		%feature("autodoc", "1");
		Handle_ShapeFix_FixSmallFace();
		%feature("autodoc", "1");
		Handle_ShapeFix_FixSmallFace(const Handle_ShapeFix_FixSmallFace &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeFix_FixSmallFace(const ShapeFix_FixSmallFace *anItem);
		%feature("autodoc", "1");
		Handle_ShapeFix_FixSmallFace const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeFix_FixSmallFace {
	ShapeFix_FixSmallFace* GetObject() {
	return (ShapeFix_FixSmallFace*)$self->Access();
	}
};

%nodefaultctor Handle_ShapeFix_Shell;
class Handle_ShapeFix_Shell : public Handle_ShapeFix_Root {
	public:
		%feature("autodoc", "1");
		~Handle_ShapeFix_Shell();
		%feature("autodoc", "1");
		Handle_ShapeFix_Shell();
		%feature("autodoc", "1");
		Handle_ShapeFix_Shell(const Handle_ShapeFix_Shell &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeFix_Shell(const ShapeFix_Shell *anItem);
		%feature("autodoc", "1");
		Handle_ShapeFix_Shell const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeFix_Shell {
	ShapeFix_Shell* GetObject() {
	return (ShapeFix_Shell*)$self->Access();
	}
};

%nodefaultctor Handle_ShapeFix_SplitCommonVertex;
class Handle_ShapeFix_SplitCommonVertex : public Handle_ShapeFix_Root {
	public:
		%feature("autodoc", "1");
		~Handle_ShapeFix_SplitCommonVertex();
		%feature("autodoc", "1");
		Handle_ShapeFix_SplitCommonVertex();
		%feature("autodoc", "1");
		Handle_ShapeFix_SplitCommonVertex(const Handle_ShapeFix_SplitCommonVertex &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeFix_SplitCommonVertex(const ShapeFix_SplitCommonVertex *anItem);
		%feature("autodoc", "1");
		Handle_ShapeFix_SplitCommonVertex const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeFix_SplitCommonVertex {
	ShapeFix_SplitCommonVertex* GetObject() {
	return (ShapeFix_SplitCommonVertex*)$self->Access();
	}
};

%nodefaultctor ShapeFix_Root;
class ShapeFix_Root : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		ShapeFix_Root();
		%feature("autodoc", "1");
		virtual		void Set(const Handle_ShapeFix_Root &Root);
		%feature("autodoc", "1");
		virtual		void SetContext(const Handle_ShapeBuild_ReShape &context);
		%feature("autodoc", "1");
		Handle_ShapeBuild_ReShape Context() const;
		%feature("autodoc", "1");
		virtual		void SetMsgRegistrator(const Handle_ShapeExtend_BasicMsgRegistrator &msgreg);
		%feature("autodoc", "1");
		Handle_ShapeExtend_BasicMsgRegistrator MsgRegistrator() const;
		%feature("autodoc", "1");
		virtual		void SetPrecision(const Standard_Real preci);
		%feature("autodoc", "1");
		Standard_Real Precision() const;
		%feature("autodoc", "1");
		virtual		void SetMinTolerance(const Standard_Real mintol);
		%feature("autodoc", "1");
		Standard_Real MinTolerance() const;
		%feature("autodoc", "1");
		virtual		void SetMaxTolerance(const Standard_Real maxtol);
		%feature("autodoc", "1");
		Standard_Real MaxTolerance() const;
		%feature("autodoc", "1");
		Standard_Real LimitTolerance(const Standard_Real toler) const;
		%feature("autodoc", "1");
		void SendMsg(const TopoDS_Shape &shape, const Message_Msg &message, const Message_Gravity gravity=Message_Info) const;
		%feature("autodoc", "1");
		void SendMsg(const Message_Msg &message, const Message_Gravity gravity=Message_Info) const;
		%feature("autodoc", "1");
		void SendWarning(const TopoDS_Shape &shape, const Message_Msg &message) const;
		%feature("autodoc", "1");
		void SendWarning(const Message_Msg &message) const;
		%feature("autodoc", "1");
		void SendFail(const TopoDS_Shape &shape, const Message_Msg &message) const;
		%feature("autodoc", "1");
		void SendFail(const Message_Msg &message) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~ShapeFix_Root();

};
%extend ShapeFix_Root {
	Handle_ShapeFix_Root GetHandle() {
	return *(Handle_ShapeFix_Root*) &$self;
	}
};

%nodefaultctor ShapeFix_ComposeShell;
class ShapeFix_ComposeShell : public ShapeFix_Root {
	public:
		%feature("autodoc", "1");
		ShapeFix_ComposeShell();
		%feature("autodoc", "1");
		void Init(const Handle_ShapeExtend_CompositeSurface &Grid, const TopLoc_Location &L, const TopoDS_Face &Face, const Standard_Real Prec);
		%feature("autodoc", "1");
		Standard_Boolean & ClosedMode();
		%feature("autodoc", "1");
		virtual		Standard_Boolean Perform();
		%feature("autodoc", "1");
		void SplitEdges();
		%feature("autodoc", "1");
		const TopoDS_Shape & Result() const;
		%feature("autodoc", "1");
		Standard_Boolean Status(const ShapeExtend_Status status) const;
		%feature("autodoc", "1");
		void DispatchWires(TopTools_SequenceOfShape & faces, ShapeFix_SequenceOfWireSegment & wires) const;
		%feature("autodoc", "1");
		void SetTransferParamTool(const Handle_ShapeAnalysis_TransferParameters &TransferParam);
		%feature("autodoc", "1");
		Handle_ShapeAnalysis_TransferParameters GetTransferParamTool() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~ShapeFix_ComposeShell();

};
%extend ShapeFix_ComposeShell {
	Handle_ShapeFix_ComposeShell GetHandle() {
	return *(Handle_ShapeFix_ComposeShell*) &$self;
	}
};

%nodefaultctor ShapeFix_EdgeProjAux;
class ShapeFix_EdgeProjAux : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		ShapeFix_EdgeProjAux();
		%feature("autodoc", "1");
		ShapeFix_EdgeProjAux(const TopoDS_Face &F, const TopoDS_Edge &E);
		%feature("autodoc", "1");
		void Init(const TopoDS_Face &F, const TopoDS_Edge &E);
		%feature("autodoc", "1");
		void Compute(const Standard_Real preci);
		%feature("autodoc", "1");
		Standard_Boolean IsFirstDone() const;
		%feature("autodoc", "1");
		Standard_Boolean IsLastDone() const;
		%feature("autodoc", "1");
		Standard_Real FirstParam() const;
		%feature("autodoc", "1");
		Standard_Real LastParam() const;
		%feature("autodoc", "1");
		Standard_Boolean IsIso(const Handle_Geom2d_Curve &C);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~ShapeFix_EdgeProjAux();

};
%extend ShapeFix_EdgeProjAux {
	Handle_ShapeFix_EdgeProjAux GetHandle() {
	return *(Handle_ShapeFix_EdgeProjAux*) &$self;
	}
};

%nodefaultctor ShapeFix;
class ShapeFix {
	public:
		%feature("autodoc", "1");
		~ShapeFix();
		%feature("autodoc", "1");
		ShapeFix();
		%feature("autodoc", "1");
		Standard_Boolean SameParameter(const TopoDS_Shape &shape, const Standard_Boolean enforce, const Standard_Real preci=0.0);
		%feature("autodoc", "1");
		void EncodeRegularity(const TopoDS_Shape &shape, const Standard_Real tolang=1.0000000000000000364321973154977415791655470656e-10);
		%feature("autodoc", "1");
		TopoDS_Shape RemoveSmallEdges(TopoDS_Shape & shape, const Standard_Real Tolerance, Handle_ShapeBuild_ReShape & context);
		%feature("autodoc", "1");
		Standard_Boolean FixVertexPosition(TopoDS_Shape & theshape, const Standard_Real theTolerance, const Handle_ShapeBuild_ReShape &thecontext);

};

%nodefaultctor ShapeFix_FreeBounds;
class ShapeFix_FreeBounds {
	public:
		%feature("autodoc", "1");
		~ShapeFix_FreeBounds();
		%feature("autodoc", "1");
		ShapeFix_FreeBounds();
		%feature("autodoc", "1");
		ShapeFix_FreeBounds(const TopoDS_Shape &shape, const Standard_Real sewtoler, const Standard_Real closetoler, const Standard_Boolean splitclosed, const Standard_Boolean splitopen);
		%feature("autodoc", "1");
		ShapeFix_FreeBounds(const TopoDS_Shape &shape, const Standard_Real closetoler, const Standard_Boolean splitclosed, const Standard_Boolean splitopen);
		%feature("autodoc", "1");
		const TopoDS_Compound & GetClosedWires() const;
		%feature("autodoc", "1");
		const TopoDS_Compound & GetOpenWires() const;
		%feature("autodoc", "1");
		const TopoDS_Shape & GetShape() const;

};

%nodefaultctor ShapeFix_WireVertex;
class ShapeFix_WireVertex {
	public:
		%feature("autodoc", "1");
		~ShapeFix_WireVertex();
		%feature("autodoc", "1");
		ShapeFix_WireVertex();
		%feature("autodoc", "1");
		void Init(const TopoDS_Wire &wire, const Standard_Real preci);
		%feature("autodoc", "1");
		void Init(const Handle_ShapeExtend_WireData &sbwd, const Standard_Real preci);
		%feature("autodoc", "1");
		void Init(const ShapeAnalysis_WireVertex &sawv);
		%feature("autodoc", "1");
		const ShapeAnalysis_WireVertex & Analyzer() const;
		%feature("autodoc", "1");
		const Handle_ShapeExtend_WireData & WireData() const;
		%feature("autodoc", "1");
		TopoDS_Wire Wire() const;
		%feature("autodoc", "1");
		Standard_Integer FixSame();
		%feature("autodoc", "1");
		Standard_Integer Fix();

};

%nodefaultctor ShapeFix_SequenceOfWireSegment;
class ShapeFix_SequenceOfWireSegment : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		ShapeFix_SequenceOfWireSegment();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~ShapeFix_SequenceOfWireSegment();
		%feature("autodoc", "1");
		const ShapeFix_SequenceOfWireSegment & Assign(const ShapeFix_SequenceOfWireSegment &Other);
		%feature("autodoc", "1");
		void Append(const ShapeFix_WireSegment &T);
		%feature("autodoc", "1");
		void Append(ShapeFix_SequenceOfWireSegment & S);
		%feature("autodoc", "1");
		void Prepend(const ShapeFix_WireSegment &T);
		%feature("autodoc", "1");
		void Prepend(ShapeFix_SequenceOfWireSegment & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const ShapeFix_WireSegment &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, ShapeFix_SequenceOfWireSegment & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const ShapeFix_WireSegment &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, ShapeFix_SequenceOfWireSegment & S);
		%feature("autodoc", "1");
		const ShapeFix_WireSegment & First() const;
		%feature("autodoc", "1");
		const ShapeFix_WireSegment & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, ShapeFix_SequenceOfWireSegment & S);
		%feature("autodoc", "1");
		const ShapeFix_WireSegment & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const ShapeFix_WireSegment & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const ShapeFix_WireSegment &I);
		%feature("autodoc", "1");
		ShapeFix_WireSegment & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		ShapeFix_WireSegment & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};

%nodefaultctor ShapeFix_Solid;
class ShapeFix_Solid : public ShapeFix_Root {
	public:
		%feature("autodoc", "1");
		ShapeFix_Solid();
		%feature("autodoc", "1");
		ShapeFix_Solid(const TopoDS_Solid &solid);
		%feature("autodoc", "1");
		virtual		void Init(const TopoDS_Solid &solid);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Perform();
		%feature("autodoc", "1");
		TopoDS_Solid SolidFromShell(const TopoDS_Shell &shell);
		%feature("autodoc", "1");
		Standard_Boolean Status(const ShapeExtend_Status status) const;
		%feature("autodoc", "1");
		TopoDS_Shape Solid() const;
		%feature("autodoc", "1");
		Handle_ShapeFix_Shell FixShellTool() const;
		%feature("autodoc", "1");
		virtual		void SetMsgRegistrator(const Handle_ShapeExtend_BasicMsgRegistrator &msgreg);
		%feature("autodoc", "1");
		virtual		void SetPrecision(const Standard_Real preci);
		%feature("autodoc", "1");
		virtual		void SetMinTolerance(const Standard_Real mintol);
		%feature("autodoc", "1");
		virtual		void SetMaxTolerance(const Standard_Real maxtol);
		%feature("autodoc", "1");
		Standard_Integer & FixShellMode();
		%feature("autodoc", "1");
		Standard_Boolean & CreateOpenSolidMode();
		%feature("autodoc", "1");
		TopoDS_Shape Shape();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~ShapeFix_Solid();

};
%extend ShapeFix_Solid {
	Handle_ShapeFix_Solid GetHandle() {
	return *(Handle_ShapeFix_Solid*) &$self;
	}
};

%nodefaultctor ShapeFix_DataMapIteratorOfDataMapOfShapeBox2d;
class ShapeFix_DataMapIteratorOfDataMapOfShapeBox2d : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		~ShapeFix_DataMapIteratorOfDataMapOfShapeBox2d();
		%feature("autodoc", "1");
		ShapeFix_DataMapIteratorOfDataMapOfShapeBox2d();
		%feature("autodoc", "1");
		ShapeFix_DataMapIteratorOfDataMapOfShapeBox2d(const ShapeFix_DataMapOfShapeBox2d &aMap);
		%feature("autodoc", "1");
		void Initialize(const ShapeFix_DataMapOfShapeBox2d &aMap);
		%feature("autodoc", "1");
		const TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		const Bnd_Box2d & Value() const;

};

%nodefaultctor ShapeFix_Edge;
class ShapeFix_Edge : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		ShapeFix_Edge();
		%feature("autodoc", "1");
		Handle_ShapeConstruct_ProjectCurveOnSurface Projector();
		%feature("autodoc", "1");
		Standard_Boolean FixRemovePCurve(const TopoDS_Edge &edge, const TopoDS_Face &face);
		%feature("autodoc", "1");
		Standard_Boolean FixRemovePCurve(const TopoDS_Edge &edge, const Handle_Geom_Surface &surface, const TopLoc_Location &location);
		%feature("autodoc", "1");
		Standard_Boolean FixRemoveCurve3d(const TopoDS_Edge &edge);
		%feature("autodoc", "1");
		Standard_Boolean FixAddPCurve(const TopoDS_Edge &edge, const TopoDS_Face &face, const Standard_Boolean isSeam, const Standard_Real prec=0.0);
		%feature("autodoc", "1");
		Standard_Boolean FixAddPCurve(const TopoDS_Edge &edge, const Handle_Geom_Surface &surface, const TopLoc_Location &location, const Standard_Boolean isSeam, const Standard_Real prec=0.0);
		%feature("autodoc", "1");
		Standard_Boolean FixAddPCurve(const TopoDS_Edge &edge, const TopoDS_Face &face, const Standard_Boolean isSeam, const Handle_ShapeAnalysis_Surface &surfana, const Standard_Real prec=0.0);
		%feature("autodoc", "1");
		Standard_Boolean FixAddPCurve(const TopoDS_Edge &edge, const Handle_Geom_Surface &surface, const TopLoc_Location &location, const Standard_Boolean isSeam, const Handle_ShapeAnalysis_Surface &surfana, const Standard_Real prec=0.0);
		%feature("autodoc", "1");
		Standard_Boolean FixAddCurve3d(const TopoDS_Edge &edge);
		%feature("autodoc", "1");
		Standard_Boolean FixVertexTolerance(const TopoDS_Edge &edge, const TopoDS_Face &face);
		%feature("autodoc", "1");
		Standard_Boolean FixVertexTolerance(const TopoDS_Edge &edge);
		%feature("autodoc", "1");
		Standard_Boolean FixReversed2d(const TopoDS_Edge &edge, const TopoDS_Face &face);
		%feature("autodoc", "1");
		Standard_Boolean FixReversed2d(const TopoDS_Edge &edge, const Handle_Geom_Surface &surface, const TopLoc_Location &location);
		%feature("autodoc", "1");
		Standard_Boolean FixSameParameter(const TopoDS_Edge &edge, const Standard_Real tolerance=0.0);
		%feature("autodoc", "1");
		Standard_Boolean Status(const ShapeExtend_Status status) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~ShapeFix_Edge();

};
%extend ShapeFix_Edge {
	Handle_ShapeFix_Edge GetHandle() {
	return *(Handle_ShapeFix_Edge*) &$self;
	}
};

%nodefaultctor ShapeFix_EdgeConnect;
class ShapeFix_EdgeConnect {
	public:
		%feature("autodoc", "1");
		~ShapeFix_EdgeConnect();
		%feature("autodoc", "1");
		ShapeFix_EdgeConnect();
		%feature("autodoc", "1");
		void Add(const TopoDS_Edge &aFirst, const TopoDS_Edge &aSecond);
		%feature("autodoc", "1");
		void Add(const TopoDS_Shape &aShape);
		%feature("autodoc", "1");
		void Build();
		%feature("autodoc", "1");
		void Clear();

};

%nodefaultctor ShapeFix_DataMapOfShapeBox2d;
class ShapeFix_DataMapOfShapeBox2d : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		ShapeFix_DataMapOfShapeBox2d(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		ShapeFix_DataMapOfShapeBox2d & Assign(const ShapeFix_DataMapOfShapeBox2d &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~ShapeFix_DataMapOfShapeBox2d();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TopoDS_Shape &K, const Bnd_Box2d &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TopoDS_Shape &K);
		%feature("autodoc", "1");
		const Bnd_Box2d & Find(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		const Bnd_Box2d & operator()(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		Bnd_Box2d & ChangeFind(const TopoDS_Shape &K);
		%feature("autodoc", "1");
		Bnd_Box2d & operator()(const TopoDS_Shape &K);

};

%nodefaultctor ShapeFix_DataMapNodeOfDataMapOfShapeBox2d;
class ShapeFix_DataMapNodeOfDataMapOfShapeBox2d : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		ShapeFix_DataMapNodeOfDataMapOfShapeBox2d(const TopoDS_Shape &K, const Bnd_Box2d &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		Bnd_Box2d & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~ShapeFix_DataMapNodeOfDataMapOfShapeBox2d();

};
%extend ShapeFix_DataMapNodeOfDataMapOfShapeBox2d {
	Handle_ShapeFix_DataMapNodeOfDataMapOfShapeBox2d GetHandle() {
	return *(Handle_ShapeFix_DataMapNodeOfDataMapOfShapeBox2d*) &$self;
	}
};

%nodefaultctor ShapeFix_SequenceNodeOfSequenceOfWireSegment;
class ShapeFix_SequenceNodeOfSequenceOfWireSegment : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		ShapeFix_SequenceNodeOfSequenceOfWireSegment(const ShapeFix_WireSegment &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		ShapeFix_WireSegment & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~ShapeFix_SequenceNodeOfSequenceOfWireSegment();

};
%extend ShapeFix_SequenceNodeOfSequenceOfWireSegment {
	Handle_ShapeFix_SequenceNodeOfSequenceOfWireSegment GetHandle() {
	return *(Handle_ShapeFix_SequenceNodeOfSequenceOfWireSegment*) &$self;
	}
};

%nodefaultctor ShapeFix_Wireframe;
class ShapeFix_Wireframe : public ShapeFix_Root {
	public:
		%feature("autodoc", "1");
		ShapeFix_Wireframe();
		%feature("autodoc", "1");
		ShapeFix_Wireframe(const TopoDS_Shape &shape);
		%feature("autodoc", "1");
		virtual		void ClearStatuses();
		%feature("autodoc", "1");
		void Load(const TopoDS_Shape &shape);
		%feature("autodoc", "1");
		Standard_Boolean FixWireGaps();
		%feature("autodoc", "1");
		Standard_Boolean FixSmallEdges();
		%feature("autodoc", "1");
		Standard_Boolean CheckSmallEdges(TopTools_MapOfShape & theSmallEdges, TopTools_DataMapOfShapeListOfShape & theEdgeToFaces, TopTools_DataMapOfShapeListOfShape & theFaceWithSmall, TopTools_MapOfShape & theMultyEdges);
		%feature("autodoc", "1");
		Standard_Boolean MergeSmallEdges(TopTools_MapOfShape & theSmallEdges, TopTools_DataMapOfShapeListOfShape & theEdgeToFaces, TopTools_DataMapOfShapeListOfShape & theFaceWithSmall, TopTools_MapOfShape & theMultyEdges, const Standard_Boolean theModeDrop=0, const Standard_Real theLimitAngle=-0x000000001);
		%feature("autodoc", "1");
		Standard_Boolean StatusWireGaps(const ShapeExtend_Status status) const;
		%feature("autodoc", "1");
		Standard_Boolean StatusSmallEdges(const ShapeExtend_Status status) const;
		%feature("autodoc", "1");
		TopoDS_Shape Shape();
		%feature("autodoc", "1");
		Standard_Boolean & ModeDropSmallEdges();
		%feature("autodoc", "1");
		void SetLimitAngle(const Standard_Real theLimitAngle);
		%feature("autodoc", "1");
		Standard_Real LimitAngle() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~ShapeFix_Wireframe();

};
%extend ShapeFix_Wireframe {
	Handle_ShapeFix_Wireframe GetHandle() {
	return *(Handle_ShapeFix_Wireframe*) &$self;
	}
};

%nodefaultctor ShapeFix_Shape;
class ShapeFix_Shape : public ShapeFix_Root {
	public:
		%feature("autodoc", "1");
		ShapeFix_Shape();
		%feature("autodoc", "1");
		ShapeFix_Shape(const TopoDS_Shape &shape);
		%feature("autodoc", "1");
		void Init(const TopoDS_Shape &shape);
		%feature("autodoc", "1");
		Standard_Boolean Perform();
		%feature("autodoc", "1");
		TopoDS_Shape Shape() const;
		%feature("autodoc", "1");
		Handle_ShapeFix_Solid FixSolidTool() const;
		%feature("autodoc", "1");
		Handle_ShapeFix_Shell FixShellTool() const;
		%feature("autodoc", "1");
		Handle_ShapeFix_Face FixFaceTool() const;
		%feature("autodoc", "1");
		Handle_ShapeFix_Wire FixWireTool() const;
		%feature("autodoc", "1");
		Handle_ShapeFix_Edge FixEdgeTool() const;
		%feature("autodoc", "1");
		Standard_Boolean Status(const ShapeExtend_Status status) const;
		%feature("autodoc", "1");
		virtual		void SetMsgRegistrator(const Handle_ShapeExtend_BasicMsgRegistrator &msgreg);
		%feature("autodoc", "1");
		virtual		void SetPrecision(const Standard_Real preci);
		%feature("autodoc", "1");
		virtual		void SetMinTolerance(const Standard_Real mintol);
		%feature("autodoc", "1");
		virtual		void SetMaxTolerance(const Standard_Real maxtol);
		%feature("autodoc", "1");
		Standard_Integer & FixSolidMode();
		%feature("autodoc", "1");
		Standard_Integer & FixFreeShellMode();
		%feature("autodoc", "1");
		Standard_Integer & FixFreeFaceMode();
		%feature("autodoc", "1");
		Standard_Integer & FixFreeWireMode();
		%feature("autodoc", "1");
		Standard_Integer & FixSameParameterMode();
		%feature("autodoc", "1");
		Standard_Integer & FixVertexPositionMode();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~ShapeFix_Shape();

};
%extend ShapeFix_Shape {
	Handle_ShapeFix_Shape GetHandle() {
	return *(Handle_ShapeFix_Shape*) &$self;
	}
};

%nodefaultctor ShapeFix_SplitCommonVertex;
class ShapeFix_SplitCommonVertex : public ShapeFix_Root {
	public:
		%feature("autodoc", "1");
		ShapeFix_SplitCommonVertex();
		%feature("autodoc", "1");
		void Init(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		void Perform();
		%feature("autodoc", "1");
		TopoDS_Shape Shape();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~ShapeFix_SplitCommonVertex();

};
%extend ShapeFix_SplitCommonVertex {
	Handle_ShapeFix_SplitCommonVertex GetHandle() {
	return *(Handle_ShapeFix_SplitCommonVertex*) &$self;
	}
};

%nodefaultctor ShapeFix_IntersectionTool;
class ShapeFix_IntersectionTool {
	public:
		%feature("autodoc", "1");
		~ShapeFix_IntersectionTool();
		%feature("autodoc", "1");
		ShapeFix_IntersectionTool(const Handle_ShapeBuild_ReShape &context, const Standard_Real preci, const Standard_Real maxtol=1.0e+0);
		%feature("autodoc", "1");
		Handle_ShapeBuild_ReShape Context() const;
		%feature("autodoc", "1");
		Standard_Boolean SplitEdge(const TopoDS_Edge &edge, const Standard_Real param, const TopoDS_Vertex &vert, const TopoDS_Face &face, TopoDS_Edge & newE1, TopoDS_Edge & newE2, const Standard_Real preci) const;
		%feature("autodoc", "1");
		Standard_Boolean CutEdge(const TopoDS_Edge &edge, const Standard_Real pend, const Standard_Real cut, const TopoDS_Face &face, Standard_Boolean & iscutline) const;
		%feature("autodoc", "1");
		Standard_Boolean FixSelfIntersectWire(Handle_ShapeExtend_WireData & sewd, const TopoDS_Face &face, Standard_Integer & NbSplit, Standard_Integer & NbCut, Standard_Integer & NbRemoved) const;
		%feature("autodoc", "1");
		Standard_Boolean FixIntersectingWires(TopoDS_Face & face) const;

};

%nodefaultctor ShapeFix_Shell;
class ShapeFix_Shell : public ShapeFix_Root {
	public:
		%feature("autodoc", "1");
		ShapeFix_Shell();
		%feature("autodoc", "1");
		ShapeFix_Shell(const TopoDS_Shell &shape);
		%feature("autodoc", "1");
		void Init(const TopoDS_Shell &shell);
		%feature("autodoc", "1");
		Standard_Boolean Perform();
		%feature("autodoc", "1");
		Standard_Boolean FixFaceOrientation(const TopoDS_Shell &shell, const Standard_Boolean isAccountMultiConex=1, const Standard_Boolean NonManifold=0);
		%feature("autodoc", "1");
		TopoDS_Shell Shell();
		%feature("autodoc", "1");
		TopoDS_Shape Shape();
		%feature("autodoc", "1");
		Standard_Integer NbShells() const;
		%feature("autodoc", "1");
		TopoDS_Compound ErrorFaces() const;
		%feature("autodoc", "1");
		Standard_Boolean Status(const ShapeExtend_Status status) const;
		%feature("autodoc", "1");
		Handle_ShapeFix_Face FixFaceTool();
		%feature("autodoc", "1");
		virtual		void SetMsgRegistrator(const Handle_ShapeExtend_BasicMsgRegistrator &msgreg);
		%feature("autodoc", "1");
		virtual		void SetPrecision(const Standard_Real preci);
		%feature("autodoc", "1");
		virtual		void SetMinTolerance(const Standard_Real mintol);
		%feature("autodoc", "1");
		virtual		void SetMaxTolerance(const Standard_Real maxtol);
		%feature("autodoc", "1");
		Standard_Integer & FixFaceMode();
		%feature("autodoc", "1");
		Standard_Integer & FixOrientationMode();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~ShapeFix_Shell();

};
%extend ShapeFix_Shell {
	Handle_ShapeFix_Shell GetHandle() {
	return *(Handle_ShapeFix_Shell*) &$self;
	}
};

%nodefaultctor ShapeFix_FixSmallFace;
class ShapeFix_FixSmallFace : public ShapeFix_Root {
	public:
		%feature("autodoc", "1");
		ShapeFix_FixSmallFace();
		%feature("autodoc", "1");
		void Init(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		void Perform();
		%feature("autodoc", "1");
		TopoDS_Shape FixSpotFace();
		%feature("autodoc", "1");
		Standard_Boolean ReplaceVerticesInCaseOfSpot(TopoDS_Face & F, const Standard_Real tol) const;
		%feature("autodoc", "1");
		Standard_Boolean RemoveFacesInCaseOfSpot(const TopoDS_Face &F) const;
		%feature("autodoc", "1");
		TopoDS_Shape FixStripFace(const Standard_Boolean wasdone=0);
		%feature("autodoc", "1");
		Standard_Boolean ReplaceInCaseOfStrip(TopoDS_Face & F, TopoDS_Edge & E1, TopoDS_Edge & E2, const Standard_Real tol) const;
		%feature("autodoc", "1");
		Standard_Boolean RemoveFacesInCaseOfStrip(const TopoDS_Face &F) const;
		%feature("autodoc", "1");
		TopoDS_Edge ComputeSharedEdgeForStripFace(const TopoDS_Face &F, const TopoDS_Edge &E1, const TopoDS_Edge &E2, const TopoDS_Face &F1, const Standard_Real tol) const;
		%feature("autodoc", "1");
		TopoDS_Shape FixSplitFace(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		TopoDS_Shape SplitFaces();
		%feature("autodoc", "1");
		Standard_Boolean SplitOneFace(TopoDS_Face & F, TopoDS_Compound & theSplittedFaces);
		%feature("autodoc", "1");
		TopoDS_Shape RemoveSmallFaces();
		%feature("autodoc", "1");
		TopoDS_Face FixFace(const TopoDS_Face &F);
		%feature("autodoc", "1");
		TopoDS_Shape FixShape();
		%feature("autodoc", "1");
		TopoDS_Shape Shape();
		%feature("autodoc", "1");
		Standard_Boolean FixPinFace(TopoDS_Face & F);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~ShapeFix_FixSmallFace();

};
%extend ShapeFix_FixSmallFace {
	Handle_ShapeFix_FixSmallFace GetHandle() {
	return *(Handle_ShapeFix_FixSmallFace*) &$self;
	}
};

%nodefaultctor ShapeFix_ShapeTolerance;
class ShapeFix_ShapeTolerance {
	public:
		%feature("autodoc", "1");
		~ShapeFix_ShapeTolerance();
		%feature("autodoc", "1");
		ShapeFix_ShapeTolerance();
		%feature("autodoc", "1");
		Standard_Boolean LimitTolerance(const TopoDS_Shape &shape, const Standard_Real tmin, const Standard_Real tmax=0.0, const TopAbs_ShapeEnum styp=TopAbs_SHAPE) const;
		%feature("autodoc", "1");
		void SetTolerance(const TopoDS_Shape &shape, const Standard_Real preci, const TopAbs_ShapeEnum styp=TopAbs_SHAPE) const;

};

%nodefaultctor ShapeFix_Wire;
class ShapeFix_Wire : public ShapeFix_Root {
	public:
		%feature("autodoc", "1");
		ShapeFix_Wire();
		%feature("autodoc", "1");
		ShapeFix_Wire(const TopoDS_Wire &wire, const TopoDS_Face &face, const Standard_Real prec);
		%feature("autodoc", "1");
		void ClearModes();
		%feature("autodoc", "1");
		void ClearStatuses();
		%feature("autodoc", "1");
		void Init(const TopoDS_Wire &wire, const TopoDS_Face &face, const Standard_Real prec);
		%feature("autodoc", "1");
		void Init(const Handle_ShapeAnalysis_Wire &saw);
		%feature("autodoc", "1");
		void Load(const TopoDS_Wire &wire);
		%feature("autodoc", "1");
		void Load(const Handle_ShapeExtend_WireData &sbwd);
		%feature("autodoc", "1");
		void SetFace(const TopoDS_Face &face);
		%feature("autodoc", "1");
		void SetSurface(const Handle_Geom_Surface &surf);
		%feature("autodoc", "1");
		void SetSurface(const Handle_Geom_Surface &surf, const TopLoc_Location &loc);
		%feature("autodoc", "1");
		virtual		void SetPrecision(const Standard_Real prec);
		%feature("autodoc", "1");
		Standard_Boolean IsLoaded() const;
		%feature("autodoc", "1");
		Standard_Boolean IsReady() const;
		%feature("autodoc", "1");
		Standard_Integer NbEdges() const;
		%feature("autodoc", "1");
		TopoDS_Wire Wire() const;
		%feature("autodoc", "1");
		TopoDS_Wire WireAPIMake() const;
		%feature("autodoc", "1");
		Handle_ShapeAnalysis_Wire Analyzer() const;
		%feature("autodoc", "1");
		const Handle_ShapeExtend_WireData & WireData() const;
		%feature("autodoc", "1");
		const TopoDS_Face & Face() const;
		%feature("autodoc", "1");
		Standard_Boolean & ModifyTopologyMode();
		%feature("autodoc", "1");
		Standard_Boolean & ModifyGeometryMode();
		%feature("autodoc", "1");
		Standard_Integer & ModifyRemoveLoopMode();
		%feature("autodoc", "1");
		Standard_Boolean & ClosedWireMode();
		%feature("autodoc", "1");
		Standard_Boolean & PreferencePCurveMode();
		%feature("autodoc", "1");
		Standard_Boolean & FixGapsByRangesMode();
		%feature("autodoc", "1");
		Standard_Integer & FixReorderMode();
		%feature("autodoc", "1");
		Standard_Integer & FixSmallMode();
		%feature("autodoc", "1");
		Standard_Integer & FixConnectedMode();
		%feature("autodoc", "1");
		Standard_Integer & FixEdgeCurvesMode();
		%feature("autodoc", "1");
		Standard_Integer & FixDegeneratedMode();
		%feature("autodoc", "1");
		Standard_Integer & FixSelfIntersectionMode();
		%feature("autodoc", "1");
		Standard_Integer & FixLackingMode();
		%feature("autodoc", "1");
		Standard_Integer & FixGaps3dMode();
		%feature("autodoc", "1");
		Standard_Integer & FixGaps2dMode();
		%feature("autodoc", "1");
		Standard_Integer & FixReversed2dMode();
		%feature("autodoc", "1");
		Standard_Integer & FixRemovePCurveMode();
		%feature("autodoc", "1");
		Standard_Integer & FixAddPCurveMode();
		%feature("autodoc", "1");
		Standard_Integer & FixRemoveCurve3dMode();
		%feature("autodoc", "1");
		Standard_Integer & FixAddCurve3dMode();
		%feature("autodoc", "1");
		Standard_Integer & FixSeamMode();
		%feature("autodoc", "1");
		Standard_Integer & FixShiftedMode();
		%feature("autodoc", "1");
		Standard_Integer & FixSameParameterMode();
		%feature("autodoc", "1");
		Standard_Integer & FixVertexToleranceMode();
		%feature("autodoc", "1");
		Standard_Integer & FixNotchedEdgesMode();
		%feature("autodoc", "1");
		Standard_Integer & FixSelfIntersectingEdgeMode();
		%feature("autodoc", "1");
		Standard_Integer & FixIntersectingEdgesMode();
		%feature("autodoc", "1");
		Standard_Integer & FixNonAdjacentIntersectingEdgesMode();
		%feature("autodoc", "1");
		Standard_Boolean Perform();
		%feature("autodoc", "1");
		Standard_Boolean FixReorder();
		%feature("autodoc", "1");
		Standard_Integer FixSmall(const Standard_Boolean lockvtx, const Standard_Real precsmall=0.0);
		%feature("autodoc", "1");
		Standard_Boolean FixConnected(const Standard_Real prec=-1.0e+0);
		%feature("autodoc", "1");
		Standard_Boolean FixEdgeCurves();
		%feature("autodoc", "1");
		Standard_Boolean FixDegenerated();
		%feature("autodoc", "1");
		Standard_Boolean FixSelfIntersection();
		%feature("autodoc", "1");
		Standard_Boolean FixLacking(const Standard_Boolean force=0);
		%feature("autodoc", "1");
		Standard_Boolean FixClosed(const Standard_Real prec=-1.0e+0);
		%feature("autodoc", "1");
		Standard_Boolean FixGaps3d();
		%feature("autodoc", "1");
		Standard_Boolean FixGaps2d();
		%feature("autodoc", "1");
		Standard_Boolean FixReorder(const ShapeAnalysis_WireOrder &wi);
		%feature("autodoc", "1");
		Standard_Boolean FixSmall(const Standard_Integer num, const Standard_Boolean lockvtx, const Standard_Real precsmall);
		%feature("autodoc", "1");
		Standard_Boolean FixConnected(const Standard_Integer num, const Standard_Real prec);
		%feature("autodoc", "1");
		Standard_Boolean FixSeam(const Standard_Integer num);
		%feature("autodoc", "1");
		Standard_Boolean FixShifted();
		%feature("autodoc", "1");
		Standard_Boolean FixDegenerated(const Standard_Integer num);
		%feature("autodoc", "1");
		Standard_Boolean FixLacking(const Standard_Integer num, const Standard_Boolean force=0);
		%feature("autodoc", "1");
		Standard_Boolean FixNotchedEdges();
		%feature("autodoc", "1");
		Standard_Boolean FixGap3d(const Standard_Integer num, const Standard_Boolean convert=0);
		%feature("autodoc", "1");
		Standard_Boolean FixGap2d(const Standard_Integer num, const Standard_Boolean convert=0);
		%feature("autodoc", "1");
		Standard_Boolean StatusReorder(const ShapeExtend_Status status) const;
		%feature("autodoc", "1");
		Standard_Boolean StatusSmall(const ShapeExtend_Status status) const;
		%feature("autodoc", "1");
		Standard_Boolean StatusConnected(const ShapeExtend_Status status) const;
		%feature("autodoc", "1");
		Standard_Boolean StatusEdgeCurves(const ShapeExtend_Status status) const;
		%feature("autodoc", "1");
		Standard_Boolean StatusDegenerated(const ShapeExtend_Status status) const;
		%feature("autodoc", "1");
		Standard_Boolean StatusSelfIntersection(const ShapeExtend_Status status) const;
		%feature("autodoc", "1");
		Standard_Boolean StatusLacking(const ShapeExtend_Status status) const;
		%feature("autodoc", "1");
		Standard_Boolean StatusClosed(const ShapeExtend_Status status) const;
		%feature("autodoc", "1");
		Standard_Boolean StatusGaps3d(const ShapeExtend_Status status) const;
		%feature("autodoc", "1");
		Standard_Boolean StatusGaps2d(const ShapeExtend_Status status) const;
		%feature("autodoc", "1");
		Standard_Boolean StatusNotches(const ShapeExtend_Status status) const;
		%feature("autodoc", "1");
		Standard_Boolean StatusRemovedSegment() const;
		%feature("autodoc", "1");
		Standard_Boolean LastFixStatus(const ShapeExtend_Status status) const;
		%feature("autodoc", "1");
		Handle_ShapeFix_Edge FixEdgeTool() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~ShapeFix_Wire();

};
%extend ShapeFix_Wire {
	Handle_ShapeFix_Wire GetHandle() {
	return *(Handle_ShapeFix_Wire*) &$self;
	}
};

%nodefaultctor ShapeFix_SplitTool;
class ShapeFix_SplitTool {
	public:
		%feature("autodoc", "1");
		~ShapeFix_SplitTool();
		%feature("autodoc", "1");
		ShapeFix_SplitTool();
		%feature("autodoc", "1");
		Standard_Boolean SplitEdge(const TopoDS_Edge &edge, const Standard_Real param, const TopoDS_Vertex &vert, const TopoDS_Face &face, TopoDS_Edge & newE1, TopoDS_Edge & newE2, const Standard_Real tol3d, const Standard_Real tol2d) const;
		%feature("autodoc", "1");
		Standard_Boolean SplitEdge(const TopoDS_Edge &edge, const Standard_Real param1, const Standard_Real param2, const TopoDS_Vertex &vert, const TopoDS_Face &face, TopoDS_Edge & newE1, TopoDS_Edge & newE2, const Standard_Real tol3d, const Standard_Real tol2d) const;
		%feature("autodoc", "1");
		Standard_Boolean CutEdge(const TopoDS_Edge &edge, const Standard_Real pend, const Standard_Real cut, const TopoDS_Face &face, Standard_Boolean & iscutline) const;
		%feature("autodoc", "1");
		Standard_Boolean SplitEdge(const TopoDS_Edge &edge, const Standard_Real fp, const TopoDS_Vertex &V1, const Standard_Real lp, const TopoDS_Vertex &V2, const TopoDS_Face &face, TopTools_SequenceOfShape & SeqE, Standard_Integer & aNum, const Handle_ShapeBuild_ReShape &context, const Standard_Real tol3d, const Standard_Real tol2d) const;

};

%nodefaultctor ShapeFix_FaceConnect;
class ShapeFix_FaceConnect {
	public:
		%feature("autodoc", "1");
		~ShapeFix_FaceConnect();
		%feature("autodoc", "1");
		ShapeFix_FaceConnect();
		%feature("autodoc", "1");
		Standard_Boolean Add(const TopoDS_Face &aFirst, const TopoDS_Face &aSecond);
		%feature("autodoc", "1");
		TopoDS_Shell Build(const TopoDS_Shell &shell, const Standard_Real sewtoler, const Standard_Real fixtoler);
		%feature("autodoc", "1");
		void Clear();

};

%nodefaultctor ShapeFix_Face;
class ShapeFix_Face : public ShapeFix_Root {
	public:
		%feature("autodoc", "1");
		ShapeFix_Face();
		%feature("autodoc", "1");
		ShapeFix_Face(const TopoDS_Face &face);
		%feature("autodoc", "1");
		virtual		void ClearModes();
		%feature("autodoc", "1");
		void Init(const TopoDS_Face &face);
		%feature("autodoc", "1");
		void Init(const Handle_Geom_Surface &surf, const Standard_Real preci, const Standard_Boolean fwd=1);
		%feature("autodoc", "1");
		void Init(const Handle_ShapeAnalysis_Surface &surf, const Standard_Real preci, const Standard_Boolean fwd=1);
		%feature("autodoc", "1");
		virtual		void SetMsgRegistrator(const Handle_ShapeExtend_BasicMsgRegistrator &msgreg);
		%feature("autodoc", "1");
		virtual		void SetPrecision(const Standard_Real preci);
		%feature("autodoc", "1");
		virtual		void SetMinTolerance(const Standard_Real mintol);
		%feature("autodoc", "1");
		virtual		void SetMaxTolerance(const Standard_Real maxtol);
		%feature("autodoc", "1");
		Standard_Integer & FixWireMode();
		%feature("autodoc", "1");
		Standard_Integer & FixOrientationMode();
		%feature("autodoc", "1");
		Standard_Integer & FixAddNaturalBoundMode();
		%feature("autodoc", "1");
		Standard_Integer & FixMissingSeamMode();
		%feature("autodoc", "1");
		Standard_Integer & FixSmallAreaWireMode();
		%feature("autodoc", "1");
		Standard_Integer & FixIntersectingWiresMode();
		%feature("autodoc", "1");
		Standard_Integer & FixLoopWiresMode();
		%feature("autodoc", "1");
		Standard_Integer & FixSplitFaceMode();
		%feature("autodoc", "1");
		TopoDS_Face Face() const;
		%feature("autodoc", "1");
		TopoDS_Shape Result() const;
		%feature("autodoc", "1");
		void Add(const TopoDS_Wire &wire);
		%feature("autodoc", "1");
		Standard_Boolean Perform();
		%feature("autodoc", "1");
		Standard_Boolean FixOrientation();
		%feature("autodoc", "1");
		Standard_Boolean FixOrientation(TopTools_DataMapOfShapeListOfShape & MapWires);
		%feature("autodoc", "1");
		Standard_Boolean FixAddNaturalBound();
		%feature("autodoc", "1");
		Standard_Boolean FixMissingSeam();
		%feature("autodoc", "1");
		Standard_Boolean FixSmallAreaWire();
		%feature("autodoc", "1");
		Standard_Boolean FixLoopWire(TopTools_SequenceOfShape & aResWires);
		%feature("autodoc", "1");
		Standard_Boolean FixIntersectingWires();
		%feature("autodoc", "1");
		Standard_Boolean FixWiresTwoCoincEdges();
		%feature("autodoc", "1");
		Standard_Boolean FixSplitFace(const TopTools_DataMapOfShapeListOfShape &MapWires);
		%feature("autodoc", "1");
		Standard_Boolean Status(const ShapeExtend_Status status) const;
		%feature("autodoc", "1");
		Handle_ShapeFix_Wire FixWireTool();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~ShapeFix_Face();

};
%extend ShapeFix_Face {
	Handle_ShapeFix_Face GetHandle() {
	return *(Handle_ShapeFix_Face*) &$self;
	}
};