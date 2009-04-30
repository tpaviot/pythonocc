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
%module BRepFill

%include BRepFill_renames.i

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


%include BRepFill_dependencies.i


%include BRepFill_headers.i


enum BRepFill_TransitionStyle {
	BRepFill_Modified,
	BRepFill_Right,
	BRepFill_Round,
	};



%nodefaultctor Handle_BRepFill_DataMapNodeOfDataMapOfOrientedShapeListOfShape;
class Handle_BRepFill_DataMapNodeOfDataMapOfOrientedShapeListOfShape : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_BRepFill_DataMapNodeOfDataMapOfOrientedShapeListOfShape();
		%feature("autodoc", "1");
		Handle_BRepFill_DataMapNodeOfDataMapOfOrientedShapeListOfShape(const Handle_BRepFill_DataMapNodeOfDataMapOfOrientedShapeListOfShape &aHandle);
		%feature("autodoc", "1");
		Handle_BRepFill_DataMapNodeOfDataMapOfOrientedShapeListOfShape(const BRepFill_DataMapNodeOfDataMapOfOrientedShapeListOfShape *anItem);
		%feature("autodoc", "1");
		Handle_BRepFill_DataMapNodeOfDataMapOfOrientedShapeListOfShape const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepFill_DataMapNodeOfDataMapOfOrientedShapeListOfShape {
	BRepFill_DataMapNodeOfDataMapOfOrientedShapeListOfShape* GetObject() {
	return (BRepFill_DataMapNodeOfDataMapOfOrientedShapeListOfShape*)$self->Access();
	}
};
%extend Handle_BRepFill_DataMapNodeOfDataMapOfOrientedShapeListOfShape {
	~Handle_BRepFill_DataMapNodeOfDataMapOfOrientedShapeListOfShape() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_BRepFill_DataMapNodeOfDataMapOfOrientedShapeListOfShape\n");}
	}
};


%nodefaultctor Handle_BRepFill_SequenceNodeOfSequenceOfSection;
class Handle_BRepFill_SequenceNodeOfSequenceOfSection : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_BRepFill_SequenceNodeOfSequenceOfSection();
		%feature("autodoc", "1");
		Handle_BRepFill_SequenceNodeOfSequenceOfSection(const Handle_BRepFill_SequenceNodeOfSequenceOfSection &aHandle);
		%feature("autodoc", "1");
		Handle_BRepFill_SequenceNodeOfSequenceOfSection(const BRepFill_SequenceNodeOfSequenceOfSection *anItem);
		%feature("autodoc", "1");
		Handle_BRepFill_SequenceNodeOfSequenceOfSection const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepFill_SequenceNodeOfSequenceOfSection {
	BRepFill_SequenceNodeOfSequenceOfSection* GetObject() {
	return (BRepFill_SequenceNodeOfSequenceOfSection*)$self->Access();
	}
};
%extend Handle_BRepFill_SequenceNodeOfSequenceOfSection {
	~Handle_BRepFill_SequenceNodeOfSequenceOfSection() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_BRepFill_SequenceNodeOfSequenceOfSection\n");}
	}
};


%nodefaultctor Handle_BRepFill_LocationLaw;
class Handle_BRepFill_LocationLaw : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_BRepFill_LocationLaw();
		%feature("autodoc", "1");
		Handle_BRepFill_LocationLaw(const Handle_BRepFill_LocationLaw &aHandle);
		%feature("autodoc", "1");
		Handle_BRepFill_LocationLaw(const BRepFill_LocationLaw *anItem);
		%feature("autodoc", "1");
		Handle_BRepFill_LocationLaw const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepFill_LocationLaw {
	BRepFill_LocationLaw* GetObject() {
	return (BRepFill_LocationLaw*)$self->Access();
	}
};
%extend Handle_BRepFill_LocationLaw {
	~Handle_BRepFill_LocationLaw() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_BRepFill_LocationLaw\n");}
	}
};


%nodefaultctor Handle_BRepFill_Edge3DLaw;
class Handle_BRepFill_Edge3DLaw : public Handle_BRepFill_LocationLaw {
	public:
		%feature("autodoc", "1");
		Handle_BRepFill_Edge3DLaw();
		%feature("autodoc", "1");
		Handle_BRepFill_Edge3DLaw(const Handle_BRepFill_Edge3DLaw &aHandle);
		%feature("autodoc", "1");
		Handle_BRepFill_Edge3DLaw(const BRepFill_Edge3DLaw *anItem);
		%feature("autodoc", "1");
		Handle_BRepFill_Edge3DLaw const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepFill_Edge3DLaw {
	BRepFill_Edge3DLaw* GetObject() {
	return (BRepFill_Edge3DLaw*)$self->Access();
	}
};
%extend Handle_BRepFill_Edge3DLaw {
	~Handle_BRepFill_Edge3DLaw() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_BRepFill_Edge3DLaw\n");}
	}
};


%nodefaultctor Handle_BRepFill_CurveConstraint;
class Handle_BRepFill_CurveConstraint : public Handle_GeomPlate_CurveConstraint {
	public:
		%feature("autodoc", "1");
		Handle_BRepFill_CurveConstraint();
		%feature("autodoc", "1");
		Handle_BRepFill_CurveConstraint(const Handle_BRepFill_CurveConstraint &aHandle);
		%feature("autodoc", "1");
		Handle_BRepFill_CurveConstraint(const BRepFill_CurveConstraint *anItem);
		%feature("autodoc", "1");
		Handle_BRepFill_CurveConstraint const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepFill_CurveConstraint {
	BRepFill_CurveConstraint* GetObject() {
	return (BRepFill_CurveConstraint*)$self->Access();
	}
};
%extend Handle_BRepFill_CurveConstraint {
	~Handle_BRepFill_CurveConstraint() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_BRepFill_CurveConstraint\n");}
	}
};


%nodefaultctor Handle_BRepFill_DataMapNodeOfDataMapOfNodeDataMapOfShapeShape;
class Handle_BRepFill_DataMapNodeOfDataMapOfNodeDataMapOfShapeShape : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_BRepFill_DataMapNodeOfDataMapOfNodeDataMapOfShapeShape();
		%feature("autodoc", "1");
		Handle_BRepFill_DataMapNodeOfDataMapOfNodeDataMapOfShapeShape(const Handle_BRepFill_DataMapNodeOfDataMapOfNodeDataMapOfShapeShape &aHandle);
		%feature("autodoc", "1");
		Handle_BRepFill_DataMapNodeOfDataMapOfNodeDataMapOfShapeShape(const BRepFill_DataMapNodeOfDataMapOfNodeDataMapOfShapeShape *anItem);
		%feature("autodoc", "1");
		Handle_BRepFill_DataMapNodeOfDataMapOfNodeDataMapOfShapeShape const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepFill_DataMapNodeOfDataMapOfNodeDataMapOfShapeShape {
	BRepFill_DataMapNodeOfDataMapOfNodeDataMapOfShapeShape* GetObject() {
	return (BRepFill_DataMapNodeOfDataMapOfNodeDataMapOfShapeShape*)$self->Access();
	}
};
%extend Handle_BRepFill_DataMapNodeOfDataMapOfNodeDataMapOfShapeShape {
	~Handle_BRepFill_DataMapNodeOfDataMapOfNodeDataMapOfShapeShape() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_BRepFill_DataMapNodeOfDataMapOfNodeDataMapOfShapeShape\n");}
	}
};


%nodefaultctor Handle_BRepFill_PipeShell;
class Handle_BRepFill_PipeShell : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_BRepFill_PipeShell();
		%feature("autodoc", "1");
		Handle_BRepFill_PipeShell(const Handle_BRepFill_PipeShell &aHandle);
		%feature("autodoc", "1");
		Handle_BRepFill_PipeShell(const BRepFill_PipeShell *anItem);
		%feature("autodoc", "1");
		Handle_BRepFill_PipeShell const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepFill_PipeShell {
	BRepFill_PipeShell* GetObject() {
	return (BRepFill_PipeShell*)$self->Access();
	}
};
%extend Handle_BRepFill_PipeShell {
	~Handle_BRepFill_PipeShell() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_BRepFill_PipeShell\n");}
	}
};


%nodefaultctor Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfReal;
class Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfReal : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfReal();
		%feature("autodoc", "1");
		Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfReal(const Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfReal &aHandle);
		%feature("autodoc", "1");
		Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfReal(const BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfReal *anItem);
		%feature("autodoc", "1");
		Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfReal const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfReal {
	BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfReal* GetObject() {
	return (BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfReal*)$self->Access();
	}
};
%extend Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfReal {
	~Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfReal\n");}
	}
};


%nodefaultctor Handle_BRepFill_ACRLaw;
class Handle_BRepFill_ACRLaw : public Handle_BRepFill_LocationLaw {
	public:
		%feature("autodoc", "1");
		Handle_BRepFill_ACRLaw();
		%feature("autodoc", "1");
		Handle_BRepFill_ACRLaw(const Handle_BRepFill_ACRLaw &aHandle);
		%feature("autodoc", "1");
		Handle_BRepFill_ACRLaw(const BRepFill_ACRLaw *anItem);
		%feature("autodoc", "1");
		Handle_BRepFill_ACRLaw const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepFill_ACRLaw {
	BRepFill_ACRLaw* GetObject() {
	return (BRepFill_ACRLaw*)$self->Access();
	}
};
%extend Handle_BRepFill_ACRLaw {
	~Handle_BRepFill_ACRLaw() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_BRepFill_ACRLaw\n");}
	}
};


%nodefaultctor Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfPnt;
class Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfPnt : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfPnt();
		%feature("autodoc", "1");
		Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfPnt(const Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfPnt &aHandle);
		%feature("autodoc", "1");
		Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfPnt(const BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfPnt *anItem);
		%feature("autodoc", "1");
		Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfPnt const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfPnt {
	BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfPnt* GetObject() {
	return (BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfPnt*)$self->Access();
	}
};
%extend Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfPnt {
	~Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfPnt() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfPnt\n");}
	}
};


%nodefaultctor Handle_BRepFill_DataMapNodeOfDataMapOfShapeDataMapOfShapeListOfShape;
class Handle_BRepFill_DataMapNodeOfDataMapOfShapeDataMapOfShapeListOfShape : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_BRepFill_DataMapNodeOfDataMapOfShapeDataMapOfShapeListOfShape();
		%feature("autodoc", "1");
		Handle_BRepFill_DataMapNodeOfDataMapOfShapeDataMapOfShapeListOfShape(const Handle_BRepFill_DataMapNodeOfDataMapOfShapeDataMapOfShapeListOfShape &aHandle);
		%feature("autodoc", "1");
		Handle_BRepFill_DataMapNodeOfDataMapOfShapeDataMapOfShapeListOfShape(const BRepFill_DataMapNodeOfDataMapOfShapeDataMapOfShapeListOfShape *anItem);
		%feature("autodoc", "1");
		Handle_BRepFill_DataMapNodeOfDataMapOfShapeDataMapOfShapeListOfShape const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepFill_DataMapNodeOfDataMapOfShapeDataMapOfShapeListOfShape {
	BRepFill_DataMapNodeOfDataMapOfShapeDataMapOfShapeListOfShape* GetObject() {
	return (BRepFill_DataMapNodeOfDataMapOfShapeDataMapOfShapeListOfShape*)$self->Access();
	}
};
%extend Handle_BRepFill_DataMapNodeOfDataMapOfShapeDataMapOfShapeListOfShape {
	~Handle_BRepFill_DataMapNodeOfDataMapOfShapeDataMapOfShapeListOfShape() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_BRepFill_DataMapNodeOfDataMapOfShapeDataMapOfShapeListOfShape\n");}
	}
};


