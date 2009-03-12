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
along with Foobar.  If not, see <http://www.gnu.org/licenses/>.

*/
%module Storage

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
		Handle_Storage_StreamReadError const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Storage_StreamReadError {
	Storage_StreamReadError* GetObject() {
	return (Storage_StreamReadError*)$self->Access();
	}
};
%extend Handle_Storage_StreamReadError {
	~Handle_Storage_StreamReadError() {
	printf("Call custom destructor for instance of Handle_Storage_StreamReadError\n");
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
		Handle_Storage_StreamExtCharParityError const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Storage_StreamExtCharParityError {
	Storage_StreamExtCharParityError* GetObject() {
	return (Storage_StreamExtCharParityError*)$self->Access();
	}
};
%extend Handle_Storage_StreamExtCharParityError {
	~Handle_Storage_StreamExtCharParityError() {
	printf("Call custom destructor for instance of Handle_Storage_StreamExtCharParityError\n");
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
		Handle_Storage_StreamTypeMismatchError const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Storage_StreamTypeMismatchError {
	Storage_StreamTypeMismatchError* GetObject() {
	return (Storage_StreamTypeMismatchError*)$self->Access();
	}
};
%extend Handle_Storage_StreamTypeMismatchError {
	~Handle_Storage_StreamTypeMismatchError() {
	printf("Call custom destructor for instance of Handle_Storage_StreamTypeMismatchError\n");
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
		Handle_Storage_HArrayOfCallBack const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Storage_HArrayOfCallBack {
	Storage_HArrayOfCallBack* GetObject() {
	return (Storage_HArrayOfCallBack*)$self->Access();
	}
};
%extend Handle_Storage_HArrayOfCallBack {
	~Handle_Storage_HArrayOfCallBack() {
	printf("Call custom destructor for instance of Handle_Storage_HArrayOfCallBack\n");
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
		Handle_Storage_InternalData const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Storage_InternalData {
	Storage_InternalData* GetObject() {
	return (Storage_InternalData*)$self->Access();
	}
};
%extend Handle_Storage_InternalData {
	~Handle_Storage_InternalData() {
	printf("Call custom destructor for instance of Handle_Storage_InternalData\n");
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
		Handle_Storage_StreamWriteError const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Storage_StreamWriteError {
	Storage_StreamWriteError* GetObject() {
	return (Storage_StreamWriteError*)$self->Access();
	}
};
%extend Handle_Storage_StreamWriteError {
	~Handle_Storage_StreamWriteError() {
	printf("Call custom destructor for instance of Handle_Storage_StreamWriteError\n");
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
		Handle_Storage_DataMapNodeOfMapOfPers const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Storage_DataMapNodeOfMapOfPers {
	Storage_DataMapNodeOfMapOfPers* GetObject() {
	return (Storage_DataMapNodeOfMapOfPers*)$self->Access();
	}
};
%extend Handle_Storage_DataMapNodeOfMapOfPers {
	~Handle_Storage_DataMapNodeOfMapOfPers() {
	printf("Call custom destructor for instance of Handle_Storage_DataMapNodeOfMapOfPers\n");
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
		Handle_Storage_SequenceNodeOfSeqOfPersistent const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Storage_SequenceNodeOfSeqOfPersistent {
	Storage_SequenceNodeOfSeqOfPersistent* GetObject() {
	return (Storage_SequenceNodeOfSeqOfPersistent*)$self->Access();
	}
};
%extend Handle_Storage_SequenceNodeOfSeqOfPersistent {
	~Handle_Storage_SequenceNodeOfSeqOfPersistent() {
	printf("Call custom destructor for instance of Handle_Storage_SequenceNodeOfSeqOfPersistent\n");
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
		Handle_Storage_StreamModeError const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Storage_StreamModeError {
	Storage_StreamModeError* GetObject() {
	return (Storage_StreamModeError*)$self->Access();
	}
};
%extend Handle_Storage_StreamModeError {
	~Handle_Storage_StreamModeError() {
	printf("Call custom destructor for instance of Handle_Storage_StreamModeError\n");
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
		Handle_Storage_HSeqOfPersistent const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Storage_HSeqOfPersistent {
	Storage_HSeqOfPersistent* GetObject() {
	return (Storage_HSeqOfPersistent*)$self->Access();
	}
};
%extend Handle_Storage_HSeqOfPersistent {
	~Handle_Storage_HSeqOfPersistent() {
	printf("Call custom destructor for instance of Handle_Storage_HSeqOfPersistent\n");
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
		Handle_Storage_HPArray const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Storage_HPArray {
	Storage_HPArray* GetObject() {
	return (Storage_HPArray*)$self->Access();
	}
};
%extend Handle_Storage_HPArray {
	~Handle_Storage_HPArray() {
	printf("Call custom destructor for instance of Handle_Storage_HPArray\n");
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
		Handle_Storage_StreamFormatError const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Storage_StreamFormatError {
	Storage_StreamFormatError* GetObject() {
	return (Storage_StreamFormatError*)$self->Access();
	}
};
%extend Handle_Storage_StreamFormatError {
	~Handle_Storage_StreamFormatError() {
	printf("Call custom destructor for instance of Handle_Storage_StreamFormatError\n");
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
		Handle_Storage_TypedCallBack const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Storage_TypedCallBack {
	Storage_TypedCallBack* GetObject() {
	return (Storage_TypedCallBack*)$self->Access();
	}
};
%extend Handle_Storage_TypedCallBack {
	~Handle_Storage_TypedCallBack() {
	printf("Call custom destructor for instance of Handle_Storage_TypedCallBack\n");
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
		Handle_Storage_SequenceNodeOfSeqOfCallBack const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Storage_SequenceNodeOfSeqOfCallBack {
	Storage_SequenceNodeOfSeqOfCallBack* GetObject() {
	return (Storage_SequenceNodeOfSeqOfCallBack*)$self->Access();
	}
};
%extend Handle_Storage_SequenceNodeOfSeqOfCallBack {
	~Handle_Storage_SequenceNodeOfSeqOfCallBack() {
	printf("Call custom destructor for instance of Handle_Storage_SequenceNodeOfSeqOfCallBack\n");
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
		Handle_Storage_Root const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Storage_Root {
	Storage_Root* GetObject() {
	return (Storage_Root*)$self->Access();
	}
};
%extend Handle_Storage_Root {
	~Handle_Storage_Root() {
	printf("Call custom destructor for instance of Handle_Storage_Root\n");
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
		Handle_Storage_HSeqOfCallBack const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Storage_HSeqOfCallBack {
	Storage_HSeqOfCallBack* GetObject() {
	return (Storage_HSeqOfCallBack*)$self->Access();
	}
};
%extend Handle_Storage_HSeqOfCallBack {
	~Handle_Storage_HSeqOfCallBack() {
	printf("Call custom destructor for instance of Handle_Storage_HSeqOfCallBack\n");
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
		Handle_Storage_Schema const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Storage_Schema {
	Storage_Schema* GetObject() {
	return (Storage_Schema*)$self->Access();
	}
};
%extend Handle_Storage_Schema {
	~Handle_Storage_Schema() {
	printf("Call custom destructor for instance of Handle_Storage_Schema\n");
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
		Handle_Storage_Data const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Storage_Data {
	Storage_Data* GetObject() {
	return (Storage_Data*)$self->Access();
	}
};
%extend Handle_Storage_Data {
	~Handle_Storage_Data() {
	printf("Call custom destructor for instance of Handle_Storage_Data\n");
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
		Handle_Storage_HArrayOfSchema const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Storage_HArrayOfSchema {
	Storage_HArrayOfSchema* GetObject() {
	return (Storage_HArrayOfSchema*)$self->Access();
	}
};
%extend Handle_Storage_HArrayOfSchema {
	~Handle_Storage_HArrayOfSchema() {
	printf("Call custom destructor for instance of Handle_Storage_HArrayOfSchema\n");
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
		Handle_Storage_DataMapNodeOfMapOfCallBack const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Storage_DataMapNodeOfMapOfCallBack {
	Storage_DataMapNodeOfMapOfCallBack* GetObject() {
	return (Storage_DataMapNodeOfMapOfCallBack*)$self->Access();
	}
};
%extend Handle_Storage_DataMapNodeOfMapOfCallBack {
	~Handle_Storage_DataMapNodeOfMapOfCallBack() {
	printf("Call custom destructor for instance of Handle_Storage_DataMapNodeOfMapOfCallBack\n");
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
		Handle_Storage_RootData const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Storage_RootData {
	Storage_RootData* GetObject() {
	return (Storage_RootData*)$self->Access();
	}
};
%extend Handle_Storage_RootData {
	~Handle_Storage_RootData() {
	printf("Call custom destructor for instance of Handle_Storage_RootData\n");
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
		Handle_Storage_IndexedDataMapNodeOfPType const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Storage_IndexedDataMapNodeOfPType {
	Storage_IndexedDataMapNodeOfPType* GetObject() {
	return (Storage_IndexedDataMapNodeOfPType*)$self->Access();
	}
};
%extend Handle_Storage_IndexedDataMapNodeOfPType {
	~Handle_Storage_IndexedDataMapNodeOfPType() {
	printf("Call custom destructor for instance of Handle_Storage_IndexedDataMapNodeOfPType\n");
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
		Handle_Storage_SequenceNodeOfSeqOfRoot const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Storage_SequenceNodeOfSeqOfRoot {
	Storage_SequenceNodeOfSeqOfRoot* GetObject() {
	return (Storage_SequenceNodeOfSeqOfRoot*)$self->Access();
	}
};
%extend Handle_Storage_SequenceNodeOfSeqOfRoot {
	~Handle_Storage_SequenceNodeOfSeqOfRoot() {
	printf("Call custom destructor for instance of Handle_Storage_SequenceNodeOfSeqOfRoot\n");
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
		Handle_Storage_TypeData const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Storage_TypeData {
	Storage_TypeData* GetObject() {
	return (Storage_TypeData*)$self->Access();
	}
};
%extend Handle_Storage_TypeData {
	~Handle_Storage_TypeData() {
	printf("Call custom destructor for instance of Handle_Storage_TypeData\n");
	}
};

%nodefaultctor Handle_Storage_StdMapNodeOfMapOfAsciiString;
class Handle_Storage_StdMapNodeOfMapOfAsciiString : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_Storage_StdMapNodeOfMapOfAsciiString();
		%feature("autodoc", "1");
		Handle_Storage_StdMapNodeOfMapOfAsciiString(const Handle_Storage_StdMapNodeOfMapOfAsciiString &aHandle);
		%feature("autodoc", "1");
		Handle_Storage_StdMapNodeOfMapOfAsciiString(const Storage_StdMapNodeOfMapOfAsciiString *anItem);
		%feature("autodoc", "1");
		Handle_Storage_StdMapNodeOfMapOfAsciiString const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Storage_StdMapNodeOfMapOfAsciiString {
	Storage_StdMapNodeOfMapOfAsciiString* GetObject() {
	return (Storage_StdMapNodeOfMapOfAsciiString*)$self->Access();
	}
};
%extend Handle_Storage_StdMapNodeOfMapOfAsciiString {
	~Handle_Storage_StdMapNodeOfMapOfAsciiString() {
	printf("Call custom destructor for instance of Handle_Storage_StdMapNodeOfMapOfAsciiString\n");
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
		Handle_Storage_HeaderData const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Storage_HeaderData {
	Storage_HeaderData* GetObject() {
	return (Storage_HeaderData*)$self->Access();
	}
};
%extend Handle_Storage_HeaderData {
	~Handle_Storage_HeaderData() {
	printf("Call custom destructor for instance of Handle_Storage_HeaderData\n");
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
		Handle_Storage_CallBack const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Storage_CallBack {
	Storage_CallBack* GetObject() {
	return (Storage_CallBack*)$self->Access();
	}
};
%extend Handle_Storage_CallBack {
	~Handle_Storage_CallBack() {
	printf("Call custom destructor for instance of Handle_Storage_CallBack\n");
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
		Handle_Storage_DefaultCallBack const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Storage_DefaultCallBack {
	Storage_DefaultCallBack* GetObject() {
	return (Storage_DefaultCallBack*)$self->Access();
	}
};
%extend Handle_Storage_DefaultCallBack {
	~Handle_Storage_DefaultCallBack() {
	printf("Call custom destructor for instance of Handle_Storage_DefaultCallBack\n");
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
		Handle_Storage_StreamUnknownTypeError const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Storage_StreamUnknownTypeError {
	Storage_StreamUnknownTypeError* GetObject() {
	return (Storage_StreamUnknownTypeError*)$self->Access();
	}
};
%extend Handle_Storage_StreamUnknownTypeError {
	~Handle_Storage_StreamUnknownTypeError() {
	printf("Call custom destructor for instance of Handle_Storage_StreamUnknownTypeError\n");
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
		Handle_Storage_HSeqOfRoot const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Storage_HSeqOfRoot {
	Storage_HSeqOfRoot* GetObject() {
	return (Storage_HSeqOfRoot*)$self->Access();
	}
};
%extend Handle_Storage_HSeqOfRoot {
	~Handle_Storage_HSeqOfRoot() {
	printf("Call custom destructor for instance of Handle_Storage_HSeqOfRoot\n");
	}
};

%nodefaultctor Storage_MapIteratorOfMapOfAsciiString;
class Storage_MapIteratorOfMapOfAsciiString : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		~Storage_MapIteratorOfMapOfAsciiString();
		%feature("autodoc", "1");
		Storage_MapIteratorOfMapOfAsciiString();
		%feature("autodoc", "1");
		Storage_MapIteratorOfMapOfAsciiString(const Storage_MapOfAsciiString &aMap);
		%feature("autodoc", "1");
		void Initialize(const Storage_MapOfAsciiString &aMap);
		%feature("autodoc", "1");
		const TCollection_AsciiString & Key() const;

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
	~Storage_Root() {
	printf("Call custom destructor for instance of Storage_Root\n");
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
	~Storage_HArrayOfCallBack() {
	printf("Call custom destructor for instance of Storage_HArrayOfCallBack\n");
	}
};

%nodefaultctor Storage;
class Storage {
	public:
		%feature("autodoc", "1");
		~Storage();
		%feature("autodoc", "1");
		Storage();
		%feature("autodoc", "1");
		TCollection_AsciiString Version();

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
%extend Storage_ArrayOfCallBack {
	~Storage_ArrayOfCallBack() {
	printf("Call custom destructor for instance of Storage_ArrayOfCallBack\n");
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
	~Storage_RootData() {
	printf("Call custom destructor for instance of Storage_RootData\n");
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
	~Storage_HSeqOfCallBack() {
	printf("Call custom destructor for instance of Storage_HSeqOfCallBack\n");
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

};
%extend Storage_MapOfCallBack {
	~Storage_MapOfCallBack() {
	printf("Call custom destructor for instance of Storage_MapOfCallBack\n");
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
	~Storage_InternalData() {
	printf("Call custom destructor for instance of Storage_InternalData\n");
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
	~Storage_Data() {
	printf("Call custom destructor for instance of Storage_Data\n");
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
		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		Handle_Storage_StreamReadError NewInstance(const char * aMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Storage_StreamReadError {
	Handle_Storage_StreamReadError GetHandle() {
	return *(Handle_Storage_StreamReadError*) &$self;
	}
};
%extend Storage_StreamReadError {
	~Storage_StreamReadError() {
	printf("Call custom destructor for instance of Storage_StreamReadError\n");
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
	~Storage_CallBack() {
	printf("Call custom destructor for instance of Storage_CallBack\n");
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
	~Storage_DefaultCallBack() {
	printf("Call custom destructor for instance of Storage_DefaultCallBack\n");
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
	~Storage_HArrayOfSchema() {
	printf("Call custom destructor for instance of Storage_HArrayOfSchema\n");
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
%extend Storage_SeqOfCallBack {
	~Storage_SeqOfCallBack() {
	printf("Call custom destructor for instance of Storage_SeqOfCallBack\n");
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
	~Storage_DataMapNodeOfMapOfPers() {
	printf("Call custom destructor for instance of Storage_DataMapNodeOfMapOfPers\n");
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
	~Storage_TypedCallBack() {
	printf("Call custom destructor for instance of Storage_TypedCallBack\n");
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
		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		Handle_Storage_StreamExtCharParityError NewInstance(const char * aMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Storage_StreamExtCharParityError {
	Handle_Storage_StreamExtCharParityError GetHandle() {
	return *(Handle_Storage_StreamExtCharParityError*) &$self;
	}
};
%extend Storage_StreamExtCharParityError {
	~Storage_StreamExtCharParityError() {
	printf("Call custom destructor for instance of Storage_StreamExtCharParityError\n");
	}
};

%nodefaultctor Storage_IndexedDataMapNodeOfPType;
class Storage_IndexedDataMapNodeOfPType : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Storage_IndexedDataMapNodeOfPType(const TCollection_AsciiString &K1, const Standard_Integer K2, const Standard_Integer &I, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
		%feature("autodoc", "1");
		TCollection_AsciiString & Key1() const;
		%feature("autodoc", "1");
		Standard_Integer & Key2() const;
		%feature("autodoc", "1");
		TCollection_MapNodePtr & Next2() const;
		%feature("autodoc", "1");
		Standard_Integer & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Storage_IndexedDataMapNodeOfPType {
	Handle_Storage_IndexedDataMapNodeOfPType GetHandle() {
	return *(Handle_Storage_IndexedDataMapNodeOfPType*) &$self;
	}
};
%extend Storage_IndexedDataMapNodeOfPType {
	~Storage_IndexedDataMapNodeOfPType() {
	printf("Call custom destructor for instance of Storage_IndexedDataMapNodeOfPType\n");
	}
};

%nodefaultctor Storage_MapOfAsciiString;
class Storage_MapOfAsciiString : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		Storage_MapOfAsciiString(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		Storage_MapOfAsciiString & Assign(const Storage_MapOfAsciiString &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~Storage_MapOfAsciiString();
		%feature("autodoc", "1");
		Standard_Boolean Add(const TCollection_AsciiString &aKey);
		%feature("autodoc", "1");
		Standard_Boolean Contains(const TCollection_AsciiString &aKey) const;
		%feature("autodoc", "1");
		Standard_Boolean Remove(const TCollection_AsciiString &aKey);

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
	~Storage_HPArray() {
	printf("Call custom destructor for instance of Storage_HPArray\n");
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
%extend Storage_DataMapIteratorOfMapOfCallBack {
	~Storage_DataMapIteratorOfMapOfCallBack() {
	printf("Call custom destructor for instance of Storage_DataMapIteratorOfMapOfCallBack\n");
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

};
%extend Storage_MapOfPers {
	~Storage_MapOfPers() {
	printf("Call custom destructor for instance of Storage_MapOfPers\n");
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
		TCollection_AsciiString ICreationDate();
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
	~Storage_Schema() {
	printf("Call custom destructor for instance of Storage_Schema\n");
	}
};

%nodefaultctor Storage_stCONSTclCOM;
class Storage_stCONSTclCOM {
	public:
		%feature("autodoc", "1");
		~Storage_stCONSTclCOM();
		%feature("autodoc", "1");
		Storage_stCONSTclCOM();

};

%nodefaultctor Storage_StreamWriteError;
class Storage_StreamWriteError : public Standard_Failure {
	public:
		%feature("autodoc", "1");
		Storage_StreamWriteError();
		%feature("autodoc", "1");
		Storage_StreamWriteError(const char * AString);
		%feature("autodoc", "1");
		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		Handle_Storage_StreamWriteError NewInstance(const char * aMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Storage_StreamWriteError {
	Handle_Storage_StreamWriteError GetHandle() {
	return *(Handle_Storage_StreamWriteError*) &$self;
	}
};
%extend Storage_StreamWriteError {
	~Storage_StreamWriteError() {
	printf("Call custom destructor for instance of Storage_StreamWriteError\n");
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
%extend Storage_ArrayOfSchema {
	~Storage_ArrayOfSchema() {
	printf("Call custom destructor for instance of Storage_ArrayOfSchema\n");
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
%extend Storage_SeqOfRoot {
	~Storage_SeqOfRoot() {
	printf("Call custom destructor for instance of Storage_SeqOfRoot\n");
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
%extend Storage_DataMapIteratorOfMapOfPers {
	~Storage_DataMapIteratorOfMapOfPers() {
	printf("Call custom destructor for instance of Storage_DataMapIteratorOfMapOfPers\n");
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
	~Storage_DataMapNodeOfMapOfCallBack() {
	printf("Call custom destructor for instance of Storage_DataMapNodeOfMapOfCallBack\n");
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
		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		Handle_Storage_StreamTypeMismatchError NewInstance(const char * aMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Storage_StreamTypeMismatchError {
	Handle_Storage_StreamTypeMismatchError GetHandle() {
	return *(Handle_Storage_StreamTypeMismatchError*) &$self;
	}
};
%extend Storage_StreamTypeMismatchError {
	~Storage_StreamTypeMismatchError() {
	printf("Call custom destructor for instance of Storage_StreamTypeMismatchError\n");
	}
};

%nodefaultctor Storage_MapPSDHasher;
class Storage_MapPSDHasher {
	public:
		%feature("autodoc", "1");
		~Storage_MapPSDHasher();
		%feature("autodoc", "1");
		Storage_MapPSDHasher();
		%feature("autodoc", "1");
		Standard_Integer HashCode(const Handle_Standard_Persistent &K, const Standard_Integer Upper);
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const Handle_Standard_Persistent &K1, const Handle_Standard_Persistent &K2);

};

%nodefaultctor Storage_StreamUnknownTypeError;
class Storage_StreamUnknownTypeError : public Storage_StreamReadError {
	public:
		%feature("autodoc", "1");
		Storage_StreamUnknownTypeError();
		%feature("autodoc", "1");
		Storage_StreamUnknownTypeError(const char * AString);
		%feature("autodoc", "1");
		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		Handle_Storage_StreamUnknownTypeError NewInstance(const char * aMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Storage_StreamUnknownTypeError {
	Handle_Storage_StreamUnknownTypeError GetHandle() {
	return *(Handle_Storage_StreamUnknownTypeError*) &$self;
	}
};
%extend Storage_StreamUnknownTypeError {
	~Storage_StreamUnknownTypeError() {
	printf("Call custom destructor for instance of Storage_StreamUnknownTypeError\n");
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
	~Storage_HSeqOfPersistent() {
	printf("Call custom destructor for instance of Storage_HSeqOfPersistent\n");
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
		%feature("autodoc", "1");
		virtual		void ReadInfo(Standard_Integer & nbObj, TCollection_AsciiString & dbVersion, TCollection_AsciiString & date, TCollection_AsciiString & schemaName, TCollection_AsciiString & schemaVersion, TCollection_ExtendedString & appName, TCollection_AsciiString & appVersion, TCollection_ExtendedString & objectType, TColStd_SequenceOfAsciiString & userInfo);
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
		%feature("autodoc", "1");
		virtual		void ReadTypeInformations(Standard_Integer & typeNum, TCollection_AsciiString & typeName);
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
		%feature("autodoc", "1");
		virtual		void ReadRoot(TCollection_AsciiString & rootName, Standard_Integer & aRef, TCollection_AsciiString & aType);
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
		%feature("autodoc", "1");
		virtual		void ReadReferenceType(Standard_Integer & reference, Standard_Integer & typeNum);
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
		%feature("autodoc", "1");
		virtual		void ReadPersistentObjectHeader(Standard_Integer & aRef, Standard_Integer & aType);
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
		%feature("autodoc", "1");
		virtual		Storage_BaseDriver & GetReference(Standard_Integer & aValue);
		%feature("autodoc", "1");
		virtual		Storage_BaseDriver & GetCharacter(Standard_Character & aValue);
		%feature("autodoc", "1");
		virtual		Storage_BaseDriver & GetExtCharacter(Standard_ExtCharacter & aValue);
		%feature("autodoc", "1");
		virtual		Storage_BaseDriver & GetInteger(Standard_Integer & aValue);
		%feature("autodoc", "1");
		virtual		Storage_BaseDriver & GetBoolean(Standard_Boolean & aValue);
		%feature("autodoc", "1");
		virtual		Storage_BaseDriver & GetReal(Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Storage_BaseDriver & GetShortReal(Standard_ShortReal & aValue);
		%feature("autodoc", "1");
		virtual		Storage_Error Close();

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
	~Storage_SequenceNodeOfSeqOfCallBack() {
	printf("Call custom destructor for instance of Storage_SequenceNodeOfSeqOfCallBack\n");
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
	~Storage_HSeqOfRoot() {
	printf("Call custom destructor for instance of Storage_HSeqOfRoot\n");
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
	~Storage_SequenceNodeOfSeqOfRoot() {
	printf("Call custom destructor for instance of Storage_SequenceNodeOfSeqOfRoot\n");
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
%extend Storage_SeqOfPersistent {
	~Storage_SeqOfPersistent() {
	printf("Call custom destructor for instance of Storage_SeqOfPersistent\n");
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
%extend Storage_PArray {
	~Storage_PArray() {
	printf("Call custom destructor for instance of Storage_PArray\n");
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
		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		Handle_Storage_StreamModeError NewInstance(const char * aMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Storage_StreamModeError {
	Handle_Storage_StreamModeError GetHandle() {
	return *(Handle_Storage_StreamModeError*) &$self;
	}
};
%extend Storage_StreamModeError {
	~Storage_StreamModeError() {
	printf("Call custom destructor for instance of Storage_StreamModeError\n");
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
	~Storage_SequenceNodeOfSeqOfPersistent() {
	printf("Call custom destructor for instance of Storage_SequenceNodeOfSeqOfPersistent\n");
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
	~Storage_TypeData() {
	printf("Call custom destructor for instance of Storage_TypeData\n");
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
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~Storage_PType();
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
		%feature("autodoc", "1");
		Standard_Integer & ChangeFromIndex(const Standard_Integer I);
		%feature("autodoc", "1");
		Standard_Integer & operator()(const Standard_Integer I);
		%feature("autodoc", "1");
		Standard_Integer FindIndex(const TCollection_AsciiString &K) const;
		%feature("autodoc", "1");
		const Standard_Integer & FindFromKey(const TCollection_AsciiString &K) const;
		%feature("autodoc", "1");
		Standard_Integer & ChangeFromKey(const TCollection_AsciiString &K);

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
	~Storage_HeaderData() {
	printf("Call custom destructor for instance of Storage_HeaderData\n");
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
		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		Handle_Storage_StreamFormatError NewInstance(const char * aMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Storage_StreamFormatError {
	Handle_Storage_StreamFormatError GetHandle() {
	return *(Handle_Storage_StreamFormatError*) &$self;
	}
};
%extend Storage_StreamFormatError {
	~Storage_StreamFormatError() {
	printf("Call custom destructor for instance of Storage_StreamFormatError\n");
	}
};

%nodefaultctor Storage_StdMapNodeOfMapOfAsciiString;
class Storage_StdMapNodeOfMapOfAsciiString : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Storage_StdMapNodeOfMapOfAsciiString(const TCollection_AsciiString &K, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TCollection_AsciiString & Key() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Storage_StdMapNodeOfMapOfAsciiString {
	Handle_Storage_StdMapNodeOfMapOfAsciiString GetHandle() {
	return *(Handle_Storage_StdMapNodeOfMapOfAsciiString*) &$self;
	}
};
%extend Storage_StdMapNodeOfMapOfAsciiString {
	~Storage_StdMapNodeOfMapOfAsciiString() {
	printf("Call custom destructor for instance of Storage_StdMapNodeOfMapOfAsciiString\n");
	}
};