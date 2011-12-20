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

%module Extrema
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include Extrema_renames.i


%include Extrema_required_python_modules.i


%include Extrema_dependencies.i


%include Extrema_headers.i

typedef NCollection_UBTree<int, Bnd_Sphere> Extrema_UBTreeOfSphere;
typedef NCollection_Handle<NCollection_UBTree<int, Bnd_Sphere> > Extrema_HUBTreeOfSphere;
typedef NCollection_UBTreeFiller<int,Bnd_Sphere> Extrema_UBTreeFillerOfSphere;

enum Extrema_ExtAlgo {
	Extrema_ExtAlgo_Grad,
	Extrema_ExtAlgo_Tree,
	};

enum Extrema_ExtFlag {
	Extrema_ExtFlag_MIN,
	Extrema_ExtFlag_MAX,
	Extrema_ExtFlag_MINMAX,
	};



%nodefaultctor Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfExtPC;
class Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfExtPC : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfExtPC();
		%feature("autodoc", "1");
		Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfExtPC(const Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfExtPC &aHandle);
		%feature("autodoc", "1");
		Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfExtPC(const Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfExtPC *anItem);
		%feature("autodoc", "1");
		Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfExtPC & operator=(const Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfExtPC &aHandle);
		%feature("autodoc", "1");
		Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfExtPC & operator=(const Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfExtPC *anItem);
		%feature("autodoc", "1");
		static		Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfExtPC DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfExtPC {
	Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfExtPC* GetObject() {
	return (Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfExtPC*)$self->Access();
	}
};
%feature("shadow") Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfExtPC::~Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfExtPC %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfExtPC {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Extrema_HArray1OfPOnSurf;
class Handle_Extrema_HArray1OfPOnSurf : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Extrema_HArray1OfPOnSurf();
		%feature("autodoc", "1");
		Handle_Extrema_HArray1OfPOnSurf(const Handle_Extrema_HArray1OfPOnSurf &aHandle);
		%feature("autodoc", "1");
		Handle_Extrema_HArray1OfPOnSurf(const Extrema_HArray1OfPOnSurf *anItem);
		%feature("autodoc", "1");
		Handle_Extrema_HArray1OfPOnSurf & operator=(const Handle_Extrema_HArray1OfPOnSurf &aHandle);
		%feature("autodoc", "1");
		Handle_Extrema_HArray1OfPOnSurf & operator=(const Extrema_HArray1OfPOnSurf *anItem);
		%feature("autodoc", "1");
		static		Handle_Extrema_HArray1OfPOnSurf DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Extrema_HArray1OfPOnSurf {
	Extrema_HArray1OfPOnSurf* GetObject() {
	return (Extrema_HArray1OfPOnSurf*)$self->Access();
	}
};
%feature("shadow") Handle_Extrema_HArray1OfPOnSurf::~Handle_Extrema_HArray1OfPOnSurf %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Extrema_HArray1OfPOnSurf {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Extrema_SequenceNodeOfSeqPOnCOfCCLocFOfLocECCOfLocateExtCC;
class Handle_Extrema_SequenceNodeOfSeqPOnCOfCCLocFOfLocECCOfLocateExtCC : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_Extrema_SequenceNodeOfSeqPOnCOfCCLocFOfLocECCOfLocateExtCC();
		%feature("autodoc", "1");
		Handle_Extrema_SequenceNodeOfSeqPOnCOfCCLocFOfLocECCOfLocateExtCC(const Handle_Extrema_SequenceNodeOfSeqPOnCOfCCLocFOfLocECCOfLocateExtCC &aHandle);
		%feature("autodoc", "1");
		Handle_Extrema_SequenceNodeOfSeqPOnCOfCCLocFOfLocECCOfLocateExtCC(const Extrema_SequenceNodeOfSeqPOnCOfCCLocFOfLocECCOfLocateExtCC *anItem);
		%feature("autodoc", "1");
		Handle_Extrema_SequenceNodeOfSeqPOnCOfCCLocFOfLocECCOfLocateExtCC & operator=(const Handle_Extrema_SequenceNodeOfSeqPOnCOfCCLocFOfLocECCOfLocateExtCC &aHandle);
		%feature("autodoc", "1");
		Handle_Extrema_SequenceNodeOfSeqPOnCOfCCLocFOfLocECCOfLocateExtCC & operator=(const Extrema_SequenceNodeOfSeqPOnCOfCCLocFOfLocECCOfLocateExtCC *anItem);
		%feature("autodoc", "1");
		static		Handle_Extrema_SequenceNodeOfSeqPOnCOfCCLocFOfLocECCOfLocateExtCC DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Extrema_SequenceNodeOfSeqPOnCOfCCLocFOfLocECCOfLocateExtCC {
	Extrema_SequenceNodeOfSeqPOnCOfCCLocFOfLocECCOfLocateExtCC* GetObject() {
	return (Extrema_SequenceNodeOfSeqPOnCOfCCLocFOfLocECCOfLocateExtCC*)$self->Access();
	}
};
%feature("shadow") Handle_Extrema_SequenceNodeOfSeqPOnCOfCCLocFOfLocECCOfLocateExtCC::~Handle_Extrema_SequenceNodeOfSeqPOnCOfCCLocFOfLocECCOfLocateExtCC %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Extrema_SequenceNodeOfSeqPOnCOfCCLocFOfLocECCOfLocateExtCC {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Extrema_SequenceNodeOfSeqPOnCOfCCLocFOfLocECC2dOfLocateExtCC2d;
class Handle_Extrema_SequenceNodeOfSeqPOnCOfCCLocFOfLocECC2dOfLocateExtCC2d : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_Extrema_SequenceNodeOfSeqPOnCOfCCLocFOfLocECC2dOfLocateExtCC2d();
		%feature("autodoc", "1");
		Handle_Extrema_SequenceNodeOfSeqPOnCOfCCLocFOfLocECC2dOfLocateExtCC2d(const Handle_Extrema_SequenceNodeOfSeqPOnCOfCCLocFOfLocECC2dOfLocateExtCC2d &aHandle);
		%feature("autodoc", "1");
		Handle_Extrema_SequenceNodeOfSeqPOnCOfCCLocFOfLocECC2dOfLocateExtCC2d(const Extrema_SequenceNodeOfSeqPOnCOfCCLocFOfLocECC2dOfLocateExtCC2d *anItem);
		%feature("autodoc", "1");
		Handle_Extrema_SequenceNodeOfSeqPOnCOfCCLocFOfLocECC2dOfLocateExtCC2d & operator=(const Handle_Extrema_SequenceNodeOfSeqPOnCOfCCLocFOfLocECC2dOfLocateExtCC2d &aHandle);
		%feature("autodoc", "1");
		Handle_Extrema_SequenceNodeOfSeqPOnCOfCCLocFOfLocECC2dOfLocateExtCC2d & operator=(const Extrema_SequenceNodeOfSeqPOnCOfCCLocFOfLocECC2dOfLocateExtCC2d *anItem);
		%feature("autodoc", "1");
		static		Handle_Extrema_SequenceNodeOfSeqPOnCOfCCLocFOfLocECC2dOfLocateExtCC2d DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Extrema_SequenceNodeOfSeqPOnCOfCCLocFOfLocECC2dOfLocateExtCC2d {
	Extrema_SequenceNodeOfSeqPOnCOfCCLocFOfLocECC2dOfLocateExtCC2d* GetObject() {
	return (Extrema_SequenceNodeOfSeqPOnCOfCCLocFOfLocECC2dOfLocateExtCC2d*)$self->Access();
	}
};
%feature("shadow") Handle_Extrema_SequenceNodeOfSeqPOnCOfCCLocFOfLocECC2dOfLocateExtCC2d::~Handle_Extrema_SequenceNodeOfSeqPOnCOfCCLocFOfLocECC2dOfLocateExtCC2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Extrema_SequenceNodeOfSeqPOnCOfCCLocFOfLocECC2dOfLocateExtCC2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Extrema_LCCache2dOfLocateExtCC2d;
class Handle_Extrema_LCCache2dOfLocateExtCC2d : public Handle_Standard_Transient {
	public:
		%feature("autodoc", "1");
		Handle_Extrema_LCCache2dOfLocateExtCC2d();
		%feature("autodoc", "1");
		Handle_Extrema_LCCache2dOfLocateExtCC2d(const Handle_Extrema_LCCache2dOfLocateExtCC2d &aHandle);
		%feature("autodoc", "1");
		Handle_Extrema_LCCache2dOfLocateExtCC2d(const Extrema_LCCache2dOfLocateExtCC2d *anItem);
		%feature("autodoc", "1");
		Handle_Extrema_LCCache2dOfLocateExtCC2d & operator=(const Handle_Extrema_LCCache2dOfLocateExtCC2d &aHandle);
		%feature("autodoc", "1");
		Handle_Extrema_LCCache2dOfLocateExtCC2d & operator=(const Extrema_LCCache2dOfLocateExtCC2d *anItem);
		%feature("autodoc", "1");
		static		Handle_Extrema_LCCache2dOfLocateExtCC2d DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Extrema_LCCache2dOfLocateExtCC2d {
	Extrema_LCCache2dOfLocateExtCC2d* GetObject() {
	return (Extrema_LCCache2dOfLocateExtCC2d*)$self->Access();
	}
};
%feature("shadow") Handle_Extrema_LCCache2dOfLocateExtCC2d::~Handle_Extrema_LCCache2dOfLocateExtCC2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Extrema_LCCache2dOfLocateExtCC2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Extrema_SequenceNodeOfSeqPCOfPCLocFOfLocEPCOfLocateExtPC;
class Handle_Extrema_SequenceNodeOfSeqPCOfPCLocFOfLocEPCOfLocateExtPC : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_Extrema_SequenceNodeOfSeqPCOfPCLocFOfLocEPCOfLocateExtPC();
		%feature("autodoc", "1");
		Handle_Extrema_SequenceNodeOfSeqPCOfPCLocFOfLocEPCOfLocateExtPC(const Handle_Extrema_SequenceNodeOfSeqPCOfPCLocFOfLocEPCOfLocateExtPC &aHandle);
		%feature("autodoc", "1");
		Handle_Extrema_SequenceNodeOfSeqPCOfPCLocFOfLocEPCOfLocateExtPC(const Extrema_SequenceNodeOfSeqPCOfPCLocFOfLocEPCOfLocateExtPC *anItem);
		%feature("autodoc", "1");
		Handle_Extrema_SequenceNodeOfSeqPCOfPCLocFOfLocEPCOfLocateExtPC & operator=(const Handle_Extrema_SequenceNodeOfSeqPCOfPCLocFOfLocEPCOfLocateExtPC &aHandle);
		%feature("autodoc", "1");
		Handle_Extrema_SequenceNodeOfSeqPCOfPCLocFOfLocEPCOfLocateExtPC & operator=(const Extrema_SequenceNodeOfSeqPCOfPCLocFOfLocEPCOfLocateExtPC *anItem);
		%feature("autodoc", "1");
		static		Handle_Extrema_SequenceNodeOfSeqPCOfPCLocFOfLocEPCOfLocateExtPC DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Extrema_SequenceNodeOfSeqPCOfPCLocFOfLocEPCOfLocateExtPC {
	Extrema_SequenceNodeOfSeqPCOfPCLocFOfLocEPCOfLocateExtPC* GetObject() {
	return (Extrema_SequenceNodeOfSeqPCOfPCLocFOfLocEPCOfLocateExtPC*)$self->Access();
	}
};
%feature("shadow") Handle_Extrema_SequenceNodeOfSeqPCOfPCLocFOfLocEPCOfLocateExtPC::~Handle_Extrema_SequenceNodeOfSeqPCOfPCLocFOfLocEPCOfLocateExtPC %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Extrema_SequenceNodeOfSeqPCOfPCLocFOfLocEPCOfLocateExtPC {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Extrema_HArray2OfPOnCurv;
class Handle_Extrema_HArray2OfPOnCurv : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Extrema_HArray2OfPOnCurv();
		%feature("autodoc", "1");
		Handle_Extrema_HArray2OfPOnCurv(const Handle_Extrema_HArray2OfPOnCurv &aHandle);
		%feature("autodoc", "1");
		Handle_Extrema_HArray2OfPOnCurv(const Extrema_HArray2OfPOnCurv *anItem);
		%feature("autodoc", "1");
		Handle_Extrema_HArray2OfPOnCurv & operator=(const Handle_Extrema_HArray2OfPOnCurv &aHandle);
		%feature("autodoc", "1");
		Handle_Extrema_HArray2OfPOnCurv & operator=(const Extrema_HArray2OfPOnCurv *anItem);
		%feature("autodoc", "1");
		static		Handle_Extrema_HArray2OfPOnCurv DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Extrema_HArray2OfPOnCurv {
	Extrema_HArray2OfPOnCurv* GetObject() {
	return (Extrema_HArray2OfPOnCurv*)$self->Access();
	}
};
%feature("shadow") Handle_Extrema_HArray2OfPOnCurv::~Handle_Extrema_HArray2OfPOnCurv %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Extrema_HArray2OfPOnCurv {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Extrema_HArray2OfPOnSurf;
class Handle_Extrema_HArray2OfPOnSurf : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Extrema_HArray2OfPOnSurf();
		%feature("autodoc", "1");
		Handle_Extrema_HArray2OfPOnSurf(const Handle_Extrema_HArray2OfPOnSurf &aHandle);
		%feature("autodoc", "1");
		Handle_Extrema_HArray2OfPOnSurf(const Extrema_HArray2OfPOnSurf *anItem);
		%feature("autodoc", "1");
		Handle_Extrema_HArray2OfPOnSurf & operator=(const Handle_Extrema_HArray2OfPOnSurf &aHandle);
		%feature("autodoc", "1");
		Handle_Extrema_HArray2OfPOnSurf & operator=(const Extrema_HArray2OfPOnSurf *anItem);
		%feature("autodoc", "1");
		static		Handle_Extrema_HArray2OfPOnSurf DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Extrema_HArray2OfPOnSurf {
	Extrema_HArray2OfPOnSurf* GetObject() {
	return (Extrema_HArray2OfPOnSurf*)$self->Access();
	}
};
%feature("shadow") Handle_Extrema_HArray2OfPOnSurf::~Handle_Extrema_HArray2OfPOnSurf %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Extrema_HArray2OfPOnSurf {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Extrema_SequenceNodeOfSequenceOfPOnCurv;
class Handle_Extrema_SequenceNodeOfSequenceOfPOnCurv : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_Extrema_SequenceNodeOfSequenceOfPOnCurv();
		%feature("autodoc", "1");
		Handle_Extrema_SequenceNodeOfSequenceOfPOnCurv(const Handle_Extrema_SequenceNodeOfSequenceOfPOnCurv &aHandle);
		%feature("autodoc", "1");
		Handle_Extrema_SequenceNodeOfSequenceOfPOnCurv(const Extrema_SequenceNodeOfSequenceOfPOnCurv *anItem);
		%feature("autodoc", "1");
		Handle_Extrema_SequenceNodeOfSequenceOfPOnCurv & operator=(const Handle_Extrema_SequenceNodeOfSequenceOfPOnCurv &aHandle);
		%feature("autodoc", "1");
		Handle_Extrema_SequenceNodeOfSequenceOfPOnCurv & operator=(const Extrema_SequenceNodeOfSequenceOfPOnCurv *anItem);
		%feature("autodoc", "1");
		static		Handle_Extrema_SequenceNodeOfSequenceOfPOnCurv DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Extrema_SequenceNodeOfSequenceOfPOnCurv {
	Extrema_SequenceNodeOfSequenceOfPOnCurv* GetObject() {
	return (Extrema_SequenceNodeOfSequenceOfPOnCurv*)$self->Access();
	}
};
%feature("shadow") Handle_Extrema_SequenceNodeOfSequenceOfPOnCurv::~Handle_Extrema_SequenceNodeOfSequenceOfPOnCurv %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Extrema_SequenceNodeOfSequenceOfPOnCurv {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Extrema_HArray2OfPOnCurv2d;
class Handle_Extrema_HArray2OfPOnCurv2d : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Extrema_HArray2OfPOnCurv2d();
		%feature("autodoc", "1");
		Handle_Extrema_HArray2OfPOnCurv2d(const Handle_Extrema_HArray2OfPOnCurv2d &aHandle);
		%feature("autodoc", "1");
		Handle_Extrema_HArray2OfPOnCurv2d(const Extrema_HArray2OfPOnCurv2d *anItem);
		%feature("autodoc", "1");
		Handle_Extrema_HArray2OfPOnCurv2d & operator=(const Handle_Extrema_HArray2OfPOnCurv2d &aHandle);
		%feature("autodoc", "1");
		Handle_Extrema_HArray2OfPOnCurv2d & operator=(const Extrema_HArray2OfPOnCurv2d *anItem);
		%feature("autodoc", "1");
		static		Handle_Extrema_HArray2OfPOnCurv2d DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Extrema_HArray2OfPOnCurv2d {
	Extrema_HArray2OfPOnCurv2d* GetObject() {
	return (Extrema_HArray2OfPOnCurv2d*)$self->Access();
	}
};
%feature("shadow") Handle_Extrema_HArray2OfPOnCurv2d::~Handle_Extrema_HArray2OfPOnCurv2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Extrema_HArray2OfPOnCurv2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Extrema_HArray1OfPOnCurv2d;
class Handle_Extrema_HArray1OfPOnCurv2d : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Extrema_HArray1OfPOnCurv2d();
		%feature("autodoc", "1");
		Handle_Extrema_HArray1OfPOnCurv2d(const Handle_Extrema_HArray1OfPOnCurv2d &aHandle);
		%feature("autodoc", "1");
		Handle_Extrema_HArray1OfPOnCurv2d(const Extrema_HArray1OfPOnCurv2d *anItem);
		%feature("autodoc", "1");
		Handle_Extrema_HArray1OfPOnCurv2d & operator=(const Handle_Extrema_HArray1OfPOnCurv2d &aHandle);
		%feature("autodoc", "1");
		Handle_Extrema_HArray1OfPOnCurv2d & operator=(const Extrema_HArray1OfPOnCurv2d *anItem);
		%feature("autodoc", "1");
		static		Handle_Extrema_HArray1OfPOnCurv2d DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Extrema_HArray1OfPOnCurv2d {
	Extrema_HArray1OfPOnCurv2d* GetObject() {
	return (Extrema_HArray1OfPOnCurv2d*)$self->Access();
	}
};
%feature("shadow") Handle_Extrema_HArray1OfPOnCurv2d::~Handle_Extrema_HArray1OfPOnCurv2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Extrema_HArray1OfPOnCurv2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfELCC2dOfLocateExtCC2d;
class Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfELCC2dOfLocateExtCC2d : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfELCC2dOfLocateExtCC2d();
		%feature("autodoc", "1");
		Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfELCC2dOfLocateExtCC2d(const Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfELCC2dOfLocateExtCC2d &aHandle);
		%feature("autodoc", "1");
		Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfELCC2dOfLocateExtCC2d(const Extrema_SequenceNodeOfSeqPOnCOfCCFOfELCC2dOfLocateExtCC2d *anItem);
		%feature("autodoc", "1");
		Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfELCC2dOfLocateExtCC2d & operator=(const Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfELCC2dOfLocateExtCC2d &aHandle);
		%feature("autodoc", "1");
		Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfELCC2dOfLocateExtCC2d & operator=(const Extrema_SequenceNodeOfSeqPOnCOfCCFOfELCC2dOfLocateExtCC2d *anItem);
		%feature("autodoc", "1");
		static		Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfELCC2dOfLocateExtCC2d DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfELCC2dOfLocateExtCC2d {
	Extrema_SequenceNodeOfSeqPOnCOfCCFOfELCC2dOfLocateExtCC2d* GetObject() {
	return (Extrema_SequenceNodeOfSeqPOnCOfCCFOfELCC2dOfLocateExtCC2d*)$self->Access();
	}
};
%feature("shadow") Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfELCC2dOfLocateExtCC2d::~Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfELCC2dOfLocateExtCC2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfELCC2dOfLocateExtCC2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfELPCOfLocateExtPC;
class Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfELPCOfLocateExtPC : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfELPCOfLocateExtPC();
		%feature("autodoc", "1");
		Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfELPCOfLocateExtPC(const Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfELPCOfLocateExtPC &aHandle);
		%feature("autodoc", "1");
		Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfELPCOfLocateExtPC(const Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfELPCOfLocateExtPC *anItem);
		%feature("autodoc", "1");
		Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfELPCOfLocateExtPC & operator=(const Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfELPCOfLocateExtPC &aHandle);
		%feature("autodoc", "1");
		Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfELPCOfLocateExtPC & operator=(const Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfELPCOfLocateExtPC *anItem);
		%feature("autodoc", "1");
		static		Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfELPCOfLocateExtPC DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfELPCOfLocateExtPC {
	Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfELPCOfLocateExtPC* GetObject() {
	return (Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfELPCOfLocateExtPC*)$self->Access();
	}
};
%feature("shadow") Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfELPCOfLocateExtPC::~Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfELPCOfLocateExtPC %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfELPCOfLocateExtPC {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Extrema_LCCacheOfLocateExtCC;
class Handle_Extrema_LCCacheOfLocateExtCC : public Handle_Standard_Transient {
	public:
		%feature("autodoc", "1");
		Handle_Extrema_LCCacheOfLocateExtCC();
		%feature("autodoc", "1");
		Handle_Extrema_LCCacheOfLocateExtCC(const Handle_Extrema_LCCacheOfLocateExtCC &aHandle);
		%feature("autodoc", "1");
		Handle_Extrema_LCCacheOfLocateExtCC(const Extrema_LCCacheOfLocateExtCC *anItem);
		%feature("autodoc", "1");
		Handle_Extrema_LCCacheOfLocateExtCC & operator=(const Handle_Extrema_LCCacheOfLocateExtCC &aHandle);
		%feature("autodoc", "1");
		Handle_Extrema_LCCacheOfLocateExtCC & operator=(const Extrema_LCCacheOfLocateExtCC *anItem);
		%feature("autodoc", "1");
		static		Handle_Extrema_LCCacheOfLocateExtCC DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Extrema_LCCacheOfLocateExtCC {
	Extrema_LCCacheOfLocateExtCC* GetObject() {
	return (Extrema_LCCacheOfLocateExtCC*)$self->Access();
	}
};
%feature("shadow") Handle_Extrema_LCCacheOfLocateExtCC::~Handle_Extrema_LCCacheOfLocateExtCC %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Extrema_LCCacheOfLocateExtCC {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Extrema_HArray1OfPOnCurv;
class Handle_Extrema_HArray1OfPOnCurv : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Extrema_HArray1OfPOnCurv();
		%feature("autodoc", "1");
		Handle_Extrema_HArray1OfPOnCurv(const Handle_Extrema_HArray1OfPOnCurv &aHandle);
		%feature("autodoc", "1");
		Handle_Extrema_HArray1OfPOnCurv(const Extrema_HArray1OfPOnCurv *anItem);
		%feature("autodoc", "1");
		Handle_Extrema_HArray1OfPOnCurv & operator=(const Handle_Extrema_HArray1OfPOnCurv &aHandle);
		%feature("autodoc", "1");
		Handle_Extrema_HArray1OfPOnCurv & operator=(const Extrema_HArray1OfPOnCurv *anItem);
		%feature("autodoc", "1");
		static		Handle_Extrema_HArray1OfPOnCurv DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Extrema_HArray1OfPOnCurv {
	Extrema_HArray1OfPOnCurv* GetObject() {
	return (Extrema_HArray1OfPOnCurv*)$self->Access();
	}
};
%feature("shadow") Handle_Extrema_HArray1OfPOnCurv::~Handle_Extrema_HArray1OfPOnCurv %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Extrema_HArray1OfPOnCurv {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfECCOfExtCC;
class Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfECCOfExtCC : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfECCOfExtCC();
		%feature("autodoc", "1");
		Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfECCOfExtCC(const Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfECCOfExtCC &aHandle);
		%feature("autodoc", "1");
		Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfECCOfExtCC(const Extrema_SequenceNodeOfSeqPOnCOfCCFOfECCOfExtCC *anItem);
		%feature("autodoc", "1");
		Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfECCOfExtCC & operator=(const Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfECCOfExtCC &aHandle);
		%feature("autodoc", "1");
		Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfECCOfExtCC & operator=(const Extrema_SequenceNodeOfSeqPOnCOfCCFOfECCOfExtCC *anItem);
		%feature("autodoc", "1");
		static		Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfECCOfExtCC DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfECCOfExtCC {
	Extrema_SequenceNodeOfSeqPOnCOfCCFOfECCOfExtCC* GetObject() {
	return (Extrema_SequenceNodeOfSeqPOnCOfCCFOfECCOfExtCC*)$self->Access();
	}
};
%feature("shadow") Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfECCOfExtCC::~Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfECCOfExtCC %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfECCOfExtCC {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Extrema_SequenceNodeOfSequenceOfPOnSurf;
class Handle_Extrema_SequenceNodeOfSequenceOfPOnSurf : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_Extrema_SequenceNodeOfSequenceOfPOnSurf();
		%feature("autodoc", "1");
		Handle_Extrema_SequenceNodeOfSequenceOfPOnSurf(const Handle_Extrema_SequenceNodeOfSequenceOfPOnSurf &aHandle);
		%feature("autodoc", "1");
		Handle_Extrema_SequenceNodeOfSequenceOfPOnSurf(const Extrema_SequenceNodeOfSequenceOfPOnSurf *anItem);
		%feature("autodoc", "1");
		Handle_Extrema_SequenceNodeOfSequenceOfPOnSurf & operator=(const Handle_Extrema_SequenceNodeOfSequenceOfPOnSurf &aHandle);
		%feature("autodoc", "1");
		Handle_Extrema_SequenceNodeOfSequenceOfPOnSurf & operator=(const Extrema_SequenceNodeOfSequenceOfPOnSurf *anItem);
		%feature("autodoc", "1");
		static		Handle_Extrema_SequenceNodeOfSequenceOfPOnSurf DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Extrema_SequenceNodeOfSequenceOfPOnSurf {
	Extrema_SequenceNodeOfSequenceOfPOnSurf* GetObject() {
	return (Extrema_SequenceNodeOfSequenceOfPOnSurf*)$self->Access();
	}
};
%feature("shadow") Handle_Extrema_SequenceNodeOfSequenceOfPOnSurf::~Handle_Extrema_SequenceNodeOfSequenceOfPOnSurf %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Extrema_SequenceNodeOfSequenceOfPOnSurf {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Extrema_CCacheOfExtCC;
class Handle_Extrema_CCacheOfExtCC : public Handle_Standard_Transient {
	public:
		%feature("autodoc", "1");
		Handle_Extrema_CCacheOfExtCC();
		%feature("autodoc", "1");
		Handle_Extrema_CCacheOfExtCC(const Handle_Extrema_CCacheOfExtCC &aHandle);
		%feature("autodoc", "1");
		Handle_Extrema_CCacheOfExtCC(const Extrema_CCacheOfExtCC *anItem);
		%feature("autodoc", "1");
		Handle_Extrema_CCacheOfExtCC & operator=(const Handle_Extrema_CCacheOfExtCC &aHandle);
		%feature("autodoc", "1");
		Handle_Extrema_CCacheOfExtCC & operator=(const Extrema_CCacheOfExtCC *anItem);
		%feature("autodoc", "1");
		static		Handle_Extrema_CCacheOfExtCC DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Extrema_CCacheOfExtCC {
	Extrema_CCacheOfExtCC* GetObject() {
	return (Extrema_CCacheOfExtCC*)$self->Access();
	}
};
%feature("shadow") Handle_Extrema_CCacheOfExtCC::~Handle_Extrema_CCacheOfExtCC %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Extrema_CCacheOfExtCC {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Extrema_SequenceNodeOfSequenceOfPOnCurv2d;
class Handle_Extrema_SequenceNodeOfSequenceOfPOnCurv2d : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_Extrema_SequenceNodeOfSequenceOfPOnCurv2d();
		%feature("autodoc", "1");
		Handle_Extrema_SequenceNodeOfSequenceOfPOnCurv2d(const Handle_Extrema_SequenceNodeOfSequenceOfPOnCurv2d &aHandle);
		%feature("autodoc", "1");
		Handle_Extrema_SequenceNodeOfSequenceOfPOnCurv2d(const Extrema_SequenceNodeOfSequenceOfPOnCurv2d *anItem);
		%feature("autodoc", "1");
		Handle_Extrema_SequenceNodeOfSequenceOfPOnCurv2d & operator=(const Handle_Extrema_SequenceNodeOfSequenceOfPOnCurv2d &aHandle);
		%feature("autodoc", "1");
		Handle_Extrema_SequenceNodeOfSequenceOfPOnCurv2d & operator=(const Extrema_SequenceNodeOfSequenceOfPOnCurv2d *anItem);
		%feature("autodoc", "1");
		static		Handle_Extrema_SequenceNodeOfSequenceOfPOnCurv2d DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Extrema_SequenceNodeOfSequenceOfPOnCurv2d {
	Extrema_SequenceNodeOfSequenceOfPOnCurv2d* GetObject() {
	return (Extrema_SequenceNodeOfSequenceOfPOnCurv2d*)$self->Access();
	}
};
%feature("shadow") Handle_Extrema_SequenceNodeOfSequenceOfPOnCurv2d::~Handle_Extrema_SequenceNodeOfSequenceOfPOnCurv2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Extrema_SequenceNodeOfSequenceOfPOnCurv2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Extrema_CCache2dOfExtCC2d;
class Handle_Extrema_CCache2dOfExtCC2d : public Handle_Standard_Transient {
	public:
		%feature("autodoc", "1");
		Handle_Extrema_CCache2dOfExtCC2d();
		%feature("autodoc", "1");
		Handle_Extrema_CCache2dOfExtCC2d(const Handle_Extrema_CCache2dOfExtCC2d &aHandle);
		%feature("autodoc", "1");
		Handle_Extrema_CCache2dOfExtCC2d(const Extrema_CCache2dOfExtCC2d *anItem);
		%feature("autodoc", "1");
		Handle_Extrema_CCache2dOfExtCC2d & operator=(const Handle_Extrema_CCache2dOfExtCC2d &aHandle);
		%feature("autodoc", "1");
		Handle_Extrema_CCache2dOfExtCC2d & operator=(const Extrema_CCache2dOfExtCC2d *anItem);
		%feature("autodoc", "1");
		static		Handle_Extrema_CCache2dOfExtCC2d DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Extrema_CCache2dOfExtCC2d {
	Extrema_CCache2dOfExtCC2d* GetObject() {
	return (Extrema_CCache2dOfExtCC2d*)$self->Access();
	}
};
%feature("shadow") Handle_Extrema_CCache2dOfExtCC2d::~Handle_Extrema_CCache2dOfExtCC2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Extrema_CCache2dOfExtCC2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfExtPC2d;
class Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfExtPC2d : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfExtPC2d();
		%feature("autodoc", "1");
		Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfExtPC2d(const Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfExtPC2d &aHandle);
		%feature("autodoc", "1");
		Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfExtPC2d(const Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfExtPC2d *anItem);
		%feature("autodoc", "1");
		Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfExtPC2d & operator=(const Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfExtPC2d &aHandle);
		%feature("autodoc", "1");
		Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfExtPC2d & operator=(const Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfExtPC2d *anItem);
		%feature("autodoc", "1");
		static		Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfExtPC2d DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfExtPC2d {
	Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfExtPC2d* GetObject() {
	return (Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfExtPC2d*)$self->Access();
	}
};
%feature("shadow") Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfExtPC2d::~Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfExtPC2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfExtPC2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Extrema_SequenceNodeOfSeqPCOfPCLocFOfLocEPCOfLocateExtPC2d;
class Handle_Extrema_SequenceNodeOfSeqPCOfPCLocFOfLocEPCOfLocateExtPC2d : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_Extrema_SequenceNodeOfSeqPCOfPCLocFOfLocEPCOfLocateExtPC2d();
		%feature("autodoc", "1");
		Handle_Extrema_SequenceNodeOfSeqPCOfPCLocFOfLocEPCOfLocateExtPC2d(const Handle_Extrema_SequenceNodeOfSeqPCOfPCLocFOfLocEPCOfLocateExtPC2d &aHandle);
		%feature("autodoc", "1");
		Handle_Extrema_SequenceNodeOfSeqPCOfPCLocFOfLocEPCOfLocateExtPC2d(const Extrema_SequenceNodeOfSeqPCOfPCLocFOfLocEPCOfLocateExtPC2d *anItem);
		%feature("autodoc", "1");
		Handle_Extrema_SequenceNodeOfSeqPCOfPCLocFOfLocEPCOfLocateExtPC2d & operator=(const Handle_Extrema_SequenceNodeOfSeqPCOfPCLocFOfLocEPCOfLocateExtPC2d &aHandle);
		%feature("autodoc", "1");
		Handle_Extrema_SequenceNodeOfSeqPCOfPCLocFOfLocEPCOfLocateExtPC2d & operator=(const Extrema_SequenceNodeOfSeqPCOfPCLocFOfLocEPCOfLocateExtPC2d *anItem);
		%feature("autodoc", "1");
		static		Handle_Extrema_SequenceNodeOfSeqPCOfPCLocFOfLocEPCOfLocateExtPC2d DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Extrema_SequenceNodeOfSeqPCOfPCLocFOfLocEPCOfLocateExtPC2d {
	Extrema_SequenceNodeOfSeqPCOfPCLocFOfLocEPCOfLocateExtPC2d* GetObject() {
	return (Extrema_SequenceNodeOfSeqPCOfPCLocFOfLocEPCOfLocateExtPC2d*)$self->Access();
	}
};
%feature("shadow") Handle_Extrema_SequenceNodeOfSeqPCOfPCLocFOfLocEPCOfLocateExtPC2d::~Handle_Extrema_SequenceNodeOfSeqPCOfPCLocFOfLocEPCOfLocateExtPC2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Extrema_SequenceNodeOfSeqPCOfPCLocFOfLocEPCOfLocateExtPC2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfELPCOfLocateExtPC2d;
class Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfELPCOfLocateExtPC2d : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfELPCOfLocateExtPC2d();
		%feature("autodoc", "1");
		Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfELPCOfLocateExtPC2d(const Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfELPCOfLocateExtPC2d &aHandle);
		%feature("autodoc", "1");
		Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfELPCOfLocateExtPC2d(const Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfELPCOfLocateExtPC2d *anItem);
		%feature("autodoc", "1");
		Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfELPCOfLocateExtPC2d & operator=(const Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfELPCOfLocateExtPC2d &aHandle);
		%feature("autodoc", "1");
		Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfELPCOfLocateExtPC2d & operator=(const Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfELPCOfLocateExtPC2d *anItem);
		%feature("autodoc", "1");
		static		Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfELPCOfLocateExtPC2d DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfELPCOfLocateExtPC2d {
	Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfELPCOfLocateExtPC2d* GetObject() {
	return (Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfELPCOfLocateExtPC2d*)$self->Access();
	}
};
%feature("shadow") Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfELPCOfLocateExtPC2d::~Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfELPCOfLocateExtPC2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfELPCOfLocateExtPC2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfECC2dOfExtCC2d;
class Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfECC2dOfExtCC2d : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfECC2dOfExtCC2d();
		%feature("autodoc", "1");
		Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfECC2dOfExtCC2d(const Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfECC2dOfExtCC2d &aHandle);
		%feature("autodoc", "1");
		Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfECC2dOfExtCC2d(const Extrema_SequenceNodeOfSeqPOnCOfCCFOfECC2dOfExtCC2d *anItem);
		%feature("autodoc", "1");
		Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfECC2dOfExtCC2d & operator=(const Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfECC2dOfExtCC2d &aHandle);
		%feature("autodoc", "1");
		Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfECC2dOfExtCC2d & operator=(const Extrema_SequenceNodeOfSeqPOnCOfCCFOfECC2dOfExtCC2d *anItem);
		%feature("autodoc", "1");
		static		Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfECC2dOfExtCC2d DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfECC2dOfExtCC2d {
	Extrema_SequenceNodeOfSeqPOnCOfCCFOfECC2dOfExtCC2d* GetObject() {
	return (Extrema_SequenceNodeOfSeqPOnCOfCCFOfECC2dOfExtCC2d*)$self->Access();
	}
};
%feature("shadow") Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfECC2dOfExtCC2d::~Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfECC2dOfExtCC2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfECC2dOfExtCC2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfELCCOfLocateExtCC;
class Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfELCCOfLocateExtCC : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfELCCOfLocateExtCC();
		%feature("autodoc", "1");
		Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfELCCOfLocateExtCC(const Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfELCCOfLocateExtCC &aHandle);
		%feature("autodoc", "1");
		Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfELCCOfLocateExtCC(const Extrema_SequenceNodeOfSeqPOnCOfCCFOfELCCOfLocateExtCC *anItem);
		%feature("autodoc", "1");
		Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfELCCOfLocateExtCC & operator=(const Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfELCCOfLocateExtCC &aHandle);
		%feature("autodoc", "1");
		Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfELCCOfLocateExtCC & operator=(const Extrema_SequenceNodeOfSeqPOnCOfCCFOfELCCOfLocateExtCC *anItem);
		%feature("autodoc", "1");
		static		Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfELCCOfLocateExtCC DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfELCCOfLocateExtCC {
	Extrema_SequenceNodeOfSeqPOnCOfCCFOfELCCOfLocateExtCC* GetObject() {
	return (Extrema_SequenceNodeOfSeqPOnCOfCCFOfELCCOfLocateExtCC*)$self->Access();
	}
};
%feature("shadow") Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfELCCOfLocateExtCC::~Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfELCCOfLocateExtCC %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfELCCOfLocateExtCC {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Extrema_Array2OfPOnCurv2d;
class Extrema_Array2OfPOnCurv2d {
	public:
		%feature("autodoc", "1");
		Extrema_Array2OfPOnCurv2d(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		Extrema_Array2OfPOnCurv2d(const Extrema_POnCurv2d &Item, const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		void Init(const Extrema_POnCurv2d &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		const Extrema_Array2OfPOnCurv2d & Assign(const Extrema_Array2OfPOnCurv2d &Other);
		%feature("autodoc", "1");
		const Extrema_Array2OfPOnCurv2d & operator=(const Extrema_Array2OfPOnCurv2d &Other);
		%feature("autodoc", "1");
		Standard_Integer ColLength() const;
		%feature("autodoc", "1");
		Standard_Integer RowLength() const;
		%feature("autodoc", "1");
		Standard_Integer LowerCol() const;
		%feature("autodoc", "1");
		Standard_Integer LowerRow() const;
		%feature("autodoc", "1");
		Standard_Integer UpperCol() const;
		%feature("autodoc", "1");
		Standard_Integer UpperRow() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const Extrema_POnCurv2d &Value);
		%feature("autodoc", "1");
		const Extrema_POnCurv2d & Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		const Extrema_POnCurv2d & operator()(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		Extrema_POnCurv2d & ChangeValue(const Standard_Integer Row, const Standard_Integer Col);
		%feature("autodoc", "1");
		Extrema_POnCurv2d & operator()(const Standard_Integer Row, const Standard_Integer Col);

};
%feature("shadow") Extrema_Array2OfPOnCurv2d::~Extrema_Array2OfPOnCurv2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Extrema_Array2OfPOnCurv2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Extrema_LocECC2dOfLocateExtCC2d;
class Extrema_LocECC2dOfLocateExtCC2d {
	public:
		%feature("autodoc", "1");
		Extrema_LocECC2dOfLocateExtCC2d(const Adaptor2d_Curve2d &C1, const Adaptor2d_Curve2d &C2, const Standard_Real U0, const Standard_Real V0, const Standard_Real TolU, const Standard_Real TolV);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Real SquareDistance() const;
		%feature("autodoc", "1");
		void Point(Extrema_POnCurv2d & P1, Extrema_POnCurv2d & P2) const;

};
%feature("shadow") Extrema_LocECC2dOfLocateExtCC2d::~Extrema_LocECC2dOfLocateExtCC2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Extrema_LocECC2dOfLocateExtCC2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Extrema_ExtPC;
class Extrema_ExtPC {
	public:
		%feature("autodoc", "1");
		Extrema_ExtPC();
		%feature("autodoc", "1");
		Extrema_ExtPC(const gp_Pnt P, const Adaptor3d_Curve &C, const Standard_Real Uinf, const Standard_Real Usup, const Standard_Real TolF=1.0000000000000000364321973154977415791655470656e-10);
		%feature("autodoc", "1");
		Extrema_ExtPC(const gp_Pnt P, const Adaptor3d_Curve &C, const Standard_Real TolF=1.0000000000000000364321973154977415791655470656e-10);
		%feature("autodoc", "1");
		void Initialize(const Adaptor3d_Curve &C, const Standard_Real Uinf, const Standard_Real Usup, const Standard_Real TolF=1.0000000000000000364321973154977415791655470656e-10);
		%feature("autodoc", "1");
		void Perform(const gp_Pnt P);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Real SquareDistance(const Standard_Integer N) const;
		%feature("autodoc", "1");
		Standard_Integer NbExt() const;
		%feature("autodoc", "1");
		Standard_Boolean IsMin(const Standard_Integer N) const;
		%feature("autodoc", "1");
		Extrema_POnCurv Point(const Standard_Integer N) const;
		%feature("autodoc","TrimmedSquareDistances() -> [Standard_Real, Standard_Real]");

		void TrimmedSquareDistances(Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt & P1, gp_Pnt & P2) const;

};
%feature("shadow") Extrema_ExtPC::~Extrema_ExtPC %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Extrema_ExtPC {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Extrema_ExtPS;
class Extrema_ExtPS {
	public:
		%feature("autodoc", "1");
		Extrema_ExtPS();
		%feature("autodoc", "1");
		Extrema_ExtPS(const gp_Pnt P, const Adaptor3d_Surface &S, const Standard_Real TolU, const Standard_Real TolV, const Extrema_ExtFlag F=Extrema_ExtFlag_MINMAX, const Extrema_ExtAlgo A=Extrema_ExtAlgo_Grad);
		%feature("autodoc", "1");
		Extrema_ExtPS(const gp_Pnt P, const Adaptor3d_Surface &S, const Standard_Real Uinf, const Standard_Real Usup, const Standard_Real Vinf, const Standard_Real Vsup, const Standard_Real TolU, const Standard_Real TolV, const Extrema_ExtFlag F=Extrema_ExtFlag_MINMAX, const Extrema_ExtAlgo A=Extrema_ExtAlgo_Grad);
		%feature("autodoc", "1");
		void Initialize(const Adaptor3d_Surface &S, const Standard_Real Uinf, const Standard_Real Usup, const Standard_Real Vinf, const Standard_Real Vsup, const Standard_Real TolU, const Standard_Real TolV);
		%feature("autodoc", "1");
		void Perform(const gp_Pnt P);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbExt() const;
		%feature("autodoc", "1");
		Standard_Real SquareDistance(const Standard_Integer N) const;
		%feature("autodoc", "1");
		Extrema_POnSurf Point(const Standard_Integer N) const;
		%feature("autodoc","TrimmedSquareDistances() -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real]");

		void TrimmedSquareDistances(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt & PUfVf, gp_Pnt & PUfVl, gp_Pnt & PUlVf, gp_Pnt & PUlVl) const;
		%feature("autodoc", "1");
		void SetFlag(const Extrema_ExtFlag F);
		%feature("autodoc", "1");
		void SetAlgo(const Extrema_ExtAlgo A);

};
%feature("shadow") Extrema_ExtPS::~Extrema_ExtPS %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Extrema_ExtPS {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Extrema_SeqPCOfPCFOfEPCOfELPCOfLocateExtPC2d;
class Extrema_SeqPCOfPCFOfEPCOfELPCOfLocateExtPC2d : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		Extrema_SeqPCOfPCFOfEPCOfELPCOfLocateExtPC2d();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const Extrema_SeqPCOfPCFOfEPCOfELPCOfLocateExtPC2d & Assign(const Extrema_SeqPCOfPCFOfEPCOfELPCOfLocateExtPC2d &Other);
		%feature("autodoc", "1");
		const Extrema_SeqPCOfPCFOfEPCOfELPCOfLocateExtPC2d & operator=(const Extrema_SeqPCOfPCFOfEPCOfELPCOfLocateExtPC2d &Other);
		%feature("autodoc", "1");
		void Append(const Extrema_POnCurv2d &T);
		%feature("autodoc", "1");
		void Append(Extrema_SeqPCOfPCFOfEPCOfELPCOfLocateExtPC2d & S);
		%feature("autodoc", "1");
		void Prepend(const Extrema_POnCurv2d &T);
		%feature("autodoc", "1");
		void Prepend(Extrema_SeqPCOfPCFOfEPCOfELPCOfLocateExtPC2d & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Extrema_POnCurv2d &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, Extrema_SeqPCOfPCFOfEPCOfELPCOfLocateExtPC2d & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Extrema_POnCurv2d &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, Extrema_SeqPCOfPCFOfEPCOfELPCOfLocateExtPC2d & S);
		%feature("autodoc", "1");
		const Extrema_POnCurv2d & First() const;
		%feature("autodoc", "1");
		const Extrema_POnCurv2d & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, Extrema_SeqPCOfPCFOfEPCOfELPCOfLocateExtPC2d & S);
		%feature("autodoc", "1");
		const Extrema_POnCurv2d & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Extrema_POnCurv2d & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Extrema_POnCurv2d &I);
		%feature("autodoc", "1");
		Extrema_POnCurv2d & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Extrema_POnCurv2d & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") Extrema_SeqPCOfPCFOfEPCOfELPCOfLocateExtPC2d::~Extrema_SeqPCOfPCFOfEPCOfELPCOfLocateExtPC2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Extrema_SeqPCOfPCFOfEPCOfELPCOfLocateExtPC2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Extrema_LCCacheOfLocateExtCC;
class Extrema_LCCacheOfLocateExtCC : public Standard_Transient {
	public:
		%feature("autodoc", "1");
		Extrema_LCCacheOfLocateExtCC();
		%feature("autodoc", "1");
		Extrema_LCCacheOfLocateExtCC(const Adaptor3d_Curve &theC, const Standard_Real theUFirst, const Standard_Real theULast, const Standard_Integer theNbSamples, const Standard_Boolean theToCalculate);
		%feature("autodoc", "1");
		void SetCurve(const Adaptor3d_Curve &theC, const Standard_Integer theNbSamples, const Standard_Boolean theToCalculate);
		%feature("autodoc", "1");
		void SetCurve(const Adaptor3d_Curve &theC, const Standard_Real theUFirst, const Standard_Real theULast, const Standard_Integer theNbSamples, const Standard_Boolean theToCalculate);
		%feature("autodoc", "1");
		void SetRange(const Standard_Real Uinf, const Standard_Real Usup, const Standard_Boolean theToCalculate);
		%feature("autodoc", "1");
		void CalculatePoints();
		%feature("autodoc", "1");
		Standard_Boolean IsValid() const;
		%feature("autodoc", "1");
		const Handle_TColgp_HArray1OfPnt & Points() const;
		%feature("autodoc", "1");
		Standard_Address CurvePtr() const;
		%feature("autodoc", "1");
		Standard_Integer NbSamples() const;
		%feature("autodoc", "1");
		Standard_Real FirstParameter() const;
		%feature("autodoc", "1");
		Standard_Real LastParameter() const;
		%feature("autodoc", "1");
		Standard_Real TrimFirstParameter() const;
		%feature("autodoc", "1");
		Standard_Real TrimLastParameter() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Extrema_LCCacheOfLocateExtCC {
	Handle_Extrema_LCCacheOfLocateExtCC GetHandle() {
	return *(Handle_Extrema_LCCacheOfLocateExtCC*) &$self;
	}
};
%extend Extrema_LCCacheOfLocateExtCC {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") Extrema_LCCacheOfLocateExtCC::~Extrema_LCCacheOfLocateExtCC %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Extrema_LCCacheOfLocateExtCC {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Extrema_ExtSS;
class Extrema_ExtSS {
	public:
		%feature("autodoc", "1");
		Extrema_ExtSS();
		%feature("autodoc", "1");
		Extrema_ExtSS(const Adaptor3d_Surface &S1, const Adaptor3d_Surface &S2, const Standard_Real TolS1, const Standard_Real TolS2);
		%feature("autodoc", "1");
		Extrema_ExtSS(const Adaptor3d_Surface &S1, const Adaptor3d_Surface &S2, const Standard_Real Uinf1, const Standard_Real Usup1, const Standard_Real Vinf1, const Standard_Real Vsup1, const Standard_Real Uinf2, const Standard_Real Usup2, const Standard_Real Vinf2, const Standard_Real Vsup2, const Standard_Real TolS1, const Standard_Real TolS2);
		%feature("autodoc", "1");
		void Initialize(const Adaptor3d_Surface &S2, const Standard_Real Uinf2, const Standard_Real Usup2, const Standard_Real Vinf2, const Standard_Real Vsup2, const Standard_Real TolS1);
		%feature("autodoc", "1");
		void Perform(const Adaptor3d_Surface &S1, const Standard_Real Uinf1, const Standard_Real Usup1, const Standard_Real Vinf1, const Standard_Real Vsup1, const Standard_Real TolS1);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Boolean IsParallel() const;
		%feature("autodoc", "1");
		Standard_Integer NbExt() const;
		%feature("autodoc", "1");
		Standard_Real SquareDistance(const Standard_Integer N) const;
		%feature("autodoc", "1");
		void Points(const Standard_Integer N, Extrema_POnSurf & P1, Extrema_POnSurf & P2) const;

};
%feature("shadow") Extrema_ExtSS::~Extrema_ExtSS %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Extrema_ExtSS {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Extrema_CCFOfELCCOfLocateExtCC;
class Extrema_CCFOfELCCOfLocateExtCC : public math_FunctionSetWithDerivatives {
	public:
		%feature("autodoc", "1");
		Extrema_CCFOfELCCOfLocateExtCC(const Standard_Real thetol=1.0000000000000000364321973154977415791655470656e-10);
		%feature("autodoc", "1");
		Extrema_CCFOfELCCOfLocateExtCC(const Adaptor3d_Curve &C1, const Adaptor3d_Curve &C2, const Standard_Real thetol=1.0000000000000000364321973154977415791655470656e-10);
		%feature("autodoc", "1");
		void SetCurve(const Standard_Integer theRank, const Adaptor3d_Curve &C);
		%feature("autodoc", "1");
		void SetTolerance(const Standard_Real theTol);
		%feature("autodoc", "1");
		virtual		Standard_Integer NbVariables() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbEquations() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Value(const math_Vector &UV, math_Vector & F);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Derivatives(const math_Vector &UV, math_Matrix & DF);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Values(const math_Vector &UV, math_Vector & F, math_Matrix & DF);
		%feature("autodoc", "1");
		virtual		Standard_Integer GetStateNumber();
		%feature("autodoc", "1");
		Standard_Integer NbExt() const;
		%feature("autodoc", "1");
		Standard_Real SquareDistance(const Standard_Integer N) const;
		%feature("autodoc", "1");
		void Points(const Standard_Integer N, Extrema_POnCurv & P1, Extrema_POnCurv & P2) const;
		%feature("autodoc", "1");
		Standard_Address CurvePtr(const Standard_Integer theRank) const;
		%feature("autodoc", "1");
		Standard_Real Tolerance() const;

};
%feature("shadow") Extrema_CCFOfELCCOfLocateExtCC::~Extrema_CCFOfELCCOfLocateExtCC %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Extrema_CCFOfELCCOfLocateExtCC {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Extrema_SeqPOnCOfCCLocFOfLocECC2dOfLocateExtCC2d;
class Extrema_SeqPOnCOfCCLocFOfLocECC2dOfLocateExtCC2d : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		Extrema_SeqPOnCOfCCLocFOfLocECC2dOfLocateExtCC2d();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const Extrema_SeqPOnCOfCCLocFOfLocECC2dOfLocateExtCC2d & Assign(const Extrema_SeqPOnCOfCCLocFOfLocECC2dOfLocateExtCC2d &Other);
		%feature("autodoc", "1");
		const Extrema_SeqPOnCOfCCLocFOfLocECC2dOfLocateExtCC2d & operator=(const Extrema_SeqPOnCOfCCLocFOfLocECC2dOfLocateExtCC2d &Other);
		%feature("autodoc", "1");
		void Append(const Extrema_POnCurv2d &T);
		%feature("autodoc", "1");
		void Append(Extrema_SeqPOnCOfCCLocFOfLocECC2dOfLocateExtCC2d & S);
		%feature("autodoc", "1");
		void Prepend(const Extrema_POnCurv2d &T);
		%feature("autodoc", "1");
		void Prepend(Extrema_SeqPOnCOfCCLocFOfLocECC2dOfLocateExtCC2d & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Extrema_POnCurv2d &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, Extrema_SeqPOnCOfCCLocFOfLocECC2dOfLocateExtCC2d & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Extrema_POnCurv2d &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, Extrema_SeqPOnCOfCCLocFOfLocECC2dOfLocateExtCC2d & S);
		%feature("autodoc", "1");
		const Extrema_POnCurv2d & First() const;
		%feature("autodoc", "1");
		const Extrema_POnCurv2d & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, Extrema_SeqPOnCOfCCLocFOfLocECC2dOfLocateExtCC2d & S);
		%feature("autodoc", "1");
		const Extrema_POnCurv2d & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Extrema_POnCurv2d & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Extrema_POnCurv2d &I);
		%feature("autodoc", "1");
		Extrema_POnCurv2d & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Extrema_POnCurv2d & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") Extrema_SeqPOnCOfCCLocFOfLocECC2dOfLocateExtCC2d::~Extrema_SeqPOnCOfCCLocFOfLocECC2dOfLocateExtCC2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Extrema_SeqPOnCOfCCLocFOfLocECC2dOfLocateExtCC2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Extrema_ExtCC2d;
class Extrema_ExtCC2d {
	public:
		%feature("autodoc", "1");
		Extrema_ExtCC2d();
		%feature("autodoc", "1");
		Extrema_ExtCC2d(const Adaptor2d_Curve2d &C1, const Adaptor2d_Curve2d &C2, const Standard_Real TolC1=1.0000000000000000364321973154977415791655470656e-10, const Standard_Real TolC2=1.0000000000000000364321973154977415791655470656e-10);
		%feature("autodoc", "1");
		Extrema_ExtCC2d(const Adaptor2d_Curve2d &C1, const Adaptor2d_Curve2d &C2, const Standard_Real U1, const Standard_Real U2, const Standard_Real V1, const Standard_Real V2, const Standard_Real TolC1=1.0000000000000000364321973154977415791655470656e-10, const Standard_Real TolC2=1.0000000000000000364321973154977415791655470656e-10);
		%feature("autodoc", "1");
		void Initialize(const Adaptor2d_Curve2d &C2, const Standard_Real V1, const Standard_Real V2, const Standard_Real TolC1=1.0000000000000000364321973154977415791655470656e-10, const Standard_Real TolC2=1.0000000000000000364321973154977415791655470656e-10);
		%feature("autodoc", "1");
		void Perform(const Adaptor2d_Curve2d &C1, const Standard_Real U1, const Standard_Real U2);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbExt() const;
		%feature("autodoc", "1");
		Standard_Boolean IsParallel() const;
		%feature("autodoc", "1");
		Standard_Real SquareDistance(const Standard_Integer N=1) const;
		%feature("autodoc", "1");
		void Points(const Standard_Integer N, Extrema_POnCurv2d & P1, Extrema_POnCurv2d & P2) const;
		%feature("autodoc","TrimmedSquareDistances() -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real]");

		void TrimmedSquareDistances(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & P11, gp_Pnt2d & P12, gp_Pnt2d & P21, gp_Pnt2d & P22) const;

};
%feature("shadow") Extrema_ExtCC2d::~Extrema_ExtCC2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Extrema_ExtCC2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Extrema_CurveTool;
class Extrema_CurveTool {
	public:
		%feature("autodoc", "1");
		Extrema_CurveTool();
		%feature("autodoc", "1");
		static		Standard_Real FirstParameter(const Adaptor3d_Curve &C);
		%feature("autodoc", "1");
		static		Standard_Real LastParameter(const Adaptor3d_Curve &C);
		%feature("autodoc", "1");
		static		GeomAbs_Shape Continuity(const Adaptor3d_Curve &C);
		%feature("autodoc", "1");
		static		Standard_Integer NbIntervals(Adaptor3d_Curve & C, const GeomAbs_Shape S);
		%feature("autodoc", "1");
		static		void Intervals(Adaptor3d_Curve & C, TColStd_Array1OfReal & T, const GeomAbs_Shape S);
		%feature("autodoc", "1");
		static		Standard_Boolean IsPeriodic(const Adaptor3d_Curve &C);
		%feature("autodoc", "1");
		static		Standard_Real Period(const Adaptor3d_Curve &C);
		%feature("autodoc", "1");
		static		Standard_Real Resolution(const Adaptor3d_Curve &C, const Standard_Real R3d);
		%feature("autodoc", "1");
		static		GeomAbs_CurveType GetType(const Adaptor3d_Curve &C);
		%feature("autodoc", "1");
		static		gp_Pnt Value(const Adaptor3d_Curve &C, const Standard_Real U);
		%feature("autodoc", "1");
		static		void D1(const Adaptor3d_Curve &C, const Standard_Real U, gp_Pnt & P, gp_Vec & V);
		%feature("autodoc", "1");
		static		void D2(const Adaptor3d_Curve &C, const Standard_Real U, gp_Pnt & P, gp_Vec & V1, gp_Vec & V2);
		%feature("autodoc", "1");
		static		gp_Lin Line(const Adaptor3d_Curve &C);
		%feature("autodoc", "1");
		static		gp_Circ Circle(const Adaptor3d_Curve &C);
		%feature("autodoc", "1");
		static		gp_Elips Ellipse(const Adaptor3d_Curve &C);
		%feature("autodoc", "1");
		static		gp_Hypr Hyperbola(const Adaptor3d_Curve &C);
		%feature("autodoc", "1");
		static		gp_Parab Parabola(const Adaptor3d_Curve &C);
		%feature("autodoc", "1");
		static		Standard_Integer Degree(const Adaptor3d_Curve &C);
		%feature("autodoc", "1");
		static		Standard_Boolean IsRational(const Adaptor3d_Curve &C);
		%feature("autodoc", "1");
		static		Standard_Integer NbPoles(const Adaptor3d_Curve &C);
		%feature("autodoc", "1");
		static		Standard_Integer NbKnots(const Adaptor3d_Curve &C);
		%feature("autodoc", "1");
		static		Handle_Geom_BezierCurve Bezier(const Adaptor3d_Curve &C);
		%feature("autodoc", "1");
		static		Handle_Geom_BSplineCurve BSpline(const Adaptor3d_Curve &C);

};
%feature("shadow") Extrema_CurveTool::~Extrema_CurveTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Extrema_CurveTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Extrema_Array1OfPOnSurf;
class Extrema_Array1OfPOnSurf {
	public:
		%feature("autodoc", "1");
		Extrema_Array1OfPOnSurf(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		Extrema_Array1OfPOnSurf(const Extrema_POnSurf &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Extrema_POnSurf &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const Extrema_Array1OfPOnSurf & Assign(const Extrema_Array1OfPOnSurf &Other);
		%feature("autodoc", "1");
		const Extrema_Array1OfPOnSurf & operator=(const Extrema_Array1OfPOnSurf &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Extrema_POnSurf &Value);
		%feature("autodoc", "1");
		const Extrema_POnSurf & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Extrema_POnSurf & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Extrema_POnSurf & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Extrema_POnSurf & operator()(const Standard_Integer Index);

};
%feature("shadow") Extrema_Array1OfPOnSurf::~Extrema_Array1OfPOnSurf %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Extrema_Array1OfPOnSurf {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Extrema_SeqPCOfPCLocFOfLocEPCOfLocateExtPC2d;
class Extrema_SeqPCOfPCLocFOfLocEPCOfLocateExtPC2d : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		Extrema_SeqPCOfPCLocFOfLocEPCOfLocateExtPC2d();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const Extrema_SeqPCOfPCLocFOfLocEPCOfLocateExtPC2d & Assign(const Extrema_SeqPCOfPCLocFOfLocEPCOfLocateExtPC2d &Other);
		%feature("autodoc", "1");
		const Extrema_SeqPCOfPCLocFOfLocEPCOfLocateExtPC2d & operator=(const Extrema_SeqPCOfPCLocFOfLocEPCOfLocateExtPC2d &Other);
		%feature("autodoc", "1");
		void Append(const Extrema_POnCurv2d &T);
		%feature("autodoc", "1");
		void Append(Extrema_SeqPCOfPCLocFOfLocEPCOfLocateExtPC2d & S);
		%feature("autodoc", "1");
		void Prepend(const Extrema_POnCurv2d &T);
		%feature("autodoc", "1");
		void Prepend(Extrema_SeqPCOfPCLocFOfLocEPCOfLocateExtPC2d & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Extrema_POnCurv2d &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, Extrema_SeqPCOfPCLocFOfLocEPCOfLocateExtPC2d & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Extrema_POnCurv2d &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, Extrema_SeqPCOfPCLocFOfLocEPCOfLocateExtPC2d & S);
		%feature("autodoc", "1");
		const Extrema_POnCurv2d & First() const;
		%feature("autodoc", "1");
		const Extrema_POnCurv2d & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, Extrema_SeqPCOfPCLocFOfLocEPCOfLocateExtPC2d & S);
		%feature("autodoc", "1");
		const Extrema_POnCurv2d & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Extrema_POnCurv2d & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Extrema_POnCurv2d &I);
		%feature("autodoc", "1");
		Extrema_POnCurv2d & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Extrema_POnCurv2d & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") Extrema_SeqPCOfPCLocFOfLocEPCOfLocateExtPC2d::~Extrema_SeqPCOfPCLocFOfLocEPCOfLocateExtPC2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Extrema_SeqPCOfPCLocFOfLocEPCOfLocateExtPC2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Extrema_SequenceNodeOfSeqPCOfPCLocFOfLocEPCOfLocateExtPC;
class Extrema_SequenceNodeOfSeqPCOfPCLocFOfLocEPCOfLocateExtPC : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Extrema_SequenceNodeOfSeqPCOfPCLocFOfLocEPCOfLocateExtPC(const Extrema_POnCurv &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Extrema_POnCurv & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Extrema_SequenceNodeOfSeqPCOfPCLocFOfLocEPCOfLocateExtPC {
	Handle_Extrema_SequenceNodeOfSeqPCOfPCLocFOfLocEPCOfLocateExtPC GetHandle() {
	return *(Handle_Extrema_SequenceNodeOfSeqPCOfPCLocFOfLocEPCOfLocateExtPC*) &$self;
	}
};
%extend Extrema_SequenceNodeOfSeqPCOfPCLocFOfLocEPCOfLocateExtPC {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") Extrema_SequenceNodeOfSeqPCOfPCLocFOfLocEPCOfLocateExtPC::~Extrema_SequenceNodeOfSeqPCOfPCLocFOfLocEPCOfLocateExtPC %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Extrema_SequenceNodeOfSeqPCOfPCLocFOfLocEPCOfLocateExtPC {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Extrema_ExtElCS;
class Extrema_ExtElCS {
	public:
		%feature("autodoc", "1");
		Extrema_ExtElCS();
		%feature("autodoc", "1");
		Extrema_ExtElCS(const gp_Lin C, const gp_Pln S);
		%feature("autodoc", "1");
		void Perform(const gp_Lin C, const gp_Pln S);
		%feature("autodoc", "1");
		Extrema_ExtElCS(const gp_Lin C, const gp_Cylinder S);
		%feature("autodoc", "1");
		void Perform(const gp_Lin C, const gp_Cylinder S);
		%feature("autodoc", "1");
		Extrema_ExtElCS(const gp_Lin C, const gp_Cone S);
		%feature("autodoc", "1");
		void Perform(const gp_Lin C, const gp_Cone S);
		%feature("autodoc", "1");
		Extrema_ExtElCS(const gp_Lin C, const gp_Sphere S);
		%feature("autodoc", "1");
		void Perform(const gp_Lin C, const gp_Sphere S);
		%feature("autodoc", "1");
		Extrema_ExtElCS(const gp_Lin C, const gp_Torus S);
		%feature("autodoc", "1");
		void Perform(const gp_Lin C, const gp_Torus S);
		%feature("autodoc", "1");
		Extrema_ExtElCS(const gp_Circ C, const gp_Pln S);
		%feature("autodoc", "1");
		void Perform(const gp_Circ C, const gp_Pln S);
		%feature("autodoc", "1");
		Extrema_ExtElCS(const gp_Circ C, const gp_Cylinder S);
		%feature("autodoc", "1");
		void Perform(const gp_Circ C, const gp_Cylinder S);
		%feature("autodoc", "1");
		Extrema_ExtElCS(const gp_Circ C, const gp_Cone S);
		%feature("autodoc", "1");
		void Perform(const gp_Circ C, const gp_Cone S);
		%feature("autodoc", "1");
		Extrema_ExtElCS(const gp_Circ C, const gp_Sphere S);
		%feature("autodoc", "1");
		void Perform(const gp_Circ C, const gp_Sphere S);
		%feature("autodoc", "1");
		Extrema_ExtElCS(const gp_Circ C, const gp_Torus S);
		%feature("autodoc", "1");
		void Perform(const gp_Circ C, const gp_Torus S);
		%feature("autodoc", "1");
		Extrema_ExtElCS(const gp_Hypr C, const gp_Pln S);
		%feature("autodoc", "1");
		void Perform(const gp_Hypr C, const gp_Pln S);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Boolean IsParallel() const;
		%feature("autodoc", "1");
		Standard_Integer NbExt() const;
		%feature("autodoc", "1");
		Standard_Real SquareDistance(const Standard_Integer N=1) const;
		%feature("autodoc", "1");
		void Points(const Standard_Integer N, Extrema_POnCurv & P1, Extrema_POnSurf & P2) const;

};
%feature("shadow") Extrema_ExtElCS::~Extrema_ExtElCS %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Extrema_ExtElCS {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Extrema_POnCurv2d;
class Extrema_POnCurv2d {
	public:
		%feature("autodoc", "1");
		Extrema_POnCurv2d();
		%feature("autodoc", "1");
		Extrema_POnCurv2d(const Standard_Real U, const gp_Pnt2d P);
		%feature("autodoc", "1");
		void SetValues(const Standard_Real U, const gp_Pnt2d P);
		%feature("autodoc", "1");
		const gp_Pnt2d  Value() const;
		%feature("autodoc", "1");
		Standard_Real Parameter() const;
		%feature("autodoc", "1");
		Standard_Real _CSFDB_GetExtrema_POnCurv2dmyU() const;
		%feature("autodoc", "1");
		void _CSFDB_SetExtrema_POnCurv2dmyU(const Standard_Real p);
		%feature("autodoc", "1");
		const gp_Pnt2d  _CSFDB_GetExtrema_POnCurv2dmyP() const;

};
%feature("shadow") Extrema_POnCurv2d::~Extrema_POnCurv2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Extrema_POnCurv2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Extrema_GenLocateExtSS;
class Extrema_GenLocateExtSS {
	public:
		%feature("autodoc", "1");
		Extrema_GenLocateExtSS();
		%feature("autodoc", "1");
		Extrema_GenLocateExtSS(const Adaptor3d_Surface &S1, const Adaptor3d_Surface &S2, const Standard_Real U1, const Standard_Real V1, const Standard_Real U2, const Standard_Real V2, const Standard_Real Tol1, const Standard_Real Tol2);
		%feature("autodoc", "1");
		void Perform(const Adaptor3d_Surface &S1, const Adaptor3d_Surface &S2, const Standard_Real U1, const Standard_Real V1, const Standard_Real U2, const Standard_Real V2, const Standard_Real Tol1, const Standard_Real Tol2);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Real SquareDistance() const;
		%feature("autodoc", "1");
		const Extrema_POnSurf & PointOnS1() const;
		%feature("autodoc", "1");
		const Extrema_POnSurf & PointOnS2() const;

};
%feature("shadow") Extrema_GenLocateExtSS::~Extrema_GenLocateExtSS %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Extrema_GenLocateExtSS {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Extrema_PCFOfEPCOfELPCOfLocateExtPC;
class Extrema_PCFOfEPCOfELPCOfLocateExtPC : public math_FunctionWithDerivative {
	public:
		%feature("autodoc", "1");
		Extrema_PCFOfEPCOfELPCOfLocateExtPC();
		%feature("autodoc", "1");
		Extrema_PCFOfEPCOfELPCOfLocateExtPC(const gp_Pnt P, const Adaptor3d_Curve &C);
		%feature("autodoc", "1");
		void Initialize(const Adaptor3d_Curve &C);
		%feature("autodoc", "1");
		void SetPoint(const gp_Pnt P);
		%feature("autodoc","Value(Standard_Real U) -> Standard_Real");

		virtual		Standard_Boolean Value(const Standard_Real U, Standard_Real &OutValue);
		%feature("autodoc","Derivative(Standard_Real U) -> Standard_Real");

		virtual		Standard_Boolean Derivative(const Standard_Real U, Standard_Real &OutValue);
		%feature("autodoc","Values(Standard_Real U) -> [Standard_Real, Standard_Real]");

		virtual		Standard_Boolean Values(const Standard_Real U, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Integer GetStateNumber();
		%feature("autodoc", "1");
		Standard_Integer NbExt() const;
		%feature("autodoc", "1");
		Standard_Real SquareDistance(const Standard_Integer N) const;
		%feature("autodoc", "1");
		Standard_Boolean IsMin(const Standard_Integer N) const;
		%feature("autodoc", "1");
		Extrema_POnCurv Point(const Standard_Integer N) const;

};
%feature("shadow") Extrema_PCFOfEPCOfELPCOfLocateExtPC::~Extrema_PCFOfEPCOfELPCOfLocateExtPC %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Extrema_PCFOfEPCOfELPCOfLocateExtPC {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Extrema_GenExtPS;
class Extrema_GenExtPS {
	public:
		%feature("autodoc", "1");
		Extrema_GenExtPS();
		%feature("autodoc", "1");
		Extrema_GenExtPS(const gp_Pnt P, const Adaptor3d_Surface &S, const Standard_Integer NbU, const Standard_Integer NbV, const Standard_Real TolU, const Standard_Real TolV, const Extrema_ExtFlag F=Extrema_ExtFlag_MINMAX, const Extrema_ExtAlgo A=Extrema_ExtAlgo_Grad);
		%feature("autodoc", "1");
		Extrema_GenExtPS(const gp_Pnt P, const Adaptor3d_Surface &S, const Standard_Integer NbU, const Standard_Integer NbV, const Standard_Real Umin, const Standard_Real Usup, const Standard_Real Vmin, const Standard_Real Vsup, const Standard_Real TolU, const Standard_Real TolV, const Extrema_ExtFlag F=Extrema_ExtFlag_MINMAX, const Extrema_ExtAlgo A=Extrema_ExtAlgo_Grad);
		%feature("autodoc", "1");
		void Initialize(const Adaptor3d_Surface &S, const Standard_Integer NbU, const Standard_Integer NbV, const Standard_Real TolU, const Standard_Real TolV);
		%feature("autodoc", "1");
		void Initialize(const Adaptor3d_Surface &S, const Standard_Integer NbU, const Standard_Integer NbV, const Standard_Real Umin, const Standard_Real Usup, const Standard_Real Vmin, const Standard_Real Vsup, const Standard_Real TolU, const Standard_Real TolV);
		%feature("autodoc", "1");
		void Perform(const gp_Pnt P);
		%feature("autodoc", "1");
		void SetFlag(const Extrema_ExtFlag F);
		%feature("autodoc", "1");
		void SetAlgo(const Extrema_ExtAlgo A);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbExt() const;
		%feature("autodoc", "1");
		Standard_Real SquareDistance(const Standard_Integer N) const;
		%feature("autodoc", "1");
		Extrema_POnSurf Point(const Standard_Integer N) const;

};
%feature("shadow") Extrema_GenExtPS::~Extrema_GenExtPS %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Extrema_GenExtPS {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Extrema_HArray2OfPOnCurv2d;
class Extrema_HArray2OfPOnCurv2d : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Extrema_HArray2OfPOnCurv2d(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		Extrema_HArray2OfPOnCurv2d(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2, const Extrema_POnCurv2d &V);
		%feature("autodoc", "1");
		void Init(const Extrema_POnCurv2d &V);
		%feature("autodoc", "1");
		Standard_Integer ColLength() const;
		%feature("autodoc", "1");
		Standard_Integer RowLength() const;
		%feature("autodoc", "1");
		Standard_Integer LowerCol() const;
		%feature("autodoc", "1");
		Standard_Integer LowerRow() const;
		%feature("autodoc", "1");
		Standard_Integer UpperCol() const;
		%feature("autodoc", "1");
		Standard_Integer UpperRow() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const Extrema_POnCurv2d &Value);
		%feature("autodoc", "1");
		const Extrema_POnCurv2d & Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		Extrema_POnCurv2d & ChangeValue(const Standard_Integer Row, const Standard_Integer Col);
		%feature("autodoc", "1");
		const Extrema_Array2OfPOnCurv2d & Array2() const;
		%feature("autodoc", "1");
		Extrema_Array2OfPOnCurv2d & ChangeArray2();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Extrema_HArray2OfPOnCurv2d {
	Handle_Extrema_HArray2OfPOnCurv2d GetHandle() {
	return *(Handle_Extrema_HArray2OfPOnCurv2d*) &$self;
	}
};
%extend Extrema_HArray2OfPOnCurv2d {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") Extrema_HArray2OfPOnCurv2d::~Extrema_HArray2OfPOnCurv2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Extrema_HArray2OfPOnCurv2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Extrema_HArray1OfPOnSurf;
class Extrema_HArray1OfPOnSurf : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Extrema_HArray1OfPOnSurf(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		Extrema_HArray1OfPOnSurf(const Standard_Integer Low, const Standard_Integer Up, const Extrema_POnSurf &V);
		%feature("autodoc", "1");
		void Init(const Extrema_POnSurf &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Extrema_POnSurf &Value);
		%feature("autodoc", "1");
		const Extrema_POnSurf & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Extrema_POnSurf & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const Extrema_Array1OfPOnSurf & Array1() const;
		%feature("autodoc", "1");
		Extrema_Array1OfPOnSurf & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Extrema_HArray1OfPOnSurf {
	Handle_Extrema_HArray1OfPOnSurf GetHandle() {
	return *(Handle_Extrema_HArray1OfPOnSurf*) &$self;
	}
};
%extend Extrema_HArray1OfPOnSurf {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") Extrema_HArray1OfPOnSurf::~Extrema_HArray1OfPOnSurf %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Extrema_HArray1OfPOnSurf {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Extrema_LocateExtCC;
class Extrema_LocateExtCC {
	public:
		%feature("autodoc", "1");
		Extrema_LocateExtCC(const Adaptor3d_Curve &C1, const Adaptor3d_Curve &C2, const Standard_Real U0, const Standard_Real V0);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Real SquareDistance() const;
		%feature("autodoc", "1");
		void Point(Extrema_POnCurv & P1, Extrema_POnCurv & P2) const;

};
%feature("shadow") Extrema_LocateExtCC::~Extrema_LocateExtCC %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Extrema_LocateExtCC {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Extrema_GenLocateExtCS;
class Extrema_GenLocateExtCS {
	public:
		%feature("autodoc", "1");
		Extrema_GenLocateExtCS();
		%feature("autodoc", "1");
		Extrema_GenLocateExtCS(const Adaptor3d_Curve &C, const Adaptor3d_Surface &S, const Standard_Real T, const Standard_Real U, const Standard_Real V, const Standard_Real Tol1, const Standard_Real Tol2);
		%feature("autodoc", "1");
		void Perform(const Adaptor3d_Curve &C, const Adaptor3d_Surface &S, const Standard_Real T, const Standard_Real U, const Standard_Real V, const Standard_Real Tol1, const Standard_Real Tol2);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Real SquareDistance() const;
		%feature("autodoc", "1");
		const Extrema_POnCurv & PointOnCurve() const;
		%feature("autodoc", "1");
		const Extrema_POnSurf & PointOnSurface() const;

};
%feature("shadow") Extrema_GenLocateExtCS::~Extrema_GenLocateExtCS %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Extrema_GenLocateExtCS {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Extrema_ExtElC2d;
class Extrema_ExtElC2d {
	public:
		%feature("autodoc", "1");
		Extrema_ExtElC2d();
		%feature("autodoc", "1");
		Extrema_ExtElC2d(const gp_Lin2d C1, const gp_Lin2d C2, const Standard_Real AngTol);
		%feature("autodoc", "1");
		Extrema_ExtElC2d(const gp_Lin2d C1, const gp_Circ2d C2, const Standard_Real Tol);
		%feature("autodoc", "1");
		Extrema_ExtElC2d(const gp_Lin2d C1, const gp_Elips2d C2);
		%feature("autodoc", "1");
		Extrema_ExtElC2d(const gp_Lin2d C1, const gp_Hypr2d C2);
		%feature("autodoc", "1");
		Extrema_ExtElC2d(const gp_Lin2d C1, const gp_Parab2d C2);
		%feature("autodoc", "1");
		Extrema_ExtElC2d(const gp_Circ2d C1, const gp_Circ2d C2);
		%feature("autodoc", "1");
		Extrema_ExtElC2d(const gp_Circ2d C1, const gp_Elips2d C2);
		%feature("autodoc", "1");
		Extrema_ExtElC2d(const gp_Circ2d C1, const gp_Hypr2d C2);
		%feature("autodoc", "1");
		Extrema_ExtElC2d(const gp_Circ2d C1, const gp_Parab2d C2);
		%feature("autodoc", "1");
		Extrema_ExtElC2d(const gp_Elips2d C1, const gp_Elips2d C2);
		%feature("autodoc", "1");
		Extrema_ExtElC2d(const gp_Elips2d C1, const gp_Hypr2d C2);
		%feature("autodoc", "1");
		Extrema_ExtElC2d(const gp_Elips2d C1, const gp_Parab2d C2);
		%feature("autodoc", "1");
		Extrema_ExtElC2d(const gp_Hypr2d C1, const gp_Hypr2d C2);
		%feature("autodoc", "1");
		Extrema_ExtElC2d(const gp_Hypr2d C1, const gp_Parab2d C2);
		%feature("autodoc", "1");
		Extrema_ExtElC2d(const gp_Parab2d C1, const gp_Parab2d C2);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Boolean IsParallel() const;
		%feature("autodoc", "1");
		Standard_Integer NbExt() const;
		%feature("autodoc", "1");
		Standard_Real SquareDistance(const Standard_Integer N=1) const;
		%feature("autodoc", "1");
		void Points(const Standard_Integer N, Extrema_POnCurv2d & P1, Extrema_POnCurv2d & P2) const;

};
%feature("shadow") Extrema_ExtElC2d::~Extrema_ExtElC2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Extrema_ExtElC2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Extrema_HArray1OfPOnCurv;
class Extrema_HArray1OfPOnCurv : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Extrema_HArray1OfPOnCurv(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		Extrema_HArray1OfPOnCurv(const Standard_Integer Low, const Standard_Integer Up, const Extrema_POnCurv &V);
		%feature("autodoc", "1");
		void Init(const Extrema_POnCurv &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Extrema_POnCurv &Value);
		%feature("autodoc", "1");
		const Extrema_POnCurv & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Extrema_POnCurv & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const Extrema_Array1OfPOnCurv & Array1() const;
		%feature("autodoc", "1");
		Extrema_Array1OfPOnCurv & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Extrema_HArray1OfPOnCurv {
	Handle_Extrema_HArray1OfPOnCurv GetHandle() {
	return *(Handle_Extrema_HArray1OfPOnCurv*) &$self;
	}
};
%extend Extrema_HArray1OfPOnCurv {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") Extrema_HArray1OfPOnCurv::~Extrema_HArray1OfPOnCurv %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Extrema_HArray1OfPOnCurv {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Extrema_SequenceNodeOfSeqPOnCOfCCFOfECCOfExtCC;
class Extrema_SequenceNodeOfSeqPOnCOfCCFOfECCOfExtCC : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Extrema_SequenceNodeOfSeqPOnCOfCCFOfECCOfExtCC(const Extrema_POnCurv &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Extrema_POnCurv & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Extrema_SequenceNodeOfSeqPOnCOfCCFOfECCOfExtCC {
	Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfECCOfExtCC GetHandle() {
	return *(Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfECCOfExtCC*) &$self;
	}
};
%extend Extrema_SequenceNodeOfSeqPOnCOfCCFOfECCOfExtCC {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") Extrema_SequenceNodeOfSeqPOnCOfCCFOfECCOfExtCC::~Extrema_SequenceNodeOfSeqPOnCOfCCFOfECCOfExtCC %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Extrema_SequenceNodeOfSeqPOnCOfCCFOfECCOfExtCC {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfELPCOfLocateExtPC2d;
class Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfELPCOfLocateExtPC2d : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfELPCOfLocateExtPC2d(const Extrema_POnCurv2d &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Extrema_POnCurv2d & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfELPCOfLocateExtPC2d {
	Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfELPCOfLocateExtPC2d GetHandle() {
	return *(Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfELPCOfLocateExtPC2d*) &$self;
	}
};
%extend Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfELPCOfLocateExtPC2d {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfELPCOfLocateExtPC2d::~Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfELPCOfLocateExtPC2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfELPCOfLocateExtPC2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Extrema_PCFOfEPCOfExtPC;
class Extrema_PCFOfEPCOfExtPC : public math_FunctionWithDerivative {
	public:
		%feature("autodoc", "1");
		Extrema_PCFOfEPCOfExtPC();
		%feature("autodoc", "1");
		Extrema_PCFOfEPCOfExtPC(const gp_Pnt P, const Adaptor3d_Curve &C);
		%feature("autodoc", "1");
		void Initialize(const Adaptor3d_Curve &C);
		%feature("autodoc", "1");
		void SetPoint(const gp_Pnt P);
		%feature("autodoc","Value(Standard_Real U) -> Standard_Real");

		virtual		Standard_Boolean Value(const Standard_Real U, Standard_Real &OutValue);
		%feature("autodoc","Derivative(Standard_Real U) -> Standard_Real");

		virtual		Standard_Boolean Derivative(const Standard_Real U, Standard_Real &OutValue);
		%feature("autodoc","Values(Standard_Real U) -> [Standard_Real, Standard_Real]");

		virtual		Standard_Boolean Values(const Standard_Real U, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Integer GetStateNumber();
		%feature("autodoc", "1");
		Standard_Integer NbExt() const;
		%feature("autodoc", "1");
		Standard_Real SquareDistance(const Standard_Integer N) const;
		%feature("autodoc", "1");
		Standard_Boolean IsMin(const Standard_Integer N) const;
		%feature("autodoc", "1");
		Extrema_POnCurv Point(const Standard_Integer N) const;

};
%feature("shadow") Extrema_PCFOfEPCOfExtPC::~Extrema_PCFOfEPCOfExtPC %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Extrema_PCFOfEPCOfExtPC {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Extrema_GenLocateExtPS;
class Extrema_GenLocateExtPS {
	public:
		%feature("autodoc", "1");
		Extrema_GenLocateExtPS();
		%feature("autodoc", "1");
		Extrema_GenLocateExtPS(const gp_Pnt P, const Adaptor3d_Surface &S, const Standard_Real U0, const Standard_Real V0, const Standard_Real TolU, const Standard_Real TolV);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Real SquareDistance() const;
		%feature("autodoc", "1");
		Extrema_POnSurf Point() const;

};
%feature("shadow") Extrema_GenLocateExtPS::~Extrema_GenLocateExtPS %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Extrema_GenLocateExtPS {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Extrema_Array2OfPOnCurv;
class Extrema_Array2OfPOnCurv {
	public:
		%feature("autodoc", "1");
		Extrema_Array2OfPOnCurv(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		Extrema_Array2OfPOnCurv(const Extrema_POnCurv &Item, const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		void Init(const Extrema_POnCurv &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		const Extrema_Array2OfPOnCurv & Assign(const Extrema_Array2OfPOnCurv &Other);
		%feature("autodoc", "1");
		const Extrema_Array2OfPOnCurv & operator=(const Extrema_Array2OfPOnCurv &Other);
		%feature("autodoc", "1");
		Standard_Integer ColLength() const;
		%feature("autodoc", "1");
		Standard_Integer RowLength() const;
		%feature("autodoc", "1");
		Standard_Integer LowerCol() const;
		%feature("autodoc", "1");
		Standard_Integer LowerRow() const;
		%feature("autodoc", "1");
		Standard_Integer UpperCol() const;
		%feature("autodoc", "1");
		Standard_Integer UpperRow() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const Extrema_POnCurv &Value);
		%feature("autodoc", "1");
		const Extrema_POnCurv & Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		const Extrema_POnCurv & operator()(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		Extrema_POnCurv & ChangeValue(const Standard_Integer Row, const Standard_Integer Col);
		%feature("autodoc", "1");
		Extrema_POnCurv & operator()(const Standard_Integer Row, const Standard_Integer Col);

};
%feature("shadow") Extrema_Array2OfPOnCurv::~Extrema_Array2OfPOnCurv %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Extrema_Array2OfPOnCurv {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Extrema_PCLocFOfLocEPCOfLocateExtPC;
class Extrema_PCLocFOfLocEPCOfLocateExtPC : public math_FunctionWithDerivative {
	public:
		%feature("autodoc", "1");
		Extrema_PCLocFOfLocEPCOfLocateExtPC();
		%feature("autodoc", "1");
		Extrema_PCLocFOfLocEPCOfLocateExtPC(const gp_Pnt P, const Adaptor3d_Curve &C);
		%feature("autodoc", "1");
		void Initialize(const Adaptor3d_Curve &C);
		%feature("autodoc", "1");
		void SetPoint(const gp_Pnt P);
		%feature("autodoc","Value(Standard_Real U) -> Standard_Real");

		virtual		Standard_Boolean Value(const Standard_Real U, Standard_Real &OutValue);
		%feature("autodoc","Derivative(Standard_Real U) -> Standard_Real");

		virtual		Standard_Boolean Derivative(const Standard_Real U, Standard_Real &OutValue);
		%feature("autodoc","Values(Standard_Real U) -> [Standard_Real, Standard_Real]");

		virtual		Standard_Boolean Values(const Standard_Real U, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Integer GetStateNumber();
		%feature("autodoc", "1");
		Standard_Integer NbExt() const;
		%feature("autodoc", "1");
		Standard_Real SquareDistance(const Standard_Integer N) const;
		%feature("autodoc", "1");
		Standard_Boolean IsMin(const Standard_Integer N) const;
		%feature("autodoc", "1");
		Extrema_POnCurv Point(const Standard_Integer N) const;

};
%feature("shadow") Extrema_PCLocFOfLocEPCOfLocateExtPC::~Extrema_PCLocFOfLocEPCOfLocateExtPC %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Extrema_PCLocFOfLocEPCOfLocateExtPC {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Extrema_EPCOfExtPC2d;
class Extrema_EPCOfExtPC2d {
	public:
		%feature("autodoc", "1");
		Extrema_EPCOfExtPC2d();
		%feature("autodoc", "1");
		Extrema_EPCOfExtPC2d(const gp_Pnt2d P, const Adaptor2d_Curve2d &C, const Standard_Integer NbU, const Standard_Real TolU, const Standard_Real TolF);
		%feature("autodoc", "1");
		Extrema_EPCOfExtPC2d(const gp_Pnt2d P, const Adaptor2d_Curve2d &C, const Standard_Integer NbU, const Standard_Real Umin, const Standard_Real Usup, const Standard_Real TolU, const Standard_Real TolF);
		%feature("autodoc", "1");
		void Initialize(const Adaptor2d_Curve2d &C, const Standard_Integer NbU, const Standard_Real TolU, const Standard_Real TolF);
		%feature("autodoc", "1");
		void Initialize(const Adaptor2d_Curve2d &C, const Standard_Integer NbU, const Standard_Real Umin, const Standard_Real Usup, const Standard_Real TolU, const Standard_Real TolF);
		%feature("autodoc", "1");
		void Initialize(const Adaptor2d_Curve2d &C);
		%feature("autodoc", "1");
		void Initialize(const Standard_Integer NbU, const Standard_Real Umin, const Standard_Real Usup, const Standard_Real TolU, const Standard_Real TolF);
		%feature("autodoc", "1");
		void Perform(const gp_Pnt2d P);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbExt() const;
		%feature("autodoc", "1");
		Standard_Real SquareDistance(const Standard_Integer N) const;
		%feature("autodoc", "1");
		Standard_Boolean IsMin(const Standard_Integer N) const;
		%feature("autodoc", "1");
		Extrema_POnCurv2d Point(const Standard_Integer N) const;

};
%feature("shadow") Extrema_EPCOfExtPC2d::~Extrema_EPCOfExtPC2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Extrema_EPCOfExtPC2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Extrema_SeqPOnCOfCCFOfELCC2dOfLocateExtCC2d;
class Extrema_SeqPOnCOfCCFOfELCC2dOfLocateExtCC2d : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		Extrema_SeqPOnCOfCCFOfELCC2dOfLocateExtCC2d();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const Extrema_SeqPOnCOfCCFOfELCC2dOfLocateExtCC2d & Assign(const Extrema_SeqPOnCOfCCFOfELCC2dOfLocateExtCC2d &Other);
		%feature("autodoc", "1");
		const Extrema_SeqPOnCOfCCFOfELCC2dOfLocateExtCC2d & operator=(const Extrema_SeqPOnCOfCCFOfELCC2dOfLocateExtCC2d &Other);
		%feature("autodoc", "1");
		void Append(const Extrema_POnCurv2d &T);
		%feature("autodoc", "1");
		void Append(Extrema_SeqPOnCOfCCFOfELCC2dOfLocateExtCC2d & S);
		%feature("autodoc", "1");
		void Prepend(const Extrema_POnCurv2d &T);
		%feature("autodoc", "1");
		void Prepend(Extrema_SeqPOnCOfCCFOfELCC2dOfLocateExtCC2d & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Extrema_POnCurv2d &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, Extrema_SeqPOnCOfCCFOfELCC2dOfLocateExtCC2d & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Extrema_POnCurv2d &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, Extrema_SeqPOnCOfCCFOfELCC2dOfLocateExtCC2d & S);
		%feature("autodoc", "1");
		const Extrema_POnCurv2d & First() const;
		%feature("autodoc", "1");
		const Extrema_POnCurv2d & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, Extrema_SeqPOnCOfCCFOfELCC2dOfLocateExtCC2d & S);
		%feature("autodoc", "1");
		const Extrema_POnCurv2d & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Extrema_POnCurv2d & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Extrema_POnCurv2d &I);
		%feature("autodoc", "1");
		Extrema_POnCurv2d & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Extrema_POnCurv2d & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") Extrema_SeqPOnCOfCCFOfELCC2dOfLocateExtCC2d::~Extrema_SeqPOnCOfCCFOfELCC2dOfLocateExtCC2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Extrema_SeqPOnCOfCCFOfELCC2dOfLocateExtCC2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Extrema_SeqPOnCOfCCLocFOfLocECCOfLocateExtCC;
class Extrema_SeqPOnCOfCCLocFOfLocECCOfLocateExtCC : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		Extrema_SeqPOnCOfCCLocFOfLocECCOfLocateExtCC();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const Extrema_SeqPOnCOfCCLocFOfLocECCOfLocateExtCC & Assign(const Extrema_SeqPOnCOfCCLocFOfLocECCOfLocateExtCC &Other);
		%feature("autodoc", "1");
		const Extrema_SeqPOnCOfCCLocFOfLocECCOfLocateExtCC & operator=(const Extrema_SeqPOnCOfCCLocFOfLocECCOfLocateExtCC &Other);
		%feature("autodoc", "1");
		void Append(const Extrema_POnCurv &T);
		%feature("autodoc", "1");
		void Append(Extrema_SeqPOnCOfCCLocFOfLocECCOfLocateExtCC & S);
		%feature("autodoc", "1");
		void Prepend(const Extrema_POnCurv &T);
		%feature("autodoc", "1");
		void Prepend(Extrema_SeqPOnCOfCCLocFOfLocECCOfLocateExtCC & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Extrema_POnCurv &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, Extrema_SeqPOnCOfCCLocFOfLocECCOfLocateExtCC & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Extrema_POnCurv &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, Extrema_SeqPOnCOfCCLocFOfLocECCOfLocateExtCC & S);
		%feature("autodoc", "1");
		const Extrema_POnCurv & First() const;
		%feature("autodoc", "1");
		const Extrema_POnCurv & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, Extrema_SeqPOnCOfCCLocFOfLocECCOfLocateExtCC & S);
		%feature("autodoc", "1");
		const Extrema_POnCurv & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Extrema_POnCurv & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Extrema_POnCurv &I);
		%feature("autodoc", "1");
		Extrema_POnCurv & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Extrema_POnCurv & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") Extrema_SeqPOnCOfCCLocFOfLocECCOfLocateExtCC::~Extrema_SeqPOnCOfCCLocFOfLocECCOfLocateExtCC %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Extrema_SeqPOnCOfCCLocFOfLocECCOfLocateExtCC {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Extrema_PCLocFOfLocEPCOfLocateExtPC2d;
class Extrema_PCLocFOfLocEPCOfLocateExtPC2d : public math_FunctionWithDerivative {
	public:
		%feature("autodoc", "1");
		Extrema_PCLocFOfLocEPCOfLocateExtPC2d();
		%feature("autodoc", "1");
		Extrema_PCLocFOfLocEPCOfLocateExtPC2d(const gp_Pnt2d P, const Adaptor2d_Curve2d &C);
		%feature("autodoc", "1");
		void Initialize(const Adaptor2d_Curve2d &C);
		%feature("autodoc", "1");
		void SetPoint(const gp_Pnt2d P);
		%feature("autodoc","Value(Standard_Real U) -> Standard_Real");

		virtual		Standard_Boolean Value(const Standard_Real U, Standard_Real &OutValue);
		%feature("autodoc","Derivative(Standard_Real U) -> Standard_Real");

		virtual		Standard_Boolean Derivative(const Standard_Real U, Standard_Real &OutValue);
		%feature("autodoc","Values(Standard_Real U) -> [Standard_Real, Standard_Real]");

		virtual		Standard_Boolean Values(const Standard_Real U, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Integer GetStateNumber();
		%feature("autodoc", "1");
		Standard_Integer NbExt() const;
		%feature("autodoc", "1");
		Standard_Real SquareDistance(const Standard_Integer N) const;
		%feature("autodoc", "1");
		Standard_Boolean IsMin(const Standard_Integer N) const;
		%feature("autodoc", "1");
		Extrema_POnCurv2d Point(const Standard_Integer N) const;

};
%feature("shadow") Extrema_PCLocFOfLocEPCOfLocateExtPC2d::~Extrema_PCLocFOfLocEPCOfLocateExtPC2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Extrema_PCLocFOfLocEPCOfLocateExtPC2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Extrema_HArray2OfPOnSurf;
class Extrema_HArray2OfPOnSurf : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Extrema_HArray2OfPOnSurf(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		Extrema_HArray2OfPOnSurf(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2, const Extrema_POnSurf &V);
		%feature("autodoc", "1");
		void Init(const Extrema_POnSurf &V);
		%feature("autodoc", "1");
		Standard_Integer ColLength() const;
		%feature("autodoc", "1");
		Standard_Integer RowLength() const;
		%feature("autodoc", "1");
		Standard_Integer LowerCol() const;
		%feature("autodoc", "1");
		Standard_Integer LowerRow() const;
		%feature("autodoc", "1");
		Standard_Integer UpperCol() const;
		%feature("autodoc", "1");
		Standard_Integer UpperRow() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const Extrema_POnSurf &Value);
		%feature("autodoc", "1");
		const Extrema_POnSurf & Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		Extrema_POnSurf & ChangeValue(const Standard_Integer Row, const Standard_Integer Col);
		%feature("autodoc", "1");
		const Extrema_Array2OfPOnSurf & Array2() const;
		%feature("autodoc", "1");
		Extrema_Array2OfPOnSurf & ChangeArray2();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Extrema_HArray2OfPOnSurf {
	Handle_Extrema_HArray2OfPOnSurf GetHandle() {
	return *(Handle_Extrema_HArray2OfPOnSurf*) &$self;
	}
};
%extend Extrema_HArray2OfPOnSurf {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") Extrema_HArray2OfPOnSurf::~Extrema_HArray2OfPOnSurf %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Extrema_HArray2OfPOnSurf {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfELPCOfLocateExtPC;
class Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfELPCOfLocateExtPC : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfELPCOfLocateExtPC(const Extrema_POnCurv &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Extrema_POnCurv & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfELPCOfLocateExtPC {
	Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfELPCOfLocateExtPC GetHandle() {
	return *(Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfELPCOfLocateExtPC*) &$self;
	}
};
%extend Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfELPCOfLocateExtPC {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfELPCOfLocateExtPC::~Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfELPCOfLocateExtPC %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfELPCOfLocateExtPC {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Extrema_CCache2dOfExtCC2d;
class Extrema_CCache2dOfExtCC2d : public Standard_Transient {
	public:
		%feature("autodoc", "1");
		Extrema_CCache2dOfExtCC2d();
		%feature("autodoc", "1");
		Extrema_CCache2dOfExtCC2d(const Adaptor2d_Curve2d &theC, const Standard_Real theUFirst, const Standard_Real theULast, const Standard_Integer theNbSamples, const Standard_Boolean theToCalculate);
		%feature("autodoc", "1");
		void SetCurve(const Adaptor2d_Curve2d &theC, const Standard_Integer theNbSamples, const Standard_Boolean theToCalculate);
		%feature("autodoc", "1");
		void SetCurve(const Adaptor2d_Curve2d &theC, const Standard_Real theUFirst, const Standard_Real theULast, const Standard_Integer theNbSamples, const Standard_Boolean theToCalculate);
		%feature("autodoc", "1");
		void SetRange(const Standard_Real Uinf, const Standard_Real Usup, const Standard_Boolean theToCalculate);
		%feature("autodoc", "1");
		void CalculatePoints();
		%feature("autodoc", "1");
		Standard_Boolean IsValid() const;
		%feature("autodoc", "1");
		const Handle_TColgp_HArray1OfPnt2d & Points() const;
		%feature("autodoc", "1");
		Standard_Address CurvePtr() const;
		%feature("autodoc", "1");
		Standard_Integer NbSamples() const;
		%feature("autodoc", "1");
		Standard_Real FirstParameter() const;
		%feature("autodoc", "1");
		Standard_Real LastParameter() const;
		%feature("autodoc", "1");
		Standard_Real TrimFirstParameter() const;
		%feature("autodoc", "1");
		Standard_Real TrimLastParameter() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Extrema_CCache2dOfExtCC2d {
	Handle_Extrema_CCache2dOfExtCC2d GetHandle() {
	return *(Handle_Extrema_CCache2dOfExtCC2d*) &$self;
	}
};
%extend Extrema_CCache2dOfExtCC2d {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") Extrema_CCache2dOfExtCC2d::~Extrema_CCache2dOfExtCC2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Extrema_CCache2dOfExtCC2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Extrema_PCFOfEPCOfELPCOfLocateExtPC2d;
class Extrema_PCFOfEPCOfELPCOfLocateExtPC2d : public math_FunctionWithDerivative {
	public:
		%feature("autodoc", "1");
		Extrema_PCFOfEPCOfELPCOfLocateExtPC2d();
		%feature("autodoc", "1");
		Extrema_PCFOfEPCOfELPCOfLocateExtPC2d(const gp_Pnt2d P, const Adaptor2d_Curve2d &C);
		%feature("autodoc", "1");
		void Initialize(const Adaptor2d_Curve2d &C);
		%feature("autodoc", "1");
		void SetPoint(const gp_Pnt2d P);
		%feature("autodoc","Value(Standard_Real U) -> Standard_Real");

		virtual		Standard_Boolean Value(const Standard_Real U, Standard_Real &OutValue);
		%feature("autodoc","Derivative(Standard_Real U) -> Standard_Real");

		virtual		Standard_Boolean Derivative(const Standard_Real U, Standard_Real &OutValue);
		%feature("autodoc","Values(Standard_Real U) -> [Standard_Real, Standard_Real]");

		virtual		Standard_Boolean Values(const Standard_Real U, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Integer GetStateNumber();
		%feature("autodoc", "1");
		Standard_Integer NbExt() const;
		%feature("autodoc", "1");
		Standard_Real SquareDistance(const Standard_Integer N) const;
		%feature("autodoc", "1");
		Standard_Boolean IsMin(const Standard_Integer N) const;
		%feature("autodoc", "1");
		Extrema_POnCurv2d Point(const Standard_Integer N) const;

};
%feature("shadow") Extrema_PCFOfEPCOfELPCOfLocateExtPC2d::~Extrema_PCFOfEPCOfELPCOfLocateExtPC2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Extrema_PCFOfEPCOfELPCOfLocateExtPC2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Extrema_Array1OfPOnCurv;
class Extrema_Array1OfPOnCurv {
	public:
		%feature("autodoc", "1");
		Extrema_Array1OfPOnCurv(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		Extrema_Array1OfPOnCurv(const Extrema_POnCurv &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Extrema_POnCurv &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const Extrema_Array1OfPOnCurv & Assign(const Extrema_Array1OfPOnCurv &Other);
		%feature("autodoc", "1");
		const Extrema_Array1OfPOnCurv & operator=(const Extrema_Array1OfPOnCurv &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Extrema_POnCurv &Value);
		%feature("autodoc", "1");
		const Extrema_POnCurv & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Extrema_POnCurv & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Extrema_POnCurv & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Extrema_POnCurv & operator()(const Standard_Integer Index);

};
%feature("shadow") Extrema_Array1OfPOnCurv::~Extrema_Array1OfPOnCurv %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Extrema_Array1OfPOnCurv {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Extrema_SequenceOfPOnSurf;
class Extrema_SequenceOfPOnSurf : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		Extrema_SequenceOfPOnSurf();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const Extrema_SequenceOfPOnSurf & Assign(const Extrema_SequenceOfPOnSurf &Other);
		%feature("autodoc", "1");
		const Extrema_SequenceOfPOnSurf & operator=(const Extrema_SequenceOfPOnSurf &Other);
		%feature("autodoc", "1");
		void Append(const Extrema_POnSurf &T);
		%feature("autodoc", "1");
		void Append(Extrema_SequenceOfPOnSurf & S);
		%feature("autodoc", "1");
		void Prepend(const Extrema_POnSurf &T);
		%feature("autodoc", "1");
		void Prepend(Extrema_SequenceOfPOnSurf & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Extrema_POnSurf &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, Extrema_SequenceOfPOnSurf & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Extrema_POnSurf &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, Extrema_SequenceOfPOnSurf & S);
		%feature("autodoc", "1");
		const Extrema_POnSurf & First() const;
		%feature("autodoc", "1");
		const Extrema_POnSurf & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, Extrema_SequenceOfPOnSurf & S);
		%feature("autodoc", "1");
		const Extrema_POnSurf & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Extrema_POnSurf & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Extrema_POnSurf &I);
		%feature("autodoc", "1");
		Extrema_POnSurf & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Extrema_POnSurf & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") Extrema_SequenceOfPOnSurf::~Extrema_SequenceOfPOnSurf %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Extrema_SequenceOfPOnSurf {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Extrema_LocateExtPC2d;
class Extrema_LocateExtPC2d {
	public:
		%feature("autodoc", "1");
		Extrema_LocateExtPC2d();
		%feature("autodoc", "1");
		Extrema_LocateExtPC2d(const gp_Pnt2d P, const Adaptor2d_Curve2d &C, const Standard_Real U0, const Standard_Real TolF);
		%feature("autodoc", "1");
		Extrema_LocateExtPC2d(const gp_Pnt2d P, const Adaptor2d_Curve2d &C, const Standard_Real U0, const Standard_Real Umin, const Standard_Real Usup, const Standard_Real TolF);
		%feature("autodoc", "1");
		void Initialize(const Adaptor2d_Curve2d &C, const Standard_Real Umin, const Standard_Real Usup, const Standard_Real TolF);
		%feature("autodoc", "1");
		void Perform(const gp_Pnt2d P, const Standard_Real U0);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Real SquareDistance() const;
		%feature("autodoc", "1");
		Standard_Boolean IsMin() const;
		%feature("autodoc", "1");
		Extrema_POnCurv2d Point() const;

};
%feature("shadow") Extrema_LocateExtPC2d::~Extrema_LocateExtPC2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Extrema_LocateExtPC2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Extrema_LocateExtPC;
class Extrema_LocateExtPC {
	public:
		%feature("autodoc", "1");
		Extrema_LocateExtPC();
		%feature("autodoc", "1");
		Extrema_LocateExtPC(const gp_Pnt P, const Adaptor3d_Curve &C, const Standard_Real U0, const Standard_Real TolF);
		%feature("autodoc", "1");
		Extrema_LocateExtPC(const gp_Pnt P, const Adaptor3d_Curve &C, const Standard_Real U0, const Standard_Real Umin, const Standard_Real Usup, const Standard_Real TolF);
		%feature("autodoc", "1");
		void Initialize(const Adaptor3d_Curve &C, const Standard_Real Umin, const Standard_Real Usup, const Standard_Real TolF);
		%feature("autodoc", "1");
		void Perform(const gp_Pnt P, const Standard_Real U0);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Real SquareDistance() const;
		%feature("autodoc", "1");
		Standard_Boolean IsMin() const;
		%feature("autodoc", "1");
		Extrema_POnCurv Point() const;

};
%feature("shadow") Extrema_LocateExtPC::~Extrema_LocateExtPC %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Extrema_LocateExtPC {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Extrema_SequenceNodeOfSeqPOnCOfCCFOfELCC2dOfLocateExtCC2d;
class Extrema_SequenceNodeOfSeqPOnCOfCCFOfELCC2dOfLocateExtCC2d : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Extrema_SequenceNodeOfSeqPOnCOfCCFOfELCC2dOfLocateExtCC2d(const Extrema_POnCurv2d &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Extrema_POnCurv2d & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Extrema_SequenceNodeOfSeqPOnCOfCCFOfELCC2dOfLocateExtCC2d {
	Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfELCC2dOfLocateExtCC2d GetHandle() {
	return *(Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfELCC2dOfLocateExtCC2d*) &$self;
	}
};
%extend Extrema_SequenceNodeOfSeqPOnCOfCCFOfELCC2dOfLocateExtCC2d {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") Extrema_SequenceNodeOfSeqPOnCOfCCFOfELCC2dOfLocateExtCC2d::~Extrema_SequenceNodeOfSeqPOnCOfCCFOfELCC2dOfLocateExtCC2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Extrema_SequenceNodeOfSeqPOnCOfCCFOfELCC2dOfLocateExtCC2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Extrema_ExtCC;
class Extrema_ExtCC {
	public:
		%feature("autodoc", "1");
		Extrema_ExtCC(const Standard_Real TolC1=1.0000000000000000364321973154977415791655470656e-10, const Standard_Real TolC2=1.0000000000000000364321973154977415791655470656e-10);
		%feature("autodoc", "1");
		Extrema_ExtCC(const Adaptor3d_Curve &C1, const Adaptor3d_Curve &C2, const Standard_Real TolC1=1.0000000000000000364321973154977415791655470656e-10, const Standard_Real TolC2=1.0000000000000000364321973154977415791655470656e-10);
		%feature("autodoc", "1");
		Extrema_ExtCC(const Adaptor3d_Curve &C1, const Adaptor3d_Curve &C2, const Standard_Real U1, const Standard_Real U2, const Standard_Real V1, const Standard_Real V2, const Standard_Real TolC1=1.0000000000000000364321973154977415791655470656e-10, const Standard_Real TolC2=1.0000000000000000364321973154977415791655470656e-10);
		%feature("autodoc", "1");
		void SetCurve(const Standard_Integer theRank, const Adaptor3d_Curve &C);
		%feature("autodoc", "1");
		void SetCurve(const Standard_Integer theRank, const Adaptor3d_Curve &C, const Standard_Real Uinf, const Standard_Real Usup);
		%feature("autodoc", "1");
		void SetRange(const Standard_Integer theRank, const Standard_Real Uinf, const Standard_Real Usup);
		%feature("autodoc", "1");
		void SetTolerance(const Standard_Integer theRank, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Perform();
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbExt() const;
		%feature("autodoc", "1");
		Standard_Boolean IsParallel() const;
		%feature("autodoc", "1");
		Standard_Real SquareDistance(const Standard_Integer N=1) const;
		%feature("autodoc", "1");
		void Points(const Standard_Integer N, Extrema_POnCurv & P1, Extrema_POnCurv & P2) const;
		%feature("autodoc","TrimmedSquareDistances() -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real]");

		void TrimmedSquareDistances(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt & P11, gp_Pnt & P12, gp_Pnt & P21, gp_Pnt & P22) const;

};
%feature("shadow") Extrema_ExtCC::~Extrema_ExtCC %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Extrema_ExtCC {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Extrema_ECCOfExtCC;
class Extrema_ECCOfExtCC {
	public:
		%feature("autodoc", "1");
		Extrema_ECCOfExtCC();
		%feature("autodoc", "1");
		Extrema_ECCOfExtCC(const Adaptor3d_Curve &C1, const Adaptor3d_Curve &C2, const Standard_Integer NbU, const Standard_Integer NbV, const Standard_Real TolU, const Standard_Real TolV);
		%feature("autodoc", "1");
		Extrema_ECCOfExtCC(const Adaptor3d_Curve &C1, const Adaptor3d_Curve &C2, const Standard_Real Uinf, const Standard_Real Usup, const Standard_Real Vinf, const Standard_Real Vsup, const Standard_Integer NbU, const Standard_Integer NbV, const Standard_Real TolU, const Standard_Real TolV);
		%feature("autodoc", "1");
		void SetCurveCache(const Standard_Integer theRank, const Handle_Extrema_CCacheOfExtCC &theCache);
		%feature("autodoc", "1");
		void SetTolerance(const Standard_Real Tol);
		%feature("autodoc", "1");
		void Perform();
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbExt() const;
		%feature("autodoc", "1");
		Standard_Real SquareDistance(const Standard_Integer N=1) const;
		%feature("autodoc", "1");
		void Points(const Standard_Integer N, Extrema_POnCurv & P1, Extrema_POnCurv & P2) const;

};
%feature("shadow") Extrema_ECCOfExtCC::~Extrema_ECCOfExtCC %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Extrema_ECCOfExtCC {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Extrema_SequenceNodeOfSeqPOnCOfCCFOfECC2dOfExtCC2d;
class Extrema_SequenceNodeOfSeqPOnCOfCCFOfECC2dOfExtCC2d : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Extrema_SequenceNodeOfSeqPOnCOfCCFOfECC2dOfExtCC2d(const Extrema_POnCurv2d &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Extrema_POnCurv2d & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Extrema_SequenceNodeOfSeqPOnCOfCCFOfECC2dOfExtCC2d {
	Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfECC2dOfExtCC2d GetHandle() {
	return *(Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfECC2dOfExtCC2d*) &$self;
	}
};
%extend Extrema_SequenceNodeOfSeqPOnCOfCCFOfECC2dOfExtCC2d {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") Extrema_SequenceNodeOfSeqPOnCOfCCFOfECC2dOfExtCC2d::~Extrema_SequenceNodeOfSeqPOnCOfCCFOfECC2dOfExtCC2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Extrema_SequenceNodeOfSeqPOnCOfCCFOfECC2dOfExtCC2d {
	void _kill_pointed() {
		delete $self;
	}
};

