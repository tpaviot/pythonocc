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

%module OSD
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include OSD_renames.i


%include OSD_required_python_modules.i


%include OSD_dependencies.i


%include OSD_headers.i

enum OSD_WhoAmI {
	OSD_WDirectory,
	OSD_WDirectoryIterator,
	OSD_WEnvironment,
	OSD_WFile,
	OSD_WFileNode,
	OSD_WFileIterator,
	OSD_WMailBox,
	OSD_WPath,
	OSD_WProcess,
	OSD_WProtection,
	OSD_WSemaphore,
	OSD_WHost,
	OSD_WDisk,
	OSD_WChronometer,
	OSD_WSharedMemory,
	OSD_WTimer,
	OSD_WPackage,
	OSD_WPrinter,
	OSD_WEnvironmentIterator,
	};

enum OSD_SysType {
	OSD_Unknown,
	OSD_Default,
	OSD_UnixBSD,
	OSD_UnixSystemV,
	OSD_VMS,
	OSD_OS2,
	OSD_OSF,
	OSD_MacOs,
	OSD_Taligent,
	OSD_WindowsNT,
	OSD_LinuxREDHAT,
	OSD_Aix,
	};

enum OSD_FontAspect {
	OSD_FA_Undefined,
	OSD_FA_Regular,
	OSD_FA_Bold,
	OSD_FA_Italic,
	OSD_FA_BoldItalic,
	};

enum OSD_LockType {
	OSD_NoLock,
	OSD_ReadLock,
	OSD_WriteLock,
	OSD_ExclusiveLock,
	};

enum OSD_Signals {
	OSD_S_SIGHUP,
	OSD_S_SIGINT,
	OSD_S_SIGQUIT,
	OSD_S_SIGILL,
	OSD_S_SIGKILL,
	OSD_S_SIGBUS,
	OSD_S_SIGSEGV,
	OSD_S_SIGSYS,
	OSD_S_SIGFPE,
	OSD_S_FPE_FLTDIV_TRAP,
	OSD_S_FPE_INTDIV_TRAP,
	OSD_S_FPE_FLTOVF_TRAP,
	OSD_S_FPE_INTOVF_TRAP,
	OSD_S_FPE_FLTUND_TRAP,
	OSD_S_FPE_FLTINEX_TRAP,
	};

enum OSD_FromWhere {
	OSD_FromBeginning,
	OSD_FromHere,
	OSD_FromEnd,
	};

enum OSD_KindFile {
	OSD_FILE,
	OSD_DIRECTORY,
	OSD_LINK,
	OSD_SOCKET,
	OSD_UNKNOWN,
	};

enum OSD_LoadMode {
	OSD_RTLD_LAZY,
	OSD_RTLD_NOW,
	};

enum OSD_SingleProtection {
	OSD_None,
	OSD_R,
	OSD_W,
	OSD_RW,
	OSD_X,
	OSD_RX,
	OSD_WX,
	OSD_RWX,
	OSD_D,
	OSD_RD,
	OSD_WD,
	OSD_RWD,
	OSD_XD,
	OSD_RXD,
	OSD_WXD,
	OSD_RWXD,
	};

enum OSD_OEMType {
	OSD_Unavailable,
	OSD_SUN,
	OSD_DEC,
	OSD_SGI,
	OSD_NEC,
	OSD_MAC,
	OSD_PC,
	OSD_HP,
	OSD_IBM,
	OSD_VAX,
	OSD_LIN,
	OSD_AIX,
	};

enum OSD_OpenMode {
	OSD_ReadOnly,
	OSD_WriteOnly,
	OSD_ReadWrite,
	};



