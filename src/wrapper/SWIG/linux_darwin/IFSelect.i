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
%module IFSelect

%include IFSelect_renames.i
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%pythoncode {
import GarbageCollector
};

%include IFSelect_dependencies.i


%include IFSelect_headers.i

typedef MoniTool_Option IFSelect_Option;
typedef MoniTool_Profile IFSelect_Profile;

enum IFSelect_ReturnStatus {
	IFSelect_RetVoid,
	IFSelect_RetDone,
	IFSelect_RetError,
	IFSelect_RetFail,
	IFSelect_RetStop,
	};

enum IFSelect_EditValue {
	IFSelect_Optional,
	IFSelect_Editable,
	IFSelect_EditProtected,
	IFSelect_EditComputed,
	IFSelect_EditRead,
	IFSelect_EditDynamic,
	};

enum IFSelect_PrintFail {
	IFSelect_FailOnly,
	IFSelect_FailAndWarn,
	};

enum IFSelect_PrintCount {
	IFSelect_ItemsByEntity,
	IFSelect_CountByItem,
	IFSelect_ShortByItem,
	IFSelect_ListByItem,
	IFSelect_EntitiesByItem,
	IFSelect_CountSummary,
	IFSelect_GeneralInfo,
	IFSelect_Mapping,
	IFSelect_ResultCount,
	};

enum IFSelect_RemainMode {
	IFSelect_RemainForget,
	IFSelect_RemainCompute,
	IFSelect_RemainDisplay,
	IFSelect_RemainUndo,
	};