%nodefaultctor Handle_BRepFill_SequenceNodeOfSequenceOfEdgeFaceAndOrder;
class Handle_BRepFill_SequenceNodeOfSequenceOfEdgeFaceAndOrder : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_BRepFill_SequenceNodeOfSequenceOfEdgeFaceAndOrder();
		%feature("autodoc", "1");
		Handle_BRepFill_SequenceNodeOfSequenceOfEdgeFaceAndOrder(const Handle_BRepFill_SequenceNodeOfSequenceOfEdgeFaceAndOrder &aHandle);
		%feature("autodoc", "1");
		Handle_BRepFill_SequenceNodeOfSequenceOfEdgeFaceAndOrder(const BRepFill_SequenceNodeOfSequenceOfEdgeFaceAndOrder *anItem);
		%feature("autodoc", "1");
		Handle_BRepFill_SequenceNodeOfSequenceOfEdgeFaceAndOrder const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepFill_SequenceNodeOfSequenceOfEdgeFaceAndOrder {
	BRepFill_SequenceNodeOfSequenceOfEdgeFaceAndOrder* GetObject() {
	return (BRepFill_SequenceNodeOfSequenceOfEdgeFaceAndOrder*)$self->Access();
	}
};
%extend Handle_BRepFill_SequenceNodeOfSequenceOfEdgeFaceAndOrder {
	~Handle_BRepFill_SequenceNodeOfSequenceOfEdgeFaceAndOrder() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_BRepFill_SequenceNodeOfSequenceOfEdgeFaceAndOrder\n");}
	}
};


%nodefaultctor Handle_BRepFill_SectionLaw;
class Handle_BRepFill_SectionLaw : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_BRepFill_SectionLaw();
		%feature("autodoc", "1");
		Handle_BRepFill_SectionLaw(const Handle_BRepFill_SectionLaw &aHandle);
		%feature("autodoc", "1");
		Handle_BRepFill_SectionLaw(const BRepFill_SectionLaw *anItem);
		%feature("autodoc", "1");
		Handle_BRepFill_SectionLaw const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepFill_SectionLaw {
	BRepFill_SectionLaw* GetObject() {
	return (BRepFill_SectionLaw*)$self->Access();
	}
};
%extend Handle_BRepFill_SectionLaw {
	~Handle_BRepFill_SectionLaw() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_BRepFill_SectionLaw\n");}
	}
};


%nodefaultctor Handle_BRepFill_ShapeLaw;
class Handle_BRepFill_ShapeLaw : public Handle_BRepFill_SectionLaw {
	public:
		%feature("autodoc", "1");
		Handle_BRepFill_ShapeLaw();
		%feature("autodoc", "1");
		Handle_BRepFill_ShapeLaw(const Handle_BRepFill_ShapeLaw &aHandle);
		%feature("autodoc", "1");
		Handle_BRepFill_ShapeLaw(const BRepFill_ShapeLaw *anItem);
		%feature("autodoc", "1");
		Handle_BRepFill_ShapeLaw const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepFill_ShapeLaw {
	BRepFill_ShapeLaw* GetObject() {
	return (BRepFill_ShapeLaw*)$self->Access();
	}
};
%extend Handle_BRepFill_ShapeLaw {
	~Handle_BRepFill_ShapeLaw() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_BRepFill_ShapeLaw\n");}
	}
};


%nodefaultctor Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfShape;
class Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfShape : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfShape();
		%feature("autodoc", "1");
		Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfShape(const Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfShape &aHandle);
		%feature("autodoc", "1");
		Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfShape(const BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfShape *anItem);
		%feature("autodoc", "1");
		Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfShape const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfShape {
	BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfShape* GetObject() {
	return (BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfShape*)$self->Access();
	}
};
%extend Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfShape {
	~Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfShape() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfShape\n");}
	}
};


%nodefaultctor Handle_BRepFill_DraftLaw;
class Handle_BRepFill_DraftLaw : public Handle_BRepFill_Edge3DLaw {
	public:
		%feature("autodoc", "1");
		Handle_BRepFill_DraftLaw();
		%feature("autodoc", "1");
		Handle_BRepFill_DraftLaw(const Handle_BRepFill_DraftLaw &aHandle);
		%feature("autodoc", "1");
		Handle_BRepFill_DraftLaw(const BRepFill_DraftLaw *anItem);
		%feature("autodoc", "1");
		Handle_BRepFill_DraftLaw const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepFill_DraftLaw {
	BRepFill_DraftLaw* GetObject() {
	return (BRepFill_DraftLaw*)$self->Access();
	}
};
%extend Handle_BRepFill_DraftLaw {
	~Handle_BRepFill_DraftLaw() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_BRepFill_DraftLaw\n");}
	}
};


%nodefaultctor Handle_BRepFill_ListNodeOfListOfOffsetWire;
class Handle_BRepFill_ListNodeOfListOfOffsetWire : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_BRepFill_ListNodeOfListOfOffsetWire();
		%feature("autodoc", "1");
		Handle_BRepFill_ListNodeOfListOfOffsetWire(const Handle_BRepFill_ListNodeOfListOfOffsetWire &aHandle);
		%feature("autodoc", "1");
		Handle_BRepFill_ListNodeOfListOfOffsetWire(const BRepFill_ListNodeOfListOfOffsetWire *anItem);
		%feature("autodoc", "1");
		Handle_BRepFill_ListNodeOfListOfOffsetWire const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepFill_ListNodeOfListOfOffsetWire {
	BRepFill_ListNodeOfListOfOffsetWire* GetObject() {
	return (BRepFill_ListNodeOfListOfOffsetWire*)$self->Access();
	}
};
%extend Handle_BRepFill_ListNodeOfListOfOffsetWire {
	~Handle_BRepFill_ListNodeOfListOfOffsetWire() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_BRepFill_ListNodeOfListOfOffsetWire\n");}
	}
};


%nodefaultctor Handle_BRepFill_DataMapNodeOfDataMapOfNodeShape;
class Handle_BRepFill_DataMapNodeOfDataMapOfNodeShape : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_BRepFill_DataMapNodeOfDataMapOfNodeShape();
		%feature("autodoc", "1");
		Handle_BRepFill_DataMapNodeOfDataMapOfNodeShape(const Handle_BRepFill_DataMapNodeOfDataMapOfNodeShape &aHandle);
		%feature("autodoc", "1");
		Handle_BRepFill_DataMapNodeOfDataMapOfNodeShape(const BRepFill_DataMapNodeOfDataMapOfNodeShape *anItem);
		%feature("autodoc", "1");
		Handle_BRepFill_DataMapNodeOfDataMapOfNodeShape const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepFill_DataMapNodeOfDataMapOfNodeShape {
	BRepFill_DataMapNodeOfDataMapOfNodeShape* GetObject() {
	return (BRepFill_DataMapNodeOfDataMapOfNodeShape*)$self->Access();
	}
};
%extend Handle_BRepFill_DataMapNodeOfDataMapOfNodeShape {
	~Handle_BRepFill_DataMapNodeOfDataMapOfNodeShape() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_BRepFill_DataMapNodeOfDataMapOfNodeShape\n");}
	}
};


%nodefaultctor Handle_BRepFill_NSections;
class Handle_BRepFill_NSections : public Handle_BRepFill_SectionLaw {
	public:
		%feature("autodoc", "1");
		Handle_BRepFill_NSections();
		%feature("autodoc", "1");
		Handle_BRepFill_NSections(const Handle_BRepFill_NSections &aHandle);
		%feature("autodoc", "1");
		Handle_BRepFill_NSections(const BRepFill_NSections *anItem);
		%feature("autodoc", "1");
		Handle_BRepFill_NSections const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepFill_NSections {
	BRepFill_NSections* GetObject() {
	return (BRepFill_NSections*)$self->Access();
	}
};
%extend Handle_BRepFill_NSections {
	~Handle_BRepFill_NSections() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_BRepFill_NSections\n");}
	}
};


%nodefaultctor Handle_BRepFill_EdgeOnSurfLaw;
class Handle_BRepFill_EdgeOnSurfLaw : public Handle_BRepFill_LocationLaw {
	public:
		%feature("autodoc", "1");
		Handle_BRepFill_EdgeOnSurfLaw();
		%feature("autodoc", "1");
		Handle_BRepFill_EdgeOnSurfLaw(const Handle_BRepFill_EdgeOnSurfLaw &aHandle);
		%feature("autodoc", "1");
		Handle_BRepFill_EdgeOnSurfLaw(const BRepFill_EdgeOnSurfLaw *anItem);
		%feature("autodoc", "1");
		Handle_BRepFill_EdgeOnSurfLaw const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepFill_EdgeOnSurfLaw {
	BRepFill_EdgeOnSurfLaw* GetObject() {
	return (BRepFill_EdgeOnSurfLaw*)$self->Access();
	}
};
%extend Handle_BRepFill_EdgeOnSurfLaw {
	~Handle_BRepFill_EdgeOnSurfLaw() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_BRepFill_EdgeOnSurfLaw\n");}
	}
};


%nodefaultctor Handle_BRepFill_SequenceNodeOfSequenceOfFaceAndOrder;
class Handle_BRepFill_SequenceNodeOfSequenceOfFaceAndOrder : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_BRepFill_SequenceNodeOfSequenceOfFaceAndOrder();
		%feature("autodoc", "1");
		Handle_BRepFill_SequenceNodeOfSequenceOfFaceAndOrder(const Handle_BRepFill_SequenceNodeOfSequenceOfFaceAndOrder &aHandle);
		%feature("autodoc", "1");
		Handle_BRepFill_SequenceNodeOfSequenceOfFaceAndOrder(const BRepFill_SequenceNodeOfSequenceOfFaceAndOrder *anItem);
		%feature("autodoc", "1");
		Handle_BRepFill_SequenceNodeOfSequenceOfFaceAndOrder const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepFill_SequenceNodeOfSequenceOfFaceAndOrder {
	BRepFill_SequenceNodeOfSequenceOfFaceAndOrder* GetObject() {
	return (BRepFill_SequenceNodeOfSequenceOfFaceAndOrder*)$self->Access();
	}
};
%extend Handle_BRepFill_SequenceNodeOfSequenceOfFaceAndOrder {
	~Handle_BRepFill_SequenceNodeOfSequenceOfFaceAndOrder() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_BRepFill_SequenceNodeOfSequenceOfFaceAndOrder\n");}
	}
};


%nodefaultctor BRepFill_DataMapIteratorOfDataMapOfShapeDataMapOfShapeListOfShape;
class BRepFill_DataMapIteratorOfDataMapOfShapeDataMapOfShapeListOfShape : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		BRepFill_DataMapIteratorOfDataMapOfShapeDataMapOfShapeListOfShape();
		%feature("autodoc", "1");
		BRepFill_DataMapIteratorOfDataMapOfShapeDataMapOfShapeListOfShape(const BRepFill_DataMapOfShapeDataMapOfShapeListOfShape &aMap);
		%feature("autodoc", "1");
		void Initialize(const BRepFill_DataMapOfShapeDataMapOfShapeListOfShape &aMap);
		%feature("autodoc", "1");
		const TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		const TopTools_DataMapOfShapeListOfShape & Value() const;

};
%extend BRepFill_DataMapIteratorOfDataMapOfShapeDataMapOfShapeListOfShape {
	~BRepFill_DataMapIteratorOfDataMapOfShapeDataMapOfShapeListOfShape() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepFill_DataMapIteratorOfDataMapOfShapeDataMapOfShapeListOfShape\n");}
	}
};


