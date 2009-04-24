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
%module PDF

%include typemaps.i
%include cmalloc.i
%include cpointer.i
%include carrays.i
%include exception.i
%include std_list.i
%include std_string.i
%include <python/std_basic_string.i>

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

/*
Standard_Integer & function transformation
*/
%typemap(argout) Standard_Integer &OutValue {
    PyObject *o, *o2, *o3;
    o = PyInt_FromLong(*$1);
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

%typemap(in,numinputs=0) Standard_Integer &OutValue(Standard_Integer temp) {
    $1 = &temp;
}


%include PDF_dependencies.i


%include PDF_headers.i




%nodefaultctor Handle_PDF_Attribute;
class Handle_PDF_Attribute : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		Handle_PDF_Attribute();
		%feature("autodoc", "1");
		Handle_PDF_Attribute(const Handle_PDF_Attribute &aHandle);
		%feature("autodoc", "1");
		Handle_PDF_Attribute(const PDF_Attribute *anItem);
		%feature("autodoc", "1");
		Handle_PDF_Attribute const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PDF_Attribute {
	PDF_Attribute* GetObject() {
	return (PDF_Attribute*)$self->Access();
	}
};
%extend Handle_PDF_Attribute {
	~Handle_PDF_Attribute() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_PDF_Attribute\n");}
	}
};


%nodefaultctor Handle_PDF_Reference;
class Handle_PDF_Reference : public Handle_PDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_PDF_Reference();
		%feature("autodoc", "1");
		Handle_PDF_Reference(const Handle_PDF_Reference &aHandle);
		%feature("autodoc", "1");
		Handle_PDF_Reference(const PDF_Reference *anItem);
		%feature("autodoc", "1");
		Handle_PDF_Reference const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PDF_Reference {
	PDF_Reference* GetObject() {
	return (PDF_Reference*)$self->Access();
	}
};
%extend Handle_PDF_Reference {
	~Handle_PDF_Reference() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_PDF_Reference\n");}
	}
};


%nodefaultctor Handle_PDF_TagSource;
class Handle_PDF_TagSource : public Handle_PDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_PDF_TagSource();
		%feature("autodoc", "1");
		Handle_PDF_TagSource(const Handle_PDF_TagSource &aHandle);
		%feature("autodoc", "1");
		Handle_PDF_TagSource(const PDF_TagSource *anItem);
		%feature("autodoc", "1");
		Handle_PDF_TagSource const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PDF_TagSource {
	PDF_TagSource* GetObject() {
	return (PDF_TagSource*)$self->Access();
	}
};
%extend Handle_PDF_TagSource {
	~Handle_PDF_TagSource() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_PDF_TagSource\n");}
	}
};


%nodefaultctor Handle_PDF_Data;
class Handle_PDF_Data : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		Handle_PDF_Data();
		%feature("autodoc", "1");
		Handle_PDF_Data(const Handle_PDF_Data &aHandle);
		%feature("autodoc", "1");
		Handle_PDF_Data(const PDF_Data *anItem);
		%feature("autodoc", "1");
		Handle_PDF_Data const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PDF_Data {
	PDF_Data* GetObject() {
	return (PDF_Data*)$self->Access();
	}
};
%extend Handle_PDF_Data {
	~Handle_PDF_Data() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_PDF_Data\n");}
	}
};


%nodefaultctor Handle_PDF_HAttributeArray1;
class Handle_PDF_HAttributeArray1 : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		Handle_PDF_HAttributeArray1();
		%feature("autodoc", "1");
		Handle_PDF_HAttributeArray1(const Handle_PDF_HAttributeArray1 &aHandle);
		%feature("autodoc", "1");
		Handle_PDF_HAttributeArray1(const PDF_HAttributeArray1 *anItem);
		%feature("autodoc", "1");
		Handle_PDF_HAttributeArray1 const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PDF_HAttributeArray1 {
	PDF_HAttributeArray1* GetObject() {
	return (PDF_HAttributeArray1*)$self->Access();
	}
};
%extend Handle_PDF_HAttributeArray1 {
	~Handle_PDF_HAttributeArray1() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_PDF_HAttributeArray1\n");}
	}
};


