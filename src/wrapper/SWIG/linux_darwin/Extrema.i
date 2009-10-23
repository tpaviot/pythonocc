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
%module Extrema

%include Extrema_renames.i
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%pythoncode {
import GarbageCollector
};

%include Extrema_dependencies.i


%include Extrema_headers.i




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
		Handle_Extrema_SequenceNodeOfSeqPOnCOfCCLocFOfLocECCOfLocateExtCC const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Extrema_SequenceNodeOfSeqPOnCOfCCLocFOfLocECCOfLocateExtCC {
	Extrema_SequenceNodeOfSeqPOnCOfCCLocFOfLocECCOfLocateExtCC* GetObject() {
	return (Extrema_SequenceNodeOfSeqPOnCOfCCLocFOfLocECCOfLocateExtCC*)$self->Access();
	}
};
%feature("shadow") Handle_Extrema_SequenceNodeOfSeqPOnCOfCCLocFOfLocECCOfLocateExtCC::~Handle_Extrema_SequenceNodeOfSeqPOnCOfCCLocFOfLocECCOfLocateExtCC %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


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
		Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfExtPC const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfExtPC {
	Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfExtPC* GetObject() {
	return (Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfExtPC*)$self->Access();
	}
};
%feature("shadow") Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfExtPC::~Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfExtPC %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


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
		Handle_Extrema_HArray1OfPOnCurv const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Extrema_HArray1OfPOnCurv {
	Extrema_HArray1OfPOnCurv* GetObject() {
	return (Extrema_HArray1OfPOnCurv*)$self->Access();
	}
};
%feature("shadow") Handle_Extrema_HArray1OfPOnCurv::~Handle_Extrema_HArray1OfPOnCurv %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


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
		Handle_Extrema_SequenceNodeOfSeqPOnCOfCCLocFOfLocECC2dOfLocateExtCC2d const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Extrema_SequenceNodeOfSeqPOnCOfCCLocFOfLocECC2dOfLocateExtCC2d {
	Extrema_SequenceNodeOfSeqPOnCOfCCLocFOfLocECC2dOfLocateExtCC2d* GetObject() {
	return (Extrema_SequenceNodeOfSeqPOnCOfCCLocFOfLocECC2dOfLocateExtCC2d*)$self->Access();
	}
};
%feature("shadow") Handle_Extrema_SequenceNodeOfSeqPOnCOfCCLocFOfLocECC2dOfLocateExtCC2d::~Handle_Extrema_SequenceNodeOfSeqPOnCOfCCLocFOfLocECC2dOfLocateExtCC2d %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


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
		Handle_Extrema_HArray2OfPOnSurf const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Extrema_HArray2OfPOnSurf {
	Extrema_HArray2OfPOnSurf* GetObject() {
	return (Extrema_HArray2OfPOnSurf*)$self->Access();
	}
};
%feature("shadow") Handle_Extrema_HArray2OfPOnSurf::~Handle_Extrema_HArray2OfPOnSurf %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


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
		Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfECCOfExtCC const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfECCOfExtCC {
	Extrema_SequenceNodeOfSeqPOnCOfCCFOfECCOfExtCC* GetObject() {
	return (Extrema_SequenceNodeOfSeqPOnCOfCCFOfECCOfExtCC*)$self->Access();
	}
};
%feature("shadow") Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfECCOfExtCC::~Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfECCOfExtCC %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


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
		Handle_Extrema_SequenceNodeOfSeqPCOfPCLocFOfLocEPCOfLocateExtPC2d const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Extrema_SequenceNodeOfSeqPCOfPCLocFOfLocEPCOfLocateExtPC2d {
	Extrema_SequenceNodeOfSeqPCOfPCLocFOfLocEPCOfLocateExtPC2d* GetObject() {
	return (Extrema_SequenceNodeOfSeqPCOfPCLocFOfLocEPCOfLocateExtPC2d*)$self->Access();
	}
};
%feature("shadow") Handle_Extrema_SequenceNodeOfSeqPCOfPCLocFOfLocEPCOfLocateExtPC2d::~Handle_Extrema_SequenceNodeOfSeqPCOfPCLocFOfLocEPCOfLocateExtPC2d %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


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
		Handle_Extrema_SequenceNodeOfSeqPCOfPCLocFOfLocEPCOfLocateExtPC const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Extrema_SequenceNodeOfSeqPCOfPCLocFOfLocEPCOfLocateExtPC {
	Extrema_SequenceNodeOfSeqPCOfPCLocFOfLocEPCOfLocateExtPC* GetObject() {
	return (Extrema_SequenceNodeOfSeqPCOfPCLocFOfLocEPCOfLocateExtPC*)$self->Access();
	}
};
%feature("shadow") Handle_Extrema_SequenceNodeOfSeqPCOfPCLocFOfLocEPCOfLocateExtPC::~Handle_Extrema_SequenceNodeOfSeqPCOfPCLocFOfLocEPCOfLocateExtPC %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


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
		Handle_Extrema_HArray2OfPOnCurv const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Extrema_HArray2OfPOnCurv {
	Extrema_HArray2OfPOnCurv* GetObject() {
	return (Extrema_HArray2OfPOnCurv*)$self->Access();
	}
};
%feature("shadow") Handle_Extrema_HArray2OfPOnCurv::~Handle_Extrema_HArray2OfPOnCurv %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


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
		Handle_Extrema_SequenceNodeOfSequenceOfPOnCurv const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Extrema_SequenceNodeOfSequenceOfPOnCurv {
	Extrema_SequenceNodeOfSequenceOfPOnCurv* GetObject() {
	return (Extrema_SequenceNodeOfSequenceOfPOnCurv*)$self->Access();
	}
};
%feature("shadow") Handle_Extrema_SequenceNodeOfSequenceOfPOnCurv::~Handle_Extrema_SequenceNodeOfSequenceOfPOnCurv %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


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
		Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfELPCOfLocateExtPC2d const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfELPCOfLocateExtPC2d {
	Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfELPCOfLocateExtPC2d* GetObject() {
	return (Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfELPCOfLocateExtPC2d*)$self->Access();
	}
};
%feature("shadow") Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfELPCOfLocateExtPC2d::~Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfELPCOfLocateExtPC2d %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


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
		Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfELCC2dOfLocateExtCC2d const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfELCC2dOfLocateExtCC2d {
	Extrema_SequenceNodeOfSeqPOnCOfCCFOfELCC2dOfLocateExtCC2d* GetObject() {
	return (Extrema_SequenceNodeOfSeqPOnCOfCCFOfELCC2dOfLocateExtCC2d*)$self->Access();
	}
};
%feature("shadow") Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfELCC2dOfLocateExtCC2d::~Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfELCC2dOfLocateExtCC2d %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


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
		Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfELPCOfLocateExtPC const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfELPCOfLocateExtPC {
	Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfELPCOfLocateExtPC* GetObject() {
	return (Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfELPCOfLocateExtPC*)$self->Access();
	}
};
%feature("shadow") Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfELPCOfLocateExtPC::~Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfELPCOfLocateExtPC %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


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
		Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfECC2dOfExtCC2d const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfECC2dOfExtCC2d {
	Extrema_SequenceNodeOfSeqPOnCOfCCFOfECC2dOfExtCC2d* GetObject() {
	return (Extrema_SequenceNodeOfSeqPOnCOfCCFOfECC2dOfExtCC2d*)$self->Access();
	}
};
%feature("shadow") Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfECC2dOfExtCC2d::~Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfECC2dOfExtCC2d %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


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
		Handle_Extrema_SequenceNodeOfSequenceOfPOnCurv2d const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Extrema_SequenceNodeOfSequenceOfPOnCurv2d {
	Extrema_SequenceNodeOfSequenceOfPOnCurv2d* GetObject() {
	return (Extrema_SequenceNodeOfSequenceOfPOnCurv2d*)$self->Access();
	}
};
%feature("shadow") Handle_Extrema_SequenceNodeOfSequenceOfPOnCurv2d::~Handle_Extrema_SequenceNodeOfSequenceOfPOnCurv2d %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Handle_Extrema_SequenceNodeOfSequenceOfBoolean;
class Handle_Extrema_SequenceNodeOfSequenceOfBoolean : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_Extrema_SequenceNodeOfSequenceOfBoolean();
		%feature("autodoc", "1");
		Handle_Extrema_SequenceNodeOfSequenceOfBoolean(const Handle_Extrema_SequenceNodeOfSequenceOfBoolean &aHandle);
		%feature("autodoc", "1");
		Handle_Extrema_SequenceNodeOfSequenceOfBoolean(const Extrema_SequenceNodeOfSequenceOfBoolean *anItem);
		%feature("autodoc", "1");
		Handle_Extrema_SequenceNodeOfSequenceOfBoolean & operator=(const Handle_Extrema_SequenceNodeOfSequenceOfBoolean &aHandle);
		%feature("autodoc", "1");
		Handle_Extrema_SequenceNodeOfSequenceOfBoolean & operator=(const Extrema_SequenceNodeOfSequenceOfBoolean *anItem);
		%feature("autodoc", "1");
		Handle_Extrema_SequenceNodeOfSequenceOfBoolean const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Extrema_SequenceNodeOfSequenceOfBoolean {
	Extrema_SequenceNodeOfSequenceOfBoolean* GetObject() {
	return (Extrema_SequenceNodeOfSequenceOfBoolean*)$self->Access();
	}
};
%feature("shadow") Handle_Extrema_SequenceNodeOfSequenceOfBoolean::~Handle_Extrema_SequenceNodeOfSequenceOfBoolean %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


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
		Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfExtPC2d const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfExtPC2d {
	Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfExtPC2d* GetObject() {
	return (Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfExtPC2d*)$self->Access();
	}
};
%feature("shadow") Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfExtPC2d::~Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfExtPC2d %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


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
		Handle_Extrema_HArray1OfPOnSurf const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Extrema_HArray1OfPOnSurf {
	Extrema_HArray1OfPOnSurf* GetObject() {
	return (Extrema_HArray1OfPOnSurf*)$self->Access();
	}
};
%feature("shadow") Handle_Extrema_HArray1OfPOnSurf::~Handle_Extrema_HArray1OfPOnSurf %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


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
		Handle_Extrema_HArray1OfPOnCurv2d const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Extrema_HArray1OfPOnCurv2d {
	Extrema_HArray1OfPOnCurv2d* GetObject() {
	return (Extrema_HArray1OfPOnCurv2d*)$self->Access();
	}
};
%feature("shadow") Handle_Extrema_HArray1OfPOnCurv2d::~Handle_Extrema_HArray1OfPOnCurv2d %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


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
		Handle_Extrema_HArray2OfPOnCurv2d const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Extrema_HArray2OfPOnCurv2d {
	Extrema_HArray2OfPOnCurv2d* GetObject() {
	return (Extrema_HArray2OfPOnCurv2d*)$self->Access();
	}
};
%feature("shadow") Handle_Extrema_HArray2OfPOnCurv2d::~Handle_Extrema_HArray2OfPOnCurv2d %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


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
		Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfELCCOfLocateExtCC const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfELCCOfLocateExtCC {
	Extrema_SequenceNodeOfSeqPOnCOfCCFOfELCCOfLocateExtCC* GetObject() {
	return (Extrema_SequenceNodeOfSeqPOnCOfCCFOfELCCOfLocateExtCC*)$self->Access();
	}
};
%feature("shadow") Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfELCCOfLocateExtCC::~Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfELCCOfLocateExtCC %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


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
		Handle_Extrema_SequenceNodeOfSequenceOfPOnSurf const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Extrema_SequenceNodeOfSequenceOfPOnSurf {
	Extrema_SequenceNodeOfSequenceOfPOnSurf* GetObject() {
	return (Extrema_SequenceNodeOfSequenceOfPOnSurf*)$self->Access();
	}
};
%feature("shadow") Handle_Extrema_SequenceNodeOfSequenceOfPOnSurf::~Handle_Extrema_SequenceNodeOfSequenceOfPOnSurf %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Extrema_POnCurv2d;
class Extrema_POnCurv2d {
	public:
		%feature("autodoc", "1");
		Extrema_POnCurv2d();
		%feature("autodoc", "1");
		Extrema_POnCurv2d(const Standard_Real U, const gp_Pnt2d &P);
		%feature("autodoc", "1");
		void SetValues(const Standard_Real U, const gp_Pnt2d &P);
		%feature("autodoc", "1");
		const gp_Pnt2d & Value() const;
		%feature("autodoc", "1");
		Standard_Real Parameter() const;
		%feature("autodoc", "1");
		Standard_Real _CSFDB_GetExtrema_POnCurv2dmyU() const;
		%feature("autodoc", "1");
		void _CSFDB_SetExtrema_POnCurv2dmyU(const Standard_Real p);
		%feature("autodoc", "1");
		const gp_Pnt2d & _CSFDB_GetExtrema_POnCurv2dmyP() const;

};
%feature("shadow") Extrema_POnCurv2d::~Extrema_POnCurv2d %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Extrema_POnSurf;
class Extrema_POnSurf {
	public:
		%feature("autodoc", "1");
		Extrema_POnSurf();
		%feature("autodoc", "1");
		Extrema_POnSurf(const Standard_Real U, const Standard_Real V, const gp_Pnt &P);
		%feature("autodoc", "1");
		const gp_Pnt & Value() const;
		%feature("autodoc","Parameter() -> [Standard_Real, Standard_Real]");
		void Parameter(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Real _CSFDB_GetExtrema_POnSurfmyU() const;
		%feature("autodoc", "1");
		void _CSFDB_SetExtrema_POnSurfmyU(const Standard_Real p);
		%feature("autodoc", "1");
		Standard_Real _CSFDB_GetExtrema_POnSurfmyV() const;
		%feature("autodoc", "1");
		void _CSFDB_SetExtrema_POnSurfmyV(const Standard_Real p);
		%feature("autodoc", "1");
		const gp_Pnt & _CSFDB_GetExtrema_POnSurfmyP() const;

};
%feature("shadow") Extrema_POnSurf::~Extrema_POnSurf %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Extrema_SequenceNodeOfSequenceOfBoolean;
class Extrema_SequenceNodeOfSequenceOfBoolean : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Extrema_SequenceNodeOfSequenceOfBoolean(const Standard_Boolean &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Standard_Boolean & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Extrema_SequenceNodeOfSequenceOfBoolean {
	Handle_Extrema_SequenceNodeOfSequenceOfBoolean GetHandle() {
	return *(Handle_Extrema_SequenceNodeOfSequenceOfBoolean*) &$self;
	}
};
%extend Extrema_SequenceNodeOfSequenceOfBoolean {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Extrema_SequenceNodeOfSequenceOfBoolean::~Extrema_SequenceNodeOfSequenceOfBoolean %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Extrema_SeqPOnCOfCCFOfELCCOfLocateExtCC;
class Extrema_SeqPOnCOfCCFOfELCCOfLocateExtCC : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		Extrema_SeqPOnCOfCCFOfELCCOfLocateExtCC();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const Extrema_SeqPOnCOfCCFOfELCCOfLocateExtCC & Assign(const Extrema_SeqPOnCOfCCFOfELCCOfLocateExtCC &Other);
		%feature("autodoc", "1");
		const Extrema_SeqPOnCOfCCFOfELCCOfLocateExtCC & operator=(const Extrema_SeqPOnCOfCCFOfELCCOfLocateExtCC &Other);
		%feature("autodoc", "1");
		void Append(const Extrema_POnCurv &T);
		%feature("autodoc", "1");
		void Append(Extrema_SeqPOnCOfCCFOfELCCOfLocateExtCC & S);
		%feature("autodoc", "1");
		void Prepend(const Extrema_POnCurv &T);
		%feature("autodoc", "1");
		void Prepend(Extrema_SeqPOnCOfCCFOfELCCOfLocateExtCC & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Extrema_POnCurv &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, Extrema_SeqPOnCOfCCFOfELCCOfLocateExtCC & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Extrema_POnCurv &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, Extrema_SeqPOnCOfCCFOfELCCOfLocateExtCC & S);
		%feature("autodoc", "1");
		const Extrema_POnCurv & First() const;
		%feature("autodoc", "1");
		const Extrema_POnCurv & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, Extrema_SeqPOnCOfCCFOfELCCOfLocateExtCC & S);
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
%feature("shadow") Extrema_SeqPOnCOfCCFOfELCCOfLocateExtCC::~Extrema_SeqPOnCOfCCFOfELCCOfLocateExtCC %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


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
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Extrema_EPCOfExtPC2d;
class Extrema_EPCOfExtPC2d {
	public:
		%feature("autodoc", "1");
		Extrema_EPCOfExtPC2d();
		%feature("autodoc", "1");
		Extrema_EPCOfExtPC2d(const gp_Pnt2d &P, const Adaptor2d_Curve2d &C, const Standard_Integer NbU, const Standard_Real TolU, const Standard_Real TolF);
		%feature("autodoc", "1");
		Extrema_EPCOfExtPC2d(const gp_Pnt2d &P, const Adaptor2d_Curve2d &C, const Standard_Integer NbU, const Standard_Real Umin, const Standard_Real Usup, const Standard_Real TolU, const Standard_Real TolF);
		%feature("autodoc", "1");
		void Initialize(const Adaptor2d_Curve2d &C, const Standard_Integer NbU, const Standard_Real TolU, const Standard_Real TolF);
		%feature("autodoc", "1");
		void Initialize(const Adaptor2d_Curve2d &C, const Standard_Integer NbU, const Standard_Real Umin, const Standard_Real Usup, const Standard_Real TolU, const Standard_Real TolF);
		%feature("autodoc", "1");
		void Initialize(const Adaptor2d_Curve2d &C);
		%feature("autodoc", "1");
		void Initialize(const Standard_Integer NbU, const Standard_Real Umin, const Standard_Real Usup, const Standard_Real TolU, const Standard_Real TolF);
		%feature("autodoc", "1");
		void Perform(const gp_Pnt2d &P);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbExt() const;
		%feature("autodoc", "1");
		Standard_Real Value(const Standard_Integer N) const;
		%feature("autodoc", "1");
		Standard_Boolean IsMin(const Standard_Integer N) const;
		%feature("autodoc", "1");
		Extrema_POnCurv2d Point(const Standard_Integer N) const;

};
%feature("shadow") Extrema_EPCOfExtPC2d::~Extrema_EPCOfExtPC2d %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


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
		Standard_Real Value(const Standard_Integer N) const;
		%feature("autodoc", "1");
		void Points(const Standard_Integer N, Extrema_POnSurf & P1, Extrema_POnSurf & P2) const;

};
%feature("shadow") Extrema_ExtSS::~Extrema_ExtSS %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Extrema_CCFOfELCCOfLocateExtCC;
class Extrema_CCFOfELCCOfLocateExtCC : public math_FunctionSetWithDerivatives {
	public:
		%feature("autodoc", "1");
		Extrema_CCFOfELCCOfLocateExtCC(const Adaptor3d_Curve &C1, const Adaptor3d_Curve &C2, const Standard_Real thetol=1.0000000000000000364321973154977415791655470656e-10);
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
		Standard_Real Value(const Standard_Integer N) const;
		%feature("autodoc", "1");
		void Points(const Standard_Integer N, Extrema_POnCurv & P1, Extrema_POnCurv & P2) const;

};
%feature("shadow") Extrema_CCFOfELCCOfLocateExtCC::~Extrema_CCFOfELCCOfLocateExtCC %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Extrema_HArray1OfPOnCurv2d;
class Extrema_HArray1OfPOnCurv2d : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Extrema_HArray1OfPOnCurv2d(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		Extrema_HArray1OfPOnCurv2d(const Standard_Integer Low, const Standard_Integer Up, const Extrema_POnCurv2d &V);
		%feature("autodoc", "1");
		void Init(const Extrema_POnCurv2d &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Extrema_POnCurv2d &Value);
		%feature("autodoc", "1");
		const Extrema_POnCurv2d & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Extrema_POnCurv2d & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const Extrema_Array1OfPOnCurv2d & Array1() const;
		%feature("autodoc", "1");
		Extrema_Array1OfPOnCurv2d & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Extrema_HArray1OfPOnCurv2d {
	Handle_Extrema_HArray1OfPOnCurv2d GetHandle() {
	return *(Handle_Extrema_HArray1OfPOnCurv2d*) &$self;
	}
};
%extend Extrema_HArray1OfPOnCurv2d {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Extrema_HArray1OfPOnCurv2d::~Extrema_HArray1OfPOnCurv2d %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Extrema_ECC2dOfExtCC2d;
class Extrema_ECC2dOfExtCC2d {
	public:
		%feature("autodoc", "1");
		Extrema_ECC2dOfExtCC2d(const Adaptor2d_Curve2d &C1, const Adaptor2d_Curve2d &C2, const Standard_Integer NbU, const Standard_Integer NbV, const Standard_Real TolU, const Standard_Real TolV);
		%feature("autodoc", "1");
		Extrema_ECC2dOfExtCC2d(const Adaptor2d_Curve2d &C1, const Adaptor2d_Curve2d &C2, const Standard_Real Uinf, const Standard_Real Usup, const Standard_Real Vinf, const Standard_Real Vsup, const Standard_Integer NbU, const Standard_Integer NbV, const Standard_Real TolU, const Standard_Real TolV);
		%feature("autodoc", "1");
		void Perform(const Adaptor2d_Curve2d &C1, const Adaptor2d_Curve2d &C2, const Standard_Real Uinf, const Standard_Real Usup, const Standard_Real Vinf, const Standard_Real Vsup, const Standard_Integer NbU, const Standard_Integer NbV, const Standard_Real TolU, const Standard_Real TolV);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbExt() const;
		%feature("autodoc", "1");
		Standard_Real Value(const Standard_Integer N=1) const;
		%feature("autodoc", "1");
		void Points(const Standard_Integer N, Extrema_POnCurv2d & P1, Extrema_POnCurv2d & P2) const;

};
%feature("shadow") Extrema_ECC2dOfExtCC2d::~Extrema_ECC2dOfExtCC2d %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


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
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Extrema_ExtElCS;
class Extrema_ExtElCS {
	public:
		%feature("autodoc", "1");
		Extrema_ExtElCS();
		%feature("autodoc", "1");
		Extrema_ExtElCS(const gp_Lin &C, const gp_Pln &S);
		%feature("autodoc", "1");
		void Perform(const gp_Lin &C, const gp_Pln &S);
		%feature("autodoc", "1");
		Extrema_ExtElCS(const gp_Lin &C, const gp_Cylinder &S);
		%feature("autodoc", "1");
		void Perform(const gp_Lin &C, const gp_Cylinder &S);
		%feature("autodoc", "1");
		Extrema_ExtElCS(const gp_Lin &C, const gp_Cone &S);
		%feature("autodoc", "1");
		void Perform(const gp_Lin &C, const gp_Cone &S);
		%feature("autodoc", "1");
		Extrema_ExtElCS(const gp_Lin &C, const gp_Sphere &S);
		%feature("autodoc", "1");
		void Perform(const gp_Lin &C, const gp_Sphere &S);
		%feature("autodoc", "1");
		Extrema_ExtElCS(const gp_Lin &C, const gp_Torus &S);
		%feature("autodoc", "1");
		void Perform(const gp_Lin &C, const gp_Torus &S);
		%feature("autodoc", "1");
		Extrema_ExtElCS(const gp_Circ &C, const gp_Pln &S);
		%feature("autodoc", "1");
		void Perform(const gp_Circ &C, const gp_Pln &S);
		%feature("autodoc", "1");
		Extrema_ExtElCS(const gp_Circ &C, const gp_Cylinder &S);
		%feature("autodoc", "1");
		void Perform(const gp_Circ &C, const gp_Cylinder &S);
		%feature("autodoc", "1");
		Extrema_ExtElCS(const gp_Circ &C, const gp_Cone &S);
		%feature("autodoc", "1");
		void Perform(const gp_Circ &C, const gp_Cone &S);
		%feature("autodoc", "1");
		Extrema_ExtElCS(const gp_Circ &C, const gp_Sphere &S);
		%feature("autodoc", "1");
		void Perform(const gp_Circ &C, const gp_Sphere &S);
		%feature("autodoc", "1");
		Extrema_ExtElCS(const gp_Circ &C, const gp_Torus &S);
		%feature("autodoc", "1");
		void Perform(const gp_Circ &C, const gp_Torus &S);
		%feature("autodoc", "1");
		Extrema_ExtElCS(const gp_Hypr &C, const gp_Pln &S);
		%feature("autodoc", "1");
		void Perform(const gp_Hypr &C, const gp_Pln &S);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Boolean IsParallel() const;
		%feature("autodoc", "1");
		Standard_Integer NbExt() const;
		%feature("autodoc", "1");
		Standard_Real Value(const Standard_Integer N=1) const;
		%feature("autodoc", "1");
		void Points(const Standard_Integer N, Extrema_POnCurv & P1, Extrema_POnSurf & P2) const;

};
%feature("shadow") Extrema_ExtElCS::~Extrema_ExtElCS %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


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
		Standard_Real Value() const;
		%feature("autodoc", "1");
		const Extrema_POnSurf & PointOnS1() const;
		%feature("autodoc", "1");
		const Extrema_POnSurf & PointOnS2() const;

};
%feature("shadow") Extrema_GenLocateExtSS::~Extrema_GenLocateExtSS %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


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
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Extrema_HArray2OfPOnCurv2d::~Extrema_HArray2OfPOnCurv2d %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Extrema_ELCC2dOfLocateExtCC2d;
class Extrema_ELCC2dOfLocateExtCC2d {
	public:
		%feature("autodoc", "1");
		Extrema_ELCC2dOfLocateExtCC2d(const Adaptor2d_Curve2d &C1, const Adaptor2d_Curve2d &C2, const Standard_Integer NbU, const Standard_Integer NbV, const Standard_Real TolU, const Standard_Real TolV);
		%feature("autodoc", "1");
		Extrema_ELCC2dOfLocateExtCC2d(const Adaptor2d_Curve2d &C1, const Adaptor2d_Curve2d &C2, const Standard_Real Uinf, const Standard_Real Usup, const Standard_Real Vinf, const Standard_Real Vsup, const Standard_Integer NbU, const Standard_Integer NbV, const Standard_Real TolU, const Standard_Real TolV);
		%feature("autodoc", "1");
		void Perform(const Adaptor2d_Curve2d &C1, const Adaptor2d_Curve2d &C2, const Standard_Real Uinf, const Standard_Real Usup, const Standard_Real Vinf, const Standard_Real Vsup, const Standard_Integer NbU, const Standard_Integer NbV, const Standard_Real TolU, const Standard_Real TolV);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbExt() const;
		%feature("autodoc", "1");
		Standard_Real Value(const Standard_Integer N=1) const;
		%feature("autodoc", "1");
		void Points(const Standard_Integer N, Extrema_POnCurv2d & P1, Extrema_POnCurv2d & P2) const;

};
%feature("shadow") Extrema_ELCC2dOfLocateExtCC2d::~Extrema_ELCC2dOfLocateExtCC2d %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Extrema_LocECCOfLocateExtCC;
class Extrema_LocECCOfLocateExtCC {
	public:
		%feature("autodoc", "1");
		Extrema_LocECCOfLocateExtCC(const Adaptor3d_Curve &C1, const Adaptor3d_Curve &C2, const Standard_Real U0, const Standard_Real V0, const Standard_Real TolU, const Standard_Real TolV);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Real Value() const;
		%feature("autodoc", "1");
		void Point(Extrema_POnCurv & P1, Extrema_POnCurv & P2) const;

};
%feature("shadow") Extrema_LocECCOfLocateExtCC::~Extrema_LocECCOfLocateExtCC %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Extrema_LocateExtCC;
class Extrema_LocateExtCC {
	public:
		%feature("autodoc", "1");
		Extrema_LocateExtCC(const Adaptor3d_Curve &C1, const Adaptor3d_Curve &C2, const Standard_Real U0, const Standard_Real V0);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Real Value() const;
		%feature("autodoc", "1");
		void Point(Extrema_POnCurv & P1, Extrema_POnCurv & P2) const;

};
%feature("shadow") Extrema_LocateExtCC::~Extrema_LocateExtCC %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


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
		Standard_Real Value(const Standard_Integer N=1) const;
		%feature("autodoc", "1");
		void Points(const Standard_Integer N, Extrema_POnCurv2d & P1, Extrema_POnCurv2d & P2) const;
		%feature("autodoc","TrimmedDistances() -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real]");
		void TrimmedDistances(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & P11, gp_Pnt2d & P12, gp_Pnt2d & P21, gp_Pnt2d & P22) const;

};
%feature("shadow") Extrema_ExtCC2d::~Extrema_ExtCC2d %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Extrema_ExtElSS;
class Extrema_ExtElSS {
	public:
		%feature("autodoc", "1");
		Extrema_ExtElSS();
		%feature("autodoc", "1");
		Extrema_ExtElSS(const gp_Pln &S1, const gp_Pln &S2);
		%feature("autodoc", "1");
		void Perform(const gp_Pln &S1, const gp_Pln &S2);
		%feature("autodoc", "1");
		Extrema_ExtElSS(const gp_Pln &S1, const gp_Sphere &S2);
		%feature("autodoc", "1");
		void Perform(const gp_Pln &S1, const gp_Sphere &S2);
		%feature("autodoc", "1");
		Extrema_ExtElSS(const gp_Sphere &S1, const gp_Sphere &S2);
		%feature("autodoc", "1");
		void Perform(const gp_Sphere &S1, const gp_Sphere &S2);
		%feature("autodoc", "1");
		Extrema_ExtElSS(const gp_Sphere &S1, const gp_Cylinder &S2);
		%feature("autodoc", "1");
		void Perform(const gp_Sphere &S1, const gp_Cylinder &S2);
		%feature("autodoc", "1");
		Extrema_ExtElSS(const gp_Sphere &S1, const gp_Cone &S2);
		%feature("autodoc", "1");
		void Perform(const gp_Sphere &S1, const gp_Cone &S2);
		%feature("autodoc", "1");
		Extrema_ExtElSS(const gp_Sphere &S1, const gp_Torus &S2);
		%feature("autodoc", "1");
		void Perform(const gp_Sphere &S1, const gp_Torus &S2);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Boolean IsParallel() const;
		%feature("autodoc", "1");
		Standard_Integer NbExt() const;
		%feature("autodoc", "1");
		Standard_Real Value(const Standard_Integer N=1) const;
		%feature("autodoc", "1");
		void Points(const Standard_Integer N, Extrema_POnSurf & P1, Extrema_POnSurf & P2) const;

};
%feature("shadow") Extrema_ExtElSS::~Extrema_ExtElSS %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Extrema_ExtElC2d;
class Extrema_ExtElC2d {
	public:
		%feature("autodoc", "1");
		Extrema_ExtElC2d();
		%feature("autodoc", "1");
		Extrema_ExtElC2d(const gp_Lin2d &C1, const gp_Lin2d &C2, const Standard_Real AngTol);
		%feature("autodoc", "1");
		Extrema_ExtElC2d(const gp_Lin2d &C1, const gp_Circ2d &C2, const Standard_Real Tol);
		%feature("autodoc", "1");
		Extrema_ExtElC2d(const gp_Lin2d &C1, const gp_Elips2d &C2);
		%feature("autodoc", "1");
		Extrema_ExtElC2d(const gp_Lin2d &C1, const gp_Hypr2d &C2);
		%feature("autodoc", "1");
		Extrema_ExtElC2d(const gp_Lin2d &C1, const gp_Parab2d &C2);
		%feature("autodoc", "1");
		Extrema_ExtElC2d(const gp_Circ2d &C1, const gp_Circ2d &C2);
		%feature("autodoc", "1");
		Extrema_ExtElC2d(const gp_Circ2d &C1, const gp_Elips2d &C2);
		%feature("autodoc", "1");
		Extrema_ExtElC2d(const gp_Circ2d &C1, const gp_Hypr2d &C2);
		%feature("autodoc", "1");
		Extrema_ExtElC2d(const gp_Circ2d &C1, const gp_Parab2d &C2);
		%feature("autodoc", "1");
		Extrema_ExtElC2d(const gp_Elips2d &C1, const gp_Elips2d &C2);
		%feature("autodoc", "1");
		Extrema_ExtElC2d(const gp_Elips2d &C1, const gp_Hypr2d &C2);
		%feature("autodoc", "1");
		Extrema_ExtElC2d(const gp_Elips2d &C1, const gp_Parab2d &C2);
		%feature("autodoc", "1");
		Extrema_ExtElC2d(const gp_Hypr2d &C1, const gp_Hypr2d &C2);
		%feature("autodoc", "1");
		Extrema_ExtElC2d(const gp_Hypr2d &C1, const gp_Parab2d &C2);
		%feature("autodoc", "1");
		Extrema_ExtElC2d(const gp_Parab2d &C1, const gp_Parab2d &C2);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Boolean IsParallel() const;
		%feature("autodoc", "1");
		Standard_Integer NbExt() const;
		%feature("autodoc", "1");
		Standard_Real Value(const Standard_Integer N=1) const;
		%feature("autodoc", "1");
		void Points(const Standard_Integer N, Extrema_POnCurv2d & P1, Extrema_POnCurv2d & P2) const;

};
%feature("shadow") Extrema_ExtElC2d::~Extrema_ExtElC2d %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Extrema_LocEPCOfLocateExtPC;
class Extrema_LocEPCOfLocateExtPC {
	public:
		%feature("autodoc", "1");
		Extrema_LocEPCOfLocateExtPC();
		%feature("autodoc", "1");
		Extrema_LocEPCOfLocateExtPC(const gp_Pnt &P, const Adaptor3d_Curve &C, const Standard_Real U0, const Standard_Real TolU);
		%feature("autodoc", "1");
		Extrema_LocEPCOfLocateExtPC(const gp_Pnt &P, const Adaptor3d_Curve &C, const Standard_Real U0, const Standard_Real Umin, const Standard_Real Usup, const Standard_Real TolU);
		%feature("autodoc", "1");
		void Initialize(const Adaptor3d_Curve &C, const Standard_Real Umin, const Standard_Real Usup, const Standard_Real TolU);
		%feature("autodoc", "1");
		void Perform(const gp_Pnt &P, const Standard_Real U0);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Real Value() const;
		%feature("autodoc", "1");
		Standard_Boolean IsMin() const;
		%feature("autodoc", "1");
		Extrema_POnCurv Point() const;

};
%feature("shadow") Extrema_LocEPCOfLocateExtPC::~Extrema_LocEPCOfLocateExtPC %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


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
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Extrema_HArray1OfPOnCurv::~Extrema_HArray1OfPOnCurv %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


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
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Extrema_SequenceNodeOfSeqPOnCOfCCFOfECC2dOfExtCC2d::~Extrema_SequenceNodeOfSeqPOnCOfCCFOfECC2dOfExtCC2d %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


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
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Extrema_SequenceNodeOfSeqPOnCOfCCFOfECCOfExtCC::~Extrema_SequenceNodeOfSeqPOnCOfCCFOfECCOfExtCC %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


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
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfELPCOfLocateExtPC2d::~Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfELPCOfLocateExtPC2d %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Extrema_CurveTool;
class Extrema_CurveTool {
	public:
		%feature("autodoc", "1");
		Extrema_CurveTool();
		%feature("autodoc", "1");
		Standard_Real FirstParameter(const Adaptor3d_Curve &C);
		%feature("autodoc", "1");
		Standard_Real LastParameter(const Adaptor3d_Curve &C);
		%feature("autodoc", "1");
		GeomAbs_Shape Continuity(const Adaptor3d_Curve &C);
		%feature("autodoc", "1");
		Standard_Integer NbIntervals(Adaptor3d_Curve & C, const GeomAbs_Shape S);
		%feature("autodoc", "1");
		void Intervals(Adaptor3d_Curve & C, TColStd_Array1OfReal & T, const GeomAbs_Shape S);
		%feature("autodoc", "1");
		Standard_Boolean IsPeriodic(const Adaptor3d_Curve &C);
		%feature("autodoc", "1");
		Standard_Real Period(const Adaptor3d_Curve &C);
		%feature("autodoc", "1");
		Standard_Real Resolution(const Adaptor3d_Curve &C, const Standard_Real R3d);
		%feature("autodoc", "1");
		GeomAbs_CurveType GetType(const Adaptor3d_Curve &C);
		%feature("autodoc", "1");
		gp_Pnt Value(const Adaptor3d_Curve &C, const Standard_Real U);
		%feature("autodoc", "1");
		void D1(const Adaptor3d_Curve &C, const Standard_Real U, gp_Pnt & P, gp_Vec & V);
		%feature("autodoc", "1");
		void D2(const Adaptor3d_Curve &C, const Standard_Real U, gp_Pnt & P, gp_Vec & V1, gp_Vec & V2);
		%feature("autodoc", "1");
		gp_Lin Line(const Adaptor3d_Curve &C);
		%feature("autodoc", "1");
		gp_Circ Circle(const Adaptor3d_Curve &C);
		%feature("autodoc", "1");
		gp_Elips Ellipse(const Adaptor3d_Curve &C);
		%feature("autodoc", "1");
		gp_Hypr Hyperbola(const Adaptor3d_Curve &C);
		%feature("autodoc", "1");
		gp_Parab Parabola(const Adaptor3d_Curve &C);
		%feature("autodoc", "1");
		Standard_Integer Degree(const Adaptor3d_Curve &C);
		%feature("autodoc", "1");
		Standard_Boolean IsRational(const Adaptor3d_Curve &C);
		%feature("autodoc", "1");
		Standard_Integer NbPoles(const Adaptor3d_Curve &C);
		%feature("autodoc", "1");
		Standard_Integer NbKnots(const Adaptor3d_Curve &C);
		%feature("autodoc", "1");
		Handle_Geom_BezierCurve Bezier(const Adaptor3d_Curve &C);
		%feature("autodoc", "1");
		Handle_Geom_BSplineCurve BSpline(const Adaptor3d_Curve &C);

};
%feature("shadow") Extrema_CurveTool::~Extrema_CurveTool %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Extrema_PCFOfEPCOfExtPC2d;
class Extrema_PCFOfEPCOfExtPC2d : public math_FunctionWithDerivative {
	public:
		%feature("autodoc", "1");
		Extrema_PCFOfEPCOfExtPC2d();
		%feature("autodoc", "1");
		Extrema_PCFOfEPCOfExtPC2d(const gp_Pnt2d &P, const Adaptor2d_Curve2d &C);
		%feature("autodoc", "1");
		void Initialize(const Adaptor2d_Curve2d &C);
		%feature("autodoc", "1");
		void SetPoint(const gp_Pnt2d &P);
		%feature("autodoc","Value(Standard_Real U) -> Standard_Real");
		virtual		Standard_Boolean Value(const Standard_Real U, Standard_Real &OutValue);
		%feature("autodoc","Derivative(Standard_Real U) -> Standard_Real");
		virtual		Standard_Boolean Derivative(const Standard_Real U, Standard_Real &OutValue);
		%feature("autodoc","Values(Standard_Real U) -> [Standard_RealStandard_Real]");
		virtual		Standard_Boolean Values(const Standard_Real U, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Integer GetStateNumber();
		%feature("autodoc", "1");
		Standard_Integer NbExt() const;
		%feature("autodoc", "1");
		Standard_Real Value(const Standard_Integer N) const;
		%feature("autodoc", "1");
		Standard_Boolean IsMin(const Standard_Integer N) const;
		%feature("autodoc", "1");
		Extrema_POnCurv2d Point(const Standard_Integer N) const;

};
%feature("shadow") Extrema_PCFOfEPCOfExtPC2d::~Extrema_PCFOfEPCOfExtPC2d %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Extrema_CCLocFOfLocECC2dOfLocateExtCC2d;
class Extrema_CCLocFOfLocECC2dOfLocateExtCC2d : public math_FunctionSetWithDerivatives {
	public:
		%feature("autodoc", "1");
		Extrema_CCLocFOfLocECC2dOfLocateExtCC2d(const Adaptor2d_Curve2d &C1, const Adaptor2d_Curve2d &C2, const Standard_Real thetol=1.0000000000000000364321973154977415791655470656e-10);
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
		Standard_Real Value(const Standard_Integer N) const;
		%feature("autodoc", "1");
		void Points(const Standard_Integer N, Extrema_POnCurv2d & P1, Extrema_POnCurv2d & P2) const;

};
%feature("shadow") Extrema_CCLocFOfLocECC2dOfLocateExtCC2d::~Extrema_CCLocFOfLocECC2dOfLocateExtCC2d %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


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
	GarbageCollector.occ_gc.append(self)
%}


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
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Extrema_SequenceOfBoolean;
class Extrema_SequenceOfBoolean : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		Extrema_SequenceOfBoolean();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const Extrema_SequenceOfBoolean & Assign(const Extrema_SequenceOfBoolean &Other);
		%feature("autodoc", "1");
		const Extrema_SequenceOfBoolean & operator=(const Extrema_SequenceOfBoolean &Other);
		%feature("autodoc", "1");
		void Append(const Standard_Boolean &T);
		%feature("autodoc", "1");
		void Append(Extrema_SequenceOfBoolean & S);
		%feature("autodoc", "1");
		void Prepend(const Standard_Boolean &T);
		%feature("autodoc", "1");
		void Prepend(Extrema_SequenceOfBoolean & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Standard_Boolean &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, Extrema_SequenceOfBoolean & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Standard_Boolean &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, Extrema_SequenceOfBoolean & S);
		%feature("autodoc", "1");
		const Standard_Boolean & First() const;
		%feature("autodoc", "1");
		const Standard_Boolean & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, Extrema_SequenceOfBoolean & S);
		%feature("autodoc", "1");
		const Standard_Boolean & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Standard_Boolean & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Standard_Boolean &I);
		%feature("autodoc", "1");
		Standard_Boolean & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Standard_Boolean & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") Extrema_SequenceOfBoolean::~Extrema_SequenceOfBoolean %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Extrema_ExtPExtS;