%nodefaultctor Handle_OSD_Exception;
class Handle_OSD_Exception : public Handle_Standard_Failure {
	public:
		%feature("autodoc", "1");
		Handle_OSD_Exception();
		%feature("autodoc", "1");
		Handle_OSD_Exception(const Handle_OSD_Exception &aHandle);
		%feature("autodoc", "1");
		Handle_OSD_Exception(const OSD_Exception *anItem);
		%feature("autodoc", "1");
		Handle_OSD_Exception & operator=(const Handle_OSD_Exception &aHandle);
		%feature("autodoc", "1");
		Handle_OSD_Exception & operator=(const OSD_Exception *anItem);
		%feature("autodoc", "1");
		static		Handle_OSD_Exception DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_OSD_Exception {
	OSD_Exception* GetObject() {
	return (OSD_Exception*)$self->Access();
	}
};
%feature("shadow") Handle_OSD_Exception::~Handle_OSD_Exception %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_OSD_Exception {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_OSD_Exception_STACK_OVERFLOW;
class Handle_OSD_Exception_STACK_OVERFLOW : public Handle_OSD_Exception {
	public:
		%feature("autodoc", "1");
		Handle_OSD_Exception_STACK_OVERFLOW();
		%feature("autodoc", "1");
		Handle_OSD_Exception_STACK_OVERFLOW(const Handle_OSD_Exception_STACK_OVERFLOW &aHandle);
		%feature("autodoc", "1");
		Handle_OSD_Exception_STACK_OVERFLOW(const OSD_Exception_STACK_OVERFLOW *anItem);
		%feature("autodoc", "1");
		Handle_OSD_Exception_STACK_OVERFLOW & operator=(const Handle_OSD_Exception_STACK_OVERFLOW &aHandle);
		%feature("autodoc", "1");
		Handle_OSD_Exception_STACK_OVERFLOW & operator=(const OSD_Exception_STACK_OVERFLOW *anItem);
		%feature("autodoc", "1");
		static		Handle_OSD_Exception_STACK_OVERFLOW DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_OSD_Exception_STACK_OVERFLOW {
	OSD_Exception_STACK_OVERFLOW* GetObject() {
	return (OSD_Exception_STACK_OVERFLOW*)$self->Access();
	}
};
%feature("shadow") Handle_OSD_Exception_STACK_OVERFLOW::~Handle_OSD_Exception_STACK_OVERFLOW %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_OSD_Exception_STACK_OVERFLOW {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_OSD_Signal;
class Handle_OSD_Signal : public Handle_Standard_Failure {
	public:
		%feature("autodoc", "1");
		Handle_OSD_Signal();
		%feature("autodoc", "1");
		Handle_OSD_Signal(const Handle_OSD_Signal &aHandle);
		%feature("autodoc", "1");
		Handle_OSD_Signal(const OSD_Signal *anItem);
		%feature("autodoc", "1");
		Handle_OSD_Signal & operator=(const Handle_OSD_Signal &aHandle);
		%feature("autodoc", "1");
		Handle_OSD_Signal & operator=(const OSD_Signal *anItem);
		%feature("autodoc", "1");
		static		Handle_OSD_Signal DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_OSD_Signal {
	OSD_Signal* GetObject() {
	return (OSD_Signal*)$self->Access();
	}
};
%feature("shadow") Handle_OSD_Signal::~Handle_OSD_Signal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_OSD_Signal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_OSD_SIGILL;
class Handle_OSD_SIGILL : public Handle_OSD_Signal {
	public:
		%feature("autodoc", "1");
		Handle_OSD_SIGILL();
		%feature("autodoc", "1");
		Handle_OSD_SIGILL(const Handle_OSD_SIGILL &aHandle);
		%feature("autodoc", "1");
		Handle_OSD_SIGILL(const OSD_SIGILL *anItem);
		%feature("autodoc", "1");
		Handle_OSD_SIGILL & operator=(const Handle_OSD_SIGILL &aHandle);
		%feature("autodoc", "1");
		Handle_OSD_SIGILL & operator=(const OSD_SIGILL *anItem);
		%feature("autodoc", "1");
		static		Handle_OSD_SIGILL DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_OSD_SIGILL {
	OSD_SIGILL* GetObject() {
	return (OSD_SIGILL*)$self->Access();
	}
};
%feature("shadow") Handle_OSD_SIGILL::~Handle_OSD_SIGILL %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_OSD_SIGILL {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_OSD_Exception_ILLEGAL_INSTRUCTION;
class Handle_OSD_Exception_ILLEGAL_INSTRUCTION : public Handle_OSD_Exception {
	public:
		%feature("autodoc", "1");
		Handle_OSD_Exception_ILLEGAL_INSTRUCTION();
		%feature("autodoc", "1");
		Handle_OSD_Exception_ILLEGAL_INSTRUCTION(const Handle_OSD_Exception_ILLEGAL_INSTRUCTION &aHandle);
		%feature("autodoc", "1");
		Handle_OSD_Exception_ILLEGAL_INSTRUCTION(const OSD_Exception_ILLEGAL_INSTRUCTION *anItem);
		%feature("autodoc", "1");
		Handle_OSD_Exception_ILLEGAL_INSTRUCTION & operator=(const Handle_OSD_Exception_ILLEGAL_INSTRUCTION &aHandle);
		%feature("autodoc", "1");
		Handle_OSD_Exception_ILLEGAL_INSTRUCTION & operator=(const OSD_Exception_ILLEGAL_INSTRUCTION *anItem);
		%feature("autodoc", "1");
		static		Handle_OSD_Exception_ILLEGAL_INSTRUCTION DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_OSD_Exception_ILLEGAL_INSTRUCTION {
	OSD_Exception_ILLEGAL_INSTRUCTION* GetObject() {
	return (OSD_Exception_ILLEGAL_INSTRUCTION*)$self->Access();
	}
};
%feature("shadow") Handle_OSD_Exception_ILLEGAL_INSTRUCTION::~Handle_OSD_Exception_ILLEGAL_INSTRUCTION %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_OSD_Exception_ILLEGAL_INSTRUCTION {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_OSD_OSDError;
class Handle_OSD_OSDError : public Handle_Standard_Failure {
	public:
		%feature("autodoc", "1");
		Handle_OSD_OSDError();
		%feature("autodoc", "1");
		Handle_OSD_OSDError(const Handle_OSD_OSDError &aHandle);
		%feature("autodoc", "1");
		Handle_OSD_OSDError(const OSD_OSDError *anItem);
		%feature("autodoc", "1");
		Handle_OSD_OSDError & operator=(const Handle_OSD_OSDError &aHandle);
		%feature("autodoc", "1");
		Handle_OSD_OSDError & operator=(const OSD_OSDError *anItem);
		%feature("autodoc", "1");
		static		Handle_OSD_OSDError DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_OSD_OSDError {
	OSD_OSDError* GetObject() {
	return (OSD_OSDError*)$self->Access();
	}
};
%feature("shadow") Handle_OSD_OSDError::~Handle_OSD_OSDError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_OSD_OSDError {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_OSD_SIGHUP;
class Handle_OSD_SIGHUP : public Handle_OSD_Signal {
	public:
		%feature("autodoc", "1");
		Handle_OSD_SIGHUP();
		%feature("autodoc", "1");
		Handle_OSD_SIGHUP(const Handle_OSD_SIGHUP &aHandle);
		%feature("autodoc", "1");
		Handle_OSD_SIGHUP(const OSD_SIGHUP *anItem);
		%feature("autodoc", "1");
		Handle_OSD_SIGHUP & operator=(const Handle_OSD_SIGHUP &aHandle);
		%feature("autodoc", "1");
		Handle_OSD_SIGHUP & operator=(const OSD_SIGHUP *anItem);
		%feature("autodoc", "1");
		static		Handle_OSD_SIGHUP DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_OSD_SIGHUP {
	OSD_SIGHUP* GetObject() {
	return (OSD_SIGHUP*)$self->Access();
	}
};
%feature("shadow") Handle_OSD_SIGHUP::~Handle_OSD_SIGHUP %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_OSD_SIGHUP {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_OSD_Exception_CTRL_BREAK;
class Handle_OSD_Exception_CTRL_BREAK : public Handle_OSD_Exception {
	public:
		%feature("autodoc", "1");
		Handle_OSD_Exception_CTRL_BREAK();
		%feature("autodoc", "1");
		Handle_OSD_Exception_CTRL_BREAK(const Handle_OSD_Exception_CTRL_BREAK &aHandle);
		%feature("autodoc", "1");
		Handle_OSD_Exception_CTRL_BREAK(const OSD_Exception_CTRL_BREAK *anItem);
		%feature("autodoc", "1");
		Handle_OSD_Exception_CTRL_BREAK & operator=(const Handle_OSD_Exception_CTRL_BREAK &aHandle);
		%feature("autodoc", "1");
		Handle_OSD_Exception_CTRL_BREAK & operator=(const OSD_Exception_CTRL_BREAK *anItem);
		%feature("autodoc", "1");
		static		Handle_OSD_Exception_CTRL_BREAK DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_OSD_Exception_CTRL_BREAK {
	OSD_Exception_CTRL_BREAK* GetObject() {
	return (OSD_Exception_CTRL_BREAK*)$self->Access();
	}
};
%feature("shadow") Handle_OSD_Exception_CTRL_BREAK::~Handle_OSD_Exception_CTRL_BREAK %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_OSD_Exception_CTRL_BREAK {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_OSD_FontMgr;
class Handle_OSD_FontMgr : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_OSD_FontMgr();
		%feature("autodoc", "1");
		Handle_OSD_FontMgr(const Handle_OSD_FontMgr &aHandle);
		%feature("autodoc", "1");
		Handle_OSD_FontMgr(const OSD_FontMgr *anItem);
		%feature("autodoc", "1");
		Handle_OSD_FontMgr & operator=(const Handle_OSD_FontMgr &aHandle);
		%feature("autodoc", "1");
		Handle_OSD_FontMgr & operator=(const OSD_FontMgr *anItem);
		%feature("autodoc", "1");
		static		Handle_OSD_FontMgr DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_OSD_FontMgr {
	OSD_FontMgr* GetObject() {
	return (OSD_FontMgr*)$self->Access();
	}
};
%feature("shadow") Handle_OSD_FontMgr::~Handle_OSD_FontMgr %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_OSD_FontMgr {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_OSD_SIGINT;
class Handle_OSD_SIGINT : public Handle_OSD_Signal {
	public:
		%feature("autodoc", "1");
		Handle_OSD_SIGINT();
		%feature("autodoc", "1");
		Handle_OSD_SIGINT(const Handle_OSD_SIGINT &aHandle);
		%feature("autodoc", "1");
		Handle_OSD_SIGINT(const OSD_SIGINT *anItem);
		%feature("autodoc", "1");
		Handle_OSD_SIGINT & operator=(const Handle_OSD_SIGINT &aHandle);
		%feature("autodoc", "1");
		Handle_OSD_SIGINT & operator=(const OSD_SIGINT *anItem);
		%feature("autodoc", "1");
		static		Handle_OSD_SIGINT DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_OSD_SIGINT {
	OSD_SIGINT* GetObject() {
	return (OSD_SIGINT*)$self->Access();
	}
};
%feature("shadow") Handle_OSD_SIGINT::~Handle_OSD_SIGINT %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_OSD_SIGINT {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_OSD_Exception_PRIV_INSTRUCTION;
class Handle_OSD_Exception_PRIV_INSTRUCTION : public Handle_OSD_Exception {
	public:
		%feature("autodoc", "1");
		Handle_OSD_Exception_PRIV_INSTRUCTION();
		%feature("autodoc", "1");
		Handle_OSD_Exception_PRIV_INSTRUCTION(const Handle_OSD_Exception_PRIV_INSTRUCTION &aHandle);
		%feature("autodoc", "1");
		Handle_OSD_Exception_PRIV_INSTRUCTION(const OSD_Exception_PRIV_INSTRUCTION *anItem);
		%feature("autodoc", "1");
		Handle_OSD_Exception_PRIV_INSTRUCTION & operator=(const Handle_OSD_Exception_PRIV_INSTRUCTION &aHandle);
		%feature("autodoc", "1");
		Handle_OSD_Exception_PRIV_INSTRUCTION & operator=(const OSD_Exception_PRIV_INSTRUCTION *anItem);
		%feature("autodoc", "1");
		static		Handle_OSD_Exception_PRIV_INSTRUCTION DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_OSD_Exception_PRIV_INSTRUCTION {
	OSD_Exception_PRIV_INSTRUCTION* GetObject() {
	return (OSD_Exception_PRIV_INSTRUCTION*)$self->Access();
	}
};
%feature("shadow") Handle_OSD_Exception_PRIV_INSTRUCTION::~Handle_OSD_Exception_PRIV_INSTRUCTION %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_OSD_Exception_PRIV_INSTRUCTION {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_OSD_SIGKILL;
class Handle_OSD_SIGKILL : public Handle_OSD_Signal {
	public:
		%feature("autodoc", "1");
		Handle_OSD_SIGKILL();
		%feature("autodoc", "1");
		Handle_OSD_SIGKILL(const Handle_OSD_SIGKILL &aHandle);
		%feature("autodoc", "1");
		Handle_OSD_SIGKILL(const OSD_SIGKILL *anItem);
		%feature("autodoc", "1");
		Handle_OSD_SIGKILL & operator=(const Handle_OSD_SIGKILL &aHandle);
		%feature("autodoc", "1");
		Handle_OSD_SIGKILL & operator=(const OSD_SIGKILL *anItem);
		%feature("autodoc", "1");
		static		Handle_OSD_SIGKILL DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_OSD_SIGKILL {
	OSD_SIGKILL* GetObject() {
	return (OSD_SIGKILL*)$self->Access();
	}
};
%feature("shadow") Handle_OSD_SIGKILL::~Handle_OSD_SIGKILL %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_OSD_SIGKILL {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_OSD_Exception_ACCESS_VIOLATION;
class Handle_OSD_Exception_ACCESS_VIOLATION : public Handle_OSD_Exception {
	public:
		%feature("autodoc", "1");
		Handle_OSD_Exception_ACCESS_VIOLATION();
		%feature("autodoc", "1");
		Handle_OSD_Exception_ACCESS_VIOLATION(const Handle_OSD_Exception_ACCESS_VIOLATION &aHandle);
		%feature("autodoc", "1");
		Handle_OSD_Exception_ACCESS_VIOLATION(const OSD_Exception_ACCESS_VIOLATION *anItem);
		%feature("autodoc", "1");
		Handle_OSD_Exception_ACCESS_VIOLATION & operator=(const Handle_OSD_Exception_ACCESS_VIOLATION &aHandle);
		%feature("autodoc", "1");
		Handle_OSD_Exception_ACCESS_VIOLATION & operator=(const OSD_Exception_ACCESS_VIOLATION *anItem);
		%feature("autodoc", "1");
		static		Handle_OSD_Exception_ACCESS_VIOLATION DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_OSD_Exception_ACCESS_VIOLATION {
	OSD_Exception_ACCESS_VIOLATION* GetObject() {
	return (OSD_Exception_ACCESS_VIOLATION*)$self->Access();
	}
};
%feature("shadow") Handle_OSD_Exception_ACCESS_VIOLATION::~Handle_OSD_Exception_ACCESS_VIOLATION %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_OSD_Exception_ACCESS_VIOLATION {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_OSD_Exception_INVALID_DISPOSITION;
class Handle_OSD_Exception_INVALID_DISPOSITION : public Handle_OSD_Exception {
	public:
		%feature("autodoc", "1");
		Handle_OSD_Exception_INVALID_DISPOSITION();
		%feature("autodoc", "1");
		Handle_OSD_Exception_INVALID_DISPOSITION(const Handle_OSD_Exception_INVALID_DISPOSITION &aHandle);
		%feature("autodoc", "1");
		Handle_OSD_Exception_INVALID_DISPOSITION(const OSD_Exception_INVALID_DISPOSITION *anItem);
		%feature("autodoc", "1");
		Handle_OSD_Exception_INVALID_DISPOSITION & operator=(const Handle_OSD_Exception_INVALID_DISPOSITION &aHandle);
		%feature("autodoc", "1");
		Handle_OSD_Exception_INVALID_DISPOSITION & operator=(const OSD_Exception_INVALID_DISPOSITION *anItem);
		%feature("autodoc", "1");
		static		Handle_OSD_Exception_INVALID_DISPOSITION DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_OSD_Exception_INVALID_DISPOSITION {
	OSD_Exception_INVALID_DISPOSITION* GetObject() {
	return (OSD_Exception_INVALID_DISPOSITION*)$self->Access();
	}
};
%feature("shadow") Handle_OSD_Exception_INVALID_DISPOSITION::~Handle_OSD_Exception_INVALID_DISPOSITION %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_OSD_Exception_INVALID_DISPOSITION {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_OSD_Exception_INT_DIVIDE_BY_ZERO;
class Handle_OSD_Exception_INT_DIVIDE_BY_ZERO : public Handle_OSD_Exception {
	public:
		%feature("autodoc", "1");
		Handle_OSD_Exception_INT_DIVIDE_BY_ZERO();
		%feature("autodoc", "1");
		Handle_OSD_Exception_INT_DIVIDE_BY_ZERO(const Handle_OSD_Exception_INT_DIVIDE_BY_ZERO &aHandle);
		%feature("autodoc", "1");
		Handle_OSD_Exception_INT_DIVIDE_BY_ZERO(const OSD_Exception_INT_DIVIDE_BY_ZERO *anItem);
		%feature("autodoc", "1");
		Handle_OSD_Exception_INT_DIVIDE_BY_ZERO & operator=(const Handle_OSD_Exception_INT_DIVIDE_BY_ZERO &aHandle);
		%feature("autodoc", "1");
		Handle_OSD_Exception_INT_DIVIDE_BY_ZERO & operator=(const OSD_Exception_INT_DIVIDE_BY_ZERO *anItem);
		%feature("autodoc", "1");
		static		Handle_OSD_Exception_INT_DIVIDE_BY_ZERO DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_OSD_Exception_INT_DIVIDE_BY_ZERO {
	OSD_Exception_INT_DIVIDE_BY_ZERO* GetObject() {
	return (OSD_Exception_INT_DIVIDE_BY_ZERO*)$self->Access();
	}
};
%feature("shadow") Handle_OSD_Exception_INT_DIVIDE_BY_ZERO::~Handle_OSD_Exception_INT_DIVIDE_BY_ZERO %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_OSD_Exception_INT_DIVIDE_BY_ZERO {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_OSD_Exception_INT_OVERFLOW;
class Handle_OSD_Exception_INT_OVERFLOW : public Handle_OSD_Exception {
	public:
		%feature("autodoc", "1");
		Handle_OSD_Exception_INT_OVERFLOW();
		%feature("autodoc", "1");
		Handle_OSD_Exception_INT_OVERFLOW(const Handle_OSD_Exception_INT_OVERFLOW &aHandle);
		%feature("autodoc", "1");
		Handle_OSD_Exception_INT_OVERFLOW(const OSD_Exception_INT_OVERFLOW *anItem);
		%feature("autodoc", "1");
		Handle_OSD_Exception_INT_OVERFLOW & operator=(const Handle_OSD_Exception_INT_OVERFLOW &aHandle);
		%feature("autodoc", "1");
		Handle_OSD_Exception_INT_OVERFLOW & operator=(const OSD_Exception_INT_OVERFLOW *anItem);
		%feature("autodoc", "1");
		static		Handle_OSD_Exception_INT_OVERFLOW DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_OSD_Exception_INT_OVERFLOW {
	OSD_Exception_INT_OVERFLOW* GetObject() {
	return (OSD_Exception_INT_OVERFLOW*)$self->Access();
	}
};
%feature("shadow") Handle_OSD_Exception_INT_OVERFLOW::~Handle_OSD_Exception_INT_OVERFLOW %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_OSD_Exception_INT_OVERFLOW {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_OSD_Exception_STATUS_NO_MEMORY;
class Handle_OSD_Exception_STATUS_NO_MEMORY : public Handle_OSD_Exception {
	public:
		%feature("autodoc", "1");
		Handle_OSD_Exception_STATUS_NO_MEMORY();
		%feature("autodoc", "1");
		Handle_OSD_Exception_STATUS_NO_MEMORY(const Handle_OSD_Exception_STATUS_NO_MEMORY &aHandle);
		%feature("autodoc", "1");
		Handle_OSD_Exception_STATUS_NO_MEMORY(const OSD_Exception_STATUS_NO_MEMORY *anItem);
		%feature("autodoc", "1");
		Handle_OSD_Exception_STATUS_NO_MEMORY & operator=(const Handle_OSD_Exception_STATUS_NO_MEMORY &aHandle);
		%feature("autodoc", "1");
		Handle_OSD_Exception_STATUS_NO_MEMORY & operator=(const OSD_Exception_STATUS_NO_MEMORY *anItem);
		%feature("autodoc", "1");
		static		Handle_OSD_Exception_STATUS_NO_MEMORY DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_OSD_Exception_STATUS_NO_MEMORY {
	OSD_Exception_STATUS_NO_MEMORY* GetObject() {
	return (OSD_Exception_STATUS_NO_MEMORY*)$self->Access();
	}
};
%feature("shadow") Handle_OSD_Exception_STATUS_NO_MEMORY::~Handle_OSD_Exception_STATUS_NO_MEMORY %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_OSD_Exception_STATUS_NO_MEMORY {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_OSD_Exception_FLT_INVALID_OPERATION;
class Handle_OSD_Exception_FLT_INVALID_OPERATION : public Handle_OSD_Exception {
	public:
		%feature("autodoc", "1");
		Handle_OSD_Exception_FLT_INVALID_OPERATION();
		%feature("autodoc", "1");
		Handle_OSD_Exception_FLT_INVALID_OPERATION(const Handle_OSD_Exception_FLT_INVALID_OPERATION &aHandle);
		%feature("autodoc", "1");
		Handle_OSD_Exception_FLT_INVALID_OPERATION(const OSD_Exception_FLT_INVALID_OPERATION *anItem);
		%feature("autodoc", "1");
		Handle_OSD_Exception_FLT_INVALID_OPERATION & operator=(const Handle_OSD_Exception_FLT_INVALID_OPERATION &aHandle);
		%feature("autodoc", "1");
		Handle_OSD_Exception_FLT_INVALID_OPERATION & operator=(const OSD_Exception_FLT_INVALID_OPERATION *anItem);
		%feature("autodoc", "1");
		static		Handle_OSD_Exception_FLT_INVALID_OPERATION DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_OSD_Exception_FLT_INVALID_OPERATION {
	OSD_Exception_FLT_INVALID_OPERATION* GetObject() {
	return (OSD_Exception_FLT_INVALID_OPERATION*)$self->Access();
	}
};
%feature("shadow") Handle_OSD_Exception_FLT_INVALID_OPERATION::~Handle_OSD_Exception_FLT_INVALID_OPERATION %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_OSD_Exception_FLT_INVALID_OPERATION {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_OSD_Exception_NONCONTINUABLE_EXCEPTION;
class Handle_OSD_Exception_NONCONTINUABLE_EXCEPTION : public Handle_OSD_Exception {
	public:
		%feature("autodoc", "1");
		Handle_OSD_Exception_NONCONTINUABLE_EXCEPTION();
		%feature("autodoc", "1");
		Handle_OSD_Exception_NONCONTINUABLE_EXCEPTION(const Handle_OSD_Exception_NONCONTINUABLE_EXCEPTION &aHandle);
		%feature("autodoc", "1");
		Handle_OSD_Exception_NONCONTINUABLE_EXCEPTION(const OSD_Exception_NONCONTINUABLE_EXCEPTION *anItem);
		%feature("autodoc", "1");
		Handle_OSD_Exception_NONCONTINUABLE_EXCEPTION & operator=(const Handle_OSD_Exception_NONCONTINUABLE_EXCEPTION &aHandle);
		%feature("autodoc", "1");
		Handle_OSD_Exception_NONCONTINUABLE_EXCEPTION & operator=(const OSD_Exception_NONCONTINUABLE_EXCEPTION *anItem);
		%feature("autodoc", "1");
		static		Handle_OSD_Exception_NONCONTINUABLE_EXCEPTION DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_OSD_Exception_NONCONTINUABLE_EXCEPTION {
	OSD_Exception_NONCONTINUABLE_EXCEPTION* GetObject() {
	return (OSD_Exception_NONCONTINUABLE_EXCEPTION*)$self->Access();
	}
};
%feature("shadow") Handle_OSD_Exception_NONCONTINUABLE_EXCEPTION::~Handle_OSD_Exception_NONCONTINUABLE_EXCEPTION %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_OSD_Exception_NONCONTINUABLE_EXCEPTION {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_OSD_Exception_FLT_OVERFLOW;
class Handle_OSD_Exception_FLT_OVERFLOW : public Handle_OSD_Exception {
	public:
		%feature("autodoc", "1");
		Handle_OSD_Exception_FLT_OVERFLOW();
		%feature("autodoc", "1");
		Handle_OSD_Exception_FLT_OVERFLOW(const Handle_OSD_Exception_FLT_OVERFLOW &aHandle);
		%feature("autodoc", "1");
		Handle_OSD_Exception_FLT_OVERFLOW(const OSD_Exception_FLT_OVERFLOW *anItem);
		%feature("autodoc", "1");
		Handle_OSD_Exception_FLT_OVERFLOW & operator=(const Handle_OSD_Exception_FLT_OVERFLOW &aHandle);
		%feature("autodoc", "1");
		Handle_OSD_Exception_FLT_OVERFLOW & operator=(const OSD_Exception_FLT_OVERFLOW *anItem);
		%feature("autodoc", "1");
		static		Handle_OSD_Exception_FLT_OVERFLOW DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_OSD_Exception_FLT_OVERFLOW {
	OSD_Exception_FLT_OVERFLOW* GetObject() {
	return (OSD_Exception_FLT_OVERFLOW*)$self->Access();
	}
};
%feature("shadow") Handle_OSD_Exception_FLT_OVERFLOW::~Handle_OSD_Exception_FLT_OVERFLOW %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_OSD_Exception_FLT_OVERFLOW {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_OSD_Exception_ARRAY_BOUNDS_EXCEEDED;
class Handle_OSD_Exception_ARRAY_BOUNDS_EXCEEDED : public Handle_OSD_Exception {
	public:
		%feature("autodoc", "1");
		Handle_OSD_Exception_ARRAY_BOUNDS_EXCEEDED();
		%feature("autodoc", "1");
		Handle_OSD_Exception_ARRAY_BOUNDS_EXCEEDED(const Handle_OSD_Exception_ARRAY_BOUNDS_EXCEEDED &aHandle);
		%feature("autodoc", "1");
		Handle_OSD_Exception_ARRAY_BOUNDS_EXCEEDED(const OSD_Exception_ARRAY_BOUNDS_EXCEEDED *anItem);
		%feature("autodoc", "1");
		Handle_OSD_Exception_ARRAY_BOUNDS_EXCEEDED & operator=(const Handle_OSD_Exception_ARRAY_BOUNDS_EXCEEDED &aHandle);
		%feature("autodoc", "1");
		Handle_OSD_Exception_ARRAY_BOUNDS_EXCEEDED & operator=(const OSD_Exception_ARRAY_BOUNDS_EXCEEDED *anItem);
		%feature("autodoc", "1");
		static		Handle_OSD_Exception_ARRAY_BOUNDS_EXCEEDED DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_OSD_Exception_ARRAY_BOUNDS_EXCEEDED {
	OSD_Exception_ARRAY_BOUNDS_EXCEEDED* GetObject() {
	return (OSD_Exception_ARRAY_BOUNDS_EXCEEDED*)$self->Access();
	}
};
%feature("shadow") Handle_OSD_Exception_ARRAY_BOUNDS_EXCEEDED::~Handle_OSD_Exception_ARRAY_BOUNDS_EXCEEDED %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_OSD_Exception_ARRAY_BOUNDS_EXCEEDED {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_OSD_SIGBUS;
class Handle_OSD_SIGBUS : public Handle_OSD_Signal {
	public:
		%feature("autodoc", "1");
		Handle_OSD_SIGBUS();
		%feature("autodoc", "1");
		Handle_OSD_SIGBUS(const Handle_OSD_SIGBUS &aHandle);
		%feature("autodoc", "1");
		Handle_OSD_SIGBUS(const OSD_SIGBUS *anItem);
		%feature("autodoc", "1");
		Handle_OSD_SIGBUS & operator=(const Handle_OSD_SIGBUS &aHandle);
		%feature("autodoc", "1");
		Handle_OSD_SIGBUS & operator=(const OSD_SIGBUS *anItem);
		%feature("autodoc", "1");
		static		Handle_OSD_SIGBUS DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_OSD_SIGBUS {
	OSD_SIGBUS* GetObject() {
	return (OSD_SIGBUS*)$self->Access();
	}
};
%feature("shadow") Handle_OSD_SIGBUS::~Handle_OSD_SIGBUS %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_OSD_SIGBUS {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_OSD_Exception_FLT_INEXACT_RESULT;
class Handle_OSD_Exception_FLT_INEXACT_RESULT : public Handle_OSD_Exception {
	public:
		%feature("autodoc", "1");
		Handle_OSD_Exception_FLT_INEXACT_RESULT();
		%feature("autodoc", "1");
		Handle_OSD_Exception_FLT_INEXACT_RESULT(const Handle_OSD_Exception_FLT_INEXACT_RESULT &aHandle);
		%feature("autodoc", "1");
		Handle_OSD_Exception_FLT_INEXACT_RESULT(const OSD_Exception_FLT_INEXACT_RESULT *anItem);
		%feature("autodoc", "1");
		Handle_OSD_Exception_FLT_INEXACT_RESULT & operator=(const Handle_OSD_Exception_FLT_INEXACT_RESULT &aHandle);
		%feature("autodoc", "1");
		Handle_OSD_Exception_FLT_INEXACT_RESULT & operator=(const OSD_Exception_FLT_INEXACT_RESULT *anItem);
		%feature("autodoc", "1");
		static		Handle_OSD_Exception_FLT_INEXACT_RESULT DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_OSD_Exception_FLT_INEXACT_RESULT {
	OSD_Exception_FLT_INEXACT_RESULT* GetObject() {
	return (OSD_Exception_FLT_INEXACT_RESULT*)$self->Access();
	}
};
%feature("shadow") Handle_OSD_Exception_FLT_INEXACT_RESULT::~Handle_OSD_Exception_FLT_INEXACT_RESULT %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_OSD_Exception_FLT_INEXACT_RESULT {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_OSD_Exception_FLT_DENORMAL_OPERAND;
class Handle_OSD_Exception_FLT_DENORMAL_OPERAND : public Handle_OSD_Exception {
	public:
		%feature("autodoc", "1");
		Handle_OSD_Exception_FLT_DENORMAL_OPERAND();
		%feature("autodoc", "1");
		Handle_OSD_Exception_FLT_DENORMAL_OPERAND(const Handle_OSD_Exception_FLT_DENORMAL_OPERAND &aHandle);
		%feature("autodoc", "1");
		Handle_OSD_Exception_FLT_DENORMAL_OPERAND(const OSD_Exception_FLT_DENORMAL_OPERAND *anItem);
		%feature("autodoc", "1");
		Handle_OSD_Exception_FLT_DENORMAL_OPERAND & operator=(const Handle_OSD_Exception_FLT_DENORMAL_OPERAND &aHandle);
		%feature("autodoc", "1");
		Handle_OSD_Exception_FLT_DENORMAL_OPERAND & operator=(const OSD_Exception_FLT_DENORMAL_OPERAND *anItem);
		%feature("autodoc", "1");
		static		Handle_OSD_Exception_FLT_DENORMAL_OPERAND DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_OSD_Exception_FLT_DENORMAL_OPERAND {
	OSD_Exception_FLT_DENORMAL_OPERAND* GetObject() {
	return (OSD_Exception_FLT_DENORMAL_OPERAND*)$self->Access();
	}
};
%feature("shadow") Handle_OSD_Exception_FLT_DENORMAL_OPERAND::~Handle_OSD_Exception_FLT_DENORMAL_OPERAND %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_OSD_Exception_FLT_DENORMAL_OPERAND {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_OSD_SIGQUIT;
class Handle_OSD_SIGQUIT : public Handle_OSD_Signal {
	public:
		%feature("autodoc", "1");
		Handle_OSD_SIGQUIT();
		%feature("autodoc", "1");
		Handle_OSD_SIGQUIT(const Handle_OSD_SIGQUIT &aHandle);
		%feature("autodoc", "1");
		Handle_OSD_SIGQUIT(const OSD_SIGQUIT *anItem);
		%feature("autodoc", "1");
		Handle_OSD_SIGQUIT & operator=(const Handle_OSD_SIGQUIT &aHandle);
		%feature("autodoc", "1");
		Handle_OSD_SIGQUIT & operator=(const OSD_SIGQUIT *anItem);
		%feature("autodoc", "1");
		static		Handle_OSD_SIGQUIT DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_OSD_SIGQUIT {
	OSD_SIGQUIT* GetObject() {
	return (OSD_SIGQUIT*)$self->Access();
	}
};
%feature("shadow") Handle_OSD_SIGQUIT::~Handle_OSD_SIGQUIT %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_OSD_SIGQUIT {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_OSD_SystemFont;
class Handle_OSD_SystemFont : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_OSD_SystemFont();
		%feature("autodoc", "1");
		Handle_OSD_SystemFont(const Handle_OSD_SystemFont &aHandle);
		%feature("autodoc", "1");
		Handle_OSD_SystemFont(const OSD_SystemFont *anItem);
		%feature("autodoc", "1");
		Handle_OSD_SystemFont & operator=(const Handle_OSD_SystemFont &aHandle);
		%feature("autodoc", "1");
		Handle_OSD_SystemFont & operator=(const OSD_SystemFont *anItem);
		%feature("autodoc", "1");
		static		Handle_OSD_SystemFont DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_OSD_SystemFont {
	OSD_SystemFont* GetObject() {
	return (OSD_SystemFont*)$self->Access();
	}
};
%feature("shadow") Handle_OSD_SystemFont::~Handle_OSD_SystemFont %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_OSD_SystemFont {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_OSD_SIGSEGV;
class Handle_OSD_SIGSEGV : public Handle_OSD_Signal {
	public:
		%feature("autodoc", "1");
		Handle_OSD_SIGSEGV();
		%feature("autodoc", "1");
		Handle_OSD_SIGSEGV(const Handle_OSD_SIGSEGV &aHandle);
		%feature("autodoc", "1");
		Handle_OSD_SIGSEGV(const OSD_SIGSEGV *anItem);
		%feature("autodoc", "1");
		Handle_OSD_SIGSEGV & operator=(const Handle_OSD_SIGSEGV &aHandle);
		%feature("autodoc", "1");
		Handle_OSD_SIGSEGV & operator=(const OSD_SIGSEGV *anItem);
		%feature("autodoc", "1");
		static		Handle_OSD_SIGSEGV DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_OSD_SIGSEGV {
	OSD_SIGSEGV* GetObject() {
	return (OSD_SIGSEGV*)$self->Access();
	}
};
%feature("shadow") Handle_OSD_SIGSEGV::~Handle_OSD_SIGSEGV %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_OSD_SIGSEGV {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_OSD_Exception_FLT_DIVIDE_BY_ZERO;
class Handle_OSD_Exception_FLT_DIVIDE_BY_ZERO : public Handle_OSD_Exception {
	public:
		%feature("autodoc", "1");
		Handle_OSD_Exception_FLT_DIVIDE_BY_ZERO();
		%feature("autodoc", "1");
		Handle_OSD_Exception_FLT_DIVIDE_BY_ZERO(const Handle_OSD_Exception_FLT_DIVIDE_BY_ZERO &aHandle);
		%feature("autodoc", "1");
		Handle_OSD_Exception_FLT_DIVIDE_BY_ZERO(const OSD_Exception_FLT_DIVIDE_BY_ZERO *anItem);
		%feature("autodoc", "1");
		Handle_OSD_Exception_FLT_DIVIDE_BY_ZERO & operator=(const Handle_OSD_Exception_FLT_DIVIDE_BY_ZERO &aHandle);
		%feature("autodoc", "1");
		Handle_OSD_Exception_FLT_DIVIDE_BY_ZERO & operator=(const OSD_Exception_FLT_DIVIDE_BY_ZERO *anItem);
		%feature("autodoc", "1");
		static		Handle_OSD_Exception_FLT_DIVIDE_BY_ZERO DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_OSD_Exception_FLT_DIVIDE_BY_ZERO {
	OSD_Exception_FLT_DIVIDE_BY_ZERO* GetObject() {
	return (OSD_Exception_FLT_DIVIDE_BY_ZERO*)$self->Access();
	}
};
%feature("shadow") Handle_OSD_Exception_FLT_DIVIDE_BY_ZERO::~Handle_OSD_Exception_FLT_DIVIDE_BY_ZERO %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_OSD_Exception_FLT_DIVIDE_BY_ZERO {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_OSD_Exception_FLT_STACK_CHECK;
class Handle_OSD_Exception_FLT_STACK_CHECK : public Handle_OSD_Exception {
	public:
		%feature("autodoc", "1");
		Handle_OSD_Exception_FLT_STACK_CHECK();
		%feature("autodoc", "1");
		Handle_OSD_Exception_FLT_STACK_CHECK(const Handle_OSD_Exception_FLT_STACK_CHECK &aHandle);
		%feature("autodoc", "1");
		Handle_OSD_Exception_FLT_STACK_CHECK(const OSD_Exception_FLT_STACK_CHECK *anItem);
		%feature("autodoc", "1");
		Handle_OSD_Exception_FLT_STACK_CHECK & operator=(const Handle_OSD_Exception_FLT_STACK_CHECK &aHandle);
		%feature("autodoc", "1");
		Handle_OSD_Exception_FLT_STACK_CHECK & operator=(const OSD_Exception_FLT_STACK_CHECK *anItem);
		%feature("autodoc", "1");
		static		Handle_OSD_Exception_FLT_STACK_CHECK DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_OSD_Exception_FLT_STACK_CHECK {
	OSD_Exception_FLT_STACK_CHECK* GetObject() {
	return (OSD_Exception_FLT_STACK_CHECK*)$self->Access();
	}
};
%feature("shadow") Handle_OSD_Exception_FLT_STACK_CHECK::~Handle_OSD_Exception_FLT_STACK_CHECK %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_OSD_Exception_FLT_STACK_CHECK {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_OSD_SIGSYS;
class Handle_OSD_SIGSYS : public Handle_OSD_Signal {
	public:
		%feature("autodoc", "1");
		Handle_OSD_SIGSYS();
		%feature("autodoc", "1");
		Handle_OSD_SIGSYS(const Handle_OSD_SIGSYS &aHandle);
		%feature("autodoc", "1");
		Handle_OSD_SIGSYS(const OSD_SIGSYS *anItem);
		%feature("autodoc", "1");
		Handle_OSD_SIGSYS & operator=(const Handle_OSD_SIGSYS &aHandle);
		%feature("autodoc", "1");
		Handle_OSD_SIGSYS & operator=(const OSD_SIGSYS *anItem);
		%feature("autodoc", "1");
		static		Handle_OSD_SIGSYS DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_OSD_SIGSYS {
	OSD_SIGSYS* GetObject() {
	return (OSD_SIGSYS*)$self->Access();
	}
};
%feature("shadow") Handle_OSD_SIGSYS::~Handle_OSD_SIGSYS %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_OSD_SIGSYS {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_OSD_Exception_FLT_UNDERFLOW;
class Handle_OSD_Exception_FLT_UNDERFLOW : public Handle_OSD_Exception {
	public:
		%feature("autodoc", "1");
		Handle_OSD_Exception_FLT_UNDERFLOW();
		%feature("autodoc", "1");
		Handle_OSD_Exception_FLT_UNDERFLOW(const Handle_OSD_Exception_FLT_UNDERFLOW &aHandle);
		%feature("autodoc", "1");
		Handle_OSD_Exception_FLT_UNDERFLOW(const OSD_Exception_FLT_UNDERFLOW *anItem);
		%feature("autodoc", "1");
		Handle_OSD_Exception_FLT_UNDERFLOW & operator=(const Handle_OSD_Exception_FLT_UNDERFLOW &aHandle);
		%feature("autodoc", "1");
		Handle_OSD_Exception_FLT_UNDERFLOW & operator=(const OSD_Exception_FLT_UNDERFLOW *anItem);
		%feature("autodoc", "1");
		static		Handle_OSD_Exception_FLT_UNDERFLOW DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_OSD_Exception_FLT_UNDERFLOW {
	OSD_Exception_FLT_UNDERFLOW* GetObject() {
	return (OSD_Exception_FLT_UNDERFLOW*)$self->Access();
	}
};
%feature("shadow") Handle_OSD_Exception_FLT_UNDERFLOW::~Handle_OSD_Exception_FLT_UNDERFLOW %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_OSD_Exception_FLT_UNDERFLOW {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_OSD_Exception_IN_PAGE_ERROR;
class Handle_OSD_Exception_IN_PAGE_ERROR : public Handle_OSD_Exception {
	public:
		%feature("autodoc", "1");
		Handle_OSD_Exception_IN_PAGE_ERROR();
		%feature("autodoc", "1");
		Handle_OSD_Exception_IN_PAGE_ERROR(const Handle_OSD_Exception_IN_PAGE_ERROR &aHandle);
		%feature("autodoc", "1");
		Handle_OSD_Exception_IN_PAGE_ERROR(const OSD_Exception_IN_PAGE_ERROR *anItem);
		%feature("autodoc", "1");
		Handle_OSD_Exception_IN_PAGE_ERROR & operator=(const Handle_OSD_Exception_IN_PAGE_ERROR &aHandle);
		%feature("autodoc", "1");
		Handle_OSD_Exception_IN_PAGE_ERROR & operator=(const OSD_Exception_IN_PAGE_ERROR *anItem);
		%feature("autodoc", "1");
		static		Handle_OSD_Exception_IN_PAGE_ERROR DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_OSD_Exception_IN_PAGE_ERROR {
	OSD_Exception_IN_PAGE_ERROR* GetObject() {
	return (OSD_Exception_IN_PAGE_ERROR*)$self->Access();
	}
};
%feature("shadow") Handle_OSD_Exception_IN_PAGE_ERROR::~Handle_OSD_Exception_IN_PAGE_ERROR %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_OSD_Exception_IN_PAGE_ERROR {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor OSD_FileIterator;
class OSD_FileIterator {
	public:
		%feature("autodoc", "1");
		OSD_FileIterator();
		%feature("autodoc", "1");
		OSD_FileIterator(const OSD_Path &where, const TCollection_AsciiString &Mask);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		void Initialize(const OSD_Path &where, const TCollection_AsciiString &Mask);
		%feature("autodoc", "1");
		Standard_Boolean More();
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		OSD_File Values();
		%feature("autodoc", "1");
		Standard_Boolean Failed() const;
		%feature("autodoc", "1");
		void Reset();
		%feature("autodoc", "1");
		void Perror();
		%feature("autodoc", "1");
		Standard_Integer Error() const;

};
%feature("shadow") OSD_FileIterator::~OSD_FileIterator %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend OSD_FileIterator {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor OSD_DirectoryIterator;
class OSD_DirectoryIterator {
	public:
		%feature("autodoc", "1");
		OSD_DirectoryIterator();
		%feature("autodoc", "1");
		OSD_DirectoryIterator(const OSD_Path &where, const TCollection_AsciiString &Mask);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		void Initialize(const OSD_Path &where, const TCollection_AsciiString &Mask);
		%feature("autodoc", "1");
		Standard_Boolean More();
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		OSD_Directory Values();
		%feature("autodoc", "1");
		Standard_Boolean Failed() const;
		%feature("autodoc", "1");
		void Reset();
		%feature("autodoc", "1");
		void Perror();
		%feature("autodoc", "1");
		Standard_Integer Error() const;

};
%feature("shadow") OSD_DirectoryIterator::~OSD_DirectoryIterator %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend OSD_DirectoryIterator {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor OSD_Exception;
class OSD_Exception : public Standard_Failure {
	public:
		%feature("autodoc", "1");
		OSD_Exception();
		%feature("autodoc", "1");
		OSD_Exception(const char * AString);
		%feature("autodoc", "1");
		static		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		static		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		static		Handle_OSD_Exception NewInstance(const char * aMessage="");
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend OSD_Exception {
	Handle_OSD_Exception GetHandle() {
	return *(Handle_OSD_Exception*) &$self;
	}
};
%extend OSD_Exception {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") OSD_Exception::~OSD_Exception %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend OSD_Exception {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor OSD_Exception_CTRL_BREAK;
class OSD_Exception_CTRL_BREAK : public OSD_Exception {
	public:
		%feature("autodoc", "1");
		OSD_Exception_CTRL_BREAK();
		%feature("autodoc", "1");
		OSD_Exception_CTRL_BREAK(const char * AString);
		%feature("autodoc", "1");
		static		Handle_OSD_Exception_CTRL_BREAK NewInstance(const char * aMessage="");

};
%extend OSD_Exception_CTRL_BREAK {
	Handle_OSD_Exception_CTRL_BREAK GetHandle() {
	return *(Handle_OSD_Exception_CTRL_BREAK*) &$self;
	}
};
%extend OSD_Exception_CTRL_BREAK {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") OSD_Exception_CTRL_BREAK::~OSD_Exception_CTRL_BREAK %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend OSD_Exception_CTRL_BREAK {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor OSD_Real2String;
class OSD_Real2String {
	public:
		%feature("autodoc", "1");
		OSD_Real2String();
		%feature("autodoc", "1");
		Standard_Boolean RealToCString(const Standard_Real aReal, Standard_PCharacter & aString) const;
		%feature("autodoc","CStringToReal(Standard_CString aString) -> Standard_Real");

		Standard_Boolean CStringToReal(const char * aString, Standard_Real &OutValue);

};
%feature("shadow") OSD_Real2String::~OSD_Real2String %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend OSD_Real2String {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor OSD_Exception_INVALID_DISPOSITION;
class OSD_Exception_INVALID_DISPOSITION : public OSD_Exception {
	public:
		%feature("autodoc", "1");
		OSD_Exception_INVALID_DISPOSITION();
		%feature("autodoc", "1");
		OSD_Exception_INVALID_DISPOSITION(const char * AString);
		%feature("autodoc", "1");
		static		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		static		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		static		Handle_OSD_Exception_INVALID_DISPOSITION NewInstance(const char * aMessage="");
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend OSD_Exception_INVALID_DISPOSITION {
	Handle_OSD_Exception_INVALID_DISPOSITION GetHandle() {
	return *(Handle_OSD_Exception_INVALID_DISPOSITION*) &$self;
	}
};
%extend OSD_Exception_INVALID_DISPOSITION {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") OSD_Exception_INVALID_DISPOSITION::~OSD_Exception_INVALID_DISPOSITION %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend OSD_Exception_INVALID_DISPOSITION {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor OSD_Signal;
class OSD_Signal : public Standard_Failure {
	public:
		%feature("autodoc", "1");
		OSD_Signal();
		%feature("autodoc", "1");
		OSD_Signal(const char * AString);
		%feature("autodoc", "1");
		static		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		static		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		static		Handle_OSD_Signal NewInstance(const char * aMessage="");
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend OSD_Signal {
	Handle_OSD_Signal GetHandle() {
	return *(Handle_OSD_Signal*) &$self;
	}
};
%extend OSD_Signal {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") OSD_Signal::~OSD_Signal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend OSD_Signal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor OSD_SIGKILL;
class OSD_SIGKILL : public OSD_Signal {
	public:
		%feature("autodoc", "1");
		OSD_SIGKILL();
		%feature("autodoc", "1");
		OSD_SIGKILL(const char * AString);
		%feature("autodoc", "1");
		static		Handle_OSD_SIGKILL NewInstance(const char * aMessage="");

};
%extend OSD_SIGKILL {
	Handle_OSD_SIGKILL GetHandle() {
	return *(Handle_OSD_SIGKILL*) &$self;
	}
};
%extend OSD_SIGKILL {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") OSD_SIGKILL::~OSD_SIGKILL %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend OSD_SIGKILL {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor OSD_Host;
class OSD_Host {
	public:
		%feature("autodoc", "1");
		OSD_Host();
		%feature("autodoc", "1");
		TCollection_AsciiString SystemVersion();
		%feature("autodoc", "1");
		OSD_SysType SystemId() const;
		%feature("autodoc", "1");
		TCollection_AsciiString HostName();
		%feature("autodoc", "1");
		Standard_Integer AvailableMemory();
		%feature("autodoc", "1");
		TCollection_AsciiString InternetAddress();
		%feature("autodoc", "1");
		OSD_OEMType MachineType();
		%feature("autodoc", "1");
		Standard_Boolean Failed() const;
		%feature("autodoc", "1");
		void Reset();
		%feature("autodoc", "1");
		void Perror();
		%feature("autodoc", "1");
		Standard_Integer Error() const;

};
%feature("shadow") OSD_Host::~OSD_Host %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend OSD_Host {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor OSD_Exception_FLT_INEXACT_RESULT;
class OSD_Exception_FLT_INEXACT_RESULT : public OSD_Exception {
	public:
		%feature("autodoc", "1");
		OSD_Exception_FLT_INEXACT_RESULT();
		%feature("autodoc", "1");
		OSD_Exception_FLT_INEXACT_RESULT(const char * AString);
		%feature("autodoc", "1");
		static		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		static		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		static		Handle_OSD_Exception_FLT_INEXACT_RESULT NewInstance(const char * aMessage="");
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend OSD_Exception_FLT_INEXACT_RESULT {
	Handle_OSD_Exception_FLT_INEXACT_RESULT GetHandle() {
	return *(Handle_OSD_Exception_FLT_INEXACT_RESULT*) &$self;
	}
};
%extend OSD_Exception_FLT_INEXACT_RESULT {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") OSD_Exception_FLT_INEXACT_RESULT::~OSD_Exception_FLT_INEXACT_RESULT %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend OSD_Exception_FLT_INEXACT_RESULT {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor OSD_Exception_FLT_STACK_CHECK;
class OSD_Exception_FLT_STACK_CHECK : public OSD_Exception {
	public:
		%feature("autodoc", "1");
		OSD_Exception_FLT_STACK_CHECK();
		%feature("autodoc", "1");
		OSD_Exception_FLT_STACK_CHECK(const char * AString);
		%feature("autodoc", "1");
		static		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		static		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		static		Handle_OSD_Exception_FLT_STACK_CHECK NewInstance(const char * aMessage="");
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend OSD_Exception_FLT_STACK_CHECK {
	Handle_OSD_Exception_FLT_STACK_CHECK GetHandle() {
	return *(Handle_OSD_Exception_FLT_STACK_CHECK*) &$self;
	}
};
%extend OSD_Exception_FLT_STACK_CHECK {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") OSD_Exception_FLT_STACK_CHECK::~OSD_Exception_FLT_STACK_CHECK %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend OSD_Exception_FLT_STACK_CHECK {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor OSD_PerfMeter;
class OSD_PerfMeter {
	public:
		%feature("autodoc", "1");
		OSD_PerfMeter();
		%feature("autodoc", "1");
		OSD_PerfMeter(const char *meter, int unsigned constautoStart=1);
		%feature("autodoc", "1");
		void Init(const char *meter);
		%feature("autodoc", "1");
		void Start() const;
		%feature("autodoc", "1");
		void Stop() const;
		%feature("autodoc", "1");
		void Tick() const;
		%feature("autodoc", "1");
		void Flush() const;

};
%feature("shadow") OSD_PerfMeter::~OSD_PerfMeter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend OSD_PerfMeter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor OSD_Printer;
class OSD_Printer {
	public:
		%feature("autodoc", "1");
		OSD_Printer(const TCollection_AsciiString &Name);
		%feature("autodoc", "1");
		void SetName(const TCollection_AsciiString &Name);
		%feature("autodoc", "1");
		void Name(TCollection_AsciiString & Name) const;
		%feature("autodoc", "1");
		Standard_Boolean Failed() const;
		%feature("autodoc", "1");
		void Reset();
		%feature("autodoc", "1");
		void Perror();
		%feature("autodoc", "1");
		Standard_Integer Error() const;

};
%feature("shadow") OSD_Printer::~OSD_Printer %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend OSD_Printer {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor OSD_MemInfo;
class OSD_MemInfo : public Standard_Transient {
	public:
		enum Counter {
			MemPrivate,
			MemVirtual,
			MemWorkingSet,
			MemWorkingSetPeak,
			MemSwapUsage,
			MemSwapUsagePeak,
			MemCounter_NB,
		};
		%feature("autodoc", "1");
		OSD_MemInfo();
		%feature("autodoc", "1");
		void Update();
		%feature("autodoc", "1");
		TCollection_AsciiString ToString() const;
		%feature("autodoc", "1");
		Standard_Size Value(const OSD_MemInfo::Counter theCounter) const;
		%feature("autodoc", "1");
		Standard_Size ValueMiB(const OSD_MemInfo::Counter theCounter) const;
		%feature("autodoc", "1");
		static		TCollection_AsciiString PrintInfo();

};
%feature("shadow") OSD_MemInfo::~OSD_MemInfo %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend OSD_MemInfo {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor OSD_EnvironmentIterator;
class OSD_EnvironmentIterator {
	public:
		%feature("autodoc", "1");
		OSD_EnvironmentIterator();
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean More();
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		OSD_Environment Values();
		%feature("autodoc", "1");
		Standard_Boolean Failed() const;
		%feature("autodoc", "1");
		void Reset();
		%feature("autodoc", "1");
		void Perror();
		%feature("autodoc", "1");
		Standard_Integer Error() const;

};
%feature("shadow") OSD_EnvironmentIterator::~OSD_EnvironmentIterator %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend OSD_EnvironmentIterator {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor OSD_Exception_FLT_UNDERFLOW;
class OSD_Exception_FLT_UNDERFLOW : public OSD_Exception {
	public:
		%feature("autodoc", "1");
		OSD_Exception_FLT_UNDERFLOW();
		%feature("autodoc", "1");
		OSD_Exception_FLT_UNDERFLOW(const char * AString);
		%feature("autodoc", "1");
		static		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		static		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		static		Handle_OSD_Exception_FLT_UNDERFLOW NewInstance(const char * aMessage="");
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend OSD_Exception_FLT_UNDERFLOW {
	Handle_OSD_Exception_FLT_UNDERFLOW GetHandle() {
	return *(Handle_OSD_Exception_FLT_UNDERFLOW*) &$self;
	}
};
%extend OSD_Exception_FLT_UNDERFLOW {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") OSD_Exception_FLT_UNDERFLOW::~OSD_Exception_FLT_UNDERFLOW %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend OSD_Exception_FLT_UNDERFLOW {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor OSD_Exception_IN_PAGE_ERROR;
class OSD_Exception_IN_PAGE_ERROR : public OSD_Exception {
	public:
		%feature("autodoc", "1");
		OSD_Exception_IN_PAGE_ERROR();
		%feature("autodoc", "1");
		OSD_Exception_IN_PAGE_ERROR(const char * AString);
		%feature("autodoc", "1");
		static		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		static		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		static		Handle_OSD_Exception_IN_PAGE_ERROR NewInstance(const char * aMessage="");
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend OSD_Exception_IN_PAGE_ERROR {
	Handle_OSD_Exception_IN_PAGE_ERROR GetHandle() {
	return *(Handle_OSD_Exception_IN_PAGE_ERROR*) &$self;
	}
};
%extend OSD_Exception_IN_PAGE_ERROR {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") OSD_Exception_IN_PAGE_ERROR::~OSD_Exception_IN_PAGE_ERROR %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend OSD_Exception_IN_PAGE_ERROR {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor OSD_OSDError;
class OSD_OSDError : public Standard_Failure {
	public:
		%feature("autodoc", "1");
		OSD_OSDError();
		%feature("autodoc", "1");
		OSD_OSDError(const char * AString);
		%feature("autodoc", "1");
		static		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		static		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		static		Handle_OSD_OSDError NewInstance(const char * aMessage="");
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend OSD_OSDError {
	Handle_OSD_OSDError GetHandle() {
	return *(Handle_OSD_OSDError*) &$self;
	}
};
%extend OSD_OSDError {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") OSD_OSDError::~OSD_OSDError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend OSD_OSDError {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor OSD_Disk;
class OSD_Disk {
	public:
		%feature("autodoc", "1");
		OSD_Disk();
		%feature("autodoc", "1");
		OSD_Disk(const OSD_Path &Name);
		%feature("autodoc", "1");
		OSD_Disk(const char * PathName);
		%feature("autodoc", "1");
		OSD_Path Name() const;
		%feature("autodoc", "1");
		void SetName(const OSD_Path &Name);
		%feature("autodoc", "1");
		Standard_Integer DiskSize();
		%feature("autodoc", "1");
		Standard_Integer DiskFree();
		%feature("autodoc", "1");
		Standard_Integer DiskQuota();
		%feature("autodoc", "1");
		void SetDiskQuota(const Standard_Integer QuotaSize);
		%feature("autodoc", "1");
		void SetQuotaOn();
		%feature("autodoc", "1");
		void SetQuotaOff();
		%feature("autodoc", "1");
		Standard_Boolean Failed() const;
		%feature("autodoc", "1");
		void Reset();
		%feature("autodoc", "1");
		void Perror();
		%feature("autodoc", "1");
		Standard_Integer Error() const;

};
%feature("shadow") OSD_Disk::~OSD_Disk %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend OSD_Disk {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor OSD_Error;
class OSD_Error {
	public:
		%feature("autodoc", "1");
		OSD_Error();
		%feature("autodoc", "1");
		void Perror();
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Errcode, const Standard_Integer From, const TCollection_AsciiString &Message);
		%feature("autodoc", "1");
		Standard_Integer Error() const;
		%feature("autodoc", "1");
		Standard_Boolean Failed() const;
		%feature("autodoc", "1");
		void Reset();

};
%feature("shadow") OSD_Error::~OSD_Error %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend OSD_Error {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor OSD_SharedMemory;
class OSD_SharedMemory {
	public:
		%feature("autodoc", "1");
		OSD_SharedMemory();
		%feature("autodoc", "1");
		OSD_SharedMemory(const TCollection_AsciiString &Name, const Standard_Integer size);
		%feature("autodoc", "1");
		void Build();
		%feature("autodoc", "1");
		void Open(const TCollection_AsciiString &Name, const Standard_Integer size);
		%feature("autodoc", "1");
		void Delete();
		%feature("autodoc", "1");
		Standard_Address GiveAddress() const;
		%feature("autodoc", "1");
		Standard_Boolean Failed() const;
		%feature("autodoc", "1");
		void Reset();
		%feature("autodoc", "1");
		void Perror();
		%feature("autodoc", "1");
		Standard_Integer Error() const;

};
%feature("shadow") OSD_SharedMemory::~OSD_SharedMemory %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend OSD_SharedMemory {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor OSD_SharedLibrary;
class OSD_SharedLibrary {
	public:
		%feature("autodoc", "1");
		OSD_SharedLibrary();
		%feature("autodoc", "1");
		OSD_SharedLibrary(const char * aFilename);
		%feature("autodoc", "1");
		void SetName(const char * aName);
		%feature("autodoc", "1");
		char * Name() const;
		%feature("autodoc", "1");
		Standard_Boolean DlOpen(const OSD_LoadMode Mode);
		%feature("autodoc", "1");
		void DlClose() const;
		%feature("autodoc", "1");
		char * DlError() const;
		%feature("autodoc", "1");
		void Destroy();

};
%feature("shadow") OSD_SharedLibrary::~OSD_SharedLibrary %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend OSD_SharedLibrary {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor OSD_Thread;
class OSD_Thread {
	public:
		%feature("autodoc", "1");
		OSD_Thread();
		%feature("autodoc", "1");
		OSD_Thread(const OSD_ThreadFunction &func);
		%feature("autodoc", "1");
		OSD_Thread(const OSD_Thread &other);
		%feature("autodoc", "1");
		void Assign(const OSD_Thread &other);
		%feature("autodoc", "1");
		void operator=(const OSD_Thread &other);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		void SetPriority(const Standard_Integer thePriority);
		%feature("autodoc", "1");
		Standard_Boolean Run(const Standard_Address data=0, const Standard_Integer WNTStackSize=0);
		%feature("autodoc", "1");
		void Detach();
		%feature("autodoc", "1");
		Standard_Boolean Wait() const;
		%feature("autodoc", "1");
		Standard_Boolean Wait(Standard_Address & result) const;
		%feature("autodoc", "1");
		Standard_Boolean Wait(const Standard_Integer time, Standard_Address & result) const;
		%feature("autodoc", "1");
		Standard_ThreadId GetId() const;
		%feature("autodoc", "1");
		static		Standard_ThreadId Current();

};
%feature("shadow") OSD_Thread::~OSD_Thread %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend OSD_Thread {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor OSD_SIGQUIT;
class OSD_SIGQUIT : public OSD_Signal {
	public:
		%feature("autodoc", "1");
		OSD_SIGQUIT();
		%feature("autodoc", "1");
		OSD_SIGQUIT(const char * AString);
		%feature("autodoc", "1");
		static		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		static		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		static		Handle_OSD_SIGQUIT NewInstance(const char * aMessage="");
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend OSD_SIGQUIT {
	Handle_OSD_SIGQUIT GetHandle() {
	return *(Handle_OSD_SIGQUIT*) &$self;
	}
};
%extend OSD_SIGQUIT {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") OSD_SIGQUIT::~OSD_SIGQUIT %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend OSD_SIGQUIT {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor OSD_SIGBUS;
class OSD_SIGBUS : public OSD_Signal {
	public:
		%feature("autodoc", "1");
		OSD_SIGBUS();
		%feature("autodoc", "1");
		OSD_SIGBUS(const char * AString);
		%feature("autodoc", "1");
		static		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		static		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		static		Handle_OSD_SIGBUS NewInstance(const char * aMessage="");
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend OSD_SIGBUS {
	Handle_OSD_SIGBUS GetHandle() {
	return *(Handle_OSD_SIGBUS*) &$self;
	}
};
%extend OSD_SIGBUS {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") OSD_SIGBUS::~OSD_SIGBUS %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend OSD_SIGBUS {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor OSD_FileNode;
class OSD_FileNode {
	public:
		%feature("autodoc", "1");
		void Path(OSD_Path & Name) const;
		%feature("autodoc", "1");
		void SetPath(const OSD_Path &Name);
		%feature("autodoc", "1");
		Standard_Boolean Exists();
		%feature("autodoc", "1");
		void Remove();
		%feature("autodoc", "1");
		void Move(const OSD_Path &NewPath);
		%feature("autodoc", "1");
		void Copy(const OSD_Path &ToPath);
		%feature("autodoc", "1");
		OSD_Protection Protection();
		%feature("autodoc", "1");
		void SetProtection(const OSD_Protection &Prot);
		%feature("autodoc", "1");
		Quantity_Date AccessMoment();
		%feature("autodoc", "1");
		Quantity_Date CreationMoment();
		%feature("autodoc", "1");
		Standard_Integer UserId();
		%feature("autodoc", "1");
		Standard_Integer GroupId();
		%feature("autodoc", "1");
		Standard_Boolean Failed() const;
		%feature("autodoc", "1");
		void Reset();
		%feature("autodoc", "1");
		void Perror();
		%feature("autodoc", "1");
		Standard_Integer Error() const;

};
%feature("shadow") OSD_FileNode::~OSD_FileNode %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend OSD_FileNode {
	void _kill_pointed() {
		delete $self;
	}
};
%extend OSD_FileNode {
	OSD_FileNode () {}
};


%nodefaultctor OSD_File;
class OSD_File : public OSD_FileNode {
	public:
		%feature("autodoc", "1");
		OSD_File();
		%feature("autodoc", "1");
		OSD_File(const OSD_Path &Name);
		%feature("autodoc", "1");
		void Build(const OSD_OpenMode Mode, const OSD_Protection &Protect);
		%feature("autodoc", "1");
		void Open(const OSD_OpenMode Mode, const OSD_Protection &Protect);
		%feature("autodoc", "1");
		void Append(const OSD_OpenMode Mode, const OSD_Protection &Protect);
		%feature("autodoc", "1");
		void Read(TCollection_AsciiString & Buffer, const Standard_Integer Nbyte);
		%feature("autodoc","ReadLine(Standard_Integer NByte) -> Standard_Integer");

		void ReadLine(TCollection_AsciiString & Buffer, const Standard_Integer NByte, Standard_Integer &OutValue);
		%feature("autodoc","Read(Standard_Integer Nbyte) -> Standard_Integer");

		void Read(Standard_Address & Buffer, const Standard_Integer Nbyte, Standard_Integer &OutValue);
		%feature("autodoc", "1");
		void Write(const TCollection_AsciiString &Buffer, const Standard_Integer Nbyte);
		%feature("autodoc", "1");
		void Write(const Standard_Address Buffer, const Standard_Integer Nbyte);
		%feature("autodoc", "1");
		void Seek(const Standard_Integer Offset, const OSD_FromWhere Whence);
		%feature("autodoc", "1");
		void Close();
		%feature("autodoc", "1");
		Standard_Boolean IsAtEnd();
		%feature("autodoc", "1");
		OSD_KindFile KindOfFile() const;
		%feature("autodoc", "1");
		static		OSD_File BuildTemporary();
		%feature("autodoc", "1");
		void SetLock(const OSD_LockType Lock);
		%feature("autodoc", "1");
		void UnLock();
		%feature("autodoc", "1");
		OSD_LockType GetLock();
		%feature("autodoc", "1");
		Standard_Boolean IsLocked();
		%feature("autodoc", "1");
		Standard_Integer Size();
		%feature("autodoc", "1");
		void Print(const OSD_Printer &WhichPrinter);
		%feature("autodoc", "1");
		Standard_Boolean IsOpen() const;
		%feature("autodoc", "1");
		Standard_Boolean IsReadable();
		%feature("autodoc", "1");
		Standard_Boolean IsWriteable();
		%feature("autodoc", "1");
		Standard_Boolean IsExecutable();
		%feature("autodoc", "1");
		Standard_Boolean ReadLastLine(TCollection_AsciiString & aLine, const Standard_Integer aDelay, const Standard_Integer aNbTries);
		%feature("autodoc", "1");
		Standard_Boolean Edit();

};
%feature("shadow") OSD_File::~OSD_File %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend OSD_File {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor OSD_SIGSEGV;
class OSD_SIGSEGV : public OSD_Signal {
	public:
		%feature("autodoc", "1");
		OSD_SIGSEGV();
		%feature("autodoc", "1");
		OSD_SIGSEGV(const char * AString);
		%feature("autodoc", "1");
		static		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		static		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		static		Handle_OSD_SIGSEGV NewInstance(const char * aMessage="");
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend OSD_SIGSEGV {
	Handle_OSD_SIGSEGV GetHandle() {
	return *(Handle_OSD_SIGSEGV*) &$self;
	}
};
%extend OSD_SIGSEGV {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") OSD_SIGSEGV::~OSD_SIGSEGV %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend OSD_SIGSEGV {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor OSD_Chronometer;
class OSD_Chronometer {
	public:
		%feature("autodoc", "1");
		OSD_Chronometer(const Standard_Boolean ThisThreadOnly=0);
		%feature("autodoc", "1");
		virtual		void Destroy();
		%feature("autodoc", "1");
		virtual		void Reset();
		%feature("autodoc", "1");
		virtual		void Stop();
		%feature("autodoc", "1");
		virtual		void Start();
		%feature("autodoc", "1");
		virtual		void Show();
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string ShowToString() {
			std::stringstream s;
			self->Show(s);
			return s.str();}
		};
		%feature("autodoc","Show() -> Standard_Real");

		void Show(Standard_Real &OutValue);
		%feature("autodoc","Show() -> [Standard_Real, Standard_Real]");

		void Show(Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc","GetProcessCPU() -> [Standard_Real, Standard_Real]");

		static		void GetProcessCPU(Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc","GetThreadCPU() -> [Standard_Real, Standard_Real]");

		static		void GetThreadCPU(Standard_Real &OutValue, Standard_Real &OutValue);

};
%feature("shadow") OSD_Chronometer::~OSD_Chronometer %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend OSD_Chronometer {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor OSD_Exception_STATUS_NO_MEMORY;
class OSD_Exception_STATUS_NO_MEMORY : public OSD_Exception {
	public:
		%feature("autodoc", "1");
		OSD_Exception_STATUS_NO_MEMORY();
		%feature("autodoc", "1");
		OSD_Exception_STATUS_NO_MEMORY(const char * AString);
		%feature("autodoc", "1");
		static		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		static		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		static		Handle_OSD_Exception_STATUS_NO_MEMORY NewInstance(const char * aMessage="");
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend OSD_Exception_STATUS_NO_MEMORY {
	Handle_OSD_Exception_STATUS_NO_MEMORY GetHandle() {
	return *(Handle_OSD_Exception_STATUS_NO_MEMORY*) &$self;
	}
};
%extend OSD_Exception_STATUS_NO_MEMORY {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") OSD_Exception_STATUS_NO_MEMORY::~OSD_Exception_STATUS_NO_MEMORY %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend OSD_Exception_STATUS_NO_MEMORY {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor OSD_SystemFont;
class OSD_SystemFont : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		OSD_SystemFont();
		%feature("autodoc", "1");
		OSD_SystemFont(const Handle_TCollection_HAsciiString &FontName, const OSD_FontAspect Aspect, const Handle_TCollection_HAsciiString &FilePath);
		%feature("autodoc", "1");
		OSD_SystemFont(const Handle_TCollection_HAsciiString &XLFD, const Handle_TCollection_HAsciiString &FilePath);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString FontName() const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString FontPath() const;
		%feature("autodoc", "1");
		OSD_FontAspect FontAspect() const;
		%feature("autodoc", "1");
		Standard_Integer FontHeight() const;
		%feature("autodoc", "1");
		Standard_Boolean IsValid() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend OSD_SystemFont {
	Handle_OSD_SystemFont GetHandle() {
	return *(Handle_OSD_SystemFont*) &$self;
	}
};
%extend OSD_SystemFont {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") OSD_SystemFont::~OSD_SystemFont %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend OSD_SystemFont {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor OSD_Exception_ARRAY_BOUNDS_EXCEEDED;
class OSD_Exception_ARRAY_BOUNDS_EXCEEDED : public OSD_Exception {
	public:
		%feature("autodoc", "1");
		OSD_Exception_ARRAY_BOUNDS_EXCEEDED();
		%feature("autodoc", "1");
		OSD_Exception_ARRAY_BOUNDS_EXCEEDED(const char * AString);
		%feature("autodoc", "1");
		static		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		static		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		static		Handle_OSD_Exception_ARRAY_BOUNDS_EXCEEDED NewInstance(const char * aMessage="");
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend OSD_Exception_ARRAY_BOUNDS_EXCEEDED {
	Handle_OSD_Exception_ARRAY_BOUNDS_EXCEEDED GetHandle() {
	return *(Handle_OSD_Exception_ARRAY_BOUNDS_EXCEEDED*) &$self;
	}
};
%extend OSD_Exception_ARRAY_BOUNDS_EXCEEDED {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") OSD_Exception_ARRAY_BOUNDS_EXCEEDED::~OSD_Exception_ARRAY_BOUNDS_EXCEEDED %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend OSD_Exception_ARRAY_BOUNDS_EXCEEDED {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor OSD_Exception_PRIV_INSTRUCTION;
class OSD_Exception_PRIV_INSTRUCTION : public OSD_Exception {
	public:
		%feature("autodoc", "1");
		OSD_Exception_PRIV_INSTRUCTION();
		%feature("autodoc", "1");
		OSD_Exception_PRIV_INSTRUCTION(const char * AString);
		%feature("autodoc", "1");
		static		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		static		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		static		Handle_OSD_Exception_PRIV_INSTRUCTION NewInstance(const char * aMessage="");
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend OSD_Exception_PRIV_INSTRUCTION {
	Handle_OSD_Exception_PRIV_INSTRUCTION GetHandle() {
	return *(Handle_OSD_Exception_PRIV_INSTRUCTION*) &$self;
	}
};
%extend OSD_Exception_PRIV_INSTRUCTION {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") OSD_Exception_PRIV_INSTRUCTION::~OSD_Exception_PRIV_INSTRUCTION %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend OSD_Exception_PRIV_INSTRUCTION {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor OSD_Localizer;
class OSD_Localizer {
	public:
		%feature("autodoc", "1");
		OSD_Localizer(const Standard_Integer Category, const char * Locale);
		%feature("autodoc", "1");
		void Restore();
		%feature("autodoc", "1");
		void SetLocale(const Standard_Integer Category, const char * Locale);
		%feature("autodoc", "1");
		char * Locale() const;
		%feature("autodoc", "1");
		Standard_Integer Category() const;

};
%feature("shadow") OSD_Localizer::~OSD_Localizer %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend OSD_Localizer {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor OSD_Directory;
class OSD_Directory : public OSD_FileNode {
	public:
		%feature("autodoc", "1");
		OSD_Directory();
		%feature("autodoc", "1");
		OSD_Directory(const OSD_Path &Name);
		%feature("autodoc", "1");
		void Build(const OSD_Protection &Protect);
		%feature("autodoc", "1");
		static		OSD_Directory BuildTemporary();

};
%feature("shadow") OSD_Directory::~OSD_Directory %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend OSD_Directory {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor OSD_Environment;
class OSD_Environment {
	public:
		%feature("autodoc", "1");
		OSD_Environment();
		%feature("autodoc", "1");
		OSD_Environment(const TCollection_AsciiString &Name);
		%feature("autodoc", "1");
		OSD_Environment(const TCollection_AsciiString &Name, const TCollection_AsciiString &Value);
		%feature("autodoc", "1");
		void SetValue(const TCollection_AsciiString &Value);
		%feature("autodoc", "1");
		TCollection_AsciiString Value();
		%feature("autodoc", "1");
		void SetName(const TCollection_AsciiString &name);
		%feature("autodoc", "1");
		TCollection_AsciiString Name() const;
		%feature("autodoc", "1");
		void Build();
		%feature("autodoc", "1");
		void Remove();
		%feature("autodoc", "1");
		Standard_Boolean Failed() const;
		%feature("autodoc", "1");
		void Reset();
		%feature("autodoc", "1");
		void Perror();
		%feature("autodoc", "1");
		Standard_Integer Error() const;

};
%feature("shadow") OSD_Environment::~OSD_Environment %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend OSD_Environment {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor OSD_SIGSYS;
class OSD_SIGSYS : public OSD_Signal {
	public:
		%feature("autodoc", "1");
		OSD_SIGSYS();
		%feature("autodoc", "1");
		OSD_SIGSYS(const char * AString);
		%feature("autodoc", "1");
		static		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		static		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		static		Handle_OSD_SIGSYS NewInstance(const char * aMessage="");
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend OSD_SIGSYS {
	Handle_OSD_SIGSYS GetHandle() {
	return *(Handle_OSD_SIGSYS*) &$self;
	}
};
%extend OSD_SIGSYS {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") OSD_SIGSYS::~OSD_SIGSYS %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend OSD_SIGSYS {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor OSD;
class OSD {
	public:
		%feature("autodoc", "1");
		OSD();
		%feature("autodoc", "1");
		static		void SetSignal(const Standard_Boolean aFloatingSignal=1);
		%feature("autodoc", "1");
		static		Standard_Integer AvailableMemory();
		%feature("autodoc", "1");
		static		void SecSleep(const Standard_Integer aDelay);
		%feature("autodoc", "1");
		static		void MilliSecSleep(const Standard_Integer aDelay);
		%feature("autodoc", "1");
		static		Standard_Boolean RealToCString(const Standard_Real aReal, Standard_PCharacter & aString);
		%feature("autodoc","CStringToReal(Standard_CString aString) -> Standard_Real");

		static		Standard_Boolean CStringToReal(const char * aString, Standard_Real &OutValue);
		%feature("autodoc", "1");
		static		Standard_Boolean IsDivisible(const Standard_Real aDividend, const Standard_Real aDivisor);
		%feature("autodoc", "1");
		static		Standard_Integer GetExponent(const Standard_Real aReal);
		%feature("autodoc", "1");
		static		Standard_Real GetMantissa(const Standard_Real aReal);
		%feature("autodoc", "1");
		static		void UseSETranslator(const Standard_Boolean useSE);
		%feature("autodoc", "1");
		static		Standard_Boolean UseSETranslator();

};
%feature("shadow") OSD::~OSD %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend OSD {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor OSD_Exception_ACCESS_VIOLATION;
class OSD_Exception_ACCESS_VIOLATION : public OSD_Exception {
	public:
		%feature("autodoc", "1");
		OSD_Exception_ACCESS_VIOLATION();
		%feature("autodoc", "1");
		OSD_Exception_ACCESS_VIOLATION(const char * AString);
		%feature("autodoc", "1");
		static		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		static		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		static		Handle_OSD_Exception_ACCESS_VIOLATION NewInstance(const char * aMessage="");
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend OSD_Exception_ACCESS_VIOLATION {
	Handle_OSD_Exception_ACCESS_VIOLATION GetHandle() {
	return *(Handle_OSD_Exception_ACCESS_VIOLATION*) &$self;
	}
};
%extend OSD_Exception_ACCESS_VIOLATION {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") OSD_Exception_ACCESS_VIOLATION::~OSD_Exception_ACCESS_VIOLATION %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend OSD_Exception_ACCESS_VIOLATION {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor OSD_Exception_ILLEGAL_INSTRUCTION;
class OSD_Exception_ILLEGAL_INSTRUCTION : public OSD_Exception {
	public:
		%feature("autodoc", "1");
		OSD_Exception_ILLEGAL_INSTRUCTION();
		%feature("autodoc", "1");
		OSD_Exception_ILLEGAL_INSTRUCTION(const char * AString);
		%feature("autodoc", "1");
		static		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		static		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		static		Handle_OSD_Exception_ILLEGAL_INSTRUCTION NewInstance(const char * aMessage="");
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend OSD_Exception_ILLEGAL_INSTRUCTION {
	Handle_OSD_Exception_ILLEGAL_INSTRUCTION GetHandle() {
	return *(Handle_OSD_Exception_ILLEGAL_INSTRUCTION*) &$self;
	}
};
%extend OSD_Exception_ILLEGAL_INSTRUCTION {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") OSD_Exception_ILLEGAL_INSTRUCTION::~OSD_Exception_ILLEGAL_INSTRUCTION %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend OSD_Exception_ILLEGAL_INSTRUCTION {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor OSD_Exception_FLT_INVALID_OPERATION;
class OSD_Exception_FLT_INVALID_OPERATION : public OSD_Exception {
	public:
		%feature("autodoc", "1");
		OSD_Exception_FLT_INVALID_OPERATION();
		%feature("autodoc", "1");
		OSD_Exception_FLT_INVALID_OPERATION(const char * AString);
		%feature("autodoc", "1");
		static		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		static		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		static		Handle_OSD_Exception_FLT_INVALID_OPERATION NewInstance(const char * aMessage="");
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend OSD_Exception_FLT_INVALID_OPERATION {
	Handle_OSD_Exception_FLT_INVALID_OPERATION GetHandle() {
	return *(Handle_OSD_Exception_FLT_INVALID_OPERATION*) &$self;
	}
};
%extend OSD_Exception_FLT_INVALID_OPERATION {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") OSD_Exception_FLT_INVALID_OPERATION::~OSD_Exception_FLT_INVALID_OPERATION %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend OSD_Exception_FLT_INVALID_OPERATION {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor OSD_SIGINT;
class OSD_SIGINT : public OSD_Signal {
	public:
		%feature("autodoc", "1");
		OSD_SIGINT();
		%feature("autodoc", "1");
		OSD_SIGINT(const char * AString);
		%feature("autodoc", "1");
		static		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		static		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		static		Handle_OSD_SIGINT NewInstance(const char * aMessage="");
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend OSD_SIGINT {
	Handle_OSD_SIGINT GetHandle() {
	return *(Handle_OSD_SIGINT*) &$self;
	}
};
%extend OSD_SIGINT {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") OSD_SIGINT::~OSD_SIGINT %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend OSD_SIGINT {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor OSD_Exception_INT_DIVIDE_BY_ZERO;
class OSD_Exception_INT_DIVIDE_BY_ZERO : public OSD_Exception {
	public:
		%feature("autodoc", "1");
		OSD_Exception_INT_DIVIDE_BY_ZERO();
		%feature("autodoc", "1");
		OSD_Exception_INT_DIVIDE_BY_ZERO(const char * AString);
		%feature("autodoc", "1");
		static		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		static		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		static		Handle_OSD_Exception_INT_DIVIDE_BY_ZERO NewInstance(const char * aMessage="");
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend OSD_Exception_INT_DIVIDE_BY_ZERO {
	Handle_OSD_Exception_INT_DIVIDE_BY_ZERO GetHandle() {
	return *(Handle_OSD_Exception_INT_DIVIDE_BY_ZERO*) &$self;
	}
};
%extend OSD_Exception_INT_DIVIDE_BY_ZERO {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") OSD_Exception_INT_DIVIDE_BY_ZERO::~OSD_Exception_INT_DIVIDE_BY_ZERO %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend OSD_Exception_INT_DIVIDE_BY_ZERO {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor OSD_Exception_STACK_OVERFLOW;
class OSD_Exception_STACK_OVERFLOW : public OSD_Exception {
	public:
		%feature("autodoc", "1");
		OSD_Exception_STACK_OVERFLOW();
		%feature("autodoc", "1");
		OSD_Exception_STACK_OVERFLOW(const char * AString);
		%feature("autodoc", "1");
		static		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		static		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		static		Handle_OSD_Exception_STACK_OVERFLOW NewInstance(const char * aMessage="");
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend OSD_Exception_STACK_OVERFLOW {
	Handle_OSD_Exception_STACK_OVERFLOW GetHandle() {
	return *(Handle_OSD_Exception_STACK_OVERFLOW*) &$self;
	}
};
%extend OSD_Exception_STACK_OVERFLOW {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") OSD_Exception_STACK_OVERFLOW::~OSD_Exception_STACK_OVERFLOW %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend OSD_Exception_STACK_OVERFLOW {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor OSD_Exception_INT_OVERFLOW;
class OSD_Exception_INT_OVERFLOW : public OSD_Exception {
	public:
		%feature("autodoc", "1");
		OSD_Exception_INT_OVERFLOW();
		%feature("autodoc", "1");
		OSD_Exception_INT_OVERFLOW(const char * AString);
		%feature("autodoc", "1");
		static		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		static		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		static		Handle_OSD_Exception_INT_OVERFLOW NewInstance(const char * aMessage="");
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend OSD_Exception_INT_OVERFLOW {
	Handle_OSD_Exception_INT_OVERFLOW GetHandle() {
	return *(Handle_OSD_Exception_INT_OVERFLOW*) &$self;
	}
};
%extend OSD_Exception_INT_OVERFLOW {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") OSD_Exception_INT_OVERFLOW::~OSD_Exception_INT_OVERFLOW %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend OSD_Exception_INT_OVERFLOW {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor OSD_Path;
class OSD_Path {
	public:
		%feature("autodoc", "1");
		OSD_Path();
		%feature("autodoc", "1");
		OSD_Path(const TCollection_AsciiString &aDependentName, const OSD_SysType aSysType=OSD_Default);
		%feature("autodoc", "1");
		OSD_Path(const TCollection_AsciiString &aNode, const TCollection_AsciiString &aUsername, const TCollection_AsciiString &aPassword, const TCollection_AsciiString &aDisk, const TCollection_AsciiString &aTrek, const TCollection_AsciiString &aName, const TCollection_AsciiString &anExtension);
		%feature("autodoc", "1");
		void Values(TCollection_AsciiString & aNode, TCollection_AsciiString & aUsername, TCollection_AsciiString & aPassword, TCollection_AsciiString & aDisk, TCollection_AsciiString & aTrek, TCollection_AsciiString & aName, TCollection_AsciiString & anExtension) const;
		%feature("autodoc", "1");
		void SetValues(const TCollection_AsciiString &aNode, const TCollection_AsciiString &aUsername, const TCollection_AsciiString &aPassword, const TCollection_AsciiString &aDisk, const TCollection_AsciiString &aTrek, const TCollection_AsciiString &aName, const TCollection_AsciiString &anExtension);
		%feature("autodoc", "1");
		void SystemName(TCollection_AsciiString & FullName, const OSD_SysType aType=OSD_Default) const;
		%feature("autodoc", "1");
		void ExpandedName(TCollection_AsciiString & aName);
		%feature("autodoc", "1");
		Standard_Boolean IsValid(const TCollection_AsciiString &aDependentName, const OSD_SysType aSysType=OSD_Default) const;
		%feature("autodoc", "1");
		void UpTrek();
		%feature("autodoc", "1");
		void DownTrek(const TCollection_AsciiString &aName);
		%feature("autodoc", "1");
		Standard_Integer TrekLength() const;
		%feature("autodoc", "1");
		void RemoveATrek(const Standard_Integer where);
		%feature("autodoc", "1");
		void RemoveATrek(const TCollection_AsciiString &aName);
		%feature("autodoc", "1");
		TCollection_AsciiString TrekValue(const Standard_Integer where) const;
		%feature("autodoc", "1");
		void InsertATrek(const TCollection_AsciiString &aName, const Standard_Integer where);
		%feature("autodoc", "1");
		TCollection_AsciiString Node() const;
		%feature("autodoc", "1");
		TCollection_AsciiString UserName() const;
		%feature("autodoc", "1");
		TCollection_AsciiString Password() const;
		%feature("autodoc", "1");
		TCollection_AsciiString Disk() const;
		%feature("autodoc", "1");
		TCollection_AsciiString Trek() const;
		%feature("autodoc", "1");
		TCollection_AsciiString Name() const;
		%feature("autodoc", "1");
		TCollection_AsciiString Extension() const;
		%feature("autodoc", "1");
		void SetNode(const TCollection_AsciiString &aName);
		%feature("autodoc", "1");
		void SetUserName(const TCollection_AsciiString &aName);
		%feature("autodoc", "1");
		void SetPassword(const TCollection_AsciiString &aName);
		%feature("autodoc", "1");
		void SetDisk(const TCollection_AsciiString &aName);
		%feature("autodoc", "1");
		void SetTrek(const TCollection_AsciiString &aName);
		%feature("autodoc", "1");
		void SetName(const TCollection_AsciiString &aName);
		%feature("autodoc", "1");
		void SetExtension(const TCollection_AsciiString &aName);
		%feature("autodoc", "1");
		static		TCollection_AsciiString RelativePath(const TCollection_AsciiString &DirPath, const TCollection_AsciiString &AbsFilePath);
		%feature("autodoc", "1");
		static		TCollection_AsciiString AbsolutePath(const TCollection_AsciiString &DirPath, const TCollection_AsciiString &RelFilePath);

};
%feature("shadow") OSD_Path::~OSD_Path %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend OSD_Path {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor OSD_SIGHUP;
class OSD_SIGHUP : public OSD_Signal {
	public:
		%feature("autodoc", "1");
		OSD_SIGHUP();
		%feature("autodoc", "1");
		OSD_SIGHUP(const char * AString);
		%feature("autodoc", "1");
		static		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		static		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		static		Handle_OSD_SIGHUP NewInstance(const char * aMessage="");
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend OSD_SIGHUP {
	Handle_OSD_SIGHUP GetHandle() {
	return *(Handle_OSD_SIGHUP*) &$self;
	}
};
%extend OSD_SIGHUP {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") OSD_SIGHUP::~OSD_SIGHUP %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend OSD_SIGHUP {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor OSD_Timer;
class OSD_Timer : public OSD_Chronometer {
	public:
		%feature("autodoc", "1");
		OSD_Timer();
		%feature("autodoc", "1");
		virtual		void Reset();
		%feature("autodoc", "1");
		virtual		void Show();
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string ShowToString() {
			std::stringstream s;
			self->Show(s);
			return s.str();}
		};
		%feature("autodoc","Show() -> [Standard_Real, Standard_Integer, Standard_Integer, Standard_Real]");

		void Show(Standard_Real &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		void Stop();
		%feature("autodoc", "1");
		virtual		void Start();
		%feature("autodoc", "1");
		Standard_Real ElapsedTime();

};
%feature("shadow") OSD_Timer::~OSD_Timer %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend OSD_Timer {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor OSD_FontMgr;
class OSD_FontMgr : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		static		Handle_OSD_FontMgr GetInstance();
		%feature("autodoc", "1");
		OSD_NListOfSystemFont GetAvalableFonts() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend OSD_FontMgr {
	Handle_OSD_FontMgr GetHandle() {
	return *(Handle_OSD_FontMgr*) &$self;
	}
};
%extend OSD_FontMgr {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") OSD_FontMgr::~OSD_FontMgr %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend OSD_FontMgr {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor OSD_Protection;
class OSD_Protection {
	public:
		%feature("autodoc", "1");
		OSD_Protection();
		%feature("autodoc", "1");
		OSD_Protection(const OSD_SingleProtection System, const OSD_SingleProtection User, const OSD_SingleProtection Group, const OSD_SingleProtection World);
		%feature("autodoc", "1");
		void Values(OSD_SingleProtection & System, OSD_SingleProtection & User, OSD_SingleProtection & Group, OSD_SingleProtection & World);
		%feature("autodoc", "1");
		void SetValues(const OSD_SingleProtection System, const OSD_SingleProtection User, const OSD_SingleProtection Group, const OSD_SingleProtection World);
		%feature("autodoc", "1");
		void SetSystem(const OSD_SingleProtection priv);
		%feature("autodoc", "1");
		void SetUser(const OSD_SingleProtection priv);
		%feature("autodoc", "1");
		void SetGroup(const OSD_SingleProtection priv);
		%feature("autodoc", "1");
		void SetWorld(const OSD_SingleProtection priv);
		%feature("autodoc", "1");
		OSD_SingleProtection System() const;
		%feature("autodoc", "1");
		OSD_SingleProtection User() const;
		%feature("autodoc", "1");
		OSD_SingleProtection Group() const;
		%feature("autodoc", "1");
		OSD_SingleProtection World() const;
		%feature("autodoc", "1");
		void Add(OSD_SingleProtection & aProt, const OSD_SingleProtection aRight);
		%feature("autodoc", "1");
		void Sub(OSD_SingleProtection & aProt, const OSD_SingleProtection aRight);

};
%feature("shadow") OSD_Protection::~OSD_Protection %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend OSD_Protection {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor OSD_SIGILL;
class OSD_SIGILL : public OSD_Signal {
	public:
		%feature("autodoc", "1");
		OSD_SIGILL();
		%feature("autodoc", "1");
		OSD_SIGILL(const char * AString);
		%feature("autodoc", "1");
		static		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		static		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		static		Handle_OSD_SIGILL NewInstance(const char * aMessage="");
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend OSD_SIGILL {
	Handle_OSD_SIGILL GetHandle() {
	return *(Handle_OSD_SIGILL*) &$self;
	}
};
%extend OSD_SIGILL {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") OSD_SIGILL::~OSD_SIGILL %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend OSD_SIGILL {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor OSD_Exception_FLT_DENORMAL_OPERAND;
class OSD_Exception_FLT_DENORMAL_OPERAND : public OSD_Exception {
	public:
		%feature("autodoc", "1");
		OSD_Exception_FLT_DENORMAL_OPERAND();
		%feature("autodoc", "1");
		OSD_Exception_FLT_DENORMAL_OPERAND(const char * AString);
		%feature("autodoc", "1");
		static		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		static		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		static		Handle_OSD_Exception_FLT_DENORMAL_OPERAND NewInstance(const char * aMessage="");
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend OSD_Exception_FLT_DENORMAL_OPERAND {
	Handle_OSD_Exception_FLT_DENORMAL_OPERAND GetHandle() {
	return *(Handle_OSD_Exception_FLT_DENORMAL_OPERAND*) &$self;
	}
};
%extend OSD_Exception_FLT_DENORMAL_OPERAND {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") OSD_Exception_FLT_DENORMAL_OPERAND::~OSD_Exception_FLT_DENORMAL_OPERAND %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend OSD_Exception_FLT_DENORMAL_OPERAND {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor OSD_Exception_FLT_OVERFLOW;
class OSD_Exception_FLT_OVERFLOW : public OSD_Exception {
	public:
		%feature("autodoc", "1");
		OSD_Exception_FLT_OVERFLOW();
		%feature("autodoc", "1");
		OSD_Exception_FLT_OVERFLOW(const char * AString);
		%feature("autodoc", "1");
		static		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		static		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		static		Handle_OSD_Exception_FLT_OVERFLOW NewInstance(const char * aMessage="");
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend OSD_Exception_FLT_OVERFLOW {
	Handle_OSD_Exception_FLT_OVERFLOW GetHandle() {
	return *(Handle_OSD_Exception_FLT_OVERFLOW*) &$self;
	}
};
%extend OSD_Exception_FLT_OVERFLOW {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") OSD_Exception_FLT_OVERFLOW::~OSD_Exception_FLT_OVERFLOW %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend OSD_Exception_FLT_OVERFLOW {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor OSD_Exception_FLT_DIVIDE_BY_ZERO;
class OSD_Exception_FLT_DIVIDE_BY_ZERO : public OSD_Exception {
	public:
		%feature("autodoc", "1");
		OSD_Exception_FLT_DIVIDE_BY_ZERO();
		%feature("autodoc", "1");
		OSD_Exception_FLT_DIVIDE_BY_ZERO(const char * AString);
		%feature("autodoc", "1");
		static		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		static		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		static		Handle_OSD_Exception_FLT_DIVIDE_BY_ZERO NewInstance(const char * aMessage="");
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend OSD_Exception_FLT_DIVIDE_BY_ZERO {
	Handle_OSD_Exception_FLT_DIVIDE_BY_ZERO GetHandle() {
	return *(Handle_OSD_Exception_FLT_DIVIDE_BY_ZERO*) &$self;
	}
};
%extend OSD_Exception_FLT_DIVIDE_BY_ZERO {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") OSD_Exception_FLT_DIVIDE_BY_ZERO::~OSD_Exception_FLT_DIVIDE_BY_ZERO %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend OSD_Exception_FLT_DIVIDE_BY_ZERO {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor OSD_Exception_NONCONTINUABLE_EXCEPTION;
class OSD_Exception_NONCONTINUABLE_EXCEPTION : public OSD_Exception {
	public:
		%feature("autodoc", "1");
		OSD_Exception_NONCONTINUABLE_EXCEPTION();
		%feature("autodoc", "1");
		OSD_Exception_NONCONTINUABLE_EXCEPTION(const char * AString);
		%feature("autodoc", "1");
		static		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		static		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		static		Handle_OSD_Exception_NONCONTINUABLE_EXCEPTION NewInstance(const char * aMessage="");
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend OSD_Exception_NONCONTINUABLE_EXCEPTION {
	Handle_OSD_Exception_NONCONTINUABLE_EXCEPTION GetHandle() {
	return *(Handle_OSD_Exception_NONCONTINUABLE_EXCEPTION*) &$self;
	}
};
%extend OSD_Exception_NONCONTINUABLE_EXCEPTION {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") OSD_Exception_NONCONTINUABLE_EXCEPTION::~OSD_Exception_NONCONTINUABLE_EXCEPTION %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend OSD_Exception_NONCONTINUABLE_EXCEPTION {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor OSD_MAllocHook;
class OSD_MAllocHook {
	public:
		%feature("autodoc", "1");
		OSD_MAllocHook();
		%feature("autodoc", "1");
		static		void SetCallback(OSD_MAllocHook::Callback* theCB);
		%feature("autodoc", "1");
		static		OSD_MAllocHook::Callback * GetCallback();
		%feature("autodoc", "1");
		static		OSD_MAllocHook::LogFileHandler * GetLogFileHandler();
		%feature("autodoc", "1");
		static		OSD_MAllocHook::CollectBySize * GetCollectBySize();

};
%feature("shadow") OSD_MAllocHook::~OSD_MAllocHook %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend OSD_MAllocHook {
	void _kill_pointed() {
		delete $self;
	}
};