%nodefaultctor Handle_PDF_VArrayNodeOfFieldOfHAttributeArray1;
class Handle_PDF_VArrayNodeOfFieldOfHAttributeArray1 : public Handle_PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		Handle_PDF_VArrayNodeOfFieldOfHAttributeArray1();
		%feature("autodoc", "1");
		Handle_PDF_VArrayNodeOfFieldOfHAttributeArray1(const Handle_PDF_VArrayNodeOfFieldOfHAttributeArray1 &aHandle);
		%feature("autodoc", "1");
		Handle_PDF_VArrayNodeOfFieldOfHAttributeArray1(const PDF_VArrayNodeOfFieldOfHAttributeArray1 *anItem);
		%feature("autodoc", "1");
		Handle_PDF_VArrayNodeOfFieldOfHAttributeArray1 const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PDF_VArrayNodeOfFieldOfHAttributeArray1 {
	PDF_VArrayNodeOfFieldOfHAttributeArray1* GetObject() {
	return (PDF_VArrayNodeOfFieldOfHAttributeArray1*)$self->Access();
	}
};
%extend Handle_PDF_VArrayNodeOfFieldOfHAttributeArray1 {
	~Handle_PDF_VArrayNodeOfFieldOfHAttributeArray1() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_PDF_VArrayNodeOfFieldOfHAttributeArray1\n");}
	}
};