class Extrema_ExtPExtS {
	public:
		%feature("autodoc", "1");
		Extrema_ExtPExtS();
		%feature("autodoc", "1");
		Extrema_ExtPExtS(const gp_Pnt &P, const Adaptor3d_SurfaceOfLinearExtrusion &S, const Standard_Real Umin, const Standard_Real Usup, const Standard_Real Vmin, const Standard_Real Vsup, const Standard_Real TolU, const Standard_Real TolV);
		%feature("autodoc", "1");
		Extrema_ExtPExtS(const gp_Pnt &P, const Adaptor3d_SurfaceOfLinearExtrusion &S, const Standard_Real TolU, const Standard_Real TolV);
		%feature("autodoc", "1");
		void Initialize(const Adaptor3d_SurfaceOfLinearExtrusion &S, const Standard_Real Uinf, const Standard_Real Usup, const Standard_Real Vinf, const Standard_Real Vsup, const Standard_Real TolU, const Standard_Real TolV);
		%feature("autodoc", "1");
		void Perform(const gp_Pnt &P);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbExt() const;
		%feature("autodoc", "1");
		Standard_Real Value(const Standard_Integer N) const;
		%feature("autodoc", "1");
		Extrema_POnSurf Point(const Standard_Integer N) const;

};
%feature("shadow") Extrema_ExtPExtS::~Extrema_ExtPExtS %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


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
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Extrema_HArray2OfPOnSurf::~Extrema_HArray2OfPOnSurf %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Extrema_ExtCC;
class Extrema_ExtCC {
	public:
		%feature("autodoc", "1");
		Extrema_ExtCC();
		%feature("autodoc", "1");
		Extrema_ExtCC(const Adaptor3d_Curve &C1, const Adaptor3d_Curve &C2, const Standard_Real TolC1=1.0000000000000000364321973154977415791655470656e-10, const Standard_Real TolC2=1.0000000000000000364321973154977415791655470656e-10);
		%feature("autodoc", "1");
		Extrema_ExtCC(const Adaptor3d_Curve &C1, const Adaptor3d_Curve &C2, const Standard_Real U1, const Standard_Real U2, const Standard_Real V1, const Standard_Real V2, const Standard_Real TolC1=1.0000000000000000364321973154977415791655470656e-10, const Standard_Real TolC2=1.0000000000000000364321973154977415791655470656e-10);
		%feature("autodoc", "1");
		void Initialize(const Adaptor3d_Curve &C2, const Standard_Real V1, const Standard_Real V2, const Standard_Real TolC1=1.0000000000000000364321973154977415791655470656e-10, const Standard_Real TolC2=1.0000000000000000364321973154977415791655470656e-10);
		%feature("autodoc", "1");
		void Perform(const Adaptor3d_Curve &C1, const Standard_Real U1, const Standard_Real U2);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbExt() const;
		%feature("autodoc", "1");
		Standard_Boolean IsParallel() const;
		%feature("autodoc", "1");
		Standard_Real Value(const Standard_Integer N=1) const;
		%feature("autodoc", "1");
		void Points(const Standard_Integer N, Extrema_POnCurv & P1, Extrema_POnCurv & P2) const;
		%feature("autodoc","TrimmedDistances() -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real]");
		void TrimmedDistances(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt & P11, gp_Pnt & P12, gp_Pnt & P21, gp_Pnt & P22) const;

};
%feature("shadow") Extrema_ExtCC::~Extrema_ExtCC %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Extrema_SeqPOnCOfCCFOfECCOfExtCC;
class Extrema_SeqPOnCOfCCFOfECCOfExtCC : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		Extrema_SeqPOnCOfCCFOfECCOfExtCC();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const Extrema_SeqPOnCOfCCFOfECCOfExtCC & Assign(const Extrema_SeqPOnCOfCCFOfECCOfExtCC &Other);
		%feature("autodoc", "1");
		const Extrema_SeqPOnCOfCCFOfECCOfExtCC & operator=(const Extrema_SeqPOnCOfCCFOfECCOfExtCC &Other);
		%feature("autodoc", "1");
		void Append(const Extrema_POnCurv &T);
		%feature("autodoc", "1");
		void Append(Extrema_SeqPOnCOfCCFOfECCOfExtCC & S);
		%feature("autodoc", "1");
		void Prepend(const Extrema_POnCurv &T);
		%feature("autodoc", "1");
		void Prepend(Extrema_SeqPOnCOfCCFOfECCOfExtCC & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Extrema_POnCurv &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, Extrema_SeqPOnCOfCCFOfECCOfExtCC & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Extrema_POnCurv &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, Extrema_SeqPOnCOfCCFOfECCOfExtCC & S);
		%feature("autodoc", "1");
		const Extrema_POnCurv & First() const;
		%feature("autodoc", "1");
		const Extrema_POnCurv & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, Extrema_SeqPOnCOfCCFOfECCOfExtCC & S);
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
%feature("shadow") Extrema_SeqPOnCOfCCFOfECCOfExtCC::~Extrema_SeqPOnCOfCCFOfECCOfExtCC %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


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
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Extrema_PCFOfEPCOfELPCOfLocateExtPC2d;
class Extrema_PCFOfEPCOfELPCOfLocateExtPC2d : public math_FunctionWithDerivative {
	public:
		%feature("autodoc", "1");
		Extrema_PCFOfEPCOfELPCOfLocateExtPC2d();
		%feature("autodoc", "1");
		Extrema_PCFOfEPCOfELPCOfLocateExtPC2d(const gp_Pnt2d &P, const Adaptor2d_Curve2d &C);
		%feature("autodoc", "1");
		void Initialize(const Adaptor2d_Curve2d &C);
		%feature("autodoc", "1");
		void SetPoint(const gp_Pnt2d &P);
		%feature("autodoc","Value(Standard_Real U) -> Standard_Real");
		virtual		Standard_Boolean Value(const Standard_Real U, Standard_Real &OutValue);
		%feature("autodoc","Derivative(Standard_Real U) -> Standard_Real");
		virtual		Standard_Boolean Derivative(const Standard_Real U, Standard_Real &OutValue);
		%feature("autodoc","Values(Standard_Real U) -> [Standard_RealStandard_Real]");
		virtual		Standard_Boolean Values(const Standard_Real U, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Integer GetStateNumber();
		%feature("autodoc", "1");
		Standard_Integer NbExt() const;
		%feature("autodoc", "1");
		Standard_Real Value(const Standard_Integer N) const;
		%feature("autodoc", "1");
		Standard_Boolean IsMin(const Standard_Integer N) const;
		%feature("autodoc", "1");
		Extrema_POnCurv2d Point(const Standard_Integer N) const;

};
%feature("shadow") Extrema_PCFOfEPCOfELPCOfLocateExtPC2d::~Extrema_PCFOfEPCOfELPCOfLocateExtPC2d %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


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
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Extrema_ExtPC;
class Extrema_ExtPC {
	public:
		%feature("autodoc", "1");
		Extrema_ExtPC();
		%feature("autodoc", "1");
		Extrema_ExtPC(const gp_Pnt &P, const Adaptor3d_Curve &C, const Standard_Real Uinf, const Standard_Real Usup, const Standard_Real TolF=1.0000000000000000364321973154977415791655470656e-10);
		%feature("autodoc", "1");
		Extrema_ExtPC(const gp_Pnt &P, const Adaptor3d_Curve &C, const Standard_Real TolF=1.0000000000000000364321973154977415791655470656e-10);
		%feature("autodoc", "1");
		void Initialize(const Adaptor3d_Curve &C, const Standard_Real Uinf, const Standard_Real Usup, const Standard_Real TolF=1.0000000000000000364321973154977415791655470656e-10);
		%feature("autodoc", "1");
		void Perform(const gp_Pnt &P);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Real Value(const Standard_Integer N) const;
		%feature("autodoc", "1");
		Standard_Integer NbExt() const;
		%feature("autodoc", "1");
		Standard_Boolean IsMin(const Standard_Integer N) const;
		%feature("autodoc", "1");
		Extrema_POnCurv Point(const Standard_Integer N) const;
		%feature("autodoc","TrimmedDistances() -> [Standard_Real, Standard_Real]");
		void TrimmedDistances(Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt & P1, gp_Pnt & P2) const;

};
%feature("shadow") Extrema_ExtPC::~Extrema_ExtPC %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Extrema_LocateExtPC2d;
class Extrema_LocateExtPC2d {
	public:
		%feature("autodoc", "1");
		Extrema_LocateExtPC2d();
		%feature("autodoc", "1");
		Extrema_LocateExtPC2d(const gp_Pnt2d &P, const Adaptor2d_Curve2d &C, const Standard_Real U0, const Standard_Real TolF);
		%feature("autodoc", "1");
		Extrema_LocateExtPC2d(const gp_Pnt2d &P, const Adaptor2d_Curve2d &C, const Standard_Real U0, const Standard_Real Umin, const Standard_Real Usup, const Standard_Real TolF);
		%feature("autodoc", "1");
		void Initialize(const Adaptor2d_Curve2d &C, const Standard_Real Umin, const Standard_Real Usup, const Standard_Real TolF);
		%feature("autodoc", "1");
		void Perform(const gp_Pnt2d &P, const Standard_Real U0);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Real Value() const;
		%feature("autodoc", "1");
		Standard_Boolean IsMin() const;
		%feature("autodoc", "1");
		Extrema_POnCurv2d Point() const;

};
%feature("shadow") Extrema_LocateExtPC2d::~Extrema_LocateExtPC2d %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Extrema_SequenceNodeOfSeqPOnCOfCCLocFOfLocECCOfLocateExtCC;
class Extrema_SequenceNodeOfSeqPOnCOfCCLocFOfLocECCOfLocateExtCC : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Extrema_SequenceNodeOfSeqPOnCOfCCLocFOfLocECCOfLocateExtCC(const Extrema_POnCurv &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Extrema_POnCurv & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Extrema_SequenceNodeOfSeqPOnCOfCCLocFOfLocECCOfLocateExtCC {
	Handle_Extrema_SequenceNodeOfSeqPOnCOfCCLocFOfLocECCOfLocateExtCC GetHandle() {
	return *(Handle_Extrema_SequenceNodeOfSeqPOnCOfCCLocFOfLocECCOfLocateExtCC*) &$self;
	}
};
%extend Extrema_SequenceNodeOfSeqPOnCOfCCLocFOfLocECCOfLocateExtCC {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Extrema_SequenceNodeOfSeqPOnCOfCCLocFOfLocECCOfLocateExtCC::~Extrema_SequenceNodeOfSeqPOnCOfCCLocFOfLocECCOfLocateExtCC %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Extrema_LocateExtPC;
class Extrema_LocateExtPC {
	public:
		%feature("autodoc", "1");
		Extrema_LocateExtPC();
		%feature("autodoc", "1");
		Extrema_LocateExtPC(const gp_Pnt &P, const Adaptor3d_Curve &C, const Standard_Real U0, const Standard_Real TolF);
		%feature("autodoc", "1");
		Extrema_LocateExtPC(const gp_Pnt &P, const Adaptor3d_Curve &C, const Standard_Real U0, const Standard_Real Umin, const Standard_Real Usup, const Standard_Real TolF);
		%feature("autodoc", "1");
		void Initialize(const Adaptor3d_Curve &C, const Standard_Real Umin, const Standard_Real Usup, const Standard_Real TolF);
		%feature("autodoc", "1");
		void Perform(const gp_Pnt &P, const Standard_Real U0);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Real Value() const;
		%feature("autodoc", "1");
		Standard_Boolean IsMin() const;
		%feature("autodoc", "1");
		Extrema_POnCurv Point() const;

};
%feature("shadow") Extrema_LocateExtPC::~Extrema_LocateExtPC %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


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
		Standard_Real Value() const;
		%feature("autodoc", "1");
		const Extrema_POnCurv & PointOnCurve() const;
		%feature("autodoc", "1");
		const Extrema_POnSurf & PointOnSurface() const;

};
%feature("shadow") Extrema_GenLocateExtCS::~Extrema_GenLocateExtCS %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


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
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Extrema_SequenceNodeOfSeqPOnCOfCCFOfELCC2dOfLocateExtCC2d::~Extrema_SequenceNodeOfSeqPOnCOfCCFOfELCC2dOfLocateExtCC2d %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Extrema_SeqPOnCOfCCFOfECC2dOfExtCC2d;
class Extrema_SeqPOnCOfCCFOfECC2dOfExtCC2d : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		Extrema_SeqPOnCOfCCFOfECC2dOfExtCC2d();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const Extrema_SeqPOnCOfCCFOfECC2dOfExtCC2d & Assign(const Extrema_SeqPOnCOfCCFOfECC2dOfExtCC2d &Other);
		%feature("autodoc", "1");
		const Extrema_SeqPOnCOfCCFOfECC2dOfExtCC2d & operator=(const Extrema_SeqPOnCOfCCFOfECC2dOfExtCC2d &Other);
		%feature("autodoc", "1");
		void Append(const Extrema_POnCurv2d &T);
		%feature("autodoc", "1");
		void Append(Extrema_SeqPOnCOfCCFOfECC2dOfExtCC2d & S);
		%feature("autodoc", "1");
		void Prepend(const Extrema_POnCurv2d &T);
		%feature("autodoc", "1");
		void Prepend(Extrema_SeqPOnCOfCCFOfECC2dOfExtCC2d & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Extrema_POnCurv2d &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, Extrema_SeqPOnCOfCCFOfECC2dOfExtCC2d & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Extrema_POnCurv2d &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, Extrema_SeqPOnCOfCCFOfECC2dOfExtCC2d & S);
		%feature("autodoc", "1");
		const Extrema_POnCurv2d & First() const;
		%feature("autodoc", "1");
		const Extrema_POnCurv2d & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, Extrema_SeqPOnCOfCCFOfECC2dOfExtCC2d & S);
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
%feature("shadow") Extrema_SeqPOnCOfCCFOfECC2dOfExtCC2d::~Extrema_SeqPOnCOfCCFOfECC2dOfExtCC2d %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Extrema_LocEPCOfLocateExtPC2d;
class Extrema_LocEPCOfLocateExtPC2d {
	public:
		%feature("autodoc", "1");
		Extrema_LocEPCOfLocateExtPC2d();
		%feature("autodoc", "1");
		Extrema_LocEPCOfLocateExtPC2d(const gp_Pnt2d &P, const Adaptor2d_Curve2d &C, const Standard_Real U0, const Standard_Real TolU);
		%feature("autodoc", "1");
		Extrema_LocEPCOfLocateExtPC2d(const gp_Pnt2d &P, const Adaptor2d_Curve2d &C, const Standard_Real U0, const Standard_Real Umin, const Standard_Real Usup, const Standard_Real TolU);
		%feature("autodoc", "1");
		void Initialize(const Adaptor2d_Curve2d &C, const Standard_Real Umin, const Standard_Real Usup, const Standard_Real TolU);
		%feature("autodoc", "1");
		void Perform(const gp_Pnt2d &P, const Standard_Real U0);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Real Value() const;
		%feature("autodoc", "1");
		Standard_Boolean IsMin() const;
		%feature("autodoc", "1");
		Extrema_POnCurv2d Point() const;

};
%feature("shadow") Extrema_LocEPCOfLocateExtPC2d::~Extrema_LocEPCOfLocateExtPC2d %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


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
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Extrema_PCLocFOfLocEPCOfLocateExtPC2d;
class Extrema_PCLocFOfLocEPCOfLocateExtPC2d : public math_FunctionWithDerivative {
	public:
		%feature("autodoc", "1");
		Extrema_PCLocFOfLocEPCOfLocateExtPC2d();
		%feature("autodoc", "1");
		Extrema_PCLocFOfLocEPCOfLocateExtPC2d(const gp_Pnt2d &P, const Adaptor2d_Curve2d &C);
		%feature("autodoc", "1");
		void Initialize(const Adaptor2d_Curve2d &C);
		%feature("autodoc", "1");
		void SetPoint(const gp_Pnt2d &P);
		%feature("autodoc","Value(Standard_Real U) -> Standard_Real");
		virtual		Standard_Boolean Value(const Standard_Real U, Standard_Real &OutValue);
		%feature("autodoc","Derivative(Standard_Real U) -> Standard_Real");
		virtual		Standard_Boolean Derivative(const Standard_Real U, Standard_Real &OutValue);
		%feature("autodoc","Values(Standard_Real U) -> [Standard_RealStandard_Real]");
		virtual		Standard_Boolean Values(const Standard_Real U, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Integer GetStateNumber();
		%feature("autodoc", "1");
		Standard_Integer NbExt() const;
		%feature("autodoc", "1");
		Standard_Real Value(const Standard_Integer N) const;
		%feature("autodoc", "1");
		Standard_Boolean IsMin(const Standard_Integer N) const;
		%feature("autodoc", "1");
		Extrema_POnCurv2d Point(const Standard_Integer N) const;

};
%feature("shadow") Extrema_PCLocFOfLocEPCOfLocateExtPC2d::~Extrema_PCLocFOfLocEPCOfLocateExtPC2d %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Extrema_Array2OfPOnSurf;
class Extrema_Array2OfPOnSurf {
	public:
		%feature("autodoc", "1");
		Extrema_Array2OfPOnSurf(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		Extrema_Array2OfPOnSurf(const Extrema_POnSurf &Item, const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		void Init(const Extrema_POnSurf &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		const Extrema_Array2OfPOnSurf & Assign(const Extrema_Array2OfPOnSurf &Other);
		%feature("autodoc", "1");
		const Extrema_Array2OfPOnSurf & operator=(const Extrema_Array2OfPOnSurf &Other);
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
		const Extrema_POnSurf & operator()(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		Extrema_POnSurf & ChangeValue(const Standard_Integer Row, const Standard_Integer Col);
		%feature("autodoc", "1");
		Extrema_POnSurf & operator()(const Standard_Integer Row, const Standard_Integer Col);

};
%feature("shadow") Extrema_Array2OfPOnSurf::~Extrema_Array2OfPOnSurf %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Extrema_ExtPElS;
class Extrema_ExtPElS {
	public:
		%feature("autodoc", "1");
		Extrema_ExtPElS();
		%feature("autodoc", "1");
		Extrema_ExtPElS(const gp_Pnt &P, const gp_Cylinder &S, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Perform(const gp_Pnt &P, const gp_Cylinder &S, const Standard_Real Tol);
		%feature("autodoc", "1");
		Extrema_ExtPElS(const gp_Pnt &P, const gp_Pln &S, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Perform(const gp_Pnt &P, const gp_Pln &S, const Standard_Real Tol);
		%feature("autodoc", "1");
		Extrema_ExtPElS(const gp_Pnt &P, const gp_Cone &S, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Perform(const gp_Pnt &P, const gp_Cone &S, const Standard_Real Tol);
		%feature("autodoc", "1");
		Extrema_ExtPElS(const gp_Pnt &P, const gp_Torus &S, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Perform(const gp_Pnt &P, const gp_Torus &S, const Standard_Real Tol);
		%feature("autodoc", "1");
		Extrema_ExtPElS(const gp_Pnt &P, const gp_Sphere &S, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Perform(const gp_Pnt &P, const gp_Sphere &S, const Standard_Real Tol);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbExt() const;
		%feature("autodoc", "1");
		Standard_Real Value(const Standard_Integer N) const;
		%feature("autodoc", "1");
		Extrema_POnSurf Point(const Standard_Integer N) const;

};
%feature("shadow") Extrema_ExtPElS::~Extrema_ExtPElS %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Extrema_ExtElC;
class Extrema_ExtElC {
	public:
		%feature("autodoc", "1");
		Extrema_ExtElC();
		%feature("autodoc", "1");
		Extrema_ExtElC(const gp_Lin &C1, const gp_Lin &C2, const Standard_Real AngTol);
		%feature("autodoc", "1");
		Extrema_ExtElC(const gp_Lin &C1, const gp_Circ &C2, const Standard_Real Tol);
		%feature("autodoc", "1");
		Extrema_ExtElC(const gp_Lin &C1, const gp_Elips &C2);
		%feature("autodoc", "1");
		Extrema_ExtElC(const gp_Lin &C1, const gp_Hypr &C2);
		%feature("autodoc", "1");
		Extrema_ExtElC(const gp_Lin &C1, const gp_Parab &C2);
		%feature("autodoc", "1");
		Extrema_ExtElC(const gp_Circ &C1, const gp_Circ &C2);
		%feature("autodoc", "1");
		Extrema_ExtElC(const gp_Circ &C1, const gp_Elips &C2);
		%feature("autodoc", "1");
		Extrema_ExtElC(const gp_Circ &C1, const gp_Hypr &C2);
		%feature("autodoc", "1");
		Extrema_ExtElC(const gp_Circ &C1, const gp_Parab &C2);
		%feature("autodoc", "1");
		Extrema_ExtElC(const gp_Elips &C1, const gp_Elips &C2);
		%feature("autodoc", "1");
		Extrema_ExtElC(const gp_Elips &C1, const gp_Hypr &C2);
		%feature("autodoc", "1");
		Extrema_ExtElC(const gp_Elips &C1, const gp_Parab &C2);
		%feature("autodoc", "1");
		Extrema_ExtElC(const gp_Hypr &C1, const gp_Hypr &C2);
		%feature("autodoc", "1");
		Extrema_ExtElC(const gp_Hypr &C1, const gp_Parab &C2);
		%feature("autodoc", "1");
		Extrema_ExtElC(const gp_Parab &C1, const gp_Parab &C2);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Boolean IsParallel() const;
		%feature("autodoc", "1");
		Standard_Integer NbExt() const;
		%feature("autodoc", "1");
		Standard_Real Value(const Standard_Integer N=1) const;
		%feature("autodoc", "1");
		void Points(const Standard_Integer N, Extrema_POnCurv & P1, Extrema_POnCurv & P2) const;

};
%feature("shadow") Extrema_ExtElC::~Extrema_ExtElC %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Extrema_SequenceNodeOfSequenceOfPOnCurv;
class Extrema_SequenceNodeOfSequenceOfPOnCurv : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Extrema_SequenceNodeOfSequenceOfPOnCurv(const Extrema_POnCurv &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Extrema_POnCurv & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Extrema_SequenceNodeOfSequenceOfPOnCurv {
	Handle_Extrema_SequenceNodeOfSequenceOfPOnCurv GetHandle() {
	return *(Handle_Extrema_SequenceNodeOfSequenceOfPOnCurv*) &$self;
	}
};
%extend Extrema_SequenceNodeOfSequenceOfPOnCurv {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Extrema_SequenceNodeOfSequenceOfPOnCurv::~Extrema_SequenceNodeOfSequenceOfPOnCurv %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Extrema_EPCOfELPCOfLocateExtPC;
class Extrema_EPCOfELPCOfLocateExtPC {
	public:
		%feature("autodoc", "1");
		Extrema_EPCOfELPCOfLocateExtPC();
		%feature("autodoc", "1");
		Extrema_EPCOfELPCOfLocateExtPC(const gp_Pnt &P, const Adaptor3d_Curve &C, const Standard_Integer NbU, const Standard_Real TolU, const Standard_Real TolF);
		%feature("autodoc", "1");
		Extrema_EPCOfELPCOfLocateExtPC(const gp_Pnt &P, const Adaptor3d_Curve &C, const Standard_Integer NbU, const Standard_Real Umin, const Standard_Real Usup, const Standard_Real TolU, const Standard_Real TolF);
		%feature("autodoc", "1");
		void Initialize(const Adaptor3d_Curve &C, const Standard_Integer NbU, const Standard_Real TolU, const Standard_Real TolF);
		%feature("autodoc", "1");
		void Initialize(const Adaptor3d_Curve &C, const Standard_Integer NbU, const Standard_Real Umin, const Standard_Real Usup, const Standard_Real TolU, const Standard_Real TolF);
		%feature("autodoc", "1");
		void Initialize(const Adaptor3d_Curve &C);
		%feature("autodoc", "1");
		void Initialize(const Standard_Integer NbU, const Standard_Real Umin, const Standard_Real Usup, const Standard_Real TolU, const Standard_Real TolF);
		%feature("autodoc", "1");
		void Perform(const gp_Pnt &P);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbExt() const;
		%feature("autodoc", "1");
		Standard_Real Value(const Standard_Integer N) const;
		%feature("autodoc", "1");
		Standard_Boolean IsMin(const Standard_Integer N) const;
		%feature("autodoc", "1");
		Extrema_POnCurv Point(const Standard_Integer N) const;

};
%feature("shadow") Extrema_EPCOfELPCOfLocateExtPC::~Extrema_EPCOfELPCOfLocateExtPC %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Extrema_CCFOfECC2dOfExtCC2d;
class Extrema_CCFOfECC2dOfExtCC2d : public math_FunctionSetWithDerivatives {
	public:
		%feature("autodoc", "1");
		Extrema_CCFOfECC2dOfExtCC2d(const Adaptor2d_Curve2d &C1, const Adaptor2d_Curve2d &C2, const Standard_Real thetol=1.0000000000000000364321973154977415791655470656e-10);
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
		Standard_Real Value(const Standard_Integer N) const;
		%feature("autodoc", "1");
		void Points(const Standard_Integer N, Extrema_POnCurv2d & P1, Extrema_POnCurv2d & P2) const;

};
%feature("shadow") Extrema_CCFOfECC2dOfExtCC2d::~Extrema_CCFOfECC2dOfExtCC2d %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Extrema_SequenceOfPOnCurv2d;
class Extrema_SequenceOfPOnCurv2d : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		Extrema_SequenceOfPOnCurv2d();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const Extrema_SequenceOfPOnCurv2d & Assign(const Extrema_SequenceOfPOnCurv2d &Other);
		%feature("autodoc", "1");
		const Extrema_SequenceOfPOnCurv2d & operator=(const Extrema_SequenceOfPOnCurv2d &Other);
		%feature("autodoc", "1");
		void Append(const Extrema_POnCurv2d &T);
		%feature("autodoc", "1");
		void Append(Extrema_SequenceOfPOnCurv2d & S);
		%feature("autodoc", "1");
		void Prepend(const Extrema_POnCurv2d &T);
		%feature("autodoc", "1");
		void Prepend(Extrema_SequenceOfPOnCurv2d & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Extrema_POnCurv2d &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, Extrema_SequenceOfPOnCurv2d & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Extrema_POnCurv2d &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, Extrema_SequenceOfPOnCurv2d & S);
		%feature("autodoc", "1");
		const Extrema_POnCurv2d & First() const;
		%feature("autodoc", "1");
		const Extrema_POnCurv2d & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, Extrema_SequenceOfPOnCurv2d & S);
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
%feature("shadow") Extrema_SequenceOfPOnCurv2d::~Extrema_SequenceOfPOnCurv2d %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


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
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Extrema_HArray2OfPOnCurv;
class Extrema_HArray2OfPOnCurv : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Extrema_HArray2OfPOnCurv(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		Extrema_HArray2OfPOnCurv(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2, const Extrema_POnCurv &V);
		%feature("autodoc", "1");
		void Init(const Extrema_POnCurv &V);
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
		Extrema_POnCurv & ChangeValue(const Standard_Integer Row, const Standard_Integer Col);
		%feature("autodoc", "1");
		const Extrema_Array2OfPOnCurv & Array2() const;
		%feature("autodoc", "1");
		Extrema_Array2OfPOnCurv & ChangeArray2();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Extrema_HArray2OfPOnCurv {
	Handle_Extrema_HArray2OfPOnCurv GetHandle() {
	return *(Handle_Extrema_HArray2OfPOnCurv*) &$self;
	}
};
%extend Extrema_HArray2OfPOnCurv {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Extrema_HArray2OfPOnCurv::~Extrema_HArray2OfPOnCurv %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Extrema_PCFOfEPCOfExtPC;
class Extrema_PCFOfEPCOfExtPC : public math_FunctionWithDerivative {
	public:
		%feature("autodoc", "1");
		Extrema_PCFOfEPCOfExtPC();
		%feature("autodoc", "1");
		Extrema_PCFOfEPCOfExtPC(const gp_Pnt &P, const Adaptor3d_Curve &C);
		%feature("autodoc", "1");
		void Initialize(const Adaptor3d_Curve &C);
		%feature("autodoc", "1");
		void SetPoint(const gp_Pnt &P);
		%feature("autodoc","Value(Standard_Real U) -> Standard_Real");
		virtual		Standard_Boolean Value(const Standard_Real U, Standard_Real &OutValue);
		%feature("autodoc","Derivative(Standard_Real U) -> Standard_Real");
		virtual		Standard_Boolean Derivative(const Standard_Real U, Standard_Real &OutValue);
		%feature("autodoc","Values(Standard_Real U) -> [Standard_RealStandard_Real]");
		virtual		Standard_Boolean Values(const Standard_Real U, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Integer GetStateNumber();
		%feature("autodoc", "1");
		Standard_Integer NbExt() const;
		%feature("autodoc", "1");
		Standard_Real Value(const Standard_Integer N) const;
		%feature("autodoc", "1");
		Standard_Boolean IsMin(const Standard_Integer N) const;
		%feature("autodoc", "1");
		Extrema_POnCurv Point(const Standard_Integer N) const;

};
%feature("shadow") Extrema_PCFOfEPCOfExtPC::~Extrema_PCFOfEPCOfExtPC %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Extrema_GenLocateExtPS;
class Extrema_GenLocateExtPS {
	public:
		%feature("autodoc", "1");
		Extrema_GenLocateExtPS();
		%feature("autodoc", "1");
		Extrema_GenLocateExtPS(const gp_Pnt &P, const Adaptor3d_Surface &S, const Standard_Real U0, const Standard_Real V0, const Standard_Real TolU, const Standard_Real TolV);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Real Value() const;
		%feature("autodoc", "1");
		Extrema_POnSurf Point() const;

};
%feature("shadow") Extrema_GenLocateExtPS::~Extrema_GenLocateExtPS %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Extrema_SequenceNodeOfSeqPCOfPCLocFOfLocEPCOfLocateExtPC2d;
class Extrema_SequenceNodeOfSeqPCOfPCLocFOfLocEPCOfLocateExtPC2d : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Extrema_SequenceNodeOfSeqPCOfPCLocFOfLocEPCOfLocateExtPC2d(const Extrema_POnCurv2d &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Extrema_POnCurv2d & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Extrema_SequenceNodeOfSeqPCOfPCLocFOfLocEPCOfLocateExtPC2d {
	Handle_Extrema_SequenceNodeOfSeqPCOfPCLocFOfLocEPCOfLocateExtPC2d GetHandle() {
	return *(Handle_Extrema_SequenceNodeOfSeqPCOfPCLocFOfLocEPCOfLocateExtPC2d*) &$self;
	}
};
%extend Extrema_SequenceNodeOfSeqPCOfPCLocFOfLocEPCOfLocateExtPC2d {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Extrema_SequenceNodeOfSeqPCOfPCLocFOfLocEPCOfLocateExtPC2d::~Extrema_SequenceNodeOfSeqPCOfPCLocFOfLocEPCOfLocateExtPC2d %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfExtPC2d;
class Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfExtPC2d : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfExtPC2d(const Extrema_POnCurv2d &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Extrema_POnCurv2d & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfExtPC2d {
	Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfExtPC2d GetHandle() {
	return *(Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfExtPC2d*) &$self;
	}
};
%extend Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfExtPC2d {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfExtPC2d::~Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfExtPC2d %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Extrema_CCFOfELCC2dOfLocateExtCC2d;
class Extrema_CCFOfELCC2dOfLocateExtCC2d : public math_FunctionSetWithDerivatives {
	public:
		%feature("autodoc", "1");
		Extrema_CCFOfELCC2dOfLocateExtCC2d(const Adaptor2d_Curve2d &C1, const Adaptor2d_Curve2d &C2, const Standard_Real thetol=1.0000000000000000364321973154977415791655470656e-10);
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
		Standard_Real Value(const Standard_Integer N) const;
		%feature("autodoc", "1");
		void Points(const Standard_Integer N, Extrema_POnCurv2d & P1, Extrema_POnCurv2d & P2) const;

};
%feature("shadow") Extrema_CCFOfELCC2dOfLocateExtCC2d::~Extrema_CCFOfELCC2dOfLocateExtCC2d %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Extrema_CCLocFOfLocECCOfLocateExtCC;
class Extrema_CCLocFOfLocECCOfLocateExtCC : public math_FunctionSetWithDerivatives {
	public:
		%feature("autodoc", "1");
		Extrema_CCLocFOfLocECCOfLocateExtCC(const Adaptor3d_Curve &C1, const Adaptor3d_Curve &C2, const Standard_Real thetol=1.0000000000000000364321973154977415791655470656e-10);
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
		Standard_Real Value(const Standard_Integer N) const;
		%feature("autodoc", "1");
		void Points(const Standard_Integer N, Extrema_POnCurv & P1, Extrema_POnCurv & P2) const;

};
%feature("shadow") Extrema_CCLocFOfLocECCOfLocateExtCC::~Extrema_CCLocFOfLocECCOfLocateExtCC %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Extrema_Array1OfPOnCurv2d;
class Extrema_Array1OfPOnCurv2d {
	public:
		%feature("autodoc", "1");
		Extrema_Array1OfPOnCurv2d(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		Extrema_Array1OfPOnCurv2d(const Extrema_POnCurv2d &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Extrema_POnCurv2d &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const Extrema_Array1OfPOnCurv2d & Assign(const Extrema_Array1OfPOnCurv2d &Other);
		%feature("autodoc", "1");
		const Extrema_Array1OfPOnCurv2d & operator=(const Extrema_Array1OfPOnCurv2d &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Extrema_POnCurv2d &Value);
		%feature("autodoc", "1");
		const Extrema_POnCurv2d & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Extrema_POnCurv2d & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Extrema_POnCurv2d & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Extrema_POnCurv2d & operator()(const Standard_Integer Index);

};
%feature("shadow") Extrema_Array1OfPOnCurv2d::~Extrema_Array1OfPOnCurv2d %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Extrema_EPCOfExtPC;
class Extrema_EPCOfExtPC {
	public:
		%feature("autodoc", "1");
		Extrema_EPCOfExtPC();
		%feature("autodoc", "1");
		Extrema_EPCOfExtPC(const gp_Pnt &P, const Adaptor3d_Curve &C, const Standard_Integer NbU, const Standard_Real TolU, const Standard_Real TolF);
		%feature("autodoc", "1");
		Extrema_EPCOfExtPC(const gp_Pnt &P, const Adaptor3d_Curve &C, const Standard_Integer NbU, const Standard_Real Umin, const Standard_Real Usup, const Standard_Real TolU, const Standard_Real TolF);
		%feature("autodoc", "1");
		void Initialize(const Adaptor3d_Curve &C, const Standard_Integer NbU, const Standard_Real TolU, const Standard_Real TolF);
		%feature("autodoc", "1");
		void Initialize(const Adaptor3d_Curve &C, const Standard_Integer NbU, const Standard_Real Umin, const Standard_Real Usup, const Standard_Real TolU, const Standard_Real TolF);
		%feature("autodoc", "1");
		void Initialize(const Adaptor3d_Curve &C);
		%feature("autodoc", "1");
		void Initialize(const Standard_Integer NbU, const Standard_Real Umin, const Standard_Real Usup, const Standard_Real TolU, const Standard_Real TolF);
		%feature("autodoc", "1");
		void Perform(const gp_Pnt &P);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbExt() const;
		%feature("autodoc", "1");
		Standard_Real Value(const Standard_Integer N) const;
		%feature("autodoc", "1");
		Standard_Boolean IsMin(const Standard_Integer N) const;
		%feature("autodoc", "1");
		Extrema_POnCurv Point(const Standard_Integer N) const;

};
%feature("shadow") Extrema_EPCOfExtPC::~Extrema_EPCOfExtPC %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Extrema_GenExtCS;
class Extrema_GenExtCS {
	public:
		%feature("autodoc", "1");
		Extrema_GenExtCS();
		%feature("autodoc", "1");
		Extrema_GenExtCS(const Adaptor3d_Curve &C, const Adaptor3d_Surface &S, const Standard_Integer NbT, const Standard_Integer NbU, const Standard_Integer NbV, const Standard_Real Tol1, const Standard_Real Tol2);
		%feature("autodoc", "1");
		Extrema_GenExtCS(const Adaptor3d_Curve &C, const Adaptor3d_Surface &S, const Standard_Integer NbT, const Standard_Integer NbU, const Standard_Integer NbV, const Standard_Real tmin, const Standard_Real tsup, const Standard_Real Umin, const Standard_Real Usup, const Standard_Real Vmin, const Standard_Real Vsup, const Standard_Real Tol1, const Standard_Real Tol2);
		%feature("autodoc", "1");
		void Initialize(const Adaptor3d_Surface &S, const Standard_Integer NbU, const Standard_Integer NbV, const Standard_Real Tol2);
		%feature("autodoc", "1");
		void Initialize(const Adaptor3d_Surface &S, const Standard_Integer NbU, const Standard_Integer NbV, const Standard_Real Umin, const Standard_Real Usup, const Standard_Real Vmin, const Standard_Real Vsup, const Standard_Real Tol2);
		%feature("autodoc", "1");
		void Perform(const Adaptor3d_Curve &C, const Standard_Integer NbT, const Standard_Real Tol1);
		%feature("autodoc", "1");
		void Perform(const Adaptor3d_Curve &C, const Standard_Integer NbT, const Standard_Real tmin, const Standard_Real tsup, const Standard_Real Tol1);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbExt() const;
		%feature("autodoc", "1");
		Standard_Real Value(const Standard_Integer N) const;
		%feature("autodoc", "1");
		const Extrema_POnCurv & PointOnCurve(const Standard_Integer N) const;
		%feature("autodoc", "1");
		const Extrema_POnSurf & PointOnSurface(const Standard_Integer N) const;

};
%feature("shadow") Extrema_GenExtCS::~Extrema_GenExtCS %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Extrema_SequenceNodeOfSeqPOnCOfCCLocFOfLocECC2dOfLocateExtCC2d;
class Extrema_SequenceNodeOfSeqPOnCOfCCLocFOfLocECC2dOfLocateExtCC2d : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Extrema_SequenceNodeOfSeqPOnCOfCCLocFOfLocECC2dOfLocateExtCC2d(const Extrema_POnCurv2d &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Extrema_POnCurv2d & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Extrema_SequenceNodeOfSeqPOnCOfCCLocFOfLocECC2dOfLocateExtCC2d {
	Handle_Extrema_SequenceNodeOfSeqPOnCOfCCLocFOfLocECC2dOfLocateExtCC2d GetHandle() {
	return *(Handle_Extrema_SequenceNodeOfSeqPOnCOfCCLocFOfLocECC2dOfLocateExtCC2d*) &$self;
	}
};
%extend Extrema_SequenceNodeOfSeqPOnCOfCCLocFOfLocECC2dOfLocateExtCC2d {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Extrema_SequenceNodeOfSeqPOnCOfCCLocFOfLocECC2dOfLocateExtCC2d::~Extrema_SequenceNodeOfSeqPOnCOfCCLocFOfLocECC2dOfLocateExtCC2d %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Extrema_ExtPRevS;
class Extrema_ExtPRevS {
	public:
		%feature("autodoc", "1");
		Extrema_ExtPRevS();
		%feature("autodoc", "1");
		Extrema_ExtPRevS(const gp_Pnt &P, const Adaptor3d_SurfaceOfRevolution &S, const Standard_Real Umin, const Standard_Real Usup, const Standard_Real Vmin, const Standard_Real Vsup, const Standard_Real TolU, const Standard_Real TolV);
		%feature("autodoc", "1");
		Extrema_ExtPRevS(const gp_Pnt &P, const Adaptor3d_SurfaceOfRevolution &S, const Standard_Real TolU, const Standard_Real TolV);
		%feature("autodoc", "1");
		void Initialize(const Adaptor3d_SurfaceOfRevolution &S, const Standard_Real Umin, const Standard_Real Usup, const Standard_Real Vmin, const Standard_Real Vsup, const Standard_Real TolU, const Standard_Real TolV);
		%feature("autodoc", "1");
		void Perform(const gp_Pnt &P);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbExt() const;
		%feature("autodoc", "1");
		Standard_Real Value(const Standard_Integer N) const;
		%feature("autodoc", "1");
		Extrema_POnSurf Point(const Standard_Integer N) const;

};
%feature("shadow") Extrema_ExtPRevS::~Extrema_ExtPRevS %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Extrema_GenExtPS;
class Extrema_GenExtPS {
	public:
		%feature("autodoc", "1");
		Extrema_GenExtPS();
		%feature("autodoc", "1");
		Extrema_GenExtPS(const gp_Pnt &P, const Adaptor3d_Surface &S, const Standard_Integer NbU, const Standard_Integer NbV, const Standard_Real TolU, const Standard_Real TolV);
		%feature("autodoc", "1");
		Extrema_GenExtPS(const gp_Pnt &P, const Adaptor3d_Surface &S, const Standard_Integer NbU, const Standard_Integer NbV, const Standard_Real Umin, const Standard_Real Usup, const Standard_Real Vmin, const Standard_Real Vsup, const Standard_Real TolU, const Standard_Real TolV);
		%feature("autodoc", "1");
		void Initialize(const Adaptor3d_Surface &S, const Standard_Integer NbU, const Standard_Integer NbV, const Standard_Real TolU, const Standard_Real TolV);
		%feature("autodoc", "1");
		void Initialize(const Adaptor3d_Surface &S, const Standard_Integer NbU, const Standard_Integer NbV, const Standard_Real Umin, const Standard_Real Usup, const Standard_Real Vmin, const Standard_Real Vsup, const Standard_Real TolU, const Standard_Real TolV);
		%feature("autodoc", "1");
		void Perform(const gp_Pnt &P);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbExt() const;
		%feature("autodoc", "1");
		Standard_Real Value(const Standard_Integer N) const;
		%feature("autodoc", "1");
		Extrema_POnSurf Point(const Standard_Integer N) const;

};
%feature("shadow") Extrema_GenExtPS::~Extrema_GenExtPS %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Extrema_ExtPC2d;
class Extrema_ExtPC2d {
	public:
		%feature("autodoc", "1");
		Extrema_ExtPC2d();
		%feature("autodoc", "1");
		Extrema_ExtPC2d(const gp_Pnt2d &P, const Adaptor2d_Curve2d &C, const Standard_Real Uinf, const Standard_Real Usup, const Standard_Real TolF=1.0000000000000000364321973154977415791655470656e-10);
		%feature("autodoc", "1");
		Extrema_ExtPC2d(const gp_Pnt2d &P, const Adaptor2d_Curve2d &C, const Standard_Real TolF=1.0000000000000000364321973154977415791655470656e-10);
		%feature("autodoc", "1");
		void Initialize(const Adaptor2d_Curve2d &C, const Standard_Real Uinf, const Standard_Real Usup, const Standard_Real TolF=1.0000000000000000364321973154977415791655470656e-10);
		%feature("autodoc", "1");
		void Perform(const gp_Pnt2d &P);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Real Value(const Standard_Integer N) const;
		%feature("autodoc", "1");
		Standard_Integer NbExt() const;
		%feature("autodoc", "1");
		Standard_Boolean IsMin(const Standard_Integer N) const;
		%feature("autodoc", "1");
		Extrema_POnCurv2d Point(const Standard_Integer N) const;
		%feature("autodoc","TrimmedDistances() -> [Standard_Real, Standard_Real]");
		void TrimmedDistances(Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & P1, gp_Pnt2d & P2) const;

};
%feature("shadow") Extrema_ExtPC2d::~Extrema_ExtPC2d %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Extrema_LocateExtCC2d;
class Extrema_LocateExtCC2d {
	public:
		%feature("autodoc", "1");
		Extrema_LocateExtCC2d(const Adaptor2d_Curve2d &C1, const Adaptor2d_Curve2d &C2, const Standard_Real U0, const Standard_Real V0);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Real Value() const;
		%feature("autodoc", "1");
		void Point(Extrema_POnCurv2d & P1, Extrema_POnCurv2d & P2) const;

};
%feature("shadow") Extrema_LocateExtCC2d::~Extrema_LocateExtCC2d %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Extrema_GenExtSS;
class Extrema_GenExtSS {
	public:
		%feature("autodoc", "1");
		Extrema_GenExtSS();
		%feature("autodoc", "1");
		Extrema_GenExtSS(const Adaptor3d_Surface &S1, const Adaptor3d_Surface &S2, const Standard_Integer NbU, const Standard_Integer NbV, const Standard_Real Tol1, const Standard_Real Tol2);
		%feature("autodoc", "1");
		Extrema_GenExtSS(const Adaptor3d_Surface &S1, const Adaptor3d_Surface &S2, const Standard_Integer NbU, const Standard_Integer NbV, const Standard_Real U1min, const Standard_Real U1sup, const Standard_Real V1min, const Standard_Real V1sup, const Standard_Real U2min, const Standard_Real U2sup, const Standard_Real V2min, const Standard_Real V2sup, const Standard_Real Tol1, const Standard_Real Tol2);
		%feature("autodoc", "1");
		void Initialize(const Adaptor3d_Surface &S2, const Standard_Integer NbU, const Standard_Integer NbV, const Standard_Real Tol2);
		%feature("autodoc", "1");
		void Initialize(const Adaptor3d_Surface &S2, const Standard_Integer NbU, const Standard_Integer NbV, const Standard_Real U2min, const Standard_Real U2sup, const Standard_Real V2min, const Standard_Real V2sup, const Standard_Real Tol2);
		%feature("autodoc", "1");
		void Perform(const Adaptor3d_Surface &S1, const Standard_Real Tol1);
		%feature("autodoc", "1");
		void Perform(const Adaptor3d_Surface &S1, const Standard_Real U1min, const Standard_Real U1sup, const Standard_Real V1min, const Standard_Real V1sup, const Standard_Real Tol1);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbExt() const;
		%feature("autodoc", "1");
		Standard_Real Value(const Standard_Integer N) const;
		%feature("autodoc", "1");
		Extrema_POnSurf PointOnS1(const Standard_Integer N) const;
		%feature("autodoc", "1");
		Extrema_POnSurf PointOnS2(const Standard_Integer N) const;

};
%feature("shadow") Extrema_GenExtSS::~Extrema_GenExtSS %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Extrema_Curve2dTool;
class Extrema_Curve2dTool {
	public:
		%feature("autodoc", "1");
		Extrema_Curve2dTool();
		%feature("autodoc", "1");
		Standard_Real FirstParameter(const Adaptor2d_Curve2d &C);
		%feature("autodoc", "1");
		Standard_Real LastParameter(const Adaptor2d_Curve2d &C);
		%feature("autodoc", "1");
		GeomAbs_Shape Continuity(const Adaptor2d_Curve2d &C);
		%feature("autodoc", "1");
		Standard_Integer NbIntervals(const Adaptor2d_Curve2d &C, const GeomAbs_Shape S);
		%feature("autodoc", "1");
		void Intervals(const Adaptor2d_Curve2d &C, TColStd_Array1OfReal & T, const GeomAbs_Shape S);
		%feature("autodoc", "1");
		Standard_Boolean IsClosed(const Adaptor2d_Curve2d &C);
		%feature("autodoc", "1");
		Standard_Boolean IsPeriodic(const Adaptor2d_Curve2d &C);
		%feature("autodoc", "1");
		Standard_Real Period(const Adaptor2d_Curve2d &C);
		%feature("autodoc", "1");
		gp_Pnt2d Value(const Adaptor2d_Curve2d &C, const Standard_Real U);
		%feature("autodoc", "1");
		void D0(const Adaptor2d_Curve2d &C, const Standard_Real U, gp_Pnt2d & P);
		%feature("autodoc", "1");
		void D1(const Adaptor2d_Curve2d &C, const Standard_Real U, gp_Pnt2d & P, gp_Vec2d & V);
		%feature("autodoc", "1");
		void D2(const Adaptor2d_Curve2d &C, const Standard_Real U, gp_Pnt2d & P, gp_Vec2d & V1, gp_Vec2d & V2);
		%feature("autodoc", "1");
		void D3(const Adaptor2d_Curve2d &C, const Standard_Real U, gp_Pnt2d & P, gp_Vec2d & V1, gp_Vec2d & V2, gp_Vec2d & V3);
		%feature("autodoc", "1");
		gp_Vec2d DN(const Adaptor2d_Curve2d &C, const Standard_Real U, const Standard_Integer N);
		%feature("autodoc", "1");
		Standard_Real Resolution(const Adaptor2d_Curve2d &C, const Standard_Real R3d);
		%feature("autodoc", "1");
		GeomAbs_CurveType GetType(const Adaptor2d_Curve2d &C);
		%feature("autodoc", "1");
		gp_Lin2d Line(const Adaptor2d_Curve2d &C);
		%feature("autodoc", "1");
		gp_Circ2d Circle(const Adaptor2d_Curve2d &C);
		%feature("autodoc", "1");
		gp_Elips2d Ellipse(const Adaptor2d_Curve2d &C);
		%feature("autodoc", "1");
		gp_Hypr2d Hyperbola(const Adaptor2d_Curve2d &C);
		%feature("autodoc", "1");
		gp_Parab2d Parabola(const Adaptor2d_Curve2d &C);
		%feature("autodoc", "1");
		Standard_Integer Degree(const Adaptor2d_Curve2d &C);
		%feature("autodoc", "1");
		Standard_Boolean IsRational(const Adaptor2d_Curve2d &C);
		%feature("autodoc", "1");
		Standard_Integer NbPoles(const Adaptor2d_Curve2d &C);
		%feature("autodoc", "1");
		Standard_Integer NbKnots(const Adaptor2d_Curve2d &C);
		%feature("autodoc", "1");
		Handle_Geom2d_BezierCurve Bezier(const Adaptor2d_Curve2d &C);
		%feature("autodoc", "1");
		Handle_Geom2d_BSplineCurve BSpline(const Adaptor2d_Curve2d &C);

};
%feature("shadow") Extrema_Curve2dTool::~Extrema_Curve2dTool %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Extrema_PCFOfEPCOfELPCOfLocateExtPC;
class Extrema_PCFOfEPCOfELPCOfLocateExtPC : public math_FunctionWithDerivative {
	public:
		%feature("autodoc", "1");
		Extrema_PCFOfEPCOfELPCOfLocateExtPC();
		%feature("autodoc", "1");
		Extrema_PCFOfEPCOfELPCOfLocateExtPC(const gp_Pnt &P, const Adaptor3d_Curve &C);
		%feature("autodoc", "1");
		void Initialize(const Adaptor3d_Curve &C);
		%feature("autodoc", "1");
		void SetPoint(const gp_Pnt &P);
		%feature("autodoc","Value(Standard_Real U) -> Standard_Real");
		virtual		Standard_Boolean Value(const Standard_Real U, Standard_Real &OutValue);
		%feature("autodoc","Derivative(Standard_Real U) -> Standard_Real");
		virtual		Standard_Boolean Derivative(const Standard_Real U, Standard_Real &OutValue);
		%feature("autodoc","Values(Standard_Real U) -> [Standard_RealStandard_Real]");
		virtual		Standard_Boolean Values(const Standard_Real U, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Integer GetStateNumber();
		%feature("autodoc", "1");
		Standard_Integer NbExt() const;
		%feature("autodoc", "1");
		Standard_Real Value(const Standard_Integer N) const;
		%feature("autodoc", "1");
		Standard_Boolean IsMin(const Standard_Integer N) const;
		%feature("autodoc", "1");
		Extrema_POnCurv Point(const Standard_Integer N) const;

};
%feature("shadow") Extrema_PCFOfEPCOfELPCOfLocateExtPC::~Extrema_PCFOfEPCOfELPCOfLocateExtPC %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Extrema_ECCOfExtCC;
class Extrema_ECCOfExtCC {
	public:
		%feature("autodoc", "1");
		Extrema_ECCOfExtCC(const Adaptor3d_Curve &C1, const Adaptor3d_Curve &C2, const Standard_Integer NbU, const Standard_Integer NbV, const Standard_Real TolU, const Standard_Real TolV);
		%feature("autodoc", "1");
		Extrema_ECCOfExtCC(const Adaptor3d_Curve &C1, const Adaptor3d_Curve &C2, const Standard_Real Uinf, const Standard_Real Usup, const Standard_Real Vinf, const Standard_Real Vsup, const Standard_Integer NbU, const Standard_Integer NbV, const Standard_Real TolU, const Standard_Real TolV);
		%feature("autodoc", "1");
		void Perform(const Adaptor3d_Curve &C1, const Adaptor3d_Curve &C2, const Standard_Real Uinf, const Standard_Real Usup, const Standard_Real Vinf, const Standard_Real Vsup, const Standard_Integer NbU, const Standard_Integer NbV, const Standard_Real TolU, const Standard_Real TolV);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbExt() const;
		%feature("autodoc", "1");
		Standard_Real Value(const Standard_Integer N=1) const;
		%feature("autodoc", "1");
		void Points(const Standard_Integer N, Extrema_POnCurv & P1, Extrema_POnCurv & P2) const;

};
%feature("shadow") Extrema_ECCOfExtCC::~Extrema_ECCOfExtCC %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Extrema_ExtPS;
class Extrema_ExtPS {
	public:
		%feature("autodoc", "1");
		Extrema_ExtPS();
		%feature("autodoc", "1");
		Extrema_ExtPS(const gp_Pnt &P, const Adaptor3d_Surface &S, const Standard_Real TolU, const Standard_Real TolV);
		%feature("autodoc", "1");
		Extrema_ExtPS(const gp_Pnt &P, const Adaptor3d_Surface &S, const Standard_Real Uinf, const Standard_Real Usup, const Standard_Real Vinf, const Standard_Real Vsup, const Standard_Real TolU, const Standard_Real TolV);
		%feature("autodoc", "1");
		void Initialize(const Adaptor3d_Surface &S, const Standard_Real Uinf, const Standard_Real Usup, const Standard_Real Vinf, const Standard_Real Vsup, const Standard_Real TolU, const Standard_Real TolV);
		%feature("autodoc", "1");
		void Perform(const gp_Pnt &P);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbExt() const;
		%feature("autodoc", "1");
		Standard_Real Value(const Standard_Integer N) const;
		%feature("autodoc", "1");
		Extrema_POnSurf Point(const Standard_Integer N) const;
		%feature("autodoc","TrimmedDistances() -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real]");
		void TrimmedDistances(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt & PUfVf, gp_Pnt & PUfVl, gp_Pnt & PUlVf, gp_Pnt & PUlVl) const;

};
%feature("shadow") Extrema_ExtPS::~Extrema_ExtPS %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfExtPC;
class Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfExtPC : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfExtPC(const Extrema_POnCurv &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Extrema_POnCurv & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfExtPC {
	Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfExtPC GetHandle() {
	return *(Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfExtPC*) &$self;
	}
};
%extend Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfExtPC {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfExtPC::~Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfExtPC %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Extrema_FuncExtPS;
class Extrema_FuncExtPS : public math_FunctionSetWithDerivatives {
	public:
		%feature("autodoc", "1");
		Extrema_FuncExtPS();
		%feature("autodoc", "1");
		Extrema_FuncExtPS(const gp_Pnt &P, const Adaptor3d_Surface &S);
		%feature("autodoc", "1");
		void Initialize(const Adaptor3d_Surface &S);
		%feature("autodoc", "1");
		void SetPoint(const gp_Pnt &P);
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
		Standard_Real Value(const Standard_Integer N) const;
		%feature("autodoc", "1");
		Extrema_POnSurf Point(const Standard_Integer N) const;
		%feature("autodoc", "1");
		Standard_Boolean HasDegIso() const;

};
%feature("shadow") Extrema_FuncExtPS::~Extrema_FuncExtPS %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Extrema_PCLocFOfLocEPCOfLocateExtPC;
class Extrema_PCLocFOfLocEPCOfLocateExtPC : public math_FunctionWithDerivative {
	public:
		%feature("autodoc", "1");
		Extrema_PCLocFOfLocEPCOfLocateExtPC();
		%feature("autodoc", "1");
		Extrema_PCLocFOfLocEPCOfLocateExtPC(const gp_Pnt &P, const Adaptor3d_Curve &C);
		%feature("autodoc", "1");
		void Initialize(const Adaptor3d_Curve &C);
		%feature("autodoc", "1");
		void SetPoint(const gp_Pnt &P);
		%feature("autodoc","Value(Standard_Real U) -> Standard_Real");
		virtual		Standard_Boolean Value(const Standard_Real U, Standard_Real &OutValue);
		%feature("autodoc","Derivative(Standard_Real U) -> Standard_Real");
		virtual		Standard_Boolean Derivative(const Standard_Real U, Standard_Real &OutValue);
		%feature("autodoc","Values(Standard_Real U) -> [Standard_RealStandard_Real]");
		virtual		Standard_Boolean Values(const Standard_Real U, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Integer GetStateNumber();
		%feature("autodoc", "1");
		Standard_Integer NbExt() const;
		%feature("autodoc", "1");
		Standard_Real Value(const Standard_Integer N) const;
		%feature("autodoc", "1");
		Standard_Boolean IsMin(const Standard_Integer N) const;
		%feature("autodoc", "1");
		Extrema_POnCurv Point(const Standard_Integer N) const;

};
%feature("shadow") Extrema_PCLocFOfLocEPCOfLocateExtPC::~Extrema_PCLocFOfLocEPCOfLocateExtPC %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Extrema_SeqPCOfPCLocFOfLocEPCOfLocateExtPC;
class Extrema_SeqPCOfPCLocFOfLocEPCOfLocateExtPC : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		Extrema_SeqPCOfPCLocFOfLocEPCOfLocateExtPC();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const Extrema_SeqPCOfPCLocFOfLocEPCOfLocateExtPC & Assign(const Extrema_SeqPCOfPCLocFOfLocEPCOfLocateExtPC &Other);
		%feature("autodoc", "1");
		const Extrema_SeqPCOfPCLocFOfLocEPCOfLocateExtPC & operator=(const Extrema_SeqPCOfPCLocFOfLocEPCOfLocateExtPC &Other);
		%feature("autodoc", "1");
		void Append(const Extrema_POnCurv &T);
		%feature("autodoc", "1");
		void Append(Extrema_SeqPCOfPCLocFOfLocEPCOfLocateExtPC & S);
		%feature("autodoc", "1");
		void Prepend(const Extrema_POnCurv &T);
		%feature("autodoc", "1");
		void Prepend(Extrema_SeqPCOfPCLocFOfLocEPCOfLocateExtPC & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Extrema_POnCurv &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, Extrema_SeqPCOfPCLocFOfLocEPCOfLocateExtPC & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Extrema_POnCurv &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, Extrema_SeqPCOfPCLocFOfLocEPCOfLocateExtPC & S);
		%feature("autodoc", "1");
		const Extrema_POnCurv & First() const;
		%feature("autodoc", "1");
		const Extrema_POnCurv & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, Extrema_SeqPCOfPCLocFOfLocEPCOfLocateExtPC & S);
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
%feature("shadow") Extrema_SeqPCOfPCLocFOfLocEPCOfLocateExtPC::~Extrema_SeqPCOfPCLocFOfLocEPCOfLocateExtPC %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Extrema_SeqPCOfPCFOfEPCOfELPCOfLocateExtPC;
class Extrema_SeqPCOfPCFOfEPCOfELPCOfLocateExtPC : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		Extrema_SeqPCOfPCFOfEPCOfELPCOfLocateExtPC();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const Extrema_SeqPCOfPCFOfEPCOfELPCOfLocateExtPC & Assign(const Extrema_SeqPCOfPCFOfEPCOfELPCOfLocateExtPC &Other);
		%feature("autodoc", "1");
		const Extrema_SeqPCOfPCFOfEPCOfELPCOfLocateExtPC & operator=(const Extrema_SeqPCOfPCFOfEPCOfELPCOfLocateExtPC &Other);
		%feature("autodoc", "1");
		void Append(const Extrema_POnCurv &T);
		%feature("autodoc", "1");
		void Append(Extrema_SeqPCOfPCFOfEPCOfELPCOfLocateExtPC & S);
		%feature("autodoc", "1");
		void Prepend(const Extrema_POnCurv &T);
		%feature("autodoc", "1");
		void Prepend(Extrema_SeqPCOfPCFOfEPCOfELPCOfLocateExtPC & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Extrema_POnCurv &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, Extrema_SeqPCOfPCFOfEPCOfELPCOfLocateExtPC & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Extrema_POnCurv &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, Extrema_SeqPCOfPCFOfEPCOfELPCOfLocateExtPC & S);
		%feature("autodoc", "1");
		const Extrema_POnCurv & First() const;
		%feature("autodoc", "1");
		const Extrema_POnCurv & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, Extrema_SeqPCOfPCFOfEPCOfELPCOfLocateExtPC & S);
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
%feature("shadow") Extrema_SeqPCOfPCFOfEPCOfELPCOfLocateExtPC::~Extrema_SeqPCOfPCFOfEPCOfELPCOfLocateExtPC %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Extrema_SeqPCOfPCFOfEPCOfExtPC;
class Extrema_SeqPCOfPCFOfEPCOfExtPC : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		Extrema_SeqPCOfPCFOfEPCOfExtPC();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const Extrema_SeqPCOfPCFOfEPCOfExtPC & Assign(const Extrema_SeqPCOfPCFOfEPCOfExtPC &Other);
		%feature("autodoc", "1");
		const Extrema_SeqPCOfPCFOfEPCOfExtPC & operator=(const Extrema_SeqPCOfPCFOfEPCOfExtPC &Other);
		%feature("autodoc", "1");
		void Append(const Extrema_POnCurv &T);
		%feature("autodoc", "1");
		void Append(Extrema_SeqPCOfPCFOfEPCOfExtPC & S);
		%feature("autodoc", "1");
		void Prepend(const Extrema_POnCurv &T);
		%feature("autodoc", "1");
		void Prepend(Extrema_SeqPCOfPCFOfEPCOfExtPC & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Extrema_POnCurv &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, Extrema_SeqPCOfPCFOfEPCOfExtPC & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Extrema_POnCurv &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, Extrema_SeqPCOfPCFOfEPCOfExtPC & S);
		%feature("autodoc", "1");
		const Extrema_POnCurv & First() const;
		%feature("autodoc", "1");
		const Extrema_POnCurv & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, Extrema_SeqPCOfPCFOfEPCOfExtPC & S);
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
%feature("shadow") Extrema_SeqPCOfPCFOfEPCOfExtPC::~Extrema_SeqPCOfPCFOfEPCOfExtPC %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Extrema_ELPCOfLocateExtPC;
class Extrema_ELPCOfLocateExtPC {
	public:
		%feature("autodoc", "1");
		Extrema_ELPCOfLocateExtPC();
		%feature("autodoc", "1");
		Extrema_ELPCOfLocateExtPC(const gp_Pnt &P, const Adaptor3d_Curve &C, const Standard_Real Uinf, const Standard_Real Usup, const Standard_Real TolF=1.0000000000000000364321973154977415791655470656e-10);
		%feature("autodoc", "1");
		Extrema_ELPCOfLocateExtPC(const gp_Pnt &P, const Adaptor3d_Curve &C, const Standard_Real TolF=1.0000000000000000364321973154977415791655470656e-10);
		%feature("autodoc", "1");
		void Initialize(const Adaptor3d_Curve &C, const Standard_Real Uinf, const Standard_Real Usup, const Standard_Real TolF=1.0000000000000000364321973154977415791655470656e-10);
		%feature("autodoc", "1");
		void Perform(const gp_Pnt &P);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Real Value(const Standard_Integer N) const;
		%feature("autodoc", "1");
		Standard_Integer NbExt() const;
		%feature("autodoc", "1");
		Standard_Boolean IsMin(const Standard_Integer N) const;
		%feature("autodoc", "1");
		Extrema_POnCurv Point(const Standard_Integer N) const;
		%feature("autodoc","TrimmedDistances() -> [Standard_Real, Standard_Real]");
		void TrimmedDistances(Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt & P1, gp_Pnt & P2) const;

};
%feature("shadow") Extrema_ELPCOfLocateExtPC::~Extrema_ELPCOfLocateExtPC %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Extrema_ExtPElC;
class Extrema_ExtPElC {
	public:
		%feature("autodoc", "1");
		Extrema_ExtPElC();
		%feature("autodoc", "1");
		Extrema_ExtPElC(const gp_Pnt &P, const gp_Lin &C, const Standard_Real Tol, const Standard_Real Uinf, const Standard_Real Usup);
		%feature("autodoc", "1");
		void Perform(const gp_Pnt &P, const gp_Lin &C, const Standard_Real Tol, const Standard_Real Uinf, const Standard_Real Usup);
		%feature("autodoc", "1");
		Extrema_ExtPElC(const gp_Pnt &P, const gp_Circ &C, const Standard_Real Tol, const Standard_Real Uinf, const Standard_Real Usup);
		%feature("autodoc", "1");
		void Perform(const gp_Pnt &P, const gp_Circ &C, const Standard_Real Tol, const Standard_Real Uinf, const Standard_Real Usup);
		%feature("autodoc", "1");
		Extrema_ExtPElC(const gp_Pnt &P, const gp_Elips &C, const Standard_Real Tol, const Standard_Real Uinf, const Standard_Real Usup);
		%feature("autodoc", "1");
		void Perform(const gp_Pnt &P, const gp_Elips &C, const Standard_Real Tol, const Standard_Real Uinf, const Standard_Real Usup);
		%feature("autodoc", "1");
		Extrema_ExtPElC(const gp_Pnt &P, const gp_Hypr &C, const Standard_Real Tol, const Standard_Real Uinf, const Standard_Real Usup);
		%feature("autodoc", "1");
		void Perform(const gp_Pnt &P, const gp_Hypr &C, const Standard_Real Tol, const Standard_Real Uinf, const Standard_Real Usup);
		%feature("autodoc", "1");
		Extrema_ExtPElC(const gp_Pnt &P, const gp_Parab &C, const Standard_Real Tol, const Standard_Real Uinf, const Standard_Real Usup);
		%feature("autodoc", "1");
		void Perform(const gp_Pnt &P, const gp_Parab &C, const Standard_Real Tol, const Standard_Real Uinf, const Standard_Real Usup);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbExt() const;
		%feature("autodoc", "1");
		Standard_Real Value(const Standard_Integer N) const;
		%feature("autodoc", "1");
		Standard_Boolean IsMin(const Standard_Integer N) const;
		%feature("autodoc", "1");
		Extrema_POnCurv Point(const Standard_Integer N) const;

};
%feature("shadow") Extrema_ExtPElC::~Extrema_ExtPElC %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Extrema_SequenceNodeOfSeqPOnCOfCCFOfELCCOfLocateExtCC;
class Extrema_SequenceNodeOfSeqPOnCOfCCFOfELCCOfLocateExtCC : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Extrema_SequenceNodeOfSeqPOnCOfCCFOfELCCOfLocateExtCC(const Extrema_POnCurv &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Extrema_POnCurv & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Extrema_SequenceNodeOfSeqPOnCOfCCFOfELCCOfLocateExtCC {
	Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfELCCOfLocateExtCC GetHandle() {
	return *(Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfELCCOfLocateExtCC*) &$self;
	}
};
%extend Extrema_SequenceNodeOfSeqPOnCOfCCFOfELCCOfLocateExtCC {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Extrema_SequenceNodeOfSeqPOnCOfCCFOfELCCOfLocateExtCC::~Extrema_SequenceNodeOfSeqPOnCOfCCFOfELCCOfLocateExtCC %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Extrema_ELCCOfLocateExtCC;
class Extrema_ELCCOfLocateExtCC {
	public:
		%feature("autodoc", "1");
		Extrema_ELCCOfLocateExtCC(const Adaptor3d_Curve &C1, const Adaptor3d_Curve &C2, const Standard_Integer NbU, const Standard_Integer NbV, const Standard_Real TolU, const Standard_Real TolV);
		%feature("autodoc", "1");
		Extrema_ELCCOfLocateExtCC(const Adaptor3d_Curve &C1, const Adaptor3d_Curve &C2, const Standard_Real Uinf, const Standard_Real Usup, const Standard_Real Vinf, const Standard_Real Vsup, const Standard_Integer NbU, const Standard_Integer NbV, const Standard_Real TolU, const Standard_Real TolV);
		%feature("autodoc", "1");
		void Perform(const Adaptor3d_Curve &C1, const Adaptor3d_Curve &C2, const Standard_Real Uinf, const Standard_Real Usup, const Standard_Real Vinf, const Standard_Real Vsup, const Standard_Integer NbU, const Standard_Integer NbV, const Standard_Real TolU, const Standard_Real TolV);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbExt() const;
		%feature("autodoc", "1");
		Standard_Real Value(const Standard_Integer N=1) const;
		%feature("autodoc", "1");
		void Points(const Standard_Integer N, Extrema_POnCurv & P1, Extrema_POnCurv & P2) const;

};
%feature("shadow") Extrema_ELCCOfLocateExtCC::~Extrema_ELCCOfLocateExtCC %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


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
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Extrema_HArray1OfPOnSurf::~Extrema_HArray1OfPOnSurf %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Extrema_LocECC2dOfLocateExtCC2d;
class Extrema_LocECC2dOfLocateExtCC2d {
	public:
		%feature("autodoc", "1");
		Extrema_LocECC2dOfLocateExtCC2d(const Adaptor2d_Curve2d &C1, const Adaptor2d_Curve2d &C2, const Standard_Real U0, const Standard_Real V0, const Standard_Real TolU, const Standard_Real TolV);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Real Value() const;
		%feature("autodoc", "1");
		void Point(Extrema_POnCurv2d & P1, Extrema_POnCurv2d & P2) const;

};
%feature("shadow") Extrema_LocECC2dOfLocateExtCC2d::~Extrema_LocECC2dOfLocateExtCC2d %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Extrema_ELPCOfLocateExtPC2d;
class Extrema_ELPCOfLocateExtPC2d {
	public:
		%feature("autodoc", "1");
		Extrema_ELPCOfLocateExtPC2d();
		%feature("autodoc", "1");
		Extrema_ELPCOfLocateExtPC2d(const gp_Pnt2d &P, const Adaptor2d_Curve2d &C, const Standard_Real Uinf, const Standard_Real Usup, const Standard_Real TolF=1.0000000000000000364321973154977415791655470656e-10);
		%feature("autodoc", "1");
		Extrema_ELPCOfLocateExtPC2d(const gp_Pnt2d &P, const Adaptor2d_Curve2d &C, const Standard_Real TolF=1.0000000000000000364321973154977415791655470656e-10);
		%feature("autodoc", "1");
		void Initialize(const Adaptor2d_Curve2d &C, const Standard_Real Uinf, const Standard_Real Usup, const Standard_Real TolF=1.0000000000000000364321973154977415791655470656e-10);
		%feature("autodoc", "1");
		void Perform(const gp_Pnt2d &P);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Real Value(const Standard_Integer N) const;
		%feature("autodoc", "1");
		Standard_Integer NbExt() const;
		%feature("autodoc", "1");
		Standard_Boolean IsMin(const Standard_Integer N) const;
		%feature("autodoc", "1");
		Extrema_POnCurv2d Point(const Standard_Integer N) const;
		%feature("autodoc","TrimmedDistances() -> [Standard_Real, Standard_Real]");
		void TrimmedDistances(Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt2d & P1, gp_Pnt2d & P2) const;

};
%feature("shadow") Extrema_ELPCOfLocateExtPC2d::~Extrema_ELPCOfLocateExtPC2d %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Extrema_POnCurv;
class Extrema_POnCurv {
	public:
		%feature("autodoc", "1");
		Extrema_POnCurv();
		%feature("autodoc", "1");
		Extrema_POnCurv(const Standard_Real U, const gp_Pnt &P);
		%feature("autodoc", "1");
		void SetValues(const Standard_Real U, const gp_Pnt &P);
		%feature("autodoc", "1");
		const gp_Pnt & Value() const;
		%feature("autodoc", "1");
		Standard_Real Parameter() const;
		%feature("autodoc", "1");
		Standard_Real _CSFDB_GetExtrema_POnCurvmyU() const;
		%feature("autodoc", "1");
		void _CSFDB_SetExtrema_POnCurvmyU(const Standard_Real p);
		%feature("autodoc", "1");
		const gp_Pnt & _CSFDB_GetExtrema_POnCurvmyP() const;

};
%feature("shadow") Extrema_POnCurv::~Extrema_POnCurv %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


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
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Extrema_SequenceNodeOfSeqPCOfPCLocFOfLocEPCOfLocateExtPC::~Extrema_SequenceNodeOfSeqPCOfPCLocFOfLocEPCOfLocateExtPC %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


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
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfELPCOfLocateExtPC::~Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfELPCOfLocateExtPC %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


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
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Extrema_ExtPElC2d;
class Extrema_ExtPElC2d {
	public:
		%feature("autodoc", "1");
		Extrema_ExtPElC2d();
		%feature("autodoc", "1");
		Extrema_ExtPElC2d(const gp_Pnt2d &P, const gp_Lin2d &C, const Standard_Real Tol, const Standard_Real Uinf, const Standard_Real Usup);
		%feature("autodoc", "1");
		void Perform(const gp_Pnt2d &P, const gp_Lin2d &L, const Standard_Real Tol, const Standard_Real Uinf, const Standard_Real Usup);
		%feature("autodoc", "1");
		Extrema_ExtPElC2d(const gp_Pnt2d &P, const gp_Circ2d &C, const Standard_Real Tol, const Standard_Real Uinf, const Standard_Real Usup);
		%feature("autodoc", "1");
		void Perform(const gp_Pnt2d &P, const gp_Circ2d &C, const Standard_Real Tol, const Standard_Real Uinf, const Standard_Real Usup);
		%feature("autodoc", "1");
		Extrema_ExtPElC2d(const gp_Pnt2d &P, const gp_Elips2d &C, const Standard_Real Tol, const Standard_Real Uinf, const Standard_Real Usup);
		%feature("autodoc", "1");
		void Perform(const gp_Pnt2d &P, const gp_Elips2d &C, const Standard_Real Tol, const Standard_Real Uinf, const Standard_Real Usup);
		%feature("autodoc", "1");
		Extrema_ExtPElC2d(const gp_Pnt2d &P, const gp_Hypr2d &C, const Standard_Real Tol, const Standard_Real Uinf, const Standard_Real Usup);
		%feature("autodoc", "1");
		void Perform(const gp_Pnt2d &P, const gp_Hypr2d &C, const Standard_Real Tol, const Standard_Real Uinf, const Standard_Real Usup);
		%feature("autodoc", "1");
		Extrema_ExtPElC2d(const gp_Pnt2d &P, const gp_Parab2d &C, const Standard_Real Tol, const Standard_Real Uinf, const Standard_Real Usup);
		%feature("autodoc", "1");
		void Perform(const gp_Pnt2d &P, const gp_Parab2d &C, const Standard_Real Tol, const Standard_Real Uinf, const Standard_Real Usup);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbExt() const;
		%feature("autodoc", "1");
		Standard_Real Value(const Standard_Integer N) const;
		%feature("autodoc", "1");
		Standard_Boolean IsMin(const Standard_Integer N) const;
		%feature("autodoc", "1");
		Extrema_POnCurv2d Point(const Standard_Integer N) const;

};
%feature("shadow") Extrema_ExtPElC2d::~Extrema_ExtPElC2d %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Extrema_EPCOfELPCOfLocateExtPC2d;
class Extrema_EPCOfELPCOfLocateExtPC2d {
	public:
		%feature("autodoc", "1");
		Extrema_EPCOfELPCOfLocateExtPC2d();
		%feature("autodoc", "1");
		Extrema_EPCOfELPCOfLocateExtPC2d(const gp_Pnt2d &P, const Adaptor2d_Curve2d &C, const Standard_Integer NbU, const Standard_Real TolU, const Standard_Real TolF);
		%feature("autodoc", "1");
		Extrema_EPCOfELPCOfLocateExtPC2d(const gp_Pnt2d &P, const Adaptor2d_Curve2d &C, const Standard_Integer NbU, const Standard_Real Umin, const Standard_Real Usup, const Standard_Real TolU, const Standard_Real TolF);
		%feature("autodoc", "1");
		void Initialize(const Adaptor2d_Curve2d &C, const Standard_Integer NbU, const Standard_Real TolU, const Standard_Real TolF);
		%feature("autodoc", "1");
		void Initialize(const Adaptor2d_Curve2d &C, const Standard_Integer NbU, const Standard_Real Umin, const Standard_Real Usup, const Standard_Real TolU, const Standard_Real TolF);
		%feature("autodoc", "1");
		void Initialize(const Adaptor2d_Curve2d &C);
		%feature("autodoc", "1");
		void Initialize(const Standard_Integer NbU, const Standard_Real Umin, const Standard_Real Usup, const Standard_Real TolU, const Standard_Real TolF);
		%feature("autodoc", "1");
		void Perform(const gp_Pnt2d &P);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbExt() const;
		%feature("autodoc", "1");
		Standard_Real Value(const Standard_Integer N) const;
		%feature("autodoc", "1");
		Standard_Boolean IsMin(const Standard_Integer N) const;
		%feature("autodoc", "1");
		Extrema_POnCurv2d Point(const Standard_Integer N) const;

};
%feature("shadow") Extrema_EPCOfELPCOfLocateExtPC2d::~Extrema_EPCOfELPCOfLocateExtPC2d %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Extrema_SequenceNodeOfSequenceOfPOnSurf;
class Extrema_SequenceNodeOfSequenceOfPOnSurf : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Extrema_SequenceNodeOfSequenceOfPOnSurf(const Extrema_POnSurf &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Extrema_POnSurf & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Extrema_SequenceNodeOfSequenceOfPOnSurf {
	Handle_Extrema_SequenceNodeOfSequenceOfPOnSurf GetHandle() {
	return *(Handle_Extrema_SequenceNodeOfSequenceOfPOnSurf*) &$self;
	}
};
%extend Extrema_SequenceNodeOfSequenceOfPOnSurf {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Extrema_SequenceNodeOfSequenceOfPOnSurf::~Extrema_SequenceNodeOfSequenceOfPOnSurf %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Extrema_FuncExtCS;
class Extrema_FuncExtCS : public math_FunctionSetWithDerivatives {
	public:
		%feature("autodoc", "1");
		Extrema_FuncExtCS();
		%feature("autodoc", "1");
		Extrema_FuncExtCS(const Adaptor3d_Curve &C, const Adaptor3d_Surface &S);
		%feature("autodoc", "1");
		void Initialize(const Adaptor3d_Curve &C, const Adaptor3d_Surface &S);
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
		Standard_Real Value(const Standard_Integer N) const;
		%feature("autodoc", "1");
		const Extrema_POnCurv & PointOnCurve(const Standard_Integer N) const;
		%feature("autodoc", "1");
		const Extrema_POnSurf & PointOnSurface(const Standard_Integer N) const;

};
%feature("shadow") Extrema_FuncExtCS::~Extrema_FuncExtCS %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Extrema_SequenceNodeOfSequenceOfPOnCurv2d;
class Extrema_SequenceNodeOfSequenceOfPOnCurv2d : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Extrema_SequenceNodeOfSequenceOfPOnCurv2d(const Extrema_POnCurv2d &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Extrema_POnCurv2d & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Extrema_SequenceNodeOfSequenceOfPOnCurv2d {
	Handle_Extrema_SequenceNodeOfSequenceOfPOnCurv2d GetHandle() {
	return *(Handle_Extrema_SequenceNodeOfSequenceOfPOnCurv2d*) &$self;
	}
};
%extend Extrema_SequenceNodeOfSequenceOfPOnCurv2d {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Extrema_SequenceNodeOfSequenceOfPOnCurv2d::~Extrema_SequenceNodeOfSequenceOfPOnCurv2d %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


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
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Extrema_FuncExtSS;
class Extrema_FuncExtSS : public math_FunctionSetWithDerivatives {
	public:
		%feature("autodoc", "1");
		Extrema_FuncExtSS();
		%feature("autodoc", "1");
		Extrema_FuncExtSS(const Adaptor3d_Surface &S1, const Adaptor3d_Surface &S2);
		%feature("autodoc", "1");
		void Initialize(const Adaptor3d_Surface &S1, const Adaptor3d_Surface &S2);
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
		Standard_Real Value(const Standard_Integer N) const;
		%feature("autodoc", "1");
		Extrema_POnSurf PointOnS1(const Standard_Integer N) const;
		%feature("autodoc", "1");
		Extrema_POnSurf PointOnS2(const Standard_Integer N) const;

};
%feature("shadow") Extrema_FuncExtSS::~Extrema_FuncExtSS %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Extrema_SeqPCOfPCFOfEPCOfExtPC2d;
class Extrema_SeqPCOfPCFOfEPCOfExtPC2d : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		Extrema_SeqPCOfPCFOfEPCOfExtPC2d();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const Extrema_SeqPCOfPCFOfEPCOfExtPC2d & Assign(const Extrema_SeqPCOfPCFOfEPCOfExtPC2d &Other);
		%feature("autodoc", "1");
		const Extrema_SeqPCOfPCFOfEPCOfExtPC2d & operator=(const Extrema_SeqPCOfPCFOfEPCOfExtPC2d &Other);
		%feature("autodoc", "1");
		void Append(const Extrema_POnCurv2d &T);
		%feature("autodoc", "1");
		void Append(Extrema_SeqPCOfPCFOfEPCOfExtPC2d & S);
		%feature("autodoc", "1");
		void Prepend(const Extrema_POnCurv2d &T);
		%feature("autodoc", "1");
		void Prepend(Extrema_SeqPCOfPCFOfEPCOfExtPC2d & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Extrema_POnCurv2d &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, Extrema_SeqPCOfPCFOfEPCOfExtPC2d & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Extrema_POnCurv2d &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, Extrema_SeqPCOfPCFOfEPCOfExtPC2d & S);
		%feature("autodoc", "1");
		const Extrema_POnCurv2d & First() const;
		%feature("autodoc", "1");
		const Extrema_POnCurv2d & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, Extrema_SeqPCOfPCFOfEPCOfExtPC2d & S);
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
%feature("shadow") Extrema_SeqPCOfPCFOfEPCOfExtPC2d::~Extrema_SeqPCOfPCFOfEPCOfExtPC2d %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Extrema_ExtCS;
class Extrema_ExtCS {
	public:
		%feature("autodoc", "1");
		Extrema_ExtCS();
		%feature("autodoc", "1");
		Extrema_ExtCS(const Adaptor3d_Curve &C, const Adaptor3d_Surface &S, const Standard_Real TolC, const Standard_Real TolS);
		%feature("autodoc", "1");
		Extrema_ExtCS(const Adaptor3d_Curve &C, const Adaptor3d_Surface &S, const Standard_Real UCinf, const Standard_Real UCsup, const Standard_Real Uinf, const Standard_Real Usup, const Standard_Real Vinf, const Standard_Real Vsup, const Standard_Real TolC, const Standard_Real TolS);
		%feature("autodoc", "1");
		void Initialize(const Adaptor3d_Surface &S, const Standard_Real Uinf, const Standard_Real Usup, const Standard_Real Vinf, const Standard_Real Vsup, const Standard_Real TolC, const Standard_Real TolS);
		%feature("autodoc", "1");
		void Perform(const Adaptor3d_Curve &C, const Standard_Real Uinf, const Standard_Real Usup);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Boolean IsParallel() const;
		%feature("autodoc", "1");
		Standard_Integer NbExt() const;
		%feature("autodoc", "1");
		Standard_Real Value(const Standard_Integer N) const;
		%feature("autodoc", "1");
		void Points(const Standard_Integer N, Extrema_POnCurv & P1, Extrema_POnSurf & P2) const;

};
%feature("shadow") Extrema_ExtCS::~Extrema_ExtCS %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Extrema_SequenceOfPOnCurv;
class Extrema_SequenceOfPOnCurv : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		Extrema_SequenceOfPOnCurv();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const Extrema_SequenceOfPOnCurv & Assign(const Extrema_SequenceOfPOnCurv &Other);
		%feature("autodoc", "1");
		const Extrema_SequenceOfPOnCurv & operator=(const Extrema_SequenceOfPOnCurv &Other);
		%feature("autodoc", "1");
		void Append(const Extrema_POnCurv &T);
		%feature("autodoc", "1");
		void Append(Extrema_SequenceOfPOnCurv & S);
		%feature("autodoc", "1");
		void Prepend(const Extrema_POnCurv &T);
		%feature("autodoc", "1");
		void Prepend(Extrema_SequenceOfPOnCurv & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Extrema_POnCurv &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, Extrema_SequenceOfPOnCurv & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Extrema_POnCurv &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, Extrema_SequenceOfPOnCurv & S);
		%feature("autodoc", "1");
		const Extrema_POnCurv & First() const;
		%feature("autodoc", "1");
		const Extrema_POnCurv & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, Extrema_SequenceOfPOnCurv & S);
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
%feature("shadow") Extrema_SequenceOfPOnCurv::~Extrema_SequenceOfPOnCurv %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}


%nodefaultctor Extrema_CCFOfECCOfExtCC;
class Extrema_CCFOfECCOfExtCC : public math_FunctionSetWithDerivatives {
	public:
		%feature("autodoc", "1");
		Extrema_CCFOfECCOfExtCC(const Adaptor3d_Curve &C1, const Adaptor3d_Curve &C2, const Standard_Real thetol=1.0000000000000000364321973154977415791655470656e-10);
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
		Standard_Real Value(const Standard_Integer N) const;
		%feature("autodoc", "1");
		void Points(const Standard_Integer N, Extrema_POnCurv & P1, Extrema_POnCurv & P2) const;

};
%feature("shadow") Extrema_CCFOfECCOfExtCC::~Extrema_CCFOfECCOfExtCC %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}