%nodefaultctor BRepFill_CurveConstraint;
class BRepFill_CurveConstraint : public GeomPlate_CurveConstraint {
	public:
		%feature("autodoc", "1");
		BRepFill_CurveConstraint(const Handle_Adaptor3d_HCurveOnSurface &Boundary, const Standard_Integer Order, const Standard_Integer NPt=10, const Standard_Real TolDist=1.00000000000000004792173602385929598312941379845e-4, const Standard_Real TolAng=1.0000000000000000208166817117216851329430937767e-2, const Standard_Real TolCurv=1.00000000000000005551115123125782702118158340454e-1);
		%feature("autodoc", "1");
		BRepFill_CurveConstraint(const Handle_Adaptor3d_HCurve &Boundary, const Standard_Integer Tang, const Standard_Integer NPt=10, const Standard_Real TolDist=1.00000000000000004792173602385929598312941379845e-4);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepFill_CurveConstraint {
	Handle_BRepFill_CurveConstraint GetHandle() {
	return *(Handle_BRepFill_CurveConstraint*) &$self;
	}
};
%extend BRepFill_CurveConstraint {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend BRepFill_CurveConstraint {
	~BRepFill_CurveConstraint() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepFill_CurveConstraint\n");}
	}
};


%nodefaultctor BRepFill_DataMapOfNodeDataMapOfShapeShape;
class BRepFill_DataMapOfNodeDataMapOfShapeShape : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		BRepFill_DataMapOfNodeDataMapOfShapeShape(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		BRepFill_DataMapOfNodeDataMapOfShapeShape & Assign(const BRepFill_DataMapOfNodeDataMapOfShapeShape &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Handle_MAT_Node &K, const TopTools_DataMapOfShapeShape &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Handle_MAT_Node &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Handle_MAT_Node &K);
		%feature("autodoc", "1");
		const TopTools_DataMapOfShapeShape & Find(const Handle_MAT_Node &K) const;
		%feature("autodoc", "1");
		const TopTools_DataMapOfShapeShape & operator()(const Handle_MAT_Node &K) const;
		%feature("autodoc", "1");
		TopTools_DataMapOfShapeShape & ChangeFind(const Handle_MAT_Node &K);
		%feature("autodoc", "1");
		TopTools_DataMapOfShapeShape & operator()(const Handle_MAT_Node &K);

};
%extend BRepFill_DataMapOfNodeDataMapOfShapeShape {
	~BRepFill_DataMapOfNodeDataMapOfShapeShape() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepFill_DataMapOfNodeDataMapOfShapeShape\n");}
	}
};


%nodefaultctor BRepFill_DataMapIteratorOfDataMapOfShapeSequenceOfReal;
class BRepFill_DataMapIteratorOfDataMapOfShapeSequenceOfReal : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		BRepFill_DataMapIteratorOfDataMapOfShapeSequenceOfReal();
		%feature("autodoc", "1");
		BRepFill_DataMapIteratorOfDataMapOfShapeSequenceOfReal(const BRepFill_DataMapOfShapeSequenceOfReal &aMap);
		%feature("autodoc", "1");
		void Initialize(const BRepFill_DataMapOfShapeSequenceOfReal &aMap);
		%feature("autodoc", "1");
		const TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		const TColStd_SequenceOfReal & Value() const;

};
%extend BRepFill_DataMapIteratorOfDataMapOfShapeSequenceOfReal {
	~BRepFill_DataMapIteratorOfDataMapOfShapeSequenceOfReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepFill_DataMapIteratorOfDataMapOfShapeSequenceOfReal\n");}
	}
};


%nodefaultctor BRepFill_DataMapIteratorOfDataMapOfOrientedShapeListOfShape;
class BRepFill_DataMapIteratorOfDataMapOfOrientedShapeListOfShape : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		BRepFill_DataMapIteratorOfDataMapOfOrientedShapeListOfShape();
		%feature("autodoc", "1");
		BRepFill_DataMapIteratorOfDataMapOfOrientedShapeListOfShape(const BRepFill_DataMapOfOrientedShapeListOfShape &aMap);
		%feature("autodoc", "1");
		void Initialize(const BRepFill_DataMapOfOrientedShapeListOfShape &aMap);
		%feature("autodoc", "1");
		const TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Value() const;

};
%extend BRepFill_DataMapIteratorOfDataMapOfOrientedShapeListOfShape {
	~BRepFill_DataMapIteratorOfDataMapOfOrientedShapeListOfShape() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepFill_DataMapIteratorOfDataMapOfOrientedShapeListOfShape\n");}
	}
};


%nodefaultctor BRepFill_DataMapOfShapeSequenceOfShape;
class BRepFill_DataMapOfShapeSequenceOfShape : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		BRepFill_DataMapOfShapeSequenceOfShape(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		BRepFill_DataMapOfShapeSequenceOfShape & Assign(const BRepFill_DataMapOfShapeSequenceOfShape &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TopoDS_Shape &K, const TopTools_SequenceOfShape &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TopoDS_Shape &K);
		%feature("autodoc", "1");
		const TopTools_SequenceOfShape & Find(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		const TopTools_SequenceOfShape & operator()(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		TopTools_SequenceOfShape & ChangeFind(const TopoDS_Shape &K);
		%feature("autodoc", "1");
		TopTools_SequenceOfShape & operator()(const TopoDS_Shape &K);

};
%extend BRepFill_DataMapOfShapeSequenceOfShape {
	~BRepFill_DataMapOfShapeSequenceOfShape() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepFill_DataMapOfShapeSequenceOfShape\n");}
	}
};


%nodefaultctor BRepFill_TrimEdgeTool;
class BRepFill_TrimEdgeTool {
	public:
		%feature("autodoc", "1");
		BRepFill_TrimEdgeTool();
		%feature("autodoc", "1");
		BRepFill_TrimEdgeTool(const Bisector_Bisec &Bisec, const Handle_Geom2d_Geometry &S1, const Handle_Geom2d_Geometry &S2, const Standard_Real Offset);
		%feature("autodoc", "1");
		void IntersectWith(const TopoDS_Edge &Edge1, const TopoDS_Edge &Edge2, TColgp_SequenceOfPnt & Params);
		%feature("autodoc", "1");
		void AddOrConfuse(const Standard_Boolean Start, const TopoDS_Edge &Edge1, const TopoDS_Edge &Edge2, TColgp_SequenceOfPnt & Params) const;
		%feature("autodoc", "1");
		Standard_Boolean IsInside(const gp_Pnt2d &P) const;

};
%extend BRepFill_TrimEdgeTool {
	~BRepFill_TrimEdgeTool() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepFill_TrimEdgeTool\n");}
	}
};


%nodefaultctor BRepFill_OffsetWire;
class BRepFill_OffsetWire {
	public:
		%feature("autodoc", "1");
		BRepFill_OffsetWire();
		%feature("autodoc", "1");
		BRepFill_OffsetWire(const TopoDS_Face &Spine, const GeomAbs_JoinType Join=GeomAbs_Arc);
		%feature("autodoc", "1");
		void Init(const TopoDS_Face &Spine, const GeomAbs_JoinType Join=GeomAbs_Arc);
		%feature("autodoc", "1");
		void Perform(const Standard_Real Offset, const Standard_Real Alt=0.0);
		%feature("autodoc", "1");
		void PerformWithBiLo(const TopoDS_Face &WSP, const Standard_Real Offset, const BRepMAT2d_BisectingLocus &Locus, BRepMAT2d_LinkTopoBilo & Link, const GeomAbs_JoinType Join=GeomAbs_Arc, const Standard_Real Alt=0.0);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		const TopoDS_Face & Spine() const;
		%feature("autodoc", "1");
		const TopoDS_Shape & Shape() const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & GeneratedShapes(const TopoDS_Shape &SpineShape);
		%feature("autodoc", "1");
		GeomAbs_JoinType JoinType() const;

};
%extend BRepFill_OffsetWire {
	~BRepFill_OffsetWire() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepFill_OffsetWire\n");}
	}
};


%nodefaultctor BRepFill_SectionLaw;
class BRepFill_SectionLaw : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Standard_Integer NbLaw() const;
		%feature("autodoc", "1");
		const Handle_GeomFill_SectionLaw & Law(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsConstant() const;
		%feature("autodoc", "1");
		Standard_Boolean IsUClosed() const;
		%feature("autodoc", "1");
		Standard_Boolean IsVClosed() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsVertex() const;
		%feature("autodoc", "1");
		virtual		Handle_GeomFill_SectionLaw ConcatenedLaw() const;
		%feature("autodoc", "1");
		virtual		GeomAbs_Shape Continuity(const Standard_Integer Index, const Standard_Real TolAngular) const;
		%feature("autodoc", "1");
		virtual		Standard_Real VertexTol(const Standard_Integer Index, const Standard_Real Param) const;
		%feature("autodoc", "1");
		virtual		TopoDS_Vertex Vertex(const Standard_Integer Index, const Standard_Real Param) const;
		%feature("autodoc", "1");
		virtual		void D0(const Standard_Real U, TopoDS_Shape & S);
		%feature("autodoc", "1");
		void Init(const TopoDS_Wire &W);
		%feature("autodoc", "1");
		TopoDS_Edge CurrentEdge();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepFill_SectionLaw {
	Handle_BRepFill_SectionLaw GetHandle() {
	return *(Handle_BRepFill_SectionLaw*) &$self;
	}
};
%extend BRepFill_SectionLaw {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend BRepFill_SectionLaw {
	~BRepFill_SectionLaw() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepFill_SectionLaw\n");}
	}
};


%nodefaultctor BRepFill_NSections;
class BRepFill_NSections : public BRepFill_SectionLaw {
	public:
		%feature("autodoc", "1");
		BRepFill_NSections(const TopTools_SequenceOfShape &S, const Standard_Boolean Build=1);
		%feature("autodoc", "1");
		BRepFill_NSections(const TopTools_SequenceOfShape &S, const TColStd_SequenceOfReal &P, const Standard_Real VF, const Standard_Real VL, const Standard_Boolean Build=1);
		%feature("autodoc", "1");
		virtual		void D0(const Standard_Real Param, TopoDS_Shape & S);

};
%extend BRepFill_NSections {
	Handle_BRepFill_NSections GetHandle() {
	return *(Handle_BRepFill_NSections*) &$self;
	}
};
%extend BRepFill_NSections {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend BRepFill_NSections {
	~BRepFill_NSections() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepFill_NSections\n");}
	}
};


%nodefaultctor BRepFill_Sweep;
class BRepFill_Sweep {
	public:
		%feature("autodoc", "1");
		BRepFill_Sweep(const Handle_BRepFill_SectionLaw &Section, const Handle_BRepFill_LocationLaw &Location, const Standard_Boolean WithKPart);
		%feature("autodoc", "1");
		void SetBounds(const TopoDS_Wire &FirstShape, const TopoDS_Wire &LastShape);
		%feature("autodoc", "1");
		void SetTolerance(const Standard_Real Tol3d, const Standard_Real BoundTol=1.0e+0, const Standard_Real Tol2d=1.00000000000000008180305391403130954586231382564e-5, const Standard_Real TolAngular=1.0000000000000000208166817117216851329430937767e-2);
		%feature("autodoc", "1");
		void SetAngularControl(const Standard_Real AngleMin=1.0000000000000000208166817117216851329430937767e-2, const Standard_Real AngleMax=6.0e+0);
		%feature("autodoc", "1");
		void Build(const BRepFill_TransitionStyle Transition=BRepFill_Modified, const GeomFill_ApproxStyle Approx=GeomFill_Location, const GeomAbs_Shape Continuity=GeomAbs_C2, const Standard_Integer Degmax=10, const Standard_Integer Segmax=30);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		TopoDS_Shape Shape() const;
		%feature("autodoc", "1");
		Standard_Real ErrorOnSurface() const;
		%feature("autodoc", "1");
		Handle_TopTools_HArray2OfShape SubShape() const;
		%feature("autodoc", "1");
		Handle_TopTools_HArray2OfShape InterFaces() const;
		%feature("autodoc", "1");
		Handle_TopTools_HArray2OfShape Sections() const;

};
%extend BRepFill_Sweep {
	~BRepFill_Sweep() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepFill_Sweep\n");}
	}
};


