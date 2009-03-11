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
%module MgtBRep

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


%include MgtBRep_dependencies.i


%include MgtBRep_headers.i


enum MgtBRep_TriangleMode {
	MgtBRep_WithTriangle,
	MgtBRep_WithoutTriangle,
	};



%nodefaultctor Handle_MgtBRep_TranslateTool1;
class Handle_MgtBRep_TranslateTool1 : public Handle_MgtTopoDS_TranslateTool1 {
	public:
		%feature("autodoc", "1");
		Handle_MgtBRep_TranslateTool1();
		%feature("autodoc", "1");
		Handle_MgtBRep_TranslateTool1(const Handle_MgtBRep_TranslateTool1 &aHandle);
		%feature("autodoc", "1");
		Handle_MgtBRep_TranslateTool1(const MgtBRep_TranslateTool1 *anItem);
		%feature("autodoc", "1");
		Handle_MgtBRep_TranslateTool1 const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MgtBRep_TranslateTool1 {
	MgtBRep_TranslateTool1* GetObject() {
	return (MgtBRep_TranslateTool1*)$self->Access();
	}
};
%extend Handle_MgtBRep_TranslateTool1 {
	~Handle_MgtBRep_TranslateTool1() {
	printf("Call custom destructor for instance of Handle_MgtBRep_TranslateTool1\n");
	}
};

%nodefaultctor Handle_MgtBRep_TranslateTool;
class Handle_MgtBRep_TranslateTool : public Handle_MgtTopoDS_TranslateTool {
	public:
		%feature("autodoc", "1");
		Handle_MgtBRep_TranslateTool();
		%feature("autodoc", "1");
		Handle_MgtBRep_TranslateTool(const Handle_MgtBRep_TranslateTool &aHandle);
		%feature("autodoc", "1");
		Handle_MgtBRep_TranslateTool(const MgtBRep_TranslateTool *anItem);
		%feature("autodoc", "1");
		Handle_MgtBRep_TranslateTool const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MgtBRep_TranslateTool {
	MgtBRep_TranslateTool* GetObject() {
	return (MgtBRep_TranslateTool*)$self->Access();
	}
};
%extend Handle_MgtBRep_TranslateTool {
	~Handle_MgtBRep_TranslateTool() {
	printf("Call custom destructor for instance of Handle_MgtBRep_TranslateTool\n");
	}
};

%nodefaultctor MgtBRep_TranslateTool1;
class MgtBRep_TranslateTool1 : public MgtTopoDS_TranslateTool1 {
	public:
		%feature("autodoc", "1");
		MgtBRep_TranslateTool1(const MgtBRep_TriangleMode aTriMode);
		%feature("autodoc", "1");
		virtual		void Add(TopoDS_Shape & S1, const TopoDS_Shape &S2) const;
		%feature("autodoc", "1");
		virtual		void MakeVertex(TopoDS_Shape & S) const;
		%feature("autodoc", "1");
		virtual		void MakeVertex(PTopoDS_Shape1 & S) const;
		%feature("autodoc", "1");
		virtual		void MakeEdge(TopoDS_Shape & S) const;
		%feature("autodoc", "1");
		virtual		void MakeEdge(PTopoDS_Shape1 & S) const;
		%feature("autodoc", "1");
		virtual		void MakeWire(TopoDS_Shape & S) const;
		%feature("autodoc", "1");
		virtual		void MakeWire(PTopoDS_Shape1 & S) const;
		%feature("autodoc", "1");
		virtual		void MakeFace(TopoDS_Shape & S) const;
		%feature("autodoc", "1");
		virtual		void MakeFace(PTopoDS_Shape1 & S) const;
		%feature("autodoc", "1");
		virtual		void MakeShell(TopoDS_Shape & S) const;
		%feature("autodoc", "1");
		virtual		void MakeShell(PTopoDS_Shape1 & S) const;
		%feature("autodoc", "1");
		virtual		void MakeSolid(TopoDS_Shape & S) const;
		%feature("autodoc", "1");
		virtual		void MakeSolid(PTopoDS_Shape1 & S) const;
		%feature("autodoc", "1");
		virtual		void MakeCompSolid(TopoDS_Shape & S) const;
		%feature("autodoc", "1");
		virtual		void MakeCompSolid(PTopoDS_Shape1 & S) const;
		%feature("autodoc", "1");
		virtual		void MakeCompound(TopoDS_Shape & S) const;
		%feature("autodoc", "1");
		virtual		void MakeCompound(PTopoDS_Shape1 & S) const;
		%feature("autodoc", "1");
		virtual		void UpdateVertex(const TopoDS_Shape &S1, PTopoDS_Shape1 & S2, PTColStd_TransientPersistentMap & M) const;
		%feature("autodoc", "1");
		virtual		void UpdateVertex(const PTopoDS_Shape1 &S1, TopoDS_Shape & S2, PTColStd_PersistentTransientMap & M) const;
		%feature("autodoc", "1");
		virtual		void UpdateEdge(const TopoDS_Shape &S1, PTopoDS_Shape1 & S2, PTColStd_TransientPersistentMap & M) const;
		%feature("autodoc", "1");
		virtual		void UpdateEdge(const PTopoDS_Shape1 &S1, TopoDS_Shape & S2, PTColStd_PersistentTransientMap & M) const;
		%feature("autodoc", "1");
		virtual		void UpdateFace(const TopoDS_Shape &S1, PTopoDS_Shape1 & S2, PTColStd_TransientPersistentMap & M) const;
		%feature("autodoc", "1");
		virtual		void UpdateFace(const PTopoDS_Shape1 &S1, TopoDS_Shape & S2, PTColStd_PersistentTransientMap & M) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MgtBRep_TranslateTool1 {
	Handle_MgtBRep_TranslateTool1 GetHandle() {
	return *(Handle_MgtBRep_TranslateTool1*) &$self;
	}
};
%extend MgtBRep_TranslateTool1 {
	~MgtBRep_TranslateTool1() {
	printf("Call custom destructor for instance of MgtBRep_TranslateTool1\n");
	}
};

%nodefaultctor MgtBRep_TranslateTool;
class MgtBRep_TranslateTool : public MgtTopoDS_TranslateTool {
	public:
		%feature("autodoc", "1");
		MgtBRep_TranslateTool(const MgtBRep_TriangleMode aTriMode);
		%feature("autodoc", "1");
		virtual		void Add(TopoDS_Shape & S1, const TopoDS_Shape &S2) const;
		%feature("autodoc", "1");
		virtual		void MakeVertex(TopoDS_Shape & S) const;
		%feature("autodoc", "1");
		virtual		void MakeVertex(const Handle_PTopoDS_HShape &S) const;
		%feature("autodoc", "1");
		virtual		void MakeEdge(TopoDS_Shape & S) const;
		%feature("autodoc", "1");
		virtual		void MakeEdge(const Handle_PTopoDS_HShape &S) const;
		%feature("autodoc", "1");
		virtual		void MakeWire(TopoDS_Shape & S) const;
		%feature("autodoc", "1");
		virtual		void MakeWire(const Handle_PTopoDS_HShape &S) const;
		%feature("autodoc", "1");
		virtual		void MakeFace(TopoDS_Shape & S) const;
		%feature("autodoc", "1");
		virtual		void MakeFace(const Handle_PTopoDS_HShape &S) const;
		%feature("autodoc", "1");
		virtual		void MakeShell(TopoDS_Shape & S) const;
		%feature("autodoc", "1");
		virtual		void MakeShell(const Handle_PTopoDS_HShape &S) const;
		%feature("autodoc", "1");
		virtual		void MakeSolid(TopoDS_Shape & S) const;
		%feature("autodoc", "1");
		virtual		void MakeSolid(const Handle_PTopoDS_HShape &S) const;
		%feature("autodoc", "1");
		virtual		void MakeCompSolid(TopoDS_Shape & S) const;
		%feature("autodoc", "1");
		virtual		void MakeCompSolid(const Handle_PTopoDS_HShape &S) const;
		%feature("autodoc", "1");
		virtual		void MakeCompound(TopoDS_Shape & S) const;
		%feature("autodoc", "1");
		virtual		void MakeCompound(const Handle_PTopoDS_HShape &S) const;
		%feature("autodoc", "1");
		virtual		void UpdateVertex(const TopoDS_Shape &S1, const Handle_PTopoDS_HShape &S2, PTColStd_TransientPersistentMap & M) const;
		%feature("autodoc", "1");
		virtual		void UpdateVertex(const Handle_PTopoDS_HShape &S1, TopoDS_Shape & S2, PTColStd_PersistentTransientMap & M) const;
		%feature("autodoc", "1");
		virtual		void UpdateEdge(const TopoDS_Shape &S1, const Handle_PTopoDS_HShape &S2, PTColStd_TransientPersistentMap & M) const;
		%feature("autodoc", "1");
		virtual		void UpdateEdge(const Handle_PTopoDS_HShape &S1, TopoDS_Shape & S2, PTColStd_PersistentTransientMap & M) const;
		%feature("autodoc", "1");
		virtual		void UpdateFace(const TopoDS_Shape &S1, const Handle_PTopoDS_HShape &S2, PTColStd_TransientPersistentMap & M) const;
		%feature("autodoc", "1");
		virtual		void UpdateFace(const Handle_PTopoDS_HShape &S1, TopoDS_Shape & S2, PTColStd_PersistentTransientMap & M) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MgtBRep_TranslateTool {
	Handle_MgtBRep_TranslateTool GetHandle() {
	return *(Handle_MgtBRep_TranslateTool*) &$self;
	}
};
%extend MgtBRep_TranslateTool {
	~MgtBRep_TranslateTool() {
	printf("Call custom destructor for instance of MgtBRep_TranslateTool\n");
	}
};

%nodefaultctor MgtBRep;
class MgtBRep {
	public:
		%feature("autodoc", "1");
		~MgtBRep();
		%feature("autodoc", "1");
		MgtBRep();
		%feature("autodoc", "1");
		Handle_PTopoDS_HShape Translate(const TopoDS_Shape &aShape, PTColStd_TransientPersistentMap & aMap, const MgtBRep_TriangleMode aTriMode);
		%feature("autodoc", "1");
		void Translate1(const TopoDS_Shape &aShape, PTColStd_TransientPersistentMap & aMap, PTopoDS_Shape1 & aResult, const MgtBRep_TriangleMode aTriMode);
		%feature("autodoc", "1");
		void Translate(const Handle_PTopoDS_HShape &aShape, PTColStd_PersistentTransientMap & aMap, TopoDS_Shape & aResult, const MgtBRep_TriangleMode aTriMode);
		%feature("autodoc", "1");
		void Translate1(const PTopoDS_Shape1 &aShape, PTColStd_PersistentTransientMap & aMap, TopoDS_Shape & aResult, const MgtBRep_TriangleMode aTriMode);

};