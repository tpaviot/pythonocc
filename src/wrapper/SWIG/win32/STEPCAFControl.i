/*

Copyright 2008-2010 Thomas Paviot (tpaviot@gmail.com)

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

%module STEPCAFControl
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include STEPCAFControl_renames.i


%include STEPCAFControl_required_python_modules.i


%include STEPCAFControl_dependencies.i


%include STEPCAFControl_headers.i




%nodefaultctor Handle_STEPCAFControl_DataMapNodeOfDataMapOfShapePD;
class Handle_STEPCAFControl_DataMapNodeOfDataMapOfShapePD : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_STEPCAFControl_DataMapNodeOfDataMapOfShapePD();
		%feature("autodoc", "1");
		Handle_STEPCAFControl_DataMapNodeOfDataMapOfShapePD(const Handle_STEPCAFControl_DataMapNodeOfDataMapOfShapePD &aHandle);
		%feature("autodoc", "1");
		Handle_STEPCAFControl_DataMapNodeOfDataMapOfShapePD(const STEPCAFControl_DataMapNodeOfDataMapOfShapePD *anItem);
		%feature("autodoc", "1");
		Handle_STEPCAFControl_DataMapNodeOfDataMapOfShapePD & operator=(const Handle_STEPCAFControl_DataMapNodeOfDataMapOfShapePD &aHandle);
		%feature("autodoc", "1");
		Handle_STEPCAFControl_DataMapNodeOfDataMapOfShapePD & operator=(const STEPCAFControl_DataMapNodeOfDataMapOfShapePD *anItem);
		%feature("autodoc", "1");
		static		Handle_STEPCAFControl_DataMapNodeOfDataMapOfShapePD const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_STEPCAFControl_DataMapNodeOfDataMapOfShapePD {
	STEPCAFControl_DataMapNodeOfDataMapOfShapePD* GetObject() {
	return (STEPCAFControl_DataMapNodeOfDataMapOfShapePD*)$self->Access();
	}
};
%feature("shadow") Handle_STEPCAFControl_DataMapNodeOfDataMapOfShapePD::~Handle_STEPCAFControl_DataMapNodeOfDataMapOfShapePD %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_STEPCAFControl_DataMapNodeOfDataMapOfShapePD {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_STEPCAFControl_DataMapNodeOfDataMapOfShapeSDR;
class Handle_STEPCAFControl_DataMapNodeOfDataMapOfShapeSDR : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_STEPCAFControl_DataMapNodeOfDataMapOfShapeSDR();
		%feature("autodoc", "1");
		Handle_STEPCAFControl_DataMapNodeOfDataMapOfShapeSDR(const Handle_STEPCAFControl_DataMapNodeOfDataMapOfShapeSDR &aHandle);
		%feature("autodoc", "1");
		Handle_STEPCAFControl_DataMapNodeOfDataMapOfShapeSDR(const STEPCAFControl_DataMapNodeOfDataMapOfShapeSDR *anItem);
		%feature("autodoc", "1");
		Handle_STEPCAFControl_DataMapNodeOfDataMapOfShapeSDR & operator=(const Handle_STEPCAFControl_DataMapNodeOfDataMapOfShapeSDR &aHandle);
		%feature("autodoc", "1");
		Handle_STEPCAFControl_DataMapNodeOfDataMapOfShapeSDR & operator=(const STEPCAFControl_DataMapNodeOfDataMapOfShapeSDR *anItem);
		%feature("autodoc", "1");
		static		Handle_STEPCAFControl_DataMapNodeOfDataMapOfShapeSDR const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_STEPCAFControl_DataMapNodeOfDataMapOfShapeSDR {
	STEPCAFControl_DataMapNodeOfDataMapOfShapeSDR* GetObject() {
	return (STEPCAFControl_DataMapNodeOfDataMapOfShapeSDR*)$self->Access();
	}
};
%feature("shadow") Handle_STEPCAFControl_DataMapNodeOfDataMapOfShapeSDR::~Handle_STEPCAFControl_DataMapNodeOfDataMapOfShapeSDR %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_STEPCAFControl_DataMapNodeOfDataMapOfShapeSDR {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_STEPCAFControl_ActorWrite;
class Handle_STEPCAFControl_ActorWrite : public Handle_STEPControl_ActorWrite {
	public:
		%feature("autodoc", "1");
		Handle_STEPCAFControl_ActorWrite();
		%feature("autodoc", "1");
		Handle_STEPCAFControl_ActorWrite(const Handle_STEPCAFControl_ActorWrite &aHandle);
		%feature("autodoc", "1");
		Handle_STEPCAFControl_ActorWrite(const STEPCAFControl_ActorWrite *anItem);
		%feature("autodoc", "1");
		Handle_STEPCAFControl_ActorWrite & operator=(const Handle_STEPCAFControl_ActorWrite &aHandle);
		%feature("autodoc", "1");
		Handle_STEPCAFControl_ActorWrite & operator=(const STEPCAFControl_ActorWrite *anItem);
		%feature("autodoc", "1");
		static		Handle_STEPCAFControl_ActorWrite const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_STEPCAFControl_ActorWrite {
	STEPCAFControl_ActorWrite* GetObject() {
	return (STEPCAFControl_ActorWrite*)$self->Access();
	}
};
%feature("shadow") Handle_STEPCAFControl_ActorWrite::~Handle_STEPCAFControl_ActorWrite %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_STEPCAFControl_ActorWrite {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_STEPCAFControl_DataMapNodeOfDataMapOfSDRExternFile;
class Handle_STEPCAFControl_DataMapNodeOfDataMapOfSDRExternFile : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_STEPCAFControl_DataMapNodeOfDataMapOfSDRExternFile();
		%feature("autodoc", "1");
		Handle_STEPCAFControl_DataMapNodeOfDataMapOfSDRExternFile(const Handle_STEPCAFControl_DataMapNodeOfDataMapOfSDRExternFile &aHandle);
		%feature("autodoc", "1");
		Handle_STEPCAFControl_DataMapNodeOfDataMapOfSDRExternFile(const STEPCAFControl_DataMapNodeOfDataMapOfSDRExternFile *anItem);
		%feature("autodoc", "1");
		Handle_STEPCAFControl_DataMapNodeOfDataMapOfSDRExternFile & operator=(const Handle_STEPCAFControl_DataMapNodeOfDataMapOfSDRExternFile &aHandle);
		%feature("autodoc", "1");
		Handle_STEPCAFControl_DataMapNodeOfDataMapOfSDRExternFile & operator=(const STEPCAFControl_DataMapNodeOfDataMapOfSDRExternFile *anItem);
		%feature("autodoc", "1");
		static		Handle_STEPCAFControl_DataMapNodeOfDataMapOfSDRExternFile const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_STEPCAFControl_DataMapNodeOfDataMapOfSDRExternFile {
	STEPCAFControl_DataMapNodeOfDataMapOfSDRExternFile* GetObject() {
	return (STEPCAFControl_DataMapNodeOfDataMapOfSDRExternFile*)$self->Access();
	}
};
%feature("shadow") Handle_STEPCAFControl_DataMapNodeOfDataMapOfSDRExternFile::~Handle_STEPCAFControl_DataMapNodeOfDataMapOfSDRExternFile %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_STEPCAFControl_DataMapNodeOfDataMapOfSDRExternFile {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_STEPCAFControl_StackItemOfDictionaryOfExternFile;
class Handle_STEPCAFControl_StackItemOfDictionaryOfExternFile : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_STEPCAFControl_StackItemOfDictionaryOfExternFile();
		%feature("autodoc", "1");
		Handle_STEPCAFControl_StackItemOfDictionaryOfExternFile(const Handle_STEPCAFControl_StackItemOfDictionaryOfExternFile &aHandle);
		%feature("autodoc", "1");
		Handle_STEPCAFControl_StackItemOfDictionaryOfExternFile(const STEPCAFControl_StackItemOfDictionaryOfExternFile *anItem);
		%feature("autodoc", "1");
		Handle_STEPCAFControl_StackItemOfDictionaryOfExternFile & operator=(const Handle_STEPCAFControl_StackItemOfDictionaryOfExternFile &aHandle);
		%feature("autodoc", "1");
		Handle_STEPCAFControl_StackItemOfDictionaryOfExternFile & operator=(const STEPCAFControl_StackItemOfDictionaryOfExternFile *anItem);
		%feature("autodoc", "1");
		static		Handle_STEPCAFControl_StackItemOfDictionaryOfExternFile const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_STEPCAFControl_StackItemOfDictionaryOfExternFile {
	STEPCAFControl_StackItemOfDictionaryOfExternFile* GetObject() {
	return (STEPCAFControl_StackItemOfDictionaryOfExternFile*)$self->Access();
	}
};
%feature("shadow") Handle_STEPCAFControl_StackItemOfDictionaryOfExternFile::~Handle_STEPCAFControl_StackItemOfDictionaryOfExternFile %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_STEPCAFControl_StackItemOfDictionaryOfExternFile {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_STEPCAFControl_DataMapNodeOfDataMapOfPDExternFile;
class Handle_STEPCAFControl_DataMapNodeOfDataMapOfPDExternFile : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_STEPCAFControl_DataMapNodeOfDataMapOfPDExternFile();
		%feature("autodoc", "1");
		Handle_STEPCAFControl_DataMapNodeOfDataMapOfPDExternFile(const Handle_STEPCAFControl_DataMapNodeOfDataMapOfPDExternFile &aHandle);
		%feature("autodoc", "1");
		Handle_STEPCAFControl_DataMapNodeOfDataMapOfPDExternFile(const STEPCAFControl_DataMapNodeOfDataMapOfPDExternFile *anItem);
		%feature("autodoc", "1");
		Handle_STEPCAFControl_DataMapNodeOfDataMapOfPDExternFile & operator=(const Handle_STEPCAFControl_DataMapNodeOfDataMapOfPDExternFile &aHandle);
		%feature("autodoc", "1");
		Handle_STEPCAFControl_DataMapNodeOfDataMapOfPDExternFile & operator=(const STEPCAFControl_DataMapNodeOfDataMapOfPDExternFile *anItem);
		%feature("autodoc", "1");
		static		Handle_STEPCAFControl_DataMapNodeOfDataMapOfPDExternFile const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_STEPCAFControl_DataMapNodeOfDataMapOfPDExternFile {
	STEPCAFControl_DataMapNodeOfDataMapOfPDExternFile* GetObject() {
	return (STEPCAFControl_DataMapNodeOfDataMapOfPDExternFile*)$self->Access();
	}
};
%feature("shadow") Handle_STEPCAFControl_DataMapNodeOfDataMapOfPDExternFile::~Handle_STEPCAFControl_DataMapNodeOfDataMapOfPDExternFile %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_STEPCAFControl_DataMapNodeOfDataMapOfPDExternFile {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_STEPCAFControl_ExternFile;
class Handle_STEPCAFControl_ExternFile : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_STEPCAFControl_ExternFile();
		%feature("autodoc", "1");
		Handle_STEPCAFControl_ExternFile(const Handle_STEPCAFControl_ExternFile &aHandle);
		%feature("autodoc", "1");
		Handle_STEPCAFControl_ExternFile(const STEPCAFControl_ExternFile *anItem);
		%feature("autodoc", "1");
		Handle_STEPCAFControl_ExternFile & operator=(const Handle_STEPCAFControl_ExternFile &aHandle);
		%feature("autodoc", "1");
		Handle_STEPCAFControl_ExternFile & operator=(const STEPCAFControl_ExternFile *anItem);
		%feature("autodoc", "1");
		static		Handle_STEPCAFControl_ExternFile const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_STEPCAFControl_ExternFile {
	STEPCAFControl_ExternFile* GetObject() {
	return (STEPCAFControl_ExternFile*)$self->Access();
	}
};
%feature("shadow") Handle_STEPCAFControl_ExternFile::~Handle_STEPCAFControl_ExternFile %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_STEPCAFControl_ExternFile {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_STEPCAFControl_DictionaryOfExternFile;
class Handle_STEPCAFControl_DictionaryOfExternFile : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_STEPCAFControl_DictionaryOfExternFile();
		%feature("autodoc", "1");
		Handle_STEPCAFControl_DictionaryOfExternFile(const Handle_STEPCAFControl_DictionaryOfExternFile &aHandle);
		%feature("autodoc", "1");
		Handle_STEPCAFControl_DictionaryOfExternFile(const STEPCAFControl_DictionaryOfExternFile *anItem);
		%feature("autodoc", "1");
		Handle_STEPCAFControl_DictionaryOfExternFile & operator=(const Handle_STEPCAFControl_DictionaryOfExternFile &aHandle);
		%feature("autodoc", "1");
		Handle_STEPCAFControl_DictionaryOfExternFile & operator=(const STEPCAFControl_DictionaryOfExternFile *anItem);
		%feature("autodoc", "1");
		static		Handle_STEPCAFControl_DictionaryOfExternFile const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_STEPCAFControl_DictionaryOfExternFile {
	STEPCAFControl_DictionaryOfExternFile* GetObject() {
	return (STEPCAFControl_DictionaryOfExternFile*)$self->Access();
	}
};
%feature("shadow") Handle_STEPCAFControl_DictionaryOfExternFile::~Handle_STEPCAFControl_DictionaryOfExternFile %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_STEPCAFControl_DictionaryOfExternFile {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_STEPCAFControl_DataMapNodeOfDataMapOfLabelExternFile;
class Handle_STEPCAFControl_DataMapNodeOfDataMapOfLabelExternFile : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_STEPCAFControl_DataMapNodeOfDataMapOfLabelExternFile();
		%feature("autodoc", "1");
		Handle_STEPCAFControl_DataMapNodeOfDataMapOfLabelExternFile(const Handle_STEPCAFControl_DataMapNodeOfDataMapOfLabelExternFile &aHandle);
		%feature("autodoc", "1");
		Handle_STEPCAFControl_DataMapNodeOfDataMapOfLabelExternFile(const STEPCAFControl_DataMapNodeOfDataMapOfLabelExternFile *anItem);
		%feature("autodoc", "1");
		Handle_STEPCAFControl_DataMapNodeOfDataMapOfLabelExternFile & operator=(const Handle_STEPCAFControl_DataMapNodeOfDataMapOfLabelExternFile &aHandle);
		%feature("autodoc", "1");
		Handle_STEPCAFControl_DataMapNodeOfDataMapOfLabelExternFile & operator=(const STEPCAFControl_DataMapNodeOfDataMapOfLabelExternFile *anItem);
		%feature("autodoc", "1");
		static		Handle_STEPCAFControl_DataMapNodeOfDataMapOfLabelExternFile const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_STEPCAFControl_DataMapNodeOfDataMapOfLabelExternFile {
	STEPCAFControl_DataMapNodeOfDataMapOfLabelExternFile* GetObject() {
	return (STEPCAFControl_DataMapNodeOfDataMapOfLabelExternFile*)$self->Access();
	}
};
%feature("shadow") Handle_STEPCAFControl_DataMapNodeOfDataMapOfLabelExternFile::~Handle_STEPCAFControl_DataMapNodeOfDataMapOfLabelExternFile %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_STEPCAFControl_DataMapNodeOfDataMapOfLabelExternFile {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_STEPCAFControl_DataMapNodeOfDataMapOfShapeTransient;
class Handle_STEPCAFControl_DataMapNodeOfDataMapOfShapeTransient : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_STEPCAFControl_DataMapNodeOfDataMapOfShapeTransient();
		%feature("autodoc", "1");
		Handle_STEPCAFControl_DataMapNodeOfDataMapOfShapeTransient(const Handle_STEPCAFControl_DataMapNodeOfDataMapOfShapeTransient &aHandle);
		%feature("autodoc", "1");
		Handle_STEPCAFControl_DataMapNodeOfDataMapOfShapeTransient(const STEPCAFControl_DataMapNodeOfDataMapOfShapeTransient *anItem);
		%feature("autodoc", "1");
		Handle_STEPCAFControl_DataMapNodeOfDataMapOfShapeTransient & operator=(const Handle_STEPCAFControl_DataMapNodeOfDataMapOfShapeTransient &aHandle);
		%feature("autodoc", "1");
		Handle_STEPCAFControl_DataMapNodeOfDataMapOfShapeTransient & operator=(const STEPCAFControl_DataMapNodeOfDataMapOfShapeTransient *anItem);
		%feature("autodoc", "1");
		static		Handle_STEPCAFControl_DataMapNodeOfDataMapOfShapeTransient const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_STEPCAFControl_DataMapNodeOfDataMapOfShapeTransient {
	STEPCAFControl_DataMapNodeOfDataMapOfShapeTransient* GetObject() {
	return (STEPCAFControl_DataMapNodeOfDataMapOfShapeTransient*)$self->Access();
	}
};
%feature("shadow") Handle_STEPCAFControl_DataMapNodeOfDataMapOfShapeTransient::~Handle_STEPCAFControl_DataMapNodeOfDataMapOfShapeTransient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_STEPCAFControl_DataMapNodeOfDataMapOfShapeTransient {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_STEPCAFControl_Controller;
class Handle_STEPCAFControl_Controller : public Handle_STEPControl_Controller {
	public:
		%feature("autodoc", "1");
		Handle_STEPCAFControl_Controller();
		%feature("autodoc", "1");
		Handle_STEPCAFControl_Controller(const Handle_STEPCAFControl_Controller &aHandle);
		%feature("autodoc", "1");
		Handle_STEPCAFControl_Controller(const STEPCAFControl_Controller *anItem);
		%feature("autodoc", "1");
		Handle_STEPCAFControl_Controller & operator=(const Handle_STEPCAFControl_Controller &aHandle);
		%feature("autodoc", "1");
		Handle_STEPCAFControl_Controller & operator=(const STEPCAFControl_Controller *anItem);
		%feature("autodoc", "1");
		static		Handle_STEPCAFControl_Controller const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_STEPCAFControl_Controller {
	STEPCAFControl_Controller* GetObject() {
	return (STEPCAFControl_Controller*)$self->Access();
	}
};
%feature("shadow") Handle_STEPCAFControl_Controller::~Handle_STEPCAFControl_Controller %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_STEPCAFControl_Controller {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_STEPCAFControl_DataMapNodeOfDataMapOfLabelShape;
class Handle_STEPCAFControl_DataMapNodeOfDataMapOfLabelShape : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_STEPCAFControl_DataMapNodeOfDataMapOfLabelShape();
		%feature("autodoc", "1");
		Handle_STEPCAFControl_DataMapNodeOfDataMapOfLabelShape(const Handle_STEPCAFControl_DataMapNodeOfDataMapOfLabelShape &aHandle);
		%feature("autodoc", "1");
		Handle_STEPCAFControl_DataMapNodeOfDataMapOfLabelShape(const STEPCAFControl_DataMapNodeOfDataMapOfLabelShape *anItem);
		%feature("autodoc", "1");
		Handle_STEPCAFControl_DataMapNodeOfDataMapOfLabelShape & operator=(const Handle_STEPCAFControl_DataMapNodeOfDataMapOfLabelShape &aHandle);
		%feature("autodoc", "1");
		Handle_STEPCAFControl_DataMapNodeOfDataMapOfLabelShape & operator=(const STEPCAFControl_DataMapNodeOfDataMapOfLabelShape *anItem);
		%feature("autodoc", "1");
		static		Handle_STEPCAFControl_DataMapNodeOfDataMapOfLabelShape const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_STEPCAFControl_DataMapNodeOfDataMapOfLabelShape {
	STEPCAFControl_DataMapNodeOfDataMapOfLabelShape* GetObject() {
	return (STEPCAFControl_DataMapNodeOfDataMapOfLabelShape*)$self->Access();
	}
};
%feature("shadow") Handle_STEPCAFControl_DataMapNodeOfDataMapOfLabelShape::~Handle_STEPCAFControl_DataMapNodeOfDataMapOfLabelShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_STEPCAFControl_DataMapNodeOfDataMapOfLabelShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_STEPCAFControl_DataMapNodeOfDataMapOfShapeLabel;
class Handle_STEPCAFControl_DataMapNodeOfDataMapOfShapeLabel : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_STEPCAFControl_DataMapNodeOfDataMapOfShapeLabel();
		%feature("autodoc", "1");
		Handle_STEPCAFControl_DataMapNodeOfDataMapOfShapeLabel(const Handle_STEPCAFControl_DataMapNodeOfDataMapOfShapeLabel &aHandle);
		%feature("autodoc", "1");
		Handle_STEPCAFControl_DataMapNodeOfDataMapOfShapeLabel(const STEPCAFControl_DataMapNodeOfDataMapOfShapeLabel *anItem);
		%feature("autodoc", "1");
		Handle_STEPCAFControl_DataMapNodeOfDataMapOfShapeLabel & operator=(const Handle_STEPCAFControl_DataMapNodeOfDataMapOfShapeLabel &aHandle);
		%feature("autodoc", "1");
		Handle_STEPCAFControl_DataMapNodeOfDataMapOfShapeLabel & operator=(const STEPCAFControl_DataMapNodeOfDataMapOfShapeLabel *anItem);
		%feature("autodoc", "1");
		static		Handle_STEPCAFControl_DataMapNodeOfDataMapOfShapeLabel const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_STEPCAFControl_DataMapNodeOfDataMapOfShapeLabel {
	STEPCAFControl_DataMapNodeOfDataMapOfShapeLabel* GetObject() {
	return (STEPCAFControl_DataMapNodeOfDataMapOfShapeLabel*)$self->Access();
	}
};
%feature("shadow") Handle_STEPCAFControl_DataMapNodeOfDataMapOfShapeLabel::~Handle_STEPCAFControl_DataMapNodeOfDataMapOfShapeLabel %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_STEPCAFControl_DataMapNodeOfDataMapOfShapeLabel {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor STEPCAFControl_DataMapIteratorOfDataMapOfLabelExternFile;
class STEPCAFControl_DataMapIteratorOfDataMapOfLabelExternFile : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		STEPCAFControl_DataMapIteratorOfDataMapOfLabelExternFile();
		%feature("autodoc", "1");
		STEPCAFControl_DataMapIteratorOfDataMapOfLabelExternFile(const STEPCAFControl_DataMapOfLabelExternFile &aMap);
		%feature("autodoc", "1");
		void Initialize(const STEPCAFControl_DataMapOfLabelExternFile &aMap);
		%feature("autodoc", "1");
		const TDF_Label & Key() const;
		%feature("autodoc", "1");
		const Handle_STEPCAFControl_ExternFile & Value() const;

};
%feature("shadow") STEPCAFControl_DataMapIteratorOfDataMapOfLabelExternFile::~STEPCAFControl_DataMapIteratorOfDataMapOfLabelExternFile %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend STEPCAFControl_DataMapIteratorOfDataMapOfLabelExternFile {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor STEPCAFControl_DataMapOfShapeTransient;
class STEPCAFControl_DataMapOfShapeTransient : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		STEPCAFControl_DataMapOfShapeTransient(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		STEPCAFControl_DataMapOfShapeTransient & Assign(const STEPCAFControl_DataMapOfShapeTransient &Other);
		%feature("autodoc", "1");
		STEPCAFControl_DataMapOfShapeTransient & operator=(const STEPCAFControl_DataMapOfShapeTransient &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TopoDS_Shape K, const Handle_Standard_Transient &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TopoDS_Shape K);
		%feature("autodoc", "1");
		const Handle_Standard_Transient & Find(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		const Handle_Standard_Transient & operator()(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		Handle_Standard_Transient & ChangeFind(const TopoDS_Shape K);
		%feature("autodoc", "1");
		Handle_Standard_Transient & operator()(const TopoDS_Shape K);

};
%feature("shadow") STEPCAFControl_DataMapOfShapeTransient::~STEPCAFControl_DataMapOfShapeTransient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend STEPCAFControl_DataMapOfShapeTransient {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor STEPCAFControl_ExternFile;
class STEPCAFControl_ExternFile : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		STEPCAFControl_ExternFile();
		%feature("autodoc", "1");
		void SetWS(const Handle_XSControl_WorkSession &WS);
		%feature("autodoc", "1");
		Handle_XSControl_WorkSession GetWS() const;
		%feature("autodoc", "1");
		void SetLoadStatus(const IFSelect_ReturnStatus stat);
		%feature("autodoc", "1");
		IFSelect_ReturnStatus GetLoadStatus() const;
		%feature("autodoc", "1");
		void SetTransferStatus(const Standard_Boolean isok);
		%feature("autodoc", "1");
		Standard_Boolean GetTransferStatus() const;
		%feature("autodoc", "1");
		void SetWriteStatus(const IFSelect_ReturnStatus stat);
		%feature("autodoc", "1");
		IFSelect_ReturnStatus GetWriteStatus() const;
		%feature("autodoc", "1");
		void SetName(const Handle_TCollection_HAsciiString &name);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString GetName() const;
		%feature("autodoc", "1");
		void SetLabel(const TDF_Label &Label);
		%feature("autodoc", "1");
		TDF_Label GetLabel() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend STEPCAFControl_ExternFile {
	Handle_STEPCAFControl_ExternFile GetHandle() {
	return *(Handle_STEPCAFControl_ExternFile*) &$self;
	}
};
%extend STEPCAFControl_ExternFile {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") STEPCAFControl_ExternFile::~STEPCAFControl_ExternFile %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend STEPCAFControl_ExternFile {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor STEPCAFControl_DataMapOfShapePD;
class STEPCAFControl_DataMapOfShapePD : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		STEPCAFControl_DataMapOfShapePD(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		STEPCAFControl_DataMapOfShapePD & Assign(const STEPCAFControl_DataMapOfShapePD &Other);
		%feature("autodoc", "1");
		STEPCAFControl_DataMapOfShapePD & operator=(const STEPCAFControl_DataMapOfShapePD &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TopoDS_Shape K, const Handle_StepBasic_ProductDefinition &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TopoDS_Shape K);
		%feature("autodoc", "1");
		const Handle_StepBasic_ProductDefinition & Find(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		const Handle_StepBasic_ProductDefinition & operator()(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		Handle_StepBasic_ProductDefinition & ChangeFind(const TopoDS_Shape K);
		%feature("autodoc", "1");
		Handle_StepBasic_ProductDefinition & operator()(const TopoDS_Shape K);

};
%feature("shadow") STEPCAFControl_DataMapOfShapePD::~STEPCAFControl_DataMapOfShapePD %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend STEPCAFControl_DataMapOfShapePD {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor STEPCAFControl_DataMapOfShapeSDR;
class STEPCAFControl_DataMapOfShapeSDR : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		STEPCAFControl_DataMapOfShapeSDR(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		STEPCAFControl_DataMapOfShapeSDR & Assign(const STEPCAFControl_DataMapOfShapeSDR &Other);
		%feature("autodoc", "1");
		STEPCAFControl_DataMapOfShapeSDR & operator=(const STEPCAFControl_DataMapOfShapeSDR &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TopoDS_Shape K, const Handle_StepShape_ShapeDefinitionRepresentation &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TopoDS_Shape K);
		%feature("autodoc", "1");
		const Handle_StepShape_ShapeDefinitionRepresentation & Find(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		const Handle_StepShape_ShapeDefinitionRepresentation & operator()(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		Handle_StepShape_ShapeDefinitionRepresentation & ChangeFind(const TopoDS_Shape K);
		%feature("autodoc", "1");
		Handle_StepShape_ShapeDefinitionRepresentation & operator()(const TopoDS_Shape K);

};
%feature("shadow") STEPCAFControl_DataMapOfShapeSDR::~STEPCAFControl_DataMapOfShapeSDR %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend STEPCAFControl_DataMapOfShapeSDR {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor STEPCAFControl_DataMapNodeOfDataMapOfShapeSDR;
class STEPCAFControl_DataMapNodeOfDataMapOfShapeSDR : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		STEPCAFControl_DataMapNodeOfDataMapOfShapeSDR(const TopoDS_Shape K, const Handle_StepShape_ShapeDefinitionRepresentation &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Shape  Key() const;
		%feature("autodoc", "1");
		Handle_StepShape_ShapeDefinitionRepresentation & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend STEPCAFControl_DataMapNodeOfDataMapOfShapeSDR {
	Handle_STEPCAFControl_DataMapNodeOfDataMapOfShapeSDR GetHandle() {
	return *(Handle_STEPCAFControl_DataMapNodeOfDataMapOfShapeSDR*) &$self;
	}
};
%extend STEPCAFControl_DataMapNodeOfDataMapOfShapeSDR {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") STEPCAFControl_DataMapNodeOfDataMapOfShapeSDR::~STEPCAFControl_DataMapNodeOfDataMapOfShapeSDR %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend STEPCAFControl_DataMapNodeOfDataMapOfShapeSDR {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor STEPCAFControl_DataMapIteratorOfDataMapOfLabelShape;
class STEPCAFControl_DataMapIteratorOfDataMapOfLabelShape : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		STEPCAFControl_DataMapIteratorOfDataMapOfLabelShape();
		%feature("autodoc", "1");
		STEPCAFControl_DataMapIteratorOfDataMapOfLabelShape(const STEPCAFControl_DataMapOfLabelShape &aMap);
		%feature("autodoc", "1");
		void Initialize(const STEPCAFControl_DataMapOfLabelShape &aMap);
		%feature("autodoc", "1");
		const TDF_Label & Key() const;
		%feature("autodoc", "1");
		const TopoDS_Shape  Value() const;

};
%feature("shadow") STEPCAFControl_DataMapIteratorOfDataMapOfLabelShape::~STEPCAFControl_DataMapIteratorOfDataMapOfLabelShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend STEPCAFControl_DataMapIteratorOfDataMapOfLabelShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor STEPCAFControl_ActorWrite;
class STEPCAFControl_ActorWrite : public STEPControl_ActorWrite {
	public:
		%feature("autodoc", "1");
		STEPCAFControl_ActorWrite();
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsAssembly(TopoDS_Shape & S) const;
		%feature("autodoc", "1");
		void SetStdMode(const Standard_Boolean stdmode=1);
		%feature("autodoc", "1");
		void ClearMap();
		%feature("autodoc", "1");
		void RegisterAssembly(const TopoDS_Shape S);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend STEPCAFControl_ActorWrite {
	Handle_STEPCAFControl_ActorWrite GetHandle() {
	return *(Handle_STEPCAFControl_ActorWrite*) &$self;
	}
};
%extend STEPCAFControl_ActorWrite {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") STEPCAFControl_ActorWrite::~STEPCAFControl_ActorWrite %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend STEPCAFControl_ActorWrite {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor STEPCAFControl_DataMapNodeOfDataMapOfShapeLabel;
class STEPCAFControl_DataMapNodeOfDataMapOfShapeLabel : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		STEPCAFControl_DataMapNodeOfDataMapOfShapeLabel(const TopoDS_Shape K, const TDF_Label &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Shape  Key() const;
		%feature("autodoc", "1");
		TDF_Label & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend STEPCAFControl_DataMapNodeOfDataMapOfShapeLabel {
	Handle_STEPCAFControl_DataMapNodeOfDataMapOfShapeLabel GetHandle() {
	return *(Handle_STEPCAFControl_DataMapNodeOfDataMapOfShapeLabel*) &$self;
	}
};
%extend STEPCAFControl_DataMapNodeOfDataMapOfShapeLabel {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") STEPCAFControl_DataMapNodeOfDataMapOfShapeLabel::~STEPCAFControl_DataMapNodeOfDataMapOfShapeLabel %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend STEPCAFControl_DataMapNodeOfDataMapOfShapeLabel {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor STEPCAFControl_Controller;
class STEPCAFControl_Controller : public STEPControl_Controller {
	public:
		%feature("autodoc", "1");
		STEPCAFControl_Controller();
		%feature("autodoc", "1");
		static		Standard_Boolean Init();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend STEPCAFControl_Controller {
	Handle_STEPCAFControl_Controller GetHandle() {
	return *(Handle_STEPCAFControl_Controller*) &$self;
	}
};
%extend STEPCAFControl_Controller {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") STEPCAFControl_Controller::~STEPCAFControl_Controller %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend STEPCAFControl_Controller {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor STEPCAFControl_DataMapOfShapeLabel;
class STEPCAFControl_DataMapOfShapeLabel : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		STEPCAFControl_DataMapOfShapeLabel(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		STEPCAFControl_DataMapOfShapeLabel & Assign(const STEPCAFControl_DataMapOfShapeLabel &Other);
		%feature("autodoc", "1");
		STEPCAFControl_DataMapOfShapeLabel & operator=(const STEPCAFControl_DataMapOfShapeLabel &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TopoDS_Shape K, const TDF_Label &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TopoDS_Shape K);
		%feature("autodoc", "1");
		const TDF_Label & Find(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		const TDF_Label & operator()(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		TDF_Label & ChangeFind(const TopoDS_Shape K);
		%feature("autodoc", "1");
		TDF_Label & operator()(const TopoDS_Shape K);

};
%feature("shadow") STEPCAFControl_DataMapOfShapeLabel::~STEPCAFControl_DataMapOfShapeLabel %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend STEPCAFControl_DataMapOfShapeLabel {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor STEPCAFControl_StackItemOfDictionaryOfExternFile;
class STEPCAFControl_StackItemOfDictionaryOfExternFile : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		STEPCAFControl_StackItemOfDictionaryOfExternFile();
		%feature("autodoc", "1");
		STEPCAFControl_StackItemOfDictionaryOfExternFile(const Handle_STEPCAFControl_StackItemOfDictionaryOfExternFile &previous);
		%feature("autodoc", "1");
		Handle_STEPCAFControl_StackItemOfDictionaryOfExternFile Previous() const;
		%feature("autodoc", "1");
		Handle_STEPCAFControl_DictionaryOfExternFile Value() const;
		%feature("autodoc", "1");
		void SetValue(const Handle_STEPCAFControl_DictionaryOfExternFile &cval);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend STEPCAFControl_StackItemOfDictionaryOfExternFile {
	Handle_STEPCAFControl_StackItemOfDictionaryOfExternFile GetHandle() {
	return *(Handle_STEPCAFControl_StackItemOfDictionaryOfExternFile*) &$self;
	}
};
%extend STEPCAFControl_StackItemOfDictionaryOfExternFile {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") STEPCAFControl_StackItemOfDictionaryOfExternFile::~STEPCAFControl_StackItemOfDictionaryOfExternFile %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend STEPCAFControl_StackItemOfDictionaryOfExternFile {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor STEPCAFControl_DataMapNodeOfDataMapOfLabelExternFile;
class STEPCAFControl_DataMapNodeOfDataMapOfLabelExternFile : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		STEPCAFControl_DataMapNodeOfDataMapOfLabelExternFile(const TDF_Label &K, const Handle_STEPCAFControl_ExternFile &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TDF_Label & Key() const;
		%feature("autodoc", "1");
		Handle_STEPCAFControl_ExternFile & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend STEPCAFControl_DataMapNodeOfDataMapOfLabelExternFile {
	Handle_STEPCAFControl_DataMapNodeOfDataMapOfLabelExternFile GetHandle() {
	return *(Handle_STEPCAFControl_DataMapNodeOfDataMapOfLabelExternFile*) &$self;
	}
};
%extend STEPCAFControl_DataMapNodeOfDataMapOfLabelExternFile {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") STEPCAFControl_DataMapNodeOfDataMapOfLabelExternFile::~STEPCAFControl_DataMapNodeOfDataMapOfLabelExternFile %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend STEPCAFControl_DataMapNodeOfDataMapOfLabelExternFile {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor STEPCAFControl_DataMapNodeOfDataMapOfShapePD;
class STEPCAFControl_DataMapNodeOfDataMapOfShapePD : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		STEPCAFControl_DataMapNodeOfDataMapOfShapePD(const TopoDS_Shape K, const Handle_StepBasic_ProductDefinition &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Shape  Key() const;
		%feature("autodoc", "1");
		Handle_StepBasic_ProductDefinition & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend STEPCAFControl_DataMapNodeOfDataMapOfShapePD {
	Handle_STEPCAFControl_DataMapNodeOfDataMapOfShapePD GetHandle() {
	return *(Handle_STEPCAFControl_DataMapNodeOfDataMapOfShapePD*) &$self;
	}
};
%extend STEPCAFControl_DataMapNodeOfDataMapOfShapePD {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") STEPCAFControl_DataMapNodeOfDataMapOfShapePD::~STEPCAFControl_DataMapNodeOfDataMapOfShapePD %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend STEPCAFControl_DataMapNodeOfDataMapOfShapePD {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor STEPCAFControl_DataMapNodeOfDataMapOfShapeTransient;
class STEPCAFControl_DataMapNodeOfDataMapOfShapeTransient : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		STEPCAFControl_DataMapNodeOfDataMapOfShapeTransient(const TopoDS_Shape K, const Handle_Standard_Transient &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Shape  Key() const;
		%feature("autodoc", "1");
		Handle_Standard_Transient & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend STEPCAFControl_DataMapNodeOfDataMapOfShapeTransient {
	Handle_STEPCAFControl_DataMapNodeOfDataMapOfShapeTransient GetHandle() {
	return *(Handle_STEPCAFControl_DataMapNodeOfDataMapOfShapeTransient*) &$self;
	}
};
%extend STEPCAFControl_DataMapNodeOfDataMapOfShapeTransient {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") STEPCAFControl_DataMapNodeOfDataMapOfShapeTransient::~STEPCAFControl_DataMapNodeOfDataMapOfShapeTransient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend STEPCAFControl_DataMapNodeOfDataMapOfShapeTransient {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor STEPCAFControl_DataMapOfPDExternFile;
class STEPCAFControl_DataMapOfPDExternFile : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		STEPCAFControl_DataMapOfPDExternFile(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		STEPCAFControl_DataMapOfPDExternFile & Assign(const STEPCAFControl_DataMapOfPDExternFile &Other);
		%feature("autodoc", "1");
		STEPCAFControl_DataMapOfPDExternFile & operator=(const STEPCAFControl_DataMapOfPDExternFile &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Handle_StepBasic_ProductDefinition &K, const Handle_STEPCAFControl_ExternFile &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Handle_StepBasic_ProductDefinition &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Handle_StepBasic_ProductDefinition &K);
		%feature("autodoc", "1");
		const Handle_STEPCAFControl_ExternFile & Find(const Handle_StepBasic_ProductDefinition &K) const;
		%feature("autodoc", "1");
		const Handle_STEPCAFControl_ExternFile & operator()(const Handle_StepBasic_ProductDefinition &K) const;
		%feature("autodoc", "1");
		Handle_STEPCAFControl_ExternFile & ChangeFind(const Handle_StepBasic_ProductDefinition &K);
		%feature("autodoc", "1");
		Handle_STEPCAFControl_ExternFile & operator()(const Handle_StepBasic_ProductDefinition &K);

};
%feature("shadow") STEPCAFControl_DataMapOfPDExternFile::~STEPCAFControl_DataMapOfPDExternFile %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend STEPCAFControl_DataMapOfPDExternFile {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor STEPCAFControl_DataMapIteratorOfDataMapOfSDRExternFile;
class STEPCAFControl_DataMapIteratorOfDataMapOfSDRExternFile : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		STEPCAFControl_DataMapIteratorOfDataMapOfSDRExternFile();
		%feature("autodoc", "1");
		STEPCAFControl_DataMapIteratorOfDataMapOfSDRExternFile(const STEPCAFControl_DataMapOfSDRExternFile &aMap);
		%feature("autodoc", "1");
		void Initialize(const STEPCAFControl_DataMapOfSDRExternFile &aMap);
		%feature("autodoc", "1");
		const Handle_StepShape_ShapeDefinitionRepresentation & Key() const;
		%feature("autodoc", "1");
		const Handle_STEPCAFControl_ExternFile & Value() const;

};
%feature("shadow") STEPCAFControl_DataMapIteratorOfDataMapOfSDRExternFile::~STEPCAFControl_DataMapIteratorOfDataMapOfSDRExternFile %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend STEPCAFControl_DataMapIteratorOfDataMapOfSDRExternFile {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor STEPCAFControl_DataMapOfSDRExternFile;
class STEPCAFControl_DataMapOfSDRExternFile : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		STEPCAFControl_DataMapOfSDRExternFile(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		STEPCAFControl_DataMapOfSDRExternFile & Assign(const STEPCAFControl_DataMapOfSDRExternFile &Other);
		%feature("autodoc", "1");
		STEPCAFControl_DataMapOfSDRExternFile & operator=(const STEPCAFControl_DataMapOfSDRExternFile &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Handle_StepShape_ShapeDefinitionRepresentation &K, const Handle_STEPCAFControl_ExternFile &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Handle_StepShape_ShapeDefinitionRepresentation &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Handle_StepShape_ShapeDefinitionRepresentation &K);
		%feature("autodoc", "1");
		const Handle_STEPCAFControl_ExternFile & Find(const Handle_StepShape_ShapeDefinitionRepresentation &K) const;
		%feature("autodoc", "1");
		const Handle_STEPCAFControl_ExternFile & operator()(const Handle_StepShape_ShapeDefinitionRepresentation &K) const;
		%feature("autodoc", "1");
		Handle_STEPCAFControl_ExternFile & ChangeFind(const Handle_StepShape_ShapeDefinitionRepresentation &K);
		%feature("autodoc", "1");
		Handle_STEPCAFControl_ExternFile & operator()(const Handle_StepShape_ShapeDefinitionRepresentation &K);

};
%feature("shadow") STEPCAFControl_DataMapOfSDRExternFile::~STEPCAFControl_DataMapOfSDRExternFile %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend STEPCAFControl_DataMapOfSDRExternFile {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor STEPCAFControl_DataMapOfLabelExternFile;
class STEPCAFControl_DataMapOfLabelExternFile : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		STEPCAFControl_DataMapOfLabelExternFile(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		STEPCAFControl_DataMapOfLabelExternFile & Assign(const STEPCAFControl_DataMapOfLabelExternFile &Other);
		%feature("autodoc", "1");
		STEPCAFControl_DataMapOfLabelExternFile & operator=(const STEPCAFControl_DataMapOfLabelExternFile &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TDF_Label &K, const Handle_STEPCAFControl_ExternFile &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TDF_Label &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TDF_Label &K);
		%feature("autodoc", "1");
		const Handle_STEPCAFControl_ExternFile & Find(const TDF_Label &K) const;
		%feature("autodoc", "1");
		const Handle_STEPCAFControl_ExternFile & operator()(const TDF_Label &K) const;
		%feature("autodoc", "1");
		Handle_STEPCAFControl_ExternFile & ChangeFind(const TDF_Label &K);
		%feature("autodoc", "1");
		Handle_STEPCAFControl_ExternFile & operator()(const TDF_Label &K);

};
%feature("shadow") STEPCAFControl_DataMapOfLabelExternFile::~STEPCAFControl_DataMapOfLabelExternFile %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend STEPCAFControl_DataMapOfLabelExternFile {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor STEPCAFControl_DataMapIteratorOfDataMapOfShapeLabel;
class STEPCAFControl_DataMapIteratorOfDataMapOfShapeLabel : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		STEPCAFControl_DataMapIteratorOfDataMapOfShapeLabel();
		%feature("autodoc", "1");
		STEPCAFControl_DataMapIteratorOfDataMapOfShapeLabel(const STEPCAFControl_DataMapOfShapeLabel &aMap);
		%feature("autodoc", "1");
		void Initialize(const STEPCAFControl_DataMapOfShapeLabel &aMap);
		%feature("autodoc", "1");
		const TopoDS_Shape  Key() const;
		%feature("autodoc", "1");
		const TDF_Label & Value() const;

};
%feature("shadow") STEPCAFControl_DataMapIteratorOfDataMapOfShapeLabel::~STEPCAFControl_DataMapIteratorOfDataMapOfShapeLabel %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend STEPCAFControl_DataMapIteratorOfDataMapOfShapeLabel {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor STEPCAFControl_DataMapNodeOfDataMapOfSDRExternFile;
class STEPCAFControl_DataMapNodeOfDataMapOfSDRExternFile : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		STEPCAFControl_DataMapNodeOfDataMapOfSDRExternFile(const Handle_StepShape_ShapeDefinitionRepresentation &K, const Handle_STEPCAFControl_ExternFile &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Handle_StepShape_ShapeDefinitionRepresentation & Key() const;
		%feature("autodoc", "1");
		Handle_STEPCAFControl_ExternFile & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend STEPCAFControl_DataMapNodeOfDataMapOfSDRExternFile {
	Handle_STEPCAFControl_DataMapNodeOfDataMapOfSDRExternFile GetHandle() {
	return *(Handle_STEPCAFControl_DataMapNodeOfDataMapOfSDRExternFile*) &$self;
	}
};
%extend STEPCAFControl_DataMapNodeOfDataMapOfSDRExternFile {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") STEPCAFControl_DataMapNodeOfDataMapOfSDRExternFile::~STEPCAFControl_DataMapNodeOfDataMapOfSDRExternFile %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend STEPCAFControl_DataMapNodeOfDataMapOfSDRExternFile {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor STEPCAFControl_DataMapOfLabelShape;
class STEPCAFControl_DataMapOfLabelShape : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		STEPCAFControl_DataMapOfLabelShape(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		STEPCAFControl_DataMapOfLabelShape & Assign(const STEPCAFControl_DataMapOfLabelShape &Other);
		%feature("autodoc", "1");
		STEPCAFControl_DataMapOfLabelShape & operator=(const STEPCAFControl_DataMapOfLabelShape &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TDF_Label &K, const TopoDS_Shape I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TDF_Label &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TDF_Label &K);
		%feature("autodoc", "1");
		const TopoDS_Shape  Find(const TDF_Label &K) const;
		%feature("autodoc", "1");
		const TopoDS_Shape  operator()(const TDF_Label &K) const;
		%feature("autodoc", "1");
		TopoDS_Shape  ChangeFind(const TDF_Label &K);
		%feature("autodoc", "1");
		TopoDS_Shape  operator()(const TDF_Label &K);

};
%feature("shadow") STEPCAFControl_DataMapOfLabelShape::~STEPCAFControl_DataMapOfLabelShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend STEPCAFControl_DataMapOfLabelShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor STEPCAFControl_DictionaryOfExternFile;
class STEPCAFControl_DictionaryOfExternFile : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		STEPCAFControl_DictionaryOfExternFile();
		%feature("autodoc", "1");
		Standard_Boolean HasItem(const char * name, const Standard_Boolean exact=0) const;
		%feature("autodoc", "1");
		Standard_Boolean HasItem(const TCollection_AsciiString &name, const Standard_Boolean exact=1) const;
		%feature("autodoc", "1");
		const Handle_STEPCAFControl_ExternFile & Item(const char * name, const Standard_Boolean exact=1) const;
		%feature("autodoc", "1");
		const Handle_STEPCAFControl_ExternFile & Item(const TCollection_AsciiString &name, const Standard_Boolean exact=1) const;
		%feature("autodoc", "1");
		Standard_Boolean GetItem(const char * name, Handle_STEPCAFControl_ExternFile & anitem, const Standard_Boolean exact=1) const;
		%feature("autodoc", "1");
		Standard_Boolean GetItem(const TCollection_AsciiString &name, Handle_STEPCAFControl_ExternFile & anitem, const Standard_Boolean exact=1) const;
		%feature("autodoc", "1");
		void SetItem(const char * name, const Handle_STEPCAFControl_ExternFile &anitem, const Standard_Boolean exact=1);
		%feature("autodoc", "1");
		void SetItem(const TCollection_AsciiString &name, const Handle_STEPCAFControl_ExternFile &anitem, const Standard_Boolean exact=1);
		%feature("autodoc", "1");
		Handle_STEPCAFControl_ExternFile & NewItem(const char * name, Standard_Boolean & isvalued, const Standard_Boolean exact=1);
		%feature("autodoc", "1");
		Handle_STEPCAFControl_ExternFile & NewItem(const TCollection_AsciiString &name, Standard_Boolean & isvalued, const Standard_Boolean exact=1);
		%feature("autodoc", "1");
		Standard_Boolean RemoveItem(const char * name, const Standard_Boolean cln=1, const Standard_Boolean exact=1);
		%feature("autodoc", "1");
		Standard_Boolean RemoveItem(const TCollection_AsciiString &name, const Standard_Boolean cln=1, const Standard_Boolean exact=1);
		%feature("autodoc", "1");
		void Clean();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Handle_STEPCAFControl_DictionaryOfExternFile Copy() const;
		%feature("autodoc", "1");
		Standard_Boolean Complete(Handle_STEPCAFControl_DictionaryOfExternFile & acell) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend STEPCAFControl_DictionaryOfExternFile {
	Handle_STEPCAFControl_DictionaryOfExternFile GetHandle() {
	return *(Handle_STEPCAFControl_DictionaryOfExternFile*) &$self;
	}
};
%extend STEPCAFControl_DictionaryOfExternFile {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") STEPCAFControl_DictionaryOfExternFile::~STEPCAFControl_DictionaryOfExternFile %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend STEPCAFControl_DictionaryOfExternFile {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor STEPCAFControl_IteratorOfDictionaryOfExternFile;
class STEPCAFControl_IteratorOfDictionaryOfExternFile {
	public:
		%feature("autodoc", "1");
		STEPCAFControl_IteratorOfDictionaryOfExternFile(const Handle_STEPCAFControl_DictionaryOfExternFile &acell);
		%feature("autodoc", "1");
		STEPCAFControl_IteratorOfDictionaryOfExternFile(const Handle_STEPCAFControl_DictionaryOfExternFile &acell, const char * basename);
		%feature("autodoc", "1");
		STEPCAFControl_IteratorOfDictionaryOfExternFile(const Handle_STEPCAFControl_DictionaryOfExternFile &acell, const TCollection_AsciiString &basename);
		%feature("autodoc", "1");
		void Start();
		%feature("autodoc", "1");
		Standard_Boolean More();
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		const Handle_STEPCAFControl_ExternFile & Value() const;
		%feature("autodoc", "1");
		TCollection_AsciiString Name() const;

};
%feature("shadow") STEPCAFControl_IteratorOfDictionaryOfExternFile::~STEPCAFControl_IteratorOfDictionaryOfExternFile %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend STEPCAFControl_IteratorOfDictionaryOfExternFile {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor STEPCAFControl_Reader;
class STEPCAFControl_Reader {
	public:
		%feature("autodoc", "1");
		STEPCAFControl_Reader();
		%feature("autodoc", "1");
		STEPCAFControl_Reader(const Handle_XSControl_WorkSession &WS, const Standard_Boolean scratch=1);
		%feature("autodoc", "1");
		void Init(const Handle_XSControl_WorkSession &WS, const Standard_Boolean scratch=1);
		%feature("autodoc", "1");
		IFSelect_ReturnStatus ReadFile(const char * filename);
		%feature("autodoc", "1");
		Standard_Integer NbRootsForTransfer();
		%feature("autodoc", "1");
		Standard_Boolean TransferOneRoot(const Standard_Integer num, Handle_TDocStd_Document & doc);
		%feature("autodoc", "1");
		Standard_Boolean Transfer(Handle_TDocStd_Document & doc);
		%feature("autodoc", "1");
		Standard_Boolean Perform(const TCollection_AsciiString &filename, Handle_TDocStd_Document & doc);
		%feature("autodoc", "1");
		Standard_Boolean Perform(const char * filename, Handle_TDocStd_Document & doc);
		%feature("autodoc", "1");
		const Handle_STEPCAFControl_DictionaryOfExternFile & ExternFiles() const;
		%feature("autodoc", "1");
		Standard_Boolean ExternFile(const char * name, Handle_STEPCAFControl_ExternFile & ef) const;
		%feature("autodoc", "1");
		STEPControl_Reader & Reader();
		%feature("autodoc", "1");
		const STEPControl_Reader & Reader() const;
		%feature("autodoc", "1");
		static		TDF_Label FindInstance(const Handle_StepRepr_NextAssemblyUsageOccurrence &NAUO, const Handle_XCAFDoc_ShapeTool &STool, const STEPConstruct_Tool &Tool, const STEPCAFControl_DataMapOfPDExternFile &PDRFileMap, const STEPCAFControl_DataMapOfShapeLabel &ShapeLabelMap);
		%feature("autodoc", "1");
		void SetColorMode(const Standard_Boolean colormode);
		%feature("autodoc", "1");
		Standard_Boolean GetColorMode() const;
		%feature("autodoc", "1");
		void SetNameMode(const Standard_Boolean namemode);
		%feature("autodoc", "1");
		Standard_Boolean GetNameMode() const;
		%feature("autodoc", "1");
		void SetLayerMode(const Standard_Boolean layermode);
		%feature("autodoc", "1");
		Standard_Boolean GetLayerMode() const;
		%feature("autodoc", "1");
		void SetPropsMode(const Standard_Boolean propsmode);
		%feature("autodoc", "1");
		Standard_Boolean GetPropsMode() const;
		%feature("autodoc", "1");
		void SetSHUOMode(const Standard_Boolean shuomode);
		%feature("autodoc", "1");
		Standard_Boolean GetSHUOMode() const;
		%feature("autodoc", "1");
		void SetGDTMode(const Standard_Boolean gdtmode);
		%feature("autodoc", "1");
		Standard_Boolean GetGDTMode() const;
		%feature("autodoc", "1");
		void SetMatMode(const Standard_Boolean matmode);
		%feature("autodoc", "1");
		Standard_Boolean GetMatMode() const;

};
%feature("shadow") STEPCAFControl_Reader::~STEPCAFControl_Reader %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend STEPCAFControl_Reader {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor STEPCAFControl_DataMapIteratorOfDataMapOfShapeTransient;
class STEPCAFControl_DataMapIteratorOfDataMapOfShapeTransient : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		STEPCAFControl_DataMapIteratorOfDataMapOfShapeTransient();
		%feature("autodoc", "1");
		STEPCAFControl_DataMapIteratorOfDataMapOfShapeTransient(const STEPCAFControl_DataMapOfShapeTransient &aMap);
		%feature("autodoc", "1");
		void Initialize(const STEPCAFControl_DataMapOfShapeTransient &aMap);
		%feature("autodoc", "1");
		const TopoDS_Shape  Key() const;
		%feature("autodoc", "1");
		const Handle_Standard_Transient & Value() const;

};
%feature("shadow") STEPCAFControl_DataMapIteratorOfDataMapOfShapeTransient::~STEPCAFControl_DataMapIteratorOfDataMapOfShapeTransient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend STEPCAFControl_DataMapIteratorOfDataMapOfShapeTransient {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor STEPCAFControl_DataMapNodeOfDataMapOfLabelShape;
class STEPCAFControl_DataMapNodeOfDataMapOfLabelShape : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		STEPCAFControl_DataMapNodeOfDataMapOfLabelShape(const TDF_Label &K, const TopoDS_Shape I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TDF_Label & Key() const;
		%feature("autodoc", "1");
		TopoDS_Shape  Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend STEPCAFControl_DataMapNodeOfDataMapOfLabelShape {
	Handle_STEPCAFControl_DataMapNodeOfDataMapOfLabelShape GetHandle() {
	return *(Handle_STEPCAFControl_DataMapNodeOfDataMapOfLabelShape*) &$self;
	}
};
%extend STEPCAFControl_DataMapNodeOfDataMapOfLabelShape {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") STEPCAFControl_DataMapNodeOfDataMapOfLabelShape::~STEPCAFControl_DataMapNodeOfDataMapOfLabelShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend STEPCAFControl_DataMapNodeOfDataMapOfLabelShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor STEPCAFControl_DataMapNodeOfDataMapOfPDExternFile;
class STEPCAFControl_DataMapNodeOfDataMapOfPDExternFile : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		STEPCAFControl_DataMapNodeOfDataMapOfPDExternFile(const Handle_StepBasic_ProductDefinition &K, const Handle_STEPCAFControl_ExternFile &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Handle_StepBasic_ProductDefinition & Key() const;
		%feature("autodoc", "1");
		Handle_STEPCAFControl_ExternFile & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend STEPCAFControl_DataMapNodeOfDataMapOfPDExternFile {
	Handle_STEPCAFControl_DataMapNodeOfDataMapOfPDExternFile GetHandle() {
	return *(Handle_STEPCAFControl_DataMapNodeOfDataMapOfPDExternFile*) &$self;
	}
};
%extend STEPCAFControl_DataMapNodeOfDataMapOfPDExternFile {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") STEPCAFControl_DataMapNodeOfDataMapOfPDExternFile::~STEPCAFControl_DataMapNodeOfDataMapOfPDExternFile %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend STEPCAFControl_DataMapNodeOfDataMapOfPDExternFile {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor STEPCAFControl_Writer;
class STEPCAFControl_Writer {
	public:
		%feature("autodoc", "1");
		STEPCAFControl_Writer();
		%feature("autodoc", "1");
		STEPCAFControl_Writer(const Handle_XSControl_WorkSession &WS, const Standard_Boolean scratch=1);
		%feature("autodoc", "1");
		void Init(const Handle_XSControl_WorkSession &WS, const Standard_Boolean scratch=1);
		%feature("autodoc", "1");
		IFSelect_ReturnStatus Write(const char * filename);
		%feature("autodoc", "1");
		Standard_Boolean Transfer(const Handle_TDocStd_Document &doc, const STEPControl_StepModelType mode=STEPControl_AsIs, const char * multi=0);
		%feature("autodoc", "1");
		Standard_Boolean Transfer(const TDF_Label &L, const STEPControl_StepModelType mode=STEPControl_AsIs, const char * multi=0);
		%feature("autodoc", "1");
		Standard_Boolean Perform(const Handle_TDocStd_Document &doc, const TCollection_AsciiString &filename);
		%feature("autodoc", "1");
		Standard_Boolean Perform(const Handle_TDocStd_Document &doc, const char * filename);
		%feature("autodoc", "1");
		const Handle_STEPCAFControl_DictionaryOfExternFile & ExternFiles() const;
		%feature("autodoc", "1");
		Standard_Boolean ExternFile(const TDF_Label &L, Handle_STEPCAFControl_ExternFile & ef) const;
		%feature("autodoc", "1");
		Standard_Boolean ExternFile(const char * name, Handle_STEPCAFControl_ExternFile & ef) const;
		%feature("autodoc", "1");
		STEPControl_Writer & Writer();
		%feature("autodoc", "1");
		const STEPControl_Writer & Writer() const;
		%feature("autodoc", "1");
		void SetColorMode(const Standard_Boolean colormode);
		%feature("autodoc", "1");
		Standard_Boolean GetColorMode() const;
		%feature("autodoc", "1");
		void SetNameMode(const Standard_Boolean namemode);
		%feature("autodoc", "1");
		Standard_Boolean GetNameMode() const;
		%feature("autodoc", "1");
		void SetLayerMode(const Standard_Boolean layermode);
		%feature("autodoc", "1");
		Standard_Boolean GetLayerMode() const;
		%feature("autodoc", "1");
		void SetPropsMode(const Standard_Boolean propsmode);
		%feature("autodoc", "1");
		Standard_Boolean GetPropsMode() const;
		%feature("autodoc", "1");
		void SetSHUOMode(const Standard_Boolean shuomode);
		%feature("autodoc", "1");
		Standard_Boolean GetSHUOMode() const;
		%feature("autodoc", "1");
		void SetDimTolMode(const Standard_Boolean dimtolmode);
		%feature("autodoc", "1");
		Standard_Boolean GetDimTolMode() const;
		%feature("autodoc", "1");
		void SetMaterialMode(const Standard_Boolean matmode);
		%feature("autodoc", "1");
		Standard_Boolean GetMaterialMode() const;

};
%feature("shadow") STEPCAFControl_Writer::~STEPCAFControl_Writer %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend STEPCAFControl_Writer {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor STEPCAFControl_DataMapIteratorOfDataMapOfShapePD;
class STEPCAFControl_DataMapIteratorOfDataMapOfShapePD : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		STEPCAFControl_DataMapIteratorOfDataMapOfShapePD();
		%feature("autodoc", "1");
		STEPCAFControl_DataMapIteratorOfDataMapOfShapePD(const STEPCAFControl_DataMapOfShapePD &aMap);
		%feature("autodoc", "1");
		void Initialize(const STEPCAFControl_DataMapOfShapePD &aMap);
		%feature("autodoc", "1");
		const TopoDS_Shape  Key() const;
		%feature("autodoc", "1");
		const Handle_StepBasic_ProductDefinition & Value() const;

};
%feature("shadow") STEPCAFControl_DataMapIteratorOfDataMapOfShapePD::~STEPCAFControl_DataMapIteratorOfDataMapOfShapePD %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend STEPCAFControl_DataMapIteratorOfDataMapOfShapePD {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor STEPCAFControl_DataMapIteratorOfDataMapOfPDExternFile;
class STEPCAFControl_DataMapIteratorOfDataMapOfPDExternFile : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		STEPCAFControl_DataMapIteratorOfDataMapOfPDExternFile();
		%feature("autodoc", "1");
		STEPCAFControl_DataMapIteratorOfDataMapOfPDExternFile(const STEPCAFControl_DataMapOfPDExternFile &aMap);
		%feature("autodoc", "1");
		void Initialize(const STEPCAFControl_DataMapOfPDExternFile &aMap);
		%feature("autodoc", "1");
		const Handle_StepBasic_ProductDefinition & Key() const;
		%feature("autodoc", "1");
		const Handle_STEPCAFControl_ExternFile & Value() const;

};
%feature("shadow") STEPCAFControl_DataMapIteratorOfDataMapOfPDExternFile::~STEPCAFControl_DataMapIteratorOfDataMapOfPDExternFile %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend STEPCAFControl_DataMapIteratorOfDataMapOfPDExternFile {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor STEPCAFControl_DataMapIteratorOfDataMapOfShapeSDR;
class STEPCAFControl_DataMapIteratorOfDataMapOfShapeSDR : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		STEPCAFControl_DataMapIteratorOfDataMapOfShapeSDR();
		%feature("autodoc", "1");
		STEPCAFControl_DataMapIteratorOfDataMapOfShapeSDR(const STEPCAFControl_DataMapOfShapeSDR &aMap);
		%feature("autodoc", "1");
		void Initialize(const STEPCAFControl_DataMapOfShapeSDR &aMap);
		%feature("autodoc", "1");
		const TopoDS_Shape  Key() const;
		%feature("autodoc", "1");
		const Handle_StepShape_ShapeDefinitionRepresentation & Value() const;

};
%feature("shadow") STEPCAFControl_DataMapIteratorOfDataMapOfShapeSDR::~STEPCAFControl_DataMapIteratorOfDataMapOfShapeSDR %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend STEPCAFControl_DataMapIteratorOfDataMapOfShapeSDR {
	void _kill_pointed() {
		delete $self;
	}
};
