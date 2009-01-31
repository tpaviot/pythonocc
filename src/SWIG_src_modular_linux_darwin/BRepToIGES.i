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
%module BRepToIGES

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


%include BRepToIGES_dependencies.i


%include BRepToIGES_headers.i




%nodefaultctor BRepToIGES_BREntity;
class BRepToIGES_BREntity {
	public:
		%feature("autodoc", "1");
		BRepToIGES_BREntity();
		%feature("autodoc", "1");
		void Init();
		%feature("autodoc", "1");
		void SetModel(const Handle_IGESData_IGESModel &model);
		%feature("autodoc", "1");
		Handle_IGESData_IGESModel GetModel() const;
		%feature("autodoc", "1");
		Standard_Real GetUnit() const;
		%feature("autodoc", "1");
		void SetTransferProcess(const Handle_Transfer_FinderProcess &TP);
		%feature("autodoc", "1");
		Handle_Transfer_FinderProcess GetTransferProcess() const;
		%feature("autodoc", "1");
		virtual		Handle_IGESData_IGESEntity TransferShape(const TopoDS_Shape &start);
		%feature("autodoc", "1");
		void AddFail(const TopoDS_Shape &start, const char * amess);
		%feature("autodoc", "1");
		void AddWarning(const TopoDS_Shape &start, const char * amess);
		%feature("autodoc", "1");
		void AddFail(const Handle_Standard_Transient &start, const char * amess);
		%feature("autodoc", "1");
		void AddWarning(const Handle_Standard_Transient &start, const char * amess);
		%feature("autodoc", "1");
		Standard_Boolean HasShapeResult(const TopoDS_Shape &start) const;
		%feature("autodoc", "1");
		Handle_Standard_Transient GetShapeResult(const TopoDS_Shape &start) const;
		%feature("autodoc", "1");
		void SetShapeResult(const TopoDS_Shape &start, const Handle_Standard_Transient &result);
		%feature("autodoc", "1");
		Standard_Boolean HasShapeResult(const Handle_Standard_Transient &start) const;
		%feature("autodoc", "1");
		Handle_Standard_Transient GetShapeResult(const Handle_Standard_Transient &start) const;
		%feature("autodoc", "1");
		void SetShapeResult(const Handle_Standard_Transient &start, const Handle_Standard_Transient &result);
		%feature("autodoc", "1");
		Standard_Boolean GetConvertSurfaceMode() const;
		%feature("autodoc", "1");
		Standard_Boolean GetPCurveMode() const;
		%feature("autodoc", "1");
		virtual		void Delete();
		%feature("autodoc", "1");
		virtual		~BRepToIGES_BREntity();

};

%nodefaultctor BRepToIGES_BRShell;
class BRepToIGES_BRShell : public BRepToIGES_BREntity {
	public:
		%feature("autodoc", "1");
		BRepToIGES_BRShell();
		%feature("autodoc", "1");
		BRepToIGES_BRShell(const BRepToIGES_BREntity &BR);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferShell(const TopoDS_Shape &start);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferShell(const TopoDS_Shell &start);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferFace(const TopoDS_Face &start);
		%feature("autodoc", "1");
		virtual		~BRepToIGES_BRShell();

};

%nodefaultctor BRepToIGES_BRSolid;
class BRepToIGES_BRSolid : public BRepToIGES_BREntity {
	public:
		%feature("autodoc", "1");
		BRepToIGES_BRSolid();
		%feature("autodoc", "1");
		BRepToIGES_BRSolid(const BRepToIGES_BREntity &BR);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferSolid(const TopoDS_Shape &start);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferSolid(const TopoDS_Solid &start);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferCompSolid(const TopoDS_CompSolid &start);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferCompound(const TopoDS_Compound &start);
		%feature("autodoc", "1");
		virtual		~BRepToIGES_BRSolid();

};

%nodefaultctor BRepToIGES_BRWire;
class BRepToIGES_BRWire : public BRepToIGES_BREntity {
	public:
		%feature("autodoc", "1");
		BRepToIGES_BRWire();
		%feature("autodoc", "1");
		BRepToIGES_BRWire(const BRepToIGES_BREntity &BR);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferWire(const TopoDS_Shape &start);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferVertex(const TopoDS_Vertex &myvertex);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferVertex(const TopoDS_Vertex &myvertex, const TopoDS_Edge &myedge, Standard_Real &OutValue);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferVertex(const TopoDS_Vertex &myvertex, const TopoDS_Edge &myedge, const TopoDS_Face &myface, Standard_Real &OutValue);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferVertex(const TopoDS_Vertex &myvertex, const TopoDS_Edge &myedge, const Handle_Geom_Surface &mysurface, const TopLoc_Location &myloc, Standard_Real &OutValue);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferVertex(const TopoDS_Vertex &myvertex, const TopoDS_Face &myface, gp_Pnt2d & mypoint);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferEdge(const TopoDS_Edge &myedge, const Standard_Boolean isBRepMode);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferEdge(const TopoDS_Edge &myedge, const TopoDS_Face &myface, const Standard_Real length, const Standard_Boolean isBRepMode);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferWire(const TopoDS_Wire &mywire);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity TransferWire(const TopoDS_Wire &mywire, const TopoDS_Face &myface, Handle_IGESData_IGESEntity & mycurve2d, const Standard_Real length);
		%feature("autodoc", "1");
		virtual		~BRepToIGES_BRWire();

};