%nodefaultctor BRepFill_Filling;
class BRepFill_Filling {
	public:
		%feature("autodoc", "1");
		BRepFill_Filling(const Standard_Integer Degree=3, const Standard_Integer NbPtsOnCur=15, const Standard_Integer NbIter=2, const Standard_Boolean Anisotropie=0, const Standard_Real Tol2d=1.00000000000000008180305391403130954586231382564e-5, const Standard_Real Tol3d=1.00000000000000004792173602385929598312941379845e-4, const Standard_Real TolAng=1.0000000000000000208166817117216851329430937767e-2, const Standard_Real TolCurv=1.00000000000000005551115123125782702118158340454e-1, const Standard_Integer MaxDeg=8, const Standard_Integer MaxSegments=9);
		%feature("autodoc", "1");
		void SetConstrParam(const Standard_Real Tol2d=1.00000000000000008180305391403130954586231382564e-5, const Standard_Real Tol3d=1.00000000000000004792173602385929598312941379845e-4, const Standard_Real TolAng=1.0000000000000000208166817117216851329430937767e-2, const Standard_Real TolCurv=1.00000000000000005551115123125782702118158340454e-1);
		%feature("autodoc", "1");
		void SetResolParam(const Standard_Integer Degree=3, const Standard_Integer NbPtsOnCur=15, const Standard_Integer NbIter=2, const Standard_Boolean Anisotropie=0);
		%feature("autodoc", "1");
		void SetApproxParam(const Standard_Integer MaxDeg=8, const Standard_Integer MaxSegments=9);
		%feature("autodoc", "1");
		void LoadInitSurface(const TopoDS_Face &aFace);
		%feature("autodoc", "1");
		Standard_Integer Add(const TopoDS_Edge &anEdge, const GeomAbs_Shape Order, const Standard_Boolean IsBound=1);
		%feature("autodoc", "1");
		Standard_Integer Add(const TopoDS_Edge &anEdge, const TopoDS_Face &Support, const GeomAbs_Shape Order, const Standard_Boolean IsBound=1);
		%feature("autodoc", "1");
		Standard_Integer Add(const TopoDS_Face &Support, const GeomAbs_Shape Order);
		%feature("autodoc", "1");
		Standard_Integer Add(const gp_Pnt &Point);
		%feature("autodoc", "1");
		Standard_Integer Add(const Standard_Real U, const Standard_Real V, const TopoDS_Face &Support, const GeomAbs_Shape Order);
		%feature("autodoc", "1");
		void Build();
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		TopoDS_Face Face() const;
		%feature("autodoc", "1");
		Standard_Real G0Error() const;
		%feature("autodoc", "1");
		Standard_Real G1Error() const;
		%feature("autodoc", "1");
		Standard_Real G2Error() const;
		%feature("autodoc", "1");
		Standard_Real G0Error(const Standard_Integer Index);
		%feature("autodoc", "1");
		Standard_Real G1Error(const Standard_Integer Index);
		%feature("autodoc", "1");
		Standard_Real G2Error(const Standard_Integer Index);

};
%extend BRepFill_Filling {
	~BRepFill_Filling() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepFill_Filling\n");}
	}
};


%nodefaultctor BRepFill_Section;
class BRepFill_Section {
	public:
		%feature("autodoc", "1");
		BRepFill_Section();
		%feature("autodoc", "1");
		BRepFill_Section(const TopoDS_Shape &Profile, const TopoDS_Vertex &V, const Standard_Boolean WithContact, const Standard_Boolean WithCorrection);
		%feature("autodoc", "1");
		void Set(const Standard_Boolean IsLaw);
		%feature("autodoc", "1");
		const TopoDS_Wire & Wire() const;
		%feature("autodoc", "1");
		const TopoDS_Vertex & Vertex() const;
		%feature("autodoc", "1");
		Standard_Boolean IsLaw() const;
		%feature("autodoc", "1");
		Standard_Boolean WithContact() const;
		%feature("autodoc", "1");
		Standard_Boolean WithCorrection() const;

};
%extend BRepFill_Section {
	~BRepFill_Section() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepFill_Section\n");}
	}
};


%nodefaultctor BRepFill_SequenceNodeOfSequenceOfFaceAndOrder;
class BRepFill_SequenceNodeOfSequenceOfFaceAndOrder : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		BRepFill_SequenceNodeOfSequenceOfFaceAndOrder(const BRepFill_FaceAndOrder &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		BRepFill_FaceAndOrder & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepFill_SequenceNodeOfSequenceOfFaceAndOrder {
	Handle_BRepFill_SequenceNodeOfSequenceOfFaceAndOrder GetHandle() {
	return *(Handle_BRepFill_SequenceNodeOfSequenceOfFaceAndOrder*) &$self;
	}
};
%extend BRepFill_SequenceNodeOfSequenceOfFaceAndOrder {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend BRepFill_SequenceNodeOfSequenceOfFaceAndOrder {
	~BRepFill_SequenceNodeOfSequenceOfFaceAndOrder() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepFill_SequenceNodeOfSequenceOfFaceAndOrder\n");}
	}
};


%nodefaultctor BRepFill_DataMapIteratorOfDataMapOfNodeShape;
class BRepFill_DataMapIteratorOfDataMapOfNodeShape : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		BRepFill_DataMapIteratorOfDataMapOfNodeShape();
		%feature("autodoc", "1");
		BRepFill_DataMapIteratorOfDataMapOfNodeShape(const BRepFill_DataMapOfNodeShape &aMap);
		%feature("autodoc", "1");
		void Initialize(const BRepFill_DataMapOfNodeShape &aMap);
		%feature("autodoc", "1");
		const Handle_MAT_Node & Key() const;
		%feature("autodoc", "1");
		const TopoDS_Shape & Value() const;

};
%extend BRepFill_DataMapIteratorOfDataMapOfNodeShape {
	~BRepFill_DataMapIteratorOfDataMapOfNodeShape() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepFill_DataMapIteratorOfDataMapOfNodeShape\n");}
	}
};


%nodefaultctor BRepFill_DataMapNodeOfDataMapOfOrientedShapeListOfShape;
class BRepFill_DataMapNodeOfDataMapOfOrientedShapeListOfShape : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BRepFill_DataMapNodeOfDataMapOfOrientedShapeListOfShape(const TopoDS_Shape &K, const TopTools_ListOfShape &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		TopTools_ListOfShape & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepFill_DataMapNodeOfDataMapOfOrientedShapeListOfShape {
	Handle_BRepFill_DataMapNodeOfDataMapOfOrientedShapeListOfShape GetHandle() {
	return *(Handle_BRepFill_DataMapNodeOfDataMapOfOrientedShapeListOfShape*) &$self;
	}
};
%extend BRepFill_DataMapNodeOfDataMapOfOrientedShapeListOfShape {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend BRepFill_DataMapNodeOfDataMapOfOrientedShapeListOfShape {
	~BRepFill_DataMapNodeOfDataMapOfOrientedShapeListOfShape() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepFill_DataMapNodeOfDataMapOfOrientedShapeListOfShape\n");}
	}
};


%nodefaultctor BRepFill_OffsetAncestors;
class BRepFill_OffsetAncestors {
	public:
		%feature("autodoc", "1");
		BRepFill_OffsetAncestors();
		%feature("autodoc", "1");
		BRepFill_OffsetAncestors(BRepFill_OffsetWire & Paral);
		%feature("autodoc", "1");
		void Perform(BRepFill_OffsetWire & Paral);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Boolean HasAncestor(const TopoDS_Edge &S1) const;
		%feature("autodoc", "1");
		const TopoDS_Shape & Ancestor(const TopoDS_Edge &S1) const;

};
%extend BRepFill_OffsetAncestors {
	~BRepFill_OffsetAncestors() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepFill_OffsetAncestors\n");}
	}
};


%nodefaultctor BRepFill_DataMapOfShapeDataMapOfShapeListOfShape;
class BRepFill_DataMapOfShapeDataMapOfShapeListOfShape : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		BRepFill_DataMapOfShapeDataMapOfShapeListOfShape(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		BRepFill_DataMapOfShapeDataMapOfShapeListOfShape & Assign(const BRepFill_DataMapOfShapeDataMapOfShapeListOfShape &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TopoDS_Shape &K, const TopTools_DataMapOfShapeListOfShape &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TopoDS_Shape &K);
		%feature("autodoc", "1");
		const TopTools_DataMapOfShapeListOfShape & Find(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		const TopTools_DataMapOfShapeListOfShape & operator()(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		TopTools_DataMapOfShapeListOfShape & ChangeFind(const TopoDS_Shape &K);
		%feature("autodoc", "1");
		TopTools_DataMapOfShapeListOfShape & operator()(const TopoDS_Shape &K);

};
%extend BRepFill_DataMapOfShapeDataMapOfShapeListOfShape {
	~BRepFill_DataMapOfShapeDataMapOfShapeListOfShape() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepFill_DataMapOfShapeDataMapOfShapeListOfShape\n");}
	}
};


%nodefaultctor BRepFill_TrimShellCorner;
class BRepFill_TrimShellCorner {
	public:
		%feature("autodoc", "1");
		BRepFill_TrimShellCorner(const Handle_TopTools_HArray2OfShape &theFaces, const gp_Ax2 &theAxeOfBisPlane, const TopoDS_Face &theSecPlane);
		%feature("autodoc", "1");
		BRepFill_TrimShellCorner(const Handle_TopTools_HArray2OfShape &theFaces, const gp_Ax2 &theAxeOfBisPlane, const TopoDS_Wire &theSpine, const TopoDS_Face &theSecPlane);
		%feature("autodoc", "1");
		void SetSpine(const TopoDS_Wire &theSpine);
		%feature("autodoc", "1");
		void AddBounds(const Handle_TopTools_HArray2OfShape &Bounds);
		%feature("autodoc", "1");
		void AddUEdges(const Handle_TopTools_HArray2OfShape &theUEdges);
		%feature("autodoc", "1");
		void Perform();
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Boolean HasSection() const;
		%feature("autodoc", "1");
		void Modified(const TopoDS_Shape &S, TopTools_ListOfShape & theModified);

};
%extend BRepFill_TrimShellCorner {
	~BRepFill_TrimShellCorner() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepFill_TrimShellCorner\n");}
	}
};


%nodefaultctor BRepFill_TrimSurfaceTool;
class BRepFill_TrimSurfaceTool {
	public:
		%feature("autodoc", "1");
		BRepFill_TrimSurfaceTool(const Handle_Geom2d_Curve &Bis, const TopoDS_Face &Face1, const TopoDS_Face &Face2, const TopoDS_Edge &Edge1, const TopoDS_Edge &Edge2, const Standard_Boolean Inv1, const Standard_Boolean Inv2);
		%feature("autodoc", "1");
		void IntersectWith(const TopoDS_Edge &EdgeOnF1, const TopoDS_Edge &EdgeOnF2, TColgp_SequenceOfPnt & Points) const;
		%feature("autodoc", "1");
		Standard_Boolean IsOnFace(const gp_Pnt2d &Point) const;
		%feature("autodoc", "1");
		Standard_Real ProjOn(const gp_Pnt2d &Point, const TopoDS_Edge &Edge) const;
		%feature("autodoc", "1");
		void Project(const Standard_Real U1, const Standard_Real U2, Handle_Geom_Curve & Curve, Handle_Geom2d_Curve & PCurve1, Handle_Geom2d_Curve & PCurve2, GeomAbs_Shape & myCont) const;

};
%extend BRepFill_TrimSurfaceTool {
	~BRepFill_TrimSurfaceTool() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepFill_TrimSurfaceTool\n");}
	}
};


