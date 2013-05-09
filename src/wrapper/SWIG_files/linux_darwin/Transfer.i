/*

Copyright 2008-2011 Thomas Paviot (tpaviot@gmail.com)

This file is part of pythonOCC.

pythonOCC is free software: you can redistribute it and/or modify
it under the terms of the GNU Lesser General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

pythonOCC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public License
along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.

$Revision$
$Date$
$Author$
$HeaderURL$

*/


%{
#ifdef WNT
#pragma warning(disable : 4716)
#endif
%}

%module Transfer
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include Transfer_renames.i


%include Transfer_required_python_modules.i


%include Transfer_dependencies.i


%include Transfer_headers.i


enum Transfer_StatusResult {
	Transfer_StatusVoid,
	Transfer_StatusDefined,
	Transfer_StatusUsed,
	};

enum Transfer_StatusExec {
	Transfer_StatusInitial,
	Transfer_StatusRun,
	Transfer_StatusDone,
	Transfer_StatusError,
	Transfer_StatusLoop,
	};

enum Transfer_UndefMode {
	Transfer_UndefIgnore,
	Transfer_UndefFailure,
	Transfer_UndefContent,
	Transfer_UndefUser,
	};



%nodefaultctor Handle_Transfer_HSequenceOfFinder;
class Handle_Transfer_HSequenceOfFinder : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Transfer_HSequenceOfFinder();
		%feature("autodoc", "1");
		Handle_Transfer_HSequenceOfFinder(const Handle_Transfer_HSequenceOfFinder &aHandle);
		%feature("autodoc", "1");
		Handle_Transfer_HSequenceOfFinder(const Transfer_HSequenceOfFinder *anItem);
		%feature("autodoc", "1");
		Handle_Transfer_HSequenceOfFinder & operator=(const Handle_Transfer_HSequenceOfFinder &aHandle);
		%feature("autodoc", "1");
		Handle_Transfer_HSequenceOfFinder & operator=(const Transfer_HSequenceOfFinder *anItem);
		%feature("autodoc", "1");
		static		Handle_Transfer_HSequenceOfFinder DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Transfer_HSequenceOfFinder {
	Transfer_HSequenceOfFinder* GetObject() {
	return (Transfer_HSequenceOfFinder*)$self->Access();
	}
};
%feature("shadow") Handle_Transfer_HSequenceOfFinder::~Handle_Transfer_HSequenceOfFinder %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Transfer_HSequenceOfFinder {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Transfer_Binder;
class Handle_Transfer_Binder : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Transfer_Binder();
		%feature("autodoc", "1");
		Handle_Transfer_Binder(const Handle_Transfer_Binder &aHandle);
		%feature("autodoc", "1");
		Handle_Transfer_Binder(const Transfer_Binder *anItem);
		%feature("autodoc", "1");
		Handle_Transfer_Binder & operator=(const Handle_Transfer_Binder &aHandle);
		%feature("autodoc", "1");
		Handle_Transfer_Binder & operator=(const Transfer_Binder *anItem);
		%feature("autodoc", "1");
		static		Handle_Transfer_Binder DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Transfer_Binder {
	Transfer_Binder* GetObject() {
	return (Transfer_Binder*)$self->Access();
	}
};
%feature("shadow") Handle_Transfer_Binder::~Handle_Transfer_Binder %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Transfer_Binder {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Transfer_VoidBinder;
class Handle_Transfer_VoidBinder : public Handle_Transfer_Binder {
	public:
		%feature("autodoc", "1");
		Handle_Transfer_VoidBinder();
		%feature("autodoc", "1");
		Handle_Transfer_VoidBinder(const Handle_Transfer_VoidBinder &aHandle);
		%feature("autodoc", "1");
		Handle_Transfer_VoidBinder(const Transfer_VoidBinder *anItem);
		%feature("autodoc", "1");
		Handle_Transfer_VoidBinder & operator=(const Handle_Transfer_VoidBinder &aHandle);
		%feature("autodoc", "1");
		Handle_Transfer_VoidBinder & operator=(const Transfer_VoidBinder *anItem);
		%feature("autodoc", "1");
		static		Handle_Transfer_VoidBinder DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Transfer_VoidBinder {
	Transfer_VoidBinder* GetObject() {
	return (Transfer_VoidBinder*)$self->Access();
	}
};
%feature("shadow") Handle_Transfer_VoidBinder::~Handle_Transfer_VoidBinder %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Transfer_VoidBinder {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Transfer_Finder;
class Handle_Transfer_Finder : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Transfer_Finder();
		%feature("autodoc", "1");
		Handle_Transfer_Finder(const Handle_Transfer_Finder &aHandle);
		%feature("autodoc", "1");
		Handle_Transfer_Finder(const Transfer_Finder *anItem);
		%feature("autodoc", "1");
		Handle_Transfer_Finder & operator=(const Handle_Transfer_Finder &aHandle);
		%feature("autodoc", "1");
		Handle_Transfer_Finder & operator=(const Transfer_Finder *anItem);
		%feature("autodoc", "1");
		static		Handle_Transfer_Finder DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Transfer_Finder {
	Transfer_Finder* GetObject() {
	return (Transfer_Finder*)$self->Access();
	}
};
%feature("shadow") Handle_Transfer_Finder::~Handle_Transfer_Finder %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Transfer_Finder {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Transfer_ActorOfProcessForTransient;
class Handle_Transfer_ActorOfProcessForTransient : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Transfer_ActorOfProcessForTransient();
		%feature("autodoc", "1");
		Handle_Transfer_ActorOfProcessForTransient(const Handle_Transfer_ActorOfProcessForTransient &aHandle);
		%feature("autodoc", "1");
		Handle_Transfer_ActorOfProcessForTransient(const Transfer_ActorOfProcessForTransient *anItem);
		%feature("autodoc", "1");
		Handle_Transfer_ActorOfProcessForTransient & operator=(const Handle_Transfer_ActorOfProcessForTransient &aHandle);
		%feature("autodoc", "1");
		Handle_Transfer_ActorOfProcessForTransient & operator=(const Transfer_ActorOfProcessForTransient *anItem);
		%feature("autodoc", "1");
		static		Handle_Transfer_ActorOfProcessForTransient DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Transfer_ActorOfProcessForTransient {
	Transfer_ActorOfProcessForTransient* GetObject() {
	return (Transfer_ActorOfProcessForTransient*)$self->Access();
	}
};
%feature("shadow") Handle_Transfer_ActorOfProcessForTransient::~Handle_Transfer_ActorOfProcessForTransient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Transfer_ActorOfProcessForTransient {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Transfer_DispatchControl;
class Handle_Transfer_DispatchControl : public Handle_Interface_CopyControl {
	public:
		%feature("autodoc", "1");
		Handle_Transfer_DispatchControl();
		%feature("autodoc", "1");
		Handle_Transfer_DispatchControl(const Handle_Transfer_DispatchControl &aHandle);
		%feature("autodoc", "1");
		Handle_Transfer_DispatchControl(const Transfer_DispatchControl *anItem);
		%feature("autodoc", "1");
		Handle_Transfer_DispatchControl & operator=(const Handle_Transfer_DispatchControl &aHandle);
		%feature("autodoc", "1");
		Handle_Transfer_DispatchControl & operator=(const Transfer_DispatchControl *anItem);
		%feature("autodoc", "1");
		static		Handle_Transfer_DispatchControl DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Transfer_DispatchControl {
	Transfer_DispatchControl* GetObject() {
	return (Transfer_DispatchControl*)$self->Access();
	}
};
%feature("shadow") Handle_Transfer_DispatchControl::~Handle_Transfer_DispatchControl %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Transfer_DispatchControl {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Transfer_IndexedDataMapNodeOfTransferMapOfProcessForFinder;
class Handle_Transfer_IndexedDataMapNodeOfTransferMapOfProcessForFinder : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_Transfer_IndexedDataMapNodeOfTransferMapOfProcessForFinder();
		%feature("autodoc", "1");
		Handle_Transfer_IndexedDataMapNodeOfTransferMapOfProcessForFinder(const Handle_Transfer_IndexedDataMapNodeOfTransferMapOfProcessForFinder &aHandle);
		%feature("autodoc", "1");
		Handle_Transfer_IndexedDataMapNodeOfTransferMapOfProcessForFinder(const Transfer_IndexedDataMapNodeOfTransferMapOfProcessForFinder *anItem);
		%feature("autodoc", "1");
		Handle_Transfer_IndexedDataMapNodeOfTransferMapOfProcessForFinder & operator=(const Handle_Transfer_IndexedDataMapNodeOfTransferMapOfProcessForFinder &aHandle);
		%feature("autodoc", "1");
		Handle_Transfer_IndexedDataMapNodeOfTransferMapOfProcessForFinder & operator=(const Transfer_IndexedDataMapNodeOfTransferMapOfProcessForFinder *anItem);
		%feature("autodoc", "1");
		static		Handle_Transfer_IndexedDataMapNodeOfTransferMapOfProcessForFinder DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Transfer_IndexedDataMapNodeOfTransferMapOfProcessForFinder {
	Transfer_IndexedDataMapNodeOfTransferMapOfProcessForFinder* GetObject() {
	return (Transfer_IndexedDataMapNodeOfTransferMapOfProcessForFinder*)$self->Access();
	}
};
%feature("shadow") Handle_Transfer_IndexedDataMapNodeOfTransferMapOfProcessForFinder::~Handle_Transfer_IndexedDataMapNodeOfTransferMapOfProcessForFinder %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Transfer_IndexedDataMapNodeOfTransferMapOfProcessForFinder {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Transfer_ActorOfProcessForFinder;
class Handle_Transfer_ActorOfProcessForFinder : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Transfer_ActorOfProcessForFinder();
		%feature("autodoc", "1");
		Handle_Transfer_ActorOfProcessForFinder(const Handle_Transfer_ActorOfProcessForFinder &aHandle);
		%feature("autodoc", "1");
		Handle_Transfer_ActorOfProcessForFinder(const Transfer_ActorOfProcessForFinder *anItem);
		%feature("autodoc", "1");
		Handle_Transfer_ActorOfProcessForFinder & operator=(const Handle_Transfer_ActorOfProcessForFinder &aHandle);
		%feature("autodoc", "1");
		Handle_Transfer_ActorOfProcessForFinder & operator=(const Transfer_ActorOfProcessForFinder *anItem);
		%feature("autodoc", "1");
		static		Handle_Transfer_ActorOfProcessForFinder DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Transfer_ActorOfProcessForFinder {
	Transfer_ActorOfProcessForFinder* GetObject() {
	return (Transfer_ActorOfProcessForFinder*)$self->Access();
	}
};
%feature("shadow") Handle_Transfer_ActorOfProcessForFinder::~Handle_Transfer_ActorOfProcessForFinder %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Transfer_ActorOfProcessForFinder {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Transfer_TransientMapper;
class Handle_Transfer_TransientMapper : public Handle_Transfer_Finder {
	public:
		%feature("autodoc", "1");
		Handle_Transfer_TransientMapper();
		%feature("autodoc", "1");
		Handle_Transfer_TransientMapper(const Handle_Transfer_TransientMapper &aHandle);
		%feature("autodoc", "1");
		Handle_Transfer_TransientMapper(const Transfer_TransientMapper *anItem);
		%feature("autodoc", "1");
		Handle_Transfer_TransientMapper & operator=(const Handle_Transfer_TransientMapper &aHandle);
		%feature("autodoc", "1");
		Handle_Transfer_TransientMapper & operator=(const Transfer_TransientMapper *anItem);
		%feature("autodoc", "1");
		static		Handle_Transfer_TransientMapper DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Transfer_TransientMapper {
	Transfer_TransientMapper* GetObject() {
	return (Transfer_TransientMapper*)$self->Access();
	}
};
%feature("shadow") Handle_Transfer_TransientMapper::~Handle_Transfer_TransientMapper %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Transfer_TransientMapper {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Transfer_IndexedDataMapNodeOfTransferMapOfProcessForTransient;
class Handle_Transfer_IndexedDataMapNodeOfTransferMapOfProcessForTransient : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_Transfer_IndexedDataMapNodeOfTransferMapOfProcessForTransient();
		%feature("autodoc", "1");
		Handle_Transfer_IndexedDataMapNodeOfTransferMapOfProcessForTransient(const Handle_Transfer_IndexedDataMapNodeOfTransferMapOfProcessForTransient &aHandle);
		%feature("autodoc", "1");
		Handle_Transfer_IndexedDataMapNodeOfTransferMapOfProcessForTransient(const Transfer_IndexedDataMapNodeOfTransferMapOfProcessForTransient *anItem);
		%feature("autodoc", "1");
		Handle_Transfer_IndexedDataMapNodeOfTransferMapOfProcessForTransient & operator=(const Handle_Transfer_IndexedDataMapNodeOfTransferMapOfProcessForTransient &aHandle);
		%feature("autodoc", "1");
		Handle_Transfer_IndexedDataMapNodeOfTransferMapOfProcessForTransient & operator=(const Transfer_IndexedDataMapNodeOfTransferMapOfProcessForTransient *anItem);
		%feature("autodoc", "1");
		static		Handle_Transfer_IndexedDataMapNodeOfTransferMapOfProcessForTransient DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Transfer_IndexedDataMapNodeOfTransferMapOfProcessForTransient {
	Transfer_IndexedDataMapNodeOfTransferMapOfProcessForTransient* GetObject() {
	return (Transfer_IndexedDataMapNodeOfTransferMapOfProcessForTransient*)$self->Access();
	}
};
%feature("shadow") Handle_Transfer_IndexedDataMapNodeOfTransferMapOfProcessForTransient::~Handle_Transfer_IndexedDataMapNodeOfTransferMapOfProcessForTransient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Transfer_IndexedDataMapNodeOfTransferMapOfProcessForTransient {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Transfer_SimpleBinderOfTransient;
class Handle_Transfer_SimpleBinderOfTransient : public Handle_Transfer_Binder {
	public:
		%feature("autodoc", "1");
		Handle_Transfer_SimpleBinderOfTransient();
		%feature("autodoc", "1");
		Handle_Transfer_SimpleBinderOfTransient(const Handle_Transfer_SimpleBinderOfTransient &aHandle);
		%feature("autodoc", "1");
		Handle_Transfer_SimpleBinderOfTransient(const Transfer_SimpleBinderOfTransient *anItem);
		%feature("autodoc", "1");
		Handle_Transfer_SimpleBinderOfTransient & operator=(const Handle_Transfer_SimpleBinderOfTransient &aHandle);
		%feature("autodoc", "1");
		Handle_Transfer_SimpleBinderOfTransient & operator=(const Transfer_SimpleBinderOfTransient *anItem);
		%feature("autodoc", "1");
		static		Handle_Transfer_SimpleBinderOfTransient DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Transfer_SimpleBinderOfTransient {
	Transfer_SimpleBinderOfTransient* GetObject() {
	return (Transfer_SimpleBinderOfTransient*)$self->Access();
	}
};
%feature("shadow") Handle_Transfer_SimpleBinderOfTransient::~Handle_Transfer_SimpleBinderOfTransient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Transfer_SimpleBinderOfTransient {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Transfer_ProcessForTransient;
class Handle_Transfer_ProcessForTransient : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Transfer_ProcessForTransient();
		%feature("autodoc", "1");
		Handle_Transfer_ProcessForTransient(const Handle_Transfer_ProcessForTransient &aHandle);
		%feature("autodoc", "1");
		Handle_Transfer_ProcessForTransient(const Transfer_ProcessForTransient *anItem);
		%feature("autodoc", "1");
		Handle_Transfer_ProcessForTransient & operator=(const Handle_Transfer_ProcessForTransient &aHandle);
		%feature("autodoc", "1");
		Handle_Transfer_ProcessForTransient & operator=(const Transfer_ProcessForTransient *anItem);
		%feature("autodoc", "1");
		static		Handle_Transfer_ProcessForTransient DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Transfer_ProcessForTransient {
	Transfer_ProcessForTransient* GetObject() {
	return (Transfer_ProcessForTransient*)$self->Access();
	}
};
%feature("shadow") Handle_Transfer_ProcessForTransient::~Handle_Transfer_ProcessForTransient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Transfer_ProcessForTransient {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Transfer_TransientProcess;
class Handle_Transfer_TransientProcess : public Handle_Transfer_ProcessForTransient {
	public:
		%feature("autodoc", "1");
		Handle_Transfer_TransientProcess();
		%feature("autodoc", "1");
		Handle_Transfer_TransientProcess(const Handle_Transfer_TransientProcess &aHandle);
		%feature("autodoc", "1");
		Handle_Transfer_TransientProcess(const Transfer_TransientProcess *anItem);
		%feature("autodoc", "1");
		Handle_Transfer_TransientProcess & operator=(const Handle_Transfer_TransientProcess &aHandle);
		%feature("autodoc", "1");
		Handle_Transfer_TransientProcess & operator=(const Transfer_TransientProcess *anItem);
		%feature("autodoc", "1");
		static		Handle_Transfer_TransientProcess DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Transfer_TransientProcess {
	Transfer_TransientProcess* GetObject() {
	return (Transfer_TransientProcess*)$self->Access();
	}
};
%feature("shadow") Handle_Transfer_TransientProcess::~Handle_Transfer_TransientProcess %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Transfer_TransientProcess {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Transfer_TransferFailure;
class Handle_Transfer_TransferFailure : public Handle_Interface_InterfaceError {
	public:
		%feature("autodoc", "1");
		Handle_Transfer_TransferFailure();
		%feature("autodoc", "1");
		Handle_Transfer_TransferFailure(const Handle_Transfer_TransferFailure &aHandle);
		%feature("autodoc", "1");
		Handle_Transfer_TransferFailure(const Transfer_TransferFailure *anItem);
		%feature("autodoc", "1");
		Handle_Transfer_TransferFailure & operator=(const Handle_Transfer_TransferFailure &aHandle);
		%feature("autodoc", "1");
		Handle_Transfer_TransferFailure & operator=(const Transfer_TransferFailure *anItem);
		%feature("autodoc", "1");
		static		Handle_Transfer_TransferFailure DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Transfer_TransferFailure {
	Transfer_TransferFailure* GetObject() {
	return (Transfer_TransferFailure*)$self->Access();
	}
};
%feature("shadow") Handle_Transfer_TransferFailure::~Handle_Transfer_TransferFailure %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Transfer_TransferFailure {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Transfer_SequenceNodeOfSequenceOfBinder;
class Handle_Transfer_SequenceNodeOfSequenceOfBinder : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_Transfer_SequenceNodeOfSequenceOfBinder();
		%feature("autodoc", "1");
		Handle_Transfer_SequenceNodeOfSequenceOfBinder(const Handle_Transfer_SequenceNodeOfSequenceOfBinder &aHandle);
		%feature("autodoc", "1");
		Handle_Transfer_SequenceNodeOfSequenceOfBinder(const Transfer_SequenceNodeOfSequenceOfBinder *anItem);
		%feature("autodoc", "1");
		Handle_Transfer_SequenceNodeOfSequenceOfBinder & operator=(const Handle_Transfer_SequenceNodeOfSequenceOfBinder &aHandle);
		%feature("autodoc", "1");
		Handle_Transfer_SequenceNodeOfSequenceOfBinder & operator=(const Transfer_SequenceNodeOfSequenceOfBinder *anItem);
		%feature("autodoc", "1");
		static		Handle_Transfer_SequenceNodeOfSequenceOfBinder DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Transfer_SequenceNodeOfSequenceOfBinder {
	Transfer_SequenceNodeOfSequenceOfBinder* GetObject() {
	return (Transfer_SequenceNodeOfSequenceOfBinder*)$self->Access();
	}
};
%feature("shadow") Handle_Transfer_SequenceNodeOfSequenceOfBinder::~Handle_Transfer_SequenceNodeOfSequenceOfBinder %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Transfer_SequenceNodeOfSequenceOfBinder {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Transfer_ResultFromTransient;
class Handle_Transfer_ResultFromTransient : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Transfer_ResultFromTransient();
		%feature("autodoc", "1");
		Handle_Transfer_ResultFromTransient(const Handle_Transfer_ResultFromTransient &aHandle);
		%feature("autodoc", "1");
		Handle_Transfer_ResultFromTransient(const Transfer_ResultFromTransient *anItem);
		%feature("autodoc", "1");
		Handle_Transfer_ResultFromTransient & operator=(const Handle_Transfer_ResultFromTransient &aHandle);
		%feature("autodoc", "1");
		Handle_Transfer_ResultFromTransient & operator=(const Transfer_ResultFromTransient *anItem);
		%feature("autodoc", "1");
		static		Handle_Transfer_ResultFromTransient DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Transfer_ResultFromTransient {
	Transfer_ResultFromTransient* GetObject() {
	return (Transfer_ResultFromTransient*)$self->Access();
	}
};
%feature("shadow") Handle_Transfer_ResultFromTransient::~Handle_Transfer_ResultFromTransient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Transfer_ResultFromTransient {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Transfer_SequenceNodeOfSequenceOfFinder;
class Handle_Transfer_SequenceNodeOfSequenceOfFinder : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_Transfer_SequenceNodeOfSequenceOfFinder();
		%feature("autodoc", "1");
		Handle_Transfer_SequenceNodeOfSequenceOfFinder(const Handle_Transfer_SequenceNodeOfSequenceOfFinder &aHandle);
		%feature("autodoc", "1");
		Handle_Transfer_SequenceNodeOfSequenceOfFinder(const Transfer_SequenceNodeOfSequenceOfFinder *anItem);
		%feature("autodoc", "1");
		Handle_Transfer_SequenceNodeOfSequenceOfFinder & operator=(const Handle_Transfer_SequenceNodeOfSequenceOfFinder &aHandle);
		%feature("autodoc", "1");
		Handle_Transfer_SequenceNodeOfSequenceOfFinder & operator=(const Transfer_SequenceNodeOfSequenceOfFinder *anItem);
		%feature("autodoc", "1");
		static		Handle_Transfer_SequenceNodeOfSequenceOfFinder DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Transfer_SequenceNodeOfSequenceOfFinder {
	Transfer_SequenceNodeOfSequenceOfFinder* GetObject() {
	return (Transfer_SequenceNodeOfSequenceOfFinder*)$self->Access();
	}
};
%feature("shadow") Handle_Transfer_SequenceNodeOfSequenceOfFinder::~Handle_Transfer_SequenceNodeOfSequenceOfFinder %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Transfer_SequenceNodeOfSequenceOfFinder {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Transfer_ActorOfTransientProcess;
class Handle_Transfer_ActorOfTransientProcess : public Handle_Transfer_ActorOfProcessForTransient {
	public:
		%feature("autodoc", "1");
		Handle_Transfer_ActorOfTransientProcess();
		%feature("autodoc", "1");
		Handle_Transfer_ActorOfTransientProcess(const Handle_Transfer_ActorOfTransientProcess &aHandle);
		%feature("autodoc", "1");
		Handle_Transfer_ActorOfTransientProcess(const Transfer_ActorOfTransientProcess *anItem);
		%feature("autodoc", "1");
		Handle_Transfer_ActorOfTransientProcess & operator=(const Handle_Transfer_ActorOfTransientProcess &aHandle);
		%feature("autodoc", "1");
		Handle_Transfer_ActorOfTransientProcess & operator=(const Transfer_ActorOfTransientProcess *anItem);
		%feature("autodoc", "1");
		static		Handle_Transfer_ActorOfTransientProcess DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Transfer_ActorOfTransientProcess {
	Transfer_ActorOfTransientProcess* GetObject() {
	return (Transfer_ActorOfTransientProcess*)$self->Access();
	}
};
%feature("shadow") Handle_Transfer_ActorOfTransientProcess::~Handle_Transfer_ActorOfTransientProcess %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Transfer_ActorOfTransientProcess {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Transfer_BinderOfTransientInteger;
class Handle_Transfer_BinderOfTransientInteger : public Handle_Transfer_SimpleBinderOfTransient {
	public:
		%feature("autodoc", "1");
		Handle_Transfer_BinderOfTransientInteger();
		%feature("autodoc", "1");
		Handle_Transfer_BinderOfTransientInteger(const Handle_Transfer_BinderOfTransientInteger &aHandle);
		%feature("autodoc", "1");
		Handle_Transfer_BinderOfTransientInteger(const Transfer_BinderOfTransientInteger *anItem);
		%feature("autodoc", "1");
		Handle_Transfer_BinderOfTransientInteger & operator=(const Handle_Transfer_BinderOfTransientInteger &aHandle);
		%feature("autodoc", "1");
		Handle_Transfer_BinderOfTransientInteger & operator=(const Transfer_BinderOfTransientInteger *anItem);
		%feature("autodoc", "1");
		static		Handle_Transfer_BinderOfTransientInteger DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Transfer_BinderOfTransientInteger {
	Transfer_BinderOfTransientInteger* GetObject() {
	return (Transfer_BinderOfTransientInteger*)$self->Access();
	}
};
%feature("shadow") Handle_Transfer_BinderOfTransientInteger::~Handle_Transfer_BinderOfTransientInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Transfer_BinderOfTransientInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Transfer_ActorOfFinderProcess;
class Handle_Transfer_ActorOfFinderProcess : public Handle_Transfer_ActorOfProcessForFinder {
	public:
		%feature("autodoc", "1");
		Handle_Transfer_ActorOfFinderProcess();
		%feature("autodoc", "1");
		Handle_Transfer_ActorOfFinderProcess(const Handle_Transfer_ActorOfFinderProcess &aHandle);
		%feature("autodoc", "1");
		Handle_Transfer_ActorOfFinderProcess(const Transfer_ActorOfFinderProcess *anItem);
		%feature("autodoc", "1");
		Handle_Transfer_ActorOfFinderProcess & operator=(const Handle_Transfer_ActorOfFinderProcess &aHandle);
		%feature("autodoc", "1");
		Handle_Transfer_ActorOfFinderProcess & operator=(const Transfer_ActorOfFinderProcess *anItem);
		%feature("autodoc", "1");
		static		Handle_Transfer_ActorOfFinderProcess DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Transfer_ActorOfFinderProcess {
	Transfer_ActorOfFinderProcess* GetObject() {
	return (Transfer_ActorOfFinderProcess*)$self->Access();
	}
};
%feature("shadow") Handle_Transfer_ActorOfFinderProcess::~Handle_Transfer_ActorOfFinderProcess %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Transfer_ActorOfFinderProcess {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Transfer_ActorDispatch;
class Handle_Transfer_ActorDispatch : public Handle_Transfer_ActorOfTransientProcess {
	public:
		%feature("autodoc", "1");
		Handle_Transfer_ActorDispatch();
		%feature("autodoc", "1");
		Handle_Transfer_ActorDispatch(const Handle_Transfer_ActorDispatch &aHandle);
		%feature("autodoc", "1");
		Handle_Transfer_ActorDispatch(const Transfer_ActorDispatch *anItem);
		%feature("autodoc", "1");
		Handle_Transfer_ActorDispatch & operator=(const Handle_Transfer_ActorDispatch &aHandle);
		%feature("autodoc", "1");
		Handle_Transfer_ActorDispatch & operator=(const Transfer_ActorDispatch *anItem);
		%feature("autodoc", "1");
		static		Handle_Transfer_ActorDispatch DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Transfer_ActorDispatch {
	Transfer_ActorDispatch* GetObject() {
	return (Transfer_ActorDispatch*)$self->Access();
	}
};
%feature("shadow") Handle_Transfer_ActorDispatch::~Handle_Transfer_ActorDispatch %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Transfer_ActorDispatch {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Transfer_ProcessForFinder;
class Handle_Transfer_ProcessForFinder : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Transfer_ProcessForFinder();
		%feature("autodoc", "1");
		Handle_Transfer_ProcessForFinder(const Handle_Transfer_ProcessForFinder &aHandle);
		%feature("autodoc", "1");
		Handle_Transfer_ProcessForFinder(const Transfer_ProcessForFinder *anItem);
		%feature("autodoc", "1");
		Handle_Transfer_ProcessForFinder & operator=(const Handle_Transfer_ProcessForFinder &aHandle);
		%feature("autodoc", "1");
		Handle_Transfer_ProcessForFinder & operator=(const Transfer_ProcessForFinder *anItem);
		%feature("autodoc", "1");
		static		Handle_Transfer_ProcessForFinder DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Transfer_ProcessForFinder {
	Transfer_ProcessForFinder* GetObject() {
	return (Transfer_ProcessForFinder*)$self->Access();
	}
};
%feature("shadow") Handle_Transfer_ProcessForFinder::~Handle_Transfer_ProcessForFinder %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Transfer_ProcessForFinder {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Transfer_FinderProcess;
class Handle_Transfer_FinderProcess : public Handle_Transfer_ProcessForFinder {
	public:
		%feature("autodoc", "1");
		Handle_Transfer_FinderProcess();
		%feature("autodoc", "1");
		Handle_Transfer_FinderProcess(const Handle_Transfer_FinderProcess &aHandle);
		%feature("autodoc", "1");
		Handle_Transfer_FinderProcess(const Transfer_FinderProcess *anItem);
		%feature("autodoc", "1");
		Handle_Transfer_FinderProcess & operator=(const Handle_Transfer_FinderProcess &aHandle);
		%feature("autodoc", "1");
		Handle_Transfer_FinderProcess & operator=(const Transfer_FinderProcess *anItem);
		%feature("autodoc", "1");
		static		Handle_Transfer_FinderProcess DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Transfer_FinderProcess {
	Transfer_FinderProcess* GetObject() {
	return (Transfer_FinderProcess*)$self->Access();
	}
};
%feature("shadow") Handle_Transfer_FinderProcess::~Handle_Transfer_FinderProcess %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Transfer_FinderProcess {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Transfer_HSequenceOfBinder;
class Handle_Transfer_HSequenceOfBinder : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Transfer_HSequenceOfBinder();
		%feature("autodoc", "1");
		Handle_Transfer_HSequenceOfBinder(const Handle_Transfer_HSequenceOfBinder &aHandle);
		%feature("autodoc", "1");
		Handle_Transfer_HSequenceOfBinder(const Transfer_HSequenceOfBinder *anItem);
		%feature("autodoc", "1");
		Handle_Transfer_HSequenceOfBinder & operator=(const Handle_Transfer_HSequenceOfBinder &aHandle);
		%feature("autodoc", "1");
		Handle_Transfer_HSequenceOfBinder & operator=(const Transfer_HSequenceOfBinder *anItem);
		%feature("autodoc", "1");
		static		Handle_Transfer_HSequenceOfBinder DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Transfer_HSequenceOfBinder {
	Transfer_HSequenceOfBinder* GetObject() {
	return (Transfer_HSequenceOfBinder*)$self->Access();
	}
};
%feature("shadow") Handle_Transfer_HSequenceOfBinder::~Handle_Transfer_HSequenceOfBinder %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Transfer_HSequenceOfBinder {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Transfer_MultipleBinder;
class Handle_Transfer_MultipleBinder : public Handle_Transfer_Binder {
	public:
		%feature("autodoc", "1");
		Handle_Transfer_MultipleBinder();
		%feature("autodoc", "1");
		Handle_Transfer_MultipleBinder(const Handle_Transfer_MultipleBinder &aHandle);
		%feature("autodoc", "1");
		Handle_Transfer_MultipleBinder(const Transfer_MultipleBinder *anItem);
		%feature("autodoc", "1");
		Handle_Transfer_MultipleBinder & operator=(const Handle_Transfer_MultipleBinder &aHandle);
		%feature("autodoc", "1");
		Handle_Transfer_MultipleBinder & operator=(const Transfer_MultipleBinder *anItem);
		%feature("autodoc", "1");
		static		Handle_Transfer_MultipleBinder DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Transfer_MultipleBinder {
	Transfer_MultipleBinder* GetObject() {
	return (Transfer_MultipleBinder*)$self->Access();
	}
};
%feature("shadow") Handle_Transfer_MultipleBinder::~Handle_Transfer_MultipleBinder %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Transfer_MultipleBinder {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Transfer_MapContainer;
class Handle_Transfer_MapContainer : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Transfer_MapContainer();
		%feature("autodoc", "1");
		Handle_Transfer_MapContainer(const Handle_Transfer_MapContainer &aHandle);
		%feature("autodoc", "1");
		Handle_Transfer_MapContainer(const Transfer_MapContainer *anItem);
		%feature("autodoc", "1");
		Handle_Transfer_MapContainer & operator=(const Handle_Transfer_MapContainer &aHandle);
		%feature("autodoc", "1");
		Handle_Transfer_MapContainer & operator=(const Transfer_MapContainer *anItem);
		%feature("autodoc", "1");
		static		Handle_Transfer_MapContainer DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Transfer_MapContainer {
	Transfer_MapContainer* GetObject() {
	return (Transfer_MapContainer*)$self->Access();
	}
};
%feature("shadow") Handle_Transfer_MapContainer::~Handle_Transfer_MapContainer %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Transfer_MapContainer {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Transfer_ResultFromModel;
class Handle_Transfer_ResultFromModel : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Transfer_ResultFromModel();
		%feature("autodoc", "1");
		Handle_Transfer_ResultFromModel(const Handle_Transfer_ResultFromModel &aHandle);
		%feature("autodoc", "1");
		Handle_Transfer_ResultFromModel(const Transfer_ResultFromModel *anItem);
		%feature("autodoc", "1");
		Handle_Transfer_ResultFromModel & operator=(const Handle_Transfer_ResultFromModel &aHandle);
		%feature("autodoc", "1");
		Handle_Transfer_ResultFromModel & operator=(const Transfer_ResultFromModel *anItem);
		%feature("autodoc", "1");
		static		Handle_Transfer_ResultFromModel DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Transfer_ResultFromModel {
	Transfer_ResultFromModel* GetObject() {
	return (Transfer_ResultFromModel*)$self->Access();
	}
};
%feature("shadow") Handle_Transfer_ResultFromModel::~Handle_Transfer_ResultFromModel %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Transfer_ResultFromModel {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Transfer_TransientListBinder;
class Handle_Transfer_TransientListBinder : public Handle_Transfer_Binder {
	public:
		%feature("autodoc", "1");
		Handle_Transfer_TransientListBinder();
		%feature("autodoc", "1");
		Handle_Transfer_TransientListBinder(const Handle_Transfer_TransientListBinder &aHandle);
		%feature("autodoc", "1");
		Handle_Transfer_TransientListBinder(const Transfer_TransientListBinder *anItem);
		%feature("autodoc", "1");
		Handle_Transfer_TransientListBinder & operator=(const Handle_Transfer_TransientListBinder &aHandle);
		%feature("autodoc", "1");
		Handle_Transfer_TransientListBinder & operator=(const Transfer_TransientListBinder *anItem);
		%feature("autodoc", "1");
		static		Handle_Transfer_TransientListBinder DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Transfer_TransientListBinder {
	Transfer_TransientListBinder* GetObject() {
	return (Transfer_TransientListBinder*)$self->Access();
	}
};
%feature("shadow") Handle_Transfer_TransientListBinder::~Handle_Transfer_TransientListBinder %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Transfer_TransientListBinder {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Transfer_TransferDeadLoop;
class Handle_Transfer_TransferDeadLoop : public Handle_Transfer_TransferFailure {
	public:
		%feature("autodoc", "1");
		Handle_Transfer_TransferDeadLoop();
		%feature("autodoc", "1");
		Handle_Transfer_TransferDeadLoop(const Handle_Transfer_TransferDeadLoop &aHandle);
		%feature("autodoc", "1");
		Handle_Transfer_TransferDeadLoop(const Transfer_TransferDeadLoop *anItem);
		%feature("autodoc", "1");
		Handle_Transfer_TransferDeadLoop & operator=(const Handle_Transfer_TransferDeadLoop &aHandle);
		%feature("autodoc", "1");
		Handle_Transfer_TransferDeadLoop & operator=(const Transfer_TransferDeadLoop *anItem);
		%feature("autodoc", "1");
		static		Handle_Transfer_TransferDeadLoop DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Transfer_TransferDeadLoop {
	Transfer_TransferDeadLoop* GetObject() {
	return (Transfer_TransferDeadLoop*)$self->Access();
	}
};
%feature("shadow") Handle_Transfer_TransferDeadLoop::~Handle_Transfer_TransferDeadLoop %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Transfer_TransferDeadLoop {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Transfer_TransferMapOfProcessForTransient;
class Transfer_TransferMapOfProcessForTransient : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		Transfer_TransferMapOfProcessForTransient(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		Transfer_TransferMapOfProcessForTransient & Assign(const Transfer_TransferMapOfProcessForTransient &Other);
		%feature("autodoc", "1");
		Transfer_TransferMapOfProcessForTransient & operator=(const Transfer_TransferMapOfProcessForTransient &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer Add(const Handle_Standard_Transient &K, const Handle_Transfer_Binder &I);
		%feature("autodoc", "1");
		void Substitute(const Standard_Integer I, const Handle_Standard_Transient &K, const Handle_Transfer_Binder &T);
		%feature("autodoc", "1");
		void RemoveLast();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Handle_Standard_Transient &K) const;
		%feature("autodoc", "1");
		const Handle_Standard_Transient & FindKey(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const Handle_Transfer_Binder & FindFromIndex(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const Handle_Transfer_Binder & operator()(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Handle_Transfer_Binder & ChangeFromIndex(const Standard_Integer I);
		%feature("autodoc", "1");
		Handle_Transfer_Binder & operator()(const Standard_Integer I);
		%feature("autodoc", "1");
		Standard_Integer FindIndex(const Handle_Standard_Transient &K) const;
		%feature("autodoc", "1");
		const Handle_Transfer_Binder & FindFromKey(const Handle_Standard_Transient &K) const;
		%feature("autodoc", "1");
		Handle_Transfer_Binder & ChangeFromKey(const Handle_Standard_Transient &K);
		%feature("autodoc", "1");
		Standard_Address FindFromKey1(const Handle_Standard_Transient &K) const;
		%feature("autodoc", "1");
		Standard_Address ChangeFromKey1(const Handle_Standard_Transient &K);

};
%feature("shadow") Transfer_TransferMapOfProcessForTransient::~Transfer_TransferMapOfProcessForTransient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Transfer_TransferMapOfProcessForTransient {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Transfer_TransferInput;
class Transfer_TransferInput {
	public:
		%feature("autodoc", "1");
		Transfer_TransferInput();
		%feature("autodoc", "1");
		Interface_EntityIterator Entities(Transfer_TransferIterator & list) const;
		%feature("autodoc", "1");
		void FillModel(const Handle_Transfer_TransientProcess &proc, const Handle_Interface_InterfaceModel &amodel) const;
		%feature("autodoc", "1");
		void FillModel(const Handle_Transfer_TransientProcess &proc, const Handle_Interface_InterfaceModel &amodel, const Handle_Interface_Protocol &proto, const Standard_Boolean roots=1) const;
		%feature("autodoc", "1");
		void FillModel(const Handle_Transfer_FinderProcess &proc, const Handle_Interface_InterfaceModel &amodel) const;
		%feature("autodoc", "1");
		void FillModel(const Handle_Transfer_FinderProcess &proc, const Handle_Interface_InterfaceModel &amodel, const Handle_Interface_Protocol &proto, const Standard_Boolean roots=1) const;

};
%feature("shadow") Transfer_TransferInput::~Transfer_TransferInput %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Transfer_TransferInput {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Transfer_DispatchControl;
class Transfer_DispatchControl : public Interface_CopyControl {
	public:
		%feature("autodoc", "1");
		Transfer_DispatchControl(const Handle_Interface_InterfaceModel &model, const Handle_Transfer_TransientProcess &TP);
		%feature("autodoc", "1");
		const Handle_Transfer_TransientProcess & TransientProcess() const;
		%feature("autodoc", "1");
		const Handle_Interface_InterfaceModel & StartingModel() const;
		%feature("autodoc", "1");
		virtual		void Clear();
		%feature("autodoc", "1");
		virtual		void Bind(const Handle_Standard_Transient &ent, const Handle_Standard_Transient &res);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Search(const Handle_Standard_Transient &ent, Handle_Standard_Transient & res) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Transfer_DispatchControl {
	Handle_Transfer_DispatchControl GetHandle() {
	return *(Handle_Transfer_DispatchControl*) &$self;
	}
};
%extend Transfer_DispatchControl {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Transfer_DispatchControl::~Transfer_DispatchControl %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Transfer_DispatchControl {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Transfer_ResultFromTransient;
class Transfer_ResultFromTransient : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Transfer_ResultFromTransient();
		%feature("autodoc", "1");
		void SetStart(const Handle_Standard_Transient &start);
		%feature("autodoc", "1");
		void SetBinder(const Handle_Transfer_Binder &binder);
		%feature("autodoc", "1");
		Handle_Standard_Transient Start() const;
		%feature("autodoc", "1");
		Handle_Transfer_Binder Binder() const;
		%feature("autodoc", "1");
		Standard_Boolean HasResult() const;
		%feature("autodoc", "1");
		Handle_Interface_Check const Check() const;
		%feature("autodoc", "1");
		Interface_CheckStatus CheckStatus() const;
		%feature("autodoc", "1");
		void ClearSubs();
		%feature("autodoc", "1");
		void AddSubResult(const Handle_Transfer_ResultFromTransient &sub);
		%feature("autodoc", "1");
		Standard_Integer NbSubResults() const;
		%feature("autodoc", "1");
		Handle_Transfer_ResultFromTransient SubResult(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Handle_Transfer_ResultFromTransient ResultFromKey(const Handle_Standard_Transient &key) const;
		%feature("autodoc", "1");
		void FillMap(TColStd_IndexedMapOfTransient & map) const;
		%feature("autodoc", "1");
		void Fill(const Handle_Transfer_TransientProcess &TP);
		%feature("autodoc", "1");
		void Strip();
		%feature("autodoc", "1");
		void FillBack(const Handle_Transfer_TransientProcess &TP) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Transfer_ResultFromTransient {
	Handle_Transfer_ResultFromTransient GetHandle() {
	return *(Handle_Transfer_ResultFromTransient*) &$self;
	}
};
%extend Transfer_ResultFromTransient {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Transfer_ResultFromTransient::~Transfer_ResultFromTransient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Transfer_ResultFromTransient {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Transfer_ProcessForFinder;
class Transfer_ProcessForFinder : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Transfer_ProcessForFinder(const Standard_Integer nb=10000);
		%feature("autodoc", "1");
		Transfer_ProcessForFinder(const Handle_Message_Messenger &printer, const Standard_Integer nb=10000);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Clean();
		%feature("autodoc", "1");
		void Resize(const Standard_Integer nb);
		%feature("autodoc", "1");
		void SetActor(const Handle_Transfer_ActorOfProcessForFinder &actor);
		%feature("autodoc", "1");
		Handle_Transfer_ActorOfProcessForFinder Actor() const;
		%feature("autodoc", "1");
		Handle_Transfer_Binder Find(const Handle_Transfer_Finder &start) const;
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Handle_Transfer_Finder &start) const;
		%feature("autodoc", "1");
		Standard_Boolean IsAlreadyUsed(const Handle_Transfer_Finder &start) const;
		%feature("autodoc", "1");
		void Bind(const Handle_Transfer_Finder &start, const Handle_Transfer_Binder &binder);
		%feature("autodoc", "1");
		void Rebind(const Handle_Transfer_Finder &start, const Handle_Transfer_Binder &binder);
		%feature("autodoc", "1");
		Standard_Boolean Unbind(const Handle_Transfer_Finder &start);
		%feature("autodoc", "1");
		Handle_Transfer_Binder FindElseBind(const Handle_Transfer_Finder &start);
		%feature("autodoc", "1");
		void SetMessenger(const Handle_Message_Messenger &messenger);
		%feature("autodoc", "1");
		Handle_Message_Messenger Messenger() const;
		%feature("autodoc", "1");
		void SetTraceLevel(const Standard_Integer tracelev);
		%feature("autodoc", "1");
		Standard_Integer TraceLevel() const;
		%feature("autodoc", "1");
		void SendFail(const Handle_Transfer_Finder &start, const Message_Msg &amsg);
		%feature("autodoc", "1");
		void SendWarning(const Handle_Transfer_Finder &start, const Message_Msg &amsg);
		%feature("autodoc", "1");
		void SendMsg(const Handle_Transfer_Finder &start, const Message_Msg &amsg);
		%feature("autodoc", "1");
		void AddFail(const Handle_Transfer_Finder &start, const char * mess, const char * orig="");
		%feature("autodoc", "1");
		void AddError(const Handle_Transfer_Finder &start, const char * mess, const char * orig="");
		%feature("autodoc", "1");
		void AddFail(const Handle_Transfer_Finder &start, const Message_Msg &amsg);
		%feature("autodoc", "1");
		void AddWarning(const Handle_Transfer_Finder &start, const char * mess, const char * orig="");
		%feature("autodoc", "1");
		void AddWarning(const Handle_Transfer_Finder &start, const Message_Msg &amsg);
		%feature("autodoc", "1");
		void Mend(const Handle_Transfer_Finder &start, const char * pref="");
		%feature("autodoc", "1");
		Handle_Interface_Check Check(const Handle_Transfer_Finder &start) const;
		%feature("autodoc", "1");
		void BindTransient(const Handle_Transfer_Finder &start, const Handle_Standard_Transient &res);
		%feature("autodoc", "1");
		const Handle_Standard_Transient & FindTransient(const Handle_Transfer_Finder &start) const;
		%feature("autodoc", "1");
		void BindMultiple(const Handle_Transfer_Finder &start);
		%feature("autodoc", "1");
		void AddMultiple(const Handle_Transfer_Finder &start, const Handle_Standard_Transient &res);
		%feature("autodoc", "1");
		Standard_Boolean FindTypedTransient(const Handle_Transfer_Finder &start, const Handle_Standard_Type &atype, Handle_Standard_Transient & val) const;
		%feature("autodoc", "1");
		Standard_Boolean GetTypedTransient(const Handle_Transfer_Binder &binder, const Handle_Standard_Type &atype, Handle_Standard_Transient & val) const;
		%feature("autodoc", "1");
		Standard_Integer NbMapped() const;
		%feature("autodoc", "1");
		const Handle_Transfer_Finder & Mapped(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer MapIndex(const Handle_Transfer_Finder &start) const;
		%feature("autodoc", "1");
		Handle_Transfer_Binder MapItem(const Standard_Integer num) const;
		%feature("autodoc", "1");
		void SetRoot(const Handle_Transfer_Finder &start);
		%feature("autodoc", "1");
		void SetRootManagement(const Standard_Boolean stat);
		%feature("autodoc", "1");
		Standard_Integer NbRoots() const;
		%feature("autodoc", "1");
		const Handle_Transfer_Finder & Root(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Handle_Transfer_Binder RootItem(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer RootIndex(const Handle_Transfer_Finder &start) const;
		%feature("autodoc", "1");
		Standard_Integer NestingLevel() const;
		%feature("autodoc", "1");
		void ResetNestingLevel();
		%feature("autodoc", "1");
		Standard_Boolean Recognize(const Handle_Transfer_Finder &start) const;
		%feature("autodoc", "1");
		Handle_Transfer_Binder Transferring(const Handle_Transfer_Finder &start);
		%feature("autodoc", "1");
		Standard_Boolean Transfer(const Handle_Transfer_Finder &start);
		%feature("autodoc", "1");
		void SetErrorHandle(const Standard_Boolean err);
		%feature("autodoc", "1");
		Standard_Boolean ErrorHandle() const;
		%feature("autodoc", "1");
		void StartTrace(const Handle_Transfer_Binder &binder, const Handle_Transfer_Finder &start, const Standard_Integer level, const Standard_Integer mode) const;
		%feature("autodoc", "1");
		virtual		void PrintTrace(const Handle_Transfer_Finder &start, const Handle_Message_Messenger &S) const;
		%feature("autodoc", "1");
		Standard_Boolean IsLooping(const Standard_Integer alevel) const;
		%feature("autodoc", "1");
		Transfer_IteratorOfProcessForFinder RootResult(const Standard_Boolean withstart=0) const;
		%feature("autodoc", "1");
		Transfer_IteratorOfProcessForFinder CompleteResult(const Standard_Boolean withstart=0) const;
		%feature("autodoc", "1");
		Transfer_IteratorOfProcessForFinder AbnormalResult() const;
		%feature("autodoc", "1");
		Interface_CheckIterator CheckList(const Standard_Boolean erronly) const;
		%feature("autodoc", "1");
		Transfer_IteratorOfProcessForFinder ResultOne(const Handle_Transfer_Finder &start, const Standard_Integer level, const Standard_Boolean withstart=0) const;
		%feature("autodoc", "1");
		Interface_CheckIterator CheckListOne(const Handle_Transfer_Finder &start, const Standard_Integer level, const Standard_Boolean erronly) const;
		%feature("autodoc", "1");
		Standard_Boolean IsCheckListEmpty(const Handle_Transfer_Finder &start, const Standard_Integer level, const Standard_Boolean erronly) const;
		%feature("autodoc", "1");
		void RemoveResult(const Handle_Transfer_Finder &start, const Standard_Integer level, const Standard_Boolean compute=1);
		%feature("autodoc", "1");
		virtual		Standard_Integer CheckNum(const Handle_Transfer_Finder &start) const;
		%feature("autodoc", "1");
		void SetProgress(const Handle_Message_ProgressIndicator &theProgress);
		%feature("autodoc", "1");
		Handle_Message_ProgressIndicator GetProgress() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Transfer_ProcessForFinder {
	Handle_Transfer_ProcessForFinder GetHandle() {
	return *(Handle_Transfer_ProcessForFinder*) &$self;
	}
};
%extend Transfer_ProcessForFinder {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Transfer_ProcessForFinder::~Transfer_ProcessForFinder %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Transfer_ProcessForFinder {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Transfer_FinderProcess;
class Transfer_FinderProcess : public Transfer_ProcessForFinder {
	public:
		%feature("autodoc", "1");
		Transfer_FinderProcess(const Standard_Integer nb=10000);
		%feature("autodoc", "1");
		void SetModel(const Handle_Interface_InterfaceModel &model);
		%feature("autodoc", "1");
		Handle_Interface_InterfaceModel Model() const;
		%feature("autodoc", "1");
		Standard_Integer NextMappedWithAttribute(const char * name, const Standard_Integer num0) const;
		%feature("autodoc", "1");
		Handle_Transfer_TransientMapper TransientMapper(const Handle_Standard_Transient &obj) const;
		%feature("autodoc", "1");
		void PrintStats(const Standard_Integer mode, const Handle_Message_Messenger &S) const;

};
%extend Transfer_FinderProcess {
	Handle_Transfer_FinderProcess GetHandle() {
	return *(Handle_Transfer_FinderProcess*) &$self;
	}
};
%extend Transfer_FinderProcess {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Transfer_FinderProcess::~Transfer_FinderProcess %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Transfer_FinderProcess {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Transfer_Binder;
class Transfer_Binder : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		void Merge(const Handle_Transfer_Binder &other);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsMultiple() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type ResultType() const;
		%feature("autodoc", "1");
		virtual		char * ResultTypeName() const;
		%feature("autodoc", "1");
		void AddResult(const Handle_Transfer_Binder &next);
		%feature("autodoc", "1");
		Handle_Transfer_Binder NextResult() const;
		%feature("autodoc", "1");
		Standard_Boolean HasResult() const;
		%feature("autodoc", "1");
		void SetAlreadyUsed();
		%feature("autodoc", "1");
		Transfer_StatusResult Status() const;
		%feature("autodoc", "1");
		Transfer_StatusExec StatusExec() const;
		%feature("autodoc", "1");
		void SetStatusExec(const Transfer_StatusExec stat);
		%feature("autodoc", "1");
		void AddFail(const char * mess, const char * orig="");
		%feature("autodoc", "1");
		void AddWarning(const char * mess, const char * orig="");
		%feature("autodoc", "1");
		Handle_Interface_Check const Check() const;
		%feature("autodoc", "1");
		Handle_Interface_Check CCheck();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Transfer_Binder {
	Handle_Transfer_Binder GetHandle() {
	return *(Handle_Transfer_Binder*) &$self;
	}
};
%extend Transfer_Binder {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Transfer_Binder::~Transfer_Binder %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Transfer_Binder {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Transfer_SimpleBinderOfTransient;
class Transfer_SimpleBinderOfTransient : public Transfer_Binder {
	public:
		%feature("autodoc", "1");
		Transfer_SimpleBinderOfTransient();
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type ResultType() const;
		%feature("autodoc", "1");
		virtual		char * ResultTypeName() const;
		%feature("autodoc", "1");
		void SetResult(const Handle_Standard_Transient &res);
		%feature("autodoc", "1");
		const Handle_Standard_Transient & Result() const;
		%feature("autodoc", "1");
		static		Standard_Boolean GetTypedResult(const Handle_Transfer_Binder &bnd, const Handle_Standard_Type &atype, Handle_Standard_Transient & res);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Transfer_SimpleBinderOfTransient {
	Handle_Transfer_SimpleBinderOfTransient GetHandle() {
	return *(Handle_Transfer_SimpleBinderOfTransient*) &$self;
	}
};
%extend Transfer_SimpleBinderOfTransient {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Transfer_SimpleBinderOfTransient::~Transfer_SimpleBinderOfTransient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Transfer_SimpleBinderOfTransient {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Transfer_TransferIterator;
class Transfer_TransferIterator {
	public:
		%feature("autodoc", "1");
		Transfer_TransferIterator();
		%feature("autodoc", "1");
		void AddItem(const Handle_Transfer_Binder &atr);
		%feature("autodoc", "1");
		void SelectBinder(const Handle_Standard_Type &atype, const Standard_Boolean keep);
		%feature("autodoc", "1");
		void SelectResult(const Handle_Standard_Type &atype, const Standard_Boolean keep);
		%feature("autodoc", "1");
		void SelectUnique(const Standard_Boolean keep);
		%feature("autodoc", "1");
		void SelectItem(const Standard_Integer num, const Standard_Boolean keep);
		%feature("autodoc", "1");
		Standard_Integer Number() const;
		%feature("autodoc", "1");
		void Start();
		%feature("autodoc", "1");
		Standard_Boolean More();
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		const Handle_Transfer_Binder & Value() const;
		%feature("autodoc", "1");
		Standard_Boolean HasResult() const;
		%feature("autodoc", "1");
		Standard_Boolean HasUniqueResult() const;
		%feature("autodoc", "1");
		Handle_Standard_Type ResultType() const;
		%feature("autodoc", "1");
		Standard_Boolean HasTransientResult() const;
		%feature("autodoc", "1");
		const Handle_Standard_Transient & TransientResult() const;
		%feature("autodoc", "1");
		Transfer_StatusExec Status() const;
		%feature("autodoc", "1");
		Standard_Boolean HasFails() const;
		%feature("autodoc", "1");
		Standard_Boolean HasWarnings() const;
		%feature("autodoc", "1");
		Handle_Interface_Check const Check() const;

};
%feature("shadow") Transfer_TransferIterator::~Transfer_TransferIterator %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Transfer_TransferIterator {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Transfer_ActorOfProcessForFinder;
class Transfer_ActorOfProcessForFinder : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Transfer_ActorOfProcessForFinder();
		%feature("autodoc", "1");
		virtual		Standard_Boolean Recognize(const Handle_Transfer_Finder &start);
		%feature("autodoc", "1");
		virtual		Handle_Transfer_Binder Transferring(const Handle_Transfer_Finder &start, const Handle_Transfer_ProcessForFinder &TP);
		%feature("autodoc", "1");
		Handle_Transfer_SimpleBinderOfTransient TransientResult(const Handle_Standard_Transient &res) const;
		%feature("autodoc", "1");
		Handle_Transfer_Binder NullResult() const;
		%feature("autodoc", "1");
		void SetLast(const Standard_Boolean mode=1);
		%feature("autodoc", "1");
		Standard_Boolean IsLast() const;
		%feature("autodoc", "1");
		void SetNext(const Handle_Transfer_ActorOfProcessForFinder &next);
		%feature("autodoc", "1");
		Handle_Transfer_ActorOfProcessForFinder Next() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Transfer_ActorOfProcessForFinder {
	Handle_Transfer_ActorOfProcessForFinder GetHandle() {
	return *(Handle_Transfer_ActorOfProcessForFinder*) &$self;
	}
};
%extend Transfer_ActorOfProcessForFinder {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Transfer_ActorOfProcessForFinder::~Transfer_ActorOfProcessForFinder %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Transfer_ActorOfProcessForFinder {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Transfer_ActorOfProcessForTransient;
class Transfer_ActorOfProcessForTransient : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Transfer_ActorOfProcessForTransient();
		%feature("autodoc", "1");
		virtual		Standard_Boolean Recognize(const Handle_Standard_Transient &start);
		%feature("autodoc", "1");
		virtual		Handle_Transfer_Binder Transferring(const Handle_Standard_Transient &start, const Handle_Transfer_ProcessForTransient &TP);
		%feature("autodoc", "1");
		Handle_Transfer_SimpleBinderOfTransient TransientResult(const Handle_Standard_Transient &res) const;
		%feature("autodoc", "1");
		Handle_Transfer_Binder NullResult() const;
		%feature("autodoc", "1");
		void SetLast(const Standard_Boolean mode=1);
		%feature("autodoc", "1");
		Standard_Boolean IsLast() const;
		%feature("autodoc", "1");
		void SetNext(const Handle_Transfer_ActorOfProcessForTransient &next);
		%feature("autodoc", "1");
		Handle_Transfer_ActorOfProcessForTransient Next() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Transfer_ActorOfProcessForTransient {
	Handle_Transfer_ActorOfProcessForTransient GetHandle() {
	return *(Handle_Transfer_ActorOfProcessForTransient*) &$self;
	}
};
%extend Transfer_ActorOfProcessForTransient {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Transfer_ActorOfProcessForTransient::~Transfer_ActorOfProcessForTransient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Transfer_ActorOfProcessForTransient {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Transfer_HSequenceOfFinder;
class Transfer_HSequenceOfFinder : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Transfer_HSequenceOfFinder();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const Handle_Transfer_Finder &anItem);
		%feature("autodoc", "1");
		void Append(const Handle_Transfer_HSequenceOfFinder &aSequence);
		%feature("autodoc", "1");
		void Prepend(const Handle_Transfer_Finder &anItem);
		%feature("autodoc", "1");
		void Prepend(const Handle_Transfer_HSequenceOfFinder &aSequence);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_Transfer_Finder &anItem);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_Transfer_HSequenceOfFinder &aSequence);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_Transfer_Finder &anItem);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_Transfer_HSequenceOfFinder &aSequence);
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer anIndex, const Standard_Integer anOtherIndex);
		%feature("autodoc", "1");
		Handle_Transfer_HSequenceOfFinder Split(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer anIndex, const Handle_Transfer_Finder &anItem);
		%feature("autodoc", "1");
		const Handle_Transfer_Finder & Value(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		Handle_Transfer_Finder & ChangeValue(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer fromIndex, const Standard_Integer toIndex);
		%feature("autodoc", "1");
		const Transfer_SequenceOfFinder & Sequence() const;
		%feature("autodoc", "1");
		Transfer_SequenceOfFinder & ChangeSequence();
		%feature("autodoc", "1");
		Handle_Transfer_HSequenceOfFinder ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Transfer_HSequenceOfFinder {
	Handle_Transfer_HSequenceOfFinder GetHandle() {
	return *(Handle_Transfer_HSequenceOfFinder*) &$self;
	}
};
%extend Transfer_HSequenceOfFinder {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Transfer_HSequenceOfFinder::~Transfer_HSequenceOfFinder %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Transfer_HSequenceOfFinder {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Transfer_Finder;
class Transfer_Finder : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Standard_Integer GetHashCode() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Equates(const Handle_Transfer_Finder &other) const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type ValueType() const;
		%feature("autodoc", "1");
		virtual		char * ValueTypeName() const;
		%feature("autodoc", "1");
		void SetAttribute(const char * name, const Handle_Standard_Transient &val);
		%feature("autodoc", "1");
		Standard_Boolean RemoveAttribute(const char * name);
		%feature("autodoc", "1");
		Standard_Boolean GetAttribute(const char * name, const Handle_Standard_Type &type, Handle_Standard_Transient & val) const;
		%feature("autodoc", "1");
		Handle_Standard_Transient Attribute(const char * name) const;
		%feature("autodoc", "1");
		Interface_ParamType AttributeType(const char * name) const;
		%feature("autodoc", "1");
		void SetIntegerAttribute(const char * name, const Standard_Integer val);
		%feature("autodoc","GetIntegerAttribute(Standard_CString name) -> Standard_Integer");

		Standard_Boolean GetIntegerAttribute(const char * name, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		Standard_Integer IntegerAttribute(const char * name) const;
		%feature("autodoc", "1");
		void SetRealAttribute(const char * name, const Standard_Real val);
		%feature("autodoc","GetRealAttribute(Standard_CString name) -> Standard_Real");

		Standard_Boolean GetRealAttribute(const char * name, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Real RealAttribute(const char * name) const;
		%feature("autodoc", "1");
		void SetStringAttribute(const char * name, const char * val);
		%feature("autodoc", "1");
		char * StringAttribute(const char * name) const;
		%feature("autodoc", "1");
		Handle_Dico_DictionaryOfTransient AttrList() const;
		%feature("autodoc", "1");
		void SameAttributes(const Handle_Transfer_Finder &other);
		%feature("autodoc", "1");
		void GetAttributes(const Handle_Transfer_Finder &other, const char * fromname="", const Standard_Boolean copied=1);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Transfer_Finder {
	Handle_Transfer_Finder GetHandle() {
	return *(Handle_Transfer_Finder*) &$self;
	}
};
%extend Transfer_Finder {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Transfer_Finder::~Transfer_Finder %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Transfer_Finder {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Transfer_SequenceOfFinder;
class Transfer_SequenceOfFinder : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		Transfer_SequenceOfFinder();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const Transfer_SequenceOfFinder & Assign(const Transfer_SequenceOfFinder &Other);
		%feature("autodoc", "1");
		const Transfer_SequenceOfFinder & operator=(const Transfer_SequenceOfFinder &Other);
		%feature("autodoc", "1");
		void Append(const Handle_Transfer_Finder &T);
		%feature("autodoc", "1");
		void Append(Transfer_SequenceOfFinder & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_Transfer_Finder &T);
		%feature("autodoc", "1");
		void Prepend(Transfer_SequenceOfFinder & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_Transfer_Finder &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, Transfer_SequenceOfFinder & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_Transfer_Finder &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, Transfer_SequenceOfFinder & S);
		%feature("autodoc", "1");
		const Handle_Transfer_Finder & First() const;
		%feature("autodoc", "1");
		const Handle_Transfer_Finder & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, Transfer_SequenceOfFinder & S);
		%feature("autodoc", "1");
		const Handle_Transfer_Finder & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_Transfer_Finder & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_Transfer_Finder &I);
		%feature("autodoc", "1");
		Handle_Transfer_Finder & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_Transfer_Finder & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") Transfer_SequenceOfFinder::~Transfer_SequenceOfFinder %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Transfer_SequenceOfFinder {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Transfer_SequenceNodeOfSequenceOfFinder;
class Transfer_SequenceNodeOfSequenceOfFinder : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Transfer_SequenceNodeOfSequenceOfFinder(const Handle_Transfer_Finder &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_Transfer_Finder & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Transfer_SequenceNodeOfSequenceOfFinder {
	Handle_Transfer_SequenceNodeOfSequenceOfFinder GetHandle() {
	return *(Handle_Transfer_SequenceNodeOfSequenceOfFinder*) &$self;
	}
};
%extend Transfer_SequenceNodeOfSequenceOfFinder {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Transfer_SequenceNodeOfSequenceOfFinder::~Transfer_SequenceNodeOfSequenceOfFinder %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Transfer_SequenceNodeOfSequenceOfFinder {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Transfer_FindHasher;
class Transfer_FindHasher {
	public:
		%feature("autodoc", "1");
		Transfer_FindHasher();
		%feature("autodoc", "1");
		static		Standard_Integer HashCode(const Handle_Transfer_Finder &K, const Standard_Integer Upper);
		%feature("autodoc", "1");
		static		Standard_Boolean IsEqual(const Handle_Transfer_Finder &K1, const Handle_Transfer_Finder &K2);

};
%feature("shadow") Transfer_FindHasher::~Transfer_FindHasher %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Transfer_FindHasher {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Transfer_ResultFromModel;
class Transfer_ResultFromModel : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Transfer_ResultFromModel();
		%feature("autodoc", "1");
		void SetModel(const Handle_Interface_InterfaceModel &model);
		%feature("autodoc", "1");
		void SetFileName(const char * filename);
		%feature("autodoc", "1");
		Handle_Interface_InterfaceModel Model() const;
		%feature("autodoc", "1");
		char * FileName() const;
		%feature("autodoc", "1");
		Standard_Boolean Fill(const Handle_Transfer_TransientProcess &TP, const Handle_Standard_Transient &ent);
		%feature("autodoc", "1");
		void Strip(const Standard_Integer mode);
		%feature("autodoc", "1");
		void FillBack(const Handle_Transfer_TransientProcess &TP) const;
		%feature("autodoc", "1");
		Standard_Boolean HasResult() const;
		%feature("autodoc", "1");
		Handle_Transfer_ResultFromTransient MainResult() const;
		%feature("autodoc", "1");
		void SetMainResult(const Handle_Transfer_ResultFromTransient &amain);
		%feature("autodoc", "1");
		char * MainLabel() const;
		%feature("autodoc", "1");
		Standard_Integer MainNumber() const;
		%feature("autodoc", "1");
		Handle_Transfer_ResultFromTransient ResultFromKey(const Handle_Standard_Transient &start) const;
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient Results(const Standard_Integer level) const;
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient TransferredList(const Standard_Integer level=2) const;
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient CheckedList(const Interface_CheckStatus check, const Standard_Boolean result) const;
		%feature("autodoc", "1");
		Interface_CheckIterator CheckList(const Standard_Boolean erronly, const Standard_Integer level=2) const;
		%feature("autodoc", "1");
		Interface_CheckStatus CheckStatus() const;
		%feature("autodoc", "1");
		Interface_CheckStatus ComputeCheckStatus(const Standard_Boolean enforce);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Transfer_ResultFromModel {
	Handle_Transfer_ResultFromModel GetHandle() {
	return *(Handle_Transfer_ResultFromModel*) &$self;
	}
};
%extend Transfer_ResultFromModel {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Transfer_ResultFromModel::~Transfer_ResultFromModel %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Transfer_ResultFromModel {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Transfer_ActorOfTransientProcess;
class Transfer_ActorOfTransientProcess : public Transfer_ActorOfProcessForTransient {
	public:
		%feature("autodoc", "1");
		Transfer_ActorOfTransientProcess();
		%feature("autodoc", "1");
		virtual		Handle_Transfer_Binder Transferring(const Handle_Standard_Transient &start, const Handle_Transfer_ProcessForTransient &TP);
		%feature("autodoc", "1");
		virtual		Handle_Transfer_Binder Transfer(const Handle_Standard_Transient &start, const Handle_Transfer_TransientProcess &TP);
		%feature("autodoc", "1");
		virtual		Handle_Standard_Transient TransferTransient(const Handle_Standard_Transient &start, const Handle_Transfer_TransientProcess &TP);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Transfer_ActorOfTransientProcess {
	Handle_Transfer_ActorOfTransientProcess GetHandle() {
	return *(Handle_Transfer_ActorOfTransientProcess*) &$self;
	}
};
%extend Transfer_ActorOfTransientProcess {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Transfer_ActorOfTransientProcess::~Transfer_ActorOfTransientProcess %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Transfer_ActorOfTransientProcess {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Transfer_ActorDispatch;
class Transfer_ActorDispatch : public Transfer_ActorOfTransientProcess {
	public:
		%feature("autodoc", "1");
		Transfer_ActorDispatch(const Handle_Interface_InterfaceModel &amodel, const Interface_GeneralLib &lib);
		%feature("autodoc", "1");
		Transfer_ActorDispatch(const Handle_Interface_InterfaceModel &amodel, const Handle_Interface_Protocol &protocol);
		%feature("autodoc", "1");
		Transfer_ActorDispatch(const Handle_Interface_InterfaceModel &amodel);
		%feature("autodoc", "1");
		void AddActor(const Handle_Transfer_ActorOfTransientProcess &actor);
		%feature("autodoc", "1");
		Transfer_TransferDispatch & TransferDispatch();

};
%extend Transfer_ActorDispatch {
	Handle_Transfer_ActorDispatch GetHandle() {
	return *(Handle_Transfer_ActorDispatch*) &$self;
	}
};
%extend Transfer_ActorDispatch {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Transfer_ActorDispatch::~Transfer_ActorDispatch %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Transfer_ActorDispatch {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Transfer_ProcessForTransient;
class Transfer_ProcessForTransient : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Transfer_ProcessForTransient(const Standard_Integer nb=10000);
		%feature("autodoc", "1");
		Transfer_ProcessForTransient(const Handle_Message_Messenger &printer, const Standard_Integer nb=10000);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Clean();
		%feature("autodoc", "1");
		void Resize(const Standard_Integer nb);
		%feature("autodoc", "1");
		void SetActor(const Handle_Transfer_ActorOfProcessForTransient &actor);
		%feature("autodoc", "1");
		Handle_Transfer_ActorOfProcessForTransient Actor() const;
		%feature("autodoc", "1");
		Handle_Transfer_Binder Find(const Handle_Standard_Transient &start) const;
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Handle_Standard_Transient &start) const;
		%feature("autodoc", "1");
		Standard_Boolean IsAlreadyUsed(const Handle_Standard_Transient &start) const;
		%feature("autodoc", "1");
		void Bind(const Handle_Standard_Transient &start, const Handle_Transfer_Binder &binder);
		%feature("autodoc", "1");
		void Rebind(const Handle_Standard_Transient &start, const Handle_Transfer_Binder &binder);
		%feature("autodoc", "1");
		Standard_Boolean Unbind(const Handle_Standard_Transient &start);
		%feature("autodoc", "1");
		Handle_Transfer_Binder FindElseBind(const Handle_Standard_Transient &start);
		%feature("autodoc", "1");
		void SetMessenger(const Handle_Message_Messenger &messenger);
		%feature("autodoc", "1");
		Handle_Message_Messenger Messenger() const;
		%feature("autodoc", "1");
		void SetTraceLevel(const Standard_Integer tracelev);
		%feature("autodoc", "1");
		Standard_Integer TraceLevel() const;
		%feature("autodoc", "1");
		void SendFail(const Handle_Standard_Transient &start, const Message_Msg &amsg);
		%feature("autodoc", "1");
		void SendWarning(const Handle_Standard_Transient &start, const Message_Msg &amsg);
		%feature("autodoc", "1");
		void SendMsg(const Handle_Standard_Transient &start, const Message_Msg &amsg);
		%feature("autodoc", "1");
		void AddFail(const Handle_Standard_Transient &start, const char * mess, const char * orig="");
		%feature("autodoc", "1");
		void AddError(const Handle_Standard_Transient &start, const char * mess, const char * orig="");
		%feature("autodoc", "1");
		void AddFail(const Handle_Standard_Transient &start, const Message_Msg &amsg);
		%feature("autodoc", "1");
		void AddWarning(const Handle_Standard_Transient &start, const char * mess, const char * orig="");
		%feature("autodoc", "1");
		void AddWarning(const Handle_Standard_Transient &start, const Message_Msg &amsg);
		%feature("autodoc", "1");
		void Mend(const Handle_Standard_Transient &start, const char * pref="");
		%feature("autodoc", "1");
		Handle_Interface_Check Check(const Handle_Standard_Transient &start) const;
		%feature("autodoc", "1");
		void BindTransient(const Handle_Standard_Transient &start, const Handle_Standard_Transient &res);
		%feature("autodoc", "1");
		const Handle_Standard_Transient & FindTransient(const Handle_Standard_Transient &start) const;
		%feature("autodoc", "1");
		void BindMultiple(const Handle_Standard_Transient &start);
		%feature("autodoc", "1");
		void AddMultiple(const Handle_Standard_Transient &start, const Handle_Standard_Transient &res);
		%feature("autodoc", "1");
		Standard_Boolean FindTypedTransient(const Handle_Standard_Transient &start, const Handle_Standard_Type &atype, Handle_Standard_Transient & val) const;
		%feature("autodoc", "1");
		Standard_Boolean GetTypedTransient(const Handle_Transfer_Binder &binder, const Handle_Standard_Type &atype, Handle_Standard_Transient & val) const;
		%feature("autodoc", "1");
		Standard_Integer NbMapped() const;
		%feature("autodoc", "1");
		const Handle_Standard_Transient & Mapped(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer MapIndex(const Handle_Standard_Transient &start) const;
		%feature("autodoc", "1");
		Handle_Transfer_Binder MapItem(const Standard_Integer num) const;
		%feature("autodoc", "1");
		void SetRoot(const Handle_Standard_Transient &start);
		%feature("autodoc", "1");
		void SetRootManagement(const Standard_Boolean stat);
		%feature("autodoc", "1");
		Standard_Integer NbRoots() const;
		%feature("autodoc", "1");
		const Handle_Standard_Transient & Root(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Handle_Transfer_Binder RootItem(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer RootIndex(const Handle_Standard_Transient &start) const;
		%feature("autodoc", "1");
		Standard_Integer NestingLevel() const;
		%feature("autodoc", "1");
		void ResetNestingLevel();
		%feature("autodoc", "1");
		Standard_Boolean Recognize(const Handle_Standard_Transient &start) const;
		%feature("autodoc", "1");
		Handle_Transfer_Binder Transferring(const Handle_Standard_Transient &start);
		%feature("autodoc", "1");
		Standard_Boolean Transfer(const Handle_Standard_Transient &start);
		%feature("autodoc", "1");
		void SetErrorHandle(const Standard_Boolean err);
		%feature("autodoc", "1");
		Standard_Boolean ErrorHandle() const;
		%feature("autodoc", "1");
		void StartTrace(const Handle_Transfer_Binder &binder, const Handle_Standard_Transient &start, const Standard_Integer level, const Standard_Integer mode) const;
		%feature("autodoc", "1");
		virtual		void PrintTrace(const Handle_Standard_Transient &start, const Handle_Message_Messenger &S) const;
		%feature("autodoc", "1");
		Standard_Boolean IsLooping(const Standard_Integer alevel) const;
		%feature("autodoc", "1");
		Transfer_IteratorOfProcessForTransient RootResult(const Standard_Boolean withstart=0) const;
		%feature("autodoc", "1");
		Transfer_IteratorOfProcessForTransient CompleteResult(const Standard_Boolean withstart=0) const;
		%feature("autodoc", "1");
		Transfer_IteratorOfProcessForTransient AbnormalResult() const;
		%feature("autodoc", "1");
		Interface_CheckIterator CheckList(const Standard_Boolean erronly) const;
		%feature("autodoc", "1");
		Transfer_IteratorOfProcessForTransient ResultOne(const Handle_Standard_Transient &start, const Standard_Integer level, const Standard_Boolean withstart=0) const;
		%feature("autodoc", "1");
		Interface_CheckIterator CheckListOne(const Handle_Standard_Transient &start, const Standard_Integer level, const Standard_Boolean erronly) const;
		%feature("autodoc", "1");
		Standard_Boolean IsCheckListEmpty(const Handle_Standard_Transient &start, const Standard_Integer level, const Standard_Boolean erronly) const;
		%feature("autodoc", "1");
		void RemoveResult(const Handle_Standard_Transient &start, const Standard_Integer level, const Standard_Boolean compute=1);
		%feature("autodoc", "1");
		virtual		Standard_Integer CheckNum(const Handle_Standard_Transient &start) const;
		%feature("autodoc", "1");
		void SetProgress(const Handle_Message_ProgressIndicator &theProgress);
		%feature("autodoc", "1");
		Handle_Message_ProgressIndicator GetProgress() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Transfer_ProcessForTransient {
	Handle_Transfer_ProcessForTransient GetHandle() {
	return *(Handle_Transfer_ProcessForTransient*) &$self;
	}
};
%extend Transfer_ProcessForTransient {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Transfer_ProcessForTransient::~Transfer_ProcessForTransient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Transfer_ProcessForTransient {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Transfer_TransferFailure;
class Transfer_TransferFailure : public Interface_InterfaceError {
	public:
		%feature("autodoc", "1");
		Transfer_TransferFailure();
		%feature("autodoc", "1");
		Transfer_TransferFailure(const char * AString);
		%feature("autodoc", "1");
		static		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		static		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		static		Handle_Transfer_TransferFailure NewInstance(const char * aMessage="");
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Transfer_TransferFailure {
	Handle_Transfer_TransferFailure GetHandle() {
	return *(Handle_Transfer_TransferFailure*) &$self;
	}
};
%extend Transfer_TransferFailure {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Transfer_TransferFailure::~Transfer_TransferFailure %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Transfer_TransferFailure {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Transfer_TransferDeadLoop;
class Transfer_TransferDeadLoop : public Transfer_TransferFailure {
	public:
		%feature("autodoc", "1");
		Transfer_TransferDeadLoop();
		%feature("autodoc", "1");
		Transfer_TransferDeadLoop(const char * AString);
		%feature("autodoc", "1");
		static		Handle_Transfer_TransferDeadLoop NewInstance(const char * aMessage="");

};
%extend Transfer_TransferDeadLoop {
	Handle_Transfer_TransferDeadLoop GetHandle() {
	return *(Handle_Transfer_TransferDeadLoop*) &$self;
	}
};
%extend Transfer_TransferDeadLoop {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Transfer_TransferDeadLoop::~Transfer_TransferDeadLoop %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Transfer_TransferDeadLoop {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Transfer_IndexedDataMapNodeOfTransferMapOfProcessForFinder;
class Transfer_IndexedDataMapNodeOfTransferMapOfProcessForFinder : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Transfer_IndexedDataMapNodeOfTransferMapOfProcessForFinder(const Handle_Transfer_Finder &K1, const Standard_Integer K2, const Handle_Transfer_Binder &I, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
		%feature("autodoc", "1");
		Handle_Transfer_Finder & Key1() const;
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetKey2() {
				return (Standard_Integer) $self->Key2();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetKey2(Standard_Integer value ) {
				$self->Key2()=value;
				}
		};
		%feature("autodoc", "1");
		TCollection_MapNodePtr & Next2() const;
		%feature("autodoc", "1");
		Handle_Transfer_Binder & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Transfer_IndexedDataMapNodeOfTransferMapOfProcessForFinder {
	Handle_Transfer_IndexedDataMapNodeOfTransferMapOfProcessForFinder GetHandle() {
	return *(Handle_Transfer_IndexedDataMapNodeOfTransferMapOfProcessForFinder*) &$self;
	}
};
%extend Transfer_IndexedDataMapNodeOfTransferMapOfProcessForFinder {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Transfer_IndexedDataMapNodeOfTransferMapOfProcessForFinder::~Transfer_IndexedDataMapNodeOfTransferMapOfProcessForFinder %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Transfer_IndexedDataMapNodeOfTransferMapOfProcessForFinder {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Transfer_TransientProcess;
class Transfer_TransientProcess : public Transfer_ProcessForTransient {
	public:
		%feature("autodoc", "1");
		Transfer_TransientProcess(const Standard_Integer nb=10000);
		%feature("autodoc", "1");
		void SetModel(const Handle_Interface_InterfaceModel &model);
		%feature("autodoc", "1");
		Handle_Interface_InterfaceModel Model() const;
		%feature("autodoc", "1");
		void SetGraph(const Handle_Interface_HGraph &HG);
		%feature("autodoc", "1");
		Standard_Boolean HasGraph() const;
		%feature("autodoc", "1");
		Handle_Interface_HGraph HGraph() const;
		%feature("autodoc", "1");
		const Interface_Graph & Graph() const;
		%feature("autodoc", "1");
		void SetContext(const char * name, const Handle_Standard_Transient &ctx);
		%feature("autodoc", "1");
		Standard_Boolean GetContext(const char * name, const Handle_Standard_Type &type, Handle_Standard_Transient & ctx) const;
		%feature("autodoc", "1");
		Handle_Dico_DictionaryOfTransient & Context();
		%feature("autodoc", "1");
		virtual		void PrintTrace(const Handle_Standard_Transient &start, const Handle_Message_Messenger &S) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer CheckNum(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Interface_EntityIterator TypedSharings(const Handle_Standard_Transient &start, const Handle_Standard_Type &type) const;
		%feature("autodoc", "1");
		Standard_Boolean IsDataLoaded(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Standard_Boolean IsDataFail(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		void PrintStats(const Standard_Integer mode, const Handle_Message_Messenger &S) const;
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient RootsForTransfer();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Transfer_TransientProcess {
	Handle_Transfer_TransientProcess GetHandle() {
	return *(Handle_Transfer_TransientProcess*) &$self;
	}
};
%extend Transfer_TransientProcess {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Transfer_TransientProcess::~Transfer_TransientProcess %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Transfer_TransientProcess {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Transfer_TransientMapper;
class Transfer_TransientMapper : public Transfer_Finder {
	public:
		%feature("autodoc", "1");
		Transfer_TransientMapper(const Handle_Standard_Transient &akey);
		%feature("autodoc", "1");
		const Handle_Standard_Transient & Value() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Equates(const Handle_Transfer_Finder &other) const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type ValueType() const;
		%feature("autodoc", "1");
		virtual		char * ValueTypeName() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Transfer_TransientMapper {
	Handle_Transfer_TransientMapper GetHandle() {
	return *(Handle_Transfer_TransientMapper*) &$self;
	}
};
%extend Transfer_TransientMapper {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Transfer_TransientMapper::~Transfer_TransientMapper %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Transfer_TransientMapper {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Transfer_IteratorOfProcessForFinder;
class Transfer_IteratorOfProcessForFinder : public Transfer_TransferIterator {
	public:
		%feature("autodoc", "1");
		Transfer_IteratorOfProcessForFinder(const Standard_Boolean withstarts);
		%feature("autodoc", "1");
		void Add(const Handle_Transfer_Binder &binder);
		%feature("autodoc", "1");
		void Add(const Handle_Transfer_Binder &binder, const Handle_Transfer_Finder &start);
		%feature("autodoc", "1");
		void Filter(const Handle_Transfer_HSequenceOfFinder &list, const Standard_Boolean keep=1);
		%feature("autodoc", "1");
		Standard_Boolean HasStarting() const;
		%feature("autodoc", "1");
		const Handle_Transfer_Finder & Starting() const;

};
%feature("shadow") Transfer_IteratorOfProcessForFinder::~Transfer_IteratorOfProcessForFinder %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Transfer_IteratorOfProcessForFinder {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Transfer_TransferDispatch;
class Transfer_TransferDispatch : public Interface_CopyTool {
	public:
		%feature("autodoc", "1");
		Transfer_TransferDispatch(const Handle_Interface_InterfaceModel &amodel, const Interface_GeneralLib &lib);
		%feature("autodoc", "1");
		Transfer_TransferDispatch(const Handle_Interface_InterfaceModel &amodel, const Handle_Interface_Protocol &protocol);
		%feature("autodoc", "1");
		Transfer_TransferDispatch(const Handle_Interface_InterfaceModel &amodel);
		%feature("autodoc", "1");
		Handle_Transfer_TransientProcess TransientProcess() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Copy(const Handle_Standard_Transient &entfrom, Handle_Standard_Transient & entto, const Standard_Boolean mapped, const Standard_Boolean errstat);

};
%feature("shadow") Transfer_TransferDispatch::~Transfer_TransferDispatch %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Transfer_TransferDispatch {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Transfer_MapContainer;
class Transfer_MapContainer : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Transfer_MapContainer();
		%feature("autodoc", "1");
		void SetMapObjects(TColStd_DataMapOfTransientTransient & theMapObjects);
		%feature("autodoc", "1");
		TColStd_DataMapOfTransientTransient & GetMapObjects();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Transfer_MapContainer {
	Handle_Transfer_MapContainer GetHandle() {
	return *(Handle_Transfer_MapContainer*) &$self;
	}
};
%extend Transfer_MapContainer {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Transfer_MapContainer::~Transfer_MapContainer %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Transfer_MapContainer {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Transfer_ActorOfFinderProcess;
class Transfer_ActorOfFinderProcess : public Transfer_ActorOfProcessForFinder {
	public:
		%feature("autodoc", "1");
		Transfer_ActorOfFinderProcess();
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetModeTrans() {
				return (Standard_Integer) $self->ModeTrans();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetModeTrans(Standard_Integer value ) {
				$self->ModeTrans()=value;
				}
		};
		%feature("autodoc", "1");
		virtual		Handle_Transfer_Binder Transferring(const Handle_Transfer_Finder &start, const Handle_Transfer_ProcessForFinder &TP);
		%feature("autodoc", "1");
		virtual		Handle_Transfer_Binder Transfer(const Handle_Transfer_Finder &start, const Handle_Transfer_FinderProcess &TP);
		%feature("autodoc", "1");
		virtual		Handle_Standard_Transient TransferTransient(const Handle_Standard_Transient &start, const Handle_Transfer_FinderProcess &TP);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Transfer_ActorOfFinderProcess {
	Handle_Transfer_ActorOfFinderProcess GetHandle() {
	return *(Handle_Transfer_ActorOfFinderProcess*) &$self;
	}
};
%extend Transfer_ActorOfFinderProcess {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Transfer_ActorOfFinderProcess::~Transfer_ActorOfFinderProcess %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Transfer_ActorOfFinderProcess {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Transfer_VoidBinder;
class Transfer_VoidBinder : public Transfer_Binder {
	public:
		%feature("autodoc", "1");
		Transfer_VoidBinder();
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type ResultType() const;
		%feature("autodoc", "1");
		virtual		char * ResultTypeName() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Transfer_VoidBinder {
	Handle_Transfer_VoidBinder GetHandle() {
	return *(Handle_Transfer_VoidBinder*) &$self;
	}
};
%extend Transfer_VoidBinder {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Transfer_VoidBinder::~Transfer_VoidBinder %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Transfer_VoidBinder {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Transfer_SequenceOfBinder;
class Transfer_SequenceOfBinder : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		Transfer_SequenceOfBinder();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const Transfer_SequenceOfBinder & Assign(const Transfer_SequenceOfBinder &Other);
		%feature("autodoc", "1");
		const Transfer_SequenceOfBinder & operator=(const Transfer_SequenceOfBinder &Other);
		%feature("autodoc", "1");
		void Append(const Handle_Transfer_Binder &T);
		%feature("autodoc", "1");
		void Append(Transfer_SequenceOfBinder & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_Transfer_Binder &T);
		%feature("autodoc", "1");
		void Prepend(Transfer_SequenceOfBinder & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_Transfer_Binder &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, Transfer_SequenceOfBinder & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_Transfer_Binder &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, Transfer_SequenceOfBinder & S);
		%feature("autodoc", "1");
		const Handle_Transfer_Binder & First() const;
		%feature("autodoc", "1");
		const Handle_Transfer_Binder & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, Transfer_SequenceOfBinder & S);
		%feature("autodoc", "1");
		const Handle_Transfer_Binder & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_Transfer_Binder & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_Transfer_Binder &I);
		%feature("autodoc", "1");
		Handle_Transfer_Binder & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_Transfer_Binder & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") Transfer_SequenceOfBinder::~Transfer_SequenceOfBinder %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Transfer_SequenceOfBinder {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Transfer_MultipleBinder;
class Transfer_MultipleBinder : public Transfer_Binder {
	public:
		%feature("autodoc", "1");
		Transfer_MultipleBinder();
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsMultiple() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type ResultType() const;
		%feature("autodoc", "1");
		virtual		char * ResultTypeName() const;
		%feature("autodoc", "1");
		void AddResult(const Handle_Standard_Transient &res);
		%feature("autodoc", "1");
		Standard_Integer NbResults() const;
		%feature("autodoc", "1");
		Handle_Standard_Transient ResultValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient MultipleResult() const;
		%feature("autodoc", "1");
		void SetMultipleResult(const Handle_TColStd_HSequenceOfTransient &mulres);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Transfer_MultipleBinder {
	Handle_Transfer_MultipleBinder GetHandle() {
	return *(Handle_Transfer_MultipleBinder*) &$self;
	}
};
%extend Transfer_MultipleBinder {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Transfer_MultipleBinder::~Transfer_MultipleBinder %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Transfer_MultipleBinder {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Transfer_TransferOutput;
class Transfer_TransferOutput {
	public:
		%feature("autodoc", "1");
		Transfer_TransferOutput(const Handle_Transfer_ActorOfTransientProcess &actor, const Handle_Interface_InterfaceModel &amodel);
		%feature("autodoc", "1");
		Transfer_TransferOutput(const Handle_Transfer_TransientProcess &proc, const Handle_Interface_InterfaceModel &amodel);
		%feature("autodoc", "1");
		Handle_Interface_InterfaceModel Model() const;
		%feature("autodoc", "1");
		Handle_Transfer_TransientProcess TransientProcess() const;
		%feature("autodoc", "1");
		void Transfer(const Handle_Standard_Transient &obj);
		%feature("autodoc", "1");
		void TransferRoots(const Handle_Interface_Protocol &protocol);
		%feature("autodoc", "1");
		void TransferRoots(const Interface_Graph &G);
		%feature("autodoc", "1");
		void TransferRoots();
		%feature("autodoc", "1");
		Interface_EntityIterator ListForStatus(const Standard_Boolean normal, const Standard_Boolean roots=1) const;
		%feature("autodoc", "1");
		Handle_Interface_InterfaceModel ModelForStatus(const Handle_Interface_Protocol &protocol, const Standard_Boolean normal, const Standard_Boolean roots=1) const;

};
%feature("shadow") Transfer_TransferOutput::~Transfer_TransferOutput %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Transfer_TransferOutput {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Transfer_TransferMapOfProcessForFinder;
class Transfer_TransferMapOfProcessForFinder : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		Transfer_TransferMapOfProcessForFinder(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		Transfer_TransferMapOfProcessForFinder & Assign(const Transfer_TransferMapOfProcessForFinder &Other);
		%feature("autodoc", "1");
		Transfer_TransferMapOfProcessForFinder & operator=(const Transfer_TransferMapOfProcessForFinder &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer Add(const Handle_Transfer_Finder &K, const Handle_Transfer_Binder &I);
		%feature("autodoc", "1");
		void Substitute(const Standard_Integer I, const Handle_Transfer_Finder &K, const Handle_Transfer_Binder &T);
		%feature("autodoc", "1");
		void RemoveLast();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Handle_Transfer_Finder &K) const;
		%feature("autodoc", "1");
		const Handle_Transfer_Finder & FindKey(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const Handle_Transfer_Binder & FindFromIndex(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const Handle_Transfer_Binder & operator()(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Handle_Transfer_Binder & ChangeFromIndex(const Standard_Integer I);
		%feature("autodoc", "1");
		Handle_Transfer_Binder & operator()(const Standard_Integer I);
		%feature("autodoc", "1");
		Standard_Integer FindIndex(const Handle_Transfer_Finder &K) const;
		%feature("autodoc", "1");
		const Handle_Transfer_Binder & FindFromKey(const Handle_Transfer_Finder &K) const;
		%feature("autodoc", "1");
		Handle_Transfer_Binder & ChangeFromKey(const Handle_Transfer_Finder &K);
		%feature("autodoc", "1");
		Standard_Address FindFromKey1(const Handle_Transfer_Finder &K) const;
		%feature("autodoc", "1");
		Standard_Address ChangeFromKey1(const Handle_Transfer_Finder &K);

};
%feature("shadow") Transfer_TransferMapOfProcessForFinder::~Transfer_TransferMapOfProcessForFinder %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Transfer_TransferMapOfProcessForFinder {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Transfer_TransientListBinder;
class Transfer_TransientListBinder : public Transfer_Binder {
	public:
		%feature("autodoc", "1");
		Transfer_TransientListBinder();
		%feature("autodoc", "1");
		Transfer_TransientListBinder(const Handle_TColStd_HSequenceOfTransient &list);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsMultiple() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type ResultType() const;
		%feature("autodoc", "1");
		virtual		char * ResultTypeName() const;
		%feature("autodoc", "1");
		void AddResult(const Handle_Standard_Transient &res);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient Result() const;
		%feature("autodoc", "1");
		void SetResult(const Standard_Integer num, const Handle_Standard_Transient &res);
		%feature("autodoc", "1");
		Standard_Integer NbTransients() const;
		%feature("autodoc", "1");
		const Handle_Standard_Transient & Transient(const Standard_Integer num) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Transfer_TransientListBinder {
	Handle_Transfer_TransientListBinder GetHandle() {
	return *(Handle_Transfer_TransientListBinder*) &$self;
	}
};
%extend Transfer_TransientListBinder {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Transfer_TransientListBinder::~Transfer_TransientListBinder %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Transfer_TransientListBinder {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Transfer_SequenceNodeOfSequenceOfBinder;
class Transfer_SequenceNodeOfSequenceOfBinder : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Transfer_SequenceNodeOfSequenceOfBinder(const Handle_Transfer_Binder &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_Transfer_Binder & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Transfer_SequenceNodeOfSequenceOfBinder {
	Handle_Transfer_SequenceNodeOfSequenceOfBinder GetHandle() {
	return *(Handle_Transfer_SequenceNodeOfSequenceOfBinder*) &$self;
	}
};
%extend Transfer_SequenceNodeOfSequenceOfBinder {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Transfer_SequenceNodeOfSequenceOfBinder::~Transfer_SequenceNodeOfSequenceOfBinder %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Transfer_SequenceNodeOfSequenceOfBinder {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Transfer_BinderOfTransientInteger;
class Transfer_BinderOfTransientInteger : public Transfer_SimpleBinderOfTransient {
	public:
		%feature("autodoc", "1");
		Transfer_BinderOfTransientInteger();
		%feature("autodoc", "1");
		void SetInteger(const Standard_Integer value);
		%feature("autodoc", "1");
		Standard_Integer Integer() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Transfer_BinderOfTransientInteger {
	Handle_Transfer_BinderOfTransientInteger GetHandle() {
	return *(Handle_Transfer_BinderOfTransientInteger*) &$self;
	}
};
%extend Transfer_BinderOfTransientInteger {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Transfer_BinderOfTransientInteger::~Transfer_BinderOfTransientInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Transfer_BinderOfTransientInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Transfer_HSequenceOfBinder;
class Transfer_HSequenceOfBinder : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Transfer_HSequenceOfBinder();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const Handle_Transfer_Binder &anItem);
		%feature("autodoc", "1");
		void Append(const Handle_Transfer_HSequenceOfBinder &aSequence);
		%feature("autodoc", "1");
		void Prepend(const Handle_Transfer_Binder &anItem);
		%feature("autodoc", "1");
		void Prepend(const Handle_Transfer_HSequenceOfBinder &aSequence);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_Transfer_Binder &anItem);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_Transfer_HSequenceOfBinder &aSequence);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_Transfer_Binder &anItem);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_Transfer_HSequenceOfBinder &aSequence);
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer anIndex, const Standard_Integer anOtherIndex);
		%feature("autodoc", "1");
		Handle_Transfer_HSequenceOfBinder Split(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer anIndex, const Handle_Transfer_Binder &anItem);
		%feature("autodoc", "1");
		const Handle_Transfer_Binder & Value(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		Handle_Transfer_Binder & ChangeValue(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer fromIndex, const Standard_Integer toIndex);
		%feature("autodoc", "1");
		const Transfer_SequenceOfBinder & Sequence() const;
		%feature("autodoc", "1");
		Transfer_SequenceOfBinder & ChangeSequence();
		%feature("autodoc", "1");
		Handle_Transfer_HSequenceOfBinder ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Transfer_HSequenceOfBinder {
	Handle_Transfer_HSequenceOfBinder GetHandle() {
	return *(Handle_Transfer_HSequenceOfBinder*) &$self;
	}
};
%extend Transfer_HSequenceOfBinder {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Transfer_HSequenceOfBinder::~Transfer_HSequenceOfBinder %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Transfer_HSequenceOfBinder {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Transfer_DataInfo;
class Transfer_DataInfo {
	public:
		%feature("autodoc", "1");
		Transfer_DataInfo();
		%feature("autodoc", "1");
		static		Handle_Standard_Type Type(const Handle_Standard_Transient &ent);
		%feature("autodoc", "1");
		static		char * TypeName(const Handle_Standard_Transient &ent);

};
%feature("shadow") Transfer_DataInfo::~Transfer_DataInfo %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Transfer_DataInfo {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Transfer_IndexedDataMapNodeOfTransferMapOfProcessForTransient;
class Transfer_IndexedDataMapNodeOfTransferMapOfProcessForTransient : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Transfer_IndexedDataMapNodeOfTransferMapOfProcessForTransient(const Handle_Standard_Transient &K1, const Standard_Integer K2, const Handle_Transfer_Binder &I, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
		%feature("autodoc", "1");
		Handle_Standard_Transient & Key1() const;
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetKey2() {
				return (Standard_Integer) $self->Key2();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetKey2(Standard_Integer value ) {
				$self->Key2()=value;
				}
		};
		%feature("autodoc", "1");
		TCollection_MapNodePtr & Next2() const;
		%feature("autodoc", "1");
		Handle_Transfer_Binder & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Transfer_IndexedDataMapNodeOfTransferMapOfProcessForTransient {
	Handle_Transfer_IndexedDataMapNodeOfTransferMapOfProcessForTransient GetHandle() {
	return *(Handle_Transfer_IndexedDataMapNodeOfTransferMapOfProcessForTransient*) &$self;
	}
};
%extend Transfer_IndexedDataMapNodeOfTransferMapOfProcessForTransient {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Transfer_IndexedDataMapNodeOfTransferMapOfProcessForTransient::~Transfer_IndexedDataMapNodeOfTransferMapOfProcessForTransient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Transfer_IndexedDataMapNodeOfTransferMapOfProcessForTransient {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Transfer_IteratorOfProcessForTransient;
class Transfer_IteratorOfProcessForTransient : public Transfer_TransferIterator {
	public:
		%feature("autodoc", "1");
		Transfer_IteratorOfProcessForTransient(const Standard_Boolean withstarts);
		%feature("autodoc", "1");
		void Add(const Handle_Transfer_Binder &binder);
		%feature("autodoc", "1");
		void Add(const Handle_Transfer_Binder &binder, const Handle_Standard_Transient &start);
		%feature("autodoc", "1");
		void Filter(const Handle_TColStd_HSequenceOfTransient &list, const Standard_Boolean keep=1);
		%feature("autodoc", "1");
		Standard_Boolean HasStarting() const;
		%feature("autodoc", "1");
		const Handle_Standard_Transient & Starting() const;

};
%feature("shadow") Transfer_IteratorOfProcessForTransient::~Transfer_IteratorOfProcessForTransient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Transfer_IteratorOfProcessForTransient {
	void _kill_pointed() {
		delete $self;
	}
};
