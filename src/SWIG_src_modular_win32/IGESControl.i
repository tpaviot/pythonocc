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
%module IGESControl

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


%include IGESControl_dependencies.i


%include IGESControl_headers.i




%nodefaultctor Handle_IGESControl_AlgoContainer;
class Handle_IGESControl_AlgoContainer : public Handle_IGESToBRep_AlgoContainer {
	public:
		%feature("autodoc", "1");
		Handle_IGESControl_AlgoContainer();
		%feature("autodoc", "1");
		Handle_IGESControl_AlgoContainer(const Handle_IGESControl_AlgoContainer &aHandle);
		%feature("autodoc", "1");
		Handle_IGESControl_AlgoContainer(const IGESControl_AlgoContainer *anItem);
		%feature("autodoc", "1");
		Handle_IGESControl_AlgoContainer const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESControl_AlgoContainer {
	IGESControl_AlgoContainer* GetObject() {
	return (IGESControl_AlgoContainer*)$self->Access();
	}
};
%extend Handle_IGESControl_AlgoContainer {
	~Handle_IGESControl_AlgoContainer() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_IGESControl_AlgoContainer\n");}
	}
};

%nodefaultctor Handle_IGESControl_ActorWrite;
class Handle_IGESControl_ActorWrite : public Handle_Transfer_ActorOfFinderProcess {
	public:
		%feature("autodoc", "1");
		Handle_IGESControl_ActorWrite();
		%feature("autodoc", "1");
		Handle_IGESControl_ActorWrite(const Handle_IGESControl_ActorWrite &aHandle);
		%feature("autodoc", "1");
		Handle_IGESControl_ActorWrite(const IGESControl_ActorWrite *anItem);
		%feature("autodoc", "1");
		Handle_IGESControl_ActorWrite const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESControl_ActorWrite {
	IGESControl_ActorWrite* GetObject() {
	return (IGESControl_ActorWrite*)$self->Access();
	}
};
%extend Handle_IGESControl_ActorWrite {
	~Handle_IGESControl_ActorWrite() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_IGESControl_ActorWrite\n");}
	}
};

%nodefaultctor Handle_IGESControl_Controller;
class Handle_IGESControl_Controller : public Handle_XSControl_Controller {
	public:
		%feature("autodoc", "1");
		Handle_IGESControl_Controller();
		%feature("autodoc", "1");
		Handle_IGESControl_Controller(const Handle_IGESControl_Controller &aHandle);
		%feature("autodoc", "1");
		Handle_IGESControl_Controller(const IGESControl_Controller *anItem);
		%feature("autodoc", "1");
		Handle_IGESControl_Controller const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESControl_Controller {
	IGESControl_Controller* GetObject() {
	return (IGESControl_Controller*)$self->Access();
	}
};
%extend Handle_IGESControl_Controller {
	~Handle_IGESControl_Controller() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_IGESControl_Controller\n");}
	}
};

%nodefaultctor Handle_IGESControl_IGESBoundary;
class Handle_IGESControl_IGESBoundary : public Handle_IGESToBRep_IGESBoundary {
	public:
		%feature("autodoc", "1");
		Handle_IGESControl_IGESBoundary();
		%feature("autodoc", "1");
		Handle_IGESControl_IGESBoundary(const Handle_IGESControl_IGESBoundary &aHandle);
		%feature("autodoc", "1");
		Handle_IGESControl_IGESBoundary(const IGESControl_IGESBoundary *anItem);
		%feature("autodoc", "1");
		Handle_IGESControl_IGESBoundary const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESControl_IGESBoundary {
	IGESControl_IGESBoundary* GetObject() {
	return (IGESControl_IGESBoundary*)$self->Access();
	}
};
%extend Handle_IGESControl_IGESBoundary {
	~Handle_IGESControl_IGESBoundary() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_IGESControl_IGESBoundary\n");}
	}
};

%nodefaultctor Handle_IGESControl_ToolContainer;
class Handle_IGESControl_ToolContainer : public Handle_IGESToBRep_ToolContainer {
	public:
		%feature("autodoc", "1");
		Handle_IGESControl_ToolContainer();
		%feature("autodoc", "1");
		Handle_IGESControl_ToolContainer(const Handle_IGESControl_ToolContainer &aHandle);
		%feature("autodoc", "1");
		Handle_IGESControl_ToolContainer(const IGESControl_ToolContainer *anItem);
		%feature("autodoc", "1");
		Handle_IGESControl_ToolContainer const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESControl_ToolContainer {
	IGESControl_ToolContainer* GetObject() {
	return (IGESControl_ToolContainer*)$self->Access();
	}
};
%extend Handle_IGESControl_ToolContainer {
	~Handle_IGESControl_ToolContainer() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_IGESControl_ToolContainer\n");}
	}
};

%nodefaultctor IGESControl_Reader;
class IGESControl_Reader : public XSControl_Reader {
	public:
		%feature("autodoc", "1");
		IGESControl_Reader();
		%feature("autodoc", "1");
		IGESControl_Reader(const Handle_XSControl_WorkSession &WS, const Standard_Boolean scratch=1);
		%feature("autodoc", "1");
		void SetReadVisible(const Standard_Boolean ReadRoot);
		%feature("autodoc", "1");
		Standard_Boolean GetReadVisible() const;
		%feature("autodoc", "1");
		Handle_IGESData_IGESModel IGESModel() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbRootsForTransfer();
		%feature("autodoc", "1");
		void PrintTransferInfo(const IFSelect_PrintFail failwarn, const IFSelect_PrintCount mode) const;

};
%extend IGESControl_Reader {
	~IGESControl_Reader() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of IGESControl_Reader\n");}
	}
};