%nodefaultctor BRepFill_DataMapOfShapeSequenceOfReal;
class BRepFill_DataMapOfShapeSequenceOfReal : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		BRepFill_DataMapOfShapeSequenceOfReal(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		BRepFill_DataMapOfShapeSequenceOfReal & Assign(const BRepFill_DataMapOfShapeSequenceOfReal &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TopoDS_Shape &K, const TColStd_SequenceOfReal &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TopoDS_Shape &K);
		%feature("autodoc", "1");
		const TColStd_SequenceOfReal & Find(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		const TColStd_SequenceOfReal & operator()(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		TColStd_SequenceOfReal & ChangeFind(const TopoDS_Shape &K);
		%feature("autodoc", "1");
		TColStd_SequenceOfReal & operator()(const TopoDS_Shape &K);

};
%extend BRepFill_DataMapOfShapeSequenceOfReal {
	~BRepFill_DataMapOfShapeSequenceOfReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepFill_DataMapOfShapeSequenceOfReal\n");}
	}
};


%nodefaultctor BRepFill_CompatibleWires;
class BRepFill_CompatibleWires {
	public:
		%feature("autodoc", "1");
		BRepFill_CompatibleWires();
		%feature("autodoc", "1");
		BRepFill_CompatibleWires(const TopTools_SequenceOfShape &Sections);
		%feature("autodoc", "1");
		void Init(const TopTools_SequenceOfShape &Sections);
		%feature("autodoc", "1");
		void SetPercent(const Standard_Real percent=1.0000000000000000208166817117216851329430937767e-2);
		%feature("autodoc", "1");
		void Perform(const Standard_Boolean WithRotation=1);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		const TopTools_SequenceOfShape & Shape() const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & GeneratedShapes(const TopoDS_Edge &SubSection) const;
		%feature("autodoc", "1");
		const TopTools_DataMapOfShapeListOfShape & Generated() const;

};
%extend BRepFill_CompatibleWires {
	~BRepFill_CompatibleWires() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepFill_CompatibleWires\n");}
	}
};


%nodefaultctor BRepFill_LocationLaw;
class BRepFill_LocationLaw : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		BRepFill_LocationLaw();
		%feature("autodoc", "1");
		GeomFill_PipeError GetStatus() const;
		%feature("autodoc", "1");
		virtual		void TransformInG0Law();
		%feature("autodoc", "1");
		virtual		void TransformInCompatibleLaw(const Standard_Real AngularTolerance);
		%feature("autodoc", "1");
		void DeleteTransform();
		%feature("autodoc", "1");
		Standard_Integer NbHoles(const Standard_Real Tol=9.99999999999999954748111825886258685613938723691e-8);
		%feature("autodoc", "1");
		void Holes(TColStd_Array1OfInteger & Interval) const;
		%feature("autodoc", "1");
		Standard_Integer NbLaw() const;
		%feature("autodoc", "1");
		const Handle_GeomFill_LocationLaw & Law(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const TopoDS_Wire & Wire() const;
		%feature("autodoc", "1");
		const TopoDS_Edge & Edge(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		TopoDS_Vertex Vertex(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void PerformVertex(const Standard_Integer Index, const TopoDS_Vertex &InputVertex, const Standard_Real TolMin, TopoDS_Vertex & OutputVertex, const Standard_Integer Location=0) const;
		%feature("autodoc", "1");
		void CurvilinearBounds(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Boolean IsClosed() const;
		%feature("autodoc", "1");
		Standard_Integer IsG1(const Standard_Integer Index, const Standard_Real SpatialTolerance=9.99999999999999954748111825886258685613938723691e-8, const Standard_Real AngularTolerance=1.00000000000000004792173602385929598312941379845e-4) const;
		%feature("autodoc", "1");
		void D0(const Standard_Real Abscissa, TopoDS_Shape & Section);
		%feature("autodoc", "1");
		void Parameter(const Standard_Real Abscissa, Standard_Integer &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		Standard_Real Abscissa(const Standard_Integer Index, const Standard_Real Param);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepFill_LocationLaw {
	Handle_BRepFill_LocationLaw GetHandle() {
	return *(Handle_BRepFill_LocationLaw*) &$self;
	}
};
%extend BRepFill_LocationLaw {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend BRepFill_LocationLaw {
	~BRepFill_LocationLaw() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepFill_LocationLaw\n");}
	}
};


%nodefaultctor BRepFill_Edge3DLaw;
class BRepFill_Edge3DLaw : public BRepFill_LocationLaw {
	public:
		%feature("autodoc", "1");
		BRepFill_Edge3DLaw(const TopoDS_Wire &Path, const Handle_GeomFill_LocationLaw &Law);

};
%extend BRepFill_Edge3DLaw {
	Handle_BRepFill_Edge3DLaw GetHandle() {
	return *(Handle_BRepFill_Edge3DLaw*) &$self;
	}
};
%extend BRepFill_Edge3DLaw {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend BRepFill_Edge3DLaw {
	~BRepFill_Edge3DLaw() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepFill_Edge3DLaw\n");}
	}
};


%nodefaultctor BRepFill_DraftLaw;
class BRepFill_DraftLaw : public BRepFill_Edge3DLaw {
	public:
		%feature("autodoc", "1");
		BRepFill_DraftLaw(const TopoDS_Wire &Path, const Handle_GeomFill_LocationDraft &Law);
		%feature("autodoc", "1");
		void CleanLaw(const Standard_Real TolAngular);

};
%extend BRepFill_DraftLaw {
	Handle_BRepFill_DraftLaw GetHandle() {
	return *(Handle_BRepFill_DraftLaw*) &$self;
	}
};
%extend BRepFill_DraftLaw {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend BRepFill_DraftLaw {
	~BRepFill_DraftLaw() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepFill_DraftLaw\n");}
	}
};


%nodefaultctor BRepFill_SequenceOfFaceAndOrder;
class BRepFill_SequenceOfFaceAndOrder : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		BRepFill_SequenceOfFaceAndOrder();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const BRepFill_SequenceOfFaceAndOrder & Assign(const BRepFill_SequenceOfFaceAndOrder &Other);
		%feature("autodoc", "1");
		void Append(const BRepFill_FaceAndOrder &T);
		%feature("autodoc", "1");
		void Append(BRepFill_SequenceOfFaceAndOrder & S);
		%feature("autodoc", "1");
		void Prepend(const BRepFill_FaceAndOrder &T);
		%feature("autodoc", "1");
		void Prepend(BRepFill_SequenceOfFaceAndOrder & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const BRepFill_FaceAndOrder &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, BRepFill_SequenceOfFaceAndOrder & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const BRepFill_FaceAndOrder &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, BRepFill_SequenceOfFaceAndOrder & S);
		%feature("autodoc", "1");
		const BRepFill_FaceAndOrder & First() const;
		%feature("autodoc", "1");
		const BRepFill_FaceAndOrder & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, BRepFill_SequenceOfFaceAndOrder & S);
		%feature("autodoc", "1");
		const BRepFill_FaceAndOrder & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const BRepFill_FaceAndOrder & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const BRepFill_FaceAndOrder &I);
		%feature("autodoc", "1");
		BRepFill_FaceAndOrder & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		BRepFill_FaceAndOrder & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%extend BRepFill_SequenceOfFaceAndOrder {
	~BRepFill_SequenceOfFaceAndOrder() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepFill_SequenceOfFaceAndOrder\n");}
	}
};


%nodefaultctor BRepFill_SequenceOfSection;
class BRepFill_SequenceOfSection : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		BRepFill_SequenceOfSection();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const BRepFill_SequenceOfSection & Assign(const BRepFill_SequenceOfSection &Other);
		%feature("autodoc", "1");
		void Append(const BRepFill_Section &T);
		%feature("autodoc", "1");
		void Append(BRepFill_SequenceOfSection & S);
		%feature("autodoc", "1");
		void Prepend(const BRepFill_Section &T);
		%feature("autodoc", "1");
		void Prepend(BRepFill_SequenceOfSection & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const BRepFill_Section &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, BRepFill_SequenceOfSection & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const BRepFill_Section &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, BRepFill_SequenceOfSection & S);
		%feature("autodoc", "1");
		const BRepFill_Section & First() const;
		%feature("autodoc", "1");
		const BRepFill_Section & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, BRepFill_SequenceOfSection & S);
		%feature("autodoc", "1");
		const BRepFill_Section & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const BRepFill_Section & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const BRepFill_Section &I);
		%feature("autodoc", "1");
		BRepFill_Section & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		BRepFill_Section & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%extend BRepFill_SequenceOfSection {
	~BRepFill_SequenceOfSection() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepFill_SequenceOfSection\n");}
	}
};


%nodefaultctor BRepFill_Pipe;
class BRepFill_Pipe {
	public:
		%feature("autodoc", "1");
		BRepFill_Pipe();
		%feature("autodoc", "1");
		BRepFill_Pipe(const TopoDS_Wire &Spine, const TopoDS_Shape &Profile, const Standard_Boolean GeneratePartCase=0);
		%feature("autodoc", "1");
		void Perform(const TopoDS_Wire &Spine, const TopoDS_Shape &Profile, const Standard_Boolean GeneratePartCase=0);
		%feature("autodoc", "1");
		const TopoDS_Shape & Spine() const;
		%feature("autodoc", "1");
		const TopoDS_Shape & Profile() const;
		%feature("autodoc", "1");
		const TopoDS_Shape & Shape() const;
		%feature("autodoc", "1");
		const TopoDS_Shape & FirstShape() const;
		%feature("autodoc", "1");
		const TopoDS_Shape & LastShape() const;
		%feature("autodoc", "1");
		TopoDS_Face Face(const TopoDS_Edge &ESpine, const TopoDS_Edge &EProfile);
		%feature("autodoc", "1");
		TopoDS_Edge Edge(const TopoDS_Edge &ESpine, const TopoDS_Vertex &VProfile);
		%feature("autodoc", "1");
		TopoDS_Shape Section(const TopoDS_Vertex &VSpine) const;
		%feature("autodoc", "1");
		TopoDS_Wire PipeLine(const gp_Pnt &Point) const;

};
%extend BRepFill_Pipe {
	~BRepFill_Pipe() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepFill_Pipe\n");}
	}
};


%nodefaultctor BRepFill_ListIteratorOfListOfOffsetWire;
class BRepFill_ListIteratorOfListOfOffsetWire {
	public:
		%feature("autodoc", "1");
		BRepFill_ListIteratorOfListOfOffsetWire();
		%feature("autodoc", "1");
		BRepFill_ListIteratorOfListOfOffsetWire(const BRepFill_ListOfOffsetWire &L);
		%feature("autodoc", "1");
		void Initialize(const BRepFill_ListOfOffsetWire &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		BRepFill_OffsetWire & Value() const;

};
%extend BRepFill_ListIteratorOfListOfOffsetWire {
	~BRepFill_ListIteratorOfListOfOffsetWire() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepFill_ListIteratorOfListOfOffsetWire\n");}
	}
};


%nodefaultctor BRepFill_ListNodeOfListOfOffsetWire;
class BRepFill_ListNodeOfListOfOffsetWire : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BRepFill_ListNodeOfListOfOffsetWire(const BRepFill_OffsetWire &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		BRepFill_OffsetWire & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepFill_ListNodeOfListOfOffsetWire {
	Handle_BRepFill_ListNodeOfListOfOffsetWire GetHandle() {
	return *(Handle_BRepFill_ListNodeOfListOfOffsetWire*) &$self;
	}
};
%extend BRepFill_ListNodeOfListOfOffsetWire {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend BRepFill_ListNodeOfListOfOffsetWire {
	~BRepFill_ListNodeOfListOfOffsetWire() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepFill_ListNodeOfListOfOffsetWire\n");}
	}
};


%nodefaultctor BRepFill_DataMapIteratorOfDataMapOfShapeSequenceOfPnt;
class BRepFill_DataMapIteratorOfDataMapOfShapeSequenceOfPnt : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		BRepFill_DataMapIteratorOfDataMapOfShapeSequenceOfPnt();
		%feature("autodoc", "1");
		BRepFill_DataMapIteratorOfDataMapOfShapeSequenceOfPnt(const BRepFill_DataMapOfShapeSequenceOfPnt &aMap);
		%feature("autodoc", "1");
		void Initialize(const BRepFill_DataMapOfShapeSequenceOfPnt &aMap);
		%feature("autodoc", "1");
		const TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		const TColgp_SequenceOfPnt & Value() const;

};
%extend BRepFill_DataMapIteratorOfDataMapOfShapeSequenceOfPnt {
	~BRepFill_DataMapIteratorOfDataMapOfShapeSequenceOfPnt() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepFill_DataMapIteratorOfDataMapOfShapeSequenceOfPnt\n");}
	}
};