%nodefaultctor Handle_IFSelect_SignatureList;
class Handle_IFSelect_SignatureList : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_IFSelect_SignatureList();
		%feature("autodoc", "1");
		Handle_IFSelect_SignatureList(const Handle_IFSelect_SignatureList &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_SignatureList(const IFSelect_SignatureList *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_SignatureList & operator=(const Handle_IFSelect_SignatureList &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_SignatureList & operator=(const IFSelect_SignatureList *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_SignatureList const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IFSelect_SignatureList {
	IFSelect_SignatureList* GetObject() {
	return (IFSelect_SignatureList*)$self->Access();
	}
};
%feature("shadow") Handle_IFSelect_SignatureList::~Handle_IFSelect_SignatureList %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IFSelect_SignatureList {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IFSelect_WorkSession;
class Handle_IFSelect_WorkSession : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_IFSelect_WorkSession();
		%feature("autodoc", "1");
		Handle_IFSelect_WorkSession(const Handle_IFSelect_WorkSession &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_WorkSession(const IFSelect_WorkSession *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_WorkSession & operator=(const Handle_IFSelect_WorkSession &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_WorkSession & operator=(const IFSelect_WorkSession *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_WorkSession const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IFSelect_WorkSession {
	IFSelect_WorkSession* GetObject() {
	return (IFSelect_WorkSession*)$self->Access();
	}
};
%feature("shadow") Handle_IFSelect_WorkSession::~Handle_IFSelect_WorkSession %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IFSelect_WorkSession {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IFSelect_Transformer;
class Handle_IFSelect_Transformer : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_IFSelect_Transformer();
		%feature("autodoc", "1");
		Handle_IFSelect_Transformer(const Handle_IFSelect_Transformer &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_Transformer(const IFSelect_Transformer *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_Transformer & operator=(const Handle_IFSelect_Transformer &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_Transformer & operator=(const IFSelect_Transformer *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_Transformer const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IFSelect_Transformer {
	IFSelect_Transformer* GetObject() {
	return (IFSelect_Transformer*)$self->Access();
	}
};
%feature("shadow") Handle_IFSelect_Transformer::~Handle_IFSelect_Transformer %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IFSelect_Transformer {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IFSelect_TransformStandard;
class Handle_IFSelect_TransformStandard : public Handle_IFSelect_Transformer {
	public:
		%feature("autodoc", "1");
		Handle_IFSelect_TransformStandard();
		%feature("autodoc", "1");
		Handle_IFSelect_TransformStandard(const Handle_IFSelect_TransformStandard &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_TransformStandard(const IFSelect_TransformStandard *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_TransformStandard & operator=(const Handle_IFSelect_TransformStandard &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_TransformStandard & operator=(const IFSelect_TransformStandard *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_TransformStandard const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IFSelect_TransformStandard {
	IFSelect_TransformStandard* GetObject() {
	return (IFSelect_TransformStandard*)$self->Access();
	}
};
%feature("shadow") Handle_IFSelect_TransformStandard::~Handle_IFSelect_TransformStandard %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IFSelect_TransformStandard {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IFSelect_Dispatch;
class Handle_IFSelect_Dispatch : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_IFSelect_Dispatch();
		%feature("autodoc", "1");
		Handle_IFSelect_Dispatch(const Handle_IFSelect_Dispatch &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_Dispatch(const IFSelect_Dispatch *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_Dispatch & operator=(const Handle_IFSelect_Dispatch &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_Dispatch & operator=(const IFSelect_Dispatch *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_Dispatch const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IFSelect_Dispatch {
	IFSelect_Dispatch* GetObject() {
	return (IFSelect_Dispatch*)$self->Access();
	}
};
%feature("shadow") Handle_IFSelect_Dispatch::~Handle_IFSelect_Dispatch %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IFSelect_Dispatch {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IFSelect_AppliedModifiers;
class Handle_IFSelect_AppliedModifiers : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_IFSelect_AppliedModifiers();
		%feature("autodoc", "1");
		Handle_IFSelect_AppliedModifiers(const Handle_IFSelect_AppliedModifiers &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_AppliedModifiers(const IFSelect_AppliedModifiers *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_AppliedModifiers & operator=(const Handle_IFSelect_AppliedModifiers &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_AppliedModifiers & operator=(const IFSelect_AppliedModifiers *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_AppliedModifiers const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IFSelect_AppliedModifiers {
	IFSelect_AppliedModifiers* GetObject() {
	return (IFSelect_AppliedModifiers*)$self->Access();
	}
};
%feature("shadow") Handle_IFSelect_AppliedModifiers::~Handle_IFSelect_AppliedModifiers %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IFSelect_AppliedModifiers {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IFSelect_GeneralModifier;
class Handle_IFSelect_GeneralModifier : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_IFSelect_GeneralModifier();
		%feature("autodoc", "1");
		Handle_IFSelect_GeneralModifier(const Handle_IFSelect_GeneralModifier &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_GeneralModifier(const IFSelect_GeneralModifier *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_GeneralModifier & operator=(const Handle_IFSelect_GeneralModifier &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_GeneralModifier & operator=(const IFSelect_GeneralModifier *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_GeneralModifier const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IFSelect_GeneralModifier {
	IFSelect_GeneralModifier* GetObject() {
	return (IFSelect_GeneralModifier*)$self->Access();
	}
};
%feature("shadow") Handle_IFSelect_GeneralModifier::~Handle_IFSelect_GeneralModifier %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IFSelect_GeneralModifier {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IFSelect_Modifier;
class Handle_IFSelect_Modifier : public Handle_IFSelect_GeneralModifier {
	public:
		%feature("autodoc", "1");
		Handle_IFSelect_Modifier();
		%feature("autodoc", "1");
		Handle_IFSelect_Modifier(const Handle_IFSelect_Modifier &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_Modifier(const IFSelect_Modifier *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_Modifier & operator=(const Handle_IFSelect_Modifier &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_Modifier & operator=(const IFSelect_Modifier *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_Modifier const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IFSelect_Modifier {
	IFSelect_Modifier* GetObject() {
	return (IFSelect_Modifier*)$self->Access();
	}
};
%feature("shadow") Handle_IFSelect_Modifier::~Handle_IFSelect_Modifier %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IFSelect_Modifier {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IFSelect_ModifReorder;
class Handle_IFSelect_ModifReorder : public Handle_IFSelect_Modifier {
	public:
		%feature("autodoc", "1");
		Handle_IFSelect_ModifReorder();
		%feature("autodoc", "1");
		Handle_IFSelect_ModifReorder(const Handle_IFSelect_ModifReorder &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_ModifReorder(const IFSelect_ModifReorder *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_ModifReorder & operator=(const Handle_IFSelect_ModifReorder &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_ModifReorder & operator=(const IFSelect_ModifReorder *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_ModifReorder const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IFSelect_ModifReorder {
	IFSelect_ModifReorder* GetObject() {
	return (IFSelect_ModifReorder*)$self->Access();
	}
};
%feature("shadow") Handle_IFSelect_ModifReorder::~Handle_IFSelect_ModifReorder %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IFSelect_ModifReorder {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IFSelect_Activator;
class Handle_IFSelect_Activator : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_IFSelect_Activator();
		%feature("autodoc", "1");
		Handle_IFSelect_Activator(const Handle_IFSelect_Activator &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_Activator(const IFSelect_Activator *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_Activator & operator=(const Handle_IFSelect_Activator &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_Activator & operator=(const IFSelect_Activator *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_Activator const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IFSelect_Activator {
	IFSelect_Activator* GetObject() {
	return (IFSelect_Activator*)$self->Access();
	}
};
%feature("shadow") Handle_IFSelect_Activator::~Handle_IFSelect_Activator %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IFSelect_Activator {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IFSelect_Selection;
class Handle_IFSelect_Selection : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_IFSelect_Selection();
		%feature("autodoc", "1");
		Handle_IFSelect_Selection(const Handle_IFSelect_Selection &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_Selection(const IFSelect_Selection *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_Selection & operator=(const Handle_IFSelect_Selection &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_Selection & operator=(const IFSelect_Selection *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_Selection const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IFSelect_Selection {
	IFSelect_Selection* GetObject() {
	return (IFSelect_Selection*)$self->Access();
	}
};
%feature("shadow") Handle_IFSelect_Selection::~Handle_IFSelect_Selection %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IFSelect_Selection {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IFSelect_SelectDeduct;
class Handle_IFSelect_SelectDeduct : public Handle_IFSelect_Selection {
	public:
		%feature("autodoc", "1");
		Handle_IFSelect_SelectDeduct();
		%feature("autodoc", "1");
		Handle_IFSelect_SelectDeduct(const Handle_IFSelect_SelectDeduct &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectDeduct(const IFSelect_SelectDeduct *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectDeduct & operator=(const Handle_IFSelect_SelectDeduct &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectDeduct & operator=(const IFSelect_SelectDeduct *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectDeduct const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IFSelect_SelectDeduct {
	IFSelect_SelectDeduct* GetObject() {
	return (IFSelect_SelectDeduct*)$self->Access();
	}
};
%feature("shadow") Handle_IFSelect_SelectDeduct::~Handle_IFSelect_SelectDeduct %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IFSelect_SelectDeduct {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IFSelect_SelectExplore;
class Handle_IFSelect_SelectExplore : public Handle_IFSelect_SelectDeduct {
	public:
		%feature("autodoc", "1");
		Handle_IFSelect_SelectExplore();
		%feature("autodoc", "1");
		Handle_IFSelect_SelectExplore(const Handle_IFSelect_SelectExplore &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectExplore(const IFSelect_SelectExplore *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectExplore & operator=(const Handle_IFSelect_SelectExplore &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectExplore & operator=(const IFSelect_SelectExplore *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectExplore const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IFSelect_SelectExplore {
	IFSelect_SelectExplore* GetObject() {
	return (IFSelect_SelectExplore*)$self->Access();
	}
};
%feature("shadow") Handle_IFSelect_SelectExplore::~Handle_IFSelect_SelectExplore %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IFSelect_SelectExplore {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IFSelect_SelectSignedShared;
class Handle_IFSelect_SelectSignedShared : public Handle_IFSelect_SelectExplore {
	public:
		%feature("autodoc", "1");
		Handle_IFSelect_SelectSignedShared();
		%feature("autodoc", "1");
		Handle_IFSelect_SelectSignedShared(const Handle_IFSelect_SelectSignedShared &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectSignedShared(const IFSelect_SelectSignedShared *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectSignedShared & operator=(const Handle_IFSelect_SelectSignedShared &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectSignedShared & operator=(const IFSelect_SelectSignedShared *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectSignedShared const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IFSelect_SelectSignedShared {
	IFSelect_SelectSignedShared* GetObject() {
	return (IFSelect_SelectSignedShared*)$self->Access();
	}
};
%feature("shadow") Handle_IFSelect_SelectSignedShared::~Handle_IFSelect_SelectSignedShared %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IFSelect_SelectSignedShared {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IFSelect_SelectSignedSharing;
class Handle_IFSelect_SelectSignedSharing : public Handle_IFSelect_SelectExplore {
	public:
		%feature("autodoc", "1");
		Handle_IFSelect_SelectSignedSharing();
		%feature("autodoc", "1");
		Handle_IFSelect_SelectSignedSharing(const Handle_IFSelect_SelectSignedSharing &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectSignedSharing(const IFSelect_SelectSignedSharing *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectSignedSharing & operator=(const Handle_IFSelect_SelectSignedSharing &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectSignedSharing & operator=(const IFSelect_SelectSignedSharing *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectSignedSharing const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IFSelect_SelectSignedSharing {
	IFSelect_SelectSignedSharing* GetObject() {
	return (IFSelect_SelectSignedSharing*)$self->Access();
	}
};
%feature("shadow") Handle_IFSelect_SelectSignedSharing::~Handle_IFSelect_SelectSignedSharing %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IFSelect_SelectSignedSharing {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IFSelect_Signature;
class Handle_IFSelect_Signature : public Handle_Interface_SignType {
	public:
		%feature("autodoc", "1");
		Handle_IFSelect_Signature();
		%feature("autodoc", "1");
		Handle_IFSelect_Signature(const Handle_IFSelect_Signature &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_Signature(const IFSelect_Signature *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_Signature & operator=(const Handle_IFSelect_Signature &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_Signature & operator=(const IFSelect_Signature *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_Signature const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IFSelect_Signature {
	IFSelect_Signature* GetObject() {
	return (IFSelect_Signature*)$self->Access();
	}
};
%feature("shadow") Handle_IFSelect_Signature::~Handle_IFSelect_Signature %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IFSelect_Signature {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IFSelect_DispGlobal;
class Handle_IFSelect_DispGlobal : public Handle_IFSelect_Dispatch {
	public:
		%feature("autodoc", "1");
		Handle_IFSelect_DispGlobal();
		%feature("autodoc", "1");
		Handle_IFSelect_DispGlobal(const Handle_IFSelect_DispGlobal &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_DispGlobal(const IFSelect_DispGlobal *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_DispGlobal & operator=(const Handle_IFSelect_DispGlobal &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_DispGlobal & operator=(const IFSelect_DispGlobal *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_DispGlobal const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IFSelect_DispGlobal {
	IFSelect_DispGlobal* GetObject() {
	return (IFSelect_DispGlobal*)$self->Access();
	}
};
%feature("shadow") Handle_IFSelect_DispGlobal::~Handle_IFSelect_DispGlobal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IFSelect_DispGlobal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IFSelect_SessionDumper;
class Handle_IFSelect_SessionDumper : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_IFSelect_SessionDumper();
		%feature("autodoc", "1");
		Handle_IFSelect_SessionDumper(const Handle_IFSelect_SessionDumper &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_SessionDumper(const IFSelect_SessionDumper *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_SessionDumper & operator=(const Handle_IFSelect_SessionDumper &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_SessionDumper & operator=(const IFSelect_SessionDumper *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_SessionDumper const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IFSelect_SessionDumper {
	IFSelect_SessionDumper* GetObject() {
	return (IFSelect_SessionDumper*)$self->Access();
	}
};
%feature("shadow") Handle_IFSelect_SessionDumper::~Handle_IFSelect_SessionDumper %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IFSelect_SessionDumper {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IFSelect_SelectExtract;
class Handle_IFSelect_SelectExtract : public Handle_IFSelect_SelectDeduct {
	public:
		%feature("autodoc", "1");
		Handle_IFSelect_SelectExtract();
		%feature("autodoc", "1");
		Handle_IFSelect_SelectExtract(const Handle_IFSelect_SelectExtract &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectExtract(const IFSelect_SelectExtract *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectExtract & operator=(const Handle_IFSelect_SelectExtract &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectExtract & operator=(const IFSelect_SelectExtract *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectExtract const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IFSelect_SelectExtract {
	IFSelect_SelectExtract* GetObject() {
	return (IFSelect_SelectExtract*)$self->Access();
	}
};
%feature("shadow") Handle_IFSelect_SelectExtract::~Handle_IFSelect_SelectExtract %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IFSelect_SelectExtract {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IFSelect_SelectUnknownEntities;
class Handle_IFSelect_SelectUnknownEntities : public Handle_IFSelect_SelectExtract {
	public:
		%feature("autodoc", "1");
		Handle_IFSelect_SelectUnknownEntities();
		%feature("autodoc", "1");
		Handle_IFSelect_SelectUnknownEntities(const Handle_IFSelect_SelectUnknownEntities &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectUnknownEntities(const IFSelect_SelectUnknownEntities *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectUnknownEntities & operator=(const Handle_IFSelect_SelectUnknownEntities &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectUnknownEntities & operator=(const IFSelect_SelectUnknownEntities *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectUnknownEntities const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IFSelect_SelectUnknownEntities {
	IFSelect_SelectUnknownEntities* GetObject() {
	return (IFSelect_SelectUnknownEntities*)$self->Access();
	}
};
%feature("shadow") Handle_IFSelect_SelectUnknownEntities::~Handle_IFSelect_SelectUnknownEntities %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IFSelect_SelectUnknownEntities {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IFSelect_ModifEditForm;
class Handle_IFSelect_ModifEditForm : public Handle_IFSelect_Modifier {
	public:
		%feature("autodoc", "1");
		Handle_IFSelect_ModifEditForm();
		%feature("autodoc", "1");
		Handle_IFSelect_ModifEditForm(const Handle_IFSelect_ModifEditForm &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_ModifEditForm(const IFSelect_ModifEditForm *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_ModifEditForm & operator=(const Handle_IFSelect_ModifEditForm &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_ModifEditForm & operator=(const IFSelect_ModifEditForm *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_ModifEditForm const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IFSelect_ModifEditForm {
	IFSelect_ModifEditForm* GetObject() {
	return (IFSelect_ModifEditForm*)$self->Access();
	}
};
%feature("shadow") Handle_IFSelect_ModifEditForm::~Handle_IFSelect_ModifEditForm %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IFSelect_ModifEditForm {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IFSelect_ListEditor;
class Handle_IFSelect_ListEditor : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_IFSelect_ListEditor();
		%feature("autodoc", "1");
		Handle_IFSelect_ListEditor(const Handle_IFSelect_ListEditor &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_ListEditor(const IFSelect_ListEditor *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_ListEditor & operator=(const Handle_IFSelect_ListEditor &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_ListEditor & operator=(const IFSelect_ListEditor *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_ListEditor const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IFSelect_ListEditor {
	IFSelect_ListEditor* GetObject() {
	return (IFSelect_ListEditor*)$self->Access();
	}
};
%feature("shadow") Handle_IFSelect_ListEditor::~Handle_IFSelect_ListEditor %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IFSelect_ListEditor {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IFSelect_SelectErrorEntities;
class Handle_IFSelect_SelectErrorEntities : public Handle_IFSelect_SelectExtract {
	public:
		%feature("autodoc", "1");
		Handle_IFSelect_SelectErrorEntities();
		%feature("autodoc", "1");
		Handle_IFSelect_SelectErrorEntities(const Handle_IFSelect_SelectErrorEntities &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectErrorEntities(const IFSelect_SelectErrorEntities *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectErrorEntities & operator=(const Handle_IFSelect_SelectErrorEntities &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectErrorEntities & operator=(const IFSelect_SelectErrorEntities *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectErrorEntities const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IFSelect_SelectErrorEntities {
	IFSelect_SelectErrorEntities* GetObject() {
	return (IFSelect_SelectErrorEntities*)$self->Access();
	}
};
%feature("shadow") Handle_IFSelect_SelectErrorEntities::~Handle_IFSelect_SelectErrorEntities %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IFSelect_SelectErrorEntities {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IFSelect_IntParam;
class Handle_IFSelect_IntParam : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_IFSelect_IntParam();
		%feature("autodoc", "1");
		Handle_IFSelect_IntParam(const Handle_IFSelect_IntParam &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_IntParam(const IFSelect_IntParam *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_IntParam & operator=(const Handle_IFSelect_IntParam &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_IntParam & operator=(const IFSelect_IntParam *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_IntParam const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IFSelect_IntParam {
	IFSelect_IntParam* GetObject() {
	return (IFSelect_IntParam*)$self->Access();
	}
};
%feature("shadow") Handle_IFSelect_IntParam::~Handle_IFSelect_IntParam %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IFSelect_IntParam {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IFSelect_SignCounter;
class Handle_IFSelect_SignCounter : public Handle_IFSelect_SignatureList {
	public:
		%feature("autodoc", "1");
		Handle_IFSelect_SignCounter();
		%feature("autodoc", "1");
		Handle_IFSelect_SignCounter(const Handle_IFSelect_SignCounter &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_SignCounter(const IFSelect_SignCounter *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_SignCounter & operator=(const Handle_IFSelect_SignCounter &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_SignCounter & operator=(const IFSelect_SignCounter *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_SignCounter const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IFSelect_SignCounter {
	IFSelect_SignCounter* GetObject() {
	return (IFSelect_SignCounter*)$self->Access();
	}
};
%feature("shadow") Handle_IFSelect_SignCounter::~Handle_IFSelect_SignCounter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IFSelect_SignCounter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IFSelect_SelectFlag;
class Handle_IFSelect_SelectFlag : public Handle_IFSelect_SelectExtract {
	public:
		%feature("autodoc", "1");
		Handle_IFSelect_SelectFlag();
		%feature("autodoc", "1");
		Handle_IFSelect_SelectFlag(const Handle_IFSelect_SelectFlag &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectFlag(const IFSelect_SelectFlag *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectFlag & operator=(const Handle_IFSelect_SelectFlag &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectFlag & operator=(const IFSelect_SelectFlag *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectFlag const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IFSelect_SelectFlag {
	IFSelect_SelectFlag* GetObject() {
	return (IFSelect_SelectFlag*)$self->Access();
	}
};
%feature("shadow") Handle_IFSelect_SelectFlag::~Handle_IFSelect_SelectFlag %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IFSelect_SelectFlag {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IFSelect_PacketList;
class Handle_IFSelect_PacketList : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_IFSelect_PacketList();
		%feature("autodoc", "1");
		Handle_IFSelect_PacketList(const Handle_IFSelect_PacketList &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_PacketList(const IFSelect_PacketList *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_PacketList & operator=(const Handle_IFSelect_PacketList &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_PacketList & operator=(const IFSelect_PacketList *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_PacketList const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IFSelect_PacketList {
	IFSelect_PacketList* GetObject() {
	return (IFSelect_PacketList*)$self->Access();
	}
};
%feature("shadow") Handle_IFSelect_PacketList::~Handle_IFSelect_PacketList %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IFSelect_PacketList {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IFSelect_HSeqOfSelection;
class Handle_IFSelect_HSeqOfSelection : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_IFSelect_HSeqOfSelection();
		%feature("autodoc", "1");
		Handle_IFSelect_HSeqOfSelection(const Handle_IFSelect_HSeqOfSelection &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_HSeqOfSelection(const IFSelect_HSeqOfSelection *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_HSeqOfSelection & operator=(const Handle_IFSelect_HSeqOfSelection &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_HSeqOfSelection & operator=(const IFSelect_HSeqOfSelection *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_HSeqOfSelection const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IFSelect_HSeqOfSelection {
	IFSelect_HSeqOfSelection* GetObject() {
	return (IFSelect_HSeqOfSelection*)$self->Access();
	}
};
%feature("shadow") Handle_IFSelect_HSeqOfSelection::~Handle_IFSelect_HSeqOfSelection %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IFSelect_HSeqOfSelection {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IFSelect_SelectCombine;
class Handle_IFSelect_SelectCombine : public Handle_IFSelect_Selection {
	public:
		%feature("autodoc", "1");
		Handle_IFSelect_SelectCombine();
		%feature("autodoc", "1");
		Handle_IFSelect_SelectCombine(const Handle_IFSelect_SelectCombine &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectCombine(const IFSelect_SelectCombine *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectCombine & operator=(const Handle_IFSelect_SelectCombine &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectCombine & operator=(const IFSelect_SelectCombine *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectCombine const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IFSelect_SelectCombine {
	IFSelect_SelectCombine* GetObject() {
	return (IFSelect_SelectCombine*)$self->Access();
	}
};
%feature("shadow") Handle_IFSelect_SelectCombine::~Handle_IFSelect_SelectCombine %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IFSelect_SelectCombine {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IFSelect_SelectSuite;
class Handle_IFSelect_SelectSuite : public Handle_IFSelect_SelectDeduct {
	public:
		%feature("autodoc", "1");
		Handle_IFSelect_SelectSuite();
		%feature("autodoc", "1");
		Handle_IFSelect_SelectSuite(const Handle_IFSelect_SelectSuite &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectSuite(const IFSelect_SelectSuite *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectSuite & operator=(const Handle_IFSelect_SelectSuite &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectSuite & operator=(const IFSelect_SelectSuite *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectSuite const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IFSelect_SelectSuite {
	IFSelect_SelectSuite* GetObject() {
	return (IFSelect_SelectSuite*)$self->Access();
	}
};
%feature("shadow") Handle_IFSelect_SelectSuite::~Handle_IFSelect_SelectSuite %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IFSelect_SelectSuite {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IFSelect_SequenceNodeOfSequenceOfGeneralModifier;
class Handle_IFSelect_SequenceNodeOfSequenceOfGeneralModifier : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_IFSelect_SequenceNodeOfSequenceOfGeneralModifier();
		%feature("autodoc", "1");
		Handle_IFSelect_SequenceNodeOfSequenceOfGeneralModifier(const Handle_IFSelect_SequenceNodeOfSequenceOfGeneralModifier &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_SequenceNodeOfSequenceOfGeneralModifier(const IFSelect_SequenceNodeOfSequenceOfGeneralModifier *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_SequenceNodeOfSequenceOfGeneralModifier & operator=(const Handle_IFSelect_SequenceNodeOfSequenceOfGeneralModifier &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_SequenceNodeOfSequenceOfGeneralModifier & operator=(const IFSelect_SequenceNodeOfSequenceOfGeneralModifier *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_SequenceNodeOfSequenceOfGeneralModifier const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IFSelect_SequenceNodeOfSequenceOfGeneralModifier {
	IFSelect_SequenceNodeOfSequenceOfGeneralModifier* GetObject() {
	return (IFSelect_SequenceNodeOfSequenceOfGeneralModifier*)$self->Access();
	}
};
%feature("shadow") Handle_IFSelect_SequenceNodeOfSequenceOfGeneralModifier::~Handle_IFSelect_SequenceNodeOfSequenceOfGeneralModifier %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IFSelect_SequenceNodeOfSequenceOfGeneralModifier {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IFSelect_SignType;
class Handle_IFSelect_SignType : public Handle_IFSelect_Signature {
	public:
		%feature("autodoc", "1");
		Handle_IFSelect_SignType();
		%feature("autodoc", "1");
		Handle_IFSelect_SignType(const Handle_IFSelect_SignType &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_SignType(const IFSelect_SignType *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_SignType & operator=(const Handle_IFSelect_SignType &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_SignType & operator=(const IFSelect_SignType *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_SignType const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IFSelect_SignType {
	IFSelect_SignType* GetObject() {
	return (IFSelect_SignType*)$self->Access();
	}
};
%feature("shadow") Handle_IFSelect_SignType::~Handle_IFSelect_SignType %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IFSelect_SignType {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IFSelect_SelectControl;
class Handle_IFSelect_SelectControl : public Handle_IFSelect_Selection {
	public:
		%feature("autodoc", "1");
		Handle_IFSelect_SelectControl();
		%feature("autodoc", "1");
		Handle_IFSelect_SelectControl(const Handle_IFSelect_SelectControl &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectControl(const IFSelect_SelectControl *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectControl & operator=(const Handle_IFSelect_SelectControl &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectControl & operator=(const IFSelect_SelectControl *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectControl const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IFSelect_SelectControl {
	IFSelect_SelectControl* GetObject() {
	return (IFSelect_SelectControl*)$self->Access();
	}
};
%feature("shadow") Handle_IFSelect_SelectControl::~Handle_IFSelect_SelectControl %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IFSelect_SelectControl {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IFSelect_WorkLibrary;
class Handle_IFSelect_WorkLibrary : public Handle_Standard_Transient {
	public:
		%feature("autodoc", "1");
		Handle_IFSelect_WorkLibrary();
		%feature("autodoc", "1");
		Handle_IFSelect_WorkLibrary(const Handle_IFSelect_WorkLibrary &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_WorkLibrary(const IFSelect_WorkLibrary *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_WorkLibrary & operator=(const Handle_IFSelect_WorkLibrary &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_WorkLibrary & operator=(const IFSelect_WorkLibrary *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_WorkLibrary const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IFSelect_WorkLibrary {
	IFSelect_WorkLibrary* GetObject() {
	return (IFSelect_WorkLibrary*)$self->Access();
	}
};
%feature("shadow") Handle_IFSelect_WorkLibrary::~Handle_IFSelect_WorkLibrary %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IFSelect_WorkLibrary {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IFSelect_SelectIntersection;
class Handle_IFSelect_SelectIntersection : public Handle_IFSelect_SelectCombine {
	public:
		%feature("autodoc", "1");
		Handle_IFSelect_SelectIntersection();
		%feature("autodoc", "1");
		Handle_IFSelect_SelectIntersection(const Handle_IFSelect_SelectIntersection &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectIntersection(const IFSelect_SelectIntersection *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectIntersection & operator=(const Handle_IFSelect_SelectIntersection &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectIntersection & operator=(const IFSelect_SelectIntersection *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectIntersection const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IFSelect_SelectIntersection {
	IFSelect_SelectIntersection* GetObject() {
	return (IFSelect_SelectIntersection*)$self->Access();
	}
};
%feature("shadow") Handle_IFSelect_SelectIntersection::~Handle_IFSelect_SelectIntersection %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IFSelect_SelectIntersection {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IFSelect_CheckCounter;
class Handle_IFSelect_CheckCounter : public Handle_IFSelect_SignatureList {
	public:
		%feature("autodoc", "1");
		Handle_IFSelect_CheckCounter();
		%feature("autodoc", "1");
		Handle_IFSelect_CheckCounter(const Handle_IFSelect_CheckCounter &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_CheckCounter(const IFSelect_CheckCounter *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_CheckCounter & operator=(const Handle_IFSelect_CheckCounter &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_CheckCounter & operator=(const IFSelect_CheckCounter *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_CheckCounter const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IFSelect_CheckCounter {
	IFSelect_CheckCounter* GetObject() {
	return (IFSelect_CheckCounter*)$self->Access();
	}
};
%feature("shadow") Handle_IFSelect_CheckCounter::~Handle_IFSelect_CheckCounter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IFSelect_CheckCounter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IFSelect_SelectBase;
class Handle_IFSelect_SelectBase : public Handle_IFSelect_Selection {
	public:
		%feature("autodoc", "1");
		Handle_IFSelect_SelectBase();
		%feature("autodoc", "1");
		Handle_IFSelect_SelectBase(const Handle_IFSelect_SelectBase &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectBase(const IFSelect_SelectBase *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectBase & operator=(const Handle_IFSelect_SelectBase &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectBase & operator=(const IFSelect_SelectBase *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectBase const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IFSelect_SelectBase {
	IFSelect_SelectBase* GetObject() {
	return (IFSelect_SelectBase*)$self->Access();
	}
};
%feature("shadow") Handle_IFSelect_SelectBase::~Handle_IFSelect_SelectBase %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IFSelect_SelectBase {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IFSelect_SelectModelRoots;
class Handle_IFSelect_SelectModelRoots : public Handle_IFSelect_SelectBase {
	public:
		%feature("autodoc", "1");
		Handle_IFSelect_SelectModelRoots();
		%feature("autodoc", "1");
		Handle_IFSelect_SelectModelRoots(const Handle_IFSelect_SelectModelRoots &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectModelRoots(const IFSelect_SelectModelRoots *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectModelRoots & operator=(const Handle_IFSelect_SelectModelRoots &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectModelRoots & operator=(const IFSelect_SelectModelRoots *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectModelRoots const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IFSelect_SelectModelRoots {
	IFSelect_SelectModelRoots* GetObject() {
	return (IFSelect_SelectModelRoots*)$self->Access();
	}
};
%feature("shadow") Handle_IFSelect_SelectModelRoots::~Handle_IFSelect_SelectModelRoots %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IFSelect_SelectModelRoots {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IFSelect_DispPerSignature;
class Handle_IFSelect_DispPerSignature : public Handle_IFSelect_Dispatch {
	public:
		%feature("autodoc", "1");
		Handle_IFSelect_DispPerSignature();
		%feature("autodoc", "1");
		Handle_IFSelect_DispPerSignature(const Handle_IFSelect_DispPerSignature &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_DispPerSignature(const IFSelect_DispPerSignature *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_DispPerSignature & operator=(const Handle_IFSelect_DispPerSignature &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_DispPerSignature & operator=(const IFSelect_DispPerSignature *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_DispPerSignature const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IFSelect_DispPerSignature {
	IFSelect_DispPerSignature* GetObject() {
	return (IFSelect_DispPerSignature*)$self->Access();
	}
};
%feature("shadow") Handle_IFSelect_DispPerSignature::~Handle_IFSelect_DispPerSignature %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IFSelect_DispPerSignature {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IFSelect_SelectShared;
class Handle_IFSelect_SelectShared : public Handle_IFSelect_SelectDeduct {
	public:
		%feature("autodoc", "1");
		Handle_IFSelect_SelectShared();
		%feature("autodoc", "1");
		Handle_IFSelect_SelectShared(const Handle_IFSelect_SelectShared &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectShared(const IFSelect_SelectShared *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectShared & operator=(const Handle_IFSelect_SelectShared &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectShared & operator=(const IFSelect_SelectShared *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectShared const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IFSelect_SelectShared {
	IFSelect_SelectShared* GetObject() {
	return (IFSelect_SelectShared*)$self->Access();
	}
};
%feature("shadow") Handle_IFSelect_SelectShared::~Handle_IFSelect_SelectShared %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IFSelect_SelectShared {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IFSelect_SelectSignature;
class Handle_IFSelect_SelectSignature : public Handle_IFSelect_SelectExtract {
	public:
		%feature("autodoc", "1");
		Handle_IFSelect_SelectSignature();
		%feature("autodoc", "1");
		Handle_IFSelect_SelectSignature(const Handle_IFSelect_SelectSignature &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectSignature(const IFSelect_SelectSignature *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectSignature & operator=(const Handle_IFSelect_SelectSignature &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectSignature & operator=(const IFSelect_SelectSignature *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectSignature const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IFSelect_SelectSignature {
	IFSelect_SelectSignature* GetObject() {
	return (IFSelect_SelectSignature*)$self->Access();
	}
};
%feature("shadow") Handle_IFSelect_SelectSignature::~Handle_IFSelect_SelectSignature %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IFSelect_SelectSignature {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IFSelect_SelectSharing;
class Handle_IFSelect_SelectSharing : public Handle_IFSelect_SelectDeduct {
	public:
		%feature("autodoc", "1");
		Handle_IFSelect_SelectSharing();
		%feature("autodoc", "1");
		Handle_IFSelect_SelectSharing(const Handle_IFSelect_SelectSharing &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectSharing(const IFSelect_SelectSharing *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectSharing & operator=(const Handle_IFSelect_SelectSharing &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectSharing & operator=(const IFSelect_SelectSharing *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectSharing const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IFSelect_SelectSharing {
	IFSelect_SelectSharing* GetObject() {
	return (IFSelect_SelectSharing*)$self->Access();
	}
};
%feature("shadow") Handle_IFSelect_SelectSharing::~Handle_IFSelect_SelectSharing %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IFSelect_SelectSharing {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IFSelect_EditForm;
class Handle_IFSelect_EditForm : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_IFSelect_EditForm();
		%feature("autodoc", "1");
		Handle_IFSelect_EditForm(const Handle_IFSelect_EditForm &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_EditForm(const IFSelect_EditForm *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_EditForm & operator=(const Handle_IFSelect_EditForm &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_EditForm & operator=(const IFSelect_EditForm *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_EditForm const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IFSelect_EditForm {
	IFSelect_EditForm* GetObject() {
	return (IFSelect_EditForm*)$self->Access();
	}
};
%feature("shadow") Handle_IFSelect_EditForm::~Handle_IFSelect_EditForm %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IFSelect_EditForm {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IFSelect_DispPerFiles;
class Handle_IFSelect_DispPerFiles : public Handle_IFSelect_Dispatch {
	public:
		%feature("autodoc", "1");
		Handle_IFSelect_DispPerFiles();
		%feature("autodoc", "1");
		Handle_IFSelect_DispPerFiles(const Handle_IFSelect_DispPerFiles &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_DispPerFiles(const IFSelect_DispPerFiles *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_DispPerFiles & operator=(const Handle_IFSelect_DispPerFiles &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_DispPerFiles & operator=(const IFSelect_DispPerFiles *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_DispPerFiles const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IFSelect_DispPerFiles {
	IFSelect_DispPerFiles* GetObject() {
	return (IFSelect_DispPerFiles*)$self->Access();
	}
};
%feature("shadow") Handle_IFSelect_DispPerFiles::~Handle_IFSelect_DispPerFiles %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IFSelect_DispPerFiles {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IFSelect_DispPerOne;
class Handle_IFSelect_DispPerOne : public Handle_IFSelect_Dispatch {
	public:
		%feature("autodoc", "1");
		Handle_IFSelect_DispPerOne();
		%feature("autodoc", "1");
		Handle_IFSelect_DispPerOne(const Handle_IFSelect_DispPerOne &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_DispPerOne(const IFSelect_DispPerOne *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_DispPerOne & operator=(const Handle_IFSelect_DispPerOne &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_DispPerOne & operator=(const IFSelect_DispPerOne *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_DispPerOne const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IFSelect_DispPerOne {
	IFSelect_DispPerOne* GetObject() {
	return (IFSelect_DispPerOne*)$self->Access();
	}
};
%feature("shadow") Handle_IFSelect_DispPerOne::~Handle_IFSelect_DispPerOne %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IFSelect_DispPerOne {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IFSelect_SelectIncorrectEntities;
class Handle_IFSelect_SelectIncorrectEntities : public Handle_IFSelect_SelectFlag {
	public:
		%feature("autodoc", "1");
		Handle_IFSelect_SelectIncorrectEntities();
		%feature("autodoc", "1");
		Handle_IFSelect_SelectIncorrectEntities(const Handle_IFSelect_SelectIncorrectEntities &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectIncorrectEntities(const IFSelect_SelectIncorrectEntities *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectIncorrectEntities & operator=(const Handle_IFSelect_SelectIncorrectEntities &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectIncorrectEntities & operator=(const IFSelect_SelectIncorrectEntities *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectIncorrectEntities const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IFSelect_SelectIncorrectEntities {
	IFSelect_SelectIncorrectEntities* GetObject() {
	return (IFSelect_SelectIncorrectEntities*)$self->Access();
	}
};
%feature("shadow") Handle_IFSelect_SelectIncorrectEntities::~Handle_IFSelect_SelectIncorrectEntities %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IFSelect_SelectIncorrectEntities {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IFSelect_SelectAnyList;
class Handle_IFSelect_SelectAnyList : public Handle_IFSelect_SelectDeduct {
	public:
		%feature("autodoc", "1");
		Handle_IFSelect_SelectAnyList();
		%feature("autodoc", "1");
		Handle_IFSelect_SelectAnyList(const Handle_IFSelect_SelectAnyList &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectAnyList(const IFSelect_SelectAnyList *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectAnyList & operator=(const Handle_IFSelect_SelectAnyList &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectAnyList & operator=(const IFSelect_SelectAnyList *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectAnyList const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IFSelect_SelectAnyList {
	IFSelect_SelectAnyList* GetObject() {
	return (IFSelect_SelectAnyList*)$self->Access();
	}
};
%feature("shadow") Handle_IFSelect_SelectAnyList::~Handle_IFSelect_SelectAnyList %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IFSelect_SelectAnyList {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IFSelect_SelectInList;
class Handle_IFSelect_SelectInList : public Handle_IFSelect_SelectAnyList {
	public:
		%feature("autodoc", "1");
		Handle_IFSelect_SelectInList();
		%feature("autodoc", "1");
		Handle_IFSelect_SelectInList(const Handle_IFSelect_SelectInList &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectInList(const IFSelect_SelectInList *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectInList & operator=(const Handle_IFSelect_SelectInList &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectInList & operator=(const IFSelect_SelectInList *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectInList const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IFSelect_SelectInList {
	IFSelect_SelectInList* GetObject() {
	return (IFSelect_SelectInList*)$self->Access();
	}
};
%feature("shadow") Handle_IFSelect_SelectInList::~Handle_IFSelect_SelectInList %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IFSelect_SelectInList {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IFSelect_ShareOut;
class Handle_IFSelect_ShareOut : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_IFSelect_ShareOut();
		%feature("autodoc", "1");
		Handle_IFSelect_ShareOut(const Handle_IFSelect_ShareOut &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_ShareOut(const IFSelect_ShareOut *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_ShareOut & operator=(const Handle_IFSelect_ShareOut &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_ShareOut & operator=(const IFSelect_ShareOut *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_ShareOut const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IFSelect_ShareOut {
	IFSelect_ShareOut* GetObject() {
	return (IFSelect_ShareOut*)$self->Access();
	}
};
%feature("shadow") Handle_IFSelect_ShareOut::~Handle_IFSelect_ShareOut %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IFSelect_ShareOut {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IFSelect_SelectAnyType;
class Handle_IFSelect_SelectAnyType : public Handle_IFSelect_SelectExtract {
	public:
		%feature("autodoc", "1");
		Handle_IFSelect_SelectAnyType();
		%feature("autodoc", "1");
		Handle_IFSelect_SelectAnyType(const Handle_IFSelect_SelectAnyType &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectAnyType(const IFSelect_SelectAnyType *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectAnyType & operator=(const Handle_IFSelect_SelectAnyType &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectAnyType & operator=(const IFSelect_SelectAnyType *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectAnyType const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IFSelect_SelectAnyType {
	IFSelect_SelectAnyType* GetObject() {
	return (IFSelect_SelectAnyType*)$self->Access();
	}
};
%feature("shadow") Handle_IFSelect_SelectAnyType::~Handle_IFSelect_SelectAnyType %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IFSelect_SelectAnyType {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IFSelect_SelectType;
class Handle_IFSelect_SelectType : public Handle_IFSelect_SelectAnyType {
	public:
		%feature("autodoc", "1");
		Handle_IFSelect_SelectType();
		%feature("autodoc", "1");
		Handle_IFSelect_SelectType(const Handle_IFSelect_SelectType &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectType(const IFSelect_SelectType *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectType & operator=(const Handle_IFSelect_SelectType &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectType & operator=(const IFSelect_SelectType *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectType const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IFSelect_SelectType {
	IFSelect_SelectType* GetObject() {
	return (IFSelect_SelectType*)$self->Access();
	}
};
%feature("shadow") Handle_IFSelect_SelectType::~Handle_IFSelect_SelectType %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IFSelect_SelectType {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IFSelect_SelectModelEntities;
class Handle_IFSelect_SelectModelEntities : public Handle_IFSelect_SelectBase {
	public:
		%feature("autodoc", "1");
		Handle_IFSelect_SelectModelEntities();
		%feature("autodoc", "1");
		Handle_IFSelect_SelectModelEntities(const Handle_IFSelect_SelectModelEntities &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectModelEntities(const IFSelect_SelectModelEntities *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectModelEntities & operator=(const Handle_IFSelect_SelectModelEntities &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectModelEntities & operator=(const IFSelect_SelectModelEntities *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectModelEntities const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IFSelect_SelectModelEntities {
	IFSelect_SelectModelEntities* GetObject() {
	return (IFSelect_SelectModelEntities*)$self->Access();
	}
};
%feature("shadow") Handle_IFSelect_SelectModelEntities::~Handle_IFSelect_SelectModelEntities %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IFSelect_SelectModelEntities {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IFSelect_SelectUnion;
class Handle_IFSelect_SelectUnion : public Handle_IFSelect_SelectCombine {
	public:
		%feature("autodoc", "1");
		Handle_IFSelect_SelectUnion();
		%feature("autodoc", "1");
		Handle_IFSelect_SelectUnion(const Handle_IFSelect_SelectUnion &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectUnion(const IFSelect_SelectUnion *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectUnion & operator=(const Handle_IFSelect_SelectUnion &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectUnion & operator=(const IFSelect_SelectUnion *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectUnion const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IFSelect_SelectUnion {
	IFSelect_SelectUnion* GetObject() {
	return (IFSelect_SelectUnion*)$self->Access();
	}
};
%feature("shadow") Handle_IFSelect_SelectUnion::~Handle_IFSelect_SelectUnion %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IFSelect_SelectUnion {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IFSelect_SignCategory;
class Handle_IFSelect_SignCategory : public Handle_IFSelect_Signature {
	public:
		%feature("autodoc", "1");
		Handle_IFSelect_SignCategory();
		%feature("autodoc", "1");
		Handle_IFSelect_SignCategory(const Handle_IFSelect_SignCategory &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_SignCategory(const IFSelect_SignCategory *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_SignCategory & operator=(const Handle_IFSelect_SignCategory &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_SignCategory & operator=(const IFSelect_SignCategory *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_SignCategory const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IFSelect_SignCategory {
	IFSelect_SignCategory* GetObject() {
	return (IFSelect_SignCategory*)$self->Access();
	}
};
%feature("shadow") Handle_IFSelect_SignCategory::~Handle_IFSelect_SignCategory %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IFSelect_SignCategory {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IFSelect_SequenceNodeOfTSeqOfDispatch;
class Handle_IFSelect_SequenceNodeOfTSeqOfDispatch : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_IFSelect_SequenceNodeOfTSeqOfDispatch();
		%feature("autodoc", "1");
		Handle_IFSelect_SequenceNodeOfTSeqOfDispatch(const Handle_IFSelect_SequenceNodeOfTSeqOfDispatch &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_SequenceNodeOfTSeqOfDispatch(const IFSelect_SequenceNodeOfTSeqOfDispatch *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_SequenceNodeOfTSeqOfDispatch & operator=(const Handle_IFSelect_SequenceNodeOfTSeqOfDispatch &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_SequenceNodeOfTSeqOfDispatch & operator=(const IFSelect_SequenceNodeOfTSeqOfDispatch *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_SequenceNodeOfTSeqOfDispatch const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IFSelect_SequenceNodeOfTSeqOfDispatch {
	IFSelect_SequenceNodeOfTSeqOfDispatch* GetObject() {
	return (IFSelect_SequenceNodeOfTSeqOfDispatch*)$self->Access();
	}
};
%feature("shadow") Handle_IFSelect_SequenceNodeOfTSeqOfDispatch::~Handle_IFSelect_SequenceNodeOfTSeqOfDispatch %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IFSelect_SequenceNodeOfTSeqOfDispatch {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IFSelect_SignMultiple;
class Handle_IFSelect_SignMultiple : public Handle_IFSelect_Signature {
	public:
		%feature("autodoc", "1");
		Handle_IFSelect_SignMultiple();
		%feature("autodoc", "1");
		Handle_IFSelect_SignMultiple(const Handle_IFSelect_SignMultiple &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_SignMultiple(const IFSelect_SignMultiple *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_SignMultiple & operator=(const Handle_IFSelect_SignMultiple &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_SignMultiple & operator=(const IFSelect_SignMultiple *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_SignMultiple const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IFSelect_SignMultiple {
	IFSelect_SignMultiple* GetObject() {
	return (IFSelect_SignMultiple*)$self->Access();
	}
};
%feature("shadow") Handle_IFSelect_SignMultiple::~Handle_IFSelect_SignMultiple %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IFSelect_SignMultiple {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IFSelect_GraphCounter;
class Handle_IFSelect_GraphCounter : public Handle_IFSelect_SignCounter {
	public:
		%feature("autodoc", "1");
		Handle_IFSelect_GraphCounter();
		%feature("autodoc", "1");
		Handle_IFSelect_GraphCounter(const Handle_IFSelect_GraphCounter &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_GraphCounter(const IFSelect_GraphCounter *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_GraphCounter & operator=(const Handle_IFSelect_GraphCounter &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_GraphCounter & operator=(const IFSelect_GraphCounter *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_GraphCounter const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IFSelect_GraphCounter {
	IFSelect_GraphCounter* GetObject() {
	return (IFSelect_GraphCounter*)$self->Access();
	}
};
%feature("shadow") Handle_IFSelect_GraphCounter::~Handle_IFSelect_GraphCounter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IFSelect_GraphCounter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IFSelect_SelectDiff;
class Handle_IFSelect_SelectDiff : public Handle_IFSelect_SelectControl {
	public:
		%feature("autodoc", "1");
		Handle_IFSelect_SelectDiff();
		%feature("autodoc", "1");
		Handle_IFSelect_SelectDiff(const Handle_IFSelect_SelectDiff &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectDiff(const IFSelect_SelectDiff *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectDiff & operator=(const Handle_IFSelect_SelectDiff &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectDiff & operator=(const IFSelect_SelectDiff *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectDiff const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IFSelect_SelectDiff {
	IFSelect_SelectDiff* GetObject() {
	return (IFSelect_SelectDiff*)$self->Access();
	}
};
%feature("shadow") Handle_IFSelect_SelectDiff::~Handle_IFSelect_SelectDiff %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IFSelect_SelectDiff {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IFSelect_SequenceNodeOfSequenceOfAppliedModifiers;
class Handle_IFSelect_SequenceNodeOfSequenceOfAppliedModifiers : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_IFSelect_SequenceNodeOfSequenceOfAppliedModifiers();
		%feature("autodoc", "1");
		Handle_IFSelect_SequenceNodeOfSequenceOfAppliedModifiers(const Handle_IFSelect_SequenceNodeOfSequenceOfAppliedModifiers &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_SequenceNodeOfSequenceOfAppliedModifiers(const IFSelect_SequenceNodeOfSequenceOfAppliedModifiers *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_SequenceNodeOfSequenceOfAppliedModifiers & operator=(const Handle_IFSelect_SequenceNodeOfSequenceOfAppliedModifiers &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_SequenceNodeOfSequenceOfAppliedModifiers & operator=(const IFSelect_SequenceNodeOfSequenceOfAppliedModifiers *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_SequenceNodeOfSequenceOfAppliedModifiers const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IFSelect_SequenceNodeOfSequenceOfAppliedModifiers {
	IFSelect_SequenceNodeOfSequenceOfAppliedModifiers* GetObject() {
	return (IFSelect_SequenceNodeOfSequenceOfAppliedModifiers*)$self->Access();
	}
};
%feature("shadow") Handle_IFSelect_SequenceNodeOfSequenceOfAppliedModifiers::~Handle_IFSelect_SequenceNodeOfSequenceOfAppliedModifiers %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IFSelect_SequenceNodeOfSequenceOfAppliedModifiers {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IFSelect_SignAncestor;
class Handle_IFSelect_SignAncestor : public Handle_IFSelect_SignType {
	public:
		%feature("autodoc", "1");
		Handle_IFSelect_SignAncestor();
		%feature("autodoc", "1");
		Handle_IFSelect_SignAncestor(const Handle_IFSelect_SignAncestor &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_SignAncestor(const IFSelect_SignAncestor *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_SignAncestor & operator=(const Handle_IFSelect_SignAncestor &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_SignAncestor & operator=(const IFSelect_SignAncestor *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_SignAncestor const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IFSelect_SignAncestor {
	IFSelect_SignAncestor* GetObject() {
	return (IFSelect_SignAncestor*)$self->Access();
	}
};
%feature("shadow") Handle_IFSelect_SignAncestor::~Handle_IFSelect_SignAncestor %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IFSelect_SignAncestor {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IFSelect_SelectRootComps;
class Handle_IFSelect_SelectRootComps : public Handle_IFSelect_SelectExtract {
	public:
		%feature("autodoc", "1");
		Handle_IFSelect_SelectRootComps();
		%feature("autodoc", "1");
		Handle_IFSelect_SelectRootComps(const Handle_IFSelect_SelectRootComps &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectRootComps(const IFSelect_SelectRootComps *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectRootComps & operator=(const Handle_IFSelect_SelectRootComps &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectRootComps & operator=(const IFSelect_SelectRootComps *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectRootComps const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IFSelect_SelectRootComps {
	IFSelect_SelectRootComps* GetObject() {
	return (IFSelect_SelectRootComps*)$self->Access();
	}
};
%feature("shadow") Handle_IFSelect_SelectRootComps::~Handle_IFSelect_SelectRootComps %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IFSelect_SelectRootComps {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IFSelect_SignValidity;
class Handle_IFSelect_SignValidity : public Handle_IFSelect_Signature {
	public:
		%feature("autodoc", "1");
		Handle_IFSelect_SignValidity();
		%feature("autodoc", "1");
		Handle_IFSelect_SignValidity(const Handle_IFSelect_SignValidity &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_SignValidity(const IFSelect_SignValidity *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_SignValidity & operator=(const Handle_IFSelect_SignValidity &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_SignValidity & operator=(const IFSelect_SignValidity *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_SignValidity const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IFSelect_SignValidity {
	IFSelect_SignValidity* GetObject() {
	return (IFSelect_SignValidity*)$self->Access();
	}
};
%feature("shadow") Handle_IFSelect_SignValidity::~Handle_IFSelect_SignValidity %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IFSelect_SignValidity {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IFSelect_SequenceNodeOfSequenceOfInterfaceModel;
class Handle_IFSelect_SequenceNodeOfSequenceOfInterfaceModel : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_IFSelect_SequenceNodeOfSequenceOfInterfaceModel();
		%feature("autodoc", "1");
		Handle_IFSelect_SequenceNodeOfSequenceOfInterfaceModel(const Handle_IFSelect_SequenceNodeOfSequenceOfInterfaceModel &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_SequenceNodeOfSequenceOfInterfaceModel(const IFSelect_SequenceNodeOfSequenceOfInterfaceModel *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_SequenceNodeOfSequenceOfInterfaceModel & operator=(const Handle_IFSelect_SequenceNodeOfSequenceOfInterfaceModel &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_SequenceNodeOfSequenceOfInterfaceModel & operator=(const IFSelect_SequenceNodeOfSequenceOfInterfaceModel *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_SequenceNodeOfSequenceOfInterfaceModel const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IFSelect_SequenceNodeOfSequenceOfInterfaceModel {
	IFSelect_SequenceNodeOfSequenceOfInterfaceModel* GetObject() {
	return (IFSelect_SequenceNodeOfSequenceOfInterfaceModel*)$self->Access();
	}
};
%feature("shadow") Handle_IFSelect_SequenceNodeOfSequenceOfInterfaceModel::~Handle_IFSelect_SequenceNodeOfSequenceOfInterfaceModel %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IFSelect_SequenceNodeOfSequenceOfInterfaceModel {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IFSelect_Editor;
class Handle_IFSelect_Editor : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_IFSelect_Editor();
		%feature("autodoc", "1");
		Handle_IFSelect_Editor(const Handle_IFSelect_Editor &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_Editor(const IFSelect_Editor *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_Editor & operator=(const Handle_IFSelect_Editor &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_Editor & operator=(const IFSelect_Editor *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_Editor const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IFSelect_Editor {
	IFSelect_Editor* GetObject() {
	return (IFSelect_Editor*)$self->Access();
	}
};
%feature("shadow") Handle_IFSelect_Editor::~Handle_IFSelect_Editor %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IFSelect_Editor {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IFSelect_ParamEditor;
class Handle_IFSelect_ParamEditor : public Handle_IFSelect_Editor {
	public:
		%feature("autodoc", "1");
		Handle_IFSelect_ParamEditor();
		%feature("autodoc", "1");
		Handle_IFSelect_ParamEditor(const Handle_IFSelect_ParamEditor &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_ParamEditor(const IFSelect_ParamEditor *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_ParamEditor & operator=(const Handle_IFSelect_ParamEditor &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_ParamEditor & operator=(const IFSelect_ParamEditor *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_ParamEditor const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IFSelect_ParamEditor {
	IFSelect_ParamEditor* GetObject() {
	return (IFSelect_ParamEditor*)$self->Access();
	}
};
%feature("shadow") Handle_IFSelect_ParamEditor::~Handle_IFSelect_ParamEditor %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IFSelect_ParamEditor {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IFSelect_SelectRange;
class Handle_IFSelect_SelectRange : public Handle_IFSelect_SelectExtract {
	public:
		%feature("autodoc", "1");
		Handle_IFSelect_SelectRange();
		%feature("autodoc", "1");
		Handle_IFSelect_SelectRange(const Handle_IFSelect_SelectRange &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectRange(const IFSelect_SelectRange *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectRange & operator=(const Handle_IFSelect_SelectRange &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectRange & operator=(const IFSelect_SelectRange *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectRange const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IFSelect_SelectRange {
	IFSelect_SelectRange* GetObject() {
	return (IFSelect_SelectRange*)$self->Access();
	}
};
%feature("shadow") Handle_IFSelect_SelectRange::~Handle_IFSelect_SelectRange %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IFSelect_SelectRange {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IFSelect_SelectRoots;
class Handle_IFSelect_SelectRoots : public Handle_IFSelect_SelectExtract {
	public:
		%feature("autodoc", "1");
		Handle_IFSelect_SelectRoots();
		%feature("autodoc", "1");
		Handle_IFSelect_SelectRoots(const Handle_IFSelect_SelectRoots &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectRoots(const IFSelect_SelectRoots *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectRoots & operator=(const Handle_IFSelect_SelectRoots &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectRoots & operator=(const IFSelect_SelectRoots *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectRoots const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IFSelect_SelectRoots {
	IFSelect_SelectRoots* GetObject() {
	return (IFSelect_SelectRoots*)$self->Access();
	}
};
%feature("shadow") Handle_IFSelect_SelectRoots::~Handle_IFSelect_SelectRoots %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IFSelect_SelectRoots {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IFSelect_DispPerCount;
class Handle_IFSelect_DispPerCount : public Handle_IFSelect_Dispatch {
	public:
		%feature("autodoc", "1");
		Handle_IFSelect_DispPerCount();
		%feature("autodoc", "1");
		Handle_IFSelect_DispPerCount(const Handle_IFSelect_DispPerCount &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_DispPerCount(const IFSelect_DispPerCount *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_DispPerCount & operator=(const Handle_IFSelect_DispPerCount &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_DispPerCount & operator=(const IFSelect_DispPerCount *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_DispPerCount const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IFSelect_DispPerCount {
	IFSelect_DispPerCount* GetObject() {
	return (IFSelect_DispPerCount*)$self->Access();
	}
};
%feature("shadow") Handle_IFSelect_DispPerCount::~Handle_IFSelect_DispPerCount %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IFSelect_DispPerCount {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IFSelect_BasicDumper;
class Handle_IFSelect_BasicDumper : public Handle_IFSelect_SessionDumper {
	public:
		%feature("autodoc", "1");
		Handle_IFSelect_BasicDumper();
		%feature("autodoc", "1");
		Handle_IFSelect_BasicDumper(const Handle_IFSelect_BasicDumper &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_BasicDumper(const IFSelect_BasicDumper *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_BasicDumper & operator=(const Handle_IFSelect_BasicDumper &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_BasicDumper & operator=(const IFSelect_BasicDumper *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_BasicDumper const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IFSelect_BasicDumper {
	IFSelect_BasicDumper* GetObject() {
	return (IFSelect_BasicDumper*)$self->Access();
	}
};
%feature("shadow") Handle_IFSelect_BasicDumper::~Handle_IFSelect_BasicDumper %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IFSelect_BasicDumper {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IFSelect_SessionPilot;
class Handle_IFSelect_SessionPilot : public Handle_IFSelect_Activator {
	public:
		%feature("autodoc", "1");
		Handle_IFSelect_SessionPilot();
		%feature("autodoc", "1");
		Handle_IFSelect_SessionPilot(const Handle_IFSelect_SessionPilot &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_SessionPilot(const IFSelect_SessionPilot *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_SessionPilot & operator=(const Handle_IFSelect_SessionPilot &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_SessionPilot & operator=(const IFSelect_SessionPilot *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_SessionPilot const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IFSelect_SessionPilot {
	IFSelect_SessionPilot* GetObject() {
	return (IFSelect_SessionPilot*)$self->Access();
	}
};
%feature("shadow") Handle_IFSelect_SessionPilot::~Handle_IFSelect_SessionPilot %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IFSelect_SessionPilot {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IFSelect_SelectSent;
class Handle_IFSelect_SelectSent : public Handle_IFSelect_SelectExtract {
	public:
		%feature("autodoc", "1");
		Handle_IFSelect_SelectSent();
		%feature("autodoc", "1");
		Handle_IFSelect_SelectSent(const Handle_IFSelect_SelectSent &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectSent(const IFSelect_SelectSent *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectSent & operator=(const Handle_IFSelect_SelectSent &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectSent & operator=(const IFSelect_SelectSent *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectSent const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IFSelect_SelectSent {
	IFSelect_SelectSent* GetObject() {
	return (IFSelect_SelectSent*)$self->Access();
	}
};
%feature("shadow") Handle_IFSelect_SelectSent::~Handle_IFSelect_SelectSent %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IFSelect_SelectSent {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IFSelect_ModelCopier;
class Handle_IFSelect_ModelCopier : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_IFSelect_ModelCopier();
		%feature("autodoc", "1");
		Handle_IFSelect_ModelCopier(const Handle_IFSelect_ModelCopier &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_ModelCopier(const IFSelect_ModelCopier *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_ModelCopier & operator=(const Handle_IFSelect_ModelCopier &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_ModelCopier & operator=(const IFSelect_ModelCopier *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_ModelCopier const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IFSelect_ModelCopier {
	IFSelect_ModelCopier* GetObject() {
	return (IFSelect_ModelCopier*)$self->Access();
	}
};
%feature("shadow") Handle_IFSelect_ModelCopier::~Handle_IFSelect_ModelCopier %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IFSelect_ModelCopier {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IFSelect_SequenceNodeOfTSeqOfSelection;
class Handle_IFSelect_SequenceNodeOfTSeqOfSelection : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_IFSelect_SequenceNodeOfTSeqOfSelection();
		%feature("autodoc", "1");
		Handle_IFSelect_SequenceNodeOfTSeqOfSelection(const Handle_IFSelect_SequenceNodeOfTSeqOfSelection &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_SequenceNodeOfTSeqOfSelection(const IFSelect_SequenceNodeOfTSeqOfSelection *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_SequenceNodeOfTSeqOfSelection & operator=(const Handle_IFSelect_SequenceNodeOfTSeqOfSelection &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_SequenceNodeOfTSeqOfSelection & operator=(const IFSelect_SequenceNodeOfTSeqOfSelection *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_SequenceNodeOfTSeqOfSelection const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IFSelect_SequenceNodeOfTSeqOfSelection {
	IFSelect_SequenceNodeOfTSeqOfSelection* GetObject() {
	return (IFSelect_SequenceNodeOfTSeqOfSelection*)$self->Access();
	}
};
%feature("shadow") Handle_IFSelect_SequenceNodeOfTSeqOfSelection::~Handle_IFSelect_SequenceNodeOfTSeqOfSelection %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IFSelect_SequenceNodeOfTSeqOfSelection {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IFSelect_SelectEntityNumber;
class Handle_IFSelect_SelectEntityNumber : public Handle_IFSelect_SelectBase {
	public:
		%feature("autodoc", "1");
		Handle_IFSelect_SelectEntityNumber();
		%feature("autodoc", "1");
		Handle_IFSelect_SelectEntityNumber(const Handle_IFSelect_SelectEntityNumber &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectEntityNumber(const IFSelect_SelectEntityNumber *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectEntityNumber & operator=(const Handle_IFSelect_SelectEntityNumber &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectEntityNumber & operator=(const IFSelect_SelectEntityNumber *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectEntityNumber const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IFSelect_SelectEntityNumber {
	IFSelect_SelectEntityNumber* GetObject() {
	return (IFSelect_SelectEntityNumber*)$self->Access();
	}
};
%feature("shadow") Handle_IFSelect_SelectEntityNumber::~Handle_IFSelect_SelectEntityNumber %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IFSelect_SelectEntityNumber {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IFSelect_Act;
class Handle_IFSelect_Act : public Handle_IFSelect_Activator {
	public:
		%feature("autodoc", "1");
		Handle_IFSelect_Act();
		%feature("autodoc", "1");
		Handle_IFSelect_Act(const Handle_IFSelect_Act &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_Act(const IFSelect_Act *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_Act & operator=(const Handle_IFSelect_Act &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_Act & operator=(const IFSelect_Act *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_Act const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IFSelect_Act {
	IFSelect_Act* GetObject() {
	return (IFSelect_Act*)$self->Access();
	}
};
%feature("shadow") Handle_IFSelect_Act::~Handle_IFSelect_Act %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IFSelect_Act {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IFSelect_SelectPointed;
class Handle_IFSelect_SelectPointed : public Handle_IFSelect_SelectBase {
	public:
		%feature("autodoc", "1");
		Handle_IFSelect_SelectPointed();
		%feature("autodoc", "1");
		Handle_IFSelect_SelectPointed(const Handle_IFSelect_SelectPointed &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectPointed(const IFSelect_SelectPointed *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectPointed & operator=(const Handle_IFSelect_SelectPointed &aHandle);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectPointed & operator=(const IFSelect_SelectPointed *anItem);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectPointed const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IFSelect_SelectPointed {
	IFSelect_SelectPointed* GetObject() {
	return (IFSelect_SelectPointed*)$self->Access();
	}
};
%feature("shadow") Handle_IFSelect_SelectPointed::~Handle_IFSelect_SelectPointed %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IFSelect_SelectPointed {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFSelect_IntParam;
class IFSelect_IntParam : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		IFSelect_IntParam();
		%feature("autodoc", "1");
		void SetStaticName(const char * statname);
		%feature("autodoc", "1");
		Standard_Integer Value() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer val);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IFSelect_IntParam {
	Handle_IFSelect_IntParam GetHandle() {
	return *(Handle_IFSelect_IntParam*) &$self;
	}
};
%extend IFSelect_IntParam {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IFSelect_IntParam::~IFSelect_IntParam %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFSelect_IntParam {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFSelect_Editor;
class IFSelect_Editor : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer num, const Handle_Interface_TypedValue &typval, const char * shortname="", const IFSelect_EditValue accessmode=IFSelect_Editable);
		%feature("autodoc", "1");
		void SetList(const Standard_Integer num, const Standard_Integer max=0);
		%feature("autodoc", "1");
		Standard_Integer NbValues() const;
		%feature("autodoc", "1");
		Handle_Interface_TypedValue TypedValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Boolean IsList(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer MaxList(const Standard_Integer num) const;
		%feature("autodoc", "1");
		char * Name(const Standard_Integer num, const Standard_Boolean isshort=0) const;
		%feature("autodoc", "1");
		IFSelect_EditValue EditMode(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer NameNumber(const char * name) const;
		%feature("autodoc", "1");
		void PrintNames(const Handle_Message_Messenger &S) const;
		%feature("autodoc", "1");
		void PrintDefs(const Handle_Message_Messenger &S, const Standard_Boolean labels=0) const;
		%feature("autodoc", "1");
		Standard_Integer MaxNameLength(const Standard_Integer what) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString Label() const;
		%feature("autodoc", "1");
		virtual		Handle_IFSelect_EditForm Form(const Standard_Boolean readonly, const Standard_Boolean undoable=1) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Recognize(const Handle_IFSelect_EditForm &form) const;
		%feature("autodoc", "1");
		virtual		Handle_TCollection_HAsciiString StringValue(const Handle_IFSelect_EditForm &form, const Standard_Integer num) const;
		%feature("autodoc", "1");
		virtual		Handle_IFSelect_ListEditor ListEditor(const Standard_Integer num) const;
		%feature("autodoc", "1");
		virtual		Handle_TColStd_HSequenceOfHAsciiString ListValue(const Handle_IFSelect_EditForm &form, const Standard_Integer num) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Load(const Handle_IFSelect_EditForm &form, const Handle_Standard_Transient &ent, const Handle_Interface_InterfaceModel &model) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Update(const Handle_IFSelect_EditForm &form, const Standard_Integer num, const Handle_TCollection_HAsciiString &newval, const Standard_Boolean enforce) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean UpdateList(const Handle_IFSelect_EditForm &form, const Standard_Integer num, const Handle_TColStd_HSequenceOfHAsciiString &newlist, const Standard_Boolean enforce) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Apply(const Handle_IFSelect_EditForm &form, const Handle_Standard_Transient &ent, const Handle_Interface_InterfaceModel &model) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IFSelect_Editor {
	Handle_IFSelect_Editor GetHandle() {
	return *(Handle_IFSelect_Editor*) &$self;
	}
};
%extend IFSelect_Editor {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IFSelect_Editor::~IFSelect_Editor %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFSelect_Editor {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFSelect_SelectionIterator;
class IFSelect_SelectionIterator {
	public:
		%feature("autodoc", "1");
		IFSelect_SelectionIterator();
		%feature("autodoc", "1");
		IFSelect_SelectionIterator(const Handle_IFSelect_Selection &sel);
		%feature("autodoc", "1");
		void AddFromIter(IFSelect_SelectionIterator & iter);
		%feature("autodoc", "1");
		void AddItem(const Handle_IFSelect_Selection &sel);
		%feature("autodoc", "1");
		void AddList(const IFSelect_TSeqOfSelection &list);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		const Handle_IFSelect_Selection & Value() const;

};
%feature("shadow") IFSelect_SelectionIterator::~IFSelect_SelectionIterator %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFSelect_SelectionIterator {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFSelect_Selection;
class IFSelect_Selection : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		virtual		Interface_EntityIterator RootResult(const Interface_Graph &G) const;
		%feature("autodoc", "1");
		Interface_EntityIterator UniqueResult(const Interface_Graph &G) const;
		%feature("autodoc", "1");
		virtual		Interface_EntityIterator CompleteResult(const Interface_Graph &G) const;
		%feature("autodoc", "1");
		virtual		void FillIterator(IFSelect_SelectionIterator & iter) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString Label() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IFSelect_Selection {
	Handle_IFSelect_Selection GetHandle() {
	return *(Handle_IFSelect_Selection*) &$self;
	}
};
%extend IFSelect_Selection {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IFSelect_Selection::~IFSelect_Selection %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFSelect_Selection {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFSelect_SelectDeduct;
class IFSelect_SelectDeduct : public IFSelect_Selection {
	public:
		%feature("autodoc", "1");
		void SetInput(const Handle_IFSelect_Selection &sel);
		%feature("autodoc", "1");
		Handle_IFSelect_Selection Input() const;
		%feature("autodoc", "1");
		Standard_Boolean HasInput() const;
		%feature("autodoc", "1");
		Standard_Boolean HasAlternate() const;
		%feature("autodoc", "1");
		Handle_IFSelect_SelectPointed & Alternate();
		%feature("autodoc", "1");
		Interface_EntityIterator InputResult(const Interface_Graph &G) const;

};
%extend IFSelect_SelectDeduct {
	Handle_IFSelect_SelectDeduct GetHandle() {
	return *(Handle_IFSelect_SelectDeduct*) &$self;
	}
};
%extend IFSelect_SelectDeduct {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IFSelect_SelectDeduct::~IFSelect_SelectDeduct %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFSelect_SelectDeduct {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFSelect_SelectAnyList;
class IFSelect_SelectAnyList : public IFSelect_SelectDeduct {
	public:
		%feature("autodoc", "1");
		virtual		void KeepInputEntity(Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbItems(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		void SetRange(const Handle_IFSelect_IntParam &rankfrom, const Handle_IFSelect_IntParam &rankto);
		%feature("autodoc", "1");
		void SetOne(const Handle_IFSelect_IntParam &rank);
		%feature("autodoc", "1");
		void SetFrom(const Handle_IFSelect_IntParam &rankfrom);
		%feature("autodoc", "1");
		void SetUntil(const Handle_IFSelect_IntParam &rankto);
		%feature("autodoc", "1");
		Standard_Boolean HasLower() const;
		%feature("autodoc", "1");
		Handle_IFSelect_IntParam Lower() const;
		%feature("autodoc", "1");
		Standard_Integer LowerValue() const;
		%feature("autodoc", "1");
		Standard_Boolean HasUpper() const;
		%feature("autodoc", "1");
		Handle_IFSelect_IntParam Upper() const;
		%feature("autodoc", "1");
		Standard_Integer UpperValue() const;
		%feature("autodoc", "1");
		virtual		void FillResult(const Standard_Integer n1, const Standard_Integer n2, const Handle_Standard_Transient &ent, Interface_EntityIterator & res) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString ListLabel() const;

};
%extend IFSelect_SelectAnyList {
	Handle_IFSelect_SelectAnyList GetHandle() {
	return *(Handle_IFSelect_SelectAnyList*) &$self;
	}
};
%extend IFSelect_SelectAnyList {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IFSelect_SelectAnyList::~IFSelect_SelectAnyList %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFSelect_SelectAnyList {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFSelect_SelectInList;
class IFSelect_SelectInList : public IFSelect_SelectAnyList {
	public:
		%feature("autodoc", "1");
		virtual		Handle_Standard_Transient ListedEntity(const Standard_Integer num, const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		virtual		void FillResult(const Standard_Integer n1, const Standard_Integer n2, const Handle_Standard_Transient &ent, Interface_EntityIterator & result) const;

};
%extend IFSelect_SelectInList {
	Handle_IFSelect_SelectInList GetHandle() {
	return *(Handle_IFSelect_SelectInList*) &$self;
	}
};
%extend IFSelect_SelectInList {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IFSelect_SelectInList::~IFSelect_SelectInList %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFSelect_SelectInList {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFSelect_SelectExtract;
class IFSelect_SelectExtract : public IFSelect_SelectDeduct {
	public:
		%feature("autodoc", "1");
		Standard_Boolean IsDirect() const;
		%feature("autodoc", "1");
		void SetDirect(const Standard_Boolean direct);
		%feature("autodoc", "1");
		virtual		Interface_EntityIterator RootResult(const Interface_Graph &G) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Sort(const Standard_Integer rank, const Handle_Standard_Transient &ent, const Handle_Interface_InterfaceModel &model) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean SortInGraph(const Standard_Integer rank, const Handle_Standard_Transient &ent, const Interface_Graph &G) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString Label() const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString ExtractLabel() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IFSelect_SelectExtract {
	Handle_IFSelect_SelectExtract GetHandle() {
	return *(Handle_IFSelect_SelectExtract*) &$self;
	}
};
%extend IFSelect_SelectExtract {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IFSelect_SelectExtract::~IFSelect_SelectExtract %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFSelect_SelectExtract {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFSelect_SelectAnyType;
class IFSelect_SelectAnyType : public IFSelect_SelectExtract {
	public:
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type TypeForMatch() const;

};
%extend IFSelect_SelectAnyType {
	Handle_IFSelect_SelectAnyType GetHandle() {
	return *(Handle_IFSelect_SelectAnyType*) &$self;
	}
};
%extend IFSelect_SelectAnyType {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IFSelect_SelectAnyType::~IFSelect_SelectAnyType %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFSelect_SelectAnyType {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFSelect_SelectErrorEntities;
class IFSelect_SelectErrorEntities : public IFSelect_SelectExtract {
	public:
		%feature("autodoc", "1");
		IFSelect_SelectErrorEntities();
		%feature("autodoc", "1");
		virtual		Standard_Boolean Sort(const Standard_Integer rank, const Handle_Standard_Transient &ent, const Handle_Interface_InterfaceModel &model) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString ExtractLabel() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IFSelect_SelectErrorEntities {
	Handle_IFSelect_SelectErrorEntities GetHandle() {
	return *(Handle_IFSelect_SelectErrorEntities*) &$self;
	}
};
%extend IFSelect_SelectErrorEntities {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IFSelect_SelectErrorEntities::~IFSelect_SelectErrorEntities %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFSelect_SelectErrorEntities {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFSelect_SelectBase;
class IFSelect_SelectBase : public IFSelect_Selection {
	public:
		%feature("autodoc", "1");
		virtual		void FillIterator(IFSelect_SelectionIterator & iter) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IFSelect_SelectBase {
	Handle_IFSelect_SelectBase GetHandle() {
	return *(Handle_IFSelect_SelectBase*) &$self;
	}
};
%extend IFSelect_SelectBase {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IFSelect_SelectBase::~IFSelect_SelectBase %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFSelect_SelectBase {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFSelect_SelectPointed;
class IFSelect_SelectPointed : public IFSelect_SelectBase {
	public:
		%feature("autodoc", "1");
		IFSelect_SelectPointed();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsSet() const;
		%feature("autodoc", "1");
		void SetEntity(const Handle_Standard_Transient &item);
		%feature("autodoc", "1");
		void SetList(const Handle_TColStd_HSequenceOfTransient &list);
		%feature("autodoc", "1");
		Standard_Boolean Add(const Handle_Standard_Transient &item);
		%feature("autodoc", "1");
		Standard_Boolean Remove(const Handle_Standard_Transient &item);
		%feature("autodoc", "1");
		Standard_Boolean Toggle(const Handle_Standard_Transient &item);
		%feature("autodoc", "1");
		Standard_Boolean AddList(const Handle_TColStd_HSequenceOfTransient &list);
		%feature("autodoc", "1");
		Standard_Boolean RemoveList(const Handle_TColStd_HSequenceOfTransient &list);
		%feature("autodoc", "1");
		Standard_Boolean ToggleList(const Handle_TColStd_HSequenceOfTransient &list);
		%feature("autodoc", "1");
		Standard_Integer Rank(const Handle_Standard_Transient &item) const;
		%feature("autodoc", "1");
		Standard_Integer NbItems() const;
		%feature("autodoc", "1");
		Handle_Standard_Transient Item(const Standard_Integer num) const;
		%feature("autodoc", "1");
		void Update(const Handle_Interface_CopyControl &control);
		%feature("autodoc", "1");
		void Update(const Handle_IFSelect_Transformer &trf);
		%feature("autodoc", "1");
		virtual		Interface_EntityIterator RootResult(const Interface_Graph &G) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString Label() const;

};
%extend IFSelect_SelectPointed {
	Handle_IFSelect_SelectPointed GetHandle() {
	return *(Handle_IFSelect_SelectPointed*) &$self;
	}
};
%extend IFSelect_SelectPointed {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IFSelect_SelectPointed::~IFSelect_SelectPointed %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFSelect_SelectPointed {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFSelect_SelectControl;
class IFSelect_SelectControl : public IFSelect_Selection {
	public:
		%feature("autodoc", "1");
		Handle_IFSelect_Selection MainInput() const;
		%feature("autodoc", "1");
		Standard_Boolean HasSecondInput() const;
		%feature("autodoc", "1");
		Handle_IFSelect_Selection SecondInput() const;
		%feature("autodoc", "1");
		void SetMainInput(const Handle_IFSelect_Selection &sel);
		%feature("autodoc", "1");
		void SetSecondInput(const Handle_IFSelect_Selection &sel);
		%feature("autodoc", "1");
		virtual		void FillIterator(IFSelect_SelectionIterator & iter) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IFSelect_SelectControl {
	Handle_IFSelect_SelectControl GetHandle() {
	return *(Handle_IFSelect_SelectControl*) &$self;
	}
};
%extend IFSelect_SelectControl {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IFSelect_SelectControl::~IFSelect_SelectControl %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFSelect_SelectControl {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFSelect_SelectDiff;
class IFSelect_SelectDiff : public IFSelect_SelectControl {
	public:
		%feature("autodoc", "1");
		IFSelect_SelectDiff();
		%feature("autodoc", "1");
		virtual		Interface_EntityIterator RootResult(const Interface_Graph &G) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString Label() const;

};
%extend IFSelect_SelectDiff {
	Handle_IFSelect_SelectDiff GetHandle() {
	return *(Handle_IFSelect_SelectDiff*) &$self;
	}
};
%extend IFSelect_SelectDiff {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IFSelect_SelectDiff::~IFSelect_SelectDiff %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFSelect_SelectDiff {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFSelect;
class IFSelect {
	public:
		%feature("autodoc", "1");
		IFSelect();
		%feature("autodoc", "1");
		Standard_Boolean SaveSession(const Handle_IFSelect_WorkSession &WS, const char * file);
		%feature("autodoc", "1");
		Standard_Boolean RestoreSession(const Handle_IFSelect_WorkSession &WS, const char * file);

};
%feature("shadow") IFSelect::~IFSelect %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFSelect {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFSelect_Dispatch;
class IFSelect_Dispatch : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		void SetRootName(const Handle_TCollection_HAsciiString &name);
		%feature("autodoc", "1");
		Standard_Boolean HasRootName() const;
		%feature("autodoc", "1");
		const Handle_TCollection_HAsciiString & RootName() const;
		%feature("autodoc", "1");
		void SetFinalSelection(const Handle_IFSelect_Selection &sel);
		%feature("autodoc", "1");
		Handle_IFSelect_Selection FinalSelection() const;
		%feature("autodoc", "1");
		IFSelect_SelectionIterator Selections() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean CanHaveRemainder() const;
		%feature("autodoc","LimitedMax(Standard_Integer nbent) -> Standard_Integer");
		virtual		Standard_Boolean LimitedMax(const Standard_Integer nbent, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString Label() const;
		%feature("autodoc", "1");
		Interface_EntityIterator GetEntities(const Interface_Graph &G) const;
		%feature("autodoc","PacketsCount(const G) -> Standard_Integer");
		virtual		Standard_Boolean PacketsCount(const Interface_Graph &G, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		virtual		void Packets(const Interface_Graph &G, IFGraph_SubPartsIterator & packs) const;
		%feature("autodoc", "1");
		Interface_EntityIterator Packeted(const Interface_Graph &G) const;
		%feature("autodoc", "1");
		virtual		Interface_EntityIterator Remainder(const Interface_Graph &G) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IFSelect_Dispatch {
	Handle_IFSelect_Dispatch GetHandle() {
	return *(Handle_IFSelect_Dispatch*) &$self;
	}
};
%extend IFSelect_Dispatch {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IFSelect_Dispatch::~IFSelect_Dispatch %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFSelect_Dispatch {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFSelect_DispPerSignature;
class IFSelect_DispPerSignature : public IFSelect_Dispatch {
	public:
		%feature("autodoc", "1");
		IFSelect_DispPerSignature();
		%feature("autodoc", "1");
		Handle_IFSelect_SignCounter SignCounter() const;
		%feature("autodoc", "1");
		void SetSignCounter(const Handle_IFSelect_SignCounter &sign);
		%feature("autodoc", "1");
		char * SignName() const;

};
%extend IFSelect_DispPerSignature {
	Handle_IFSelect_DispPerSignature GetHandle() {
	return *(Handle_IFSelect_DispPerSignature*) &$self;
	}
};
%extend IFSelect_DispPerSignature {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IFSelect_DispPerSignature::~IFSelect_DispPerSignature %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFSelect_DispPerSignature {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFSelect_Transformer;
class IFSelect_Transformer : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		virtual		Standard_Boolean Perform(const Interface_Graph &G, const Handle_Interface_Protocol &protocol, Interface_CheckIterator & checks, Handle_Interface_InterfaceModel & newmod);
		%feature("autodoc", "1");
		virtual		Standard_Boolean ChangeProtocol(Handle_Interface_Protocol & newproto) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Updated(const Handle_Standard_Transient &entfrom, Handle_Standard_Transient & entto) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString Label() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IFSelect_Transformer {
	Handle_IFSelect_Transformer GetHandle() {
	return *(Handle_IFSelect_Transformer*) &$self;
	}
};
%extend IFSelect_Transformer {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IFSelect_Transformer::~IFSelect_Transformer %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFSelect_Transformer {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFSelect_SequenceOfGeneralModifier;
class IFSelect_SequenceOfGeneralModifier : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		IFSelect_SequenceOfGeneralModifier();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const IFSelect_SequenceOfGeneralModifier & Assign(const IFSelect_SequenceOfGeneralModifier &Other);
		%feature("autodoc", "1");
		const IFSelect_SequenceOfGeneralModifier & operator=(const IFSelect_SequenceOfGeneralModifier &Other);
		%feature("autodoc", "1");
		void Append(const Handle_IFSelect_GeneralModifier &T);
		%feature("autodoc", "1");
		void Append(IFSelect_SequenceOfGeneralModifier & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_IFSelect_GeneralModifier &T);
		%feature("autodoc", "1");
		void Prepend(IFSelect_SequenceOfGeneralModifier & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_IFSelect_GeneralModifier &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, IFSelect_SequenceOfGeneralModifier & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_IFSelect_GeneralModifier &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, IFSelect_SequenceOfGeneralModifier & S);
		%feature("autodoc", "1");
		const Handle_IFSelect_GeneralModifier & First() const;
		%feature("autodoc", "1");
		const Handle_IFSelect_GeneralModifier & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, IFSelect_SequenceOfGeneralModifier & S);
		%feature("autodoc", "1");
		const Handle_IFSelect_GeneralModifier & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_IFSelect_GeneralModifier & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_IFSelect_GeneralModifier &I);
		%feature("autodoc", "1");
		Handle_IFSelect_GeneralModifier & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_IFSelect_GeneralModifier & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") IFSelect_SequenceOfGeneralModifier::~IFSelect_SequenceOfGeneralModifier %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFSelect_SequenceOfGeneralModifier {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFSelect_SequenceNodeOfTSeqOfSelection;
class IFSelect_SequenceNodeOfTSeqOfSelection : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		IFSelect_SequenceNodeOfTSeqOfSelection(const Handle_IFSelect_Selection &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_IFSelect_Selection & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IFSelect_SequenceNodeOfTSeqOfSelection {
	Handle_IFSelect_SequenceNodeOfTSeqOfSelection GetHandle() {
	return *(Handle_IFSelect_SequenceNodeOfTSeqOfSelection*) &$self;
	}
};
%extend IFSelect_SequenceNodeOfTSeqOfSelection {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IFSelect_SequenceNodeOfTSeqOfSelection::~IFSelect_SequenceNodeOfTSeqOfSelection %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFSelect_SequenceNodeOfTSeqOfSelection {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFSelect_SequenceNodeOfSequenceOfAppliedModifiers;
class IFSelect_SequenceNodeOfSequenceOfAppliedModifiers : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		IFSelect_SequenceNodeOfSequenceOfAppliedModifiers(const Handle_IFSelect_AppliedModifiers &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_IFSelect_AppliedModifiers & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IFSelect_SequenceNodeOfSequenceOfAppliedModifiers {
	Handle_IFSelect_SequenceNodeOfSequenceOfAppliedModifiers GetHandle() {
	return *(Handle_IFSelect_SequenceNodeOfSequenceOfAppliedModifiers*) &$self;
	}
};
%extend IFSelect_SequenceNodeOfSequenceOfAppliedModifiers {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IFSelect_SequenceNodeOfSequenceOfAppliedModifiers::~IFSelect_SequenceNodeOfSequenceOfAppliedModifiers %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFSelect_SequenceNodeOfSequenceOfAppliedModifiers {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFSelect_ContextModif;
class IFSelect_ContextModif {
	public:
		%feature("autodoc", "1");
		IFSelect_ContextModif(const Interface_Graph &graph, const Interface_CopyTool &TC, const char * filename="");
		%feature("autodoc", "1");
		IFSelect_ContextModif(const Interface_Graph &graph, const char * filename="");
		%feature("autodoc", "1");
		void Select(Interface_EntityIterator & list);
		%feature("autodoc", "1");
		const Interface_Graph & OriginalGraph() const;
		%feature("autodoc", "1");
		Handle_Interface_InterfaceModel OriginalModel() const;
		%feature("autodoc", "1");
		void SetProtocol(const Handle_Interface_Protocol &proto);
		%feature("autodoc", "1");
		Handle_Interface_Protocol Protocol() const;
		%feature("autodoc", "1");
		Standard_Boolean HasFileName() const;
		%feature("autodoc", "1");
		char * FileName() const;
		%feature("autodoc", "1");
		Handle_Interface_CopyControl Control() const;
		%feature("autodoc", "1");
		Standard_Boolean IsForNone() const;
		%feature("autodoc", "1");
		Standard_Boolean IsForAll() const;
		%feature("autodoc", "1");
		Standard_Boolean IsTransferred(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Standard_Boolean IsSelected(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Interface_EntityIterator SelectedOriginal() const;
		%feature("autodoc", "1");
		Interface_EntityIterator SelectedResult() const;
		%feature("autodoc", "1");
		Standard_Integer SelectedCount() const;
		%feature("autodoc", "1");
		void Start();
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		Handle_Standard_Transient ValueOriginal() const;
		%feature("autodoc", "1");
		Handle_Standard_Transient ValueResult() const;
		%feature("autodoc", "1");
		void TraceModifier(const Handle_IFSelect_GeneralModifier &modif);
		%feature("autodoc", "1");
		void Trace(const char * mess="");
		%feature("autodoc", "1");
		void AddCheck(const Handle_Interface_Check &check);
		%feature("autodoc", "1");
		void AddWarning(const Handle_Standard_Transient &start, const char * mess, const char * orig="");
		%feature("autodoc", "1");
		void AddFail(const Handle_Standard_Transient &start, const char * mess, const char * orig="");
		%feature("autodoc", "1");
		Handle_Interface_Check CCheck(const Standard_Integer num=0);
		%feature("autodoc", "1");
		Handle_Interface_Check CCheck(const Handle_Standard_Transient &start);
		%feature("autodoc", "1");
		Interface_CheckIterator CheckList() const;

};
%feature("shadow") IFSelect_ContextModif::~IFSelect_ContextModif %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFSelect_ContextModif {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFSelect_SelectCombine;
class IFSelect_SelectCombine : public IFSelect_Selection {
	public:
		%feature("autodoc", "1");
		Standard_Integer NbInputs() const;
		%feature("autodoc", "1");
		Handle_IFSelect_Selection Input(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer InputRank(const Handle_IFSelect_Selection &sel) const;
		%feature("autodoc", "1");
		void Add(const Handle_IFSelect_Selection &sel, const Standard_Integer atnum=0);
		%feature("autodoc", "1");
		Standard_Boolean Remove(const Handle_IFSelect_Selection &sel);
		%feature("autodoc", "1");
		Standard_Boolean Remove(const Standard_Integer num);
		%feature("autodoc", "1");
		virtual		void FillIterator(IFSelect_SelectionIterator & iter) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IFSelect_SelectCombine {
	Handle_IFSelect_SelectCombine GetHandle() {
	return *(Handle_IFSelect_SelectCombine*) &$self;
	}
};
%extend IFSelect_SelectCombine {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IFSelect_SelectCombine::~IFSelect_SelectCombine %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFSelect_SelectCombine {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFSelect_SelectUnion;
class IFSelect_SelectUnion : public IFSelect_SelectCombine {
	public:
		%feature("autodoc", "1");
		IFSelect_SelectUnion();
		%feature("autodoc", "1");
		virtual		Interface_EntityIterator RootResult(const Interface_Graph &G) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString Label() const;

};
%extend IFSelect_SelectUnion {
	Handle_IFSelect_SelectUnion GetHandle() {
	return *(Handle_IFSelect_SelectUnion*) &$self;
	}
};
%extend IFSelect_SelectUnion {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IFSelect_SelectUnion::~IFSelect_SelectUnion %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFSelect_SelectUnion {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFSelect_SelectModelRoots;
class IFSelect_SelectModelRoots : public IFSelect_SelectBase {
	public:
		%feature("autodoc", "1");
		IFSelect_SelectModelRoots();
		%feature("autodoc", "1");
		virtual		Interface_EntityIterator RootResult(const Interface_Graph &G) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString Label() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IFSelect_SelectModelRoots {
	Handle_IFSelect_SelectModelRoots GetHandle() {
	return *(Handle_IFSelect_SelectModelRoots*) &$self;
	}
};
%extend IFSelect_SelectModelRoots {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IFSelect_SelectModelRoots::~IFSelect_SelectModelRoots %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFSelect_SelectModelRoots {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFSelect_TransformStandard;
class IFSelect_TransformStandard : public IFSelect_Transformer {
	public:
		%feature("autodoc", "1");
		IFSelect_TransformStandard();
		%feature("autodoc", "1");
		void SetCopyOption(const Standard_Boolean option);
		%feature("autodoc", "1");
		Standard_Boolean CopyOption() const;
		%feature("autodoc", "1");
		void SetSelection(const Handle_IFSelect_Selection &sel);
		%feature("autodoc", "1");
		Handle_IFSelect_Selection Selection() const;
		%feature("autodoc", "1");
		Standard_Integer NbModifiers() const;
		%feature("autodoc", "1");
		Handle_IFSelect_Modifier Modifier(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer ModifierRank(const Handle_IFSelect_Modifier &modif) const;
		%feature("autodoc", "1");
		Standard_Boolean AddModifier(const Handle_IFSelect_Modifier &modif, const Standard_Integer atnum=0);
		%feature("autodoc", "1");
		Standard_Boolean RemoveModifier(const Handle_IFSelect_Modifier &modif);
		%feature("autodoc", "1");
		Standard_Boolean RemoveModifier(const Standard_Integer num);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Perform(const Interface_Graph &G, const Handle_Interface_Protocol &protocol, Interface_CheckIterator & checks, Handle_Interface_InterfaceModel & newmod);
		%feature("autodoc", "1");
		void Copy(const Interface_Graph &G, Interface_CopyTool & TC, Handle_Interface_InterfaceModel & newmod) const;
		%feature("autodoc", "1");
		void StandardCopy(const Interface_Graph &G, Interface_CopyTool & TC, Handle_Interface_InterfaceModel & newmod) const;
		%feature("autodoc", "1");
		void OnTheSpot(const Interface_Graph &G, Interface_CopyTool & TC, Handle_Interface_InterfaceModel & newmod) const;
		%feature("autodoc", "1");
		Standard_Boolean ApplyModifiers(const Interface_Graph &G, const Handle_Interface_Protocol &protocol, Interface_CopyTool & TC, Interface_CheckIterator & checks, Handle_Interface_InterfaceModel & newmod) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Updated(const Handle_Standard_Transient &entfrom, Handle_Standard_Transient & entto) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString Label() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IFSelect_TransformStandard {
	Handle_IFSelect_TransformStandard GetHandle() {
	return *(Handle_IFSelect_TransformStandard*) &$self;
	}
};
%extend IFSelect_TransformStandard {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IFSelect_TransformStandard::~IFSelect_TransformStandard %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFSelect_TransformStandard {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFSelect_PacketList;
class IFSelect_PacketList : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		IFSelect_PacketList(const Handle_Interface_InterfaceModel &model);
		%feature("autodoc", "1");
		void SetName(const char * name);
		%feature("autodoc", "1");
		char * Name() const;
		%feature("autodoc", "1");
		Handle_Interface_InterfaceModel Model() const;
		%feature("autodoc", "1");
		void AddPacket();
		%feature("autodoc", "1");
		void Add(const Handle_Standard_Transient &ent);
		%feature("autodoc", "1");
		void AddList(const Handle_TColStd_HSequenceOfTransient &list);
		%feature("autodoc", "1");
		Standard_Integer NbPackets() const;
		%feature("autodoc", "1");
		Standard_Integer NbEntities(const Standard_Integer numpack) const;
		%feature("autodoc", "1");
		Interface_EntityIterator Entities(const Standard_Integer numpack) const;
		%feature("autodoc", "1");
		Standard_Integer HighestDuplicationCount() const;
		%feature("autodoc", "1");
		Standard_Integer NbDuplicated(const Standard_Integer count, const Standard_Boolean andmore) const;
		%feature("autodoc", "1");
		Interface_EntityIterator Duplicated(const Standard_Integer count, const Standard_Boolean andmore) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IFSelect_PacketList {
	Handle_IFSelect_PacketList GetHandle() {
	return *(Handle_IFSelect_PacketList*) &$self;
	}
};
%extend IFSelect_PacketList {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IFSelect_PacketList::~IFSelect_PacketList %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFSelect_PacketList {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFSelect_Signature;
class IFSelect_Signature : public Interface_SignType {
	public:
		%feature("autodoc", "1");
		void SetIntCase(const Standard_Boolean hasmin, const Standard_Integer valmin, const Standard_Boolean hasmax, const Standard_Integer valmax);
		%feature("autodoc","IsIntCase() -> [Standard_Integer, Standard_Integer]");
		Standard_Boolean IsIntCase(Standard_Boolean & hasmin, Standard_Integer &OutValue, Standard_Boolean & hasmax, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		void AddCase(const char * acase);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfAsciiString CaseList() const;
		%feature("autodoc", "1");
		virtual		char * Name() const;
		%feature("autodoc", "1");
		TCollection_AsciiString Label() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Matches(const Handle_Standard_Transient &ent, const Handle_Interface_InterfaceModel &model, const TCollection_AsciiString &text, const Standard_Boolean exact) const;
		%feature("autodoc", "1");
		Standard_Boolean MatchValue(const char * val, const TCollection_AsciiString &text, const Standard_Boolean exact);
		%feature("autodoc", "1");
		char * IntValue(const Standard_Integer val);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IFSelect_Signature {
	Handle_IFSelect_Signature GetHandle() {
	return *(Handle_IFSelect_Signature*) &$self;
	}
};
%extend IFSelect_Signature {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IFSelect_Signature::~IFSelect_Signature %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFSelect_Signature {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFSelect_SignValidity;
class IFSelect_SignValidity : public IFSelect_Signature {
	public:
		%feature("autodoc", "1");
		IFSelect_SignValidity();
		%feature("autodoc", "1");
		char * CVal(const Handle_Standard_Transient &ent, const Handle_Interface_InterfaceModel &model);
		%feature("autodoc", "1");
		virtual		char * Value(const Handle_Standard_Transient &ent, const Handle_Interface_InterfaceModel &model) const;

};
%extend IFSelect_SignValidity {
	Handle_IFSelect_SignValidity GetHandle() {
	return *(Handle_IFSelect_SignValidity*) &$self;
	}
};
%extend IFSelect_SignValidity {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IFSelect_SignValidity::~IFSelect_SignValidity %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFSelect_SignValidity {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFSelect_SelectType;
class IFSelect_SelectType : public IFSelect_SelectAnyType {
	public:
		%feature("autodoc", "1");
		IFSelect_SelectType();
		%feature("autodoc", "1");
		IFSelect_SelectType(const Handle_Standard_Type &atype);
		%feature("autodoc", "1");
		void SetType(const Handle_Standard_Type &atype);
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type TypeForMatch() const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString ExtractLabel() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IFSelect_SelectType {
	Handle_IFSelect_SelectType GetHandle() {
	return *(Handle_IFSelect_SelectType*) &$self;
	}
};
%extend IFSelect_SelectType {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IFSelect_SelectType::~IFSelect_SelectType %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFSelect_SelectType {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFSelect_ModelCopier;
class IFSelect_ModelCopier : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		IFSelect_ModelCopier();
		%feature("autodoc", "1");
		void SetShareOut(const Handle_IFSelect_ShareOut &sho);
		%feature("autodoc", "1");
		void ClearResult();
		%feature("autodoc", "1");
		Standard_Boolean AddFile(const TCollection_AsciiString &filename, const Handle_Interface_InterfaceModel &content);
		%feature("autodoc", "1");
		Standard_Boolean NameFile(const Standard_Integer num, const TCollection_AsciiString &filename);
		%feature("autodoc", "1");
		Standard_Boolean ClearFile(const Standard_Integer num);
		%feature("autodoc", "1");
		Standard_Boolean SetAppliedModifiers(const Standard_Integer num, const Handle_IFSelect_AppliedModifiers &applied);
		%feature("autodoc", "1");
		Standard_Boolean ClearAppliedModifiers(const Standard_Integer num);
		%feature("autodoc", "1");
		Interface_CheckIterator Copy(IFSelect_ShareOutResult & eval, const Handle_IFSelect_WorkLibrary &WL, const Handle_Interface_Protocol &protocol);
		%feature("autodoc", "1");
		Interface_CheckIterator SendCopied(const Handle_IFSelect_WorkLibrary &WL, const Handle_Interface_Protocol &protocol);
		%feature("autodoc", "1");
		Interface_CheckIterator Send(IFSelect_ShareOutResult & eval, const Handle_IFSelect_WorkLibrary &WL, const Handle_Interface_Protocol &protocol);
		%feature("autodoc", "1");
		Interface_CheckIterator SendAll(const char * filename, const Interface_Graph &G, const Handle_IFSelect_WorkLibrary &WL, const Handle_Interface_Protocol &protocol);
		%feature("autodoc", "1");
		Interface_CheckIterator SendSelected(const char * filename, const Interface_Graph &G, const Handle_IFSelect_WorkLibrary &WL, const Handle_Interface_Protocol &protocol, const Interface_EntityIterator &iter);
		%feature("autodoc", "1");
		void CopiedRemaining(const Interface_Graph &G, const Handle_IFSelect_WorkLibrary &WL, Interface_CopyTool & TC, Handle_Interface_InterfaceModel & newmod);
		%feature("autodoc", "1");
		Standard_Boolean SetRemaining(Interface_Graph & CG) const;
		%feature("autodoc", "1");
		Standard_Integer NbFiles() const;
		%feature("autodoc", "1");
		TCollection_AsciiString FileName(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Handle_Interface_InterfaceModel FileModel(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Handle_IFSelect_AppliedModifiers AppliedModifiers(const Standard_Integer num) const;
		%feature("autodoc", "1");
		void BeginSentFiles(const Handle_IFSelect_ShareOut &sho, const Standard_Boolean record);
		%feature("autodoc", "1");
		void AddSentFile(const char * filename);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfHAsciiString SentFiles() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IFSelect_ModelCopier {
	Handle_IFSelect_ModelCopier GetHandle() {
	return *(Handle_IFSelect_ModelCopier*) &$self;
	}
};
%extend IFSelect_ModelCopier {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IFSelect_ModelCopier::~IFSelect_ModelCopier %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFSelect_ModelCopier {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFSelect_DispPerCount;
class IFSelect_DispPerCount : public IFSelect_Dispatch {
	public:
		%feature("autodoc", "1");
		IFSelect_DispPerCount();
		%feature("autodoc", "1");
		Handle_IFSelect_IntParam Count() const;
		%feature("autodoc", "1");
		void SetCount(const Handle_IFSelect_IntParam &count);
		%feature("autodoc", "1");
		Standard_Integer CountValue() const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString Label() const;
		%feature("autodoc","LimitedMax(Standard_Integer nbent) -> Standard_Integer");
		virtual		Standard_Boolean LimitedMax(const Standard_Integer nbent, Standard_Integer &OutValue) const;
		%feature("autodoc","PacketsCount(const G) -> Standard_Integer");
		virtual		Standard_Boolean PacketsCount(const Interface_Graph &G, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		virtual		void Packets(const Interface_Graph &G, IFGraph_SubPartsIterator & packs) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IFSelect_DispPerCount {
	Handle_IFSelect_DispPerCount GetHandle() {
	return *(Handle_IFSelect_DispPerCount*) &$self;
	}
};
%extend IFSelect_DispPerCount {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IFSelect_DispPerCount::~IFSelect_DispPerCount %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFSelect_DispPerCount {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFSelect_SignatureList;
class IFSelect_SignatureList : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		IFSelect_SignatureList(const Standard_Boolean withlist=0);
		%feature("autodoc", "1");
		void SetList(const Standard_Boolean withlist);
		%feature("autodoc", "1");
		Standard_Boolean & ModeSignOnly();
		%feature("autodoc", "1");
		virtual		void Clear();
		%feature("autodoc", "1");
		void Add(const Handle_Standard_Transient &ent, const char * sign);
		%feature("autodoc", "1");
		char * LastValue() const;
		%feature("autodoc", "1");
		void Init(const char * name, const Handle_Dico_DictionaryOfInteger &count, const Handle_Dico_DictionaryOfTransient &list, const Standard_Integer nbnuls);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfHAsciiString List(const char * root="") const;
		%feature("autodoc", "1");
		Standard_Boolean HasEntities() const;
		%feature("autodoc", "1");
		Standard_Integer NbNulls() const;
		%feature("autodoc", "1");
		Standard_Integer NbTimes(const char * sign) const;
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient Entities(const char * sign) const;
		%feature("autodoc", "1");
		void SetName(const char * name);
		%feature("autodoc", "1");
		virtual		char * Name() const;
		%feature("autodoc", "1");
		virtual		void PrintCount(const Handle_Message_Messenger &S) const;
		%feature("autodoc", "1");
		virtual		void PrintList(const Handle_Message_Messenger &S, const Handle_Interface_InterfaceModel &model, const IFSelect_PrintCount mod=IFSelect_ListByItem) const;
		%feature("autodoc", "1");
		virtual		void PrintSum(const Handle_Message_Messenger &S) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IFSelect_SignatureList {
	Handle_IFSelect_SignatureList GetHandle() {
	return *(Handle_IFSelect_SignatureList*) &$self;
	}
};
%extend IFSelect_SignatureList {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IFSelect_SignatureList::~IFSelect_SignatureList %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFSelect_SignatureList {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFSelect_CheckCounter;
class IFSelect_CheckCounter : public IFSelect_SignatureList {
	public:
		%feature("autodoc", "1");
		IFSelect_CheckCounter(const Standard_Boolean withlist=0);
		%feature("autodoc", "1");
		void SetSignature(const Handle_MoniTool_SignText &sign);
		%feature("autodoc", "1");
		Handle_MoniTool_SignText Signature() const;
		%feature("autodoc", "1");
		void Analyse(const Interface_CheckIterator &list, const Handle_Interface_InterfaceModel &model, const Standard_Boolean original=0, const Standard_Boolean failsonly=0);

};
%extend IFSelect_CheckCounter {
	Handle_IFSelect_CheckCounter GetHandle() {
	return *(Handle_IFSelect_CheckCounter*) &$self;
	}
};
%extend IFSelect_CheckCounter {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IFSelect_CheckCounter::~IFSelect_CheckCounter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFSelect_CheckCounter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFSelect_WorkLibrary;
class IFSelect_WorkLibrary : public Standard_Transient {
	public:
		%feature("autodoc", "1");
		virtual		Standard_Integer ReadFile(const char * name, Handle_Interface_InterfaceModel & model, const Handle_Interface_Protocol &protocol) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean WriteFile(IFSelect_ContextWrite & ctx) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean CopyModel(const Handle_Interface_InterfaceModel &original, const Handle_Interface_InterfaceModel &newmodel, const Interface_EntityIterator &list, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		virtual		void DumpEntity(const Handle_Interface_InterfaceModel &model, const Handle_Interface_Protocol &protocol, const Handle_Standard_Transient &entity, const Handle_Message_Messenger &S, const Standard_Integer level) const;
		%feature("autodoc", "1");
		void DumpEntity(const Handle_Interface_InterfaceModel &model, const Handle_Interface_Protocol &protocol, const Handle_Standard_Transient &entity, const Handle_Message_Messenger &S) const;
		%feature("autodoc", "1");
		void SetDumpLevels(const Standard_Integer def, const Standard_Integer max);
		%feature("autodoc","DumpLevels() -> [Standard_Integer, Standard_Integer]");
		void DumpLevels(Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		void SetDumpHelp(const Standard_Integer level, const char * help);
		%feature("autodoc", "1");
		char * DumpHelp(const Standard_Integer level) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IFSelect_WorkLibrary {
	Handle_IFSelect_WorkLibrary GetHandle() {
	return *(Handle_IFSelect_WorkLibrary*) &$self;
	}
};
%extend IFSelect_WorkLibrary {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IFSelect_WorkLibrary::~IFSelect_WorkLibrary %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFSelect_WorkLibrary {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFSelect_EditForm;
class IFSelect_EditForm : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		IFSelect_EditForm(const Handle_IFSelect_Editor &editor, const Standard_Boolean readonly, const Standard_Boolean undoable, const char * label="");
		%feature("autodoc", "1");
		IFSelect_EditForm(const Handle_IFSelect_Editor &editor, const TColStd_SequenceOfInteger &nums, const Standard_Boolean readonly, const Standard_Boolean undoable, const char * label="");
		%feature("autodoc", "1");
		Standard_Boolean & EditKeepStatus();
		%feature("autodoc", "1");
		char * Label() const;
		%feature("autodoc", "1");
		Standard_Boolean IsLoaded() const;
		%feature("autodoc", "1");
		void ClearData();
		%feature("autodoc", "1");
		void SetData(const Handle_Standard_Transient &ent, const Handle_Interface_InterfaceModel &model);
		%feature("autodoc", "1");
		void SetEntity(const Handle_Standard_Transient &ent);
		%feature("autodoc", "1");
		void SetModel(const Handle_Interface_InterfaceModel &model);
		%feature("autodoc", "1");
		Handle_Standard_Transient Entity() const;
		%feature("autodoc", "1");
		Handle_Interface_InterfaceModel Model() const;
		%feature("autodoc", "1");
		Handle_IFSelect_Editor Editor() const;
		%feature("autodoc", "1");
		Standard_Boolean IsComplete() const;
		%feature("autodoc", "1");
		Standard_Integer NbValues(const Standard_Boolean editable) const;
		%feature("autodoc", "1");
		Standard_Integer NumberFromRank(const Standard_Integer rank) const;
		%feature("autodoc", "1");
		Standard_Integer RankFromNumber(const Standard_Integer number) const;
		%feature("autodoc", "1");
		Standard_Integer NameNumber(const char * name) const;
		%feature("autodoc", "1");
		Standard_Integer NameRank(const char * name) const;
		%feature("autodoc", "1");
		void LoadDefault();
		%feature("autodoc", "1");
		virtual		Standard_Boolean LoadData(const Handle_Standard_Transient &ent, const Handle_Interface_InterfaceModel &model);
		%feature("autodoc", "1");
		Standard_Boolean LoadEntity(const Handle_Standard_Transient &ent);
		%feature("autodoc", "1");
		Standard_Boolean LoadModel(const Handle_Interface_InterfaceModel &model);
		%feature("autodoc", "1");
		Standard_Boolean LoadData();
		%feature("autodoc", "1");
		Handle_IFSelect_ListEditor ListEditor(const Standard_Integer num) const;
		%feature("autodoc", "1");
		void LoadValue(const Standard_Integer num, const Handle_TCollection_HAsciiString &val);
		%feature("autodoc", "1");
		void LoadList(const Standard_Integer num, const Handle_TColStd_HSequenceOfHAsciiString &list);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString OriginalValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfHAsciiString OriginalList(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString EditedValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfHAsciiString EditedList(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Boolean IsModified(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Boolean IsTouched(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Boolean Modify(const Standard_Integer num, const Handle_TCollection_HAsciiString &newval, const Standard_Boolean enforce=0);
		%feature("autodoc", "1");
		Standard_Boolean ModifyList(const Standard_Integer num, const Handle_IFSelect_ListEditor &edited, const Standard_Boolean enforce=0);
		%feature("autodoc", "1");
		Standard_Boolean ModifyListValue(const Standard_Integer num, const Handle_TColStd_HSequenceOfHAsciiString &list, const Standard_Boolean enforce=0);
		%feature("autodoc", "1");
		Standard_Boolean Touch(const Standard_Integer num, const Handle_TCollection_HAsciiString &newval);
		%feature("autodoc", "1");
		Standard_Boolean TouchList(const Standard_Integer num, const Handle_TColStd_HSequenceOfHAsciiString &newlist);
		%feature("autodoc", "1");
		void ClearEdit(const Standard_Integer num=0);
		%feature("autodoc", "1");
		void PrintDefs(const Handle_Message_Messenger &S) const;
		%feature("autodoc", "1");
		void PrintValues(const Handle_Message_Messenger &S, const Standard_Integer what, const Standard_Boolean names, const Standard_Boolean alsolist=0) const;
		%feature("autodoc", "1");
		Standard_Boolean Apply();
		%feature("autodoc", "1");
		virtual		Standard_Boolean Recognize() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean ApplyData(const Handle_Standard_Transient &ent, const Handle_Interface_InterfaceModel &model);
		%feature("autodoc", "1");
		Standard_Boolean Undo();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IFSelect_EditForm {
	Handle_IFSelect_EditForm GetHandle() {
	return *(Handle_IFSelect_EditForm*) &$self;
	}
};
%extend IFSelect_EditForm {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IFSelect_EditForm::~IFSelect_EditForm %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFSelect_EditForm {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFSelect_TSeqOfSelection;
class IFSelect_TSeqOfSelection : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		IFSelect_TSeqOfSelection();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const IFSelect_TSeqOfSelection & Assign(const IFSelect_TSeqOfSelection &Other);
		%feature("autodoc", "1");
		const IFSelect_TSeqOfSelection & operator=(const IFSelect_TSeqOfSelection &Other);
		%feature("autodoc", "1");
		void Append(const Handle_IFSelect_Selection &T);
		%feature("autodoc", "1");
		void Append(IFSelect_TSeqOfSelection & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_IFSelect_Selection &T);
		%feature("autodoc", "1");
		void Prepend(IFSelect_TSeqOfSelection & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_IFSelect_Selection &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, IFSelect_TSeqOfSelection & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_IFSelect_Selection &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, IFSelect_TSeqOfSelection & S);
		%feature("autodoc", "1");
		const Handle_IFSelect_Selection & First() const;
		%feature("autodoc", "1");
		const Handle_IFSelect_Selection & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, IFSelect_TSeqOfSelection & S);
		%feature("autodoc", "1");
		const Handle_IFSelect_Selection & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_IFSelect_Selection & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_IFSelect_Selection &I);
		%feature("autodoc", "1");
		Handle_IFSelect_Selection & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_IFSelect_Selection & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") IFSelect_TSeqOfSelection::~IFSelect_TSeqOfSelection %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFSelect_TSeqOfSelection {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFSelect_SelectExplore;
class IFSelect_SelectExplore : public IFSelect_SelectDeduct {
	public:
		%feature("autodoc", "1");
		Standard_Integer Level() const;
		%feature("autodoc", "1");
		virtual		Interface_EntityIterator RootResult(const Interface_Graph &G) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Explore(const Standard_Integer level, const Handle_Standard_Transient &ent, const Interface_Graph &G, Interface_EntityIterator & explored) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString Label() const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString ExploreLabel() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IFSelect_SelectExplore {
	Handle_IFSelect_SelectExplore GetHandle() {
	return *(Handle_IFSelect_SelectExplore*) &$self;
	}
};
%extend IFSelect_SelectExplore {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IFSelect_SelectExplore::~IFSelect_SelectExplore %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFSelect_SelectExplore {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFSelect_SelectSignedShared;
class IFSelect_SelectSignedShared : public IFSelect_SelectExplore {
	public:
		%feature("autodoc", "1");
		IFSelect_SelectSignedShared(const Handle_IFSelect_Signature &matcher, const char * signtext, const Standard_Boolean exact=1, const Standard_Integer level=0);
		%feature("autodoc", "1");
		Handle_IFSelect_Signature Signature() const;
		%feature("autodoc", "1");
		const TCollection_AsciiString & SignatureText() const;
		%feature("autodoc", "1");
		Standard_Boolean IsExact() const;

};
%extend IFSelect_SelectSignedShared {
	Handle_IFSelect_SelectSignedShared GetHandle() {
	return *(Handle_IFSelect_SelectSignedShared*) &$self;
	}
};
%extend IFSelect_SelectSignedShared {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IFSelect_SelectSignedShared::~IFSelect_SelectSignedShared %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFSelect_SelectSignedShared {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFSelect_SelectSuite;
class IFSelect_SelectSuite : public IFSelect_SelectDeduct {
	public:
		%feature("autodoc", "1");
		IFSelect_SelectSuite();
		%feature("autodoc", "1");
		Standard_Boolean AddInput(const Handle_IFSelect_Selection &item);
		%feature("autodoc", "1");
		void AddPrevious(const Handle_IFSelect_SelectDeduct &item);
		%feature("autodoc", "1");
		void AddNext(const Handle_IFSelect_SelectDeduct &item);
		%feature("autodoc", "1");
		Standard_Integer NbItems() const;
		%feature("autodoc", "1");
		Handle_IFSelect_SelectDeduct Item(const Standard_Integer num) const;
		%feature("autodoc", "1");
		void SetLabel(const char * lab);
		%feature("autodoc", "1");
		virtual		Interface_EntityIterator RootResult(const Interface_Graph &G) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString Label() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IFSelect_SelectSuite {
	Handle_IFSelect_SelectSuite GetHandle() {
	return *(Handle_IFSelect_SelectSuite*) &$self;
	}
};
%extend IFSelect_SelectSuite {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IFSelect_SelectSuite::~IFSelect_SelectSuite %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFSelect_SelectSuite {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFSelect_SelectSignedSharing;
class IFSelect_SelectSignedSharing : public IFSelect_SelectExplore {
	public:
		%feature("autodoc", "1");
		IFSelect_SelectSignedSharing(const Handle_IFSelect_Signature &matcher, const char * signtext, const Standard_Boolean exact=1, const Standard_Integer level=0);
		%feature("autodoc", "1");
		Handle_IFSelect_Signature Signature() const;
		%feature("autodoc", "1");
		const TCollection_AsciiString & SignatureText() const;
		%feature("autodoc", "1");
		Standard_Boolean IsExact() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Explore(const Standard_Integer level, const Handle_Standard_Transient &ent, const Interface_Graph &G, Interface_EntityIterator & explored) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString ExploreLabel() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IFSelect_SelectSignedSharing {
	Handle_IFSelect_SelectSignedSharing GetHandle() {
	return *(Handle_IFSelect_SelectSignedSharing*) &$self;
	}
};
%extend IFSelect_SelectSignedSharing {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IFSelect_SelectSignedSharing::~IFSelect_SelectSignedSharing %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFSelect_SelectSignedSharing {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFSelect_Functions;
class IFSelect_Functions {
	public:
		%feature("autodoc", "1");
		IFSelect_Functions();
		%feature("autodoc", "1");
		Handle_Standard_Transient GiveEntity(const Handle_IFSelect_WorkSession &WS, const char * name="");
		%feature("autodoc", "1");
		Standard_Integer GiveEntityNumber(const Handle_IFSelect_WorkSession &WS, const char * name="");
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient GiveList(const Handle_IFSelect_WorkSession &WS, const char * first="", const char * second="");
		%feature("autodoc", "1");
		Handle_IFSelect_Dispatch GiveDispatch(const Handle_IFSelect_WorkSession &WS, const char * name, const Standard_Boolean mode=1);
		%feature("autodoc", "1");
		void Init();

};
%feature("shadow") IFSelect_Functions::~IFSelect_Functions %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFSelect_Functions {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFSelect_SelectShared;
class IFSelect_SelectShared : public IFSelect_SelectDeduct {
	public:
		%feature("autodoc", "1");
		IFSelect_SelectShared();
		%feature("autodoc", "1");
		virtual		Interface_EntityIterator RootResult(const Interface_Graph &G) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString Label() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IFSelect_SelectShared {
	Handle_IFSelect_SelectShared GetHandle() {
	return *(Handle_IFSelect_SelectShared*) &$self;
	}
};
%extend IFSelect_SelectShared {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IFSelect_SelectShared::~IFSelect_SelectShared %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFSelect_SelectShared {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFSelect_SelectSent;
class IFSelect_SelectSent : public IFSelect_SelectExtract {
	public:
		%feature("autodoc", "1");
		IFSelect_SelectSent(const Standard_Integer sentcount=1, const Standard_Boolean atleast=1);
		%feature("autodoc", "1");
		Standard_Integer SentCount() const;
		%feature("autodoc", "1");
		Standard_Boolean AtLeast() const;
		%feature("autodoc", "1");
		virtual		Interface_EntityIterator RootResult(const Interface_Graph &G) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Sort(const Standard_Integer rank, const Handle_Standard_Transient &ent, const Handle_Interface_InterfaceModel &model) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString ExtractLabel() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IFSelect_SelectSent {
	Handle_IFSelect_SelectSent GetHandle() {
	return *(Handle_IFSelect_SelectSent*) &$self;
	}
};
%extend IFSelect_SelectSent {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IFSelect_SelectSent::~IFSelect_SelectSent %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFSelect_SelectSent {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFSelect_SignType;
class IFSelect_SignType : public IFSelect_Signature {
	public:
		%feature("autodoc", "1");
		IFSelect_SignType(const Standard_Boolean nopk=0);
		%feature("autodoc", "1");
		virtual		char * Value(const Handle_Standard_Transient &ent, const Handle_Interface_InterfaceModel &model) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IFSelect_SignType {
	Handle_IFSelect_SignType GetHandle() {
	return *(Handle_IFSelect_SignType*) &$self;
	}
};
%extend IFSelect_SignType {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IFSelect_SignType::~IFSelect_SignType %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFSelect_SignType {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFSelect_SignAncestor;
class IFSelect_SignAncestor : public IFSelect_SignType {
	public:
		%feature("autodoc", "1");
		IFSelect_SignAncestor(const Standard_Boolean nopk=0);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Matches(const Handle_Standard_Transient &ent, const Handle_Interface_InterfaceModel &model, const TCollection_AsciiString &text, const Standard_Boolean exact) const;

};
%extend IFSelect_SignAncestor {
	Handle_IFSelect_SignAncestor GetHandle() {
	return *(Handle_IFSelect_SignAncestor*) &$self;
	}
};
%extend IFSelect_SignAncestor {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IFSelect_SignAncestor::~IFSelect_SignAncestor %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFSelect_SignAncestor {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFSelect_DispPerFiles;
class IFSelect_DispPerFiles : public IFSelect_Dispatch {
	public:
		%feature("autodoc", "1");
		IFSelect_DispPerFiles();
		%feature("autodoc", "1");
		Handle_IFSelect_IntParam Count() const;
		%feature("autodoc", "1");
		void SetCount(const Handle_IFSelect_IntParam &count);
		%feature("autodoc", "1");
		Standard_Integer CountValue() const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString Label() const;
		%feature("autodoc","LimitedMax(Standard_Integer nbent) -> Standard_Integer");
		virtual		Standard_Boolean LimitedMax(const Standard_Integer nbent, Standard_Integer &OutValue) const;
		%feature("autodoc","PacketsCount(const G) -> Standard_Integer");
		virtual		Standard_Boolean PacketsCount(const Interface_Graph &G, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		virtual		void Packets(const Interface_Graph &G, IFGraph_SubPartsIterator & packs) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IFSelect_DispPerFiles {
	Handle_IFSelect_DispPerFiles GetHandle() {
	return *(Handle_IFSelect_DispPerFiles*) &$self;
	}
};
%extend IFSelect_DispPerFiles {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IFSelect_DispPerFiles::~IFSelect_DispPerFiles %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFSelect_DispPerFiles {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFSelect_WorkSession;
class IFSelect_WorkSession : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		IFSelect_WorkSession();
		%feature("autodoc", "1");
		void SetErrorHandle(const Standard_Boolean hand);
		%feature("autodoc", "1");
		Standard_Boolean ErrorHandle() const;
		%feature("autodoc", "1");
		const Handle_IFSelect_ShareOut & ShareOut() const;
		%feature("autodoc", "1");
		void SetShareOut(const Handle_IFSelect_ShareOut &shareout);
		%feature("autodoc", "1");
		void SetLibrary(const Handle_IFSelect_WorkLibrary &lib);
		%feature("autodoc", "1");
		Handle_IFSelect_WorkLibrary WorkLibrary() const;
		%feature("autodoc", "1");
		void SetProtocol(const Handle_Interface_Protocol &protocol);
		%feature("autodoc", "1");
		Handle_Interface_Protocol Protocol() const;
		%feature("autodoc", "1");
		void SetSignType(const Handle_IFSelect_Signature &signtype);
		%feature("autodoc", "1");
		Handle_IFSelect_Signature SignType() const;
		%feature("autodoc", "1");
		Standard_Boolean HasModel() const;
		%feature("autodoc", "1");
		void SetModel(const Handle_Interface_InterfaceModel &model, const Standard_Boolean clearpointed=1);
		%feature("autodoc", "1");
		Handle_Interface_InterfaceModel Model() const;
		%feature("autodoc", "1");
		void SetLoadedFile(const char * filename);
		%feature("autodoc", "1");
		char * LoadedFile() const;
		%feature("autodoc", "1");
		IFSelect_ReturnStatus ReadFile(const char * filename);
		%feature("autodoc", "1");
		Standard_Integer NbStartingEntities() const;
		%feature("autodoc", "1");
		Handle_Standard_Transient StartingEntity(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer StartingNumber(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Standard_Integer NumberFromLabel(const char * val, const Standard_Integer afternum=0) const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString EntityLabel(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString EntityName(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Standard_Integer CategoryNumber(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		char * CategoryName(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		char * ValidityName(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		virtual		void ClearData(const Standard_Integer mode);
		%feature("autodoc", "1");
		Standard_Boolean ComputeGraph(const Standard_Boolean enforce=0);
		%feature("autodoc", "1");
		Handle_Interface_HGraph HGraph();
		%feature("autodoc", "1");
		const Interface_Graph & Graph();
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient Shareds(const Handle_Standard_Transient &ent);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient Sharings(const Handle_Standard_Transient &ent);
		%feature("autodoc", "1");
		Standard_Boolean IsLoaded() const;
		%feature("autodoc", "1");
		Standard_Boolean ComputeCheck(const Standard_Boolean enforce=0);
		%feature("autodoc", "1");
		Interface_CheckIterator ModelCheckList(const Standard_Boolean complete=1);
		%feature("autodoc", "1");
		Interface_CheckIterator CheckOne(const Handle_Standard_Transient &ent, const Standard_Boolean complete=1);
		%feature("autodoc", "1");
		Interface_CheckIterator LastRunCheckList() const;
		%feature("autodoc", "1");
		Standard_Integer MaxIdent() const;
		%feature("autodoc", "1");
		Handle_Standard_Transient Item(const Standard_Integer id) const;
		%feature("autodoc", "1");
		Standard_Integer ItemIdent(const Handle_Standard_Transient &item) const;
		%feature("autodoc", "1");
		Handle_Standard_Transient NamedItem(const char * name) const;
		%feature("autodoc", "1");
		Handle_Standard_Transient NamedItem(const Handle_TCollection_HAsciiString &name) const;
		%feature("autodoc", "1");
		Standard_Integer NameIdent(const char * name) const;
		%feature("autodoc", "1");
		Standard_Boolean HasName(const Handle_Standard_Transient &item) const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Name(const Handle_Standard_Transient &item) const;
		%feature("autodoc", "1");
		Standard_Integer AddItem(const Handle_Standard_Transient &item, const Standard_Boolean active=1);
		%feature("autodoc", "1");
		Standard_Integer AddNamedItem(const char * name, const Handle_Standard_Transient &item, const Standard_Boolean active=1);
		%feature("autodoc", "1");
		Standard_Boolean SetActive(const Handle_Standard_Transient &item, const Standard_Boolean mode);
		%feature("autodoc", "1");
		Standard_Boolean RemoveNamedItem(const char * name);
		%feature("autodoc", "1");
		Standard_Boolean RemoveName(const char * name);
		%feature("autodoc", "1");
		Standard_Boolean RemoveItem(const Handle_Standard_Transient &item);
		%feature("autodoc", "1");
		void ClearItems();
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString ItemLabel(const Standard_Integer id) const;
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfInteger ItemIdents(const Handle_Standard_Type &type) const;
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfHAsciiString ItemNames(const Handle_Standard_Type &type) const;
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfHAsciiString ItemNamesForLabel(const char * label) const;
		%feature("autodoc", "1");
		Standard_Integer NextIdentForLabel(const char * label, const Standard_Integer id, const Standard_Integer mode=0) const;
		%feature("autodoc", "1");
		Handle_Standard_Transient NewParamFromStatic(const char * statname, const char * name="");
		%feature("autodoc", "1");
		Handle_IFSelect_IntParam IntParam(const Standard_Integer id) const;
		%feature("autodoc", "1");
		Standard_Integer IntValue(const Handle_IFSelect_IntParam &it) const;
		%feature("autodoc", "1");
		Handle_IFSelect_IntParam NewIntParam(const char * name="");
		%feature("autodoc", "1");
		Standard_Boolean SetIntValue(const Handle_IFSelect_IntParam &it, const Standard_Integer val);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString TextParam(const Standard_Integer id) const;
		%feature("autodoc", "1");
		TCollection_AsciiString TextValue(const Handle_TCollection_HAsciiString &par) const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString NewTextParam(const char * name="");
		%feature("autodoc", "1");
		Standard_Boolean SetTextValue(const Handle_TCollection_HAsciiString &par, const char * val);
		%feature("autodoc", "1");
		Handle_IFSelect_Signature Signature(const Standard_Integer id) const;
		%feature("autodoc", "1");
		char * SignValue(const Handle_IFSelect_Signature &sign, const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Handle_IFSelect_Selection Selection(const Standard_Integer id) const;
		%feature("autodoc", "1");
		Interface_EntityIterator EvalSelection(const Handle_IFSelect_Selection &sel) const;
		%feature("autodoc", "1");
		IFSelect_SelectionIterator Sources(const Handle_IFSelect_Selection &sel) const;
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient SelectionResult(const Handle_IFSelect_Selection &sel) const;
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient SelectionResultFromList(const Handle_IFSelect_Selection &sel, const Handle_TColStd_HSequenceOfTransient &list) const;
		%feature("autodoc", "1");
		Standard_Boolean SetItemSelection(const Handle_Standard_Transient &item, const Handle_IFSelect_Selection &sel);
		%feature("autodoc", "1");
		Standard_Boolean ResetItemSelection(const Handle_Standard_Transient &item);
		%feature("autodoc", "1");
		Handle_IFSelect_Selection ItemSelection(const Handle_Standard_Transient &item) const;
		%feature("autodoc", "1");
		Handle_IFSelect_SignCounter SignCounter(const Standard_Integer id) const;
		%feature("autodoc", "1");
		Standard_Boolean ComputeCounter(const Handle_IFSelect_SignCounter &counter, const Standard_Boolean forced=0);
		%feature("autodoc", "1");
		Standard_Boolean ComputeCounterFromList(const Handle_IFSelect_SignCounter &counter, const Handle_TColStd_HSequenceOfTransient &list, const Standard_Boolean clear=1);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfInteger AppliedDispatches() const;
		%feature("autodoc", "1");
		void ClearShareOut(const Standard_Boolean onlydisp);
		%feature("autodoc", "1");
		Handle_IFSelect_Dispatch Dispatch(const Standard_Integer id) const;
		%feature("autodoc", "1");
		Standard_Integer DispatchRank(const Handle_IFSelect_Dispatch &disp) const;
		%feature("autodoc", "1");
		Handle_IFSelect_ModelCopier ModelCopier() const;
		%feature("autodoc", "1");
		void SetModelCopier(const Handle_IFSelect_ModelCopier &copier);
		%feature("autodoc", "1");
		Standard_Integer NbFinalModifiers(const Standard_Boolean formodel) const;
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfInteger FinalModifierIdents(const Standard_Boolean formodel) const;
		%feature("autodoc", "1");
		Handle_IFSelect_GeneralModifier GeneralModifier(const Standard_Integer id) const;
		%feature("autodoc", "1");
		Handle_IFSelect_Modifier ModelModifier(const Standard_Integer id) const;
		%feature("autodoc", "1");
		Standard_Integer ModifierRank(const Handle_IFSelect_GeneralModifier &item) const;
		%feature("autodoc", "1");
		Standard_Boolean ChangeModifierRank(const Standard_Boolean formodel, const Standard_Integer before, const Standard_Integer after);
		%feature("autodoc", "1");
		void ClearFinalModifiers();
		%feature("autodoc", "1");
		Standard_Boolean SetAppliedModifier(const Handle_IFSelect_GeneralModifier &modif, const Handle_Standard_Transient &item);
		%feature("autodoc", "1");
		Standard_Boolean ResetAppliedModifier(const Handle_IFSelect_GeneralModifier &modif);
		%feature("autodoc", "1");
		Handle_Standard_Transient UsesAppliedModifier(const Handle_IFSelect_GeneralModifier &modif) const;
		%feature("autodoc", "1");
		Handle_IFSelect_Transformer Transformer(const Standard_Integer id) const;
		%feature("autodoc", "1");
		Standard_Integer RunTransformer(const Handle_IFSelect_Transformer &transf);
		%feature("autodoc", "1");
		Standard_Integer RunModifier(const Handle_IFSelect_Modifier &modif, const Standard_Boolean copy);
		%feature("autodoc", "1");
		Standard_Integer RunModifierSelected(const Handle_IFSelect_Modifier &modif, const Handle_IFSelect_Selection &sel, const Standard_Boolean copy);
		%feature("autodoc", "1");
		Handle_IFSelect_Transformer NewTransformStandard(const Standard_Boolean copy, const char * name="");
		%feature("autodoc", "1");
		Standard_Boolean SetModelContent(const Handle_IFSelect_Selection &sel, const Standard_Boolean keep);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString FilePrefix() const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString DefaultFileRoot() const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString FileExtension() const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString FileRoot(const Handle_IFSelect_Dispatch &disp) const;
		%feature("autodoc", "1");
		void SetFilePrefix(const char * name);
		%feature("autodoc", "1");
		Standard_Boolean SetDefaultFileRoot(const char * name);
		%feature("autodoc", "1");
		void SetFileExtension(const char * name);
		%feature("autodoc", "1");
		Standard_Boolean SetFileRoot(const Handle_IFSelect_Dispatch &disp, const char * name);
		%feature("autodoc", "1");
		char * GiveFileRoot(const char * file) const;
		%feature("autodoc", "1");
		char * GiveFileComplete(const char * file) const;
		%feature("autodoc", "1");
		void ClearFile();
		%feature("autodoc", "1");
		void EvaluateFile();
		%feature("autodoc", "1");
		Standard_Integer NbFiles() const;
		%feature("autodoc", "1");
		Handle_Interface_InterfaceModel FileModel(const Standard_Integer num) const;
		%feature("autodoc", "1");
		TCollection_AsciiString FileName(const Standard_Integer num) const;
		%feature("autodoc", "1");
		void BeginSentFiles(const Standard_Boolean record);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfHAsciiString SentFiles() const;
		%feature("autodoc", "1");
		Standard_Boolean SendSplit();
		%feature("autodoc", "1");
		Handle_IFSelect_PacketList EvalSplit() const;
		%feature("autodoc", "1");
		Interface_EntityIterator SentList(const Standard_Integer count=-0x000000001) const;
		%feature("autodoc", "1");
		Standard_Integer MaxSendingCount() const;
		%feature("autodoc", "1");
		Standard_Boolean SetRemaining(const IFSelect_RemainMode mode);
		%feature("autodoc", "1");
		IFSelect_ReturnStatus SendAll(const char * filename, const Standard_Boolean computegraph=0);
		%feature("autodoc", "1");
		IFSelect_ReturnStatus SendSelected(const char * filename, const Handle_IFSelect_Selection &sel, const Standard_Boolean computegraph=0);
		%feature("autodoc", "1");
		IFSelect_ReturnStatus WriteFile(const char * filename);
		%feature("autodoc", "1");
		IFSelect_ReturnStatus WriteFile(const char * filename, const Handle_IFSelect_Selection &sel);
		%feature("autodoc", "1");
		Standard_Integer NbSources(const Handle_IFSelect_Selection &sel) const;
		%feature("autodoc", "1");
		Handle_IFSelect_Selection Source(const Handle_IFSelect_Selection &sel, const Standard_Integer num=1) const;
		%feature("autodoc", "1");
		Standard_Boolean IsReversedSelectExtract(const Handle_IFSelect_Selection &sel) const;
		%feature("autodoc", "1");
		Standard_Boolean ToggleSelectExtract(const Handle_IFSelect_Selection &sel);
		%feature("autodoc", "1");
		Standard_Boolean SetInputSelection(const Handle_IFSelect_Selection &sel, const Handle_IFSelect_Selection &input);
		%feature("autodoc", "1");
		Standard_Boolean SetControl(const Handle_IFSelect_Selection &sel, const Handle_IFSelect_Selection &sc, const Standard_Boolean formain=1);
		%feature("autodoc", "1");
		Standard_Integer CombineAdd(const Handle_IFSelect_Selection &selcomb, const Handle_IFSelect_Selection &seladd, const Standard_Integer atnum=0);
		%feature("autodoc", "1");
		Standard_Boolean CombineRemove(const Handle_IFSelect_Selection &selcomb, const Handle_IFSelect_Selection &selrem);
		%feature("autodoc", "1");
		Handle_IFSelect_Selection NewSelectPointed(const Handle_TColStd_HSequenceOfTransient &list, const char * name);
		%feature("autodoc", "1");
		Standard_Boolean SetSelectPointed(const Handle_IFSelect_Selection &sel, const Handle_TColStd_HSequenceOfTransient &list, const Standard_Integer mode) const;
		%feature("autodoc", "1");
		Handle_IFSelect_Selection GiveSelection(const char * selname) const;
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient GiveList(const Handle_Standard_Transient &obj) const;
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient GiveList(const char * first, const char * second="") const;
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient GiveListFromList(const char * selname, const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient GiveListCombined(const Handle_TColStd_HSequenceOfTransient &l1, const Handle_TColStd_HSequenceOfTransient &l2, const Standard_Integer mode) const;
		%feature("autodoc", "1");
		void QueryCheckList(const Interface_CheckIterator &chl);
		%feature("autodoc", "1");
		Standard_Integer QueryCheckStatus(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Standard_Integer QueryParent(const Handle_Standard_Transient &entdad, const Handle_Standard_Transient &entson) const;
		%feature("autodoc", "1");
		void SetParams(const TColStd_SequenceOfTransient &params, const TColStd_SequenceOfInteger &uselist);
		%feature("autodoc", "1");
		void TraceStatics(const Standard_Integer use, const Standard_Integer mode=0) const;
		%feature("autodoc", "1");
		void DumpShare() const;
		%feature("autodoc", "1");
		void ListItems(const char * label="") const;
		%feature("autodoc", "1");
		void ListFinalModifiers(const Standard_Boolean formodel) const;
		%feature("autodoc", "1");
		void DumpSelection(const Handle_IFSelect_Selection &sel) const;
		%feature("autodoc", "1");
		void DumpModel(const Standard_Integer level, const Handle_Message_Messenger &S);
		%feature("autodoc", "1");
		void TraceDumpModel(const Standard_Integer mode);
		%feature("autodoc", "1");
		void DumpEntity(const Handle_Standard_Transient &ent, const Standard_Integer level, const Handle_Message_Messenger &S) const;
		%feature("autodoc", "1");
		void PrintEntityStatus(const Handle_Standard_Transient &ent, const Handle_Message_Messenger &S);
		%feature("autodoc", "1");
		void TraceDumpEntity(const Handle_Standard_Transient &ent, const Standard_Integer level) const;
		%feature("autodoc", "1");
		void PrintCheckList(const Interface_CheckIterator &checklist, const Standard_Boolean failsonly, const IFSelect_PrintCount mode) const;
		%feature("autodoc", "1");
		void PrintSignatureList(const Handle_IFSelect_SignatureList &signlist, const IFSelect_PrintCount mode) const;
		%feature("autodoc", "1");
		void EvaluateSelection(const Handle_IFSelect_Selection &sel) const;
		%feature("autodoc", "1");
		void EvaluateDispatch(const Handle_IFSelect_Dispatch &disp, const Standard_Integer mode=0) const;
		%feature("autodoc", "1");
		void EvaluateComplete(const Standard_Integer mode=0) const;
		%feature("autodoc", "1");
		void ListEntities(const Interface_EntityIterator &iter, const Standard_Integer mode) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IFSelect_WorkSession {
	Handle_IFSelect_WorkSession GetHandle() {
	return *(Handle_IFSelect_WorkSession*) &$self;
	}
};
%extend IFSelect_WorkSession {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IFSelect_WorkSession::~IFSelect_WorkSession %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFSelect_WorkSession {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFSelect_SignMultiple;
class IFSelect_SignMultiple : public IFSelect_Signature {
	public:
		%feature("autodoc", "1");
		IFSelect_SignMultiple(const char * name);
		%feature("autodoc", "1");
		void Add(const Handle_IFSelect_Signature &subsign, const Standard_Integer width=0, const Standard_Boolean maxi=0);
		%feature("autodoc", "1");
		virtual		char * Value(const Handle_Standard_Transient &ent, const Handle_Interface_InterfaceModel &model) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Matches(const Handle_Standard_Transient &ent, const Handle_Interface_InterfaceModel &model, const TCollection_AsciiString &text, const Standard_Boolean exact) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IFSelect_SignMultiple {
	Handle_IFSelect_SignMultiple GetHandle() {
	return *(Handle_IFSelect_SignMultiple*) &$self;
	}
};
%extend IFSelect_SignMultiple {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IFSelect_SignMultiple::~IFSelect_SignMultiple %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFSelect_SignMultiple {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFSelect_Activator;
class IFSelect_Activator : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		void Adding(const Handle_IFSelect_Activator &actor, const Standard_Integer number, const char * command, const Standard_Integer mode);
		%feature("autodoc", "1");
		void Add(const Standard_Integer number, const char * command) const;
		%feature("autodoc", "1");
		void AddSet(const Standard_Integer number, const char * command) const;
		%feature("autodoc", "1");
		void Remove(const char * command);
		%feature("autodoc", "1");
		void SetAlias(const char * conf, const char * command, const char * aliasname);
		%feature("autodoc", "1");
		void SetCurrentAlias(const char * conf);
		%feature("autodoc", "1");
		TCollection_AsciiString Alias(const char * command);
		%feature("autodoc","Select(Standard_CString command) -> Standard_Integer");
		Standard_Boolean Select(const char * command, Standard_Integer &OutValue, Handle_IFSelect_Activator & actor);
		%feature("autodoc", "1");
		Standard_Integer Mode(const char * command);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfAsciiString Commands(const Standard_Integer mode=-0x000000001, const char * command="");
		%feature("autodoc", "1");
		virtual		IFSelect_ReturnStatus Do(const Standard_Integer number, const Handle_IFSelect_SessionPilot &pilot);
		%feature("autodoc", "1");
		virtual		char * Help(const Standard_Integer number) const;
		%feature("autodoc", "1");
		char * Group() const;
		%feature("autodoc", "1");
		char * File() const;
		%feature("autodoc", "1");
		void SetForGroup(const char * group, const char * file="");
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IFSelect_Activator {
	Handle_IFSelect_Activator GetHandle() {
	return *(Handle_IFSelect_Activator*) &$self;
	}
};
%extend IFSelect_Activator {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IFSelect_Activator::~IFSelect_Activator %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFSelect_Activator {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFSelect_SessionPilot;
class IFSelect_SessionPilot : public IFSelect_Activator {
	public:
		%feature("autodoc", "1");
		IFSelect_SessionPilot(const char * prompt="");
		%feature("autodoc", "1");
		Handle_IFSelect_WorkSession Session() const;
		%feature("autodoc", "1");
		Handle_IFSelect_WorkLibrary Library() const;
		%feature("autodoc", "1");
		Standard_Boolean RecordMode() const;
		%feature("autodoc", "1");
		void SetSession(const Handle_IFSelect_WorkSession &WS);
		%feature("autodoc", "1");
		void SetLibrary(const Handle_IFSelect_WorkLibrary &WL);
		%feature("autodoc", "1");
		void SetRecordMode(const Standard_Boolean mode);
		%feature("autodoc", "1");
		void SetCommandLine(const TCollection_AsciiString &command);
		%feature("autodoc", "1");
		const TCollection_AsciiString & CommandLine() const;
		%feature("autodoc", "1");
		char * CommandPart(const Standard_Integer numarg=0) const;
		%feature("autodoc", "1");
		Standard_Integer NbWords() const;
		%feature("autodoc", "1");
		const TCollection_AsciiString & Word(const Standard_Integer num) const;
		%feature("autodoc", "1");
		char * Arg(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Boolean RemoveWord(const Standard_Integer num);
		%feature("autodoc", "1");
		Standard_Integer NbCommands() const;
		%feature("autodoc", "1");
		const TCollection_AsciiString & Command(const Standard_Integer num) const;
		%feature("autodoc", "1");
		IFSelect_ReturnStatus RecordItem(const Handle_Standard_Transient &item);
		%feature("autodoc", "1");
		Handle_Standard_Transient RecordedItem() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		IFSelect_ReturnStatus ReadScript(const char * file="");
		%feature("autodoc", "1");
		IFSelect_ReturnStatus Perform();
		%feature("autodoc", "1");
		IFSelect_ReturnStatus ExecuteAlias(const TCollection_AsciiString &aliasname);
		%feature("autodoc", "1");
		IFSelect_ReturnStatus Execute(const TCollection_AsciiString &command);
		%feature("autodoc", "1");
		IFSelect_ReturnStatus ExecuteCounter(const Handle_IFSelect_SignCounter &counter, const Standard_Integer numword, const IFSelect_PrintCount mode=IFSelect_CountByItem);
		%feature("autodoc", "1");
		Standard_Integer Number(const char * val) const;
		%feature("autodoc", "1");
		virtual		IFSelect_ReturnStatus Do(const Standard_Integer number, const Handle_IFSelect_SessionPilot &session);

};
%extend IFSelect_SessionPilot {
	Handle_IFSelect_SessionPilot GetHandle() {
	return *(Handle_IFSelect_SessionPilot*) &$self;
	}
};
%extend IFSelect_SessionPilot {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IFSelect_SessionPilot::~IFSelect_SessionPilot %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFSelect_SessionPilot {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFSelect_SignCounter;
class IFSelect_SignCounter : public IFSelect_SignatureList {
	public:
		%feature("autodoc", "1");
		IFSelect_SignCounter(const Standard_Boolean withmap=1, const Standard_Boolean withlist=0);
		%feature("autodoc", "1");
		IFSelect_SignCounter(const Handle_IFSelect_Signature &matcher, const Standard_Boolean withmap=1, const Standard_Boolean withlist=0);
		%feature("autodoc", "1");
		Handle_IFSelect_Signature Signature() const;
		%feature("autodoc", "1");
		void SetMap(const Standard_Boolean withmap);
		%feature("autodoc", "1");
		virtual		Standard_Boolean AddEntity(const Handle_Standard_Transient &ent, const Handle_Interface_InterfaceModel &model);
		%feature("autodoc", "1");
		virtual		void AddSign(const Handle_Standard_Transient &ent, const Handle_Interface_InterfaceModel &model);
		%feature("autodoc", "1");
		void AddList(const Handle_TColStd_HSequenceOfTransient &list, const Handle_Interface_InterfaceModel &model);
		%feature("autodoc", "1");
		virtual		void AddWithGraph(const Handle_TColStd_HSequenceOfTransient &list, const Interface_Graph &graph);
		%feature("autodoc", "1");
		void AddModel(const Handle_Interface_InterfaceModel &model);
		%feature("autodoc", "1");
		void AddFromSelection(const Handle_IFSelect_Selection &sel, const Interface_Graph &G);
		%feature("autodoc", "1");
		void SetSelection(const Handle_IFSelect_Selection &sel);
		%feature("autodoc", "1");
		Handle_IFSelect_Selection Selection() const;
		%feature("autodoc", "1");
		void SetSelMode(const Standard_Integer selmode);
		%feature("autodoc", "1");
		Standard_Integer SelMode() const;
		%feature("autodoc", "1");
		Standard_Boolean ComputeSelected(const Interface_Graph &G, const Standard_Boolean forced=0);
		%feature("autodoc", "1");
		virtual		Handle_TCollection_HAsciiString Sign(const Handle_Standard_Transient &ent, const Handle_Interface_InterfaceModel &model) const;
		%feature("autodoc", "1");
		char * ComputedSign(const Handle_Standard_Transient &ent, const Interface_Graph &G);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IFSelect_SignCounter {
	Handle_IFSelect_SignCounter GetHandle() {
	return *(Handle_IFSelect_SignCounter*) &$self;
	}
};
%extend IFSelect_SignCounter {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IFSelect_SignCounter::~IFSelect_SignCounter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFSelect_SignCounter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFSelect_SelectModelEntities;
class IFSelect_SelectModelEntities : public IFSelect_SelectBase {
	public:
		%feature("autodoc", "1");
		IFSelect_SelectModelEntities();
		%feature("autodoc", "1");
		virtual		Interface_EntityIterator RootResult(const Interface_Graph &G) const;
		%feature("autodoc", "1");
		virtual		Interface_EntityIterator CompleteResult(const Interface_Graph &G) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString Label() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IFSelect_SelectModelEntities {
	Handle_IFSelect_SelectModelEntities GetHandle() {
	return *(Handle_IFSelect_SelectModelEntities*) &$self;
	}
};
%extend IFSelect_SelectModelEntities {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IFSelect_SelectModelEntities::~IFSelect_SelectModelEntities %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFSelect_SelectModelEntities {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFSelect_DispGlobal;
class IFSelect_DispGlobal : public IFSelect_Dispatch {
	public:
		%feature("autodoc", "1");
		IFSelect_DispGlobal();
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString Label() const;
		%feature("autodoc","LimitedMax(Standard_Integer nbent) -> Standard_Integer");
		virtual		Standard_Boolean LimitedMax(const Standard_Integer nbent, Standard_Integer &OutValue) const;
		%feature("autodoc","PacketsCount(const G) -> Standard_Integer");
		virtual		Standard_Boolean PacketsCount(const Interface_Graph &G, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		virtual		void Packets(const Interface_Graph &G, IFGraph_SubPartsIterator & packs) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IFSelect_DispGlobal {
	Handle_IFSelect_DispGlobal GetHandle() {
	return *(Handle_IFSelect_DispGlobal*) &$self;
	}
};
%extend IFSelect_DispGlobal {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IFSelect_DispGlobal::~IFSelect_DispGlobal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFSelect_DispGlobal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFSelect_ContextWrite;
class IFSelect_ContextWrite {
	public:
		%feature("autodoc", "1");
		IFSelect_ContextWrite(const Handle_Interface_InterfaceModel &model, const Handle_Interface_Protocol &proto, const Handle_IFSelect_AppliedModifiers &applieds, const char * filename);
		%feature("autodoc", "1");
		IFSelect_ContextWrite(const Handle_Interface_HGraph &hgraph, const Handle_Interface_Protocol &proto, const Handle_IFSelect_AppliedModifiers &applieds, const char * filename);
		%feature("autodoc", "1");
		Handle_Interface_InterfaceModel Model() const;
		%feature("autodoc", "1");
		Handle_Interface_Protocol Protocol() const;
		%feature("autodoc", "1");
		char * FileName() const;
		%feature("autodoc", "1");
		Handle_IFSelect_AppliedModifiers AppliedModifiers() const;
		%feature("autodoc", "1");
		const Interface_Graph & Graph();
		%feature("autodoc", "1");
		Standard_Integer NbModifiers() const;
		%feature("autodoc", "1");
		Standard_Boolean SetModifier(const Standard_Integer numod);
		%feature("autodoc", "1");
		Handle_IFSelect_GeneralModifier FileModifier() const;
		%feature("autodoc", "1");
		Standard_Boolean IsForNone() const;
		%feature("autodoc", "1");
		Standard_Boolean IsForAll() const;
		%feature("autodoc", "1");
		Standard_Integer NbEntities() const;
		%feature("autodoc", "1");
		void Start();
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		Handle_Standard_Transient Value() const;
		%feature("autodoc", "1");
		void AddCheck(const Handle_Interface_Check &check);
		%feature("autodoc", "1");
		void AddWarning(const Handle_Standard_Transient &start, const char * mess, const char * orig="");
		%feature("autodoc", "1");
		void AddFail(const Handle_Standard_Transient &start, const char * mess, const char * orig="");
		%feature("autodoc", "1");
		Handle_Interface_Check CCheck(const Standard_Integer num=0);
		%feature("autodoc", "1");
		Handle_Interface_Check CCheck(const Handle_Standard_Transient &start);
		%feature("autodoc", "1");
		Interface_CheckIterator CheckList() const;

};
%feature("shadow") IFSelect_ContextWrite::~IFSelect_ContextWrite %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFSelect_ContextWrite {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFSelect_SelectRange;
class IFSelect_SelectRange : public IFSelect_SelectExtract {
	public:
		%feature("autodoc", "1");
		IFSelect_SelectRange();
		%feature("autodoc", "1");
		void SetRange(const Handle_IFSelect_IntParam &rankfrom, const Handle_IFSelect_IntParam &rankto);
		%feature("autodoc", "1");
		void SetOne(const Handle_IFSelect_IntParam &rank);
		%feature("autodoc", "1");
		void SetFrom(const Handle_IFSelect_IntParam &rankfrom);
		%feature("autodoc", "1");
		void SetUntil(const Handle_IFSelect_IntParam &rankto);
		%feature("autodoc", "1");
		Standard_Boolean HasLower() const;
		%feature("autodoc", "1");
		Handle_IFSelect_IntParam Lower() const;
		%feature("autodoc", "1");
		Standard_Integer LowerValue() const;
		%feature("autodoc", "1");
		Standard_Boolean HasUpper() const;
		%feature("autodoc", "1");
		Handle_IFSelect_IntParam Upper() const;
		%feature("autodoc", "1");
		Standard_Integer UpperValue() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Sort(const Standard_Integer rank, const Handle_Standard_Transient &ent, const Handle_Interface_InterfaceModel &model) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString ExtractLabel() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IFSelect_SelectRange {
	Handle_IFSelect_SelectRange GetHandle() {
	return *(Handle_IFSelect_SelectRange*) &$self;
	}
};
%extend IFSelect_SelectRange {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IFSelect_SelectRange::~IFSelect_SelectRange %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFSelect_SelectRange {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFSelect_SelectFlag;
class IFSelect_SelectFlag : public IFSelect_SelectExtract {
	public:
		%feature("autodoc", "1");
		IFSelect_SelectFlag(const char * flagname);
		%feature("autodoc", "1");
		char * FlagName() const;
		%feature("autodoc", "1");
		virtual		Interface_EntityIterator RootResult(const Interface_Graph &G) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Sort(const Standard_Integer rank, const Handle_Standard_Transient &ent, const Handle_Interface_InterfaceModel &model) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString ExtractLabel() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IFSelect_SelectFlag {
	Handle_IFSelect_SelectFlag GetHandle() {
	return *(Handle_IFSelect_SelectFlag*) &$self;
	}
};
%extend IFSelect_SelectFlag {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IFSelect_SelectFlag::~IFSelect_SelectFlag %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFSelect_SelectFlag {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFSelect_SelectRootComps;
class IFSelect_SelectRootComps : public IFSelect_SelectExtract {
	public:
		%feature("autodoc", "1");
		IFSelect_SelectRootComps();
		%feature("autodoc", "1");
		virtual		Interface_EntityIterator RootResult(const Interface_Graph &G) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Sort(const Standard_Integer rank, const Handle_Standard_Transient &ent, const Handle_Interface_InterfaceModel &model) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString ExtractLabel() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IFSelect_SelectRootComps {
	Handle_IFSelect_SelectRootComps GetHandle() {
	return *(Handle_IFSelect_SelectRootComps*) &$self;
	}
};
%extend IFSelect_SelectRootComps {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IFSelect_SelectRootComps::~IFSelect_SelectRootComps %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFSelect_SelectRootComps {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFSelect_SelectRoots;
class IFSelect_SelectRoots : public IFSelect_SelectExtract {
	public:
		%feature("autodoc", "1");
		IFSelect_SelectRoots();
		%feature("autodoc", "1");
		virtual		Interface_EntityIterator RootResult(const Interface_Graph &G) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Sort(const Standard_Integer rank, const Handle_Standard_Transient &ent, const Handle_Interface_InterfaceModel &model) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString ExtractLabel() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IFSelect_SelectRoots {
	Handle_IFSelect_SelectRoots GetHandle() {
	return *(Handle_IFSelect_SelectRoots*) &$self;
	}
};
%extend IFSelect_SelectRoots {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IFSelect_SelectRoots::~IFSelect_SelectRoots %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFSelect_SelectRoots {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFSelect_ListEditor;
class IFSelect_ListEditor : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		IFSelect_ListEditor();
		%feature("autodoc", "1");
		IFSelect_ListEditor(const Handle_Interface_TypedValue &def, const Standard_Integer max=0);
		%feature("autodoc", "1");
		void LoadModel(const Handle_Interface_InterfaceModel &model);
		%feature("autodoc", "1");
		void LoadValues(const Handle_TColStd_HSequenceOfHAsciiString &vals);
		%feature("autodoc", "1");
		void SetTouched();
		%feature("autodoc", "1");
		void ClearEdit();
		%feature("autodoc", "1");
		virtual		Standard_Boolean LoadEdited(const Handle_TColStd_HSequenceOfHAsciiString &list);
		%feature("autodoc", "1");
		virtual		Standard_Boolean SetValue(const Standard_Integer num, const Handle_TCollection_HAsciiString &val);
		%feature("autodoc", "1");
		virtual		Standard_Boolean AddValue(const Handle_TCollection_HAsciiString &val, const Standard_Integer atnum=0);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Remove(const Standard_Integer num=0, const Standard_Integer howmany=1);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfHAsciiString OriginalValues() const;
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfHAsciiString EditedValues() const;
		%feature("autodoc", "1");
		Standard_Integer NbValues(const Standard_Boolean edited=1) const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Value(const Standard_Integer num, const Standard_Boolean edited=1) const;
		%feature("autodoc", "1");
		Standard_Boolean IsChanged(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Boolean IsModified(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Boolean IsAdded(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Boolean IsTouched() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IFSelect_ListEditor {
	Handle_IFSelect_ListEditor GetHandle() {
	return *(Handle_IFSelect_ListEditor*) &$self;
	}
};
%extend IFSelect_ListEditor {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IFSelect_ListEditor::~IFSelect_ListEditor %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFSelect_ListEditor {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFSelect_SessionDumper;
class IFSelect_SessionDumper : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_IFSelect_SessionDumper First();
		%feature("autodoc", "1");
		Handle_IFSelect_SessionDumper Next() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean WriteOwn(IFSelect_SessionFile & file, const Handle_Standard_Transient &item) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean ReadOwn(IFSelect_SessionFile & file, const TCollection_AsciiString &type, Handle_Standard_Transient & item) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IFSelect_SessionDumper {
	Handle_IFSelect_SessionDumper GetHandle() {
	return *(Handle_IFSelect_SessionDumper*) &$self;
	}
};
%extend IFSelect_SessionDumper {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IFSelect_SessionDumper::~IFSelect_SessionDumper %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFSelect_SessionDumper {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFSelect_BasicDumper;
class IFSelect_BasicDumper : public IFSelect_SessionDumper {
	public:
		%feature("autodoc", "1");
		IFSelect_BasicDumper();

};
%extend IFSelect_BasicDumper {
	Handle_IFSelect_BasicDumper GetHandle() {
	return *(Handle_IFSelect_BasicDumper*) &$self;
	}
};
%extend IFSelect_BasicDumper {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IFSelect_BasicDumper::~IFSelect_BasicDumper %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFSelect_BasicDumper {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFSelect_AppliedModifiers;
class IFSelect_AppliedModifiers : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		IFSelect_AppliedModifiers(const Standard_Integer nbmax, const Standard_Integer nbent);
		%feature("autodoc", "1");
		Standard_Boolean AddModif(const Handle_IFSelect_GeneralModifier &modif);
		%feature("autodoc", "1");
		Standard_Boolean AddNum(const Standard_Integer nument);
		%feature("autodoc", "1");
		Standard_Integer Count() const;
		%feature("autodoc","Item(Standard_Integer num) -> Standard_Integer");
		Standard_Boolean Item(const Standard_Integer num, Handle_IFSelect_GeneralModifier & modif, Standard_Integer &OutValue);
		%feature("autodoc", "1");
		Standard_Integer ItemNum(const Standard_Integer nument) const;
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfInteger ItemList() const;
		%feature("autodoc", "1");
		Standard_Boolean IsForAll() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IFSelect_AppliedModifiers {
	Handle_IFSelect_AppliedModifiers GetHandle() {
	return *(Handle_IFSelect_AppliedModifiers*) &$self;
	}
};
%extend IFSelect_AppliedModifiers {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IFSelect_AppliedModifiers::~IFSelect_AppliedModifiers %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFSelect_AppliedModifiers {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFSelect_SelectIntersection;
class IFSelect_SelectIntersection : public IFSelect_SelectCombine {
	public:
		%feature("autodoc", "1");
		IFSelect_SelectIntersection();
		%feature("autodoc", "1");
		virtual		Interface_EntityIterator RootResult(const Interface_Graph &G) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString Label() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IFSelect_SelectIntersection {
	Handle_IFSelect_SelectIntersection GetHandle() {
	return *(Handle_IFSelect_SelectIntersection*) &$self;
	}
};
%extend IFSelect_SelectIntersection {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IFSelect_SelectIntersection::~IFSelect_SelectIntersection %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFSelect_SelectIntersection {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFSelect_ShareOut;
class IFSelect_ShareOut : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		IFSelect_ShareOut();
		%feature("autodoc", "1");
		void Clear(const Standard_Boolean onlydisp);
		%feature("autodoc", "1");
		void ClearResult(const Standard_Boolean alsoname);
		%feature("autodoc", "1");
		Standard_Boolean RemoveItem(const Handle_Standard_Transient &item);
		%feature("autodoc", "1");
		Standard_Integer LastRun() const;
		%feature("autodoc", "1");
		void SetLastRun(const Standard_Integer last);
		%feature("autodoc", "1");
		Standard_Integer NbDispatches() const;
		%feature("autodoc", "1");
		Standard_Integer DispatchRank(const Handle_IFSelect_Dispatch &disp) const;
		%feature("autodoc", "1");
		const Handle_IFSelect_Dispatch & Dispatch(const Standard_Integer num) const;
		%feature("autodoc", "1");
		void AddDispatch(const Handle_IFSelect_Dispatch &disp);
		%feature("autodoc", "1");
		Standard_Boolean RemoveDispatch(const Standard_Integer rank);
		%feature("autodoc", "1");
		void AddModifier(const Handle_IFSelect_GeneralModifier &modifier, const Standard_Integer atnum);
		%feature("autodoc", "1");
		void AddModifier(const Handle_IFSelect_GeneralModifier &modifier, const Standard_Integer dispnum, const Standard_Integer atnum);
		%feature("autodoc", "1");
		void AddModif(const Handle_IFSelect_GeneralModifier &modifier, const Standard_Boolean formodel, const Standard_Integer atnum=0);
		%feature("autodoc", "1");
		Standard_Integer NbModifiers(const Standard_Boolean formodel) const;
		%feature("autodoc", "1");
		Handle_IFSelect_GeneralModifier GeneralModifier(const Standard_Boolean formodel, const Standard_Integer num) const;
		%feature("autodoc", "1");
		Handle_IFSelect_Modifier ModelModifier(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer ModifierRank(const Handle_IFSelect_GeneralModifier &modifier) const;
		%feature("autodoc", "1");
		Standard_Boolean RemoveModifier(const Standard_Boolean formodel, const Standard_Integer num);
		%feature("autodoc", "1");
		Standard_Boolean ChangeModifierRank(const Standard_Boolean formodel, const Standard_Integer befor, const Standard_Integer after);
		%feature("autodoc", "1");
		Standard_Boolean SetRootName(const Standard_Integer num, const Handle_TCollection_HAsciiString &name);
		%feature("autodoc", "1");
		Standard_Boolean HasRootName(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString RootName(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer RootNumber(const Handle_TCollection_HAsciiString &name) const;
		%feature("autodoc", "1");
		void SetPrefix(const Handle_TCollection_HAsciiString &pref);
		%feature("autodoc", "1");
		Standard_Boolean SetDefaultRootName(const Handle_TCollection_HAsciiString &defrt);
		%feature("autodoc", "1");
		void SetExtension(const Handle_TCollection_HAsciiString &ext);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Prefix() const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString DefaultRootName() const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Extension() const;
		%feature("autodoc", "1");
		TCollection_AsciiString FileName(const Standard_Integer dnum, const Standard_Integer pnum, const Standard_Integer nbpack=0);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IFSelect_ShareOut {
	Handle_IFSelect_ShareOut GetHandle() {
	return *(Handle_IFSelect_ShareOut*) &$self;
	}
};
%extend IFSelect_ShareOut {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IFSelect_ShareOut::~IFSelect_ShareOut %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFSelect_ShareOut {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFSelect_SessionFile;
class IFSelect_SessionFile {
	public:
		%feature("autodoc", "1");
		IFSelect_SessionFile(const Handle_IFSelect_WorkSession &WS);
		%feature("autodoc", "1");
		IFSelect_SessionFile(const Handle_IFSelect_WorkSession &WS, const char * filename);
		%feature("autodoc", "1");
		void ClearLines();
		%feature("autodoc", "1");
		Standard_Integer NbLines() const;
		%feature("autodoc", "1");
		const TCollection_AsciiString & Line(const Standard_Integer num) const;
		%feature("autodoc", "1");
		void AddLine(const char * line);
		%feature("autodoc", "1");
		void RemoveLastLine();
		%feature("autodoc", "1");
		Standard_Boolean WriteFile(const char * name);
		%feature("autodoc", "1");
		Standard_Boolean ReadFile(const char * name);
		%feature("autodoc", "1");
		Standard_Boolean RecognizeFile(const char * headerline);
		%feature("autodoc", "1");
		Standard_Integer Write(const char * filename);
		%feature("autodoc", "1");
		Standard_Integer Read(const char * filename);
		%feature("autodoc", "1");
		Standard_Integer WriteSession();
		%feature("autodoc", "1");
		Standard_Integer WriteEnd();
		%feature("autodoc", "1");
		void WriteLine(const char * line, const Standard_Character follow=0);
		%feature("autodoc", "1");
		Standard_Boolean WriteOwn(const Handle_Standard_Transient &item);
		%feature("autodoc", "1");
		Standard_Integer ReadSession();
		%feature("autodoc", "1");
		Standard_Integer ReadEnd();
		%feature("autodoc", "1");
		Standard_Boolean ReadLine();
		%feature("autodoc", "1");
		void SplitLine(const char * line);
		%feature("autodoc", "1");
		Standard_Boolean ReadOwn(Handle_Standard_Transient & item);
		%feature("autodoc", "1");
		void AddItem(const Handle_Standard_Transient &item, const Standard_Boolean active=1);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Handle_IFSelect_WorkSession WorkSession() const;
		%feature("autodoc", "1");
		void NewItem(const Standard_Integer ident, const Handle_Standard_Transient &par);
		%feature("autodoc", "1");
		void SetOwn(const Standard_Boolean mode);
		%feature("autodoc", "1");
		void SendVoid();
		%feature("autodoc", "1");
		void SendItem(const Handle_Standard_Transient &par);
		%feature("autodoc", "1");
		void SendText(const char * text);
		%feature("autodoc", "1");
		void SetLastGeneral(const Standard_Integer lastgen);
		%feature("autodoc", "1");
		Standard_Integer NbParams() const;
		%feature("autodoc", "1");
		Standard_Boolean IsVoid(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Boolean IsText(const Standard_Integer num) const;
		%feature("autodoc", "1");
		const TCollection_AsciiString & ParamValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		TCollection_AsciiString TextValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Handle_Standard_Transient ItemValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		void Destroy();

};
%feature("shadow") IFSelect_SessionFile::~IFSelect_SessionFile %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFSelect_SessionFile {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFSelect_GeneralModifier;
class IFSelect_GeneralModifier : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Standard_Boolean MayChangeGraph() const;
		%feature("autodoc", "1");
		void SetDispatch(const Handle_IFSelect_Dispatch &disp);
		%feature("autodoc", "1");
		Handle_IFSelect_Dispatch Dispatch() const;
		%feature("autodoc", "1");
		Standard_Boolean Applies(const Handle_IFSelect_Dispatch &disp) const;
		%feature("autodoc", "1");
		void SetSelection(const Handle_IFSelect_Selection &sel);
		%feature("autodoc", "1");
		void ResetSelection();
		%feature("autodoc", "1");
		Standard_Boolean HasSelection() const;
		%feature("autodoc", "1");
		Handle_IFSelect_Selection Selection() const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString Label() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IFSelect_GeneralModifier {
	Handle_IFSelect_GeneralModifier GetHandle() {
	return *(Handle_IFSelect_GeneralModifier*) &$self;
	}
};
%extend IFSelect_GeneralModifier {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IFSelect_GeneralModifier::~IFSelect_GeneralModifier %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFSelect_GeneralModifier {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFSelect_SignCategory;
class IFSelect_SignCategory : public IFSelect_Signature {
	public:
		%feature("autodoc", "1");
		IFSelect_SignCategory();
		%feature("autodoc", "1");
		virtual		char * Value(const Handle_Standard_Transient &ent, const Handle_Interface_InterfaceModel &model) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IFSelect_SignCategory {
	Handle_IFSelect_SignCategory GetHandle() {
	return *(Handle_IFSelect_SignCategory*) &$self;
	}
};
%extend IFSelect_SignCategory {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IFSelect_SignCategory::~IFSelect_SignCategory %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFSelect_SignCategory {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFSelect_ShareOutResult;
class IFSelect_ShareOutResult {
	public:
		%feature("autodoc", "1");
		IFSelect_ShareOutResult(const Handle_IFSelect_ShareOut &sho, const Handle_Interface_InterfaceModel &mod);
		%feature("autodoc", "1");
		IFSelect_ShareOutResult(const Handle_IFSelect_ShareOut &sho, const Interface_Graph &G);
		%feature("autodoc", "1");
		IFSelect_ShareOutResult(const Handle_IFSelect_Dispatch &disp, const Handle_Interface_InterfaceModel &mod);
		%feature("autodoc", "1");
		IFSelect_ShareOutResult(const Handle_IFSelect_Dispatch &disp, const Interface_Graph &G);
		%feature("autodoc", "1");
		Handle_IFSelect_ShareOut ShareOut() const;
		%feature("autodoc", "1");
		const Interface_Graph & Graph() const;
		%feature("autodoc", "1");
		void Reset();
		%feature("autodoc", "1");
		void Evaluate();
		%feature("autodoc", "1");
		Handle_IFSelect_PacketList Packets(const Standard_Boolean complete=1);
		%feature("autodoc", "1");
		Standard_Integer NbPackets();
		%feature("autodoc", "1");
		void Prepare();
		%feature("autodoc", "1");
		Standard_Boolean More();
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		void NextDispatch();
		%feature("autodoc", "1");
		Handle_IFSelect_Dispatch Dispatch() const;
		%feature("autodoc", "1");
		Standard_Integer DispatchRank() const;
		%feature("autodoc","PacketsInDispatch() -> [Standard_Integer, Standard_Integer]");
		void PacketsInDispatch(Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		Interface_EntityIterator PacketRoot();
		%feature("autodoc", "1");
		Interface_EntityIterator PacketContent();
		%feature("autodoc", "1");
		TCollection_AsciiString FileName() const;

};
%feature("shadow") IFSelect_ShareOutResult::~IFSelect_ShareOutResult %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFSelect_ShareOutResult {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFSelect_SequenceNodeOfTSeqOfDispatch;
class IFSelect_SequenceNodeOfTSeqOfDispatch : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		IFSelect_SequenceNodeOfTSeqOfDispatch(const Handle_IFSelect_Dispatch &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_IFSelect_Dispatch & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IFSelect_SequenceNodeOfTSeqOfDispatch {
	Handle_IFSelect_SequenceNodeOfTSeqOfDispatch GetHandle() {
	return *(Handle_IFSelect_SequenceNodeOfTSeqOfDispatch*) &$self;
	}
};
%extend IFSelect_SequenceNodeOfTSeqOfDispatch {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IFSelect_SequenceNodeOfTSeqOfDispatch::~IFSelect_SequenceNodeOfTSeqOfDispatch %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFSelect_SequenceNodeOfTSeqOfDispatch {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFSelect_SelectSignature;
class IFSelect_SelectSignature : public IFSelect_SelectExtract {
	public:
		%feature("autodoc", "1");
		IFSelect_SelectSignature(const Handle_IFSelect_Signature &matcher, const char * signtext, const Standard_Boolean exact=1);
		%feature("autodoc", "1");
		IFSelect_SelectSignature(const Handle_IFSelect_Signature &matcher, const TCollection_AsciiString &signtext, const Standard_Boolean exact=1);
		%feature("autodoc", "1");
		IFSelect_SelectSignature(const Handle_IFSelect_SignCounter &matcher, const char * signtext, const Standard_Boolean exact=1);
		%feature("autodoc", "1");
		Handle_IFSelect_Signature Signature() const;
		%feature("autodoc", "1");
		Handle_IFSelect_SignCounter Counter() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean SortInGraph(const Standard_Integer rank, const Handle_Standard_Transient &ent, const Interface_Graph &G) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Sort(const Standard_Integer rank, const Handle_Standard_Transient &ent, const Handle_Interface_InterfaceModel &model) const;
		%feature("autodoc", "1");
		const TCollection_AsciiString & SignatureText() const;
		%feature("autodoc", "1");
		Standard_Boolean IsExact() const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString ExtractLabel() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IFSelect_SelectSignature {
	Handle_IFSelect_SelectSignature GetHandle() {
	return *(Handle_IFSelect_SelectSignature*) &$self;
	}
};
%extend IFSelect_SelectSignature {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IFSelect_SelectSignature::~IFSelect_SelectSignature %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFSelect_SelectSignature {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFSelect_ParamEditor;
class IFSelect_ParamEditor : public IFSelect_Editor {
	public:
		%feature("autodoc", "1");
		IFSelect_ParamEditor(const Standard_Integer nbmax=100, const char * label="");
		%feature("autodoc", "1");
		void AddValue(const Handle_Interface_TypedValue &val, const char * shortname="");
		%feature("autodoc", "1");
		void AddConstantText(const char * val, const char * shortname, const char * completename="");
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString Label() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Recognize(const Handle_IFSelect_EditForm &form) const;
		%feature("autodoc", "1");
		virtual		Handle_TCollection_HAsciiString StringValue(const Handle_IFSelect_EditForm &form, const Standard_Integer num) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Load(const Handle_IFSelect_EditForm &form, const Handle_Standard_Transient &ent, const Handle_Interface_InterfaceModel &model) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Apply(const Handle_IFSelect_EditForm &form, const Handle_Standard_Transient &ent, const Handle_Interface_InterfaceModel &model) const;
		%feature("autodoc", "1");
		Handle_IFSelect_ParamEditor StaticEditor(const Handle_TColStd_HSequenceOfHAsciiString &list, const char * label="");
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IFSelect_ParamEditor {
	Handle_IFSelect_ParamEditor GetHandle() {
	return *(Handle_IFSelect_ParamEditor*) &$self;
	}
};
%extend IFSelect_ParamEditor {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IFSelect_ParamEditor::~IFSelect_ParamEditor %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFSelect_ParamEditor {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFSelect_SelectUnknownEntities;
class IFSelect_SelectUnknownEntities : public IFSelect_SelectExtract {
	public:
		%feature("autodoc", "1");
		IFSelect_SelectUnknownEntities();
		%feature("autodoc", "1");
		virtual		Standard_Boolean Sort(const Standard_Integer rank, const Handle_Standard_Transient &ent, const Handle_Interface_InterfaceModel &model) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString ExtractLabel() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IFSelect_SelectUnknownEntities {
	Handle_IFSelect_SelectUnknownEntities GetHandle() {
	return *(Handle_IFSelect_SelectUnknownEntities*) &$self;
	}
};
%extend IFSelect_SelectUnknownEntities {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IFSelect_SelectUnknownEntities::~IFSelect_SelectUnknownEntities %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFSelect_SelectUnknownEntities {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFSelect_Act;
class IFSelect_Act : public IFSelect_Activator {
	public:
		%feature("autodoc", "1");
		IFSelect_Act(const char * name, const char * help, const IFSelect_ActFunc func);
		%feature("autodoc", "1");
		virtual		IFSelect_ReturnStatus Do(const Standard_Integer number, const Handle_IFSelect_SessionPilot &pilot);
		%feature("autodoc", "1");
		virtual		char * Help(const Standard_Integer number) const;
		%feature("autodoc", "1");
		void SetGroup(const char * group, const char * file="");
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IFSelect_Act {
	Handle_IFSelect_Act GetHandle() {
	return *(Handle_IFSelect_Act*) &$self;
	}
};
%extend IFSelect_Act {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IFSelect_Act::~IFSelect_Act %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFSelect_Act {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFSelect_SelectIncorrectEntities;
class IFSelect_SelectIncorrectEntities : public IFSelect_SelectFlag {
	public:
		%feature("autodoc", "1");
		IFSelect_SelectIncorrectEntities();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IFSelect_SelectIncorrectEntities {
	Handle_IFSelect_SelectIncorrectEntities GetHandle() {
	return *(Handle_IFSelect_SelectIncorrectEntities*) &$self;
	}
};
%extend IFSelect_SelectIncorrectEntities {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IFSelect_SelectIncorrectEntities::~IFSelect_SelectIncorrectEntities %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFSelect_SelectIncorrectEntities {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFSelect_SequenceNodeOfSequenceOfGeneralModifier;
class IFSelect_SequenceNodeOfSequenceOfGeneralModifier : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		IFSelect_SequenceNodeOfSequenceOfGeneralModifier(const Handle_IFSelect_GeneralModifier &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_IFSelect_GeneralModifier & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IFSelect_SequenceNodeOfSequenceOfGeneralModifier {
	Handle_IFSelect_SequenceNodeOfSequenceOfGeneralModifier GetHandle() {
	return *(Handle_IFSelect_SequenceNodeOfSequenceOfGeneralModifier*) &$self;
	}
};
%extend IFSelect_SequenceNodeOfSequenceOfGeneralModifier {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IFSelect_SequenceNodeOfSequenceOfGeneralModifier::~IFSelect_SequenceNodeOfSequenceOfGeneralModifier %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFSelect_SequenceNodeOfSequenceOfGeneralModifier {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFSelect_HSeqOfSelection;
class IFSelect_HSeqOfSelection : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		IFSelect_HSeqOfSelection();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const Handle_IFSelect_Selection &anItem);
		%feature("autodoc", "1");
		void Append(const Handle_IFSelect_HSeqOfSelection &aSequence);
		%feature("autodoc", "1");
		void Prepend(const Handle_IFSelect_Selection &anItem);
		%feature("autodoc", "1");
		void Prepend(const Handle_IFSelect_HSeqOfSelection &aSequence);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_IFSelect_Selection &anItem);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_IFSelect_HSeqOfSelection &aSequence);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_IFSelect_Selection &anItem);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_IFSelect_HSeqOfSelection &aSequence);
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer anIndex, const Standard_Integer anOtherIndex);
		%feature("autodoc", "1");
		Handle_IFSelect_HSeqOfSelection Split(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer anIndex, const Handle_IFSelect_Selection &anItem);
		%feature("autodoc", "1");
		const Handle_IFSelect_Selection & Value(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		Handle_IFSelect_Selection & ChangeValue(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer fromIndex, const Standard_Integer toIndex);
		%feature("autodoc", "1");
		const IFSelect_TSeqOfSelection & Sequence() const;
		%feature("autodoc", "1");
		IFSelect_TSeqOfSelection & ChangeSequence();
		%feature("autodoc", "1");
		Handle_IFSelect_HSeqOfSelection ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IFSelect_HSeqOfSelection {
	Handle_IFSelect_HSeqOfSelection GetHandle() {
	return *(Handle_IFSelect_HSeqOfSelection*) &$self;
	}
};
%extend IFSelect_HSeqOfSelection {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IFSelect_HSeqOfSelection::~IFSelect_HSeqOfSelection %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFSelect_HSeqOfSelection {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFSelect_Modifier;
class IFSelect_Modifier : public IFSelect_GeneralModifier {
	public:
		%feature("autodoc", "1");
		virtual		void Perform(IFSelect_ContextModif & ctx, const Handle_Interface_InterfaceModel &target, const Handle_Interface_Protocol &protocol, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IFSelect_Modifier {
	Handle_IFSelect_Modifier GetHandle() {
	return *(Handle_IFSelect_Modifier*) &$self;
	}
};
%extend IFSelect_Modifier {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IFSelect_Modifier::~IFSelect_Modifier %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFSelect_Modifier {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFSelect_DispPerOne;
class IFSelect_DispPerOne : public IFSelect_Dispatch {
	public:
		%feature("autodoc", "1");
		IFSelect_DispPerOne();
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString Label() const;
		%feature("autodoc","LimitedMax(Standard_Integer nbent) -> Standard_Integer");
		virtual		Standard_Boolean LimitedMax(const Standard_Integer nbent, Standard_Integer &OutValue) const;
		%feature("autodoc","PacketsCount(const G) -> Standard_Integer");
		virtual		Standard_Boolean PacketsCount(const Interface_Graph &G, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		virtual		void Packets(const Interface_Graph &G, IFGraph_SubPartsIterator & packs) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IFSelect_DispPerOne {
	Handle_IFSelect_DispPerOne GetHandle() {
	return *(Handle_IFSelect_DispPerOne*) &$self;
	}
};
%extend IFSelect_DispPerOne {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IFSelect_DispPerOne::~IFSelect_DispPerOne %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFSelect_DispPerOne {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFSelect_SequenceOfInterfaceModel;
class IFSelect_SequenceOfInterfaceModel : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		IFSelect_SequenceOfInterfaceModel();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const IFSelect_SequenceOfInterfaceModel & Assign(const IFSelect_SequenceOfInterfaceModel &Other);
		%feature("autodoc", "1");
		const IFSelect_SequenceOfInterfaceModel & operator=(const IFSelect_SequenceOfInterfaceModel &Other);
		%feature("autodoc", "1");
		void Append(const Handle_Interface_InterfaceModel &T);
		%feature("autodoc", "1");
		void Append(IFSelect_SequenceOfInterfaceModel & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_Interface_InterfaceModel &T);
		%feature("autodoc", "1");
		void Prepend(IFSelect_SequenceOfInterfaceModel & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_Interface_InterfaceModel &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, IFSelect_SequenceOfInterfaceModel & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_Interface_InterfaceModel &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, IFSelect_SequenceOfInterfaceModel & S);
		%feature("autodoc", "1");
		const Handle_Interface_InterfaceModel & First() const;
		%feature("autodoc", "1");
		const Handle_Interface_InterfaceModel & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, IFSelect_SequenceOfInterfaceModel & S);
		%feature("autodoc", "1");
		const Handle_Interface_InterfaceModel & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_Interface_InterfaceModel & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_Interface_InterfaceModel &I);
		%feature("autodoc", "1");
		Handle_Interface_InterfaceModel & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_Interface_InterfaceModel & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") IFSelect_SequenceOfInterfaceModel::~IFSelect_SequenceOfInterfaceModel %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFSelect_SequenceOfInterfaceModel {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFSelect_SelectEntityNumber;
class IFSelect_SelectEntityNumber : public IFSelect_SelectBase {
	public:
		%feature("autodoc", "1");
		IFSelect_SelectEntityNumber();
		%feature("autodoc", "1");
		void SetNumber(const Handle_IFSelect_IntParam &num);
		%feature("autodoc", "1");
		Handle_IFSelect_IntParam Number() const;
		%feature("autodoc", "1");
		virtual		Interface_EntityIterator RootResult(const Interface_Graph &G) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString Label() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IFSelect_SelectEntityNumber {
	Handle_IFSelect_SelectEntityNumber GetHandle() {
	return *(Handle_IFSelect_SelectEntityNumber*) &$self;
	}
};
%extend IFSelect_SelectEntityNumber {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IFSelect_SelectEntityNumber::~IFSelect_SelectEntityNumber %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFSelect_SelectEntityNumber {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFSelect_SequenceOfAppliedModifiers;
class IFSelect_SequenceOfAppliedModifiers : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		IFSelect_SequenceOfAppliedModifiers();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const IFSelect_SequenceOfAppliedModifiers & Assign(const IFSelect_SequenceOfAppliedModifiers &Other);
		%feature("autodoc", "1");
		const IFSelect_SequenceOfAppliedModifiers & operator=(const IFSelect_SequenceOfAppliedModifiers &Other);
		%feature("autodoc", "1");
		void Append(const Handle_IFSelect_AppliedModifiers &T);
		%feature("autodoc", "1");
		void Append(IFSelect_SequenceOfAppliedModifiers & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_IFSelect_AppliedModifiers &T);
		%feature("autodoc", "1");
		void Prepend(IFSelect_SequenceOfAppliedModifiers & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_IFSelect_AppliedModifiers &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, IFSelect_SequenceOfAppliedModifiers & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_IFSelect_AppliedModifiers &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, IFSelect_SequenceOfAppliedModifiers & S);
		%feature("autodoc", "1");
		const Handle_IFSelect_AppliedModifiers & First() const;
		%feature("autodoc", "1");
		const Handle_IFSelect_AppliedModifiers & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, IFSelect_SequenceOfAppliedModifiers & S);
		%feature("autodoc", "1");
		const Handle_IFSelect_AppliedModifiers & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_IFSelect_AppliedModifiers & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_IFSelect_AppliedModifiers &I);
		%feature("autodoc", "1");
		Handle_IFSelect_AppliedModifiers & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_IFSelect_AppliedModifiers & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") IFSelect_SequenceOfAppliedModifiers::~IFSelect_SequenceOfAppliedModifiers %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFSelect_SequenceOfAppliedModifiers {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFSelect_GraphCounter;
class IFSelect_GraphCounter : public IFSelect_SignCounter {
	public:
		%feature("autodoc", "1");
		IFSelect_GraphCounter(const Standard_Boolean withmap=1, const Standard_Boolean withlist=0);
		%feature("autodoc", "1");
		Handle_IFSelect_SelectDeduct Applied() const;
		%feature("autodoc", "1");
		void SetApplied(const Handle_IFSelect_SelectDeduct &sel);
		%feature("autodoc", "1");
		virtual		void AddWithGraph(const Handle_TColStd_HSequenceOfTransient &list, const Interface_Graph &graph);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IFSelect_GraphCounter {
	Handle_IFSelect_GraphCounter GetHandle() {
	return *(Handle_IFSelect_GraphCounter*) &$self;
	}
};
%extend IFSelect_GraphCounter {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IFSelect_GraphCounter::~IFSelect_GraphCounter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFSelect_GraphCounter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFSelect_SequenceNodeOfSequenceOfInterfaceModel;
class IFSelect_SequenceNodeOfSequenceOfInterfaceModel : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		IFSelect_SequenceNodeOfSequenceOfInterfaceModel(const Handle_Interface_InterfaceModel &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_Interface_InterfaceModel & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IFSelect_SequenceNodeOfSequenceOfInterfaceModel {
	Handle_IFSelect_SequenceNodeOfSequenceOfInterfaceModel GetHandle() {
	return *(Handle_IFSelect_SequenceNodeOfSequenceOfInterfaceModel*) &$self;
	}
};
%extend IFSelect_SequenceNodeOfSequenceOfInterfaceModel {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IFSelect_SequenceNodeOfSequenceOfInterfaceModel::~IFSelect_SequenceNodeOfSequenceOfInterfaceModel %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFSelect_SequenceNodeOfSequenceOfInterfaceModel {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFSelect_SelectSharing;
class IFSelect_SelectSharing : public IFSelect_SelectDeduct {
	public:
		%feature("autodoc", "1");
		IFSelect_SelectSharing();
		%feature("autodoc", "1");
		virtual		Interface_EntityIterator RootResult(const Interface_Graph &G) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString Label() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IFSelect_SelectSharing {
	Handle_IFSelect_SelectSharing GetHandle() {
	return *(Handle_IFSelect_SelectSharing*) &$self;
	}
};
%extend IFSelect_SelectSharing {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IFSelect_SelectSharing::~IFSelect_SelectSharing %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFSelect_SelectSharing {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFSelect_TSeqOfDispatch;
class IFSelect_TSeqOfDispatch : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		IFSelect_TSeqOfDispatch();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const IFSelect_TSeqOfDispatch & Assign(const IFSelect_TSeqOfDispatch &Other);
		%feature("autodoc", "1");
		const IFSelect_TSeqOfDispatch & operator=(const IFSelect_TSeqOfDispatch &Other);
		%feature("autodoc", "1");
		void Append(const Handle_IFSelect_Dispatch &T);
		%feature("autodoc", "1");
		void Append(IFSelect_TSeqOfDispatch & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_IFSelect_Dispatch &T);
		%feature("autodoc", "1");
		void Prepend(IFSelect_TSeqOfDispatch & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_IFSelect_Dispatch &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, IFSelect_TSeqOfDispatch & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_IFSelect_Dispatch &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, IFSelect_TSeqOfDispatch & S);
		%feature("autodoc", "1");
		const Handle_IFSelect_Dispatch & First() const;
		%feature("autodoc", "1");
		const Handle_IFSelect_Dispatch & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, IFSelect_TSeqOfDispatch & S);
		%feature("autodoc", "1");
		const Handle_IFSelect_Dispatch & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_IFSelect_Dispatch & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_IFSelect_Dispatch &I);
		%feature("autodoc", "1");
		Handle_IFSelect_Dispatch & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_IFSelect_Dispatch & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") IFSelect_TSeqOfDispatch::~IFSelect_TSeqOfDispatch %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFSelect_TSeqOfDispatch {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFSelect_ModifEditForm;
class IFSelect_ModifEditForm : public IFSelect_Modifier {
	public:
		%feature("autodoc", "1");
		IFSelect_ModifEditForm(const Handle_IFSelect_EditForm &editform);
		%feature("autodoc", "1");
		Handle_IFSelect_EditForm EditForm() const;
		%feature("autodoc", "1");
		virtual		void Perform(IFSelect_ContextModif & ctx, const Handle_Interface_InterfaceModel &target, const Handle_Interface_Protocol &protocol, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString Label() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IFSelect_ModifEditForm {
	Handle_IFSelect_ModifEditForm GetHandle() {
	return *(Handle_IFSelect_ModifEditForm*) &$self;
	}
};
%extend IFSelect_ModifEditForm {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IFSelect_ModifEditForm::~IFSelect_ModifEditForm %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFSelect_ModifEditForm {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IFSelect_ModifReorder;
class IFSelect_ModifReorder : public IFSelect_Modifier {
	public:
		%feature("autodoc", "1");
		IFSelect_ModifReorder(const Standard_Boolean rootlast=1);
		%feature("autodoc", "1");
		virtual		void Perform(IFSelect_ContextModif & ctx, const Handle_Interface_InterfaceModel &target, const Handle_Interface_Protocol &protocol, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString Label() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IFSelect_ModifReorder {
	Handle_IFSelect_ModifReorder GetHandle() {
	return *(Handle_IFSelect_ModifReorder*) &$self;
	}
};
%extend IFSelect_ModifReorder {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IFSelect_ModifReorder::~IFSelect_ModifReorder %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IFSelect_ModifReorder {
	void _kill_pointed() {
		delete $self;
	}
};
