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
%module BRepToIGESBRep

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


%include BRepToIGESBRep_dependencies.i


%include BRepToIGESBRep_headers.i




%nodefaultctor BRepToIGESBRep_Entity;
class BRepToIGESBRep_Entity : public BRepToIGES_BREntity {
	public:
		%feature("autodoc", "1");
		BRepToIGESBRep_Entity();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void TransferVertexList();
		%feature("autodoc", "1");
		Standard_Integer IndexVertex(const TopoDS_Vertex &myvertex) const;
		%feature("autodoc", "1");
		Standard_Integer AddVertex(const TopoDS_Vertex &myvertex);
		%feature("autodoc", "1");
		void TransferEdgeList();
		%feature("autodoc", "1");
		Standard_Integer IndexEdge(const TopoDS_Edge &myedge) const;
		%feature("autodoc", "1");
		Standard_Integer AddEdge(const TopoDS_Edge &myedge, const Handle_IGESData_IGESEntity &mycurve3d);
		%feature("autodoc", "1");
		virtual		Handle_IGESData_IGESEntity TransferShape(const TopoDS_Shape &start);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferEdge(const TopoDS_Edge &myedge);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferEdge(const TopoDS_Edge &myedge, const TopoDS_Face &myface, const Standard_Real length);
		%feature("autodoc", "1");
		Handle_IGESSolid_Loop TransferWire(const TopoDS_Wire &mywire, const TopoDS_Face &myface, const Standard_Real length);
		%feature("autodoc", "1");
		Handle_IGESSolid_Face TransferFace(const TopoDS_Face &start);
		%feature("autodoc", "1");
		Handle_IGESSolid_Shell TransferShell(const TopoDS_Shell &start);
		%feature("autodoc", "1");
		Handle_IGESSolid_ManifoldSolid TransferSolid(const TopoDS_Solid &start);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferCompSolid(const TopoDS_CompSolid &start);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferCompound(const TopoDS_Compound &start);

};
%extend BRepToIGESBRep_Entity {
	~BRepToIGESBRep_Entity() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of BRepToIGESBRep_Entity\n");}
	}
};