%nodefaultctor PDF_Attribute;
class PDF_Attribute : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		PDF_Attribute(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		PDF_Attribute();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PDF_Attribute {
	Handle_PDF_Attribute GetHandle() {
	return *(Handle_PDF_Attribute*) &$self;
	}
};
%extend PDF_Attribute {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend PDF_Attribute {
	~PDF_Attribute() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PDF_Attribute\n");}
	}
};


%nodefaultctor PDF_Reference;
class PDF_Reference : public PDF_Attribute {
	public:
		%feature("autodoc", "1");
		PDF_Reference();
		%feature("autodoc", "1");
		PDF_Reference(const Handle_PCollection_HAsciiString &V);
		%feature("autodoc", "1");
		Handle_PCollection_HAsciiString ReferencedLabel() const;
		%feature("autodoc", "1");
		void ReferencedLabel(const Handle_PCollection_HAsciiString &V);
		%feature("autodoc", "1");
		PDF_Reference(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Handle_PCollection_HAsciiString _CSFDB_GetPDF_ReferencemyValue() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPDF_ReferencemyValue(const Handle_PCollection_HAsciiString &p);

};
%extend PDF_Reference {
	Handle_PDF_Reference GetHandle() {
	return *(Handle_PDF_Reference*) &$self;
	}
};
%extend PDF_Reference {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend PDF_Reference {
	~PDF_Reference() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PDF_Reference\n");}
	}
};


%nodefaultctor PDF_TagSource;
class PDF_TagSource : public PDF_Attribute {
	public:
		%feature("autodoc", "1");
		PDF_TagSource();
		%feature("autodoc", "1");
		PDF_TagSource(const Standard_Integer V);
		%feature("autodoc", "1");
		Standard_Integer Get() const;
		%feature("autodoc", "1");
		void Set(const Standard_Integer V);
		%feature("autodoc", "1");
		PDF_TagSource(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPDF_TagSourcemyValue() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPDF_TagSourcemyValue(const Standard_Integer p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PDF_TagSource {
	Handle_PDF_TagSource GetHandle() {
	return *(Handle_PDF_TagSource*) &$self;
	}
};
%extend PDF_TagSource {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend PDF_TagSource {
	~PDF_TagSource() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PDF_TagSource\n");}
	}
};


%nodefaultctor PDF_VArrayNodeOfFieldOfHAttributeArray1;
class PDF_VArrayNodeOfFieldOfHAttributeArray1 : public PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		PDF_VArrayNodeOfFieldOfHAttributeArray1();
		%feature("autodoc", "1");
		PDF_VArrayNodeOfFieldOfHAttributeArray1(const Handle_PDF_Attribute &aValue);
		%feature("autodoc", "1");
		void SetValue(const Handle_PDF_Attribute &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;
		%feature("autodoc", "1");
		PDF_VArrayNodeOfFieldOfHAttributeArray1(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Handle_PDF_Attribute _CSFDB_GetPDF_VArrayNodeOfFieldOfHAttributeArray1myValue() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPDF_VArrayNodeOfFieldOfHAttributeArray1myValue(const Handle_PDF_Attribute &p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PDF_VArrayNodeOfFieldOfHAttributeArray1 {
	Handle_PDF_VArrayNodeOfFieldOfHAttributeArray1 GetHandle() {
	return *(Handle_PDF_VArrayNodeOfFieldOfHAttributeArray1*) &$self;
	}
};
%extend PDF_VArrayNodeOfFieldOfHAttributeArray1 {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend PDF_VArrayNodeOfFieldOfHAttributeArray1 {
	~PDF_VArrayNodeOfFieldOfHAttributeArray1() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PDF_VArrayNodeOfFieldOfHAttributeArray1\n");}
	}
};


%nodefaultctor PDF_Data;
class PDF_Data : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		PDF_Data();
		%feature("autodoc", "1");
		PDF_Data(const Standard_Integer aVersionNumber);
		%feature("autodoc", "1");
		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		void Labels(const Handle_PColStd_HArray1OfInteger &theLabels);
		%feature("autodoc", "1");
		Handle_PColStd_HArray1OfInteger Labels() const;
		%feature("autodoc", "1");
		void Attributes(const Handle_PDF_HAttributeArray1 &theAttributes);
		%feature("autodoc", "1");
		Handle_PDF_HAttributeArray1 Attributes() const;
		%feature("autodoc", "1");
		PDF_Data(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPDF_DatamyVersion() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPDF_DatamyVersion(const Standard_Integer p);
		%feature("autodoc", "1");
		Handle_PColStd_HArray1OfInteger _CSFDB_GetPDF_DatamyLabels() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPDF_DatamyLabels(const Handle_PColStd_HArray1OfInteger &p);
		%feature("autodoc", "1");
		Handle_PDF_HAttributeArray1 _CSFDB_GetPDF_DatamyAttributes() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPDF_DatamyAttributes(const Handle_PDF_HAttributeArray1 &p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PDF_Data {
	Handle_PDF_Data GetHandle() {
	return *(Handle_PDF_Data*) &$self;
	}
};
%extend PDF_Data {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend PDF_Data {
	~PDF_Data() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PDF_Data\n");}
	}
};


%nodefaultctor PDF_HAttributeArray1;
class PDF_HAttributeArray1 : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		PDF_HAttributeArray1(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		PDF_HAttributeArray1(const Standard_Integer Low, const Standard_Integer Up, const Handle_PDF_Attribute &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_PDF_Attribute &Value);
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		Handle_PDF_Attribute Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Persistent ShallowCopy() const;
		%feature("autodoc", "1");
		%extend{
			std::string ShallowDumpToString() {
			std::stringstream s;
			self->ShallowDump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		PDF_HAttributeArray1();
		%feature("autodoc", "1");
		PDF_HAttributeArray1(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPDF_HAttributeArray1LowerBound() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPDF_HAttributeArray1LowerBound(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPDF_HAttributeArray1UpperBound() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPDF_HAttributeArray1UpperBound(const Standard_Integer p);
		%feature("autodoc", "1");
		const PDF_FieldOfHAttributeArray1 & _CSFDB_GetPDF_HAttributeArray1Data() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PDF_HAttributeArray1 {
	Handle_PDF_HAttributeArray1 GetHandle() {
	return *(Handle_PDF_HAttributeArray1*) &$self;
	}
};
%extend PDF_HAttributeArray1 {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend PDF_HAttributeArray1 {
	~PDF_HAttributeArray1() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PDF_HAttributeArray1\n");}
	}
};


%nodefaultctor PDF_FieldOfHAttributeArray1;
class PDF_FieldOfHAttributeArray1 : public DBC_BaseArray {
	public:
		%feature("autodoc", "1");
		PDF_FieldOfHAttributeArray1();
		%feature("autodoc", "1");
		PDF_FieldOfHAttributeArray1(const Standard_Integer Size);
		%feature("autodoc", "1");
		PDF_FieldOfHAttributeArray1(const PDF_FieldOfHAttributeArray1 &Varray);
		%feature("autodoc", "1");
		void Resize(const Standard_Integer Size);
		%feature("autodoc", "1");
		void Assign(const PDF_FieldOfHAttributeArray1 &Other);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_PDF_Attribute &Value);
		%feature("autodoc", "1");
		Handle_PDF_Attribute & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_PDF_Attribute & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void Destroy();

};
%extend PDF_FieldOfHAttributeArray1 {
	~PDF_FieldOfHAttributeArray1() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PDF_FieldOfHAttributeArray1\n");}
	}
};


%nodefaultctor PDF_VArrayTNodeOfFieldOfHAttributeArray1;
class PDF_VArrayTNodeOfFieldOfHAttributeArray1 {
	public:
		%feature("autodoc", "1");
		PDF_VArrayTNodeOfFieldOfHAttributeArray1();
		%feature("autodoc", "1");
		PDF_VArrayTNodeOfFieldOfHAttributeArray1(const Handle_PDF_Attribute &aValue);
		%feature("autodoc", "1");
		void SetValue(const Handle_PDF_Attribute &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;

};
%extend PDF_VArrayTNodeOfFieldOfHAttributeArray1 {
	~PDF_VArrayTNodeOfFieldOfHAttributeArray1() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PDF_VArrayTNodeOfFieldOfHAttributeArray1\n");}
	}
};