%nodefaultctor BRepFill_EdgeFaceAndOrder;
class BRepFill_EdgeFaceAndOrder {
	public:
		%feature("autodoc", "1");
		BRepFill_EdgeFaceAndOrder();
		%feature("autodoc", "1");
		BRepFill_EdgeFaceAndOrder(const TopoDS_Edge &anEdge, const TopoDS_Face &aFace, const GeomAbs_Shape anOrder);

};
%extend BRepFill_EdgeFaceAndOrder {
	~BRepFill_EdgeFaceAndOrder() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepFill_EdgeFaceAndOrder\n");}
	}
};


%nodefaultctor BRepFill_ACRLaw;
class BRepFill_ACRLaw : public BRepFill_LocationLaw {
	public:
		%feature("autodoc", "1");
		BRepFill_ACRLaw(const TopoDS_Wire &Path, const Handle_GeomFill_LocationGuide &Law);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepFill_ACRLaw {
	Handle_BRepFill_ACRLaw GetHandle() {
	return *(Handle_BRepFill_ACRLaw*) &$self;
	}
};
%extend BRepFill_ACRLaw {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend BRepFill_ACRLaw {
	~BRepFill_ACRLaw() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepFill_ACRLaw\n");}
	}
};


%nodefaultctor BRepFill_EdgeOnSurfLaw;
class BRepFill_EdgeOnSurfLaw : public BRepFill_LocationLaw {
	public:
		%feature("autodoc", "1");
		BRepFill_EdgeOnSurfLaw(const TopoDS_Wire &Path, const TopoDS_Shape &Surf);
		%feature("autodoc", "1");
		Standard_Boolean HasResult() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepFill_EdgeOnSurfLaw {
	Handle_BRepFill_EdgeOnSurfLaw GetHandle() {
	return *(Handle_BRepFill_EdgeOnSurfLaw*) &$self;
	}
};
%extend BRepFill_EdgeOnSurfLaw {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend BRepFill_EdgeOnSurfLaw {
	~BRepFill_EdgeOnSurfLaw() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepFill_EdgeOnSurfLaw\n");}
	}
};


%nodefaultctor BRepFill_DataMapNodeOfDataMapOfNodeDataMapOfShapeShape;
class BRepFill_DataMapNodeOfDataMapOfNodeDataMapOfShapeShape : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BRepFill_DataMapNodeOfDataMapOfNodeDataMapOfShapeShape(const Handle_MAT_Node &K, const TopTools_DataMapOfShapeShape &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Handle_MAT_Node & Key() const;
		%feature("autodoc", "1");
		TopTools_DataMapOfShapeShape & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepFill_DataMapNodeOfDataMapOfNodeDataMapOfShapeShape {
	Handle_BRepFill_DataMapNodeOfDataMapOfNodeDataMapOfShapeShape GetHandle() {
	return *(Handle_BRepFill_DataMapNodeOfDataMapOfNodeDataMapOfShapeShape*) &$self;
	}
};
%extend BRepFill_DataMapNodeOfDataMapOfNodeDataMapOfShapeShape {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend BRepFill_DataMapNodeOfDataMapOfNodeDataMapOfShapeShape {
	~BRepFill_DataMapNodeOfDataMapOfNodeDataMapOfShapeShape() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepFill_DataMapNodeOfDataMapOfNodeDataMapOfShapeShape\n");}
	}
};


%nodefaultctor BRepFill_PipeShell;
class BRepFill_PipeShell : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		BRepFill_PipeShell(const TopoDS_Wire &Spine);
		%feature("autodoc", "1");
		void Set(const Standard_Boolean Frenet=0);
		%feature("autodoc", "1");
		void Set(const gp_Ax2 &Axe);
		%feature("autodoc", "1");
		void Set(const gp_Dir &BiNormal);
		%feature("autodoc", "1");
		Standard_Boolean Set(const TopoDS_Shape &SpineSupport);
		%feature("autodoc", "1");
		void Set(const TopoDS_Wire &AuxiliarySpine, const Standard_Boolean CurvilinearEquivalence=1, const Standard_Boolean KeepContact=0);
		%feature("autodoc", "1");
		void Add(const TopoDS_Shape &Profile, const Standard_Boolean WithContact=0, const Standard_Boolean WithCorrection=0);
		%feature("autodoc", "1");
		void Add(const TopoDS_Shape &Profile, const TopoDS_Vertex &Location, const Standard_Boolean WithContact=0, const Standard_Boolean WithCorrection=0);
		%feature("autodoc", "1");
		void SetLaw(const TopoDS_Shape &Profile, const Handle_Law_Function &L, const Standard_Boolean WithContact=0, const Standard_Boolean WithCorrection=0);
		%feature("autodoc", "1");
		void SetLaw(const TopoDS_Shape &Profile, const Handle_Law_Function &L, const TopoDS_Vertex &Location, const Standard_Boolean WithContact=0, const Standard_Boolean WithCorrection=0);
		%feature("autodoc", "1");
		void Delete(const TopoDS_Shape &Profile);
		%feature("autodoc", "1");
		Standard_Boolean IsReady() const;
		%feature("autodoc", "1");
		GeomFill_PipeError GetStatus() const;
		%feature("autodoc", "1");
		void SetTolerance(const Standard_Real Tol3d=1.00000000000000004792173602385929598312941379845e-4, const Standard_Real BoundTol=1.00000000000000004792173602385929598312941379845e-4, const Standard_Real TolAngular=1.0000000000000000208166817117216851329430937767e-2);
		%feature("autodoc", "1");
		void SetTransition(const BRepFill_TransitionStyle Mode=BRepFill_Modified, const Standard_Real Angmin=1.0000000000000000208166817117216851329430937767e-2, const Standard_Real Angmax=6.0e+0);
		%feature("autodoc", "1");
		void Simulate(const Standard_Integer NumberOfSection, TopTools_ListOfShape & Sections);
		%feature("autodoc", "1");
		Standard_Boolean Build();
		%feature("autodoc", "1");
		Standard_Boolean MakeSolid();
		%feature("autodoc", "1");
		const TopoDS_Shape & Shape() const;
		%feature("autodoc", "1");
		const TopoDS_Shape & FirstShape() const;
		%feature("autodoc", "1");
		const TopoDS_Shape & LastShape() const;
		%feature("autodoc", "1");
		void Generated(const TopoDS_Shape &S, TopTools_ListOfShape & L);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepFill_PipeShell {
	Handle_BRepFill_PipeShell GetHandle() {
	return *(Handle_BRepFill_PipeShell*) &$self;
	}
};
%extend BRepFill_PipeShell {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend BRepFill_PipeShell {
	~BRepFill_PipeShell() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepFill_PipeShell\n");}
	}
};


%nodefaultctor BRepFill_Generator;
class BRepFill_Generator {
	public:
		%feature("autodoc", "1");
		BRepFill_Generator();
		%feature("autodoc", "1");
		void AddWire(const TopoDS_Wire &Wire);
		%feature("autodoc", "1");
		void Perform();
		%feature("autodoc", "1");
		const TopoDS_Shell & Shell() const;
		%feature("autodoc", "1");
		const TopTools_DataMapOfShapeListOfShape & Generated() const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & GeneratedShapes(const TopoDS_Shape &SSection) const;

};
%extend BRepFill_Generator {
	~BRepFill_Generator() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepFill_Generator\n");}
	}
};


%nodefaultctor BRepFill_ShapeLaw;
class BRepFill_ShapeLaw : public BRepFill_SectionLaw {
	public:
		%feature("autodoc", "1");
		BRepFill_ShapeLaw(const TopoDS_Vertex &V, const Standard_Boolean Build=1);
		%feature("autodoc", "1");
		BRepFill_ShapeLaw(const TopoDS_Wire &W, const Standard_Boolean Build=1);
		%feature("autodoc", "1");
		BRepFill_ShapeLaw(const TopoDS_Wire &W, const Handle_Law_Function &L, const Standard_Boolean Build=1);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsVertex() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsConstant() const;
		%feature("autodoc", "1");
		virtual		Handle_GeomFill_SectionLaw ConcatenedLaw() const;
		%feature("autodoc", "1");
		virtual		GeomAbs_Shape Continuity(const Standard_Integer Index, const Standard_Real TolAngular) const;
		%feature("autodoc", "1");
		virtual		Standard_Real VertexTol(const Standard_Integer Index, const Standard_Real Param) const;
		%feature("autodoc", "1");
		virtual		TopoDS_Vertex Vertex(const Standard_Integer Index, const Standard_Real Param) const;
		%feature("autodoc", "1");
		virtual		void D0(const Standard_Real Param, TopoDS_Shape & S);
		%feature("autodoc", "1");
		const TopoDS_Edge & Edge(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepFill_ShapeLaw {
	Handle_BRepFill_ShapeLaw GetHandle() {
	return *(Handle_BRepFill_ShapeLaw*) &$self;
	}
};
%extend BRepFill_ShapeLaw {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend BRepFill_ShapeLaw {
	~BRepFill_ShapeLaw() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepFill_ShapeLaw\n");}
	}
};


%nodefaultctor BRepFill_DataMapOfNodeShape;
class BRepFill_DataMapOfNodeShape : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		BRepFill_DataMapOfNodeShape(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		BRepFill_DataMapOfNodeShape & Assign(const BRepFill_DataMapOfNodeShape &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Handle_MAT_Node &K, const TopoDS_Shape &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Handle_MAT_Node &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Handle_MAT_Node &K);
		%feature("autodoc", "1");
		const TopoDS_Shape & Find(const Handle_MAT_Node &K) const;
		%feature("autodoc", "1");
		const TopoDS_Shape & operator()(const Handle_MAT_Node &K) const;
		%feature("autodoc", "1");
		TopoDS_Shape & ChangeFind(const Handle_MAT_Node &K);
		%feature("autodoc", "1");
		TopoDS_Shape & operator()(const Handle_MAT_Node &K);

};
%extend BRepFill_DataMapOfNodeShape {
	~BRepFill_DataMapOfNodeShape() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepFill_DataMapOfNodeShape\n");}
	}
};


%nodefaultctor BRepFill_SectionPlacement;
class BRepFill_SectionPlacement {
	public:
		%feature("autodoc", "1");
		BRepFill_SectionPlacement(const Handle_BRepFill_LocationLaw &Law, const TopoDS_Shape &Section, const Standard_Boolean WithContact=0, const Standard_Boolean WithCorrection=0);
		%feature("autodoc", "1");
		BRepFill_SectionPlacement(const Handle_BRepFill_LocationLaw &Law, const TopoDS_Shape &Section, const TopoDS_Shape &Vertex, const Standard_Boolean WithContact=0, const Standard_Boolean WithCorrection=0);
		%feature("autodoc", "1");
		const gp_Trsf & Transformation() const;
		%feature("autodoc", "1");
		Standard_Real AbscissaOnPath();

};
%extend BRepFill_SectionPlacement {
	~BRepFill_SectionPlacement() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepFill_SectionPlacement\n");}
	}
};


%nodefaultctor BRepFill_Draft;
class BRepFill_Draft {
	public:
		%feature("autodoc", "1");
		BRepFill_Draft(const TopoDS_Shape &Shape, const gp_Dir &Dir, const Standard_Real Angle);
		%feature("autodoc", "1");
		void SetOptions(const BRepFill_TransitionStyle Style=BRepFill_Right, const Standard_Real AngleMin=1.0000000000000000208166817117216851329430937767e-2, const Standard_Real AngleMax=3.0e+0);
		%feature("autodoc", "1");
		void SetDraft(const Standard_Boolean IsInternal=0);
		%feature("autodoc", "1");
		void Perform(const Standard_Real LengthMax);
		%feature("autodoc", "1");
		void Perform(const Handle_Geom_Surface &Surface, const Standard_Boolean KeepInsideSurface=1);
		%feature("autodoc", "1");
		void Perform(const TopoDS_Shape &StopShape, const Standard_Boolean KeepOutSide=1);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		TopoDS_Shell Shell() const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Generated(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		TopoDS_Shape Shape() const;

};
%extend BRepFill_Draft {
	~BRepFill_Draft() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepFill_Draft\n");}
	}
};


%nodefaultctor BRepFill_DataMapNodeOfDataMapOfShapeDataMapOfShapeListOfShape;
class BRepFill_DataMapNodeOfDataMapOfShapeDataMapOfShapeListOfShape : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BRepFill_DataMapNodeOfDataMapOfShapeDataMapOfShapeListOfShape(const TopoDS_Shape &K, const TopTools_DataMapOfShapeListOfShape &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		TopTools_DataMapOfShapeListOfShape & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepFill_DataMapNodeOfDataMapOfShapeDataMapOfShapeListOfShape {
	Handle_BRepFill_DataMapNodeOfDataMapOfShapeDataMapOfShapeListOfShape GetHandle() {
	return *(Handle_BRepFill_DataMapNodeOfDataMapOfShapeDataMapOfShapeListOfShape*) &$self;
	}
};
%extend BRepFill_DataMapNodeOfDataMapOfShapeDataMapOfShapeListOfShape {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend BRepFill_DataMapNodeOfDataMapOfShapeDataMapOfShapeListOfShape {
	~BRepFill_DataMapNodeOfDataMapOfShapeDataMapOfShapeListOfShape() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepFill_DataMapNodeOfDataMapOfShapeDataMapOfShapeListOfShape\n");}
	}
};


%nodefaultctor BRepFill_Evolved;
class BRepFill_Evolved {
	public:
		%feature("autodoc", "1");
		BRepFill_Evolved();
		%feature("autodoc", "1");
		BRepFill_Evolved(const TopoDS_Wire &Spine, const TopoDS_Wire &Profile, const gp_Ax3 &AxeProf, const GeomAbs_JoinType Join=GeomAbs_Arc, const Standard_Boolean Solid=0);
		%feature("autodoc", "1");
		BRepFill_Evolved(const TopoDS_Face &Spine, const TopoDS_Wire &Profile, const gp_Ax3 &AxeProf, const GeomAbs_JoinType Join=GeomAbs_Arc, const Standard_Boolean Solid=0);
		%feature("autodoc", "1");
		void Perform(const TopoDS_Wire &Spine, const TopoDS_Wire &Profile, const gp_Ax3 &AxeProf, const GeomAbs_JoinType Join=GeomAbs_Arc, const Standard_Boolean Solid=0);
		%feature("autodoc", "1");
		void Perform(const TopoDS_Face &Spine, const TopoDS_Wire &Profile, const gp_Ax3 &AxeProf, const GeomAbs_JoinType Join=GeomAbs_Arc, const Standard_Boolean Solid=0);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		const TopoDS_Shape & Shape() const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & GeneratedShapes(const TopoDS_Shape &SpineShape, const TopoDS_Shape &ProfShape) const;
		%feature("autodoc", "1");
		GeomAbs_JoinType JoinType() const;
		%feature("autodoc", "1");
		const TopoDS_Shape & Top() const;
		%feature("autodoc", "1");
		const TopoDS_Shape & Bottom() const;

};
%extend BRepFill_Evolved {
	~BRepFill_Evolved() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepFill_Evolved\n");}
	}
};


%nodefaultctor BRepFill_MultiLine;
class BRepFill_MultiLine {
	public:
		%feature("autodoc", "1");
		BRepFill_MultiLine();
		%feature("autodoc", "1");
		BRepFill_MultiLine(const TopoDS_Face &Face1, const TopoDS_Face &Face2, const TopoDS_Edge &Edge1, const TopoDS_Edge &Edge2, const Standard_Boolean Inv1, const Standard_Boolean Inv2, const Handle_Geom2d_Curve &Bissec);
		%feature("autodoc", "1");
		Standard_Boolean IsParticularCase() const;
		%feature("autodoc", "1");
		GeomAbs_Shape Continuity() const;
		%feature("autodoc", "1");
		void Curves(Handle_Geom_Curve & Curve, Handle_Geom2d_Curve & PCurve1, Handle_Geom2d_Curve & PCurve2) const;
		%feature("autodoc", "1");
		Standard_Real FirstParameter() const;
		%feature("autodoc", "1");
		Standard_Real LastParameter() const;
		%feature("autodoc", "1");
		gp_Pnt Value(const Standard_Real U) const;
		%feature("autodoc", "1");
		gp_Pnt2d ValueOnF1(const Standard_Real U) const;
		%feature("autodoc", "1");
		gp_Pnt2d ValueOnF2(const Standard_Real U) const;
		%feature("autodoc", "1");
		void Value3dOnF1OnF2(const Standard_Real U, gp_Pnt & P3d, gp_Pnt2d & PF1, gp_Pnt2d & PF2) const;

};
%extend BRepFill_MultiLine {
	~BRepFill_MultiLine() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepFill_MultiLine\n");}
	}
};


%nodefaultctor BRepFill_DataMapOfOrientedShapeListOfShape;
class BRepFill_DataMapOfOrientedShapeListOfShape : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		BRepFill_DataMapOfOrientedShapeListOfShape(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		BRepFill_DataMapOfOrientedShapeListOfShape & Assign(const BRepFill_DataMapOfOrientedShapeListOfShape &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TopoDS_Shape &K, const TopTools_ListOfShape &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TopoDS_Shape &K);
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Find(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & operator()(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		TopTools_ListOfShape & ChangeFind(const TopoDS_Shape &K);
		%feature("autodoc", "1");
		TopTools_ListOfShape & operator()(const TopoDS_Shape &K);

};
%extend BRepFill_DataMapOfOrientedShapeListOfShape {
	~BRepFill_DataMapOfOrientedShapeListOfShape() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepFill_DataMapOfOrientedShapeListOfShape\n");}
	}
};


%nodefaultctor BRepFill_DataMapNodeOfDataMapOfNodeShape;
class BRepFill_DataMapNodeOfDataMapOfNodeShape : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BRepFill_DataMapNodeOfDataMapOfNodeShape(const Handle_MAT_Node &K, const TopoDS_Shape &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Handle_MAT_Node & Key() const;
		%feature("autodoc", "1");
		TopoDS_Shape & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepFill_DataMapNodeOfDataMapOfNodeShape {
	Handle_BRepFill_DataMapNodeOfDataMapOfNodeShape GetHandle() {
	return *(Handle_BRepFill_DataMapNodeOfDataMapOfNodeShape*) &$self;
	}
};
%extend BRepFill_DataMapNodeOfDataMapOfNodeShape {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend BRepFill_DataMapNodeOfDataMapOfNodeShape {
	~BRepFill_DataMapNodeOfDataMapOfNodeShape() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepFill_DataMapNodeOfDataMapOfNodeShape\n");}
	}
};


%nodefaultctor BRepFill_SequenceOfEdgeFaceAndOrder;
class BRepFill_SequenceOfEdgeFaceAndOrder : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		BRepFill_SequenceOfEdgeFaceAndOrder();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const BRepFill_SequenceOfEdgeFaceAndOrder & Assign(const BRepFill_SequenceOfEdgeFaceAndOrder &Other);
		%feature("autodoc", "1");
		void Append(const BRepFill_EdgeFaceAndOrder &T);
		%feature("autodoc", "1");
		void Append(BRepFill_SequenceOfEdgeFaceAndOrder & S);
		%feature("autodoc", "1");
		void Prepend(const BRepFill_EdgeFaceAndOrder &T);
		%feature("autodoc", "1");
		void Prepend(BRepFill_SequenceOfEdgeFaceAndOrder & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const BRepFill_EdgeFaceAndOrder &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, BRepFill_SequenceOfEdgeFaceAndOrder & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const BRepFill_EdgeFaceAndOrder &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, BRepFill_SequenceOfEdgeFaceAndOrder & S);
		%feature("autodoc", "1");
		const BRepFill_EdgeFaceAndOrder & First() const;
		%feature("autodoc", "1");
		const BRepFill_EdgeFaceAndOrder & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, BRepFill_SequenceOfEdgeFaceAndOrder & S);
		%feature("autodoc", "1");
		const BRepFill_EdgeFaceAndOrder & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const BRepFill_EdgeFaceAndOrder & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const BRepFill_EdgeFaceAndOrder &I);
		%feature("autodoc", "1");
		BRepFill_EdgeFaceAndOrder & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		BRepFill_EdgeFaceAndOrder & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%extend BRepFill_SequenceOfEdgeFaceAndOrder {
	~BRepFill_SequenceOfEdgeFaceAndOrder() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepFill_SequenceOfEdgeFaceAndOrder\n");}
	}
};


