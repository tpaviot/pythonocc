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
%module IGESControl

%include IGESControl_renames.i
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%pythoncode {
import GarbageCollector
};

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
		Handle_IGESControl_AlgoContainer & operator=(const Handle_IGESControl_AlgoContainer &aHandle);
		%feature("autodoc", "1");
		Handle_IGESControl_AlgoContainer & operator=(const IGESControl_AlgoContainer *anItem);
		%feature("autodoc", "1");
		Handle_IGESControl_AlgoContainer const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESControl_AlgoContainer {
	IGESControl_AlgoContainer* GetObject() {
	return (IGESControl_AlgoContainer*)$self->Access();
	}
};
%feature("shadow") Handle_IGESControl_AlgoContainer::~Handle_IGESControl_AlgoContainer %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


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
		Handle_IGESControl_ActorWrite & operator=(const Handle_IGESControl_ActorWrite &aHandle);
		%feature("autodoc", "1");
		Handle_IGESControl_ActorWrite & operator=(const IGESControl_ActorWrite *anItem);
		%feature("autodoc", "1");
		Handle_IGESControl_ActorWrite const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESControl_ActorWrite {
	IGESControl_ActorWrite* GetObject() {
	return (IGESControl_ActorWrite*)$self->Access();
	}
};
%feature("shadow") Handle_IGESControl_ActorWrite::~Handle_IGESControl_ActorWrite %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


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
		Handle_IGESControl_Controller & operator=(const Handle_IGESControl_Controller &aHandle);
		%feature("autodoc", "1");
		Handle_IGESControl_Controller & operator=(const IGESControl_Controller *anItem);
		%feature("autodoc", "1");
		Handle_IGESControl_Controller const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESControl_Controller {
	IGESControl_Controller* GetObject() {
	return (IGESControl_Controller*)$self->Access();
	}
};
%feature("shadow") Handle_IGESControl_Controller::~Handle_IGESControl_Controller %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


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
		Handle_IGESControl_IGESBoundary & operator=(const Handle_IGESControl_IGESBoundary &aHandle);
		%feature("autodoc", "1");
		Handle_IGESControl_IGESBoundary & operator=(const IGESControl_IGESBoundary *anItem);
		%feature("autodoc", "1");
		Handle_IGESControl_IGESBoundary const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESControl_IGESBoundary {
	IGESControl_IGESBoundary* GetObject() {
	return (IGESControl_IGESBoundary*)$self->Access();
	}
};
%feature("shadow") Handle_IGESControl_IGESBoundary::~Handle_IGESControl_IGESBoundary %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


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
		Handle_IGESControl_ToolContainer & operator=(const Handle_IGESControl_ToolContainer &aHandle);
		%feature("autodoc", "1");
		Handle_IGESControl_ToolContainer & operator=(const IGESControl_ToolContainer *anItem);
		%feature("autodoc", "1");
		Handle_IGESControl_ToolContainer const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESControl_ToolContainer {
	IGESControl_ToolContainer* GetObject() {
	return (IGESControl_ToolContainer*)$self->Access();
	}
};
%feature("shadow") Handle_IGESControl_ToolContainer::~Handle_IGESControl_ToolContainer %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


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
%feature("shadow") IGESControl_Reader::~IGESControl_Reader %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


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
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IGESControl_ActorWrite::~IGESControl_ActorWrite %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


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
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IGESControl_ToolContainer::~IGESControl_ToolContainer %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


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
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IGESControl_AlgoContainer::~IGESControl_AlgoContainer %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


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
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IGESControl_IGESBoundary::~IGESControl_IGESBoundary %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


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
%feature("shadow") IGESControl_Writer::~IGESControl_Writer %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


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
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IGESControl_Controller::~IGESControl_Controller %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}
