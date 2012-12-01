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

%module Storage
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include Storage_renames.i


%include Storage_required_python_modules.i


%include Storage_dependencies.i


%include Storage_headers.i

typedef long int Storage_Position;
typedef Storage_BaseDriver * Storage_Container;

enum Storage_Error {
	Storage_VSOk,
	Storage_VSOpenError,
	Storage_VSModeError,
	Storage_VSCloseError,
	Storage_VSAlreadyOpen,
	Storage_VSNotOpen,
	Storage_VSSectionNotFound,
	Storage_VSWriteError,
	Storage_VSFormatError,
	Storage_VSUnknownType,
	Storage_VSTypeMismatch,
	Storage_VSInternalError,
	Storage_VSExtCharParityError,
	Storage_VSWrongFileDriver,
	};

enum Storage_OpenMode {
	Storage_VSNone,
	Storage_VSRead,
	Storage_VSWrite,
	Storage_VSReadWrite,
	};

enum Storage_SolveMode {
	Storage_AddSolve,
	Storage_WriteSolve,
	Storage_ReadSolve,
	};



%nodefaultctor Handle_Storage_StreamReadError;
class Handle_Storage_StreamReadError : public Handle_Standard_Failure {
	public:
		%feature("autodoc", "1");
		Handle_Storage_StreamReadError();
		%feature("autodoc", "1");
		Handle_Storage_StreamReadError(const Handle_Storage_StreamReadError &aHandle);
		%feature("autodoc", "1");
		Handle_Storage_StreamReadError(const Storage_StreamReadError *anItem);
		%feature("autodoc", "1");
		Handle_Storage_StreamReadError & operator=(const Handle_Storage_StreamReadError &aHandle);
		%feature("autodoc", "1");
		Handle_Storage_StreamReadError & operator=(const Storage_StreamReadError *anItem);
		%feature("autodoc", "1");
		static		Handle_Storage_StreamReadError DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Storage_StreamReadError {
	Storage_StreamReadError* GetObject() {
	return (Storage_StreamReadError*)$self->Access();
	}
};
%feature("shadow") Handle_Storage_StreamReadError::~Handle_Storage_StreamReadError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Storage_StreamReadError {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Storage_StreamTypeMismatchError;
class Handle_Storage_StreamTypeMismatchError : public Handle_Storage_StreamReadError {
	public:
		%feature("autodoc", "1");
		Handle_Storage_StreamTypeMismatchError();
		%feature("autodoc", "1");
		Handle_Storage_StreamTypeMismatchError(const Handle_Storage_StreamTypeMismatchError &aHandle);
		%feature("autodoc", "1");
		Handle_Storage_StreamTypeMismatchError(const Storage_StreamTypeMismatchError *anItem);
		%feature("autodoc", "1");
		Handle_Storage_StreamTypeMismatchError & operator=(const Handle_Storage_StreamTypeMismatchError &aHandle);
		%feature("autodoc", "1");
		Handle_Storage_StreamTypeMismatchError & operator=(const Storage_StreamTypeMismatchError *anItem);
		%feature("autodoc", "1");
		static		Handle_Storage_StreamTypeMismatchError DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Storage_StreamTypeMismatchError {
	Storage_StreamTypeMismatchError* GetObject() {
	return (Storage_StreamTypeMismatchError*)$self->Access();
	}
};
%feature("shadow") Handle_Storage_StreamTypeMismatchError::~Handle_Storage_StreamTypeMismatchError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Storage_StreamTypeMismatchError {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Storage_InternalData;
class Handle_Storage_InternalData : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Storage_InternalData();
		%feature("autodoc", "1");
		Handle_Storage_InternalData(const Handle_Storage_InternalData &aHandle);
		%feature("autodoc", "1");
		Handle_Storage_InternalData(const Storage_InternalData *anItem);
		%feature("autodoc", "1");
		Handle_Storage_InternalData & operator=(const Handle_Storage_InternalData &aHandle);
		%feature("autodoc", "1");
		Handle_Storage_InternalData & operator=(const Storage_InternalData *anItem);
		%feature("autodoc", "1");
		static		Handle_Storage_InternalData DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Storage_InternalData {
	Storage_InternalData* GetObject() {
	return (Storage_InternalData*)$self->Access();
	}
};
%feature("shadow") Handle_Storage_InternalData::~Handle_Storage_InternalData %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Storage_InternalData {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Storage_SequenceNodeOfSeqOfCallBack;
class Handle_Storage_SequenceNodeOfSeqOfCallBack : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_Storage_SequenceNodeOfSeqOfCallBack();
		%feature("autodoc", "1");
		Handle_Storage_SequenceNodeOfSeqOfCallBack(const Handle_Storage_SequenceNodeOfSeqOfCallBack &aHandle);
		%feature("autodoc", "1");
		Handle_Storage_SequenceNodeOfSeqOfCallBack(const Storage_SequenceNodeOfSeqOfCallBack *anItem);
		%feature("autodoc", "1");
		Handle_Storage_SequenceNodeOfSeqOfCallBack & operator=(const Handle_Storage_SequenceNodeOfSeqOfCallBack &aHandle);
		%feature("autodoc", "1");
		Handle_Storage_SequenceNodeOfSeqOfCallBack & operator=(const Storage_SequenceNodeOfSeqOfCallBack *anItem);
		%feature("autodoc", "1");
		static		Handle_Storage_SequenceNodeOfSeqOfCallBack DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Storage_SequenceNodeOfSeqOfCallBack {
	Storage_SequenceNodeOfSeqOfCallBack* GetObject() {
	return (Storage_SequenceNodeOfSeqOfCallBack*)$self->Access();
	}
};
%feature("shadow") Handle_Storage_SequenceNodeOfSeqOfCallBack::~Handle_Storage_SequenceNodeOfSeqOfCallBack %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Storage_SequenceNodeOfSeqOfCallBack {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Storage_IndexedDataMapNodeOfPType;
class Handle_Storage_IndexedDataMapNodeOfPType : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_Storage_IndexedDataMapNodeOfPType();
		%feature("autodoc", "1");
		Handle_Storage_IndexedDataMapNodeOfPType(const Handle_Storage_IndexedDataMapNodeOfPType &aHandle);
		%feature("autodoc", "1");
		Handle_Storage_IndexedDataMapNodeOfPType(const Storage_IndexedDataMapNodeOfPType *anItem);
		%feature("autodoc", "1");
		Handle_Storage_IndexedDataMapNodeOfPType & operator=(const Handle_Storage_IndexedDataMapNodeOfPType &aHandle);
		%feature("autodoc", "1");
		Handle_Storage_IndexedDataMapNodeOfPType & operator=(const Storage_IndexedDataMapNodeOfPType *anItem);
		%feature("autodoc", "1");
		static		Handle_Storage_IndexedDataMapNodeOfPType DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Storage_IndexedDataMapNodeOfPType {
	Storage_IndexedDataMapNodeOfPType* GetObject() {
	return (Storage_IndexedDataMapNodeOfPType*)$self->Access();
	}
};
%feature("shadow") Handle_Storage_IndexedDataMapNodeOfPType::~Handle_Storage_IndexedDataMapNodeOfPType %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Storage_IndexedDataMapNodeOfPType {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Storage_DataMapNodeOfMapOfPers;
class Handle_Storage_DataMapNodeOfMapOfPers : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_Storage_DataMapNodeOfMapOfPers();
		%feature("autodoc", "1");
		Handle_Storage_DataMapNodeOfMapOfPers(const Handle_Storage_DataMapNodeOfMapOfPers &aHandle);
		%feature("autodoc", "1");
		Handle_Storage_DataMapNodeOfMapOfPers(const Storage_DataMapNodeOfMapOfPers *anItem);
		%feature("autodoc", "1");
		Handle_Storage_DataMapNodeOfMapOfPers & operator=(const Handle_Storage_DataMapNodeOfMapOfPers &aHandle);
		%feature("autodoc", "1");
		Handle_Storage_DataMapNodeOfMapOfPers & operator=(const Storage_DataMapNodeOfMapOfPers *anItem);
		%feature("autodoc", "1");
		static		Handle_Storage_DataMapNodeOfMapOfPers DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Storage_DataMapNodeOfMapOfPers {
	Storage_DataMapNodeOfMapOfPers* GetObject() {
	return (Storage_DataMapNodeOfMapOfPers*)$self->Access();
	}
};
%feature("shadow") Handle_Storage_DataMapNodeOfMapOfPers::~Handle_Storage_DataMapNodeOfMapOfPers %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Storage_DataMapNodeOfMapOfPers {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Storage_SequenceNodeOfSeqOfPersistent;
class Handle_Storage_SequenceNodeOfSeqOfPersistent : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_Storage_SequenceNodeOfSeqOfPersistent();
		%feature("autodoc", "1");
		Handle_Storage_SequenceNodeOfSeqOfPersistent(const Handle_Storage_SequenceNodeOfSeqOfPersistent &aHandle);
		%feature("autodoc", "1");
		Handle_Storage_SequenceNodeOfSeqOfPersistent(const Storage_SequenceNodeOfSeqOfPersistent *anItem);
		%feature("autodoc", "1");
		Handle_Storage_SequenceNodeOfSeqOfPersistent & operator=(const Handle_Storage_SequenceNodeOfSeqOfPersistent &aHandle);
		%feature("autodoc", "1");
		Handle_Storage_SequenceNodeOfSeqOfPersistent & operator=(const Storage_SequenceNodeOfSeqOfPersistent *anItem);
		%feature("autodoc", "1");
		static		Handle_Storage_SequenceNodeOfSeqOfPersistent DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Storage_SequenceNodeOfSeqOfPersistent {
	Storage_SequenceNodeOfSeqOfPersistent* GetObject() {
	return (Storage_SequenceNodeOfSeqOfPersistent*)$self->Access();
	}
};
%feature("shadow") Handle_Storage_SequenceNodeOfSeqOfPersistent::~Handle_Storage_SequenceNodeOfSeqOfPersistent %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Storage_SequenceNodeOfSeqOfPersistent {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Storage_HSeqOfPersistent;
class Handle_Storage_HSeqOfPersistent : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Storage_HSeqOfPersistent();
		%feature("autodoc", "1");
		Handle_Storage_HSeqOfPersistent(const Handle_Storage_HSeqOfPersistent &aHandle);
		%feature("autodoc", "1");
		Handle_Storage_HSeqOfPersistent(const Storage_HSeqOfPersistent *anItem);
		%feature("autodoc", "1");
		Handle_Storage_HSeqOfPersistent & operator=(const Handle_Storage_HSeqOfPersistent &aHandle);
		%feature("autodoc", "1");
		Handle_Storage_HSeqOfPersistent & operator=(const Storage_HSeqOfPersistent *anItem);
		%feature("autodoc", "1");
		static		Handle_Storage_HSeqOfPersistent DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Storage_HSeqOfPersistent {
	Storage_HSeqOfPersistent* GetObject() {
	return (Storage_HSeqOfPersistent*)$self->Access();
	}
};
%feature("shadow") Handle_Storage_HSeqOfPersistent::~Handle_Storage_HSeqOfPersistent %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Storage_HSeqOfPersistent {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Storage_HPArray;
class Handle_Storage_HPArray : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Storage_HPArray();
		%feature("autodoc", "1");
		Handle_Storage_HPArray(const Handle_Storage_HPArray &aHandle);
		%feature("autodoc", "1");
		Handle_Storage_HPArray(const Storage_HPArray *anItem);
		%feature("autodoc", "1");
		Handle_Storage_HPArray & operator=(const Handle_Storage_HPArray &aHandle);
		%feature("autodoc", "1");
		Handle_Storage_HPArray & operator=(const Storage_HPArray *anItem);
		%feature("autodoc", "1");
		static		Handle_Storage_HPArray DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Storage_HPArray {
	Storage_HPArray* GetObject() {
	return (Storage_HPArray*)$self->Access();
	}
};
%feature("shadow") Handle_Storage_HPArray::~Handle_Storage_HPArray %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Storage_HPArray {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Storage_StreamFormatError;
class Handle_Storage_StreamFormatError : public Handle_Standard_Failure {
	public:
		%feature("autodoc", "1");
		Handle_Storage_StreamFormatError();
		%feature("autodoc", "1");
		Handle_Storage_StreamFormatError(const Handle_Storage_StreamFormatError &aHandle);
		%feature("autodoc", "1");
		Handle_Storage_StreamFormatError(const Storage_StreamFormatError *anItem);
		%feature("autodoc", "1");
		Handle_Storage_StreamFormatError & operator=(const Handle_Storage_StreamFormatError &aHandle);
		%feature("autodoc", "1");
		Handle_Storage_StreamFormatError & operator=(const Storage_StreamFormatError *anItem);
		%feature("autodoc", "1");
		static		Handle_Storage_StreamFormatError DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Storage_StreamFormatError {
	Storage_StreamFormatError* GetObject() {
	return (Storage_StreamFormatError*)$self->Access();
	}
};
%feature("shadow") Handle_Storage_StreamFormatError::~Handle_Storage_StreamFormatError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Storage_StreamFormatError {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Storage_TypedCallBack;
class Handle_Storage_TypedCallBack : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Storage_TypedCallBack();
		%feature("autodoc", "1");
		Handle_Storage_TypedCallBack(const Handle_Storage_TypedCallBack &aHandle);
		%feature("autodoc", "1");
		Handle_Storage_TypedCallBack(const Storage_TypedCallBack *anItem);
		%feature("autodoc", "1");
		Handle_Storage_TypedCallBack & operator=(const Handle_Storage_TypedCallBack &aHandle);
		%feature("autodoc", "1");
		Handle_Storage_TypedCallBack & operator=(const Storage_TypedCallBack *anItem);
		%feature("autodoc", "1");
		static		Handle_Storage_TypedCallBack DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Storage_TypedCallBack {
	Storage_TypedCallBack* GetObject() {
	return (Storage_TypedCallBack*)$self->Access();
	}
};
%feature("shadow") Handle_Storage_TypedCallBack::~Handle_Storage_TypedCallBack %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Storage_TypedCallBack {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Storage_HSeqOfCallBack;
class Handle_Storage_HSeqOfCallBack : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Storage_HSeqOfCallBack();
		%feature("autodoc", "1");
		Handle_Storage_HSeqOfCallBack(const Handle_Storage_HSeqOfCallBack &aHandle);
		%feature("autodoc", "1");
		Handle_Storage_HSeqOfCallBack(const Storage_HSeqOfCallBack *anItem);
		%feature("autodoc", "1");
		Handle_Storage_HSeqOfCallBack & operator=(const Handle_Storage_HSeqOfCallBack &aHandle);
		%feature("autodoc", "1");
		Handle_Storage_HSeqOfCallBack & operator=(const Storage_HSeqOfCallBack *anItem);
		%feature("autodoc", "1");
		static		Handle_Storage_HSeqOfCallBack DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Storage_HSeqOfCallBack {
	Storage_HSeqOfCallBack* GetObject() {
	return (Storage_HSeqOfCallBack*)$self->Access();
	}
};
%feature("shadow") Handle_Storage_HSeqOfCallBack::~Handle_Storage_HSeqOfCallBack %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Storage_HSeqOfCallBack {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Storage_Root;
class Handle_Storage_Root : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Storage_Root();
		%feature("autodoc", "1");
		Handle_Storage_Root(const Handle_Storage_Root &aHandle);
		%feature("autodoc", "1");
		Handle_Storage_Root(const Storage_Root *anItem);
		%feature("autodoc", "1");
		Handle_Storage_Root & operator=(const Handle_Storage_Root &aHandle);
		%feature("autodoc", "1");
		Handle_Storage_Root & operator=(const Storage_Root *anItem);
		%feature("autodoc", "1");
		static		Handle_Storage_Root DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Storage_Root {
	Storage_Root* GetObject() {
	return (Storage_Root*)$self->Access();
	}
};
%feature("shadow") Handle_Storage_Root::~Handle_Storage_Root %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Storage_Root {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Storage_DataMapNodeOfMapOfCallBack;
class Handle_Storage_DataMapNodeOfMapOfCallBack : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_Storage_DataMapNodeOfMapOfCallBack();
		%feature("autodoc", "1");
		Handle_Storage_DataMapNodeOfMapOfCallBack(const Handle_Storage_DataMapNodeOfMapOfCallBack &aHandle);
		%feature("autodoc", "1");
		Handle_Storage_DataMapNodeOfMapOfCallBack(const Storage_DataMapNodeOfMapOfCallBack *anItem);
		%feature("autodoc", "1");
		Handle_Storage_DataMapNodeOfMapOfCallBack & operator=(const Handle_Storage_DataMapNodeOfMapOfCallBack &aHandle);
		%feature("autodoc", "1");
		Handle_Storage_DataMapNodeOfMapOfCallBack & operator=(const Storage_DataMapNodeOfMapOfCallBack *anItem);
		%feature("autodoc", "1");
		static		Handle_Storage_DataMapNodeOfMapOfCallBack DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Storage_DataMapNodeOfMapOfCallBack {
	Storage_DataMapNodeOfMapOfCallBack* GetObject() {
	return (Storage_DataMapNodeOfMapOfCallBack*)$self->Access();
	}
};
%feature("shadow") Handle_Storage_DataMapNodeOfMapOfCallBack::~Handle_Storage_DataMapNodeOfMapOfCallBack %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Storage_DataMapNodeOfMapOfCallBack {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Storage_StreamWriteError;
class Handle_Storage_StreamWriteError : public Handle_Standard_Failure {
	public:
		%feature("autodoc", "1");
		Handle_Storage_StreamWriteError();
		%feature("autodoc", "1");
		Handle_Storage_StreamWriteError(const Handle_Storage_StreamWriteError &aHandle);
		%feature("autodoc", "1");
		Handle_Storage_StreamWriteError(const Storage_StreamWriteError *anItem);
		%feature("autodoc", "1");
		Handle_Storage_StreamWriteError & operator=(const Handle_Storage_StreamWriteError &aHandle);
		%feature("autodoc", "1");
		Handle_Storage_StreamWriteError & operator=(const Storage_StreamWriteError *anItem);
		%feature("autodoc", "1");
		static		Handle_Storage_StreamWriteError DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Storage_StreamWriteError {
	Storage_StreamWriteError* GetObject() {
	return (Storage_StreamWriteError*)$self->Access();
	}
};
%feature("shadow") Handle_Storage_StreamWriteError::~Handle_Storage_StreamWriteError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Storage_StreamWriteError {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Storage_Data;
class Handle_Storage_Data : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Storage_Data();
		%feature("autodoc", "1");
		Handle_Storage_Data(const Handle_Storage_Data &aHandle);
		%feature("autodoc", "1");
		Handle_Storage_Data(const Storage_Data *anItem);
		%feature("autodoc", "1");
		Handle_Storage_Data & operator=(const Handle_Storage_Data &aHandle);
		%feature("autodoc", "1");
		Handle_Storage_Data & operator=(const Storage_Data *anItem);
		%feature("autodoc", "1");
		static		Handle_Storage_Data DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Storage_Data {
	Storage_Data* GetObject() {
	return (Storage_Data*)$self->Access();
	}
};
%feature("shadow") Handle_Storage_Data::~Handle_Storage_Data %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Storage_Data {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Storage_HArrayOfSchema;
class Handle_Storage_HArrayOfSchema : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Storage_HArrayOfSchema();
		%feature("autodoc", "1");
		Handle_Storage_HArrayOfSchema(const Handle_Storage_HArrayOfSchema &aHandle);
		%feature("autodoc", "1");
		Handle_Storage_HArrayOfSchema(const Storage_HArrayOfSchema *anItem);
		%feature("autodoc", "1");
		Handle_Storage_HArrayOfSchema & operator=(const Handle_Storage_HArrayOfSchema &aHandle);
		%feature("autodoc", "1");
		Handle_Storage_HArrayOfSchema & operator=(const Storage_HArrayOfSchema *anItem);
		%feature("autodoc", "1");
		static		Handle_Storage_HArrayOfSchema DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Storage_HArrayOfSchema {
	Storage_HArrayOfSchema* GetObject() {
	return (Storage_HArrayOfSchema*)$self->Access();
	}
};
%feature("shadow") Handle_Storage_HArrayOfSchema::~Handle_Storage_HArrayOfSchema %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Storage_HArrayOfSchema {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Storage_TypeData;
class Handle_Storage_TypeData : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Storage_TypeData();
		%feature("autodoc", "1");
		Handle_Storage_TypeData(const Handle_Storage_TypeData &aHandle);
		%feature("autodoc", "1");
		Handle_Storage_TypeData(const Storage_TypeData *anItem);
		%feature("autodoc", "1");
		Handle_Storage_TypeData & operator=(const Handle_Storage_TypeData &aHandle);
		%feature("autodoc", "1");
		Handle_Storage_TypeData & operator=(const Storage_TypeData *anItem);
		%feature("autodoc", "1");
		static		Handle_Storage_TypeData DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Storage_TypeData {
	Storage_TypeData* GetObject() {
	return (Storage_TypeData*)$self->Access();
	}
};
%feature("shadow") Handle_Storage_TypeData::~Handle_Storage_TypeData %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Storage_TypeData {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Storage_Schema;
class Handle_Storage_Schema : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Storage_Schema();
		%feature("autodoc", "1");
		Handle_Storage_Schema(const Handle_Storage_Schema &aHandle);
		%feature("autodoc", "1");
		Handle_Storage_Schema(const Storage_Schema *anItem);
		%feature("autodoc", "1");
		Handle_Storage_Schema & operator=(const Handle_Storage_Schema &aHandle);
		%feature("autodoc", "1");
		Handle_Storage_Schema & operator=(const Storage_Schema *anItem);
		%feature("autodoc", "1");
		static		Handle_Storage_Schema DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Storage_Schema {
	Storage_Schema* GetObject() {
	return (Storage_Schema*)$self->Access();
	}
};
%feature("shadow") Handle_Storage_Schema::~Handle_Storage_Schema %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Storage_Schema {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Storage_RootData;
class Handle_Storage_RootData : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Storage_RootData();
		%feature("autodoc", "1");
		Handle_Storage_RootData(const Handle_Storage_RootData &aHandle);
		%feature("autodoc", "1");
		Handle_Storage_RootData(const Storage_RootData *anItem);
		%feature("autodoc", "1");
		Handle_Storage_RootData & operator=(const Handle_Storage_RootData &aHandle);
		%feature("autodoc", "1");
		Handle_Storage_RootData & operator=(const Storage_RootData *anItem);
		%feature("autodoc", "1");
		static		Handle_Storage_RootData DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Storage_RootData {
	Storage_RootData* GetObject() {
	return (Storage_RootData*)$self->Access();
	}
};
%feature("shadow") Handle_Storage_RootData::~Handle_Storage_RootData %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Storage_RootData {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Storage_StreamExtCharParityError;
class Handle_Storage_StreamExtCharParityError : public Handle_Storage_StreamReadError {
	public:
		%feature("autodoc", "1");
		Handle_Storage_StreamExtCharParityError();
		%feature("autodoc", "1");
		Handle_Storage_StreamExtCharParityError(const Handle_Storage_StreamExtCharParityError &aHandle);
		%feature("autodoc", "1");
		Handle_Storage_StreamExtCharParityError(const Storage_StreamExtCharParityError *anItem);
		%feature("autodoc", "1");
		Handle_Storage_StreamExtCharParityError & operator=(const Handle_Storage_StreamExtCharParityError &aHandle);
		%feature("autodoc", "1");
		Handle_Storage_StreamExtCharParityError & operator=(const Storage_StreamExtCharParityError *anItem);
		%feature("autodoc", "1");
		static		Handle_Storage_StreamExtCharParityError DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Storage_StreamExtCharParityError {
	Storage_StreamExtCharParityError* GetObject() {
	return (Storage_StreamExtCharParityError*)$self->Access();
	}
};
%feature("shadow") Handle_Storage_StreamExtCharParityError::~Handle_Storage_StreamExtCharParityError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Storage_StreamExtCharParityError {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Storage_SequenceNodeOfSeqOfRoot;
class Handle_Storage_SequenceNodeOfSeqOfRoot : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_Storage_SequenceNodeOfSeqOfRoot();
		%feature("autodoc", "1");
		Handle_Storage_SequenceNodeOfSeqOfRoot(const Handle_Storage_SequenceNodeOfSeqOfRoot &aHandle);
		%feature("autodoc", "1");
		Handle_Storage_SequenceNodeOfSeqOfRoot(const Storage_SequenceNodeOfSeqOfRoot *anItem);
		%feature("autodoc", "1");
		Handle_Storage_SequenceNodeOfSeqOfRoot & operator=(const Handle_Storage_SequenceNodeOfSeqOfRoot &aHandle);
		%feature("autodoc", "1");
		Handle_Storage_SequenceNodeOfSeqOfRoot & operator=(const Storage_SequenceNodeOfSeqOfRoot *anItem);
		%feature("autodoc", "1");
		static		Handle_Storage_SequenceNodeOfSeqOfRoot DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Storage_SequenceNodeOfSeqOfRoot {
	Storage_SequenceNodeOfSeqOfRoot* GetObject() {
	return (Storage_SequenceNodeOfSeqOfRoot*)$self->Access();
	}
};
%feature("shadow") Handle_Storage_SequenceNodeOfSeqOfRoot::~Handle_Storage_SequenceNodeOfSeqOfRoot %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Storage_SequenceNodeOfSeqOfRoot {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Storage_HArrayOfCallBack;
class Handle_Storage_HArrayOfCallBack : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Storage_HArrayOfCallBack();
		%feature("autodoc", "1");
		Handle_Storage_HArrayOfCallBack(const Handle_Storage_HArrayOfCallBack &aHandle);
		%feature("autodoc", "1");
		Handle_Storage_HArrayOfCallBack(const Storage_HArrayOfCallBack *anItem);
		%feature("autodoc", "1");
		Handle_Storage_HArrayOfCallBack & operator=(const Handle_Storage_HArrayOfCallBack &aHandle);
		%feature("autodoc", "1");
		Handle_Storage_HArrayOfCallBack & operator=(const Storage_HArrayOfCallBack *anItem);
		%feature("autodoc", "1");
		static		Handle_Storage_HArrayOfCallBack DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Storage_HArrayOfCallBack {
	Storage_HArrayOfCallBack* GetObject() {
	return (Storage_HArrayOfCallBack*)$self->Access();
	}
};
%feature("shadow") Handle_Storage_HArrayOfCallBack::~Handle_Storage_HArrayOfCallBack %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Storage_HArrayOfCallBack {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Storage_StreamModeError;
class Handle_Storage_StreamModeError : public Handle_Standard_Failure {
	public:
		%feature("autodoc", "1");
		Handle_Storage_StreamModeError();
		%feature("autodoc", "1");
		Handle_Storage_StreamModeError(const Handle_Storage_StreamModeError &aHandle);
		%feature("autodoc", "1");
		Handle_Storage_StreamModeError(const Storage_StreamModeError *anItem);
		%feature("autodoc", "1");
		Handle_Storage_StreamModeError & operator=(const Handle_Storage_StreamModeError &aHandle);
		%feature("autodoc", "1");
		Handle_Storage_StreamModeError & operator=(const Storage_StreamModeError *anItem);
		%feature("autodoc", "1");
		static		Handle_Storage_StreamModeError DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Storage_StreamModeError {
	Storage_StreamModeError* GetObject() {
	return (Storage_StreamModeError*)$self->Access();
	}
};
%feature("shadow") Handle_Storage_StreamModeError::~Handle_Storage_StreamModeError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Storage_StreamModeError {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Storage_HeaderData;
class Handle_Storage_HeaderData : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Storage_HeaderData();
		%feature("autodoc", "1");
		Handle_Storage_HeaderData(const Handle_Storage_HeaderData &aHandle);
		%feature("autodoc", "1");
		Handle_Storage_HeaderData(const Storage_HeaderData *anItem);
		%feature("autodoc", "1");
		Handle_Storage_HeaderData & operator=(const Handle_Storage_HeaderData &aHandle);
		%feature("autodoc", "1");
		Handle_Storage_HeaderData & operator=(const Storage_HeaderData *anItem);
		%feature("autodoc", "1");
		static		Handle_Storage_HeaderData DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Storage_HeaderData {
	Storage_HeaderData* GetObject() {
	return (Storage_HeaderData*)$self->Access();
	}
};
%feature("shadow") Handle_Storage_HeaderData::~Handle_Storage_HeaderData %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Storage_HeaderData {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Storage_CallBack;
class Handle_Storage_CallBack : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Storage_CallBack();
		%feature("autodoc", "1");
		Handle_Storage_CallBack(const Handle_Storage_CallBack &aHandle);
		%feature("autodoc", "1");
		Handle_Storage_CallBack(const Storage_CallBack *anItem);
		%feature("autodoc", "1");
		Handle_Storage_CallBack & operator=(const Handle_Storage_CallBack &aHandle);
		%feature("autodoc", "1");
		Handle_Storage_CallBack & operator=(const Storage_CallBack *anItem);
		%feature("autodoc", "1");
		static		Handle_Storage_CallBack DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Storage_CallBack {
	Storage_CallBack* GetObject() {
	return (Storage_CallBack*)$self->Access();
	}
};
%feature("shadow") Handle_Storage_CallBack::~Handle_Storage_CallBack %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Storage_CallBack {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Storage_DefaultCallBack;
class Handle_Storage_DefaultCallBack : public Handle_Storage_CallBack {
	public:
		%feature("autodoc", "1");
		Handle_Storage_DefaultCallBack();
		%feature("autodoc", "1");
		Handle_Storage_DefaultCallBack(const Handle_Storage_DefaultCallBack &aHandle);
		%feature("autodoc", "1");
		Handle_Storage_DefaultCallBack(const Storage_DefaultCallBack *anItem);
		%feature("autodoc", "1");
		Handle_Storage_DefaultCallBack & operator=(const Handle_Storage_DefaultCallBack &aHandle);
		%feature("autodoc", "1");
		Handle_Storage_DefaultCallBack & operator=(const Storage_DefaultCallBack *anItem);
		%feature("autodoc", "1");
		static		Handle_Storage_DefaultCallBack DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Storage_DefaultCallBack {
	Storage_DefaultCallBack* GetObject() {
	return (Storage_DefaultCallBack*)$self->Access();
	}
};
%feature("shadow") Handle_Storage_DefaultCallBack::~Handle_Storage_DefaultCallBack %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Storage_DefaultCallBack {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Storage_StreamUnknownTypeError;
class Handle_Storage_StreamUnknownTypeError : public Handle_Storage_StreamReadError {
	public:
		%feature("autodoc", "1");
		Handle_Storage_StreamUnknownTypeError();
		%feature("autodoc", "1");
		Handle_Storage_StreamUnknownTypeError(const Handle_Storage_StreamUnknownTypeError &aHandle);
		%feature("autodoc", "1");
		Handle_Storage_StreamUnknownTypeError(const Storage_StreamUnknownTypeError *anItem);
		%feature("autodoc", "1");
		Handle_Storage_StreamUnknownTypeError & operator=(const Handle_Storage_StreamUnknownTypeError &aHandle);
		%feature("autodoc", "1");
		Handle_Storage_StreamUnknownTypeError & operator=(const Storage_StreamUnknownTypeError *anItem);
		%feature("autodoc", "1");
		static		Handle_Storage_StreamUnknownTypeError DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Storage_StreamUnknownTypeError {
	Storage_StreamUnknownTypeError* GetObject() {
	return (Storage_StreamUnknownTypeError*)$self->Access();
	}
};
%feature("shadow") Handle_Storage_StreamUnknownTypeError::~Handle_Storage_StreamUnknownTypeError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Storage_StreamUnknownTypeError {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Storage_HSeqOfRoot;
class Handle_Storage_HSeqOfRoot : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Storage_HSeqOfRoot();
		%feature("autodoc", "1");
		Handle_Storage_HSeqOfRoot(const Handle_Storage_HSeqOfRoot &aHandle);
		%feature("autodoc", "1");
		Handle_Storage_HSeqOfRoot(const Storage_HSeqOfRoot *anItem);
		%feature("autodoc", "1");
		Handle_Storage_HSeqOfRoot & operator=(const Handle_Storage_HSeqOfRoot &aHandle);
		%feature("autodoc", "1");
		Handle_Storage_HSeqOfRoot & operator=(const Storage_HSeqOfRoot *anItem);
		%feature("autodoc", "1");
		static		Handle_Storage_HSeqOfRoot DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Storage_HSeqOfRoot {
	Storage_HSeqOfRoot* GetObject() {
	return (Storage_HSeqOfRoot*)$self->Access();
	}
};
%feature("shadow") Handle_Storage_HSeqOfRoot::~Handle_Storage_HSeqOfRoot %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Storage_HSeqOfRoot {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Storage_HArrayOfCallBack;
class Storage_HArrayOfCallBack : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Storage_HArrayOfCallBack(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		Storage_HArrayOfCallBack(const Standard_Integer Low, const Standard_Integer Up, const Handle_Storage_CallBack &V);
		%feature("autodoc", "1");
		void Init(const Handle_Storage_CallBack &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_Storage_CallBack &Value);
		%feature("autodoc", "1");
		const Handle_Storage_CallBack & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_Storage_CallBack & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const Storage_ArrayOfCallBack & Array1() const;
		%feature("autodoc", "1");
		Storage_ArrayOfCallBack & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Storage_HArrayOfCallBack {
	Handle_Storage_HArrayOfCallBack GetHandle() {
	return *(Handle_Storage_HArrayOfCallBack*) &$self;
	}
};
%extend Storage_HArrayOfCallBack {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Storage_HArrayOfCallBack::~Storage_HArrayOfCallBack %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Storage_HArrayOfCallBack {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Storage_SeqOfRoot;
class Storage_SeqOfRoot : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		Storage_SeqOfRoot();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const Storage_SeqOfRoot & Assign(const Storage_SeqOfRoot &Other);
		%feature("autodoc", "1");
		const Storage_SeqOfRoot & operator=(const Storage_SeqOfRoot &Other);
		%feature("autodoc", "1");
		void Append(const Handle_Storage_Root &T);
		%feature("autodoc", "1");
		void Append(Storage_SeqOfRoot & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_Storage_Root &T);
		%feature("autodoc", "1");
		void Prepend(Storage_SeqOfRoot & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_Storage_Root &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, Storage_SeqOfRoot & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_Storage_Root &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, Storage_SeqOfRoot & S);
		%feature("autodoc", "1");
		const Handle_Storage_Root & First() const;
		%feature("autodoc", "1");
		const Handle_Storage_Root & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, Storage_SeqOfRoot & S);
		%feature("autodoc", "1");
		const Handle_Storage_Root & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_Storage_Root & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_Storage_Root &I);
		%feature("autodoc", "1");
		Handle_Storage_Root & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_Storage_Root & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") Storage_SeqOfRoot::~Storage_SeqOfRoot %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Storage_SeqOfRoot {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Storage;
class Storage {
	public:
		%feature("autodoc", "1");
		Storage();
		%feature("autodoc", "1");
		static		TCollection_AsciiString Version();

};
%feature("shadow") Storage::~Storage %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Storage {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Storage_SequenceNodeOfSeqOfPersistent;
class Storage_SequenceNodeOfSeqOfPersistent : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Storage_SequenceNodeOfSeqOfPersistent(const Handle_Standard_Persistent &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_Standard_Persistent & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Storage_SequenceNodeOfSeqOfPersistent {
	Handle_Storage_SequenceNodeOfSeqOfPersistent GetHandle() {
	return *(Handle_Storage_SequenceNodeOfSeqOfPersistent*) &$self;
	}
};
%extend Storage_SequenceNodeOfSeqOfPersistent {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Storage_SequenceNodeOfSeqOfPersistent::~Storage_SequenceNodeOfSeqOfPersistent %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Storage_SequenceNodeOfSeqOfPersistent {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Storage_ArrayOfCallBack;
class Storage_ArrayOfCallBack {
	public:
		%feature("autodoc", "1");
		Storage_ArrayOfCallBack(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		Storage_ArrayOfCallBack(const Handle_Storage_CallBack &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Handle_Storage_CallBack &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const Storage_ArrayOfCallBack & Assign(const Storage_ArrayOfCallBack &Other);
		%feature("autodoc", "1");
		const Storage_ArrayOfCallBack & operator=(const Storage_ArrayOfCallBack &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_Storage_CallBack &Value);
		%feature("autodoc", "1");
		const Handle_Storage_CallBack & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_Storage_CallBack & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_Storage_CallBack & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_Storage_CallBack & operator()(const Standard_Integer Index);

};
%feature("shadow") Storage_ArrayOfCallBack::~Storage_ArrayOfCallBack %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Storage_ArrayOfCallBack {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Storage_HSeqOfCallBack;
class Storage_HSeqOfCallBack : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Storage_HSeqOfCallBack();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const Handle_Storage_CallBack &anItem);
		%feature("autodoc", "1");
		void Append(const Handle_Storage_HSeqOfCallBack &aSequence);
		%feature("autodoc", "1");
		void Prepend(const Handle_Storage_CallBack &anItem);
		%feature("autodoc", "1");
		void Prepend(const Handle_Storage_HSeqOfCallBack &aSequence);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_Storage_CallBack &anItem);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_Storage_HSeqOfCallBack &aSequence);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_Storage_CallBack &anItem);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_Storage_HSeqOfCallBack &aSequence);
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer anIndex, const Standard_Integer anOtherIndex);
		%feature("autodoc", "1");
		Handle_Storage_HSeqOfCallBack Split(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer anIndex, const Handle_Storage_CallBack &anItem);
		%feature("autodoc", "1");
		const Handle_Storage_CallBack & Value(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		Handle_Storage_CallBack & ChangeValue(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer fromIndex, const Standard_Integer toIndex);
		%feature("autodoc", "1");
		const Storage_SeqOfCallBack & Sequence() const;
		%feature("autodoc", "1");
		Storage_SeqOfCallBack & ChangeSequence();
		%feature("autodoc", "1");
		Handle_Storage_HSeqOfCallBack ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Storage_HSeqOfCallBack {
	Handle_Storage_HSeqOfCallBack GetHandle() {
	return *(Handle_Storage_HSeqOfCallBack*) &$self;
	}
};
%extend Storage_HSeqOfCallBack {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Storage_HSeqOfCallBack::~Storage_HSeqOfCallBack %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Storage_HSeqOfCallBack {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Storage_MapOfCallBack;
class Storage_MapOfCallBack : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		Storage_MapOfCallBack(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		Storage_MapOfCallBack & Assign(const Storage_MapOfCallBack &Other);
		%feature("autodoc", "1");
		Storage_MapOfCallBack & operator=(const Storage_MapOfCallBack &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TCollection_AsciiString &K, const Handle_Storage_TypedCallBack &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TCollection_AsciiString &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TCollection_AsciiString &K);
		%feature("autodoc", "1");
		const Handle_Storage_TypedCallBack & Find(const TCollection_AsciiString &K) const;
		%feature("autodoc", "1");
		const Handle_Storage_TypedCallBack & operator()(const TCollection_AsciiString &K) const;
		%feature("autodoc", "1");
		Handle_Storage_TypedCallBack & ChangeFind(const TCollection_AsciiString &K);
		%feature("autodoc", "1");
		Handle_Storage_TypedCallBack & operator()(const TCollection_AsciiString &K);
		%feature("autodoc", "1");
		Standard_Address Find1(const TCollection_AsciiString &K) const;
		%feature("autodoc", "1");
		Standard_Address ChangeFind1(const TCollection_AsciiString &K);

};
%feature("shadow") Storage_MapOfCallBack::~Storage_MapOfCallBack %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Storage_MapOfCallBack {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Storage_HSeqOfRoot;
class Storage_HSeqOfRoot : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Storage_HSeqOfRoot();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const Handle_Storage_Root &anItem);
		%feature("autodoc", "1");
		void Append(const Handle_Storage_HSeqOfRoot &aSequence);
		%feature("autodoc", "1");
		void Prepend(const Handle_Storage_Root &anItem);
		%feature("autodoc", "1");
		void Prepend(const Handle_Storage_HSeqOfRoot &aSequence);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_Storage_Root &anItem);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_Storage_HSeqOfRoot &aSequence);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_Storage_Root &anItem);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_Storage_HSeqOfRoot &aSequence);
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer anIndex, const Standard_Integer anOtherIndex);
		%feature("autodoc", "1");
		Handle_Storage_HSeqOfRoot Split(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer anIndex, const Handle_Storage_Root &anItem);
		%feature("autodoc", "1");
		const Handle_Storage_Root & Value(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		Handle_Storage_Root & ChangeValue(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer fromIndex, const Standard_Integer toIndex);
		%feature("autodoc", "1");
		const Storage_SeqOfRoot & Sequence() const;
		%feature("autodoc", "1");
		Storage_SeqOfRoot & ChangeSequence();
		%feature("autodoc", "1");
		Handle_Storage_HSeqOfRoot ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Storage_HSeqOfRoot {
	Handle_Storage_HSeqOfRoot GetHandle() {
	return *(Handle_Storage_HSeqOfRoot*) &$self;
	}
};
%extend Storage_HSeqOfRoot {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Storage_HSeqOfRoot::~Storage_HSeqOfRoot %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Storage_HSeqOfRoot {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Storage_Data;
class Storage_Data : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Storage_Data();
		%feature("autodoc", "1");
		Storage_Error ErrorStatus() const;
		%feature("autodoc", "1");
		void ClearErrorStatus();
		%feature("autodoc", "1");
		TCollection_AsciiString ErrorStatusExtension() const;
		%feature("autodoc", "1");
		TCollection_AsciiString CreationDate() const;
		%feature("autodoc", "1");
		TCollection_AsciiString StorageVersion() const;
		%feature("autodoc", "1");
		TCollection_AsciiString SchemaVersion() const;
		%feature("autodoc", "1");
		TCollection_AsciiString SchemaName() const;
		%feature("autodoc", "1");
		void SetApplicationVersion(const TCollection_AsciiString &aVersion);
		%feature("autodoc", "1");
		TCollection_AsciiString ApplicationVersion() const;
		%feature("autodoc", "1");
		void SetApplicationName(const TCollection_ExtendedString &aName);
		%feature("autodoc", "1");
		TCollection_ExtendedString ApplicationName() const;
		%feature("autodoc", "1");
		void SetDataType(const TCollection_ExtendedString &aType);
		%feature("autodoc", "1");
		TCollection_ExtendedString DataType() const;
		%feature("autodoc", "1");
		void AddToUserInfo(const TCollection_AsciiString &anInfo);
		%feature("autodoc", "1");
		const TColStd_SequenceOfAsciiString & UserInfo() const;
		%feature("autodoc", "1");
		void AddToComments(const TCollection_ExtendedString &aComment);
		%feature("autodoc", "1");
		const TColStd_SequenceOfExtendedString & Comments() const;
		%feature("autodoc", "1");
		Standard_Integer NumberOfObjects() const;
		%feature("autodoc", "1");
		Standard_Integer NumberOfRoots() const;
		%feature("autodoc", "1");
		void AddRoot(const Handle_Standard_Persistent &anObject) const;
		%feature("autodoc", "1");
		void AddRoot(const TCollection_AsciiString &aName, const Handle_Standard_Persistent &anObject) const;
		%feature("autodoc", "1");
		void RemoveRoot(const TCollection_AsciiString &aName);
		%feature("autodoc", "1");
		Handle_Storage_HSeqOfRoot Roots() const;
		%feature("autodoc", "1");
		Handle_Storage_Root Find(const TCollection_AsciiString &aName) const;
		%feature("autodoc", "1");
		Standard_Boolean IsRoot(const TCollection_AsciiString &aName) const;
		%feature("autodoc", "1");
		Standard_Integer NumberOfTypes() const;
		%feature("autodoc", "1");
		Standard_Boolean IsType(const TCollection_AsciiString &aName) const;
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfAsciiString Types() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Storage_Data {
	Handle_Storage_Data GetHandle() {
	return *(Handle_Storage_Data*) &$self;
	}
};
%extend Storage_Data {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Storage_Data::~Storage_Data %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Storage_Data {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Storage_StreamReadError;
class Storage_StreamReadError : public Standard_Failure {
	public:
		%feature("autodoc", "1");
		Storage_StreamReadError();
		%feature("autodoc", "1");
		Storage_StreamReadError(const char * AString);
		%feature("autodoc", "1");
		static		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		static		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		static		Handle_Storage_StreamReadError NewInstance(const char * aMessage="");
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Storage_StreamReadError {
	Handle_Storage_StreamReadError GetHandle() {
	return *(Handle_Storage_StreamReadError*) &$self;
	}
};
%extend Storage_StreamReadError {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Storage_StreamReadError::~Storage_StreamReadError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Storage_StreamReadError {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Storage_CallBack;
class Storage_CallBack : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		virtual		Handle_Standard_Persistent New() const;
		%feature("autodoc", "1");
		virtual		void Add(const Handle_Standard_Persistent &aPers, const Handle_Storage_Schema &aSchema) const;
		%feature("autodoc", "1");
		virtual		void Write(const Handle_Standard_Persistent &aPers, Storage_BaseDriver & aDriver, const Handle_Storage_Schema &aSchema) const;
		%feature("autodoc", "1");
		virtual		void Read(const Handle_Standard_Persistent &aPers, Storage_BaseDriver & aDriver, const Handle_Storage_Schema &aSchema) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Storage_CallBack {
	Handle_Storage_CallBack GetHandle() {
	return *(Handle_Storage_CallBack*) &$self;
	}
};
%extend Storage_CallBack {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Storage_CallBack::~Storage_CallBack %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Storage_CallBack {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Storage_DefaultCallBack;
class Storage_DefaultCallBack : public Storage_CallBack {
	public:
		%feature("autodoc", "1");
		Storage_DefaultCallBack();

};
%extend Storage_DefaultCallBack {
	Handle_Storage_DefaultCallBack GetHandle() {
	return *(Handle_Storage_DefaultCallBack*) &$self;
	}
};
%extend Storage_DefaultCallBack {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Storage_DefaultCallBack::~Storage_DefaultCallBack %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Storage_DefaultCallBack {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Storage_HArrayOfSchema;
class Storage_HArrayOfSchema : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Storage_HArrayOfSchema(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		Storage_HArrayOfSchema(const Standard_Integer Low, const Standard_Integer Up, const Handle_Storage_Schema &V);
		%feature("autodoc", "1");
		void Init(const Handle_Storage_Schema &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_Storage_Schema &Value);
		%feature("autodoc", "1");
		const Handle_Storage_Schema & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_Storage_Schema & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const Storage_ArrayOfSchema & Array1() const;
		%feature("autodoc", "1");
		Storage_ArrayOfSchema & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Storage_HArrayOfSchema {
	Handle_Storage_HArrayOfSchema GetHandle() {
	return *(Handle_Storage_HArrayOfSchema*) &$self;
	}
};
%extend Storage_HArrayOfSchema {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Storage_HArrayOfSchema::~Storage_HArrayOfSchema %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Storage_HArrayOfSchema {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Storage_HPArray;
class Storage_HPArray : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Storage_HPArray(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		Storage_HPArray(const Standard_Integer Low, const Standard_Integer Up, const Handle_Standard_Persistent &V);
		%feature("autodoc", "1");
		void Init(const Handle_Standard_Persistent &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_Standard_Persistent &Value);
		%feature("autodoc", "1");
		const Handle_Standard_Persistent & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_Standard_Persistent & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const Storage_PArray & Array1() const;
		%feature("autodoc", "1");
		Storage_PArray & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Storage_HPArray {
	Handle_Storage_HPArray GetHandle() {
	return *(Handle_Storage_HPArray*) &$self;
	}
};
%extend Storage_HPArray {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Storage_HPArray::~Storage_HPArray %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Storage_HPArray {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Storage_SeqOfCallBack;
class Storage_SeqOfCallBack : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		Storage_SeqOfCallBack();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const Storage_SeqOfCallBack & Assign(const Storage_SeqOfCallBack &Other);
		%feature("autodoc", "1");
		const Storage_SeqOfCallBack & operator=(const Storage_SeqOfCallBack &Other);
		%feature("autodoc", "1");
		void Append(const Handle_Storage_CallBack &T);
		%feature("autodoc", "1");
		void Append(Storage_SeqOfCallBack & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_Storage_CallBack &T);
		%feature("autodoc", "1");
		void Prepend(Storage_SeqOfCallBack & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_Storage_CallBack &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, Storage_SeqOfCallBack & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_Storage_CallBack &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, Storage_SeqOfCallBack & S);
		%feature("autodoc", "1");
		const Handle_Storage_CallBack & First() const;
		%feature("autodoc", "1");
		const Handle_Storage_CallBack & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, Storage_SeqOfCallBack & S);
		%feature("autodoc", "1");
		const Handle_Storage_CallBack & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_Storage_CallBack & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_Storage_CallBack &I);
		%feature("autodoc", "1");
		Handle_Storage_CallBack & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_Storage_CallBack & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") Storage_SeqOfCallBack::~Storage_SeqOfCallBack %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Storage_SeqOfCallBack {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Storage_TypedCallBack;
class Storage_TypedCallBack : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Storage_TypedCallBack();
		%feature("autodoc", "1");
		Storage_TypedCallBack(const TCollection_AsciiString &aTypeName, const Handle_Storage_CallBack &aCallBack);
		%feature("autodoc", "1");
		void SetType(const TCollection_AsciiString &aType);
		%feature("autodoc", "1");
		TCollection_AsciiString Type() const;
		%feature("autodoc", "1");
		void SetCallBack(const Handle_Storage_CallBack &aCallBack);
		%feature("autodoc", "1");
		Handle_Storage_CallBack CallBack() const;
		%feature("autodoc", "1");
		void SetIndex(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		Standard_Integer Index() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Storage_TypedCallBack {
	Handle_Storage_TypedCallBack GetHandle() {
	return *(Handle_Storage_TypedCallBack*) &$self;
	}
};
%extend Storage_TypedCallBack {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Storage_TypedCallBack::~Storage_TypedCallBack %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Storage_TypedCallBack {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Storage_StreamExtCharParityError;
class Storage_StreamExtCharParityError : public Storage_StreamReadError {
	public:
		%feature("autodoc", "1");
		Storage_StreamExtCharParityError();
		%feature("autodoc", "1");
		Storage_StreamExtCharParityError(const char * AString);
		%feature("autodoc", "1");
		static		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		static		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		static		Handle_Storage_StreamExtCharParityError NewInstance(const char * aMessage="");
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Storage_StreamExtCharParityError {
	Handle_Storage_StreamExtCharParityError GetHandle() {
	return *(Handle_Storage_StreamExtCharParityError*) &$self;
	}
};
%extend Storage_StreamExtCharParityError {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Storage_StreamExtCharParityError::~Storage_StreamExtCharParityError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Storage_StreamExtCharParityError {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Storage_MapPSDHasher;
class Storage_MapPSDHasher {
	public:
		%feature("autodoc", "1");
		Storage_MapPSDHasher();
		%feature("autodoc", "1");
		static		Standard_Integer HashCode(const Handle_Standard_Persistent &K, const Standard_Integer Upper);
		%feature("autodoc", "1");
		static		Standard_Boolean IsEqual(const Handle_Standard_Persistent &K1, const Handle_Standard_Persistent &K2);

};
%feature("shadow") Storage_MapPSDHasher::~Storage_MapPSDHasher %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Storage_MapPSDHasher {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Storage_InternalData;
class Storage_InternalData : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Storage_InternalData();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Storage_InternalData {
	Handle_Storage_InternalData GetHandle() {
	return *(Handle_Storage_InternalData*) &$self;
	}
};
%extend Storage_InternalData {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Storage_InternalData::~Storage_InternalData %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Storage_InternalData {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Storage_DataMapIteratorOfMapOfCallBack;
class Storage_DataMapIteratorOfMapOfCallBack : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		Storage_DataMapIteratorOfMapOfCallBack();
		%feature("autodoc", "1");
		Storage_DataMapIteratorOfMapOfCallBack(const Storage_MapOfCallBack &aMap);
		%feature("autodoc", "1");
		void Initialize(const Storage_MapOfCallBack &aMap);
		%feature("autodoc", "1");
		const TCollection_AsciiString & Key() const;
		%feature("autodoc", "1");
		const Handle_Storage_TypedCallBack & Value() const;

};
%feature("shadow") Storage_DataMapIteratorOfMapOfCallBack::~Storage_DataMapIteratorOfMapOfCallBack %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Storage_DataMapIteratorOfMapOfCallBack {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Storage_Schema;
class Storage_Schema : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Storage_Schema();
		%feature("autodoc", "1");
		void SetVersion(const TCollection_AsciiString &aVersion);
		%feature("autodoc", "1");
		TCollection_AsciiString Version() const;
		%feature("autodoc", "1");
		void SetName(const TCollection_AsciiString &aSchemaName);
		%feature("autodoc", "1");
		TCollection_AsciiString Name() const;
		%feature("autodoc", "1");
		void Write(Storage_BaseDriver & s, const Handle_Storage_Data &aData) const;
		%feature("autodoc", "1");
		Handle_Storage_Data Read(Storage_BaseDriver & s) const;
		%feature("autodoc", "1");
		Handle_Storage_HeaderData ReadHeaderSection(Storage_BaseDriver & s) const;
		%feature("autodoc", "1");
		Handle_Storage_TypeData ReadTypeSection(Storage_BaseDriver & s) const;
		%feature("autodoc", "1");
		Handle_Storage_RootData ReadRootSection(Storage_BaseDriver & s) const;
		%feature("autodoc", "1");
		virtual		const TColStd_SequenceOfAsciiString & SchemaKnownTypes() const;
		%feature("autodoc", "1");
		Standard_Boolean HasUnknownType(Storage_BaseDriver & aDriver, TColStd_SequenceOfAsciiString & theUnknownTypes) const;
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfAsciiString GetAllSchemaKnownTypes() const;
		%feature("autodoc", "1");
		void SetNestedSchemas(const Handle_Storage_HArrayOfSchema &theSchemas);
		%feature("autodoc", "1");
		void ClearNestedSchemas();
		%feature("autodoc", "1");
		Handle_Storage_HArrayOfSchema NestedSchemas() const;
		%feature("autodoc", "1");
		static		TCollection_AsciiString ICreationDate();
		%feature("autodoc", "1");
		static		Standard_Boolean CheckTypeMigration(const TCollection_AsciiString &theTypeName, TCollection_AsciiString & theNewName);
		%feature("autodoc", "1");
		void AddReadUnknownTypeCallBack(const TCollection_AsciiString &aTypeName, const Handle_Storage_CallBack &aCallBack);
		%feature("autodoc", "1");
		void RemoveReadUnknownTypeCallBack(const TCollection_AsciiString &aTypeName);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfAsciiString InstalledCallBackList() const;
		%feature("autodoc", "1");
		void ClearCallBackList();
		%feature("autodoc", "1");
		void UseDefaultCallBack();
		%feature("autodoc", "1");
		void DontUseDefaultCallBack();
		%feature("autodoc", "1");
		Standard_Boolean IsUsingDefaultCallBack() const;
		%feature("autodoc", "1");
		void SetDefaultCallBack(const Handle_Storage_CallBack &f);
		%feature("autodoc", "1");
		void ResetDefaultCallBack();
		%feature("autodoc", "1");
		Handle_Storage_CallBack DefaultCallBack() const;
		%feature("autodoc", "1");
		virtual		Handle_Storage_CallBack CallBackSelection(const TCollection_AsciiString &tName) const;
		%feature("autodoc", "1");
		virtual		Handle_Storage_CallBack AddTypeSelection(const Handle_Standard_Persistent &sp) const;
		%feature("autodoc", "1");
		void WritePersistentObjectHeader(const Handle_Standard_Persistent &sp, Storage_BaseDriver & f);
		%feature("autodoc", "1");
		void ReadPersistentObjectHeader(Storage_BaseDriver & f);
		%feature("autodoc", "1");
		void WritePersistentReference(const Handle_Standard_Persistent &sp, Storage_BaseDriver & f);
		%feature("autodoc", "1");
		void ReadPersistentReference(Handle_Standard_Persistent & sp, Storage_BaseDriver & s);
		%feature("autodoc", "1");
		Standard_Boolean AddPersistent(const Handle_Standard_Persistent &sp, const char * tName) const;
		%feature("autodoc", "1");
		Standard_Boolean PersistentToAdd(const Handle_Standard_Persistent &sp) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Storage_Schema {
	Handle_Storage_Schema GetHandle() {
	return *(Handle_Storage_Schema*) &$self;
	}
};
%extend Storage_Schema {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Storage_Schema::~Storage_Schema %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Storage_Schema {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Storage_RootData;
class Storage_RootData : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Storage_RootData();
		%feature("autodoc", "1");
		Standard_Integer NumberOfRoots() const;
		%feature("autodoc", "1");
		void AddRoot(const Handle_Storage_Root &aRoot);
		%feature("autodoc", "1");
		Handle_Storage_HSeqOfRoot Roots() const;
		%feature("autodoc", "1");
		Handle_Storage_Root Find(const TCollection_AsciiString &aName) const;
		%feature("autodoc", "1");
		Standard_Boolean IsRoot(const TCollection_AsciiString &aName) const;
		%feature("autodoc", "1");
		void RemoveRoot(const TCollection_AsciiString &aName);
		%feature("autodoc", "1");
		Storage_Error ErrorStatus() const;
		%feature("autodoc", "1");
		TCollection_AsciiString ErrorStatusExtension() const;
		%feature("autodoc", "1");
		void ClearErrorStatus();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Storage_RootData {
	Handle_Storage_RootData GetHandle() {
	return *(Handle_Storage_RootData*) &$self;
	}
};
%extend Storage_RootData {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Storage_RootData::~Storage_RootData %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Storage_RootData {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Storage_ArrayOfSchema;
class Storage_ArrayOfSchema {
	public:
		%feature("autodoc", "1");
		Storage_ArrayOfSchema(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		Storage_ArrayOfSchema(const Handle_Storage_Schema &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Handle_Storage_Schema &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const Storage_ArrayOfSchema & Assign(const Storage_ArrayOfSchema &Other);
		%feature("autodoc", "1");
		const Storage_ArrayOfSchema & operator=(const Storage_ArrayOfSchema &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_Storage_Schema &Value);
		%feature("autodoc", "1");
		const Handle_Storage_Schema & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_Storage_Schema & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_Storage_Schema & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_Storage_Schema & operator()(const Standard_Integer Index);

};
%feature("shadow") Storage_ArrayOfSchema::~Storage_ArrayOfSchema %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Storage_ArrayOfSchema {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Storage_DataMapIteratorOfMapOfPers;
class Storage_DataMapIteratorOfMapOfPers : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		Storage_DataMapIteratorOfMapOfPers();
		%feature("autodoc", "1");
		Storage_DataMapIteratorOfMapOfPers(const Storage_MapOfPers &aMap);
		%feature("autodoc", "1");
		void Initialize(const Storage_MapOfPers &aMap);
		%feature("autodoc", "1");
		const TCollection_AsciiString & Key() const;
		%feature("autodoc", "1");
		const Handle_Storage_Root & Value() const;

};
%feature("shadow") Storage_DataMapIteratorOfMapOfPers::~Storage_DataMapIteratorOfMapOfPers %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Storage_DataMapIteratorOfMapOfPers {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Storage_DataMapNodeOfMapOfCallBack;
class Storage_DataMapNodeOfMapOfCallBack : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Storage_DataMapNodeOfMapOfCallBack(const TCollection_AsciiString &K, const Handle_Storage_TypedCallBack &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TCollection_AsciiString & Key() const;
		%feature("autodoc", "1");
		Handle_Storage_TypedCallBack & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Storage_DataMapNodeOfMapOfCallBack {
	Handle_Storage_DataMapNodeOfMapOfCallBack GetHandle() {
	return *(Handle_Storage_DataMapNodeOfMapOfCallBack*) &$self;
	}
};
%extend Storage_DataMapNodeOfMapOfCallBack {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Storage_DataMapNodeOfMapOfCallBack::~Storage_DataMapNodeOfMapOfCallBack %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Storage_DataMapNodeOfMapOfCallBack {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Storage_stCONSTclCOM;
class Storage_stCONSTclCOM {
	public:
		%feature("autodoc", "1");
		Storage_stCONSTclCOM();

};
%feature("shadow") Storage_stCONSTclCOM::~Storage_stCONSTclCOM %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Storage_stCONSTclCOM {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Storage_StreamUnknownTypeError;
class Storage_StreamUnknownTypeError : public Storage_StreamReadError {
	public:
		%feature("autodoc", "1");
		Storage_StreamUnknownTypeError();
		%feature("autodoc", "1");
		Storage_StreamUnknownTypeError(const char * AString);
		%feature("autodoc", "1");
		static		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		static		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		static		Handle_Storage_StreamUnknownTypeError NewInstance(const char * aMessage="");
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Storage_StreamUnknownTypeError {
	Handle_Storage_StreamUnknownTypeError GetHandle() {
	return *(Handle_Storage_StreamUnknownTypeError*) &$self;
	}
};
%extend Storage_StreamUnknownTypeError {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Storage_StreamUnknownTypeError::~Storage_StreamUnknownTypeError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Storage_StreamUnknownTypeError {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Storage_BaseDriver;
class Storage_BaseDriver {
	public:
		%feature("autodoc", "1");
		void Delete();
		%feature("autodoc", "1");
		virtual		Storage_Error Open(const TCollection_AsciiString &aName, const Storage_OpenMode aMode);
		%feature("autodoc", "1");
		TCollection_AsciiString Name() const;
		%feature("autodoc", "1");
		Storage_OpenMode OpenMode() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsEnd();
		%feature("autodoc", "1");
		virtual		Storage_Position Tell();
		%feature("autodoc", "1");
		virtual		Storage_Error BeginWriteInfoSection();
		%feature("autodoc", "1");
		virtual		void WriteInfo(const Standard_Integer nbObj, const TCollection_AsciiString &dbVersion, const TCollection_AsciiString &date, const TCollection_AsciiString &schemaName, const TCollection_AsciiString &schemaVersion, const TCollection_ExtendedString &appName, const TCollection_AsciiString &appVersion, const TCollection_ExtendedString &objectType, const TColStd_SequenceOfAsciiString &userInfo);
		%feature("autodoc", "1");
		virtual		Storage_Error EndWriteInfoSection();
		%feature("autodoc", "1");
		virtual		Storage_Error BeginReadInfoSection();
		%feature("autodoc","ReadInfo() -> Standard_Integer");

		virtual		void ReadInfo(Standard_Integer &OutValue, TCollection_AsciiString & dbVersion, TCollection_AsciiString & date, TCollection_AsciiString & schemaName, TCollection_AsciiString & schemaVersion, TCollection_ExtendedString & appName, TCollection_AsciiString & appVersion, TCollection_ExtendedString & objectType, TColStd_SequenceOfAsciiString & userInfo);
		%feature("autodoc", "1");
		virtual		Storage_Error EndReadInfoSection();
		%feature("autodoc", "1");
		virtual		Storage_Error BeginWriteCommentSection();
		%feature("autodoc", "1");
		virtual		void WriteComment(const TColStd_SequenceOfExtendedString &userComments);
		%feature("autodoc", "1");
		virtual		Storage_Error EndWriteCommentSection();
		%feature("autodoc", "1");
		virtual		Storage_Error BeginReadCommentSection();
		%feature("autodoc", "1");
		virtual		void ReadComment(TColStd_SequenceOfExtendedString & userComments);
		%feature("autodoc", "1");
		virtual		Storage_Error EndReadCommentSection();
		%feature("autodoc", "1");
		virtual		Storage_Error BeginWriteTypeSection();
		%feature("autodoc", "1");
		virtual		void SetTypeSectionSize(const Standard_Integer aSize);
		%feature("autodoc", "1");
		virtual		void WriteTypeInformations(const Standard_Integer typeNum, const TCollection_AsciiString &typeName);
		%feature("autodoc", "1");
		virtual		Storage_Error EndWriteTypeSection();
		%feature("autodoc", "1");
		virtual		Storage_Error BeginReadTypeSection();
		%feature("autodoc", "1");
		virtual		Standard_Integer TypeSectionSize();
		%feature("autodoc","ReadTypeInformations() -> Standard_Integer");

		virtual		void ReadTypeInformations(Standard_Integer &OutValue, TCollection_AsciiString & typeName);
		%feature("autodoc", "1");
		virtual		Storage_Error EndReadTypeSection();
		%feature("autodoc", "1");
		virtual		Storage_Error BeginWriteRootSection();
		%feature("autodoc", "1");
		virtual		void SetRootSectionSize(const Standard_Integer aSize);
		%feature("autodoc", "1");
		virtual		void WriteRoot(const TCollection_AsciiString &rootName, const Standard_Integer aRef, const TCollection_AsciiString &aType);
		%feature("autodoc", "1");
		virtual		Storage_Error EndWriteRootSection();
		%feature("autodoc", "1");
		virtual		Storage_Error BeginReadRootSection();
		%feature("autodoc", "1");
		virtual		Standard_Integer RootSectionSize();
		%feature("autodoc","ReadRoot() -> Standard_Integer");

		virtual		void ReadRoot(TCollection_AsciiString & rootName, Standard_Integer &OutValue, TCollection_AsciiString & aType);
		%feature("autodoc", "1");
		virtual		Storage_Error EndReadRootSection();
		%feature("autodoc", "1");
		virtual		Storage_Error BeginWriteRefSection();
		%feature("autodoc", "1");
		virtual		void SetRefSectionSize(const Standard_Integer aSize);
		%feature("autodoc", "1");
		virtual		void WriteReferenceType(const Standard_Integer reference, const Standard_Integer typeNum);
		%feature("autodoc", "1");
		virtual		Storage_Error EndWriteRefSection();
		%feature("autodoc", "1");
		virtual		Storage_Error BeginReadRefSection();
		%feature("autodoc", "1");
		virtual		Standard_Integer RefSectionSize();
		%feature("autodoc","ReadReferenceType() -> [Standard_Integer, Standard_Integer]");

		virtual		void ReadReferenceType(Standard_Integer &OutValue, Standard_Integer &OutValue);
		%feature("autodoc", "1");
		virtual		Storage_Error EndReadRefSection();
		%feature("autodoc", "1");
		virtual		Storage_Error BeginWriteDataSection();
		%feature("autodoc", "1");
		virtual		void WritePersistentObjectHeader(const Standard_Integer aRef, const Standard_Integer aType);
		%feature("autodoc", "1");
		virtual		void BeginWritePersistentObjectData();
		%feature("autodoc", "1");
		virtual		void BeginWriteObjectData();
		%feature("autodoc", "1");
		virtual		void EndWriteObjectData();
		%feature("autodoc", "1");
		virtual		void EndWritePersistentObjectData();
		%feature("autodoc", "1");
		virtual		Storage_Error EndWriteDataSection();
		%feature("autodoc", "1");
		virtual		Storage_Error BeginReadDataSection();
		%feature("autodoc","ReadPersistentObjectHeader() -> [Standard_Integer, Standard_Integer]");

		virtual		void ReadPersistentObjectHeader(Standard_Integer &OutValue, Standard_Integer &OutValue);
		%feature("autodoc", "1");
		virtual		void BeginReadPersistentObjectData();
		%feature("autodoc", "1");
		virtual		void BeginReadObjectData();
		%feature("autodoc", "1");
		virtual		void EndReadObjectData();
		%feature("autodoc", "1");
		virtual		void EndReadPersistentObjectData();
		%feature("autodoc", "1");
		virtual		Storage_Error EndReadDataSection();
		%feature("autodoc", "1");
		virtual		void SkipObject();
		%feature("autodoc", "1");
		virtual		Storage_BaseDriver & PutReference(const Standard_Integer aValue);
		%feature("autodoc", "1");
		virtual		Storage_BaseDriver & PutCharacter(const Standard_Character aValue);
		%feature("autodoc", "1");
		virtual		Storage_BaseDriver & PutExtCharacter(const Standard_ExtCharacter aValue);
		%feature("autodoc", "1");
		virtual		Storage_BaseDriver & PutInteger(const Standard_Integer aValue);
		%feature("autodoc", "1");
		virtual		Storage_BaseDriver & PutBoolean(const Standard_Boolean aValue);
		%feature("autodoc", "1");
		virtual		Storage_BaseDriver & PutReal(const Standard_Real aValue);
		%feature("autodoc", "1");
		virtual		Storage_BaseDriver & PutShortReal(const Standard_ShortReal aValue);
		%feature("autodoc","GetReference() -> Standard_Integer");

		virtual		Storage_BaseDriver & GetReference(Standard_Integer &OutValue);
		%feature("autodoc", "1");
		virtual		Storage_BaseDriver & GetCharacter(Standard_Character & aValue);
		%feature("autodoc", "1");
		virtual		Storage_BaseDriver & GetExtCharacter(Standard_ExtCharacter & aValue);
		%feature("autodoc","GetInteger() -> Standard_Integer");

		virtual		Storage_BaseDriver & GetInteger(Standard_Integer &OutValue);
		%feature("autodoc", "1");
		virtual		Storage_BaseDriver & GetBoolean(Standard_Boolean & aValue);
		%feature("autodoc","GetReal() -> Standard_Real");

		virtual		Storage_BaseDriver & GetReal(Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Storage_BaseDriver & GetShortReal(Standard_ShortReal & aValue);
		%feature("autodoc", "1");
		virtual		Storage_Error Close();

};
%feature("shadow") Storage_BaseDriver::~Storage_BaseDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Storage_BaseDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Storage_SequenceNodeOfSeqOfCallBack;
class Storage_SequenceNodeOfSeqOfCallBack : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Storage_SequenceNodeOfSeqOfCallBack(const Handle_Storage_CallBack &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_Storage_CallBack & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Storage_SequenceNodeOfSeqOfCallBack {
	Handle_Storage_SequenceNodeOfSeqOfCallBack GetHandle() {
	return *(Handle_Storage_SequenceNodeOfSeqOfCallBack*) &$self;
	}
};
%extend Storage_SequenceNodeOfSeqOfCallBack {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Storage_SequenceNodeOfSeqOfCallBack::~Storage_SequenceNodeOfSeqOfCallBack %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Storage_SequenceNodeOfSeqOfCallBack {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Storage_SeqOfPersistent;
class Storage_SeqOfPersistent : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		Storage_SeqOfPersistent();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const Storage_SeqOfPersistent & Assign(const Storage_SeqOfPersistent &Other);
		%feature("autodoc", "1");
		const Storage_SeqOfPersistent & operator=(const Storage_SeqOfPersistent &Other);
		%feature("autodoc", "1");
		void Append(const Handle_Standard_Persistent &T);
		%feature("autodoc", "1");
		void Append(Storage_SeqOfPersistent & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_Standard_Persistent &T);
		%feature("autodoc", "1");
		void Prepend(Storage_SeqOfPersistent & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_Standard_Persistent &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, Storage_SeqOfPersistent & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_Standard_Persistent &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, Storage_SeqOfPersistent & S);
		%feature("autodoc", "1");
		const Handle_Standard_Persistent & First() const;
		%feature("autodoc", "1");
		const Handle_Standard_Persistent & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, Storage_SeqOfPersistent & S);
		%feature("autodoc", "1");
		const Handle_Standard_Persistent & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_Standard_Persistent & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_Standard_Persistent &I);
		%feature("autodoc", "1");
		Handle_Standard_Persistent & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_Standard_Persistent & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") Storage_SeqOfPersistent::~Storage_SeqOfPersistent %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Storage_SeqOfPersistent {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Storage_HSeqOfPersistent;
class Storage_HSeqOfPersistent : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Storage_HSeqOfPersistent();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const Handle_Standard_Persistent &anItem);
		%feature("autodoc", "1");
		void Append(const Handle_Storage_HSeqOfPersistent &aSequence);
		%feature("autodoc", "1");
		void Prepend(const Handle_Standard_Persistent &anItem);
		%feature("autodoc", "1");
		void Prepend(const Handle_Storage_HSeqOfPersistent &aSequence);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_Standard_Persistent &anItem);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_Storage_HSeqOfPersistent &aSequence);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_Standard_Persistent &anItem);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_Storage_HSeqOfPersistent &aSequence);
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer anIndex, const Standard_Integer anOtherIndex);
		%feature("autodoc", "1");
		Handle_Storage_HSeqOfPersistent Split(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer anIndex, const Handle_Standard_Persistent &anItem);
		%feature("autodoc", "1");
		const Handle_Standard_Persistent & Value(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		Handle_Standard_Persistent & ChangeValue(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer fromIndex, const Standard_Integer toIndex);
		%feature("autodoc", "1");
		const Storage_SeqOfPersistent & Sequence() const;
		%feature("autodoc", "1");
		Storage_SeqOfPersistent & ChangeSequence();
		%feature("autodoc", "1");
		Handle_Storage_HSeqOfPersistent ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Storage_HSeqOfPersistent {
	Handle_Storage_HSeqOfPersistent GetHandle() {
	return *(Handle_Storage_HSeqOfPersistent*) &$self;
	}
};
%extend Storage_HSeqOfPersistent {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Storage_HSeqOfPersistent::~Storage_HSeqOfPersistent %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Storage_HSeqOfPersistent {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Storage_PArray;
class Storage_PArray {
	public:
		%feature("autodoc", "1");
		Storage_PArray(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		Storage_PArray(const Handle_Standard_Persistent &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Handle_Standard_Persistent &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const Storage_PArray & Assign(const Storage_PArray &Other);
		%feature("autodoc", "1");
		const Storage_PArray & operator=(const Storage_PArray &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_Standard_Persistent &Value);
		%feature("autodoc", "1");
		const Handle_Standard_Persistent & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_Standard_Persistent & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_Standard_Persistent & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_Standard_Persistent & operator()(const Standard_Integer Index);

};
%feature("shadow") Storage_PArray::~Storage_PArray %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Storage_PArray {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Storage_StreamModeError;
class Storage_StreamModeError : public Standard_Failure {
	public:
		%feature("autodoc", "1");
		Storage_StreamModeError();
		%feature("autodoc", "1");
		Storage_StreamModeError(const char * AString);
		%feature("autodoc", "1");
		static		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		static		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		static		Handle_Storage_StreamModeError NewInstance(const char * aMessage="");
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Storage_StreamModeError {
	Handle_Storage_StreamModeError GetHandle() {
	return *(Handle_Storage_StreamModeError*) &$self;
	}
};
%extend Storage_StreamModeError {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Storage_StreamModeError::~Storage_StreamModeError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Storage_StreamModeError {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Storage_IndexedDataMapNodeOfPType;
class Storage_IndexedDataMapNodeOfPType : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Storage_IndexedDataMapNodeOfPType(const TCollection_AsciiString &K1, const Standard_Integer K2, const Standard_Integer &I, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
		%feature("autodoc", "1");
		TCollection_AsciiString & Key1() const;
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
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetValue() {
				return (Standard_Integer) $self->Value();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetValue(Standard_Integer value ) {
				$self->Value()=value;
				}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Storage_IndexedDataMapNodeOfPType {
	Handle_Storage_IndexedDataMapNodeOfPType GetHandle() {
	return *(Handle_Storage_IndexedDataMapNodeOfPType*) &$self;
	}
};
%extend Storage_IndexedDataMapNodeOfPType {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Storage_IndexedDataMapNodeOfPType::~Storage_IndexedDataMapNodeOfPType %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Storage_IndexedDataMapNodeOfPType {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Storage_TypeData;
class Storage_TypeData : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Storage_TypeData();
		%feature("autodoc", "1");
		Standard_Integer NumberOfTypes() const;
		%feature("autodoc", "1");
		Standard_Boolean IsType(const TCollection_AsciiString &aName) const;
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfAsciiString Types() const;
		%feature("autodoc", "1");
		Storage_Error ErrorStatus() const;
		%feature("autodoc", "1");
		TCollection_AsciiString ErrorStatusExtension() const;
		%feature("autodoc", "1");
		void ClearErrorStatus();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Storage_TypeData {
	Handle_Storage_TypeData GetHandle() {
	return *(Handle_Storage_TypeData*) &$self;
	}
};
%extend Storage_TypeData {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Storage_TypeData::~Storage_TypeData %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Storage_TypeData {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Storage_StreamWriteError;
class Storage_StreamWriteError : public Standard_Failure {
	public:
		%feature("autodoc", "1");
		Storage_StreamWriteError();
		%feature("autodoc", "1");
		Storage_StreamWriteError(const char * AString);
		%feature("autodoc", "1");
		static		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		static		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		static		Handle_Storage_StreamWriteError NewInstance(const char * aMessage="");
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Storage_StreamWriteError {
	Handle_Storage_StreamWriteError GetHandle() {
	return *(Handle_Storage_StreamWriteError*) &$self;
	}
};
%extend Storage_StreamWriteError {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Storage_StreamWriteError::~Storage_StreamWriteError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Storage_StreamWriteError {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Storage_PType;
class Storage_PType : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		Storage_PType(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		Storage_PType & Assign(const Storage_PType &Other);
		%feature("autodoc", "1");
		Storage_PType & operator=(const Storage_PType &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer Add(const TCollection_AsciiString &K, const Standard_Integer &I);
		%feature("autodoc", "1");
		void Substitute(const Standard_Integer I, const TCollection_AsciiString &K, const Standard_Integer &T);
		%feature("autodoc", "1");
		void RemoveLast();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const TCollection_AsciiString &K) const;
		%feature("autodoc", "1");
		const TCollection_AsciiString & FindKey(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const Standard_Integer & FindFromIndex(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const Standard_Integer & operator()(const Standard_Integer I) const;
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetChangeFromIndex(const Standard_Integer I) {
				return (Standard_Integer) $self->ChangeFromIndex(I);
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetChangeFromIndex(Standard_Integer value ,const Standard_Integer I) {
				$self->ChangeFromIndex(I)=value;
				}
		};
		%feature("autodoc", "1");
		Standard_Integer & operator()(const Standard_Integer I);
		%feature("autodoc", "1");
		Standard_Integer FindIndex(const TCollection_AsciiString &K) const;
		%feature("autodoc", "1");
		const Standard_Integer & FindFromKey(const TCollection_AsciiString &K) const;
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetChangeFromKey(const TCollection_AsciiString &K) {
				return (Standard_Integer) $self->ChangeFromKey(K);
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetChangeFromKey(Standard_Integer value ,const TCollection_AsciiString &K) {
				$self->ChangeFromKey(K)=value;
				}
		};
		%feature("autodoc", "1");
		Standard_Address FindFromKey1(const TCollection_AsciiString &K) const;
		%feature("autodoc", "1");
		Standard_Address ChangeFromKey1(const TCollection_AsciiString &K);

};
%feature("shadow") Storage_PType::~Storage_PType %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Storage_PType {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Storage_Root;
class Storage_Root : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Storage_Root();
		%feature("autodoc", "1");
		Storage_Root(const TCollection_AsciiString &aName, const Handle_Standard_Persistent &anObject);
		%feature("autodoc", "1");
		void SetName(const TCollection_AsciiString &aName);
		%feature("autodoc", "1");
		TCollection_AsciiString Name() const;
		%feature("autodoc", "1");
		void SetObject(const Handle_Standard_Persistent &anObject);
		%feature("autodoc", "1");
		Handle_Standard_Persistent Object() const;
		%feature("autodoc", "1");
		TCollection_AsciiString Type() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Storage_Root {
	Handle_Storage_Root GetHandle() {
	return *(Handle_Storage_Root*) &$self;
	}
};
%extend Storage_Root {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Storage_Root::~Storage_Root %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Storage_Root {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Storage_HeaderData;
class Storage_HeaderData : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Storage_HeaderData();
		%feature("autodoc", "1");
		TCollection_AsciiString CreationDate() const;
		%feature("autodoc", "1");
		TCollection_AsciiString StorageVersion() const;
		%feature("autodoc", "1");
		TCollection_AsciiString SchemaVersion() const;
		%feature("autodoc", "1");
		TCollection_AsciiString SchemaName() const;
		%feature("autodoc", "1");
		void SetApplicationVersion(const TCollection_AsciiString &aVersion);
		%feature("autodoc", "1");
		TCollection_AsciiString ApplicationVersion() const;
		%feature("autodoc", "1");
		void SetApplicationName(const TCollection_ExtendedString &aName);
		%feature("autodoc", "1");
		TCollection_ExtendedString ApplicationName() const;
		%feature("autodoc", "1");
		void SetDataType(const TCollection_ExtendedString &aType);
		%feature("autodoc", "1");
		TCollection_ExtendedString DataType() const;
		%feature("autodoc", "1");
		void AddToUserInfo(const TCollection_AsciiString &theUserInfo);
		%feature("autodoc", "1");
		const TColStd_SequenceOfAsciiString & UserInfo() const;
		%feature("autodoc", "1");
		void AddToComments(const TCollection_ExtendedString &aComment);
		%feature("autodoc", "1");
		const TColStd_SequenceOfExtendedString & Comments() const;
		%feature("autodoc", "1");
		Standard_Integer NumberOfObjects() const;
		%feature("autodoc", "1");
		Storage_Error ErrorStatus() const;
		%feature("autodoc", "1");
		TCollection_AsciiString ErrorStatusExtension() const;
		%feature("autodoc", "1");
		void ClearErrorStatus();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Storage_HeaderData {
	Handle_Storage_HeaderData GetHandle() {
	return *(Handle_Storage_HeaderData*) &$self;
	}
};
%extend Storage_HeaderData {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Storage_HeaderData::~Storage_HeaderData %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Storage_HeaderData {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Storage_SequenceNodeOfSeqOfRoot;
class Storage_SequenceNodeOfSeqOfRoot : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Storage_SequenceNodeOfSeqOfRoot(const Handle_Storage_Root &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_Storage_Root & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Storage_SequenceNodeOfSeqOfRoot {
	Handle_Storage_SequenceNodeOfSeqOfRoot GetHandle() {
	return *(Handle_Storage_SequenceNodeOfSeqOfRoot*) &$self;
	}
};
%extend Storage_SequenceNodeOfSeqOfRoot {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Storage_SequenceNodeOfSeqOfRoot::~Storage_SequenceNodeOfSeqOfRoot %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Storage_SequenceNodeOfSeqOfRoot {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Storage_StreamFormatError;
class Storage_StreamFormatError : public Standard_Failure {
	public:
		%feature("autodoc", "1");
		Storage_StreamFormatError();
		%feature("autodoc", "1");
		Storage_StreamFormatError(const char * AString);
		%feature("autodoc", "1");
		static		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		static		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		static		Handle_Storage_StreamFormatError NewInstance(const char * aMessage="");
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Storage_StreamFormatError {
	Handle_Storage_StreamFormatError GetHandle() {
	return *(Handle_Storage_StreamFormatError*) &$self;
	}
};
%extend Storage_StreamFormatError {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Storage_StreamFormatError::~Storage_StreamFormatError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Storage_StreamFormatError {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Storage_MapOfPers;
class Storage_MapOfPers : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		Storage_MapOfPers(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		Storage_MapOfPers & Assign(const Storage_MapOfPers &Other);
		%feature("autodoc", "1");
		Storage_MapOfPers & operator=(const Storage_MapOfPers &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TCollection_AsciiString &K, const Handle_Storage_Root &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TCollection_AsciiString &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TCollection_AsciiString &K);
		%feature("autodoc", "1");
		const Handle_Storage_Root & Find(const TCollection_AsciiString &K) const;
		%feature("autodoc", "1");
		const Handle_Storage_Root & operator()(const TCollection_AsciiString &K) const;
		%feature("autodoc", "1");
		Handle_Storage_Root & ChangeFind(const TCollection_AsciiString &K);
		%feature("autodoc", "1");
		Handle_Storage_Root & operator()(const TCollection_AsciiString &K);
		%feature("autodoc", "1");
		Standard_Address Find1(const TCollection_AsciiString &K) const;
		%feature("autodoc", "1");
		Standard_Address ChangeFind1(const TCollection_AsciiString &K);

};
%feature("shadow") Storage_MapOfPers::~Storage_MapOfPers %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Storage_MapOfPers {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Storage_DataMapNodeOfMapOfPers;
class Storage_DataMapNodeOfMapOfPers : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Storage_DataMapNodeOfMapOfPers(const TCollection_AsciiString &K, const Handle_Storage_Root &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TCollection_AsciiString & Key() const;
		%feature("autodoc", "1");
		Handle_Storage_Root & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Storage_DataMapNodeOfMapOfPers {
	Handle_Storage_DataMapNodeOfMapOfPers GetHandle() {
	return *(Handle_Storage_DataMapNodeOfMapOfPers*) &$self;
	}
};
%extend Storage_DataMapNodeOfMapOfPers {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Storage_DataMapNodeOfMapOfPers::~Storage_DataMapNodeOfMapOfPers %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Storage_DataMapNodeOfMapOfPers {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Storage_StreamTypeMismatchError;
class Storage_StreamTypeMismatchError : public Storage_StreamReadError {
	public:
		%feature("autodoc", "1");
		Storage_StreamTypeMismatchError();
		%feature("autodoc", "1");
		Storage_StreamTypeMismatchError(const char * AString);
		%feature("autodoc", "1");
		static		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		static		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		static		Handle_Storage_StreamTypeMismatchError NewInstance(const char * aMessage="");
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Storage_StreamTypeMismatchError {
	Handle_Storage_StreamTypeMismatchError GetHandle() {
	return *(Handle_Storage_StreamTypeMismatchError*) &$self;
	}
};
%extend Storage_StreamTypeMismatchError {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Storage_StreamTypeMismatchError::~Storage_StreamTypeMismatchError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Storage_StreamTypeMismatchError {
	void _kill_pointed() {
		delete $self;
	}
};
