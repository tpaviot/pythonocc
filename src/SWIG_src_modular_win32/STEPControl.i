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
%module STEPControl

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


%include STEPControl_dependencies.i


%include STEPControl_headers.i


enum STEPControl_StepModelType {
	STEPControl_AsIs,
	STEPControl_ManifoldSolidBrep,
	STEPControl_BrepWithVoids,
	STEPControl_FacetedBrep,
	STEPControl_FacetedBrepAndBrepWithVoids,
	STEPControl_ShellBasedSurfaceModel,
	STEPControl_GeometricCurveSet,
	STEPControl_Hybrid,
	};



%nodefaultctor Handle_STEPControl_ActorRead;
class Handle_STEPControl_ActorRead : public Handle_Transfer_ActorOfTransientProcess {
	public:
		%feature("autodoc", "1");
		~Handle_STEPControl_ActorRead();
		%feature("autodoc", "1");
		Handle_STEPControl_ActorRead();
		%feature("autodoc", "1");
		Handle_STEPControl_ActorRead(const Handle_STEPControl_ActorRead &aHandle);
		%feature("autodoc", "1");
		Handle_STEPControl_ActorRead(const STEPControl_ActorRead *anItem);
		%feature("autodoc", "1");
		Handle_STEPControl_ActorRead const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_STEPControl_ActorRead {
	STEPControl_ActorRead* GetObject() {
	return (STEPControl_ActorRead*)$self->Access();
	}
};

%nodefaultctor Handle_STEPControl_ActorWrite;
class Handle_STEPControl_ActorWrite : public Handle_Transfer_ActorOfFinderProcess {
	public:
		%feature("autodoc", "1");
		~Handle_STEPControl_ActorWrite();
		%feature("autodoc", "1");
		Handle_STEPControl_ActorWrite();
		%feature("autodoc", "1");
		Handle_STEPControl_ActorWrite(const Handle_STEPControl_ActorWrite &aHandle);
		%feature("autodoc", "1");
		Handle_STEPControl_ActorWrite(const STEPControl_ActorWrite *anItem);
		%feature("autodoc", "1");
		Handle_STEPControl_ActorWrite const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_STEPControl_ActorWrite {
	STEPControl_ActorWrite* GetObject() {
	return (STEPControl_ActorWrite*)$self->Access();
	}
};

%nodefaultctor Handle_STEPControl_Controller;
class Handle_STEPControl_Controller : public Handle_XSControl_Controller {
	public:
		%feature("autodoc", "1");
		~Handle_STEPControl_Controller();
		%feature("autodoc", "1");
		Handle_STEPControl_Controller();
		%feature("autodoc", "1");
		Handle_STEPControl_Controller(const Handle_STEPControl_Controller &aHandle);
		%feature("autodoc", "1");
		Handle_STEPControl_Controller(const STEPControl_Controller *anItem);
		%feature("autodoc", "1");
		Handle_STEPControl_Controller const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_STEPControl_Controller {
	STEPControl_Controller* GetObject() {
	return (STEPControl_Controller*)$self->Access();
	}
};

%nodefaultctor STEPControl_Reader;
class STEPControl_Reader : public XSControl_Reader {
	public:
		%feature("autodoc", "1");
		STEPControl_Reader();
		%feature("autodoc", "1");
		STEPControl_Reader(const Handle_XSControl_WorkSession &WS, const Standard_Boolean scratch=1);
		%feature("autodoc", "1");
		Handle_StepData_StepModel StepModel() const;
		%feature("autodoc", "1");
		Standard_Boolean TransferRoot(const Standard_Integer num=1);
		%feature("autodoc", "1");
		virtual		Standard_Integer NbRootsForTransfer();
		%feature("autodoc", "1");
		virtual		~STEPControl_Reader();

};

%nodefaultctor STEPControl_ActorRead;
class STEPControl_ActorRead : public Transfer_ActorOfTransientProcess {
	public:
		%feature("autodoc", "1");
		STEPControl_ActorRead();
		%feature("autodoc", "1");
		virtual		Standard_Boolean Recognize(const Handle_Standard_Transient &start);
		%feature("autodoc", "1");
		virtual		Handle_Transfer_Binder Transfer(const Handle_Standard_Transient &start, const Handle_Transfer_TransientProcess &TP);
		%feature("autodoc", "1");
		Handle_Transfer_Binder TransferShape(const Handle_Standard_Transient &start, const Handle_Transfer_TransientProcess &TP);
		%feature("autodoc", "1");
		void PrepareUnits(const Handle_StepRepr_Representation &rep, const Handle_Transfer_TransientProcess &TP);
		%feature("autodoc", "1");
		void ResetUnits();
		%feature("autodoc", "1");
		Standard_Boolean ComputeTransformation(const Handle_StepGeom_Axis2Placement3d &Origin, const Handle_StepGeom_Axis2Placement3d &Target, const Handle_StepRepr_Representation &OrigContext, const Handle_StepRepr_Representation &TargContext, const Handle_Transfer_TransientProcess &TP, gp_Trsf & Trsf);
		%feature("autodoc", "1");
		Standard_Boolean ComputeSRRWT(const Handle_StepRepr_RepresentationRelationship &SRR, const Handle_Transfer_TransientProcess &TP, gp_Trsf & Trsf);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~STEPControl_ActorRead();

};
%extend STEPControl_ActorRead {
	Handle_STEPControl_ActorRead GetHandle() {
	return *(Handle_STEPControl_ActorRead*) &$self;
	}
};

%nodefaultctor STEPControl_ActorWrite;
class STEPControl_ActorWrite : public Transfer_ActorOfFinderProcess {
	public:
		%feature("autodoc", "1");
		STEPControl_ActorWrite();
		%feature("autodoc", "1");
		virtual		Standard_Boolean Recognize(const Handle_Transfer_Finder &start);
		%feature("autodoc", "1");
		virtual		Handle_Transfer_Binder Transfer(const Handle_Transfer_Finder &start, const Handle_Transfer_FinderProcess &FP);
		%feature("autodoc", "1");
		Handle_Transfer_Binder TransferSubShape(const Handle_Transfer_Finder &start, const Handle_StepShape_ShapeDefinitionRepresentation &SDR, Handle_StepGeom_Axis2Placement3d & AX1, const Handle_Transfer_FinderProcess &FP);
		%feature("autodoc", "1");
		Handle_Transfer_Binder TransferShape(const Handle_Transfer_Finder &start, const Handle_StepShape_ShapeDefinitionRepresentation &SDR, const Handle_Transfer_FinderProcess &FP);
		%feature("autodoc", "1");
		Handle_Transfer_Binder TransferCompound(const Handle_Transfer_Finder &start, const Handle_StepShape_ShapeDefinitionRepresentation &SDR, const Handle_Transfer_FinderProcess &FP);
		%feature("autodoc", "1");
		void SetMode(const STEPControl_StepModelType M);
		%feature("autodoc", "1");
		STEPControl_StepModelType Mode() const;
		%feature("autodoc", "1");
		void SetGroupMode(const Standard_Integer mode);
		%feature("autodoc", "1");
		Standard_Integer GroupMode() const;
		%feature("autodoc", "1");
		void SetTolerance(const Standard_Real Tol);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsAssembly(TopoDS_Shape & S) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~STEPControl_ActorWrite();

};
%extend STEPControl_ActorWrite {
	Handle_STEPControl_ActorWrite GetHandle() {
	return *(Handle_STEPControl_ActorWrite*) &$self;
	}
};

%nodefaultctor STEPControl_Controller;
class STEPControl_Controller : public XSControl_Controller {
	public:
		%feature("autodoc", "1");
		STEPControl_Controller();
		%feature("autodoc", "1");
		virtual		Handle_Interface_InterfaceModel NewModel() const;
		%feature("autodoc", "1");
		virtual		Handle_Transfer_ActorOfTransientProcess ActorRead(const Handle_Interface_InterfaceModel &model) const;
		%feature("autodoc", "1");
		virtual		void Customise(Handle_XSControl_WorkSession & WS);
		%feature("autodoc", "1");
		virtual		IFSelect_ReturnStatus TransferWriteShape(const TopoDS_Shape &shape, const Handle_Transfer_FinderProcess &FP, const Handle_Interface_InterfaceModel &model, const Standard_Integer modetrans=0) const;
		%feature("autodoc", "1");
		Standard_Boolean Init();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~STEPControl_Controller();

};
%extend STEPControl_Controller {
	Handle_STEPControl_Controller GetHandle() {
	return *(Handle_STEPControl_Controller*) &$self;
	}
};

%nodefaultctor STEPControl_Writer;
class STEPControl_Writer {
	public:
		%feature("autodoc", "1");
		~STEPControl_Writer();
		%feature("autodoc", "1");
		STEPControl_Writer();
		%feature("autodoc", "1");
		STEPControl_Writer(const Handle_XSControl_WorkSession &WS, const Standard_Boolean scratch=1);
		%feature("autodoc", "1");
		void SetTolerance(const Standard_Real Tol);
		%feature("autodoc", "1");
		void UnsetTolerance();
		%feature("autodoc", "1");
		void SetWS(const Handle_XSControl_WorkSession &WS, const Standard_Boolean scratch=1);
		%feature("autodoc", "1");
		Handle_XSControl_WorkSession WS() const;
		%feature("autodoc", "1");
		Handle_StepData_StepModel Model(const Standard_Boolean newone=0);
		%feature("autodoc", "1");
		IFSelect_ReturnStatus Transfer(const TopoDS_Shape &sh, const STEPControl_StepModelType mode, const Standard_Boolean compgraph=1);
		%feature("autodoc", "1");
		IFSelect_ReturnStatus Write(const char * filename);
		%feature("autodoc", "1");
		void PrintStatsTransfer(const Standard_Integer what, const Standard_Integer mode=0) const;

};