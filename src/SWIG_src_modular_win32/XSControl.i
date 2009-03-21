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
%module XSControl

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


%include XSControl_dependencies.i


%include XSControl_headers.i




%nodefaultctor Handle_XSControl_SelectForTransfer;
class Handle_XSControl_SelectForTransfer : public Handle_IFSelect_SelectExtract {
	public:
		%feature("autodoc", "1");
		Handle_XSControl_SelectForTransfer();
		%feature("autodoc", "1");
		Handle_XSControl_SelectForTransfer(const Handle_XSControl_SelectForTransfer &aHandle);
		%feature("autodoc", "1");
		Handle_XSControl_SelectForTransfer(const XSControl_SelectForTransfer *anItem);
		%feature("autodoc", "1");
		Handle_XSControl_SelectForTransfer const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XSControl_SelectForTransfer {
	XSControl_SelectForTransfer* GetObject() {
	return (XSControl_SelectForTransfer*)$self->Access();
	}
};
%extend Handle_XSControl_SelectForTransfer {
	~Handle_XSControl_SelectForTransfer() {
	printf("Call custom destructor for instance of Handle_XSControl_SelectForTransfer\n");
	}
};

%nodefaultctor Handle_XSControl_TransferWriter;
class Handle_XSControl_TransferWriter : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_XSControl_TransferWriter();
		%feature("autodoc", "1");
		Handle_XSControl_TransferWriter(const Handle_XSControl_TransferWriter &aHandle);
		%feature("autodoc", "1");
		Handle_XSControl_TransferWriter(const XSControl_TransferWriter *anItem);
		%feature("autodoc", "1");
		Handle_XSControl_TransferWriter const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XSControl_TransferWriter {
	XSControl_TransferWriter* GetObject() {
	return (XSControl_TransferWriter*)$self->Access();
	}
};
%extend Handle_XSControl_TransferWriter {
	~Handle_XSControl_TransferWriter() {
	printf("Call custom destructor for instance of Handle_XSControl_TransferWriter\n");
	}
};

%nodefaultctor Handle_XSControl_SignTransferStatus;
class Handle_XSControl_SignTransferStatus : public Handle_IFSelect_Signature {
	public:
		%feature("autodoc", "1");
		Handle_XSControl_SignTransferStatus();
		%feature("autodoc", "1");
		Handle_XSControl_SignTransferStatus(const Handle_XSControl_SignTransferStatus &aHandle);
		%feature("autodoc", "1");
		Handle_XSControl_SignTransferStatus(const XSControl_SignTransferStatus *anItem);
		%feature("autodoc", "1");
		Handle_XSControl_SignTransferStatus const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XSControl_SignTransferStatus {
	XSControl_SignTransferStatus* GetObject() {
	return (XSControl_SignTransferStatus*)$self->Access();
	}
};
%extend Handle_XSControl_SignTransferStatus {
	~Handle_XSControl_SignTransferStatus() {
	printf("Call custom destructor for instance of Handle_XSControl_SignTransferStatus\n");
	}
};

%nodefaultctor Handle_XSControl_TransferReader;
class Handle_XSControl_TransferReader : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_XSControl_TransferReader();
		%feature("autodoc", "1");
		Handle_XSControl_TransferReader(const Handle_XSControl_TransferReader &aHandle);
		%feature("autodoc", "1");
		Handle_XSControl_TransferReader(const XSControl_TransferReader *anItem);
		%feature("autodoc", "1");
		Handle_XSControl_TransferReader const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XSControl_TransferReader {
	XSControl_TransferReader* GetObject() {
	return (XSControl_TransferReader*)$self->Access();
	}
};
%extend Handle_XSControl_TransferReader {
	~Handle_XSControl_TransferReader() {
	printf("Call custom destructor for instance of Handle_XSControl_TransferReader\n");
	}
};

%nodefaultctor Handle_XSControl_Controller;
class Handle_XSControl_Controller : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_XSControl_Controller();
		%feature("autodoc", "1");
		Handle_XSControl_Controller(const Handle_XSControl_Controller &aHandle);
		%feature("autodoc", "1");
		Handle_XSControl_Controller(const XSControl_Controller *anItem);
		%feature("autodoc", "1");
		Handle_XSControl_Controller const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XSControl_Controller {
	XSControl_Controller* GetObject() {
	return (XSControl_Controller*)$self->Access();
	}
};
%extend Handle_XSControl_Controller {
	~Handle_XSControl_Controller() {
	printf("Call custom destructor for instance of Handle_XSControl_Controller\n");
	}
};

%nodefaultctor Handle_XSControl_Vars;
class Handle_XSControl_Vars : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_XSControl_Vars();
		%feature("autodoc", "1");
		Handle_XSControl_Vars(const Handle_XSControl_Vars &aHandle);
		%feature("autodoc", "1");
		Handle_XSControl_Vars(const XSControl_Vars *anItem);
		%feature("autodoc", "1");
		Handle_XSControl_Vars const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XSControl_Vars {
	XSControl_Vars* GetObject() {
	return (XSControl_Vars*)$self->Access();
	}
};
%extend Handle_XSControl_Vars {
	~Handle_XSControl_Vars() {
	printf("Call custom destructor for instance of Handle_XSControl_Vars\n");
	}
};

%nodefaultctor Handle_XSControl_WorkSession;
class Handle_XSControl_WorkSession : public Handle_IFSelect_WorkSession {
	public:
		%feature("autodoc", "1");
		Handle_XSControl_WorkSession();
		%feature("autodoc", "1");
		Handle_XSControl_WorkSession(const Handle_XSControl_WorkSession &aHandle);
		%feature("autodoc", "1");
		Handle_XSControl_WorkSession(const XSControl_WorkSession *anItem);
		%feature("autodoc", "1");
		Handle_XSControl_WorkSession const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XSControl_WorkSession {
	XSControl_WorkSession* GetObject() {
	return (XSControl_WorkSession*)$self->Access();
	}
};
%extend Handle_XSControl_WorkSession {
	~Handle_XSControl_WorkSession() {
	printf("Call custom destructor for instance of Handle_XSControl_WorkSession\n");
	}
};

%nodefaultctor Handle_XSControl_ConnectedShapes;
class Handle_XSControl_ConnectedShapes : public Handle_IFSelect_SelectExplore {
	public:
		%feature("autodoc", "1");
		Handle_XSControl_ConnectedShapes();
		%feature("autodoc", "1");
		Handle_XSControl_ConnectedShapes(const Handle_XSControl_ConnectedShapes &aHandle);
		%feature("autodoc", "1");
		Handle_XSControl_ConnectedShapes(const XSControl_ConnectedShapes *anItem);
		%feature("autodoc", "1");
		Handle_XSControl_ConnectedShapes const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XSControl_ConnectedShapes {
	XSControl_ConnectedShapes* GetObject() {
	return (XSControl_ConnectedShapes*)$self->Access();
	}
};
%extend Handle_XSControl_ConnectedShapes {
	~Handle_XSControl_ConnectedShapes() {
	printf("Call custom destructor for instance of Handle_XSControl_ConnectedShapes\n");
	}
};

%nodefaultctor XSControl_SignTransferStatus;
class XSControl_SignTransferStatus : public IFSelect_Signature {
	public:
		%feature("autodoc", "1");
		XSControl_SignTransferStatus();
		%feature("autodoc", "1");
		XSControl_SignTransferStatus(const Handle_XSControl_TransferReader &TR);
		%feature("autodoc", "1");
		void SetReader(const Handle_XSControl_TransferReader &TR);
		%feature("autodoc", "1");
		void SetMap(const Handle_Transfer_TransientProcess &TP);
		%feature("autodoc", "1");
		Handle_Transfer_TransientProcess Map() const;
		%feature("autodoc", "1");
		Handle_XSControl_TransferReader Reader() const;
		%feature("autodoc", "1");
		virtual		char * Value(const Handle_Standard_Transient &ent, const Handle_Interface_InterfaceModel &model) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XSControl_SignTransferStatus {
	Handle_XSControl_SignTransferStatus GetHandle() {
	return *(Handle_XSControl_SignTransferStatus*) &$self;
	}
};
%extend XSControl_SignTransferStatus {
	~XSControl_SignTransferStatus() {
	printf("Call custom destructor for instance of XSControl_SignTransferStatus\n");
	}
};

%nodefaultctor XSControl_WorkSession;
class XSControl_WorkSession : public IFSelect_WorkSession {
	public:
		%feature("autodoc", "1");
		XSControl_WorkSession();
		%feature("autodoc", "1");
		virtual		void ClearData(const Standard_Integer mode);
		%feature("autodoc", "1");
		Standard_Boolean SelectNorm(const char * normname, const char * profile="");
		%feature("autodoc", "1");
		Standard_Boolean SelectProfile(const char * profile);
		%feature("autodoc", "1");
		void SetController(const Handle_XSControl_Controller &ctl);
		%feature("autodoc", "1");
		virtual		void AdaptNorm();
		%feature("autodoc", "1");
		char * SelectedNorm(const Standard_Boolean rsc=0) const;
		%feature("autodoc", "1");
		Handle_XSControl_Controller NormAdaptor() const;
		%feature("autodoc", "1");
		Handle_Dico_DictionaryOfTransient Context() const;
		%feature("autodoc", "1");
		void SetAllContext(const Handle_Dico_DictionaryOfTransient &context);
		%feature("autodoc", "1");
		void ClearContext();
		%feature("autodoc", "1");
		Standard_Boolean PrintTransferStatus(const Standard_Integer num, const Standard_Boolean wri, const Handle_Message_Messenger &S) const;
		%feature("autodoc", "1");
		void InitTransferReader(const Standard_Integer mode);
		%feature("autodoc", "1");
		void SetTransferReader(const Handle_XSControl_TransferReader &TR);
		%feature("autodoc", "1");
		Handle_XSControl_TransferReader TransferReader() const;
		%feature("autodoc", "1");
		Handle_Transfer_TransientProcess MapReader() const;
		%feature("autodoc", "1");
		Standard_Boolean SetMapReader(const Handle_Transfer_TransientProcess &TP);
		%feature("autodoc", "1");
		Handle_Standard_Transient Result(const Handle_Standard_Transient &ent, const Standard_Integer mode) const;
		%feature("autodoc", "1");
		Standard_Integer TransferReadOne(const Handle_Standard_Transient &ents);
		%feature("autodoc", "1");
		Standard_Integer TransferReadRoots();
		%feature("autodoc", "1");
		Handle_Interface_InterfaceModel NewModel();
		%feature("autodoc", "1");
		Handle_XSControl_TransferWriter TransferWriter() const;
		%feature("autodoc", "1");
		Handle_Transfer_FinderProcess MapWriter() const;
		%feature("autodoc", "1");
		Standard_Boolean SetMapWriter(const Handle_Transfer_FinderProcess &FP);
		%feature("autodoc", "1");
		void SetModeWriteShape(const Standard_Integer mode);
		%feature("autodoc", "1");
		Standard_Integer ModeWriteShape() const;
		%feature("autodoc", "1");
		IFSelect_ReturnStatus TransferWriteShape(const TopoDS_Shape &shape, const Standard_Boolean compgraph=1);
		%feature("autodoc", "1");
		Interface_CheckIterator TransferWriteCheckList() const;
		%feature("autodoc", "1");
		Handle_XSControl_Vars Vars() const;
		%feature("autodoc", "1");
		void SetVars(const Handle_XSControl_Vars &newvars);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XSControl_WorkSession {
	Handle_XSControl_WorkSession GetHandle() {
	return *(Handle_XSControl_WorkSession*) &$self;
	}
};
%extend XSControl_WorkSession {
	~XSControl_WorkSession() {
	printf("Call custom destructor for instance of XSControl_WorkSession\n");
	}
};

%nodefaultctor XSControl_Controller;
class XSControl_Controller : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		void SetNames(const char * longname, const char * shortname);
		%feature("autodoc", "1");
		void AutoRecord() const;
		%feature("autodoc", "1");
		void Record(const char * name) const;
		%feature("autodoc", "1");
		Handle_XSControl_Controller Recorded(const char * name);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfHAsciiString ListRecorded(const Standard_Integer mode=0);
		%feature("autodoc", "1");
		char * Name(const Standard_Boolean rsc=0) const;
		%feature("autodoc", "1");
		Handle_IFSelect_Profile Profile() const;
		%feature("autodoc", "1");
		void DefineProfile(const char * confname);
		%feature("autodoc", "1");
		Standard_Boolean SetProfile(const char * confname);
		%feature("autodoc", "1");
		virtual		Standard_Boolean SettingProfile(const char * confname);
		%feature("autodoc", "1");
		Standard_Boolean ApplyProfile(const Handle_XSControl_WorkSession &WS, const char * confname);
		%feature("autodoc", "1");
		virtual		Standard_Boolean ApplyingProfile(const Handle_XSControl_WorkSession &WS, const char * confname);
		%feature("autodoc", "1");
		Handle_Interface_Protocol Protocol() const;
		%feature("autodoc", "1");
		Handle_IFSelect_Signature SignType() const;
		%feature("autodoc", "1");
		Handle_IFSelect_WorkLibrary WorkLibrary() const;
		%feature("autodoc", "1");
		virtual		Handle_Interface_InterfaceModel NewModel() const;
		%feature("autodoc", "1");
		virtual		Handle_Transfer_ActorOfTransientProcess ActorRead(const Handle_Interface_InterfaceModel &model) const;
		%feature("autodoc", "1");
		virtual		Handle_Transfer_ActorOfFinderProcess ActorWrite() const;
		%feature("autodoc", "1");
		virtual		void UpdateStatics(const Standard_Integer mode, const char * criter="") const;
		%feature("autodoc", "1");
		void SetModeWrite(const Standard_Integer modemin, const Standard_Integer modemax, const Standard_Boolean shape=1);
		%feature("autodoc", "1");
		void SetModeWriteHelp(const Standard_Integer modetrans, const char * help, const Standard_Boolean shape=1);
		%feature("autodoc", "1");
		Standard_Boolean ModeWriteBounds(Standard_Integer & modemin, Standard_Integer & modemax, const Standard_Boolean shape=1) const;
		%feature("autodoc", "1");
		Standard_Boolean IsModeWrite(const Standard_Integer modetrans, const Standard_Boolean shape=1) const;
		%feature("autodoc", "1");
		char * ModeWriteHelp(const Standard_Integer modetrans, const Standard_Boolean shape=1) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean RecognizeWriteTransient(const Handle_Standard_Transient &obj, const Standard_Integer modetrans=0) const;
		%feature("autodoc", "1");
		virtual		IFSelect_ReturnStatus TransferWriteTransient(const Handle_Standard_Transient &obj, const Handle_Transfer_FinderProcess &FP, const Handle_Interface_InterfaceModel &model, const Standard_Integer modetrans=0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean RecognizeWriteShape(const TopoDS_Shape &shape, const Standard_Integer modetrans=0) const;
		%feature("autodoc", "1");
		virtual		IFSelect_ReturnStatus TransferWriteShape(const TopoDS_Shape &shape, const Handle_Transfer_FinderProcess &FP, const Handle_Interface_InterfaceModel &model, const Standard_Integer modetrans=0) const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Transient ClusterContext(const Handle_XSControl_WorkSession &WS) const;
		%feature("autodoc", "1");
		virtual		Interface_CheckIterator ResolveCluster(const Handle_XSControl_WorkSession &WS, const Handle_Standard_Transient &context) const;
		%feature("autodoc", "1");
		void AddControlItem(const Handle_Standard_Transient &item, const char * name);
		%feature("autodoc", "1");
		Handle_Standard_Transient ControlItem(const char * name) const;
		%feature("autodoc", "1");
		void TraceStatic(const char * name, const Standard_Integer use);
		%feature("autodoc", "1");
		void AddSessionItem(const Handle_Standard_Transient &item, const char * name, const char * setapplied="");
		%feature("autodoc", "1");
		Handle_Standard_Transient SessionItem(const char * name) const;
		%feature("autodoc", "1");
		Standard_Boolean IsApplied(const Handle_Standard_Transient &item) const;
		%feature("autodoc", "1");
		virtual		void Customise(Handle_XSControl_WorkSession & WS);
		%feature("autodoc", "1");
		void Customising(Handle_XSControl_WorkSession & WS);
		%feature("autodoc", "1");
		Handle_Dico_DictionaryOfTransient AdaptorSession() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XSControl_Controller {
	Handle_XSControl_Controller GetHandle() {
	return *(Handle_XSControl_Controller*) &$self;
	}
};
%extend XSControl_Controller {
	~XSControl_Controller() {
	printf("Call custom destructor for instance of XSControl_Controller\n");
	}
};

%nodefaultctor XSControl_Writer;
class XSControl_Writer {
	public:
		%feature("autodoc", "1");
		XSControl_Writer();
		%feature("autodoc", "1");
		XSControl_Writer(const char * norm);
		%feature("autodoc", "1");
		XSControl_Writer(const Handle_XSControl_WorkSession &WS, const Standard_Boolean scratch=1);
		%feature("autodoc", "1");
		Standard_Boolean SetNorm(const char * norm);
		%feature("autodoc", "1");
		void SetWS(const Handle_XSControl_WorkSession &WS, const Standard_Boolean scratch=1);
		%feature("autodoc", "1");
		Handle_XSControl_WorkSession WS() const;
		%feature("autodoc", "1");
		Handle_Interface_InterfaceModel Model(const Standard_Boolean newone=0);
		%feature("autodoc", "1");
		IFSelect_ReturnStatus TransferShape(const TopoDS_Shape &sh, const Standard_Integer mode=0);
		%feature("autodoc", "1");
		IFSelect_ReturnStatus WriteFile(const char * filename);
		%feature("autodoc", "1");
		void PrintStatsTransfer(const Standard_Integer what, const Standard_Integer mode=0) const;

};
%extend XSControl_Writer {
	~XSControl_Writer() {
	printf("Call custom destructor for instance of XSControl_Writer\n");
	}
};

%nodefaultctor XSControl_Functions;
class XSControl_Functions {
	public:
		%feature("autodoc", "1");
		XSControl_Functions();
		%feature("autodoc", "1");
		void Init();

};
%extend XSControl_Functions {
	~XSControl_Functions() {
	printf("Call custom destructor for instance of XSControl_Functions\n");
	}
};

%nodefaultctor XSControl_Reader;
class XSControl_Reader {
	public:
		%feature("autodoc", "1");
		XSControl_Reader();
		%feature("autodoc", "1");
		XSControl_Reader(const char * norm);
		%feature("autodoc", "1");
		XSControl_Reader(const Handle_XSControl_WorkSession &WS, const Standard_Boolean scratch=1);
		%feature("autodoc", "1");
		Standard_Boolean SetNorm(const char * norm);
		%feature("autodoc", "1");
		void SetWS(const Handle_XSControl_WorkSession &WS, const Standard_Boolean scratch=1);
		%feature("autodoc", "1");
		Handle_XSControl_WorkSession WS() const;
		%feature("autodoc", "1");
		IFSelect_ReturnStatus ReadFile(const char * filename);
		%feature("autodoc", "1");
		Handle_Interface_InterfaceModel Model() const;
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient GiveList(const char * first="", const char * second="");
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient GiveList(const char * first, const Handle_Standard_Transient &ent);
		%feature("autodoc", "1");
		virtual		Standard_Integer NbRootsForTransfer();
		%feature("autodoc", "1");
		Handle_Standard_Transient RootForTransfer(const Standard_Integer num=1);
		%feature("autodoc", "1");
		Standard_Boolean TransferOneRoot(const Standard_Integer num=1);
		%feature("autodoc", "1");
		Standard_Boolean TransferOne(const Standard_Integer num);
		%feature("autodoc", "1");
		Standard_Boolean TransferEntity(const Handle_Standard_Transient &start);
		%feature("autodoc", "1");
		Standard_Integer TransferList(const Handle_TColStd_HSequenceOfTransient &list);
		%feature("autodoc", "1");
		Standard_Integer TransferRoots();
		%feature("autodoc", "1");
		void ClearShapes();
		%feature("autodoc", "1");
		Standard_Integer NbShapes() const;
		%feature("autodoc", "1");
		TopoDS_Shape Shape(const Standard_Integer num=1) const;
		%feature("autodoc", "1");
		TopoDS_Shape OneShape() const;
		%feature("autodoc", "1");
		void PrintCheckLoad(const Standard_Boolean failsonly, const IFSelect_PrintCount mode) const;
		%feature("autodoc", "1");
		void PrintCheckTransfer(const Standard_Boolean failsonly, const IFSelect_PrintCount mode) const;
		%feature("autodoc", "1");
		void PrintStatsTransfer(const Standard_Integer what, const Standard_Integer mode=0) const;
		%feature("autodoc", "1");
		void GetStatsTransfer(const Handle_TColStd_HSequenceOfTransient &list, Standard_Integer & nbMapped, Standard_Integer & nbWithResult, Standard_Integer & nbWithFail) const;

};
%extend XSControl_Reader {
	~XSControl_Reader() {
	printf("Call custom destructor for instance of XSControl_Reader\n");
	}
};

%nodefaultctor XSControl_SelectForTransfer;
class XSControl_SelectForTransfer : public IFSelect_SelectExtract {
	public:
		%feature("autodoc", "1");
		XSControl_SelectForTransfer();
		%feature("autodoc", "1");
		XSControl_SelectForTransfer(const Handle_XSControl_TransferReader &TR);
		%feature("autodoc", "1");
		void SetReader(const Handle_XSControl_TransferReader &TR);
		%feature("autodoc", "1");
		void SetActor(const Handle_Transfer_ActorOfTransientProcess &act);
		%feature("autodoc", "1");
		Handle_Transfer_ActorOfTransientProcess Actor() const;
		%feature("autodoc", "1");
		Handle_XSControl_TransferReader Reader() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Sort(const Standard_Integer rank, const Handle_Standard_Transient &ent, const Handle_Interface_InterfaceModel &model) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString ExtractLabel() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XSControl_SelectForTransfer {
	Handle_XSControl_SelectForTransfer GetHandle() {
	return *(Handle_XSControl_SelectForTransfer*) &$self;
	}
};
%extend XSControl_SelectForTransfer {
	~XSControl_SelectForTransfer() {
	printf("Call custom destructor for instance of XSControl_SelectForTransfer\n");
	}
};

%nodefaultctor XSControl_Utils;
class XSControl_Utils {
	public:
		%feature("autodoc", "1");
		XSControl_Utils();
		%feature("autodoc", "1");
		void TraceLine(const char * line) const;
		%feature("autodoc", "1");
		void TraceLines(const Handle_Standard_Transient &lines) const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Transient &item, const Handle_Standard_Type &what) const;
		%feature("autodoc", "1");
		char * TypeName(const Handle_Standard_Transient &item, const Standard_Boolean nopk=0) const;
		%feature("autodoc", "1");
		Handle_Standard_Transient TraValue(const Handle_Standard_Transient &list, const Standard_Integer num) const;
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient NewSeqTra() const;
		%feature("autodoc", "1");
		void AppendTra(const Handle_TColStd_HSequenceOfTransient &seqval, const Handle_Standard_Transient &traval) const;
		%feature("autodoc", "1");
		char * DateString(const Standard_Integer yy, const Standard_Integer mm, const Standard_Integer dd, const Standard_Integer hh, const Standard_Integer mn, const Standard_Integer ss) const;
		%feature("autodoc", "1");
		void DateValues(const char * text, Standard_Integer & yy, Standard_Integer & mm, Standard_Integer & dd, Standard_Integer & hh, Standard_Integer & mn, Standard_Integer & ss) const;
		%feature("autodoc", "1");
		char * ToCString(const Handle_TCollection_HAsciiString &strval) const;
		%feature("autodoc", "1");
		char * ToCString(const TCollection_AsciiString &strval) const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString ToHString(const char * strcon) const;
		%feature("autodoc", "1");
		TCollection_AsciiString ToAString(const char * strcon) const;
		%feature("autodoc", "1");
		Standard_ExtString ToEString(const Handle_TCollection_HExtendedString &strval) const;
		%feature("autodoc", "1");
		Standard_ExtString ToEString(const TCollection_ExtendedString &strval) const;
		%feature("autodoc", "1");
		Handle_TCollection_HExtendedString ToHString(const Standard_ExtString strcon) const;
		%feature("autodoc", "1");
		TCollection_ExtendedString ToXString(const Standard_ExtString strcon) const;
		%feature("autodoc", "1");
		Standard_ExtString AsciiToExtended(const char * str) const;
		%feature("autodoc", "1");
		Standard_Boolean IsAscii(const Standard_ExtString str) const;
		%feature("autodoc", "1");
		char * ExtendedToAscii(const Standard_ExtString str) const;
		%feature("autodoc", "1");
		char * CStrValue(const Handle_Standard_Transient &list, const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_ExtString EStrValue(const Handle_Standard_Transient &list, const Standard_Integer num) const;
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfHAsciiString NewSeqCStr() const;
		%feature("autodoc", "1");
		void AppendCStr(const Handle_TColStd_HSequenceOfHAsciiString &seqval, const char * strval) const;
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfHExtendedString NewSeqEStr() const;
		%feature("autodoc", "1");
		void AppendEStr(const Handle_TColStd_HSequenceOfHExtendedString &seqval, const Standard_ExtString strval) const;
		%feature("autodoc", "1");
		Standard_Boolean WriteShape(const TopoDS_Shape &shape, const char * filename) const;
		%feature("autodoc", "1");
		TopoDS_Shape NewShape() const;
		%feature("autodoc", "1");
		Standard_Boolean ReadShape(TopoDS_Shape & shape, const char * filename) const;
		%feature("autodoc", "1");
		Standard_Boolean IsNullShape(const TopoDS_Shape &shape) const;
		%feature("autodoc", "1");
		TopoDS_Shape CompoundFromSeq(const Handle_TopTools_HSequenceOfShape &seqval) const;
		%feature("autodoc", "1");
		TopAbs_ShapeEnum ShapeType(const TopoDS_Shape &shape, const Standard_Boolean compound) const;
		%feature("autodoc", "1");
		TopoDS_Shape SortedCompound(const TopoDS_Shape &shape, const TopAbs_ShapeEnum type, const Standard_Boolean explore, const Standard_Boolean compound) const;
		%feature("autodoc", "1");
		TopoDS_Shape ShapeValue(const Handle_TopTools_HSequenceOfShape &seqv, const Standard_Integer num) const;
		%feature("autodoc", "1");
		Handle_TopTools_HSequenceOfShape NewSeqShape() const;
		%feature("autodoc", "1");
		void AppendShape(const Handle_TopTools_HSequenceOfShape &seqv, const TopoDS_Shape &shape) const;
		%feature("autodoc", "1");
		Handle_Standard_Transient ShapeBinder(const TopoDS_Shape &shape, const Standard_Boolean hs=1) const;
		%feature("autodoc", "1");
		TopoDS_Shape BinderShape(const Handle_Standard_Transient &tr) const;
		%feature("autodoc", "1");
		Standard_Integer SeqLength(const Handle_Standard_Transient &list) const;
		%feature("autodoc", "1");
		Handle_Standard_Transient SeqToArr(const Handle_Standard_Transient &seq, const Standard_Integer first=1) const;
		%feature("autodoc", "1");
		Handle_Standard_Transient ArrToSeq(const Handle_Standard_Transient &arr) const;
		%feature("autodoc", "1");
		Standard_Integer SeqIntValue(const Handle_TColStd_HSequenceOfInteger &list, const Standard_Integer num) const;

};
%extend XSControl_Utils {
	~XSControl_Utils() {
	printf("Call custom destructor for instance of XSControl_Utils\n");
	}
};

%nodefaultctor XSControl_TransferWriter;
class XSControl_TransferWriter : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		XSControl_TransferWriter();
		%feature("autodoc", "1");
		Handle_Transfer_FinderProcess FinderProcess() const;
		%feature("autodoc", "1");
		void SetFinderProcess(const Handle_Transfer_FinderProcess &FP);
		%feature("autodoc", "1");
		Handle_XSControl_Controller Controller() const;
		%feature("autodoc", "1");
		void SetController(const Handle_XSControl_Controller &ctl);
		%feature("autodoc", "1");
		void Clear(const Standard_Integer mode);
		%feature("autodoc", "1");
		Standard_Integer TransferMode() const;
		%feature("autodoc", "1");
		void SetTransferMode(const Standard_Integer mode);
		%feature("autodoc", "1");
		void PrintStats(const Standard_Integer what, const Standard_Integer mode=0) const;
		%feature("autodoc", "1");
		Standard_Boolean RecognizeTransient(const Handle_Standard_Transient &obj);
		%feature("autodoc", "1");
		IFSelect_ReturnStatus TransferWriteTransient(const Handle_Interface_InterfaceModel &model, const Handle_Standard_Transient &obj);
		%feature("autodoc", "1");
		Standard_Boolean RecognizeShape(const TopoDS_Shape &shape);
		%feature("autodoc", "1");
		IFSelect_ReturnStatus TransferWriteShape(const Handle_Interface_InterfaceModel &model, const TopoDS_Shape &shape);
		%feature("autodoc", "1");
		Interface_CheckIterator CheckList() const;
		%feature("autodoc", "1");
		Interface_CheckIterator ResultCheckList(const Handle_Interface_InterfaceModel &model) const;
		%feature("autodoc", "1");
		void PrintStatsProcess(const Handle_Transfer_FinderProcess &TP, const Standard_Integer what, const Standard_Integer mode=0);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XSControl_TransferWriter {
	Handle_XSControl_TransferWriter GetHandle() {
	return *(Handle_XSControl_TransferWriter*) &$self;
	}
};
%extend XSControl_TransferWriter {
	~XSControl_TransferWriter() {
	printf("Call custom destructor for instance of XSControl_TransferWriter\n");
	}
};

%nodefaultctor XSControl_ConnectedShapes;
class XSControl_ConnectedShapes : public IFSelect_SelectExplore {
	public:
		%feature("autodoc", "1");
		XSControl_ConnectedShapes();
		%feature("autodoc", "1");
		XSControl_ConnectedShapes(const Handle_XSControl_TransferReader &TR);
		%feature("autodoc", "1");
		void SetReader(const Handle_XSControl_TransferReader &TR);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Explore(const Standard_Integer level, const Handle_Standard_Transient &ent, const Interface_Graph &G, Interface_EntityIterator & explored) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString ExploreLabel() const;
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient AdjacentEntities(const TopoDS_Shape &ashape, const Handle_Transfer_TransientProcess &TP, const TopAbs_ShapeEnum type);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XSControl_ConnectedShapes {
	Handle_XSControl_ConnectedShapes GetHandle() {
	return *(Handle_XSControl_ConnectedShapes*) &$self;
	}
};
%extend XSControl_ConnectedShapes {
	~XSControl_ConnectedShapes() {
	printf("Call custom destructor for instance of XSControl_ConnectedShapes\n");
	}
};

%nodefaultctor XSControl_TransferReader;
class XSControl_TransferReader : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		XSControl_TransferReader();
		%feature("autodoc", "1");
		void SetController(const Handle_XSControl_Controller &control);
		%feature("autodoc", "1");
		void SetActor(const Handle_Transfer_ActorOfTransientProcess &actor);
		%feature("autodoc", "1");
		Handle_Transfer_ActorOfTransientProcess Actor();
		%feature("autodoc", "1");
		void SetModel(const Handle_Interface_InterfaceModel &model);
		%feature("autodoc", "1");
		void SetGraph(const Handle_Interface_HGraph &graph);
		%feature("autodoc", "1");
		Handle_Interface_InterfaceModel Model() const;
		%feature("autodoc", "1");
		void SetContext(const char * name, const Handle_Standard_Transient &ctx);
		%feature("autodoc", "1");
		Standard_Boolean GetContext(const char * name, const Handle_Standard_Type &type, Handle_Standard_Transient & ctx) const;
		%feature("autodoc", "1");
		Handle_Dico_DictionaryOfTransient & Context();
		%feature("autodoc", "1");
		void SetFileName(const char * name);
		%feature("autodoc", "1");
		Standard_CString FileName() const;
		%feature("autodoc", "1");
		void Clear(const Standard_Integer mode);
		%feature("autodoc", "1");
		Handle_Transfer_TransientProcess TransientProcess() const;
		%feature("autodoc", "1");
		void SetTransientProcess(const Handle_Transfer_TransientProcess &TP);
		%feature("autodoc", "1");
		Standard_Boolean RecordResult(const Handle_Standard_Transient &ent);
		%feature("autodoc", "1");
		Standard_Boolean IsRecorded(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Standard_Boolean HasResult(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient RecordedList() const;
		%feature("autodoc", "1");
		Standard_Boolean Skip(const Handle_Standard_Transient &ent);
		%feature("autodoc", "1");
		Standard_Boolean IsSkipped(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Standard_Boolean IsMarked(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Handle_Transfer_ResultFromModel FinalResult(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		char * FinalEntityLabel(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Standard_Integer FinalEntityNumber(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Handle_Transfer_ResultFromModel ResultFromNumber(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Handle_Standard_Transient TransientResult(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		TopoDS_Shape ShapeResult(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Standard_Boolean ClearResult(const Handle_Standard_Transient &ent, const Standard_Integer mode);
		%feature("autodoc", "1");
		Handle_Standard_Transient EntityFromResult(const Handle_Standard_Transient &res, const Standard_Integer mode=0) const;
		%feature("autodoc", "1");
		Handle_Standard_Transient EntityFromShapeResult(const TopoDS_Shape &res, const Standard_Integer mode=0) const;
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient EntitiesFromShapeList(const Handle_TopTools_HSequenceOfShape &res, const Standard_Integer mode=0) const;
		%feature("autodoc", "1");
		Interface_CheckIterator CheckList(const Handle_Standard_Transient &ent, const Standard_Integer level=0) const;
		%feature("autodoc", "1");
		Standard_Boolean HasChecks(const Handle_Standard_Transient &ent, const Standard_Boolean failsonly) const;
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient CheckedList(const Handle_Standard_Transient &ent, const Interface_CheckStatus withcheck=Interface_CheckAny, const Standard_Boolean result=1) const;
		%feature("autodoc", "1");
		Standard_Boolean BeginTransfer();
		%feature("autodoc", "1");
		Standard_Boolean Recognize(const Handle_Standard_Transient &ent);
		%feature("autodoc", "1");
		Standard_Integer TransferOne(const Handle_Standard_Transient &ent, const Standard_Boolean rec=1);
		%feature("autodoc", "1");
		Standard_Integer TransferList(const Handle_TColStd_HSequenceOfTransient &list, const Standard_Boolean rec=1);
		%feature("autodoc", "1");
		Standard_Integer TransferRoots(const Interface_Graph &G);
		%feature("autodoc", "1");
		void TransferClear(const Handle_Standard_Transient &ent, const Standard_Integer level=0);
		%feature("autodoc", "1");
		void PrintStats(const Standard_Integer what, const Standard_Integer mode=0) const;
		%feature("autodoc", "1");
		Interface_CheckIterator LastCheckList() const;
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient LastTransferList(const Standard_Boolean roots) const;
		%feature("autodoc", "1");
		Handle_TopTools_HSequenceOfShape ShapeResultList(const Standard_Boolean rec);
		%feature("autodoc", "1");
		void PrintStatsProcess(const Handle_Transfer_TransientProcess &TP, const Standard_Integer what, const Standard_Integer mode=0);
		%feature("autodoc", "1");
		void PrintStatsOnList(const Handle_Transfer_TransientProcess &TP, const Handle_TColStd_HSequenceOfTransient &list, const Standard_Integer what, const Standard_Integer mode=0);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XSControl_TransferReader {
	Handle_XSControl_TransferReader GetHandle() {
	return *(Handle_XSControl_TransferReader*) &$self;
	}
};
%extend XSControl_TransferReader {
	~XSControl_TransferReader() {
	printf("Call custom destructor for instance of XSControl_TransferReader\n");
	}
};

%nodefaultctor XSControl;
class XSControl {
	public:
		%feature("autodoc", "1");
		XSControl();
		%feature("autodoc", "1");
		Handle_XSControl_WorkSession Session(const Handle_IFSelect_SessionPilot &pilot);
		%feature("autodoc", "1");
		Handle_XSControl_Vars Vars(const Handle_IFSelect_SessionPilot &pilot);

};
%extend XSControl {
	~XSControl() {
	printf("Call custom destructor for instance of XSControl\n");
	}
};

%nodefaultctor XSControl_FuncShape;
class XSControl_FuncShape {
	public:
		%feature("autodoc", "1");
		XSControl_FuncShape();
		%feature("autodoc", "1");
		void Init();
		%feature("autodoc", "1");
		Standard_Integer MoreShapes(const Handle_XSControl_WorkSession &session, Handle_TopTools_HSequenceOfShape & list, const char * name);
		%feature("autodoc", "1");
		Standard_Boolean FileAndVar(const Handle_XSControl_WorkSession &session, const char * file, const char * var, const char * def, TCollection_AsciiString & resfile, TCollection_AsciiString & resvar);

};
%extend XSControl_FuncShape {
	~XSControl_FuncShape() {
	printf("Call custom destructor for instance of XSControl_FuncShape\n");
	}
};