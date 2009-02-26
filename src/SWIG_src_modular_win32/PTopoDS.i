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
%module PTopoDS

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


%include PTopoDS_dependencies.i


%include PTopoDS_headers.i




%nodefaultctor Handle_PTopoDS_TShape;
class Handle_PTopoDS_TShape : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		~Handle_PTopoDS_TShape();
		%feature("autodoc", "1");
		Handle_PTopoDS_TShape();
		%feature("autodoc", "1");
		Handle_PTopoDS_TShape(const Handle_PTopoDS_TShape &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_TShape(const PTopoDS_TShape *anItem);
		%feature("autodoc", "1");
		Handle_PTopoDS_TShape const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PTopoDS_TShape {
	PTopoDS_TShape* GetObject() {
	return (PTopoDS_TShape*)$self->Access();
	}
};

%nodefaultctor Handle_PTopoDS_TShell;
class Handle_PTopoDS_TShell : public Handle_PTopoDS_TShape {
	public:
		%feature("autodoc", "1");
		~Handle_PTopoDS_TShell();
		%feature("autodoc", "1");
		Handle_PTopoDS_TShell();
		%feature("autodoc", "1");
		Handle_PTopoDS_TShell(const Handle_PTopoDS_TShell &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_TShell(const PTopoDS_TShell *anItem);
		%feature("autodoc", "1");
		Handle_PTopoDS_TShell const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PTopoDS_TShell {
	PTopoDS_TShell* GetObject() {
	return (PTopoDS_TShell*)$self->Access();
	}
};

%nodefaultctor Handle_PTopoDS_VArrayNodeOfFieldOfHArray1OfHShape;
class Handle_PTopoDS_VArrayNodeOfFieldOfHArray1OfHShape : public Handle_PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		~Handle_PTopoDS_VArrayNodeOfFieldOfHArray1OfHShape();
		%feature("autodoc", "1");
		Handle_PTopoDS_VArrayNodeOfFieldOfHArray1OfHShape();
		%feature("autodoc", "1");
		Handle_PTopoDS_VArrayNodeOfFieldOfHArray1OfHShape(const Handle_PTopoDS_VArrayNodeOfFieldOfHArray1OfHShape &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_VArrayNodeOfFieldOfHArray1OfHShape(const PTopoDS_VArrayNodeOfFieldOfHArray1OfHShape *anItem);
		%feature("autodoc", "1");
		Handle_PTopoDS_VArrayNodeOfFieldOfHArray1OfHShape const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PTopoDS_VArrayNodeOfFieldOfHArray1OfHShape {
	PTopoDS_VArrayNodeOfFieldOfHArray1OfHShape* GetObject() {
	return (PTopoDS_VArrayNodeOfFieldOfHArray1OfHShape*)$self->Access();
	}
};

%nodefaultctor Handle_PTopoDS_TShape1;
class Handle_PTopoDS_TShape1 : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		~Handle_PTopoDS_TShape1();
		%feature("autodoc", "1");
		Handle_PTopoDS_TShape1();
		%feature("autodoc", "1");
		Handle_PTopoDS_TShape1(const Handle_PTopoDS_TShape1 &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_TShape1(const PTopoDS_TShape1 *anItem);
		%feature("autodoc", "1");
		Handle_PTopoDS_TShape1 const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PTopoDS_TShape1 {
	PTopoDS_TShape1* GetObject() {
	return (PTopoDS_TShape1*)$self->Access();
	}
};

%nodefaultctor Handle_PTopoDS_TShell1;
class Handle_PTopoDS_TShell1 : public Handle_PTopoDS_TShape1 {
	public:
		%feature("autodoc", "1");
		~Handle_PTopoDS_TShell1();
		%feature("autodoc", "1");
		Handle_PTopoDS_TShell1();
		%feature("autodoc", "1");
		Handle_PTopoDS_TShell1(const Handle_PTopoDS_TShell1 &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_TShell1(const PTopoDS_TShell1 *anItem);
		%feature("autodoc", "1");
		Handle_PTopoDS_TShell1 const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PTopoDS_TShell1 {
	PTopoDS_TShell1* GetObject() {
	return (PTopoDS_TShell1*)$self->Access();
	}
};

%nodefaultctor Handle_PTopoDS_TEdge1;
class Handle_PTopoDS_TEdge1 : public Handle_PTopoDS_TShape1 {
	public:
		%feature("autodoc", "1");
		~Handle_PTopoDS_TEdge1();
		%feature("autodoc", "1");
		Handle_PTopoDS_TEdge1();
		%feature("autodoc", "1");
		Handle_PTopoDS_TEdge1(const Handle_PTopoDS_TEdge1 &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_TEdge1(const PTopoDS_TEdge1 *anItem);
		%feature("autodoc", "1");
		Handle_PTopoDS_TEdge1 const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PTopoDS_TEdge1 {
	PTopoDS_TEdge1* GetObject() {
	return (PTopoDS_TEdge1*)$self->Access();
	}
};

%nodefaultctor Handle_PTopoDS_VArrayNodeOfFieldOfHArray1OfShape1;
class Handle_PTopoDS_VArrayNodeOfFieldOfHArray1OfShape1 : public Handle_PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		~Handle_PTopoDS_VArrayNodeOfFieldOfHArray1OfShape1();
		%feature("autodoc", "1");
		Handle_PTopoDS_VArrayNodeOfFieldOfHArray1OfShape1();
		%feature("autodoc", "1");
		Handle_PTopoDS_VArrayNodeOfFieldOfHArray1OfShape1(const Handle_PTopoDS_VArrayNodeOfFieldOfHArray1OfShape1 &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_VArrayNodeOfFieldOfHArray1OfShape1(const PTopoDS_VArrayNodeOfFieldOfHArray1OfShape1 *anItem);
		%feature("autodoc", "1");
		Handle_PTopoDS_VArrayNodeOfFieldOfHArray1OfShape1 const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PTopoDS_VArrayNodeOfFieldOfHArray1OfShape1 {
	PTopoDS_VArrayNodeOfFieldOfHArray1OfShape1* GetObject() {
	return (PTopoDS_VArrayNodeOfFieldOfHArray1OfShape1*)$self->Access();
	}
};

%nodefaultctor Handle_PTopoDS_TCompSolid1;
class Handle_PTopoDS_TCompSolid1 : public Handle_PTopoDS_TShape1 {
	public:
		%feature("autodoc", "1");
		~Handle_PTopoDS_TCompSolid1();
		%feature("autodoc", "1");
		Handle_PTopoDS_TCompSolid1();
		%feature("autodoc", "1");
		Handle_PTopoDS_TCompSolid1(const Handle_PTopoDS_TCompSolid1 &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_TCompSolid1(const PTopoDS_TCompSolid1 *anItem);
		%feature("autodoc", "1");
		Handle_PTopoDS_TCompSolid1 const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PTopoDS_TCompSolid1 {
	PTopoDS_TCompSolid1* GetObject() {
	return (PTopoDS_TCompSolid1*)$self->Access();
	}
};

%nodefaultctor Handle_PTopoDS_TSolid1;
class Handle_PTopoDS_TSolid1 : public Handle_PTopoDS_TShape1 {
	public:
		%feature("autodoc", "1");
		~Handle_PTopoDS_TSolid1();
		%feature("autodoc", "1");
		Handle_PTopoDS_TSolid1();
		%feature("autodoc", "1");
		Handle_PTopoDS_TSolid1(const Handle_PTopoDS_TSolid1 &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_TSolid1(const PTopoDS_TSolid1 *anItem);
		%feature("autodoc", "1");
		Handle_PTopoDS_TSolid1 const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PTopoDS_TSolid1 {
	PTopoDS_TSolid1* GetObject() {
	return (PTopoDS_TSolid1*)$self->Access();
	}
};

%nodefaultctor Handle_PTopoDS_TEdge;
class Handle_PTopoDS_TEdge : public Handle_PTopoDS_TShape {
	public:
		%feature("autodoc", "1");
		~Handle_PTopoDS_TEdge();
		%feature("autodoc", "1");
		Handle_PTopoDS_TEdge();
		%feature("autodoc", "1");
		Handle_PTopoDS_TEdge(const Handle_PTopoDS_TEdge &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_TEdge(const PTopoDS_TEdge *anItem);
		%feature("autodoc", "1");
		Handle_PTopoDS_TEdge const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PTopoDS_TEdge {
	PTopoDS_TEdge* GetObject() {
	return (PTopoDS_TEdge*)$self->Access();
	}
};

%nodefaultctor Handle_PTopoDS_HShape;
class Handle_PTopoDS_HShape : public Handle_ObjMgt_ExternShareable {
	public:
		%feature("autodoc", "1");
		~Handle_PTopoDS_HShape();
		%feature("autodoc", "1");
		Handle_PTopoDS_HShape();
		%feature("autodoc", "1");
		Handle_PTopoDS_HShape(const Handle_PTopoDS_HShape &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_HShape(const PTopoDS_HShape *anItem);
		%feature("autodoc", "1");
		Handle_PTopoDS_HShape const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PTopoDS_HShape {
	PTopoDS_HShape* GetObject() {
	return (PTopoDS_HShape*)$self->Access();
	}
};

%nodefaultctor Handle_PTopoDS_Face;
class Handle_PTopoDS_Face : public Handle_PTopoDS_HShape {
	public:
		%feature("autodoc", "1");
		~Handle_PTopoDS_Face();
		%feature("autodoc", "1");
		Handle_PTopoDS_Face();
		%feature("autodoc", "1");
		Handle_PTopoDS_Face(const Handle_PTopoDS_Face &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_Face(const PTopoDS_Face *anItem);
		%feature("autodoc", "1");
		Handle_PTopoDS_Face const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PTopoDS_Face {
	PTopoDS_Face* GetObject() {
	return (PTopoDS_Face*)$self->Access();
	}
};

%nodefaultctor Handle_PTopoDS_TWire;
class Handle_PTopoDS_TWire : public Handle_PTopoDS_TShape {
	public:
		%feature("autodoc", "1");
		~Handle_PTopoDS_TWire();
		%feature("autodoc", "1");
		Handle_PTopoDS_TWire();
		%feature("autodoc", "1");
		Handle_PTopoDS_TWire(const Handle_PTopoDS_TWire &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_TWire(const PTopoDS_TWire *anItem);
		%feature("autodoc", "1");
		Handle_PTopoDS_TWire const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PTopoDS_TWire {
	PTopoDS_TWire* GetObject() {
	return (PTopoDS_TWire*)$self->Access();
	}
};

%nodefaultctor Handle_PTopoDS_Shell;
class Handle_PTopoDS_Shell : public Handle_PTopoDS_HShape {
	public:
		%feature("autodoc", "1");
		~Handle_PTopoDS_Shell();
		%feature("autodoc", "1");
		Handle_PTopoDS_Shell();
		%feature("autodoc", "1");
		Handle_PTopoDS_Shell(const Handle_PTopoDS_Shell &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_Shell(const PTopoDS_Shell *anItem);
		%feature("autodoc", "1");
		Handle_PTopoDS_Shell const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PTopoDS_Shell {
	PTopoDS_Shell* GetObject() {
	return (PTopoDS_Shell*)$self->Access();
	}
};

%nodefaultctor Handle_PTopoDS_TVertex;
class Handle_PTopoDS_TVertex : public Handle_PTopoDS_TShape {
	public:
		%feature("autodoc", "1");
		~Handle_PTopoDS_TVertex();
		%feature("autodoc", "1");
		Handle_PTopoDS_TVertex();
		%feature("autodoc", "1");
		Handle_PTopoDS_TVertex(const Handle_PTopoDS_TVertex &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_TVertex(const PTopoDS_TVertex *anItem);
		%feature("autodoc", "1");
		Handle_PTopoDS_TVertex const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PTopoDS_TVertex {
	PTopoDS_TVertex* GetObject() {
	return (PTopoDS_TVertex*)$self->Access();
	}
};

%nodefaultctor Handle_PTopoDS_TCompound1;
class Handle_PTopoDS_TCompound1 : public Handle_PTopoDS_TShape1 {
	public:
		%feature("autodoc", "1");
		~Handle_PTopoDS_TCompound1();
		%feature("autodoc", "1");
		Handle_PTopoDS_TCompound1();
		%feature("autodoc", "1");
		Handle_PTopoDS_TCompound1(const Handle_PTopoDS_TCompound1 &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_TCompound1(const PTopoDS_TCompound1 *anItem);
		%feature("autodoc", "1");
		Handle_PTopoDS_TCompound1 const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PTopoDS_TCompound1 {
	PTopoDS_TCompound1* GetObject() {
	return (PTopoDS_TCompound1*)$self->Access();
	}
};

%nodefaultctor Handle_PTopoDS_Vertex;
class Handle_PTopoDS_Vertex : public Handle_PTopoDS_HShape {
	public:
		%feature("autodoc", "1");
		~Handle_PTopoDS_Vertex();
		%feature("autodoc", "1");
		Handle_PTopoDS_Vertex();
		%feature("autodoc", "1");
		Handle_PTopoDS_Vertex(const Handle_PTopoDS_Vertex &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_Vertex(const PTopoDS_Vertex *anItem);
		%feature("autodoc", "1");
		Handle_PTopoDS_Vertex const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PTopoDS_Vertex {
	PTopoDS_Vertex* GetObject() {
	return (PTopoDS_Vertex*)$self->Access();
	}
};

%nodefaultctor Handle_PTopoDS_Edge;
class Handle_PTopoDS_Edge : public Handle_PTopoDS_HShape {
	public:
		%feature("autodoc", "1");
		~Handle_PTopoDS_Edge();
		%feature("autodoc", "1");
		Handle_PTopoDS_Edge();
		%feature("autodoc", "1");
		Handle_PTopoDS_Edge(const Handle_PTopoDS_Edge &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_Edge(const PTopoDS_Edge *anItem);
		%feature("autodoc", "1");
		Handle_PTopoDS_Edge const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PTopoDS_Edge {
	PTopoDS_Edge* GetObject() {
	return (PTopoDS_Edge*)$self->Access();
	}
};

%nodefaultctor Handle_PTopoDS_Wire;
class Handle_PTopoDS_Wire : public Handle_PTopoDS_HShape {
	public:
		%feature("autodoc", "1");
		~Handle_PTopoDS_Wire();
		%feature("autodoc", "1");
		Handle_PTopoDS_Wire();
		%feature("autodoc", "1");
		Handle_PTopoDS_Wire(const Handle_PTopoDS_Wire &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_Wire(const PTopoDS_Wire *anItem);
		%feature("autodoc", "1");
		Handle_PTopoDS_Wire const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PTopoDS_Wire {
	PTopoDS_Wire* GetObject() {
	return (PTopoDS_Wire*)$self->Access();
	}
};

%nodefaultctor Handle_PTopoDS_HArray1OfHShape;
class Handle_PTopoDS_HArray1OfHShape : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		~Handle_PTopoDS_HArray1OfHShape();
		%feature("autodoc", "1");
		Handle_PTopoDS_HArray1OfHShape();
		%feature("autodoc", "1");
		Handle_PTopoDS_HArray1OfHShape(const Handle_PTopoDS_HArray1OfHShape &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_HArray1OfHShape(const PTopoDS_HArray1OfHShape *anItem);
		%feature("autodoc", "1");
		Handle_PTopoDS_HArray1OfHShape const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PTopoDS_HArray1OfHShape {
	PTopoDS_HArray1OfHShape* GetObject() {
	return (PTopoDS_HArray1OfHShape*)$self->Access();
	}
};

%nodefaultctor Handle_PTopoDS_TSolid;
class Handle_PTopoDS_TSolid : public Handle_PTopoDS_TShape {
	public:
		%feature("autodoc", "1");
		~Handle_PTopoDS_TSolid();
		%feature("autodoc", "1");
		Handle_PTopoDS_TSolid();
		%feature("autodoc", "1");
		Handle_PTopoDS_TSolid(const Handle_PTopoDS_TSolid &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_TSolid(const PTopoDS_TSolid *anItem);
		%feature("autodoc", "1");
		Handle_PTopoDS_TSolid const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PTopoDS_TSolid {
	PTopoDS_TSolid* GetObject() {
	return (PTopoDS_TSolid*)$self->Access();
	}
};

%nodefaultctor Handle_PTopoDS_TCompSolid;
class Handle_PTopoDS_TCompSolid : public Handle_PTopoDS_TShape {
	public:
		%feature("autodoc", "1");
		~Handle_PTopoDS_TCompSolid();
		%feature("autodoc", "1");
		Handle_PTopoDS_TCompSolid();
		%feature("autodoc", "1");
		Handle_PTopoDS_TCompSolid(const Handle_PTopoDS_TCompSolid &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_TCompSolid(const PTopoDS_TCompSolid *anItem);
		%feature("autodoc", "1");
		Handle_PTopoDS_TCompSolid const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PTopoDS_TCompSolid {
	PTopoDS_TCompSolid* GetObject() {
	return (PTopoDS_TCompSolid*)$self->Access();
	}
};

%nodefaultctor Handle_PTopoDS_TVertex1;
class Handle_PTopoDS_TVertex1 : public Handle_PTopoDS_TShape1 {
	public:
		%feature("autodoc", "1");
		~Handle_PTopoDS_TVertex1();
		%feature("autodoc", "1");
		Handle_PTopoDS_TVertex1();
		%feature("autodoc", "1");
		Handle_PTopoDS_TVertex1(const Handle_PTopoDS_TVertex1 &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_TVertex1(const PTopoDS_TVertex1 *anItem);
		%feature("autodoc", "1");
		Handle_PTopoDS_TVertex1 const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PTopoDS_TVertex1 {
	PTopoDS_TVertex1* GetObject() {
	return (PTopoDS_TVertex1*)$self->Access();
	}
};

%nodefaultctor Handle_PTopoDS_Compound;
class Handle_PTopoDS_Compound : public Handle_PTopoDS_HShape {
	public:
		%feature("autodoc", "1");
		~Handle_PTopoDS_Compound();
		%feature("autodoc", "1");
		Handle_PTopoDS_Compound();
		%feature("autodoc", "1");
		Handle_PTopoDS_Compound(const Handle_PTopoDS_Compound &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_Compound(const PTopoDS_Compound *anItem);
		%feature("autodoc", "1");
		Handle_PTopoDS_Compound const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PTopoDS_Compound {
	PTopoDS_Compound* GetObject() {
	return (PTopoDS_Compound*)$self->Access();
	}
};

%nodefaultctor Handle_PTopoDS_HArray1OfShape1;
class Handle_PTopoDS_HArray1OfShape1 : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		~Handle_PTopoDS_HArray1OfShape1();
		%feature("autodoc", "1");
		Handle_PTopoDS_HArray1OfShape1();
		%feature("autodoc", "1");
		Handle_PTopoDS_HArray1OfShape1(const Handle_PTopoDS_HArray1OfShape1 &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_HArray1OfShape1(const PTopoDS_HArray1OfShape1 *anItem);
		%feature("autodoc", "1");
		Handle_PTopoDS_HArray1OfShape1 const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PTopoDS_HArray1OfShape1 {
	PTopoDS_HArray1OfShape1* GetObject() {
	return (PTopoDS_HArray1OfShape1*)$self->Access();
	}
};

%nodefaultctor Handle_PTopoDS_Solid;
class Handle_PTopoDS_Solid : public Handle_PTopoDS_HShape {
	public:
		%feature("autodoc", "1");
		~Handle_PTopoDS_Solid();
		%feature("autodoc", "1");
		Handle_PTopoDS_Solid();
		%feature("autodoc", "1");
		Handle_PTopoDS_Solid(const Handle_PTopoDS_Solid &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_Solid(const PTopoDS_Solid *anItem);
		%feature("autodoc", "1");
		Handle_PTopoDS_Solid const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PTopoDS_Solid {
	PTopoDS_Solid* GetObject() {
	return (PTopoDS_Solid*)$self->Access();
	}
};

%nodefaultctor Handle_PTopoDS_CompSolid;
class Handle_PTopoDS_CompSolid : public Handle_PTopoDS_HShape {
	public:
		%feature("autodoc", "1");
		~Handle_PTopoDS_CompSolid();
		%feature("autodoc", "1");
		Handle_PTopoDS_CompSolid();
		%feature("autodoc", "1");
		Handle_PTopoDS_CompSolid(const Handle_PTopoDS_CompSolid &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_CompSolid(const PTopoDS_CompSolid *anItem);
		%feature("autodoc", "1");
		Handle_PTopoDS_CompSolid const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PTopoDS_CompSolid {
	PTopoDS_CompSolid* GetObject() {
	return (PTopoDS_CompSolid*)$self->Access();
	}
};

%nodefaultctor Handle_PTopoDS_TWire1;
class Handle_PTopoDS_TWire1 : public Handle_PTopoDS_TShape1 {
	public:
		%feature("autodoc", "1");
		~Handle_PTopoDS_TWire1();
		%feature("autodoc", "1");
		Handle_PTopoDS_TWire1();
		%feature("autodoc", "1");
		Handle_PTopoDS_TWire1(const Handle_PTopoDS_TWire1 &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_TWire1(const PTopoDS_TWire1 *anItem);
		%feature("autodoc", "1");
		Handle_PTopoDS_TWire1 const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PTopoDS_TWire1 {
	PTopoDS_TWire1* GetObject() {
	return (PTopoDS_TWire1*)$self->Access();
	}
};

%nodefaultctor Handle_PTopoDS_TFace1;
class Handle_PTopoDS_TFace1 : public Handle_PTopoDS_TShape1 {
	public:
		%feature("autodoc", "1");
		~Handle_PTopoDS_TFace1();
		%feature("autodoc", "1");
		Handle_PTopoDS_TFace1();
		%feature("autodoc", "1");
		Handle_PTopoDS_TFace1(const Handle_PTopoDS_TFace1 &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_TFace1(const PTopoDS_TFace1 *anItem);
		%feature("autodoc", "1");
		Handle_PTopoDS_TFace1 const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PTopoDS_TFace1 {
	PTopoDS_TFace1* GetObject() {
	return (PTopoDS_TFace1*)$self->Access();
	}
};

%nodefaultctor Handle_PTopoDS_TFace;
class Handle_PTopoDS_TFace : public Handle_PTopoDS_TShape {
	public:
		%feature("autodoc", "1");
		~Handle_PTopoDS_TFace();
		%feature("autodoc", "1");
		Handle_PTopoDS_TFace();
		%feature("autodoc", "1");
		Handle_PTopoDS_TFace(const Handle_PTopoDS_TFace &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_TFace(const PTopoDS_TFace *anItem);
		%feature("autodoc", "1");
		Handle_PTopoDS_TFace const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PTopoDS_TFace {
	PTopoDS_TFace* GetObject() {
	return (PTopoDS_TFace*)$self->Access();
	}
};

%nodefaultctor Handle_PTopoDS_TCompound;
class Handle_PTopoDS_TCompound : public Handle_PTopoDS_TShape {
	public:
		%feature("autodoc", "1");
		~Handle_PTopoDS_TCompound();
		%feature("autodoc", "1");
		Handle_PTopoDS_TCompound();
		%feature("autodoc", "1");
		Handle_PTopoDS_TCompound(const Handle_PTopoDS_TCompound &aHandle);
		%feature("autodoc", "1");
		Handle_PTopoDS_TCompound(const PTopoDS_TCompound *anItem);
		%feature("autodoc", "1");
		Handle_PTopoDS_TCompound const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PTopoDS_TCompound {
	PTopoDS_TCompound* GetObject() {
	return (PTopoDS_TCompound*)$self->Access();
	}
};

%nodefaultctor PTopoDS_VArrayNodeOfFieldOfHArray1OfHShape;
class PTopoDS_VArrayNodeOfFieldOfHArray1OfHShape : public PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		PTopoDS_VArrayNodeOfFieldOfHArray1OfHShape();
		%feature("autodoc", "1");
		PTopoDS_VArrayNodeOfFieldOfHArray1OfHShape(const Handle_PTopoDS_HShape &aValue);
		%feature("autodoc", "1");
		void SetValue(const Handle_PTopoDS_HShape &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;
		%feature("autodoc", "1");
		PTopoDS_VArrayNodeOfFieldOfHArray1OfHShape(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Handle_PTopoDS_HShape _CSFDB_GetPTopoDS_VArrayNodeOfFieldOfHArray1OfHShapemyValue() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPTopoDS_VArrayNodeOfFieldOfHArray1OfHShapemyValue(const Handle_PTopoDS_HShape &p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PTopoDS_VArrayNodeOfFieldOfHArray1OfHShape();

};
%extend PTopoDS_VArrayNodeOfFieldOfHArray1OfHShape {
	Handle_PTopoDS_VArrayNodeOfFieldOfHArray1OfHShape GetHandle() {
	return *(Handle_PTopoDS_VArrayNodeOfFieldOfHArray1OfHShape*) &$self;
	}
};

%nodefaultctor PTopoDS_TWire;
class PTopoDS_TWire : public PTopoDS_TShape {
	public:
		%feature("autodoc", "1");
		PTopoDS_TWire();
		%feature("autodoc", "1");
		virtual		TopAbs_ShapeEnum ShapeType() const;
		%feature("autodoc", "1");
		PTopoDS_TWire(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PTopoDS_TWire();

};
%extend PTopoDS_TWire {
	Handle_PTopoDS_TWire GetHandle() {
	return *(Handle_PTopoDS_TWire*) &$self;
	}
};

%nodefaultctor PTopoDS_TShell;
class PTopoDS_TShell : public PTopoDS_TShape {
	public:
		%feature("autodoc", "1");
		PTopoDS_TShell();
		%feature("autodoc", "1");
		virtual		TopAbs_ShapeEnum ShapeType() const;
		%feature("autodoc", "1");
		PTopoDS_TShell(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PTopoDS_TShell();

};
%extend PTopoDS_TShell {
	Handle_PTopoDS_TShell GetHandle() {
	return *(Handle_PTopoDS_TShell*) &$self;
	}
};

%nodefaultctor PTopoDS_HShape;
class PTopoDS_HShape : public ObjMgt_ExternShareable {
	public:
		%feature("autodoc", "1");
		PTopoDS_HShape();
		%feature("autodoc", "1");
		Handle_PTopoDS_TShape TShape() const;
		%feature("autodoc", "1");
		void TShape(const Handle_PTopoDS_TShape &T);
		%feature("autodoc", "1");
		PTopLoc_Location Location() const;
		%feature("autodoc", "1");
		void Location(const PTopLoc_Location &L);
		%feature("autodoc", "1");
		TopAbs_Orientation Orientation() const;
		%feature("autodoc", "1");
		void Orientation(const TopAbs_Orientation O);
		%feature("autodoc", "1");
		PTopoDS_HShape(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Handle_PTopoDS_TShape _CSFDB_GetPTopoDS_HShapemyTShape() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPTopoDS_HShapemyTShape(const Handle_PTopoDS_TShape &p);
		%feature("autodoc", "1");
		const PTopLoc_Location & _CSFDB_GetPTopoDS_HShapemyLocation() const;
		%feature("autodoc", "1");
		TopAbs_Orientation _CSFDB_GetPTopoDS_HShapemyOrient() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPTopoDS_HShapemyOrient(const TopAbs_Orientation p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PTopoDS_HShape();

};
%extend PTopoDS_HShape {
	Handle_PTopoDS_HShape GetHandle() {
	return *(Handle_PTopoDS_HShape*) &$self;
	}
};

%nodefaultctor PTopoDS_Shell;
class PTopoDS_Shell : public PTopoDS_HShape {
	public:
		%feature("autodoc", "1");
		PTopoDS_Shell();
		%feature("autodoc", "1");
		PTopoDS_Shell(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		virtual		~PTopoDS_Shell();

};
%extend PTopoDS_Shell {
	Handle_PTopoDS_Shell GetHandle() {
	return *(Handle_PTopoDS_Shell*) &$self;
	}
};

%nodefaultctor PTopoDS_TEdge1;
class PTopoDS_TEdge1 : public PTopoDS_TShape1 {
	public:
		%feature("autodoc", "1");
		virtual		TopAbs_ShapeEnum ShapeType() const;
		%feature("autodoc", "1");
		PTopoDS_TEdge1(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		PTopoDS_TEdge1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PTopoDS_TEdge1();

};
%extend PTopoDS_TEdge1 {
	Handle_PTopoDS_TEdge1 GetHandle() {
	return *(Handle_PTopoDS_TEdge1*) &$self;
	}
};

%nodefaultctor PTopoDS_VArrayNodeOfFieldOfHArray1OfShape1;
class PTopoDS_VArrayNodeOfFieldOfHArray1OfShape1 : public PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		PTopoDS_VArrayNodeOfFieldOfHArray1OfShape1();
		%feature("autodoc", "1");
		PTopoDS_VArrayNodeOfFieldOfHArray1OfShape1(const PTopoDS_Shape1 &aValue);
		%feature("autodoc", "1");
		void SetValue(const PTopoDS_Shape1 &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;
		%feature("autodoc", "1");
		PTopoDS_VArrayNodeOfFieldOfHArray1OfShape1(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		const PTopoDS_Shape1 & _CSFDB_GetPTopoDS_VArrayNodeOfFieldOfHArray1OfShape1myValue() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PTopoDS_VArrayNodeOfFieldOfHArray1OfShape1();

};
%extend PTopoDS_VArrayNodeOfFieldOfHArray1OfShape1 {
	Handle_PTopoDS_VArrayNodeOfFieldOfHArray1OfShape1 GetHandle() {
	return *(Handle_PTopoDS_VArrayNodeOfFieldOfHArray1OfShape1*) &$self;
	}
};

%nodefaultctor PTopoDS_Wire;
class PTopoDS_Wire : public PTopoDS_HShape {
	public:
		%feature("autodoc", "1");
		PTopoDS_Wire();
		%feature("autodoc", "1");
		PTopoDS_Wire(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PTopoDS_Wire();

};
%extend PTopoDS_Wire {
	Handle_PTopoDS_Wire GetHandle() {
	return *(Handle_PTopoDS_Wire*) &$self;
	}
};

%nodefaultctor PTopoDS_TEdge;
class PTopoDS_TEdge : public PTopoDS_TShape {
	public:
		%feature("autodoc", "1");
		virtual		TopAbs_ShapeEnum ShapeType() const;
		%feature("autodoc", "1");
		PTopoDS_TEdge(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		PTopoDS_TEdge();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PTopoDS_TEdge();

};
%extend PTopoDS_TEdge {
	Handle_PTopoDS_TEdge GetHandle() {
	return *(Handle_PTopoDS_TEdge*) &$self;
	}
};

%nodefaultctor PTopoDS_HArray1OfShape1;
class PTopoDS_HArray1OfShape1 : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		PTopoDS_HArray1OfShape1(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		PTopoDS_HArray1OfShape1(const Standard_Integer Low, const Standard_Integer Up, const PTopoDS_Shape1 &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const PTopoDS_Shape1 &Value);
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		PTopoDS_Shape1 Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Persistent ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		void ShallowDump(Standard_OStream & s) const;
		%feature("autodoc", "1");
		PTopoDS_HArray1OfShape1();
		%feature("autodoc", "1");
		PTopoDS_HArray1OfShape1(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPTopoDS_HArray1OfShape1LowerBound() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPTopoDS_HArray1OfShape1LowerBound(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPTopoDS_HArray1OfShape1UpperBound() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPTopoDS_HArray1OfShape1UpperBound(const Standard_Integer p);
		%feature("autodoc", "1");
		const PTopoDS_FieldOfHArray1OfShape1 & _CSFDB_GetPTopoDS_HArray1OfShape1Data() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PTopoDS_HArray1OfShape1();

};
%extend PTopoDS_HArray1OfShape1 {
	Handle_PTopoDS_HArray1OfShape1 GetHandle() {
	return *(Handle_PTopoDS_HArray1OfShape1*) &$self;
	}
};

%nodefaultctor PTopoDS_TShell1;
class PTopoDS_TShell1 : public PTopoDS_TShape1 {
	public:
		%feature("autodoc", "1");
		PTopoDS_TShell1();
		%feature("autodoc", "1");
		virtual		TopAbs_ShapeEnum ShapeType() const;
		%feature("autodoc", "1");
		PTopoDS_TShell1(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PTopoDS_TShell1();

};
%extend PTopoDS_TShell1 {
	Handle_PTopoDS_TShell1 GetHandle() {
	return *(Handle_PTopoDS_TShell1*) &$self;
	}
};

%nodefaultctor PTopoDS_Compound;
class PTopoDS_Compound : public PTopoDS_HShape {
	public:
		%feature("autodoc", "1");
		PTopoDS_Compound();
		%feature("autodoc", "1");
		PTopoDS_Compound(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PTopoDS_Compound();

};
%extend PTopoDS_Compound {
	Handle_PTopoDS_Compound GetHandle() {
	return *(Handle_PTopoDS_Compound*) &$self;
	}
};

%nodefaultctor PTopoDS_Edge;
class PTopoDS_Edge : public PTopoDS_HShape {
	public:
		%feature("autodoc", "1");
		PTopoDS_Edge();
		%feature("autodoc", "1");
		PTopoDS_Edge(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PTopoDS_Edge();

};
%extend PTopoDS_Edge {
	Handle_PTopoDS_Edge GetHandle() {
	return *(Handle_PTopoDS_Edge*) &$self;
	}
};

%nodefaultctor PTopoDS_TSolid;
class PTopoDS_TSolid : public PTopoDS_TShape {
	public:
		%feature("autodoc", "1");
		PTopoDS_TSolid();
		%feature("autodoc", "1");
		virtual		TopAbs_ShapeEnum ShapeType() const;
		%feature("autodoc", "1");
		PTopoDS_TSolid(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PTopoDS_TSolid();

};
%extend PTopoDS_TSolid {
	Handle_PTopoDS_TSolid GetHandle() {
	return *(Handle_PTopoDS_TSolid*) &$self;
	}
};

%nodefaultctor PTopoDS_TCompSolid;
class PTopoDS_TCompSolid : public PTopoDS_TShape {
	public:
		%feature("autodoc", "1");
		PTopoDS_TCompSolid();
		%feature("autodoc", "1");
		virtual		TopAbs_ShapeEnum ShapeType() const;
		%feature("autodoc", "1");
		PTopoDS_TCompSolid(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PTopoDS_TCompSolid();

};
%extend PTopoDS_TCompSolid {
	Handle_PTopoDS_TCompSolid GetHandle() {
	return *(Handle_PTopoDS_TCompSolid*) &$self;
	}
};

%nodefaultctor PTopoDS_TCompound;
class PTopoDS_TCompound : public PTopoDS_TShape {
	public:
		%feature("autodoc", "1");
		PTopoDS_TCompound();
		%feature("autodoc", "1");
		virtual		TopAbs_ShapeEnum ShapeType() const;
		%feature("autodoc", "1");
		PTopoDS_TCompound(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PTopoDS_TCompound();

};
%extend PTopoDS_TCompound {
	Handle_PTopoDS_TCompound GetHandle() {
	return *(Handle_PTopoDS_TCompound*) &$self;
	}
};

%nodefaultctor PTopoDS_TSolid1;
class PTopoDS_TSolid1 : public PTopoDS_TShape1 {
	public:
		%feature("autodoc", "1");
		PTopoDS_TSolid1();
		%feature("autodoc", "1");
		virtual		TopAbs_ShapeEnum ShapeType() const;
		%feature("autodoc", "1");
		PTopoDS_TSolid1(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PTopoDS_TSolid1();

};
%extend PTopoDS_TSolid1 {
	Handle_PTopoDS_TSolid1 GetHandle() {
	return *(Handle_PTopoDS_TSolid1*) &$self;
	}
};

%nodefaultctor PTopoDS_TVertex1;
class PTopoDS_TVertex1 : public PTopoDS_TShape1 {
	public:
		%feature("autodoc", "1");
		virtual		TopAbs_ShapeEnum ShapeType() const;
		%feature("autodoc", "1");
		PTopoDS_TVertex1(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		PTopoDS_TVertex1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PTopoDS_TVertex1();

};
%extend PTopoDS_TVertex1 {
	Handle_PTopoDS_TVertex1 GetHandle() {
	return *(Handle_PTopoDS_TVertex1*) &$self;
	}
};

%nodefaultctor PTopoDS_VArrayTNodeOfFieldOfHArray1OfHShape;
class PTopoDS_VArrayTNodeOfFieldOfHArray1OfHShape {
	public:
		%feature("autodoc", "1");
		~PTopoDS_VArrayTNodeOfFieldOfHArray1OfHShape();
		%feature("autodoc", "1");
		PTopoDS_VArrayTNodeOfFieldOfHArray1OfHShape();
		%feature("autodoc", "1");
		PTopoDS_VArrayTNodeOfFieldOfHArray1OfHShape(const Handle_PTopoDS_HShape &aValue);
		%feature("autodoc", "1");
		void SetValue(const Handle_PTopoDS_HShape &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;

};

%nodefaultctor PTopoDS_Solid;
class PTopoDS_Solid : public PTopoDS_HShape {
	public:
		%feature("autodoc", "1");
		PTopoDS_Solid();
		%feature("autodoc", "1");
		PTopoDS_Solid(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PTopoDS_Solid();

};
%extend PTopoDS_Solid {
	Handle_PTopoDS_Solid GetHandle() {
	return *(Handle_PTopoDS_Solid*) &$self;
	}
};

%nodefaultctor PTopoDS_FieldOfHArray1OfHShape;
class PTopoDS_FieldOfHArray1OfHShape : public DBC_BaseArray {
	public:
		%feature("autodoc", "1");
		PTopoDS_FieldOfHArray1OfHShape();
		%feature("autodoc", "1");
		PTopoDS_FieldOfHArray1OfHShape(const Standard_Integer Size);
		%feature("autodoc", "1");
		PTopoDS_FieldOfHArray1OfHShape(const PTopoDS_FieldOfHArray1OfHShape &Varray);
		%feature("autodoc", "1");
		void Resize(const Standard_Integer Size);
		%feature("autodoc", "1");
		void Assign(const PTopoDS_FieldOfHArray1OfHShape &Other);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_PTopoDS_HShape &Value);
		%feature("autodoc", "1");
		Handle_PTopoDS_HShape & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_PTopoDS_HShape & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		virtual		~PTopoDS_FieldOfHArray1OfHShape();

};

%nodefaultctor PTopoDS_Vertex;
class PTopoDS_Vertex : public PTopoDS_HShape {
	public:
		%feature("autodoc", "1");
		PTopoDS_Vertex();
		%feature("autodoc", "1");
		PTopoDS_Vertex(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PTopoDS_Vertex();

};
%extend PTopoDS_Vertex {
	Handle_PTopoDS_Vertex GetHandle() {
	return *(Handle_PTopoDS_Vertex*) &$self;
	}
};

%nodefaultctor PTopoDS_VArrayTNodeOfFieldOfHArray1OfShape1;
class PTopoDS_VArrayTNodeOfFieldOfHArray1OfShape1 {
	public:
		%feature("autodoc", "1");
		~PTopoDS_VArrayTNodeOfFieldOfHArray1OfShape1();
		%feature("autodoc", "1");
		PTopoDS_VArrayTNodeOfFieldOfHArray1OfShape1();
		%feature("autodoc", "1");
		PTopoDS_VArrayTNodeOfFieldOfHArray1OfShape1(const PTopoDS_Shape1 &aValue);
		%feature("autodoc", "1");
		void SetValue(const PTopoDS_Shape1 &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;

};

%nodefaultctor PTopoDS_Face;
class PTopoDS_Face : public PTopoDS_HShape {
	public:
		%feature("autodoc", "1");
		PTopoDS_Face();
		%feature("autodoc", "1");
		PTopoDS_Face(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PTopoDS_Face();

};
%extend PTopoDS_Face {
	Handle_PTopoDS_Face GetHandle() {
	return *(Handle_PTopoDS_Face*) &$self;
	}
};

%nodefaultctor PTopoDS_HArray1OfHShape;
class PTopoDS_HArray1OfHShape : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		PTopoDS_HArray1OfHShape(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		PTopoDS_HArray1OfHShape(const Standard_Integer Low, const Standard_Integer Up, const Handle_PTopoDS_HShape &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_PTopoDS_HShape &Value);
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		Handle_PTopoDS_HShape Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Persistent ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		void ShallowDump(Standard_OStream & s) const;
		%feature("autodoc", "1");
		PTopoDS_HArray1OfHShape();
		%feature("autodoc", "1");
		PTopoDS_HArray1OfHShape(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPTopoDS_HArray1OfHShapeLowerBound() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPTopoDS_HArray1OfHShapeLowerBound(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPTopoDS_HArray1OfHShapeUpperBound() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPTopoDS_HArray1OfHShapeUpperBound(const Standard_Integer p);
		%feature("autodoc", "1");
		const PTopoDS_FieldOfHArray1OfHShape & _CSFDB_GetPTopoDS_HArray1OfHShapeData() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PTopoDS_HArray1OfHShape();

};
%extend PTopoDS_HArray1OfHShape {
	Handle_PTopoDS_HArray1OfHShape GetHandle() {
	return *(Handle_PTopoDS_HArray1OfHShape*) &$self;
	}
};

%nodefaultctor PTopoDS_TWire1;
class PTopoDS_TWire1 : public PTopoDS_TShape1 {
	public:
		%feature("autodoc", "1");
		PTopoDS_TWire1();
		%feature("autodoc", "1");
		virtual		TopAbs_ShapeEnum ShapeType() const;
		%feature("autodoc", "1");
		PTopoDS_TWire1(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PTopoDS_TWire1();

};
%extend PTopoDS_TWire1 {
	Handle_PTopoDS_TWire1 GetHandle() {
	return *(Handle_PTopoDS_TWire1*) &$self;
	}
};

%nodefaultctor PTopoDS_TCompound1;
class PTopoDS_TCompound1 : public PTopoDS_TShape1 {
	public:
		%feature("autodoc", "1");
		PTopoDS_TCompound1();
		%feature("autodoc", "1");
		virtual		TopAbs_ShapeEnum ShapeType() const;
		%feature("autodoc", "1");
		PTopoDS_TCompound1(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PTopoDS_TCompound1();

};
%extend PTopoDS_TCompound1 {
	Handle_PTopoDS_TCompound1 GetHandle() {
	return *(Handle_PTopoDS_TCompound1*) &$self;
	}
};

%nodefaultctor PTopoDS_TVertex;
class PTopoDS_TVertex : public PTopoDS_TShape {
	public:
		%feature("autodoc", "1");
		virtual		TopAbs_ShapeEnum ShapeType() const;
		%feature("autodoc", "1");
		PTopoDS_TVertex(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		PTopoDS_TVertex();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PTopoDS_TVertex();

};
%extend PTopoDS_TVertex {
	Handle_PTopoDS_TVertex GetHandle() {
	return *(Handle_PTopoDS_TVertex*) &$self;
	}
};

%nodefaultctor PTopoDS_FieldOfHArray1OfShape1;
class PTopoDS_FieldOfHArray1OfShape1 : public DBC_BaseArray {
	public:
		%feature("autodoc", "1");
		PTopoDS_FieldOfHArray1OfShape1();
		%feature("autodoc", "1");
		PTopoDS_FieldOfHArray1OfShape1(const Standard_Integer Size);
		%feature("autodoc", "1");
		PTopoDS_FieldOfHArray1OfShape1(const PTopoDS_FieldOfHArray1OfShape1 &Varray);
		%feature("autodoc", "1");
		void Resize(const Standard_Integer Size);
		%feature("autodoc", "1");
		void Assign(const PTopoDS_FieldOfHArray1OfShape1 &Other);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const PTopoDS_Shape1 &Value);
		%feature("autodoc", "1");
		PTopoDS_Shape1 & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		PTopoDS_Shape1 & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		virtual		~PTopoDS_FieldOfHArray1OfShape1();

};

%nodefaultctor PTopoDS_CompSolid;
class PTopoDS_CompSolid : public PTopoDS_HShape {
	public:
		%feature("autodoc", "1");
		PTopoDS_CompSolid();
		%feature("autodoc", "1");
		PTopoDS_CompSolid(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PTopoDS_CompSolid();

};
%extend PTopoDS_CompSolid {
	Handle_PTopoDS_CompSolid GetHandle() {
	return *(Handle_PTopoDS_CompSolid*) &$self;
	}
};

%nodefaultctor PTopoDS_TFace;
class PTopoDS_TFace : public PTopoDS_TShape {
	public:
		%feature("autodoc", "1");
		PTopoDS_TFace();
		%feature("autodoc", "1");
		virtual		TopAbs_ShapeEnum ShapeType() const;
		%feature("autodoc", "1");
		PTopoDS_TFace(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PTopoDS_TFace();

};
%extend PTopoDS_TFace {
	Handle_PTopoDS_TFace GetHandle() {
	return *(Handle_PTopoDS_TFace*) &$self;
	}
};

%nodefaultctor PTopoDS_TCompSolid1;
class PTopoDS_TCompSolid1 : public PTopoDS_TShape1 {
	public:
		%feature("autodoc", "1");
		PTopoDS_TCompSolid1();
		%feature("autodoc", "1");
		virtual		TopAbs_ShapeEnum ShapeType() const;
		%feature("autodoc", "1");
		PTopoDS_TCompSolid1(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PTopoDS_TCompSolid1();

};
%extend PTopoDS_TCompSolid1 {
	Handle_PTopoDS_TCompSolid1 GetHandle() {
	return *(Handle_PTopoDS_TCompSolid1*) &$self;
	}
};

%nodefaultctor PTopoDS_Shape1;
class PTopoDS_Shape1 {
	public:
		%feature("autodoc", "1");
		~PTopoDS_Shape1();
		%feature("autodoc", "1");
		PTopoDS_Shape1();
		%feature("autodoc", "1");
		void Nullify();
		%feature("autodoc", "1");
		const Handle_PTopoDS_TShape1 & TShape() const;
		%feature("autodoc", "1");
		void TShape(const Handle_PTopoDS_TShape1 &T);
		%feature("autodoc", "1");
		PTopLoc_Location Location() const;
		%feature("autodoc", "1");
		void Location(const PTopLoc_Location &L);
		%feature("autodoc", "1");
		TopAbs_Orientation Orientation() const;
		%feature("autodoc", "1");
		void Orientation(const TopAbs_Orientation O);
		%feature("autodoc", "1");
		Handle_PTopoDS_TShape1 _CSFDB_GetPTopoDS_Shape1myTShape() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPTopoDS_Shape1myTShape(const Handle_PTopoDS_TShape1 &p);
		%feature("autodoc", "1");
		const PTopLoc_Location & _CSFDB_GetPTopoDS_Shape1myLocation() const;
		%feature("autodoc", "1");
		TopAbs_Orientation _CSFDB_GetPTopoDS_Shape1myOrient() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPTopoDS_Shape1myOrient(const TopAbs_Orientation p);

};

%nodefaultctor PTopoDS_TFace1;
class PTopoDS_TFace1 : public PTopoDS_TShape1 {
	public:
		%feature("autodoc", "1");
		PTopoDS_TFace1();
		%feature("autodoc", "1");
		virtual		TopAbs_ShapeEnum ShapeType() const;
		%feature("autodoc", "1");
		PTopoDS_TFace1(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PTopoDS_TFace1();

};
%extend PTopoDS_TFace1 {
	Handle_PTopoDS_TFace1 GetHandle() {
	return *(Handle_PTopoDS_TFace1*) &$self;
	}
};