%nodefaultctor BRepFill_MyLeastSquareOfComputeCLine;
class BRepFill_MyLeastSquareOfComputeCLine {
	public:
		%feature("autodoc", "1");
		BRepFill_MyLeastSquareOfComputeCLine(const BRepFill_MultiLine &SSP, const Standard_Real U0, const Standard_Real U1, const AppParCurves_Constraint FirstCons, const AppParCurves_Constraint LastCons, const Standard_Integer Deg, const Standard_Integer NbPoints=24);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		const AppParCurves_MultiCurve & Value();
		%feature("autodoc", "1");
		void Error(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;

};
%extend BRepFill_MyLeastSquareOfComputeCLine {
	~BRepFill_MyLeastSquareOfComputeCLine() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepFill_MyLeastSquareOfComputeCLine\n");}
	}
};


%nodefaultctor BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfShape;
class BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfShape : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfShape(const TopoDS_Shape &K, const TopTools_SequenceOfShape &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		TopTools_SequenceOfShape & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfShape {
	Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfShape GetHandle() {
	return *(Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfShape*) &$self;
	}
};
%extend BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfShape {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfShape {
	~BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfShape() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfShape\n");}
	}
};


%nodefaultctor BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfPnt;
class BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfPnt : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfPnt(const TopoDS_Shape &K, const TColgp_SequenceOfPnt &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		TColgp_SequenceOfPnt & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfPnt {
	Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfPnt GetHandle() {
	return *(Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfPnt*) &$self;
	}
};
%extend BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfPnt {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfPnt {
	~BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfPnt() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfPnt\n");}
	}
};


%nodefaultctor BRepFill;
class BRepFill {
	public:
		%feature("autodoc", "1");
		BRepFill();
		%feature("autodoc", "1");
		TopoDS_Face Face(const TopoDS_Edge &Edge1, const TopoDS_Edge &Edge2);
		%feature("autodoc", "1");
		TopoDS_Shell Shell(const TopoDS_Wire &Wire1, const TopoDS_Wire &Wire2);
		%feature("autodoc", "1");
		void Axe(const TopoDS_Shape &Spine, const TopoDS_Wire &Profile, gp_Ax3 & AxeProf, Standard_Boolean & ProfOnSpine, const Standard_Real Tol);
		%feature("autodoc", "1");
		void ComputeACR(const TopoDS_Wire &wire, TColStd_Array1OfReal & ACR);
		%feature("autodoc", "1");
		TopoDS_Wire InsertACR(const TopoDS_Wire &wire, const TColStd_Array1OfReal &ACRcuts, const Standard_Real prec);

};
%extend BRepFill {
	~BRepFill() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepFill\n");}
	}
};


%nodefaultctor BRepFill_FaceAndOrder;
class BRepFill_FaceAndOrder {
	public:
		%feature("autodoc", "1");
		BRepFill_FaceAndOrder();
		%feature("autodoc", "1");
		BRepFill_FaceAndOrder(const TopoDS_Face &aFace, const GeomAbs_Shape anOrder);

};
%extend BRepFill_FaceAndOrder {
	~BRepFill_FaceAndOrder() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepFill_FaceAndOrder\n");}
	}
};


