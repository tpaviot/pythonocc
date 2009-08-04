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
%module STEPControl

%include STEPControl_renames.i

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
		Handle_STEPControl_ActorRead();
		%feature("autodoc", "1");
		Handle_STEPControl_ActorRead(const Handle_STEPControl_ActorRead &aHandle);
		%feature("autodoc", "1");
		Handle_STEPControl_ActorRead(const STEPControl_ActorRead *anItem);
		%feature("autodoc", "1");
		Handle_STEPControl_ActorRead & operator=(const Handle_STEPControl_ActorRead &aHandle);
		%feature("autodoc", "1");
		Handle_STEPControl_ActorRead & operator=(const STEPControl_ActorRead *anItem);
		%feature("autodoc", "1");
		Handle_STEPControl_ActorRead const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_STEPControl_ActorRead {
	STEPControl_ActorRead* GetObject() {
	return (STEPControl_ActorRead*)$self->Access();
	}
};
%extend Handle_STEPControl_ActorRead {
	~Handle_STEPControl_ActorRead() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_STEPControl_ActorRead\n");}
	}
};


%nodefaultctor Handle_STEPControl_ActorWrite;
class Handle_STEPControl_ActorWrite : public Handle_Transfer_ActorOfFinderProcess {
	public:
		%feature("autodoc", "1");
		Handle_STEPControl_ActorWrite();
		%feature("autodoc", "1");
		Handle_STEPControl_ActorWrite(const Handle_STEPControl_ActorWrite &aHandle);
		%feature("autodoc", "1");
		Handle_STEPControl_ActorWrite(const STEPControl_ActorWrite *anItem);
		%feature("autodoc", "1");
		Handle_STEPControl_ActorWrite & operator=(const Handle_STEPControl_ActorWrite &aHandle);
		%feature("autodoc", "1");
		Handle_STEPControl_ActorWrite & operator=(const STEPControl_ActorWrite *anItem);
		%feature("autodoc", "1");
		Handle_STEPControl_ActorWrite const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_STEPControl_ActorWrite {
	STEPControl_ActorWrite* GetObject() {
	return (STEPControl_ActorWrite*)$self->Access();
	}
};
%extend Handle_STEPControl_ActorWrite {
	~Handle_STEPControl_ActorWrite() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_STEPControl_ActorWrite\n");}
	}
};


%nodefaultctor Handle_STEPControl_Controller;
class Handle_STEPControl_Controller : public Handle_XSControl_Controller {
	public:
		%feature("autodoc", "1");
		Handle_STEPControl_Controller();
		%feature("autodoc", "1");
		Handle_STEPControl_Controller(const Handle_STEPControl_Controller &aHandle);
		%feature("autodoc", "1");
		Handle_STEPControl_Controller(const STEPControl_Controller *anItem);
		%feature("autodoc", "1");
		Handle_STEPControl_Controller & operator=(const Handle_STEPControl_Controller &aHandle);
		%feature("autodoc", "1");
		Handle_STEPControl_Controller & operator=(const STEPControl_Controller *anItem);
		%feature("autodoc", "1");
		Handle_STEPControl_Controller const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_STEPControl_Controller {
	STEPControl_Controller* GetObject() {
	return (STEPControl_Controller*)$self->Access();
	}
};
%extend Handle_STEPControl_Controller {
	~Handle_STEPControl_Controller() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_STEPControl_Controller\n");}
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

};
%extend STEPControl_Reader {
	~STEPControl_Reader() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of STEPControl_Reader\n");}
	}
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

};
%extend STEPControl_ActorRead {
	Handle_STEPControl_ActorRead GetHandle() {
	return *(Handle_STEPControl_ActorRead*) &$self;
	}
};
%extend STEPControl_ActorRead {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend STEPControl_ActorRead {
	~STEPControl_ActorRead() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of STEPControl_ActorRead\n");}
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

};
%extend STEPControl_ActorWrite {
	Handle_STEPControl_ActorWrite GetHandle() {
	return *(Handle_STEPControl_ActorWrite*) &$self;
	}
};
%extend STEPControl_ActorWrite {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend STEPControl_ActorWrite {
	~STEPControl_ActorWrite() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of STEPControl_ActorWrite\n");}
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

};
%extend STEPControl_Controller {
	Handle_STEPControl_Controller GetHandle() {
	return *(Handle_STEPControl_Controller*) &$self;
	}
};
%extend STEPControl_Controller {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend STEPControl_Controller {
	~STEPControl_Controller() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of STEPControl_Controller\n");}
	}
};


%nodefaultctor STEPControl_Writer;
class STEPControl_Writer {
	public:
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
%extend STEPControl_Writer {
	~STEPControl_Writer() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of STEPControl_Writer\n");}
	}
};