%nodefaultctor IGESControl_ToolContainer;
class IGESControl_ToolContainer : public IGESToBRep_ToolContainer {
	public:
		%feature("autodoc", "1");
		IGESControl_ToolContainer();
		%feature("autodoc", "1");
		virtual		Handle_IGESToBRep_IGESBoundary IGESBoundary() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESControl_ToolContainer {
	Handle_IGESControl_ToolContainer GetHandle() {
	return *(Handle_IGESControl_ToolContainer*) &$self;
	}
};
%extend IGESControl_ToolContainer {
	~IGESControl_ToolContainer() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of IGESControl_ToolContainer\n");}
	}
};

%nodefaultctor IGESControl_Controller;
class IGESControl_Controller : public XSControl_Controller {
	public:
		%feature("autodoc", "1");
		IGESControl_Controller(const Standard_Boolean modefnes=0);
		%feature("autodoc", "1");
		virtual		Handle_Interface_InterfaceModel NewModel() const;
		%feature("autodoc", "1");
		virtual		Handle_Transfer_ActorOfTransientProcess ActorRead(const Handle_Interface_InterfaceModel &model) const;
		%feature("autodoc", "1");
		virtual		IFSelect_ReturnStatus TransferWriteShape(const TopoDS_Shape &shape, const Handle_Transfer_FinderProcess &FP, const Handle_Interface_InterfaceModel &model, const Standard_Integer modetrans=0) const;
		%feature("autodoc", "1");
		Standard_Boolean Init();
		%feature("autodoc", "1");
		virtual		void Customise(Handle_XSControl_WorkSession & WS);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESControl_Controller {
	Handle_IGESControl_Controller GetHandle() {
	return *(Handle_IGESControl_Controller*) &$self;
	}
};
%extend IGESControl_Controller {
	~IGESControl_Controller() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of IGESControl_Controller\n");}
	}
};

%nodefaultctor IGESControl_AlgoContainer;
class IGESControl_AlgoContainer : public IGESToBRep_AlgoContainer {
	public:
		%feature("autodoc", "1");
		IGESControl_AlgoContainer();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESControl_AlgoContainer {
	Handle_IGESControl_AlgoContainer GetHandle() {
	return *(Handle_IGESControl_AlgoContainer*) &$self;
	}
};
%extend IGESControl_AlgoContainer {
	~IGESControl_AlgoContainer() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of IGESControl_AlgoContainer\n");}
	}
};

%nodefaultctor IGESControl_IGESBoundary;
class IGESControl_IGESBoundary : public IGESToBRep_IGESBoundary {
	public:
		%feature("autodoc", "1");
		IGESControl_IGESBoundary();
		%feature("autodoc", "1");
		IGESControl_IGESBoundary(const IGESToBRep_CurveAndSurface &CS);
		%feature("autodoc", "1");
		virtual		void Check(const Standard_Boolean result, const Standard_Boolean checkclosure, const Standard_Boolean okCurve3d, const Standard_Boolean okCurve2d);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESControl_IGESBoundary {
	Handle_IGESControl_IGESBoundary GetHandle() {
	return *(Handle_IGESControl_IGESBoundary*) &$self;
	}
};
%extend IGESControl_IGESBoundary {
	~IGESControl_IGESBoundary() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of IGESControl_IGESBoundary\n");}
	}
};

%nodefaultctor IGESControl_Writer;
class IGESControl_Writer {
	public:
		%feature("autodoc", "1");
		IGESControl_Writer();
		%feature("autodoc", "1");
		IGESControl_Writer(const char * unit, const Standard_Integer modecr=0);
		%feature("autodoc", "1");
		IGESControl_Writer(const Handle_IGESData_IGESModel &model, const Standard_Integer modecr=0);
		%feature("autodoc", "1");
		Handle_IGESData_IGESModel Model() const;
		%feature("autodoc", "1");
		Handle_Transfer_FinderProcess TransferProcess() const;
		%feature("autodoc", "1");
		void SetTransferProcess(const Handle_Transfer_FinderProcess &TP);
		%feature("autodoc", "1");
		Standard_Boolean AddShape(const TopoDS_Shape &sh);
		%feature("autodoc", "1");
		Standard_Boolean AddGeom(const Handle_Standard_Transient &geom);
		%feature("autodoc", "1");
		Standard_Boolean AddEntity(const Handle_IGESData_IGESEntity &ent);
		%feature("autodoc", "1");
		void ComputeModel();
		%feature("autodoc", "1");
		Standard_Boolean Write(Standard_OStream & S, const Standard_Boolean fnes=0);
		%feature("autodoc", "1");
		Standard_Boolean Write(const char * file, const Standard_Boolean fnes=0);
		%feature("autodoc", "1");
		void PrintStatsTransfer(const Standard_Integer what, const Standard_Integer mode=0) const;

};
%extend IGESControl_Writer {
	~IGESControl_Writer() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of IGESControl_Writer\n");}
	}
};

%nodefaultctor IGESControl_ActorWrite;
class IGESControl_ActorWrite : public Transfer_ActorOfFinderProcess {
	public:
		%feature("autodoc", "1");
		IGESControl_ActorWrite();
		%feature("autodoc", "1");
		virtual		Standard_Boolean Recognize(const Handle_Transfer_Finder &start);
		%feature("autodoc", "1");
		virtual		Handle_Transfer_Binder Transfer(const Handle_Transfer_Finder &start, const Handle_Transfer_FinderProcess &FP);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESControl_ActorWrite {
	Handle_IGESControl_ActorWrite GetHandle() {
	return *(Handle_IGESControl_ActorWrite*) &$self;
	}
};
%extend IGESControl_ActorWrite {
	~IGESControl_ActorWrite() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of IGESControl_ActorWrite\n");}
	}
};