%nodefaultctor BRepFill_MultiLineTool;
class BRepFill_MultiLineTool {
	public:
		%feature("autodoc", "1");
		BRepFill_MultiLineTool();
		%feature("autodoc", "1");
		Standard_Real FirstParameter(const BRepFill_MultiLine &ML);
		%feature("autodoc", "1");
		Standard_Real LastParameter(const BRepFill_MultiLine &ML);
		%feature("autodoc", "1");
		Standard_Integer NbP2d(const BRepFill_MultiLine &ML);
		%feature("autodoc", "1");
		Standard_Integer NbP3d(const BRepFill_MultiLine &ML);
		%feature("autodoc", "1");
		void Value(const BRepFill_MultiLine &ML, const Standard_Real U, TColgp_Array1OfPnt & tabPt);
		%feature("autodoc", "1");
		void Value(const BRepFill_MultiLine &ML, const Standard_Real U, TColgp_Array1OfPnt2d & tabPt2d);
		%feature("autodoc", "1");
		void Value(const BRepFill_MultiLine &ML, const Standard_Real U, TColgp_Array1OfPnt & tabPt, TColgp_Array1OfPnt2d & tabPt2d);
		%feature("autodoc", "1");
		Standard_Boolean D1(const BRepFill_MultiLine &ML, const Standard_Real U, TColgp_Array1OfVec & tabV);
		%feature("autodoc", "1");
		Standard_Boolean D1(const BRepFill_MultiLine &ML, const Standard_Real U, TColgp_Array1OfVec2d & tabV2d);
		%feature("autodoc", "1");
		Standard_Boolean D1(const BRepFill_MultiLine &ML, const Standard_Real U, TColgp_Array1OfVec & tabV, TColgp_Array1OfVec2d & tabV2d);

};
%extend BRepFill_MultiLineTool {
	~BRepFill_MultiLineTool() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepFill_MultiLineTool\n");}
	}
};


%nodefaultctor BRepFill_ApproxSeewing;
class BRepFill_ApproxSeewing {
	public:
		%feature("autodoc", "1");
		BRepFill_ApproxSeewing();
		%feature("autodoc", "1");
		BRepFill_ApproxSeewing(const BRepFill_MultiLine &ML);
		%feature("autodoc", "1");
		void Perform(const BRepFill_MultiLine &ML);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		const Handle_Geom_Curve & Curve() const;
		%feature("autodoc", "1");
		const Handle_Geom2d_Curve & CurveOnF1() const;
		%feature("autodoc", "1");
		const Handle_Geom2d_Curve & CurveOnF2() const;

};
%extend BRepFill_ApproxSeewing {
	~BRepFill_ApproxSeewing() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepFill_ApproxSeewing\n");}
	}
};


%nodefaultctor BRepFill_SequenceNodeOfSequenceOfSection;
class BRepFill_SequenceNodeOfSequenceOfSection : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		BRepFill_SequenceNodeOfSequenceOfSection(const BRepFill_Section &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		BRepFill_Section & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepFill_SequenceNodeOfSequenceOfSection {
	Handle_BRepFill_SequenceNodeOfSequenceOfSection GetHandle() {
	return *(Handle_BRepFill_SequenceNodeOfSequenceOfSection*) &$self;
	}
};
%extend BRepFill_SequenceNodeOfSequenceOfSection {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend BRepFill_SequenceNodeOfSequenceOfSection {
	~BRepFill_SequenceNodeOfSequenceOfSection() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepFill_SequenceNodeOfSequenceOfSection\n");}
	}
};


%nodefaultctor BRepFill_ListOfOffsetWire;
class BRepFill_ListOfOffsetWire {
	public:
		%feature("autodoc", "1");
		BRepFill_ListOfOffsetWire();
		%feature("autodoc", "1");
		void Assign(const BRepFill_ListOfOffsetWire &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const BRepFill_OffsetWire &I);
		%feature("autodoc", "1");
		void Prepend(const BRepFill_OffsetWire &I, BRepFill_ListIteratorOfListOfOffsetWire & theIt);
		%feature("autodoc", "1");
		void Prepend(BRepFill_ListOfOffsetWire & Other);
		%feature("autodoc", "1");
		void Append(const BRepFill_OffsetWire &I);
		%feature("autodoc", "1");
		void Append(const BRepFill_OffsetWire &I, BRepFill_ListIteratorOfListOfOffsetWire & theIt);
		%feature("autodoc", "1");
		void Append(BRepFill_ListOfOffsetWire & Other);
		%feature("autodoc", "1");
		BRepFill_OffsetWire & First() const;
		%feature("autodoc", "1");
		BRepFill_OffsetWire & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(BRepFill_ListIteratorOfListOfOffsetWire & It);
		%feature("autodoc", "1");
		void InsertBefore(const BRepFill_OffsetWire &I, BRepFill_ListIteratorOfListOfOffsetWire & It);
		%feature("autodoc", "1");
		void InsertBefore(BRepFill_ListOfOffsetWire & Other, BRepFill_ListIteratorOfListOfOffsetWire & It);
		%feature("autodoc", "1");
		void InsertAfter(const BRepFill_OffsetWire &I, BRepFill_ListIteratorOfListOfOffsetWire & It);
		%feature("autodoc", "1");
		void InsertAfter(BRepFill_ListOfOffsetWire & Other, BRepFill_ListIteratorOfListOfOffsetWire & It);

};
%extend BRepFill_ListOfOffsetWire {
	~BRepFill_ListOfOffsetWire() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepFill_ListOfOffsetWire\n");}
	}
};


%nodefaultctor BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfReal;
class BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfReal : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfReal(const TopoDS_Shape &K, const TColStd_SequenceOfReal &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		TColStd_SequenceOfReal & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfReal {
	Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfReal GetHandle() {
	return *(Handle_BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfReal*) &$self;
	}
};
%extend BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfReal {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfReal {
	~BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfReal\n");}
	}
};


%nodefaultctor BRepFill_DataMapIteratorOfDataMapOfNodeDataMapOfShapeShape;
class BRepFill_DataMapIteratorOfDataMapOfNodeDataMapOfShapeShape : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		BRepFill_DataMapIteratorOfDataMapOfNodeDataMapOfShapeShape();
		%feature("autodoc", "1");
		BRepFill_DataMapIteratorOfDataMapOfNodeDataMapOfShapeShape(const BRepFill_DataMapOfNodeDataMapOfShapeShape &aMap);
		%feature("autodoc", "1");
		void Initialize(const BRepFill_DataMapOfNodeDataMapOfShapeShape &aMap);
		%feature("autodoc", "1");
		const Handle_MAT_Node & Key() const;
		%feature("autodoc", "1");
		const TopTools_DataMapOfShapeShape & Value() const;

};
%extend BRepFill_DataMapIteratorOfDataMapOfNodeDataMapOfShapeShape {
	~BRepFill_DataMapIteratorOfDataMapOfNodeDataMapOfShapeShape() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepFill_DataMapIteratorOfDataMapOfNodeDataMapOfShapeShape\n");}
	}
};


%nodefaultctor BRepFill_ComputeCLine;
class BRepFill_ComputeCLine {
	public:
		%feature("autodoc", "1");
		BRepFill_ComputeCLine(const BRepFill_MultiLine &Line, const Standard_Integer degreemin=3, const Standard_Integer degreemax=8, const Standard_Real Tolerance3d=1.00000000000000008180305391403130954586231382564e-5, const Standard_Real Tolerance2d=1.00000000000000008180305391403130954586231382564e-5, const Standard_Boolean cutting=0, const AppParCurves_Constraint FirstC=AppParCurves_TangencyPoint, const AppParCurves_Constraint LastC=AppParCurves_TangencyPoint);
		%feature("autodoc", "1");
		BRepFill_ComputeCLine(const Standard_Integer degreemin=3, const Standard_Integer degreemax=8, const Standard_Real Tolerance3d=1.00000000000000008180305391403130954586231382564e-5, const Standard_Real Tolerance2d=1.00000000000000008180305391403130954586231382564e-5, const Standard_Boolean cutting=0, const AppParCurves_Constraint FirstC=AppParCurves_TangencyPoint, const AppParCurves_Constraint LastC=AppParCurves_TangencyPoint);
		%feature("autodoc", "1");
		void Perform(const BRepFill_MultiLine &Line);
		%feature("autodoc", "1");
		void SetDegrees(const Standard_Integer degreemin, const Standard_Integer degreemax);
		%feature("autodoc", "1");
		void SetTolerances(const Standard_Real Tolerance3d, const Standard_Real Tolerance2d);
		%feature("autodoc", "1");
		void SetConstraints(const AppParCurves_Constraint FirstC, const AppParCurves_Constraint LastC);
		%feature("autodoc", "1");
		Standard_Boolean IsAllApproximated() const;
		%feature("autodoc", "1");
		Standard_Boolean IsToleranceReached() const;
		%feature("autodoc", "1");
		void Error(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Integer NbMultiCurves() const;
		%feature("autodoc", "1");
		AppParCurves_MultiCurve Value(const Standard_Integer Index=1) const;
		%feature("autodoc", "1");
		void Parameters(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue) const;

};
%extend BRepFill_ComputeCLine {
	~BRepFill_ComputeCLine() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepFill_ComputeCLine\n");}
	}
};


%nodefaultctor BRepFill_DataMapOfShapeSequenceOfPnt;
class BRepFill_DataMapOfShapeSequenceOfPnt : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		BRepFill_DataMapOfShapeSequenceOfPnt(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		BRepFill_DataMapOfShapeSequenceOfPnt & Assign(const BRepFill_DataMapOfShapeSequenceOfPnt &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TopoDS_Shape &K, const TColgp_SequenceOfPnt &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TopoDS_Shape &K);
		%feature("autodoc", "1");
		const TColgp_SequenceOfPnt & Find(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		const TColgp_SequenceOfPnt & operator()(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		TColgp_SequenceOfPnt & ChangeFind(const TopoDS_Shape &K);
		%feature("autodoc", "1");
		TColgp_SequenceOfPnt & operator()(const TopoDS_Shape &K);

};
%extend BRepFill_DataMapOfShapeSequenceOfPnt {
	~BRepFill_DataMapOfShapeSequenceOfPnt() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepFill_DataMapOfShapeSequenceOfPnt\n");}
	}
};


%nodefaultctor BRepFill_SequenceNodeOfSequenceOfEdgeFaceAndOrder;
class BRepFill_SequenceNodeOfSequenceOfEdgeFaceAndOrder : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		BRepFill_SequenceNodeOfSequenceOfEdgeFaceAndOrder(const BRepFill_EdgeFaceAndOrder &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		BRepFill_EdgeFaceAndOrder & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepFill_SequenceNodeOfSequenceOfEdgeFaceAndOrder {
	Handle_BRepFill_SequenceNodeOfSequenceOfEdgeFaceAndOrder GetHandle() {
	return *(Handle_BRepFill_SequenceNodeOfSequenceOfEdgeFaceAndOrder*) &$self;
	}
};
%extend BRepFill_SequenceNodeOfSequenceOfEdgeFaceAndOrder {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend BRepFill_SequenceNodeOfSequenceOfEdgeFaceAndOrder {
	~BRepFill_SequenceNodeOfSequenceOfEdgeFaceAndOrder() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepFill_SequenceNodeOfSequenceOfEdgeFaceAndOrder\n");}
	}
};


%nodefaultctor BRepFill_DataMapIteratorOfDataMapOfShapeSequenceOfShape;
class BRepFill_DataMapIteratorOfDataMapOfShapeSequenceOfShape : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		BRepFill_DataMapIteratorOfDataMapOfShapeSequenceOfShape();
		%feature("autodoc", "1");
		BRepFill_DataMapIteratorOfDataMapOfShapeSequenceOfShape(const BRepFill_DataMapOfShapeSequenceOfShape &aMap);
		%feature("autodoc", "1");
		void Initialize(const BRepFill_DataMapOfShapeSequenceOfShape &aMap);
		%feature("autodoc", "1");
		const TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		const TopTools_SequenceOfShape & Value() const;

};
%extend BRepFill_DataMapIteratorOfDataMapOfShapeSequenceOfShape {
	~BRepFill_DataMapIteratorOfDataMapOfShapeSequenceOfShape() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepFill_DataMapIteratorOfDataMapOfShapeSequenceOfShape\n");}
	}
};
